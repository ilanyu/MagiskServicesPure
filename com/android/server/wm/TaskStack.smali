.class public Lcom/android/server/wm/TaskStack;
.super Lcom/android/server/wm/WindowContainer;
.source "TaskStack.java"

# interfaces
.implements Lcom/android/server/wm/BoundsAnimationTarget;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/WindowContainer<",
        "Lcom/android/server/wm/Task;",
        ">;",
        "Lcom/android/server/wm/BoundsAnimationTarget;"
    }
.end annotation


# static fields
.field private static final ADJUSTED_STACK_FRACTION_MIN:F = 0.3f

.field private static final IME_ADJUST_DIM_AMOUNT:F = 0.25f


# instance fields
.field private mAdjustDividerAmount:F

.field private mAdjustImeAmount:F

.field private final mAdjustedBounds:Landroid/graphics/Rect;

.field private mAdjustedForIme:Z

.field private final mAnimatingAppWindowTokenRegistry:Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;

.field private mAnimationBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

.field private mAnimationBackgroundSurface:Landroid/view/SurfaceControl;

.field private mAnimationBackgroundSurfaceIsShown:Z

.field private final mBoundsAfterRotation:Landroid/graphics/Rect;

.field private mBoundsAnimating:Z

.field private mBoundsAnimatingRequested:Z

.field private mBoundsAnimatingToFullscreen:Z

.field private mBoundsAnimationSourceHintBounds:Landroid/graphics/Rect;

.field private mBoundsAnimationTarget:Landroid/graphics/Rect;

.field private mCancelCurrentBoundsAnimation:Z

.field mDeferRemoval:Z

.field private mDensity:I

.field private mDimmer:Lcom/android/server/wm/Dimmer;

.field private mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private final mDockedStackMinimizeThickness:I

.field final mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

.field private final mFullyAdjustedImeBounds:Landroid/graphics/Rect;

.field private mImeGoingAway:Z

.field private mImeWin:Lcom/android/server/wm/WindowState;

.field private final mLastSurfaceSize:Landroid/graphics/Point;

.field private mMinimizeAmount:F

.field mPreAnimationBounds:Landroid/graphics/Rect;

.field private mRotation:I

.field final mStackId:I

.field private final mTmpAdjustedBounds:Landroid/graphics/Rect;

.field final mTmpAppTokens:Lcom/android/server/wm/AppTokenList;

.field final mTmpDimBoundsRect:Landroid/graphics/Rect;

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTmpRect2:Landroid/graphics/Rect;

.field private mTmpRect3:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;ILcom/android/server/wm/StackWindowController;)V
    .registers 6
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "stackId"    # I
    .param p3, "controller"    # Lcom/android/server/wm/StackWindowController;

    .line 166
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowContainer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    .line 94
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    .line 95
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    .line 96
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect3:Landroid/graphics/Rect;

    .line 99
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    .line 105
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mFullyAdjustedImeBounds:Landroid/graphics/Rect;

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurfaceIsShown:Z

    .line 120
    new-instance v1, Lcom/android/server/wm/AppTokenList;

    invoke-direct {v1}, Lcom/android/server/wm/AppTokenList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 121
    new-instance v1, Lcom/android/server/wm/AppTokenList;

    invoke-direct {v1}, Lcom/android/server/wm/AppTokenList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 127
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    .line 139
    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimating:Z

    .line 142
    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimatingRequested:Z

    .line 143
    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimatingToFullscreen:Z

    .line 144
    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mCancelCurrentBoundsAnimation:Z

    .line 145
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimationTarget:Landroid/graphics/Rect;

    .line 146
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimationSourceHintBounds:Landroid/graphics/Rect;

    .line 150
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAfterRotation:Landroid/graphics/Rect;

    .line 152
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mPreAnimationBounds:Landroid/graphics/Rect;

    .line 154
    new-instance v0, Lcom/android/server/wm/Dimmer;

    invoke-direct {v0, p0}, Lcom/android/server/wm/Dimmer;-><init>(Lcom/android/server/wm/WindowContainer;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimmer:Lcom/android/server/wm/Dimmer;

    .line 159
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    .line 160
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mLastSurfaceSize:Landroid/graphics/Point;

    .line 162
    new-instance v0, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;

    invoke-direct {v0}, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimatingAppWindowTokenRegistry:Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;

    .line 167
    iput p2, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    .line 168
    invoke-virtual {p0, p3}, Lcom/android/server/wm/TaskStack;->setController(Lcom/android/server/wm/WindowContainerController;)V

    .line 169
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105008c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/TaskStack;->mDockedStackMinimizeThickness:I

    .line 171
    const/16 v0, 0x791c

    invoke-static {v0, p2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 172
    return-void
.end method

.method private adjustForIME(Lcom/android/server/wm/WindowState;)Z
    .registers 20
    .param p1, "imeWin"    # Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    .line 1211
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v1

    .line 1212
    .local v1, "dockedSide":I
    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq v1, v4, :cond_10

    const/4 v5, 0x4

    if-ne v1, v5, :cond_e

    goto :goto_10

    :cond_e
    move v5, v3

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v5, 0x1

    .line 1213
    .local v5, "dockedTopOrBottom":Z
    :goto_11
    if-eqz p1, :cond_109

    if-nez v5, :cond_18

    .line 1214
    move v15, v1

    goto/16 :goto_10a

    .line 1217
    :cond_18
    iget-object v3, v0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    .line 1218
    .local v3, "displayStableRect":Landroid/graphics/Rect;
    iget-object v6, v0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    .line 1221
    .local v6, "contentBounds":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/android/server/wm/DisplayContent;->getStableRect(Landroid/graphics/Rect;)V

    .line 1222
    invoke-virtual {v6, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1223
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget v8, v6, Landroid/graphics/Rect;->top:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1225
    .local v7, "imeTop":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v8

    .line 1226
    iget v8, v6, Landroid/graphics/Rect;->bottom:I

    if-le v8, v7, :cond_3f

    .line 1227
    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 1230
    :cond_3f
    iget v8, v3, Landroid/graphics/Rect;->bottom:I

    iget v9, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    .line 1232
    .local v8, "yOffset":I
    nop

    .line 1233
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v9

    iget-object v9, v9, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v9}, Lcom/android/server/wm/DockedStackDividerController;->getContentWidth()I

    move-result v9

    .line 1234
    .local v9, "dividerWidth":I
    nop

    .line 1235
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v10

    iget-object v10, v10, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v10}, Lcom/android/server/wm/DockedStackDividerController;->getContentWidthInactive()I

    move-result v10

    .line 1237
    .local v10, "dividerWidthInactive":I
    if-ne v1, v4, :cond_a3

    .line 1241
    nop

    .line 1242
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v3, v4}, Lcom/android/server/wm/TaskStack;->getMinTopStackBottom(Landroid/graphics/Rect;I)I

    move-result v4

    .line 1243
    .local v4, "minTopStackBottom":I
    nop

    .line 1244
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v8

    add-int/2addr v11, v9

    sub-int/2addr v11, v10

    .line 1243
    invoke-static {v11, v4}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1246
    .local v11, "bottom":I
    iget-object v12, v0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1247
    iget-object v12, v0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    iget v13, v0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    int-to-float v14, v11

    mul-float/2addr v13, v14

    const/high16 v14, 0x3f800000    # 1.0f

    iget v2, v0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    sub-float/2addr v14, v2

    .line 1248
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    mul-float/2addr v14, v2

    add-float/2addr v13, v14

    float-to-int v2, v13

    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    .line 1249
    iget-object v2, v0, Lcom/android/server/wm/TaskStack;->mFullyAdjustedImeBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1250
    .end local v4    # "minTopStackBottom":I
    .end local v11    # "bottom":I
    nop

    .line 1278
    move v15, v1

    move-object/from16 v16, v3

    goto :goto_107

    .line 1252
    :cond_a3
    sub-int v2, v10, v9

    .line 1259
    .local v2, "dividerWidthDelta":I
    nop

    .line 1260
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v9

    add-int/2addr v4, v10

    .line 1261
    .local v4, "topBeforeImeAdjust":I
    nop

    .line 1263
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v9

    .line 1262
    invoke-virtual {v0, v3, v11}, Lcom/android/server/wm/TaskStack;->getMinTopStackBottom(Landroid/graphics/Rect;I)I

    move-result v11

    .line 1264
    .local v11, "minTopStackBottom":I
    nop

    .line 1265
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v8

    add-int v13, v11, v10

    .line 1264
    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 1267
    .local v12, "top":I
    iget-object v13, v0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1271
    iget-object v13, v0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v14

    iget v14, v14, Landroid/graphics/Rect;->top:I

    move v15, v1

    iget v1, v0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    .end local v1    # "dockedSide":I
    .local v15, "dockedSide":I
    move-object/from16 v16, v3

    sub-int v3, v12, v4

    .end local v3    # "displayStableRect":Landroid/graphics/Rect;
    .local v16, "displayStableRect":Landroid/graphics/Rect;
    int-to-float v3, v3

    mul-float/2addr v1, v3

    iget v3, v0, Lcom/android/server/wm/TaskStack;->mAdjustDividerAmount:F

    move/from16 v17, v4

    int-to-float v4, v2

    .end local v4    # "topBeforeImeAdjust":I
    .local v17, "topBeforeImeAdjust":I
    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    float-to-int v1, v1

    add-int/2addr v14, v1

    iput v14, v13, Landroid/graphics/Rect;->top:I

    .line 1274
    iget-object v1, v0, Lcom/android/server/wm/TaskStack;->mFullyAdjustedImeBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1275
    iget-object v1, v0, Lcom/android/server/wm/TaskStack;->mFullyAdjustedImeBounds:Landroid/graphics/Rect;

    iput v12, v1, Landroid/graphics/Rect;->top:I

    .line 1276
    iget-object v1, v0, Lcom/android/server/wm/TaskStack;->mFullyAdjustedImeBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/2addr v3, v12

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 1278
    .end local v2    # "dividerWidthDelta":I
    .end local v11    # "minTopStackBottom":I
    .end local v12    # "top":I
    .end local v17    # "topBeforeImeAdjust":I
    :goto_107
    const/4 v1, 0x1

    return v1

    .line 1214
    .end local v6    # "contentBounds":Landroid/graphics/Rect;
    .end local v7    # "imeTop":I
    .end local v8    # "yOffset":I
    .end local v9    # "dividerWidth":I
    .end local v10    # "dividerWidthInactive":I
    .end local v15    # "dockedSide":I
    .end local v16    # "displayStableRect":Landroid/graphics/Rect;
    .restart local v1    # "dockedSide":I
    :cond_109
    move v15, v1

    .end local v1    # "dockedSide":I
    .restart local v15    # "dockedSide":I
    :goto_10a
    return v3
.end method

.method private adjustForMinimizedDockedStack(F)Z
    .registers 9
    .param p1, "minimizeAmount"    # F

    .line 1282
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v0

    .line 1283
    .local v0, "dockSide":I
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_11

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11

    .line 1284
    return v1

    .line 1287
    :cond_11
    const/4 v2, 0x2

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    if-ne v0, v2, :cond_3d

    .line 1288
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v5}, Lcom/android/server/wm/WindowManagerService;->getStableInsetsLocked(ILandroid/graphics/Rect;)V

    .line 1289
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 1290
    .local v1, "topInset":I
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1291
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    int-to-float v5, v1

    mul-float/2addr v5, p1

    sub-float/2addr v4, p1

    .line 1292
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    mul-float/2addr v4, v6

    add-float/2addr v5, v4

    float-to-int v4, v5

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    .line 1293
    .end local v1    # "topInset":I
    goto :goto_93

    :cond_3d
    if-ne v0, v3, :cond_6d

    .line 1294
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1295
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 1296
    .local v1, "width":I
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    iget v5, p0, Lcom/android/server/wm/TaskStack;->mDockedStackMinimizeThickness:I

    int-to-float v5, v5

    mul-float/2addr v5, p1

    sub-float/2addr v4, p1

    .line 1298
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    mul-float/2addr v4, v6

    add-float/2addr v5, v4

    float-to-int v4, v5

    iput v4, v2, Landroid/graphics/Rect;->right:I

    .line 1299
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v1

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 1300
    .end local v1    # "width":I
    goto :goto_93

    :cond_6d
    const/4 v1, 0x3

    if-ne v0, v1, :cond_93

    .line 1301
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1302
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    .line 1303
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v5, p0, Lcom/android/server/wm/TaskStack;->mDockedStackMinimizeThickness:I

    sub-int/2addr v2, v5

    int-to-float v2, v2

    mul-float/2addr v2, p1

    sub-float/2addr v4, p1

    .line 1304
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 1306
    :cond_93
    :goto_93
    return v3
.end method

.method private alignTasksToAdjustedBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "adjustedBounds"    # Landroid/graphics/Rect;
    .param p2, "tempInsetBounds"    # Landroid/graphics/Rect;

    .line 243
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->matchParentBounds()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 244
    return-void

    .line 247
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_15

    move v0, v1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    .line 250
    .local v0, "alignBottom":Z
    :goto_16
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    .local v2, "taskNdx":I
    :goto_1d
    move v1, v2

    .end local v2    # "taskNdx":I
    .local v1, "taskNdx":I
    if-ltz v1, :cond_2e

    .line 251
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 252
    .local v2, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v2, p1, p2, v0}, Lcom/android/server/wm/Task;->alignToAdjustedBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 250
    .end local v2    # "task":Lcom/android/server/wm/Task;
    add-int/lit8 v2, v1, -0x1

    .end local v1    # "taskNdx":I
    .local v2, "taskNdx":I
    goto :goto_1d

    .line 254
    .end local v2    # "taskNdx":I
    :cond_2e
    return-void
.end method

.method private calculateBoundsForWindowModeChange()Landroid/graphics/Rect;
    .registers 10

    .line 827
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->inSplitScreenPrimaryWindowingMode()Z

    move-result v0

    .line 828
    .local v0, "inSplitScreenPrimary":Z
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 829
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStackIgnoringVisibility()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    .line 830
    .local v1, "splitScreenStack":Lcom/android/server/wm/TaskStack;
    if-nez v0, :cond_3e

    if-eqz v1, :cond_1b

    .line 831
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->inSplitScreenSecondaryWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->fillsParent()Z

    move-result v2

    if-nez v2, :cond_1b

    goto :goto_3e

    .line 858
    :cond_1b
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->inPinnedWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 860
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/TaskStack;->getAnimationOrCurrentBounds(Landroid/graphics/Rect;)V

    .line 861
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTmpRect3:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/PinnedStackController;->onTaskStackBoundsChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 863
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect3:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v2

    .line 866
    :cond_3c
    const/4 v2, 0x0

    return-object v2

    .line 836
    :cond_3e
    :goto_3e
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 837
    .local v2, "bounds":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;)V

    .line 838
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    .line 839
    if-eqz v1, :cond_78

    .line 840
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->inSplitScreenSecondaryWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_73

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    .line 841
    invoke-virtual {v3}, Lcom/android/server/wm/DockedStackDividerController;->isMinimizedDock()Z

    move-result v3

    if-eqz v3, :cond_73

    .line 842
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-eqz v3, :cond_73

    .line 848
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    goto :goto_78

    .line 850
    :cond_73
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/TaskStack;->getRawBounds(Landroid/graphics/Rect;)V

    .line 853
    :cond_78
    :goto_78
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v3, v3, Lcom/android/server/wm/WindowManagerService;->mDockedStackCreateMode:I

    if-nez v3, :cond_81

    const/4 v3, 0x1

    :goto_7f
    move v8, v3

    goto :goto_83

    :cond_81
    const/4 v3, 0x0

    goto :goto_7f

    .line 855
    .local v8, "dockedOnTopOrLeft":Z
    :goto_83
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    .line 856
    invoke-virtual {v3}, Lcom/android/server/wm/DockedStackDividerController;->getContentWidth()I

    move-result v7

    .line 855
    move-object v3, p0

    move-object v5, v2

    invoke-direct/range {v3 .. v8}, Lcom/android/server/wm/TaskStack;->getStackDockedModeBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZ)V

    .line 857
    return-object v2
.end method

.method private canSpecifyOrientation()Z
    .registers 5

    .line 1813
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getWindowingMode()I

    move-result v0

    .line 1814
    .local v0, "windowingMode":I
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getActivityType()I

    move-result v1

    .line 1815
    .local v1, "activityType":I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_17

    const/4 v3, 0x2

    if-eq v1, v3, :cond_17

    const/4 v3, 0x3

    if-eq v1, v3, :cond_17

    const/4 v3, 0x4

    if-ne v1, v3, :cond_15

    goto :goto_17

    :cond_15
    const/4 v2, 0x0

    nop

    :cond_17
    :goto_17
    return v2
.end method

.method private computeMaxPosition(I)I
    .registers 5
    .param p1, "maxPosition"    # I

    .line 691
    :goto_0
    if-lez p1, :cond_25

    .line 692
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    .line 693
    .local v0, "tmpTask":Lcom/android/server/wm/Task;
    nop

    .line 694
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->showForAllUsers()Z

    move-result v1

    if-nez v1, :cond_1e

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v2, v0, Lcom/android/server/wm/Task;->mUserId:I

    .line 695
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfileLocked(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 v1, 0x0

    goto :goto_1f

    :cond_1e
    :goto_1e
    const/4 v1, 0x1

    .line 696
    .local v1, "canShowTmpTask":Z
    :goto_1f
    if-nez v1, :cond_22

    .line 697
    goto :goto_25

    .line 699
    :cond_22
    add-int/lit8 p1, p1, -0x1

    .line 700
    .end local v0    # "tmpTask":Lcom/android/server/wm/Task;
    .end local v1    # "canShowTmpTask":Z
    goto :goto_0

    .line 701
    :cond_25
    :goto_25
    return p1
.end method

.method private computeMinPosition(II)I
    .registers 6
    .param p1, "minPosition"    # I
    .param p2, "size"    # I

    .line 672
    :goto_0
    if-ge p1, p2, :cond_25

    .line 673
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    .line 674
    .local v0, "tmpTask":Lcom/android/server/wm/Task;
    nop

    .line 675
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->showForAllUsers()Z

    move-result v1

    if-nez v1, :cond_1e

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v2, v0, Lcom/android/server/wm/Task;->mUserId:I

    .line 676
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfileLocked(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 v1, 0x0

    goto :goto_1f

    :cond_1e
    :goto_1e
    const/4 v1, 0x1

    .line 677
    .local v1, "canShowTmpTask":Z
    :goto_1f
    if-eqz v1, :cond_22

    .line 678
    goto :goto_25

    .line 680
    :cond_22
    add-int/lit8 p1, p1, 0x1

    .line 681
    .end local v0    # "tmpTask":Lcom/android/server/wm/Task;
    .end local v1    # "canShowTmpTask":Z
    goto :goto_0

    .line 682
    :cond_25
    :goto_25
    return p1
.end method

.method private findPositionForTask(Lcom/android/server/wm/Task;IZZ)I
    .registers 11
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "targetPosition"    # I
    .param p3, "showForAllUsers"    # Z
    .param p4, "addingNew"    # Z

    .line 641
    if-nez p3, :cond_f

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v1, p1, Lcom/android/server/wm/Task;->mUserId:I

    .line 642
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfileLocked(I)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    .line 644
    .local v0, "canShowTask":Z
    :goto_10
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    .line 645
    .local v1, "stackSize":I
    const/4 v2, 0x0

    .line 646
    .local v2, "minPosition":I
    if-eqz p4, :cond_1b

    move v3, v1

    goto :goto_1d

    :cond_1b
    add-int/lit8 v3, v1, -0x1

    .line 648
    .local v3, "maxPosition":I
    :goto_1d
    if-eqz v0, :cond_24

    .line 649
    invoke-direct {p0, v2, v1}, Lcom/android/server/wm/TaskStack;->computeMinPosition(II)I

    move-result v2

    goto :goto_28

    .line 651
    :cond_24
    invoke-direct {p0, v3}, Lcom/android/server/wm/TaskStack;->computeMaxPosition(I)I

    move-result v3

    .line 655
    :goto_28
    const/high16 v4, -0x80000000

    if-ne p2, v4, :cond_2f

    if-nez v2, :cond_2f

    .line 656
    return v4

    .line 657
    :cond_2f
    const v4, 0x7fffffff

    if-ne p2, v4, :cond_3d

    .line 658
    if-eqz p4, :cond_38

    move v5, v1

    goto :goto_3a

    :cond_38
    add-int/lit8 v5, v1, -0x1

    :goto_3a
    if-ne v3, v5, :cond_3d

    .line 659
    return v4

    .line 662
    :cond_3d
    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    return v4
.end method

.method private getDockSide(Landroid/graphics/Rect;)I
    .registers 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 1488
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v0, :cond_6

    .line 1489
    const/4 v0, -0x1

    return v0

    .line 1491
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/TaskStack;->getDockSide(Lcom/android/server/wm/DisplayContent;Landroid/graphics/Rect;)I

    move-result v0

    return v0
.end method

.method private getDockSide(Lcom/android/server/wm/DisplayContent;Landroid/graphics/Rect;)I
    .registers 6
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 1495
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->inSplitScreenWindowingMode()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1496
    const/4 v0, -0x1

    return v0

    .line 1498
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;)V

    .line 1499
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 1500
    .local v0, "orientation":I
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p2, v2, v0}, Lcom/android/server/wm/DockedStackDividerController;->getDockSide(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v1

    return v1
.end method

.method private getStackDockedModeBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZ)V
    .registers 27
    .param p1, "displayRect"    # Landroid/graphics/Rect;
    .param p2, "outBounds"    # Landroid/graphics/Rect;
    .param p3, "dockedBounds"    # Landroid/graphics/Rect;
    .param p4, "dockDividerWidth"    # I
    .param p5, "dockOnTopOrLeft"    # Z

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 958
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->inSplitScreenPrimaryWindowingMode()Z

    move-result v10

    .line 959
    .local v10, "dockedStack":Z
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    const/4 v6, 0x1

    if-le v3, v4, :cond_17

    move v3, v6

    goto :goto_18

    :cond_17
    const/4 v3, 0x0

    :goto_18
    move v11, v3

    .line 961
    .local v11, "splitHorizontally":Z
    move-object/from16 v12, p1

    invoke-virtual {v1, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 962
    if-eqz v10, :cond_92

    .line 963
    iget-object v3, v0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mDockedStackCreateBounds:Landroid/graphics/Rect;

    if-eqz v3, :cond_2e

    .line 964
    iget-object v3, v0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mDockedStackCreateBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 965
    return-void

    .line 971
    :cond_2e
    iget-object v3, v0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v13

    .line 972
    .local v13, "di":Landroid/view/DisplayInfo;
    iget-object v3, v0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v4, v13, Landroid/view/DisplayInfo;->rotation:I

    iget v7, v13, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v8, v13, Landroid/view/DisplayInfo;->logicalHeight:I

    iget-object v9, v13, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iget-object v5, v0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    move-object v14, v3

    move v15, v4

    move/from16 v16, v7

    move/from16 v17, v8

    move-object/from16 v18, v9

    move-object/from16 v19, v5

    invoke-interface/range {v14 .. v19}, Lcom/android/server/policy/WindowManagerPolicy;->getStableInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 974
    new-instance v9, Lcom/android/internal/policy/DividerSnapAlgorithm;

    iget-object v3, v0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, v13, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v7, v13, Landroid/view/DisplayInfo;->logicalHeight:I

    iget-object v3, v0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 978
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v6, :cond_69

    move v8, v6

    goto :goto_6a

    :cond_69
    const/4 v8, 0x0

    :goto_6a
    iget-object v6, v0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    move-object v3, v9

    move-object v14, v6

    move v6, v7

    move/from16 v7, p4

    move-object v0, v9

    move-object v9, v14

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/policy/DividerSnapAlgorithm;-><init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;)V

    .line 979
    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 981
    .local v0, "position":I
    if-eqz p5, :cond_86

    .line 982
    if-eqz v11, :cond_83

    .line 983
    iput v0, v1, Landroid/graphics/Rect;->right:I

    goto :goto_91

    .line 985
    :cond_83
    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_91

    .line 988
    :cond_86
    if-eqz v11, :cond_8d

    .line 989
    add-int v3, v0, p4

    iput v3, v1, Landroid/graphics/Rect;->left:I

    goto :goto_91

    .line 991
    :cond_8d
    add-int v3, v0, p4

    iput v3, v1, Landroid/graphics/Rect;->top:I

    .line 994
    :goto_91
    return-void

    .line 998
    .end local v0    # "position":I
    .end local v13    # "di":Landroid/view/DisplayInfo;
    :cond_92
    if-nez p5, :cond_a4

    .line 999
    if-eqz v11, :cond_9d

    .line 1000
    iget v0, v2, Landroid/graphics/Rect;->left:I

    sub-int v0, v0, p4

    iput v0, v1, Landroid/graphics/Rect;->right:I

    goto :goto_b3

    .line 1002
    :cond_9d
    iget v0, v2, Landroid/graphics/Rect;->top:I

    sub-int v0, v0, p4

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_b3

    .line 1005
    :cond_a4
    if-eqz v11, :cond_ad

    .line 1006
    iget v0, v2, Landroid/graphics/Rect;->right:I

    add-int v0, v0, p4

    iput v0, v1, Landroid/graphics/Rect;->left:I

    goto :goto_b3

    .line 1008
    :cond_ad
    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    add-int v0, v0, p4

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 1011
    :goto_b3
    xor-int/lit8 v0, p5, 0x1

    invoke-static {v1, v0}, Lcom/android/internal/policy/DockedDividerUtils;->sanitizeStackBounds(Landroid/graphics/Rect;Z)V

    .line 1012
    return-void
.end method

.method private hideAnimationSurface()V
    .registers 3

    .line 270
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    .line 271
    return-void

    .line 273
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 274
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurfaceIsShown:Z

    .line 275
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->scheduleAnimation()V

    .line 276
    return-void
.end method

.method private isMinimizedDockAndHomeStackResizable()Z
    .registers 2

    .line 1310
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v0}, Lcom/android/server/wm/DockedStackDividerController;->isMinimizedDock()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    .line 1311
    invoke-virtual {v0}, Lcom/android/server/wm/DockedStackDividerController;->isHomeStackResizable()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 1310
    :goto_17
    return v0
.end method

.method static synthetic lambda$onAnimationStart$1(Lcom/android/server/wm/WindowState;)V
    .registers 2
    .param p0, "w"    # Lcom/android/server/wm/WindowState;

    .line 1664
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->resetDrawState()V

    return-void
.end method

.method static synthetic lambda$updateBoundsForWindowModeChange$0(Lcom/android/server/wm/WindowState;)V
    .registers 3
    .param p0, "w"    # Lcom/android/server/wm/WindowState;

    .line 818
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowStateAnimator;->setOffsetPositionForStackResize(Z)V

    .line 819
    return-void
.end method

.method private positionChildAt(ILcom/android/server/wm/Task;ZZ)V
    .registers 12
    .param p1, "position"    # I
    .param p2, "child"    # Lcom/android/server/wm/Task;
    .param p3, "includingParents"    # Z
    .param p4, "showForAllUsers"    # Z

    .line 625
    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, p4, v0}, Lcom/android/server/wm/TaskStack;->findPositionForTask(Lcom/android/server/wm/Task;IZZ)I

    move-result v1

    .line 627
    .local v1, "targetPosition":I
    invoke-super {p0, v1, p2, p3}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 633
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_14

    move v2, v3

    goto :goto_15

    :cond_14
    move v2, v0

    .line 634
    .local v2, "toTop":I
    :goto_15
    const/16 v4, 0x791a

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v3

    const/4 v0, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v0

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 635
    return-void
.end method

.method private repositionPrimarySplitScreenStackAfterRotation(Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "inOutBounds"    # Landroid/graphics/Rect;

    .line 521
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskStack;->getDockSide(Landroid/graphics/Rect;)I

    move-result v0

    .line 522
    .local v0, "dockSide":I
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DockedStackDividerController;->canPrimaryStackDockTo(I)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 523
    return-void

    .line 525
    :cond_11
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;)V

    .line 526
    invoke-static {v0}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v0

    .line 527
    packed-switch v0, :pswitch_data_60

    goto :goto_5e

    .line 544
    :pswitch_20
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    .line 545
    .local v1, "movement":I
    iget v2, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 546
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .end local v1    # "movement":I
    goto :goto_5e

    .line 534
    :pswitch_32
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .line 535
    .restart local v1    # "movement":I
    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 536
    iget v2, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 537
    goto :goto_5e

    .line 539
    .end local v1    # "movement":I
    :pswitch_44
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 540
    .restart local v1    # "movement":I
    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 541
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 542
    goto :goto_5e

    .line 529
    .end local v1    # "movement":I
    :pswitch_51
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 530
    .restart local v1    # "movement":I
    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 531
    iget v2, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 532
    nop

    .line 549
    .end local v1    # "movement":I
    :goto_5e
    return-void

    nop

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_51
        :pswitch_44
        :pswitch_32
        :pswitch_20
    .end packed-switch
.end method

.method private setAdjustedBounds(Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 220
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isAnimatingForIme()Z

    move-result v0

    if-nez v0, :cond_f

    .line 221
    return-void

    .line 224
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 225
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 226
    .local v0, "adjusted":Z
    const/4 v1, 0x0

    .line 227
    .local v1, "insetBounds":Landroid/graphics/Rect;
    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isAdjustedForMinimizedDockedStack()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 228
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_3b

    .line 229
    :cond_2a
    if-eqz v0, :cond_3b

    iget-boolean v2, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    if-eqz v2, :cond_3b

    .line 230
    iget-boolean v2, p0, Lcom/android/server/wm/TaskStack;->mImeGoingAway:Z

    if-eqz v2, :cond_39

    .line 231
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_3b

    .line 233
    :cond_39
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mFullyAdjustedImeBounds:Landroid/graphics/Rect;

    .line 236
    :cond_3b
    :goto_3b
    if-eqz v0, :cond_40

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    goto :goto_44

    :cond_40
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v2

    :goto_44
    invoke-direct {p0, v2, v1}, Lcom/android/server/wm/TaskStack;->alignTasksToAdjustedBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 237
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 239
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->updateSurfaceBounds()V

    .line 240
    return-void
.end method

.method private setBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 7
    .param p1, "existing"    # Landroid/graphics/Rect;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 295
    const/4 v0, 0x0

    .line 296
    .local v0, "rotation":I
    const/4 v1, 0x0

    .line 297
    .local v1, "density":I
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v2, :cond_1d

    .line 298
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;)V

    .line 299
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    iget v0, v2, Landroid/view/DisplayInfo;->rotation:I

    .line 300
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    iget v1, v2, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 303
    :cond_1d
    invoke-static {p1, p2}, Lcom/android/server/wm/TaskStack;->equivalentBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget v2, p0, Lcom/android/server/wm/TaskStack;->mRotation:I

    if-ne v2, v0, :cond_29

    .line 304
    const/4 v2, 0x0

    return v2

    .line 307
    :cond_29
    invoke-super {p0, p2}, Lcom/android/server/wm/WindowContainer;->setBounds(Landroid/graphics/Rect;)I

    move-result v2

    .line 309
    .local v2, "result":I
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v3, :cond_34

    .line 310
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->updateAnimationBackgroundBounds()V

    .line 313
    :cond_34
    iput v0, p0, Lcom/android/server/wm/TaskStack;->mRotation:I

    .line 314
    iput v1, p0, Lcom/android/server/wm/TaskStack;->mDensity:I

    .line 316
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->updateAdjustedBounds()V

    .line 318
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->updateSurfaceBounds()V

    .line 319
    return v2
.end method

.method private showAnimationSurface(F)V
    .registers 5
    .param p1, "alpha"    # F

    .line 279
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    .line 280
    return-void

    .line 282
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Landroid/view/SurfaceControl;

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Landroid/view/SurfaceControl;

    .line 283
    invoke-virtual {v0, v1, p1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Landroid/view/SurfaceControl;

    .line 284
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 285
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurfaceIsShown:Z

    .line 286
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->scheduleAnimation()V

    .line 287
    return-void
.end method

.method private snapDockedStackAfterRotation(Landroid/graphics/Rect;)V
    .registers 23
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    move-object/from16 v0, p0

    .line 557
    iget-object v1, v0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    .line 558
    .local v1, "displayInfo":Landroid/view/DisplayInfo;
    iget-object v2, v0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DockedStackDividerController;->getContentWidth()I

    move-result v2

    .line 559
    .local v2, "dividerSize":I
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/TaskStack;->getDockSide(Landroid/graphics/Rect;)I

    move-result v12

    .line 560
    .local v12, "dockSide":I
    move-object/from16 v13, p1

    invoke-static {v13, v12, v2}, Lcom/android/internal/policy/DockedDividerUtils;->calculatePositionForBounds(Landroid/graphics/Rect;II)I

    move-result v14

    .line 562
    .local v14, "dividerPosition":I
    iget v15, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 563
    .local v15, "displayWidth":I
    iget v11, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 566
    .local v11, "displayHeight":I
    iget v10, v1, Landroid/view/DisplayInfo;->rotation:I

    .line 567
    .local v10, "rotation":I
    iget-object v3, v0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v9, v3, Landroid/content/res/Configuration;->orientation:I

    .line 568
    .local v9, "orientation":I
    iget-object v3, v0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v7, v1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    move v4, v10

    move v5, v15

    move v6, v11

    move-object v8, v13

    invoke-interface/range {v3 .. v8}, Lcom/android/server/policy/WindowManagerPolicy;->getStableInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 570
    new-instance v16, Lcom/android/internal/policy/DividerSnapAlgorithm;

    iget-object v3, v0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 571
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v3, 0x1

    if-ne v9, v3, :cond_46

    .line 573
    :goto_44
    move v8, v3

    goto :goto_48

    .line 571
    :cond_46
    const/4 v3, 0x0

    goto :goto_44

    .line 573
    :goto_48
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v17

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->isMinimizedDockAndHomeStackResizable()Z

    move-result v18

    move-object/from16 v3, v16

    move v5, v15

    move v6, v11

    move v7, v2

    move/from16 v19, v9

    move-object v9, v13

    .end local v9    # "orientation":I
    .local v19, "orientation":I
    move/from16 v20, v10

    move/from16 v10, v17

    .end local v10    # "rotation":I
    .local v20, "rotation":I
    move/from16 v17, v11

    move/from16 v11, v18

    .end local v11    # "displayHeight":I
    .local v17, "displayHeight":I
    invoke-direct/range {v3 .. v11}, Lcom/android/internal/policy/DividerSnapAlgorithm;-><init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;IZ)V

    move-object/from16 v9, v16

    .line 574
    .local v9, "algorithm":Lcom/android/internal/policy/DividerSnapAlgorithm;
    invoke-virtual {v9, v14}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateNonDismissingSnapTarget(I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v10

    .line 577
    .local v10, "target":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    iget v3, v10, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iget v6, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v7, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    move v4, v12

    move-object v5, v13

    move v8, v2

    invoke-static/range {v3 .. v8}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;III)V

    .line 580
    return-void
.end method

.method private updateAdjustedBounds()V
    .registers 7

    .line 1338
    const/4 v0, 0x0

    .line 1339
    .local v0, "adjust":Z
    iget v1, p0, Lcom/android/server/wm/TaskStack;->mMinimizeAmount:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_f

    .line 1340
    iget v1, p0, Lcom/android/server/wm/TaskStack;->mMinimizeAmount:F

    invoke-direct {p0, v1}, Lcom/android/server/wm/TaskStack;->adjustForMinimizedDockedStack(F)Z

    move-result v0

    goto :goto_19

    .line 1341
    :cond_f
    iget-boolean v1, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    if-eqz v1, :cond_19

    .line 1342
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mImeWin:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v1}, Lcom/android/server/wm/TaskStack;->adjustForIME(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    .line 1344
    :cond_19
    :goto_19
    if-nez v0, :cond_20

    .line 1345
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 1347
    :cond_20
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v1}, Lcom/android/server/wm/TaskStack;->setAdjustedBounds(Landroid/graphics/Rect;)V

    .line 1349
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getImeFocusStackLocked()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v1, p0, :cond_30

    move v1, v2

    goto :goto_31

    :cond_30
    const/4 v1, 0x0

    .line 1350
    .local v1, "isImeTarget":Z
    :goto_31
    iget-boolean v3, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    if-eqz v3, :cond_4d

    if-eqz v0, :cond_4d

    if-nez v1, :cond_4d

    .line 1351
    iget v3, p0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    iget v4, p0, Lcom/android/server/wm/TaskStack;->mAdjustDividerAmount:F

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/high16 v4, 0x3e800000    # 0.25f

    mul-float/2addr v3, v4

    .line 1353
    .local v3, "alpha":F
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getWindowingMode()I

    move-result v5

    invoke-virtual {v4, v2, v5, v3}, Lcom/android/server/wm/WindowManagerService;->setResizeDimLayer(ZIF)V

    .line 1355
    .end local v3    # "alpha":F
    :cond_4d
    return-void
.end method

.method private updateAnimationBackgroundBounds()V
    .registers 7

    .line 257
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    .line 258
    return-void

    .line 260
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskStack;->getRawBounds(Landroid/graphics/Rect;)V

    .line 261
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 262
    .local v0, "stackBounds":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Landroid/view/SurfaceControl;

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    .line 263
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setSize(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Landroid/view/SurfaceControl;

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 264
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 266
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->scheduleAnimation()V

    .line 267
    return-void
.end method

.method private updateBoundsForWindowModeChange()V
    .registers 4

    .line 812
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->calculateBoundsForWindowModeChange()Landroid/graphics/Rect;

    move-result-object v0

    .line 814
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->inSplitScreenSecondaryWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 817
    sget-object v1, Lcom/android/server/wm/-$$Lambda$TaskStack$0Cm5zc_NsRa5nGarFvrp2KYfUYU;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskStack$0Cm5zc_NsRa5nGarFvrp2KYfUYU;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/TaskStack;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 822
    :cond_10
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskStack;->updateDisplayInfo(Landroid/graphics/Rect;)V

    .line 823
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->updateSurfaceBounds()V

    .line 824
    return-void
.end method

.method private updateSurfaceBounds()V
    .registers 2

    .line 753
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskStack;->updateSurfaceSize(Landroid/view/SurfaceControl$Transaction;)V

    .line 754
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->updateSurfacePosition()V

    .line 755
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->scheduleAnimation()V

    .line 756
    return-void
.end method

.method private updateSurfaceSize(Landroid/view/SurfaceControl$Transaction;)V
    .registers 8
    .param p1, "transaction"    # Landroid/view/SurfaceControl$Transaction;

    .line 776
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    .line 777
    return-void

    .line 780
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 781
    .local v0, "stackBounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 782
    .local v1, "width":I
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 784
    .local v2, "height":I
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getStackOutset()I

    move-result v3

    .line 785
    .local v3, "outset":I
    const/4 v4, 0x2

    mul-int v5, v4, v3

    add-int/2addr v1, v5

    .line 786
    mul-int/2addr v4, v3

    add-int/2addr v2, v4

    .line 788
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mLastSurfaceSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    if-ne v1, v4, :cond_28

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mLastSurfaceSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    if-ne v2, v4, :cond_28

    .line 789
    return-void

    .line 791
    :cond_28
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v4, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setSize(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 792
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mLastSurfaceSize:Landroid/graphics/Point;

    invoke-virtual {v4, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 793
    return-void
.end method

.method private useCurrentBounds()Z
    .registers 2

    .line 336
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->matchParentBounds()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 337
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->inSplitScreenSecondaryWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 339
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStackIgnoringVisibility()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    if-eqz v0, :cond_19

    goto :goto_1b

    .line 342
    :cond_19
    const/4 v0, 0x0

    return v0

    .line 340
    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method addTask(Lcom/android/server/wm/Task;I)V
    .registers 5
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "position"    # I

    .line 584
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->showForAllUsers()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/wm/TaskStack;->addTask(Lcom/android/server/wm/Task;IZZ)V

    .line 585
    return-void
.end method

.method addTask(Lcom/android/server/wm/Task;IZZ)V
    .registers 9
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "position"    # I
    .param p3, "showForAllUsers"    # Z
    .param p4, "moveParents"    # Z

    .line 596
    iget-object v0, p1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    .line 599
    .local v0, "currentStack":Lcom/android/server/wm/TaskStack;
    if-eqz v0, :cond_3a

    iget v1, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    iget v2, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-ne v1, v2, :cond_b

    goto :goto_3a

    .line 600
    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to add taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to stackId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", but it is already attached to stackId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v3, v3, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 606
    :cond_3a
    :goto_3a
    iput-object p0, p1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    .line 607
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/TaskStack;->addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V

    .line 610
    invoke-direct {p0, p2, p1, p4, p3}, Lcom/android/server/wm/TaskStack;->positionChildAt(ILcom/android/server/wm/Task;ZZ)V

    .line 611
    return-void
.end method

.method applyAdjustForImeIfNeeded(Lcom/android/server/wm/Task;)V
    .registers 6
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 1358
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mMinimizeAmount:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_34

    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_34

    .line 1362
    :cond_14
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mImeGoingAway:Z

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_1f

    :cond_1d
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mFullyAdjustedImeBounds:Landroid/graphics/Rect;

    .line 1363
    .local v0, "insetBounds":Landroid/graphics/Rect;
    :goto_1f
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2a

    const/4 v2, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v2, 0x0

    :goto_2b
    invoke-virtual {p1, v1, v0, v2}, Lcom/android/server/wm/Task;->alignToAdjustedBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 1364
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 1365
    return-void

    .line 1359
    .end local v0    # "insetBounds":Landroid/graphics/Rect;
    :cond_34
    :goto_34
    return-void
.end method

.method beginImeAdjustAnimation()V
    .registers 5

    .line 1187
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "j":I
    :goto_8
    if-ltz v0, :cond_21

    .line 1188
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 1189
    .local v2, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->hasContentToDisplay()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 1190
    invoke-virtual {v2, v1, v1}, Lcom/android/server/wm/Task;->setDragResizing(ZI)V

    .line 1191
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->setWaitingForDrawnIfResizingChanged()V

    .line 1187
    .end local v2    # "task":Lcom/android/server/wm/Task;
    :cond_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1194
    .end local v0    # "j":I
    :cond_21
    return-void
.end method

.method checkCompleteDeferredRemoval()Z
    .registers 2

    .line 1797
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isSelfOrChildAnimating()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1798
    const/4 v0, 0x1

    return v0

    .line 1800
    :cond_8
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mDeferRemoval:Z

    if-eqz v0, :cond_f

    .line 1801
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->removeImmediately()V

    .line 1804
    :cond_f
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->checkCompleteDeferredRemoval()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic commitPendingTransaction()V
    .registers 1

    .line 77
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->commitPendingTransaction()V

    return-void
.end method

.method public bridge synthetic compareTo(Lcom/android/server/wm/WindowContainer;)I
    .registers 2

    .line 77
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result p1

    return p1
.end method

.method public deferScheduleMultiWindowModeChanged()Z
    .registers 3

    .line 1766
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->inPinnedWindowingMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 1767
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimatingRequested:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimating:Z

    if-eqz v0, :cond_10

    goto :goto_11

    :cond_10
    goto :goto_12

    :cond_11
    :goto_11
    const/4 v1, 0x1

    :goto_12
    return v1

    .line 1769
    :cond_13
    return v1
.end method

.method dim(F)V
    .registers 4
    .param p1, "alpha"    # F

    .line 1844
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/Dimmer;->dimAbove(Landroid/view/SurfaceControl$Transaction;F)V

    .line 1845
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->scheduleAnimation()V

    .line 1846
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    .line 1410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mStackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mDeferRemoval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/TaskStack;->mDeferRemoval:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1413
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mMinimizeAmount:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_75

    .line 1414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mMinimizeAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/TaskStack;->mMinimizeAmount:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1416
    :cond_75
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    if-eqz v0, :cond_c2

    .line 1417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mAdjustedForIme=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mAdjustImeAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mAdjustDividerAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/TaskStack;->mAdjustDividerAmount:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1421
    :cond_c2
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e8

    .line 1422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mAdjustedBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1424
    :cond_e8
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 1424
    .local v0, "taskNdx":I
    :goto_f0
    if-ltz v0, :cond_111

    .line 1425
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2, p3}, Lcom/android/server/wm/Task;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 1424
    add-int/lit8 v0, v0, -0x1

    goto :goto_f0

    .line 1427
    .end local v0    # "taskNdx":I
    :cond_111
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurfaceIsShown:Z

    if-eqz v0, :cond_12a

    .line 1428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mWindowAnimationBackgroundSurface is shown"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1430
    :cond_12a
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTokenList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_169

    .line 1431
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1432
    const-string v0, "  Exiting application tokens:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1433
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 1433
    .local v0, "i":I
    :goto_142
    if-ltz v0, :cond_169

    .line 1434
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowToken;

    .line 1435
    .local v1, "token":Lcom/android/server/wm/WindowToken;
    const-string v2, "  Exiting App #"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1436
    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1437
    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(C)V

    .line 1438
    const-string v2, "    "

    invoke-virtual {v1, p1, v2, p3}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 1433
    .end local v1    # "token":Lcom/android/server/wm/WindowToken;
    add-int/lit8 v0, v0, -0x1

    goto :goto_142

    .line 1443
    .end local v0    # "i":I
    :cond_169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mMiuiConfigFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/TaskStack;->mMiuiConfigFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1444
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimatingAppWindowTokenRegistry:Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;

    const-string v1, "AnimatingApps:"

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1445
    return-void
.end method

.method endImeAdjustAnimation()V
    .registers 5

    .line 1200
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "j":I
    :goto_8
    if-ltz v0, :cond_19

    .line 1201
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/Task;->setDragResizing(ZI)V

    .line 1200
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1203
    .end local v0    # "j":I
    :cond_19
    return-void
.end method

.method fillsParent()Z
    .registers 4

    .line 1449
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->useCurrentBounds()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1f

    .line 1452
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    .line 1453
    .local v0, "task":Lcom/android/server/wm/Task;
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->matchParentBounds()Z

    move-result v2

    if-nez v2, :cond_1e

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->inMultiWindowMode()Z

    move-result v2

    if-nez v2, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 v1, 0x0

    nop

    :cond_1e
    :goto_1e
    return v1

    .line 1459
    .end local v0    # "task":Lcom/android/server/wm/Task;
    :cond_1f
    return v1
.end method

.method findHomeTask()Lcom/android/server/wm/Task;
    .registers 3

    .line 179
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_20

    .line 182
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    return-object v0

    .line 180
    :cond_20
    :goto_20
    const/4 v0, 0x0

    return-object v0
.end method

.method findTaskForResizePoint(IIILcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;)V
    .registers 11
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "delta"    # I
    .param p4, "results"    # Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;

    .line 1540
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->canResizeTask()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_e

    .line 1541
    iput-boolean v1, p4, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->searchDone:Z

    .line 1542
    return-void

    .line 1545
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_15
    if-ltz v0, :cond_52

    .line 1546
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 1547
    .local v2, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isFullscreen()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 1548
    iput-boolean v1, p4, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->searchDone:Z

    .line 1549
    return-void

    .line 1557
    :cond_28
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    .line 1558
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    neg-int v4, p3

    neg-int v5, p3

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->inset(II)V

    .line 1559
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 1560
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, p3, p3}, Landroid/graphics/Rect;->inset(II)V

    .line 1562
    iput-boolean v1, p4, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->searchDone:Z

    .line 1564
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_4e

    .line 1565
    iput-object v2, p4, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->taskForResize:Lcom/android/server/wm/Task;

    .line 1566
    return-void

    .line 1570
    :cond_4e
    return-void

    .line 1545
    .end local v2    # "task":Lcom/android/server/wm/Task;
    :cond_4f
    add-int/lit8 v0, v0, -0x1

    goto :goto_15

    .line 1573
    .end local v0    # "i":I
    :cond_52
    return-void
.end method

.method getAnimatingAppWindowTokenRegistry()Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;
    .registers 2

    .line 1862
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimatingAppWindowTokenRegistry:Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;

    return-object v0
.end method

.method public bridge synthetic getAnimationLeashParent()Landroid/view/SurfaceControl;
    .registers 2

    .line 77
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getAnimationLeashParent()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method getAnimationOrCurrentBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .line 410
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimatingRequested:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimating:Z

    if-eqz v0, :cond_14

    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimationTarget:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 411
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskStack;->getFinalAnimationBounds(Landroid/graphics/Rect;)V

    .line 412
    return-void

    .line 414
    :cond_14
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    .line 415
    return-void
.end method

.method public getBounds()Landroid/graphics/Rect;
    .registers 2

    .line 352
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->useCurrentBounds()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 357
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 358
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    return-object v0

    .line 360
    :cond_11
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    .line 367
    :cond_16
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 347
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 348
    return-void
.end method

.method getBoundsForNewConfiguration(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .line 510
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAfterRotation:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 511
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAfterRotation:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 512
    return-void
.end method

.method getController()Lcom/android/server/wm/StackWindowController;
    .registers 2

    .line 1030
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getController()Lcom/android/server/wm/WindowContainerController;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/StackWindowController;

    return-object v0
.end method

.method bridge synthetic getController()Lcom/android/server/wm/WindowContainerController;
    .registers 2

    .line 77
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getController()Lcom/android/server/wm/StackWindowController;

    move-result-object v0

    return-object v0
.end method

.method public getDimBounds(Landroid/graphics/Rect;)V
    .registers 2
    .param p1, "out"    # Landroid/graphics/Rect;

    .line 419
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    .line 420
    return-void
.end method

.method getDimmer()Lcom/android/server/wm/Dimmer;
    .registers 2

    .line 1823
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimmer:Lcom/android/server/wm/Dimmer;

    return-object v0
.end method

.method getDisplayContent()Lcom/android/server/wm/DisplayContent;
    .registers 2

    .line 175
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-object v0
.end method

.method public getDisplayInfo()Landroid/view/DisplayInfo;
    .registers 2

    .line 1840
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    return-object v0
.end method

.method getDockSide()I
    .registers 2

    .line 1480
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskStack;->getDockSide(Landroid/graphics/Rect;)I

    move-result v0

    return v0
.end method

.method getDockSideForDisplay(Lcom/android/server/wm/DisplayContent;)I
    .registers 3
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 1484
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/TaskStack;->getDockSide(Lcom/android/server/wm/DisplayContent;Landroid/graphics/Rect;)I

    move-result v0

    return v0
.end method

.method getFinalAnimationBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .line 395
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimationTarget:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 396
    return-void
.end method

.method getFinalAnimationSourceHintBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .line 402
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimationSourceHintBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 403
    return-void
.end method

.method getMinTopStackBottom(Landroid/graphics/Rect;I)I
    .registers 6
    .param p1, "displayContentRect"    # Landroid/graphics/Rect;
    .param p2, "originalStackBottom"    # I

    .line 1206
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    sub-int v1, p2, v1

    int-to-float v1, v1

    const v2, 0x3e99999a    # 0.3f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method getMinimizeDistance()I
    .registers 5

    .line 1318
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v0

    .line 1319
    .local v0, "dockSide":I
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_9

    .line 1320
    return v1

    .line 1323
    :cond_9
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1f

    .line 1324
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v3}, Lcom/android/server/wm/WindowManagerService;->getStableInsetsLocked(ILandroid/graphics/Rect;)V

    .line 1325
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 1326
    .local v1, "topInset":I
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v1

    return v2

    .line 1327
    .end local v1    # "topInset":I
    :cond_1f
    const/4 v2, 0x1

    if-eq v0, v2, :cond_27

    const/4 v2, 0x3

    if-ne v0, v2, :cond_26

    goto :goto_27

    .line 1330
    :cond_26
    return v1

    .line 1328
    :cond_27
    :goto_27
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, p0, Lcom/android/server/wm/TaskStack;->mDockedStackMinimizeThickness:I

    sub-int/2addr v1, v2

    return v1
.end method

.method public bridge synthetic getMiuiConfigFlag()I
    .registers 2

    .line 77
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getMiuiConfigFlag()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMiuiProjection()Z
    .registers 2

    .line 77
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getMiuiProjection()Z

    move-result v0

    return v0
.end method

.method getName()Ljava/lang/String;
    .registers 2

    .line 1468
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->toShortString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getOrientation()I
    .registers 2

    .line 1809
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->canSpecifyOrientation()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getOrientation()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, -0x2

    :goto_c
    return v0
.end method

.method public bridge synthetic getParentSurfaceControl()Landroid/view/SurfaceControl;
    .registers 2

    .line 77
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPendingTransaction()Landroid/view/SurfaceControl$Transaction;
    .registers 2

    .line 77
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0
.end method

.method getRawBounds()Landroid/graphics/Rect;
    .registers 2

    .line 331
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method getRawBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "out"    # Landroid/graphics/Rect;

    .line 327
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 328
    return-void
.end method

.method getRelativePosition(Landroid/graphics/Point;)V
    .registers 4
    .param p1, "outPos"    # Landroid/graphics/Point;

    .line 1855
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->getRelativePosition(Landroid/graphics/Point;)V

    .line 1856
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getStackOutset()I

    move-result v0

    .line 1857
    .local v0, "outset":I
    iget v1, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Point;->x:I

    .line 1858
    iget v1, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Point;->y:I

    .line 1859
    return-void
.end method

.method getStackDockedModeBoundsLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .registers 15
    .param p1, "currentTempTaskBounds"    # Landroid/graphics/Rect;
    .param p2, "outStackBounds"    # Landroid/graphics/Rect;
    .param p3, "outTempTaskBounds"    # Landroid/graphics/Rect;
    .param p4, "ignoreVisibility"    # Z

    .line 884
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    .line 887
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 888
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->findHomeTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 889
    .local v0, "homeTask":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 892
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    .line 893
    invoke-virtual {v1, p2}, Lcom/android/server/wm/DockedStackDividerController;->getHomeStackBoundsInDockedMode(Landroid/graphics/Rect;)V

    goto :goto_22

    .line 896
    :cond_1f
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 899
    :goto_22
    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 900
    return-void

    .line 905
    .end local v0    # "homeTask":Lcom/android/server/wm/Task;
    :cond_26
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->isMinimizedDockAndHomeStackResizable()Z

    move-result v0

    if-eqz v0, :cond_32

    if-eqz p1, :cond_32

    .line 906
    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 907
    return-void

    .line 910
    :cond_32
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->inSplitScreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_a8

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v0, :cond_3d

    goto :goto_a8

    .line 915
    :cond_3d
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 916
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStackIgnoringVisibility()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 917
    .local v0, "dockedStack":Lcom/android/server/wm/TaskStack;
    if-eqz v0, :cond_a0

    .line 922
    if-nez p4, :cond_53

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isVisible()Z

    move-result v1

    if-nez v1, :cond_53

    .line 926
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;)V

    .line 927
    return-void

    .line 930
    :cond_53
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v1

    .line 931
    .local v1, "dockedSide":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_78

    .line 933
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get valid docked side for docked stack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 935
    return-void

    .line 938
    :cond_78
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;)V

    .line 939
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskStack;->getRawBounds(Landroid/graphics/Rect;)V

    .line 940
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_8d

    if-ne v1, v3, :cond_8b

    goto :goto_8d

    :cond_8b
    const/4 v3, 0x0

    nop

    :cond_8d
    :goto_8d
    move v9, v3

    .line 941
    .local v9, "dockedOnTopOrLeft":Z
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    .line 942
    invoke-virtual {v2}, Lcom/android/server/wm/DockedStackDividerController;->getContentWidth()I

    move-result v8

    .line 941
    move-object v4, p0

    move-object v6, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/server/wm/TaskStack;->getStackDockedModeBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZ)V

    .line 944
    return-void

    .line 919
    .end local v1    # "dockedSide":I
    .end local v9    # "dockedOnTopOrLeft":Z
    :cond_a0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Calling getStackDockedModeBoundsLocked() when there is no docked stack."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 911
    .end local v0    # "dockedStack":Lcom/android/server/wm/TaskStack;
    :cond_a8
    :goto_a8
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 912
    return-void
.end method

.method getStackOutset()I
    .registers 5

    .line 763
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 764
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->inPinnedWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_20

    if-eqz v0, :cond_20

    .line 765
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 769
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x5

    invoke-static {v2, v1}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    return v2

    .line 772
    .end local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    :cond_20
    const/4 v1, 0x0

    return v1
.end method

.method public bridge synthetic getSurfaceControl()Landroid/view/SurfaceControl;
    .registers 2

    .line 77
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSurfaceHeight()I
    .registers 2

    .line 77
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSurfaceWidth()I
    .registers 2

    .line 77
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceWidth()I

    move-result v0

    return v0
.end method

.method getTopVisibleTask()Lcom/android/server/wm/Task;
    .registers 4

    .line 1867
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 1868
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    .line 1869
    .local v1, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopVisibleAppToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v2

    if-eqz v2, :cond_19

    .line 1870
    return-object v1

    .line 1867
    .end local v1    # "task":Lcom/android/server/wm/Task;
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1873
    .end local v0    # "i":I
    :cond_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method hasTaskForUser(I)Z
    .registers 6
    .param p1, "userId"    # I

    .line 1504
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1a

    .line 1505
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 1506
    .local v2, "task":Lcom/android/server/wm/Task;
    iget v3, v2, Lcom/android/server/wm/Task;->mUserId:I

    if-ne v3, p1, :cond_17

    .line 1507
    return v1

    .line 1504
    .end local v2    # "task":Lcom/android/server/wm/Task;
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1510
    .end local v0    # "i":I
    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method isAdjustedForIme()Z
    .registers 2

    .line 1111
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    return v0
.end method

.method isAdjustedForMinimizedDockedStack()Z
    .registers 3

    .line 1369
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mMinimizeAmount:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public isAnimatingBounds()Z
    .registers 2

    .line 1777
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimating:Z

    return v0
.end method

.method public isAnimatingBoundsToFullscreen()Z
    .registers 2

    .line 1785
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isAnimatingBounds()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->lastAnimatingBoundsWasToFullscreen()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method isAnimatingForIme()Z
    .registers 2

    .line 1115
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mImeWin:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mImeWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public isForceScaled()Z
    .registers 2

    .line 1773
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimating:Z

    return v0
.end method

.method isReallyVisible()Z
    .registers 7

    .line 1879
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_34

    .line 1880
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 1881
    .local v2, "task":Lcom/android/server/wm/Task;
    iget-object v3, v2, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    .local v3, "j":I
    :goto_19
    if-ltz v3, :cond_31

    .line 1882
    iget-object v4, v2, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/AppWindowToken;

    .line 1883
    .local v4, "token":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_2e

    iget-boolean v5, v4, Lcom/android/server/wm/AppWindowToken;->mIsDummyVisible:Z

    if-nez v5, :cond_2e

    .line 1884
    return v1

    .line 1881
    .end local v4    # "token":Lcom/android/server/wm/AppWindowToken;
    :cond_2e
    add-int/lit8 v3, v3, -0x1

    goto :goto_19

    .line 1879
    .end local v2    # "task":Lcom/android/server/wm/Task;
    .end local v3    # "j":I
    :cond_31
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1888
    .end local v0    # "i":I
    :cond_34
    const/4 v0, 0x0

    return v0
.end method

.method isTaskAnimating()Z
    .registers 5

    .line 1377
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "j":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 1378
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 1379
    .local v2, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isTaskAnimating()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1380
    return v1

    .line 1377
    .end local v2    # "task":Lcom/android/server/wm/Task;
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1383
    .end local v0    # "j":I
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public lastAnimatingBoundsWasToFullscreen()Z
    .registers 2

    .line 1781
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimatingToFullscreen:Z

    return v0
.end method

.method public bridge synthetic makeAnimationLeash()Landroid/view/SurfaceControl$Builder;
    .registers 2

    .line 77
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method onAllWindowsDrawn()V
    .registers 2

    .line 1646
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimating:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimatingRequested:Z

    if-nez v0, :cond_9

    .line 1647
    return-void

    .line 1650
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mBoundsAnimationController:Lcom/android/server/wm/BoundsAnimationController;

    invoke-virtual {v0}, Lcom/android/server/wm/BoundsAnimationController;->onAllWindowsDrawn()V

    .line 1651
    return-void
.end method

.method public onAnimationEnd(ZLandroid/graphics/Rect;Z)V
    .registers 8
    .param p1, "schedulePipModeChangedCallback"    # Z
    .param p2, "finalStackSize"    # Landroid/graphics/Rect;
    .param p3, "moveToFullscreen"    # Z

    .line 1691
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->inPinnedWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 1695
    nop

    .line 1696
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getController()Lcom/android/server/wm/StackWindowController;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/PinnedStackWindowController;

    .line 1697
    .local v0, "controller":Lcom/android/server/wm/PinnedStackWindowController;
    if-eqz p1, :cond_17

    if-eqz v0, :cond_17

    .line 1700
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimationTarget:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/PinnedStackWindowController;->updatePictureInPictureModeForPinnedStackAnimation(Landroid/graphics/Rect;Z)V

    .line 1704
    :cond_17
    if-eqz p2, :cond_1e

    .line 1705
    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1}, Lcom/android/server/wm/TaskStack;->setPinnedStackSize(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    goto :goto_21

    .line 1709
    :cond_1e
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->onPipAnimationEndResize()V

    .line 1713
    :goto_21
    :try_start_21
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v1}, Landroid/app/IActivityManager;->notifyPinnedStackAnimationEnded()V

    .line 1714
    if-eqz p3, :cond_34

    .line 1715
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget v2, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->moveTasksToFullscreenStack(IZ)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_34} :catch_35

    .line 1720
    :cond_34
    goto :goto_36

    .line 1718
    :catch_35
    move-exception v1

    .line 1721
    .end local v0    # "controller":Lcom/android/server/wm/PinnedStackWindowController;
    :goto_36
    goto :goto_3a

    .line 1723
    :cond_37
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->onPipAnimationEndResize()V

    .line 1725
    :goto_3a
    return-void
.end method

.method public bridge synthetic onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 3

    .line 77
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    return-void
.end method

.method public bridge synthetic onAnimationLeashDestroyed(Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    .line 77
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onAnimationLeashDestroyed(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public onAnimationStart(ZZ)V
    .registers 6
    .param p1, "schedulePipModeChangedCallback"    # Z
    .param p2, "forceUpdate"    # Z

    .line 1656
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1657
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimatingRequested:Z

    .line 1658
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimating:Z

    .line 1659
    iput-boolean v1, p0, Lcom/android/server/wm/TaskStack;->mCancelCurrentBoundsAnimation:Z

    .line 1663
    if-eqz p1, :cond_17

    .line 1664
    sget-object v2, Lcom/android/server/wm/-$$Lambda$TaskStack$n0sDe5GcitIQB-Orca4W45Hcc98;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskStack$n0sDe5GcitIQB-Orca4W45Hcc98;

    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/TaskStack;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 1667
    :cond_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_3a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1669
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->inPinnedWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 1671
    :try_start_21
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->notifyPinnedStackAnimationStarted()V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_28} :catch_29

    .line 1674
    goto :goto_2a

    .line 1672
    :catch_29
    move-exception v0

    .line 1676
    :goto_2a
    nop

    .line 1677
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getController()Lcom/android/server/wm/StackWindowController;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/PinnedStackWindowController;

    .line 1678
    .local v0, "controller":Lcom/android/server/wm/PinnedStackWindowController;
    if-eqz p1, :cond_39

    if-eqz v0, :cond_39

    .line 1683
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/PinnedStackWindowController;->updatePictureInPictureModeForPinnedStackAnimation(Landroid/graphics/Rect;Z)V

    .line 1686
    .end local v0    # "controller":Lcom/android/server/wm/PinnedStackWindowController;
    :cond_39
    return-void

    .line 1667
    :catchall_3a
    move-exception v1

    :try_start_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .param p1, "newParentConfig"    # Landroid/content/res/Configuration;

    .line 735
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getCastMode()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getCastStackId()I

    move-result v0

    iget v1, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-ne v0, v1, :cond_13

    return-void

    .line 737
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getWindowingMode()I

    move-result v0

    .line 738
    .local v0, "prevWindowingMode":I
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 742
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wm/TaskStack;->updateSurfaceSize(Landroid/view/SurfaceControl$Transaction;)V

    .line 743
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getWindowingMode()I

    move-result v1

    .line 745
    .local v1, "windowingMode":I
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v2, :cond_35

    if-ne v0, v1, :cond_2c

    goto :goto_35

    .line 748
    :cond_2c
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, p0}, Lcom/android/server/wm/DisplayContent;->onStackWindowingModeChanged(Lcom/android/server/wm/TaskStack;)V

    .line 749
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->updateBoundsForWindowModeChange()V

    .line 750
    return-void

    .line 746
    :cond_35
    :goto_35
    return-void
.end method

.method onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V
    .registers 5
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 797
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v0, :cond_34

    .line 801
    iput-object p1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 803
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->updateBoundsForWindowModeChange()V

    .line 804
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskStack;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setColorLayer(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animation background stackId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 805
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 806
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Landroid/view/SurfaceControl;

    .line 808
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 809
    return-void

    .line 798
    :cond_34
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "onDisplayChanged: Already attached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic onOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 77
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method onParentSet()V
    .registers 3

    .line 1047
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->onParentSet()V

    .line 1049
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v0, :cond_e

    goto :goto_2b

    .line 1053
    :cond_e
    const/16 v0, 0x791e

    iget v1, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1055
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    .line 1056
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 1057
    iput-object v1, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Landroid/view/SurfaceControl;

    .line 1060
    :cond_21
    iput-object v1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1061
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 1062
    return-void

    .line 1050
    :cond_2b
    :goto_2b
    return-void
.end method

.method public onPipAnimationEndResize()V
    .registers 3

    .line 1731
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimating:Z

    .line 1732
    nop

    .local v0, "i":I
    :goto_4
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 1733
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    .line 1734
    .local v1, "t":Lcom/android/server/wm/Task;
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->clearPreserveNonFloatingState()V

    .line 1732
    .end local v1    # "t":Lcom/android/server/wm/Task;
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1736
    .end local v0    # "i":I
    :cond_1a
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 1737
    return-void
.end method

.method public pinnedStackResizeDisallowed()Z
    .registers 2

    .line 1789
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimating:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mCancelCurrentBoundsAnimation:Z

    if-eqz v0, :cond_a

    .line 1790
    const/4 v0, 0x1

    return v0

    .line 1792
    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method positionChildAt(ILcom/android/server/wm/Task;Z)V
    .registers 5
    .param p1, "position"    # I
    .param p2, "child"    # Lcom/android/server/wm/Task;
    .param p3, "includingParents"    # Z

    .line 615
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->showForAllUsers()Z

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/wm/TaskStack;->positionChildAt(ILcom/android/server/wm/Task;ZZ)V

    .line 616
    return-void
.end method

.method bridge synthetic positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V
    .registers 4

    .line 77
    check-cast p2, Lcom/android/server/wm/Task;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/TaskStack;->positionChildAt(ILcom/android/server/wm/Task;Z)V

    return-void
.end method

.method prepareFreezingTaskBounds()V
    .registers 3

    .line 207
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "taskNdx":I
    :goto_8
    if-ltz v0, :cond_18

    .line 208
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    .line 209
    .local v1, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->prepareFreezingBounds()V

    .line 207
    .end local v1    # "task":Lcom/android/server/wm/Task;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 211
    .end local v0    # "taskNdx":I
    :cond_18
    return-void
.end method

.method prepareSurfaces()V
    .registers 4

    .line 1828
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {v0}, Lcom/android/server/wm/Dimmer;->resetDimStates()V

    .line 1829
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->prepareSurfaces()V

    .line 1830
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    .line 1833
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1834
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/Dimmer;->updateDims(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1835
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->scheduleAnimation()V

    .line 1837
    :cond_24
    return-void
.end method

.method removeChild(Lcom/android/server/wm/Task;)V
    .registers 6
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 713
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 714
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    .line 716
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    .line 717
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 718
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v2, p0, v1}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 720
    :cond_1c
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 722
    :cond_21
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "appNdx":I
    :goto_29
    if-ltz v0, :cond_43

    .line 723
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    .line 724
    .local v2, "wtoken":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-ne v3, p1, :cond_40

    .line 725
    iput-boolean v1, v2, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    .line 726
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/AppTokenList;->remove(I)Ljava/lang/Object;

    .line 722
    .end local v2    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_40
    add-int/lit8 v0, v0, -0x1

    goto :goto_29

    .line 729
    .end local v0    # "appNdx":I
    :cond_43
    return-void
.end method

.method bridge synthetic removeChild(Lcom/android/server/wm/WindowContainer;)V
    .registers 2

    .line 77
    check-cast p1, Lcom/android/server/wm/Task;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskStack;->removeChild(Lcom/android/server/wm/Task;)V

    return-void
.end method

.method removeIfPossible()V
    .registers 2

    .line 1037
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wm/DisplayContent;->mFreeFormWindowShowed:Z

    .line 1038
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isSelfOrChildAnimating()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1039
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mDeferRemoval:Z

    .line 1040
    return-void

    .line 1042
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->removeImmediately()V

    .line 1043
    return-void
.end method

.method resetAdjustedForIme(Z)V
    .registers 6
    .param p1, "adjustBoundsNow"    # Z

    .line 1145
    if-eqz p1, :cond_23

    .line 1146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mImeWin:Lcom/android/server/wm/WindowState;

    .line 1147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mImeGoingAway:Z

    .line 1148
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    .line 1149
    iput v1, p0, Lcom/android/server/wm/TaskStack;->mAdjustDividerAmount:F

    .line 1150
    iget-boolean v1, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    if-nez v1, :cond_12

    .line 1151
    return-void

    .line 1153
    :cond_12
    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    .line 1154
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->updateAdjustedBounds()V

    .line 1155
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getWindowingMode()I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/wm/WindowManagerService;->setResizeDimLayer(ZIF)V

    goto :goto_2a

    .line 1157
    :cond_23
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mImeGoingAway:Z

    iget-boolean v1, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mImeGoingAway:Z

    .line 1159
    :goto_2a
    return-void
.end method

.method resetAnimationBackgroundAnimator()V
    .registers 2

    .line 1065
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 1066
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->hideAnimationSurface()V

    .line 1067
    return-void
.end method

.method resetDockedStackToMiddle()V
    .registers 5

    .line 1015
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->inSplitScreenPrimaryWindowingMode()Z

    move-result v0

    if-nez v0, :cond_21

    .line 1019
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mDockedStackCreateBounds:Landroid/graphics/Rect;

    .line 1021
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1022
    .local v0, "bounds":Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1023
    .local v2, "tempBounds":Landroid/graphics/Rect;
    const/4 v3, 0x1

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/android/server/wm/TaskStack;->getStackDockedModeBoundsLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 1025
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getController()Lcom/android/server/wm/StackWindowController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wm/StackWindowController;->requestResize(Landroid/graphics/Rect;)V

    .line 1026
    return-void

    .line 1016
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v2    # "tempBounds":Landroid/graphics/Rect;
    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a docked stack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setAdjustedForIme(Lcom/android/server/wm/WindowState;Z)V
    .registers 5
    .param p1, "imeWin"    # Lcom/android/server/wm/WindowState;
    .param p2, "forceUpdate"    # Z

    .line 1100
    iput-object p1, p0, Lcom/android/server/wm/TaskStack;->mImeWin:Lcom/android/server/wm/WindowState;

    .line 1101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mImeGoingAway:Z

    .line 1102
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    if-eqz v0, :cond_b

    if-eqz p2, :cond_16

    .line 1103
    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    .line 1104
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    .line 1105
    iput v1, p0, Lcom/android/server/wm/TaskStack;->mAdjustDividerAmount:F

    .line 1106
    invoke-virtual {p0, v1, v1, v0}, Lcom/android/server/wm/TaskStack;->updateAdjustForIme(FFZ)Z

    .line 1108
    :cond_16
    return-void
.end method

.method setAdjustedForMinimizedDock(F)Z
    .registers 3
    .param p1, "minimizeAmount"    # F

    .line 1168
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mMinimizeAmount:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_10

    .line 1169
    iput p1, p0, Lcom/android/server/wm/TaskStack;->mMinimizeAmount:F

    .line 1170
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->updateAdjustedBounds()V

    .line 1171
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isVisible()Z

    move-result v0

    return v0

    .line 1173
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method setAnimationBackground(Lcom/android/server/wm/WindowStateAnimator;I)V
    .registers 6
    .param p1, "winAnimator"    # Lcom/android/server/wm/WindowStateAnimator;
    .param p2, "color"    # I

    .line 1070
    iget v0, p1, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 1071
    .local v0, "animLayer":I
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-ge v0, v1, :cond_1f

    .line 1073
    :cond_c
    iput-object p1, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 1074
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayContent;->getLayerForAnimationBackground(Lcom/android/server/wm/WindowStateAnimator;)I

    move-result v0

    .line 1075
    shr-int/lit8 v1, p2, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/android/server/wm/TaskStack;->showAnimationSurface(F)V

    .line 1077
    :cond_1f
    return-void
.end method

.method setAnimationFinalBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .registers 6
    .param p1, "sourceHintBounds"    # Landroid/graphics/Rect;
    .param p2, "destBounds"    # Landroid/graphics/Rect;
    .param p3, "toFullscreen"    # Z

    .line 375
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimatingRequested:Z

    .line 376
    iput-boolean p3, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimatingToFullscreen:Z

    .line 377
    if-eqz p2, :cond_d

    .line 378
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimationTarget:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_12

    .line 380
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimationTarget:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 382
    :goto_12
    if-eqz p1, :cond_1a

    .line 383
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimationSourceHintBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1f

    .line 385
    :cond_1a
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimationSourceHintBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 388
    :goto_1f
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mPreAnimationBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 389
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)I
    .registers 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 291
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/TaskStack;->setBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    return v0
.end method

.method setBounds(Landroid/graphics/Rect;Landroid/util/SparseArray;Landroid/util/SparseArray;)Z
    .registers 9
    .param p1, "stackBounds"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Rect;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Rect;",
            ">;)Z"
        }
    .end annotation

    .line 194
    .local p2, "taskBounds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Rect;>;"
    .local p3, "taskTempInsetBounds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Rect;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskStack;->setBounds(Landroid/graphics/Rect;)I

    .line 197
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "taskNdx":I
    :goto_b
    if-ltz v0, :cond_33

    .line 198
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 199
    .local v2, "task":Lcom/android/server/wm/Task;
    iget v3, v2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;Z)I

    .line 200
    if-eqz p3, :cond_2c

    .line 201
    iget v3, v2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p3, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    goto :goto_2d

    :cond_2c
    const/4 v3, 0x0

    .line 200
    :goto_2d
    invoke-virtual {v2, v3}, Lcom/android/server/wm/Task;->setTempInsetBounds(Landroid/graphics/Rect;)V

    .line 197
    .end local v2    # "task":Lcom/android/server/wm/Task;
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 203
    .end local v0    # "taskNdx":I
    :cond_33
    return v1
.end method

.method public setMiuiConfigFlag(IZ)V
    .registers 8
    .param p1, "miuiConfigFlag"    # I
        .annotation build Landroid/app/WindowConfiguration$MiuiConfigFlag;
        .end annotation
    .end param
    .param p2, "isSetToStack"    # Z

    .line 1899
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->setMiuiConfigFlag(IZ)V

    .line 1900
    and-int/lit8 v0, p1, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 1901
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wm/DisplayContent;->mFreeFormWindowShowed:Z

    goto :goto_12

    .line 1903
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    sput-boolean v1, Lcom/android/server/wm/DisplayContent;->mFreeFormWindowShowed:Z

    .line 1905
    :goto_12
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 1906
    .local v2, "task":Lcom/android/server/wm/Task;
    iget-object v3, v2, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/AppWindowToken;

    .line 1907
    .local v4, "appWindowToken":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {v4, p1, v1}, Lcom/android/server/wm/AppWindowToken;->setMiuiConfigFlag(IZ)V

    .line 1908
    .end local v4    # "appWindowToken":Lcom/android/server/wm/AppWindowToken;
    goto :goto_2a

    .line 1909
    .end local v2    # "task":Lcom/android/server/wm/Task;
    :cond_3a
    goto :goto_18

    .line 1910
    :cond_3b
    return-void
.end method

.method public bridge synthetic setMiuiProjection(Z)V
    .registers 2

    .line 77
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->setMiuiProjection(Z)V

    return-void
.end method

.method public setPinnedStackSize(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 5
    .param p1, "stackBounds"    # Landroid/graphics/Rect;
    .param p2, "tempTaskBounds"    # Landroid/graphics/Rect;

    .line 1631
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1632
    iget-boolean v1, p0, Lcom/android/server/wm/TaskStack;->mCancelCurrentBoundsAnimation:Z

    if-eqz v1, :cond_12

    .line 1633
    const/4 v1, 0x0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 1635
    :cond_12
    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1638
    :try_start_16
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityManager;->resizePinnedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1d} :catch_1e

    .line 1641
    goto :goto_1f

    .line 1639
    :catch_1e
    move-exception v0

    .line 1642
    :goto_1f
    const/4 v0, 0x1

    return v0

    .line 1635
    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method setTouchExcludeRegion(Lcom/android/server/wm/Task;ILandroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 13
    .param p1, "focusedTask"    # Lcom/android/server/wm/Task;
    .param p2, "delta"    # I
    .param p3, "touchExcludeRegion"    # Landroid/graphics/Region;
    .param p4, "contentRect"    # Landroid/graphics/Rect;
    .param p5, "postExclude"    # Landroid/graphics/Rect;

    .line 1577
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_61

    .line 1578
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    .line 1579
    .local v1, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopVisibleAppToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v2

    .line 1582
    .local v2, "token":Lcom/android/server/wm/AppWindowToken;
    if-eqz v2, :cond_1e

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->hasContentToDisplay()Z

    move-result v3

    if-nez v3, :cond_21

    :cond_1e
    if-eq v1, p1, :cond_21

    .line 1583
    goto :goto_5e

    .line 1599
    :cond_21
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isActivityTypeHome()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->isMinimizedDockAndHomeStackResizable()Z

    move-result v3

    if-eqz v3, :cond_35

    .line 1600
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;)V

    goto :goto_3a

    .line 1602
    :cond_35
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    .line 1605
    :goto_3a
    if-ne v1, p1, :cond_41

    .line 1608
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p5, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1611
    :cond_41
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v3

    .line 1612
    .local v3, "isFreeformed":Z
    if-ne v1, p1, :cond_49

    if-eqz v3, :cond_5e

    .line 1613
    :cond_49
    if-eqz v3, :cond_57

    .line 1616
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    neg-int v5, p2

    neg-int v6, p2

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->inset(II)V

    .line 1622
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v4, p4}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 1624
    :cond_57
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p3, v4, v5}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1577
    .end local v1    # "task":Lcom/android/server/wm/Task;
    .end local v2    # "token":Lcom/android/server/wm/AppWindowToken;
    .end local v3    # "isFreeformed":Z
    :cond_5e
    :goto_5e
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1627
    .end local v0    # "i":I
    :cond_61
    return-void
.end method

.method public shouldDeferStartOnMoveToFullscreen()Z
    .registers 6

    .line 1746
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getHomeStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 1747
    .local v0, "homeStack":Lcom/android/server/wm/TaskStack;
    const/4 v1, 0x1

    if-nez v0, :cond_a

    .line 1748
    return v1

    .line 1750
    :cond_a
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 1751
    .local v2, "homeTask":Lcom/android/server/wm/Task;
    if-nez v2, :cond_13

    .line 1752
    return v1

    .line 1754
    :cond_13
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getTopVisibleAppToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v3

    .line 1755
    .local v3, "homeApp":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_24

    if-nez v3, :cond_20

    goto :goto_24

    .line 1758
    :cond_20
    iget-boolean v4, v3, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    xor-int/2addr v1, v4

    return v1

    .line 1756
    :cond_24
    :goto_24
    return v1
.end method

.method shouldIgnoreInput()Z
    .registers 2

    .line 1178
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isAdjustedForMinimizedDockedStack()Z

    move-result v0

    if-nez v0, :cond_15

    .line 1179
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->inSplitScreenPrimaryWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->isMinimizedDockAndHomeStackResizable()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    .line 1178
    :goto_16
    return v0
.end method

.method stopDimming()V
    .registers 3

    .line 1849
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Dimmer;->stopDim(Landroid/view/SurfaceControl$Transaction;)V

    .line 1850
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->scheduleAnimation()V

    .line 1851
    return-void
.end method

.method switchUser()V
    .registers 6

    .line 1082
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->switchUser()V

    .line 1083
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 1084
    .local v0, "top":I
    const/4 v1, 0x0

    .local v1, "taskNdx":I
    :goto_a
    if-ge v1, v0, :cond_33

    .line 1085
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 1086
    .local v2, "task":Lcom/android/server/wm/Task;
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v4, v2, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfileLocked(I)Z

    move-result v3

    if-nez v3, :cond_24

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->showForAllUsers()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 1087
    :cond_24
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->remove(I)Ljava/lang/Object;

    .line 1088
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->add(Ljava/lang/Object;)Z

    .line 1089
    add-int/lit8 v0, v0, -0x1

    .line 1084
    .end local v2    # "task":Lcom/android/server/wm/Task;
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1092
    .end local v1    # "taskNdx":I
    :cond_33
    return-void
.end method

.method taskIdFromPoint(II)I
    .registers 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 1514
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    .line 1515
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_42

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isAdjustedForMinimizedDockedStack()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_42

    .line 1519
    :cond_15
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "taskNdx":I
    :goto_1d
    if-ltz v0, :cond_41

    .line 1520
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 1521
    .local v2, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    .line 1522
    .local v3, "win":Lcom/android/server/wm/WindowState;
    if-nez v3, :cond_2e

    .line 1523
    goto :goto_3e

    .line 1529
    :cond_2e
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    .line 1530
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v4, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 1531
    iget v1, v2, Lcom/android/server/wm/Task;->mTaskId:I

    return v1

    .line 1519
    .end local v2    # "task":Lcom/android/server/wm/Task;
    .end local v3    # "win":Lcom/android/server/wm/WindowState;
    :cond_3e
    :goto_3e
    add-int/lit8 v0, v0, -0x1

    goto :goto_1d

    .line 1535
    .end local v0    # "taskNdx":I
    :cond_41
    return v1

    .line 1516
    :cond_42
    :goto_42
    return v1
.end method

.method public toShortString()Ljava/lang/String;
    .registers 3

    .line 1472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{stackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " tasks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateAdjustForIme(FFZ)Z
    .registers 5
    .param p1, "adjustAmount"    # F
    .param p2, "adjustDividerAmount"    # F
    .param p3, "force"    # Z

    .line 1127
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_11

    iget v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustDividerAmount:F

    cmpl-float v0, p2, v0

    if-nez v0, :cond_11

    if-eqz p3, :cond_f

    goto :goto_11

    .line 1134
    :cond_f
    const/4 v0, 0x0

    return v0

    .line 1129
    :cond_11
    :goto_11
    iput p1, p0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    .line 1130
    iput p2, p0, Lcom/android/server/wm/TaskStack;->mAdjustDividerAmount:F

    .line 1131
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->updateAdjustedBounds()V

    .line 1132
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isVisible()Z

    move-result v0

    return v0
.end method

.method updateBoundsAfterConfigChange()Z
    .registers 9

    .line 450
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 453
    return v1

    .line 456
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->inPinnedWindowingMode()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_34

    .line 457
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskStack;->getAnimationOrCurrentBounds(Landroid/graphics/Rect;)V

    .line 458
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTmpRect3:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v4}, Lcom/android/server/wm/PinnedStackController;->onTaskStackBoundsChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    .line 460
    .local v0, "updated":Z
    if-eqz v0, :cond_34

    .line 461
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mBoundsAfterRotation:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect3:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 466
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimationTarget:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 467
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimationSourceHintBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 468
    iput-boolean v2, p0, Lcom/android/server/wm/TaskStack;->mCancelCurrentBoundsAnimation:Z

    .line 469
    return v2

    .line 473
    .end local v0    # "updated":Z
    :cond_34
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    iget v0, v0, Landroid/view/DisplayInfo;->rotation:I

    .line 474
    .local v0, "newRotation":I
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v3

    iget v3, v3, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 476
    .local v3, "newDensity":I
    iget v4, p0, Lcom/android/server/wm/TaskStack;->mRotation:I

    if-ne v4, v0, :cond_49

    iget v4, p0, Lcom/android/server/wm/TaskStack;->mDensity:I

    if-ne v4, v3, :cond_49

    .line 478
    return v1

    .line 481
    :cond_49
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->matchParentBounds()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_54

    .line 483
    invoke-virtual {p0, v5}, Lcom/android/server/wm/TaskStack;->setBounds(Landroid/graphics/Rect;)I

    .line 485
    return v1

    .line 488
    :cond_54
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 489
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v6, p0, Lcom/android/server/wm/TaskStack;->mRotation:I

    iget-object v7, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v4, v6, v0, v7}, Lcom/android/server/wm/DisplayContent;->rotateBounds(IILandroid/graphics/Rect;)V

    .line 490
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->inSplitScreenPrimaryWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_94

    .line 491
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-direct {p0, v4}, Lcom/android/server/wm/TaskStack;->repositionPrimarySplitScreenStackAfterRotation(Landroid/graphics/Rect;)V

    .line 492
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-direct {p0, v4}, Lcom/android/server/wm/TaskStack;->snapDockedStackAfterRotation(Landroid/graphics/Rect;)V

    .line 493
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-direct {p0, v4}, Lcom/android/server/wm/TaskStack;->getDockSide(Landroid/graphics/Rect;)I

    move-result v4

    .line 497
    .local v4, "newDockSide":I
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 498
    if-eq v4, v2, :cond_86

    const/4 v7, 0x2

    if-ne v4, v7, :cond_84

    goto :goto_86

    .line 500
    :cond_84
    move v1, v2

    goto :goto_87

    .line 499
    :cond_86
    :goto_86
    nop

    .line 500
    :goto_87
    nop

    .line 497
    invoke-virtual {v6, v1, v5}, Lcom/android/server/wm/WindowManagerService;->setDockedStackCreateStateLocked(ILandroid/graphics/Rect;)V

    .line 502
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockSideChanged(I)V

    .line 505
    .end local v4    # "newDockSide":I
    :cond_94
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mBoundsAfterRotation:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 506
    return v2
.end method

.method updateDisplayInfo(Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 423
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v0, :cond_5

    .line 424
    return-void

    .line 427
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "taskNdx":I
    :goto_d
    if-ltz v0, :cond_1f

    .line 428
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/Task;->updateDisplayInfo(Lcom/android/server/wm/DisplayContent;)V

    .line 427
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 430
    .end local v0    # "taskNdx":I
    :cond_1f
    if-eqz p1, :cond_25

    .line 431
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskStack;->setBounds(Landroid/graphics/Rect;)I

    .line 432
    return-void

    .line 433
    :cond_25
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->matchParentBounds()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 434
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskStack;->setBounds(Landroid/graphics/Rect;)I

    .line 435
    return-void

    .line 438
    :cond_30
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 439
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    iget v0, v0, Landroid/view/DisplayInfo;->rotation:I

    .line 440
    .local v0, "newRotation":I
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    iget v1, v1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 441
    .local v1, "newDensity":I
    iget v2, p0, Lcom/android/server/wm/TaskStack;->mRotation:I

    if-ne v2, v0, :cond_56

    iget v2, p0, Lcom/android/server/wm/TaskStack;->mDensity:I

    if-ne v2, v1, :cond_56

    .line 442
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/TaskStack;->setBounds(Landroid/graphics/Rect;)I

    .line 446
    :cond_56
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;JZ)V
    .registers 11
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "trim"    # Z

    .line 1389
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1390
    .local v0, "token":J
    const-wide v2, 0x10b00000001L

    invoke-super {p0, p1, v2, v3, p4}, Lcom/android/server/wm/WindowContainer;->writeToProto(Landroid/util/proto/ProtoOutputStream;JZ)V

    .line 1391
    iget v2, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1392
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "taskNdx":I
    :goto_1e
    if-ltz v2, :cond_33

    .line 1393
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    const-wide v4, 0x20b00000003L

    invoke-virtual {v3, p1, v4, v5, p4}, Lcom/android/server/wm/Task;->writeToProto(Landroid/util/proto/ProtoOutputStream;JZ)V

    .line 1392
    add-int/lit8 v2, v2, -0x1

    goto :goto_1e

    .line 1395
    .end local v2    # "taskNdx":I
    :cond_33
    const-wide v2, 0x10800000004L

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->matchParentBounds()Z

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1396
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v2

    const-wide v3, 0x10b00000005L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1397
    const-wide v2, 0x10800000006L

    iget-boolean v4, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurfaceIsShown:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1398
    const-wide v2, 0x10800000007L

    iget-boolean v4, p0, Lcom/android/server/wm/TaskStack;->mDeferRemoval:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1399
    const-wide v2, 0x10200000008L

    iget v4, p0, Lcom/android/server/wm/TaskStack;->mMinimizeAmount:F

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 1400
    const-wide v2, 0x10800000009L

    iget-boolean v4, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1401
    const-wide v2, 0x1020000000aL

    iget v4, p0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 1402
    const-wide v2, 0x1020000000bL

    iget v4, p0, Lcom/android/server/wm/TaskStack;->mAdjustDividerAmount:F

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 1403
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    const-wide v3, 0x10b0000000cL

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1404
    const-wide v2, 0x1080000000dL

    iget-boolean v4, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimating:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1405
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1406
    return-void
.end method
