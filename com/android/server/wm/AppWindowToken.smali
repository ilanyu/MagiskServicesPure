.class Lcom/android/server/wm/AppWindowToken;
.super Lcom/android/server/wm/WindowToken;
.source "AppWindowToken.java"

# interfaces
.implements Lcom/android/server/wm/WindowManagerService$AppFreezeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final Z_BOOST_BASE:I = 0x2fb7ba90


# instance fields
.field allDrawn:Z

.field final appToken:Landroid/view/IApplicationToken;

.field deferClearAllDrawn:Z

.field firstWindowDrawn:Z

.field hiddenRequested:Z

.field inPendingTransaction:Z

.field isCastMode:Z

.field layoutConfigChanges:Z

.field private mAlwaysFocusable:Z

.field private mAnimatingAppWindowTokenRegistry:Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;

.field mAppStopped:Z

.field private mCanTurnScreenOn:Z

.field private mClientHidden:Z

.field mDeferHidingClient:Z

.field private mDisablePreviewScreenshots:Z

.field mEnteringAnimation:Z

.field private mFillsParent:Z

.field private mFreezingScreen:Z

.field mFrozenBounds:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field mFrozenMergedConfig:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/content/res/Configuration;",
            ">;"
        }
    .end annotation
.end field

.field mHandleByGesture:Z

.field private mHiddenSetFromTransferredStartingWindow:Z

.field mIgnoreInput:Z

.field final mInputApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

.field mInputDispatchingTimeoutNanos:J

.field mIsDummyAnimating:Z

.field mIsDummyVisible:Z

.field mIsExiting:Z

.field mIsMiuiThumbnail:Z

.field private mLastAllDrawn:Z

.field private mLastContainsDismissKeyguardWindow:Z

.field private mLastContainsShowWhenLockedWindow:Z

.field private mLastParent:Lcom/android/server/wm/Task;

.field private mLastSurfaceShowing:Z

.field private mLastTransactionSequence:J

.field mLaunchTaskBehind:Z

.field private mLetterbox:Lcom/android/server/wm/Letterbox;

.field private mNeedsZBoost:Z

.field private mNumDrawnWindows:I

.field private mNumInterestingWindows:I

.field private mPendingRelaunchCount:I

.field private mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

.field private mRemovingFromDisplay:Z

.field private mReparenting:Z

.field private final mReportedVisibilityResults:Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

.field mRotationAnimationHint:I

.field mShowForAllUsers:Z

.field mTargetSdk:I

.field private mThumbnail:Lcom/android/server/wm/AppWindowThumbnail;

.field private final mTmpPoint:Landroid/graphics/Point;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private mTransit:I

.field private mTransitFlags:I

.field final mVoiceInteraction:Z

.field private mWillCloseOrEnterPip:Z

.field mWindowAnimationSpec:Lcom/android/server/wm/WindowAnimationSpec;

.field removed:Z

.field private reportedDrawn:Z

.field reportedVisible:Z

.field startingData:Lcom/android/server/wm/StartingData;

.field startingDisplayed:Z

.field startingMoved:Z

.field startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

.field startingWindow:Lcom/android/server/wm/WindowState;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IApplicationToken;ZLcom/android/server/wm/DisplayContent;JZZIIIIZZLcom/android/server/wm/AppWindowContainerController;)V
    .registers 28
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "token"    # Landroid/view/IApplicationToken;
    .param p3, "voiceInteraction"    # Z
    .param p4, "dc"    # Lcom/android/server/wm/DisplayContent;
    .param p5, "inputDispatchingTimeoutNanos"    # J
    .param p7, "fullscreen"    # Z
    .param p8, "showForAllUsers"    # Z
    .param p9, "targetSdk"    # I
    .param p10, "orientation"    # I
    .param p11, "rotationAnimationHint"    # I
    .param p12, "configChanges"    # I
    .param p13, "launchTaskBehind"    # Z
    .param p14, "alwaysFocusable"    # Z
    .param p15, "controller"    # Lcom/android/server/wm/AppWindowContainerController;

    move-object v6, p0

    .line 304
    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/AppWindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IApplicationToken;ZLcom/android/server/wm/DisplayContent;Z)V

    .line 305
    move-object/from16 v0, p15

    invoke-virtual {v6, v0}, Lcom/android/server/wm/AppWindowToken;->setController(Lcom/android/server/wm/WindowContainerController;)V

    .line 306
    move-wide/from16 v1, p5

    iput-wide v1, v6, Lcom/android/server/wm/AppWindowToken;->mInputDispatchingTimeoutNanos:J

    .line 307
    move/from16 v3, p8

    iput-boolean v3, v6, Lcom/android/server/wm/AppWindowToken;->mShowForAllUsers:Z

    .line 308
    move/from16 v4, p9

    iput v4, v6, Lcom/android/server/wm/AppWindowToken;->mTargetSdk:I

    .line 309
    move/from16 v5, p10

    iput v5, v6, Lcom/android/server/wm/AppWindowToken;->mOrientation:I

    .line 310
    move/from16 v7, p12

    and-int/lit16 v8, v7, 0x480

    const/4 v9, 0x1

    if-eqz v8, :cond_2a

    move v8, v9

    goto :goto_2b

    :cond_2a
    const/4 v8, 0x0

    :goto_2b
    iput-boolean v8, v6, Lcom/android/server/wm/AppWindowToken;->layoutConfigChanges:Z

    .line 311
    move/from16 v8, p13

    iput-boolean v8, v6, Lcom/android/server/wm/AppWindowToken;->mLaunchTaskBehind:Z

    .line 312
    move/from16 v10, p14

    iput-boolean v10, v6, Lcom/android/server/wm/AppWindowToken;->mAlwaysFocusable:Z

    .line 313
    move/from16 v11, p11

    iput v11, v6, Lcom/android/server/wm/AppWindowToken;->mRotationAnimationHint:I

    .line 316
    invoke-virtual {v6, v9}, Lcom/android/server/wm/AppWindowToken;->setHidden(Z)V

    .line 317
    iput-boolean v9, v6, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    .line 318
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IApplicationToken;ZLcom/android/server/wm/DisplayContent;Z)V
    .registers 14
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "token"    # Landroid/view/IApplicationToken;
    .param p3, "voiceInteraction"    # Z
    .param p4, "dc"    # Lcom/android/server/wm/DisplayContent;
    .param p5, "fillsParent"    # Z

    .line 322
    if-eqz p2, :cond_8

    invoke-interface {p2}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_6
    move-object v3, v0

    goto :goto_a

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :goto_a
    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/WindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZLcom/android/server/wm/DisplayContent;Z)V

    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mRemovingFromDisplay:Z

    .line 175
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/server/wm/AppWindowToken;->mLastTransactionSequence:J

    .line 219
    new-instance v0, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

    invoke-direct {v0}, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mReportedVisibilityResults:Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

    .line 240
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenBounds:Ljava/util/ArrayDeque;

    .line 241
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenMergedConfig:Ljava/util/ArrayDeque;

    .line 250
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mCanTurnScreenOn:Z

    .line 265
    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mLastSurfaceShowing:Z

    .line 276
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mTmpPoint:Landroid/graphics/Point;

    .line 277
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mTmpRect:Landroid/graphics/Rect;

    .line 324
    iput-object p2, p0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    .line 325
    iput-boolean p3, p0, Lcom/android/server/wm/AppWindowToken;->mVoiceInteraction:Z

    .line 326
    iput-boolean p5, p0, Lcom/android/server/wm/AppWindowToken;->mFillsParent:Z

    .line 327
    new-instance v0, Lcom/android/server/input/InputApplicationHandle;

    invoke-direct {v0, p0}, Lcom/android/server/input/InputApplicationHandle;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mInputApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    .line 328
    return-void
.end method

.method private allDrawnStatesConsidered()Z
    .registers 5

    .line 1488
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_23

    .line 1489
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 1490
    .local v2, "child":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->mightAffectAllDrawn()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getDrawnStateEvaluated()Z

    move-result v3

    if-nez v3, :cond_20

    .line 1491
    const/4 v1, 0x0

    return v1

    .line 1488
    .end local v2    # "child":Lcom/android/server/wm/WindowState;
    :cond_20
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1494
    .end local v0    # "i":I
    :cond_23
    return v1
.end method

.method private clearThumbnail()V
    .registers 2

    .line 2253
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mThumbnail:Lcom/android/server/wm/AppWindowThumbnail;

    if-nez v0, :cond_5

    .line 2254
    return-void

    .line 2256
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mThumbnail:Lcom/android/server/wm/AppWindowThumbnail;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowThumbnail;->destroy()V

    .line 2257
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mThumbnail:Lcom/android/server/wm/AppWindowThumbnail;

    .line 2258
    return-void
.end method

.method private destroySurfaces(Z)V
    .registers 8
    .param p1, "cleanupOnResume"    # Z

    .line 769
    const/4 v0, 0x0

    .line 772
    .local v0, "destroyedSomething":Z
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 773
    .local v1, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_e
    if-ltz v2, :cond_20

    .line 774
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 775
    .local v4, "win":Lcom/android/server/wm/WindowState;
    iget-boolean v5, p0, Lcom/android/server/wm/AppWindowToken;->mAppStopped:Z

    invoke-virtual {v4, p1, v5}, Lcom/android/server/wm/WindowState;->destroySurface(ZZ)Z

    move-result v5

    or-int/2addr v0, v5

    .line 773
    .end local v4    # "win":Lcom/android/server/wm/WindowState;
    add-int/lit8 v2, v2, -0x1

    goto :goto_e

    .line 777
    .end local v2    # "i":I
    :cond_20
    if-eqz v0, :cond_2d

    .line 778
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 779
    .local v2, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    .line 780
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/wm/AppWindowToken;->updateLetterboxSurface(Lcom/android/server/wm/WindowState;)V

    .line 782
    .end local v2    # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_2d
    return-void
.end method

.method private freezeBounds()V
    .registers 5

    .line 1122
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1123
    .local v0, "task":Lcom/android/server/wm/Task;
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenBounds:Ljava/util/ArrayDeque;

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/android/server/wm/Task;->mPreparedFrozenBounds:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 1125
    iget-object v1, v0, Lcom/android/server/wm/Task;->mPreparedFrozenMergedConfig:Landroid/content/res/Configuration;

    sget-object v2, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 1127
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenMergedConfig:Ljava/util/ArrayDeque;

    new-instance v2, Landroid/content/res/Configuration;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    goto :goto_35

    .line 1129
    :cond_29
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenMergedConfig:Ljava/util/ArrayDeque;

    new-instance v2, Landroid/content/res/Configuration;

    iget-object v3, v0, Lcom/android/server/wm/Task;->mPreparedFrozenMergedConfig:Landroid/content/res/Configuration;

    invoke-direct {v2, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 1132
    :goto_35
    iget-object v1, v0, Lcom/android/server/wm/Task;->mPreparedFrozenMergedConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1}, Landroid/content/res/Configuration;->unset()V

    .line 1133
    return-void
.end method

.method private isReallyAnimating()Z
    .registers 2

    .line 2145
    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->isSelfAnimating()Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$layoutLetterbox$0(Lcom/android/server/wm/AppWindowToken;)Landroid/view/SurfaceControl$Builder;
    .registers 2

    .line 1615
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppWindowToken;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$onAnimationFinished$3(Lcom/android/server/wm/WindowState;)V
    .registers 3
    .param p0, "win"    # Lcom/android/server/wm/WindowState;

    .line 2116
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v0, :cond_b

    .line 2117
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const-string v1, "hide by gesture"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowStateAnimator;->hide(Ljava/lang/String;)V

    .line 2119
    :cond_b
    return-void
.end method

.method static synthetic lambda$shouldUseAppThemeSnapshot$1(Lcom/android/server/wm/WindowState;)Z
    .registers 2
    .param p0, "w"    # Lcom/android/server/wm/WindowState;

    .line 1812
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method static synthetic lambda$showAllWindowsLocked$2(Lcom/android/server/wm/WindowState;)V
    .registers 1
    .param p0, "windowState"    # Lcom/android/server/wm/WindowState;

    .line 2074
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->performShowLocked()Z

    .line 2075
    return-void
.end method

.method private loadAnimation(Landroid/view/WindowManager$LayoutParams;IZZ)Landroid/view/animation/Animation;
    .registers 32
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "transit"    # I
    .param p3, "enter"    # Z
    .param p4, "isVoiceInteraction"    # Z

    move-object/from16 v0, p0

    .line 1942
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 1943
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    .line 1944
    .local v2, "displayInfo":Landroid/view/DisplayInfo;
    iget v3, v2, Landroid/view/DisplayInfo;->appWidth:I

    .line 1945
    .local v3, "width":I
    iget v4, v2, Landroid/view/DisplayInfo;->appHeight:I

    .line 1950
    .local v4, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v5

    .line 1951
    .local v5, "win":Lcom/android/server/wm/WindowState;
    new-instance v6, Landroid/graphics/Rect;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v7, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1952
    .local v6, "frame":Landroid/graphics/Rect;
    new-instance v15, Landroid/graphics/Rect;

    iget v8, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v9, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-direct {v15, v7, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1954
    .local v15, "displayFrame":Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    move-object v14, v8

    .line 1955
    .local v14, "insets":Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    move-object v13, v8

    .line 1956
    .local v13, "stableInsets":Landroid/graphics/Rect;
    const/4 v8, 0x0

    .line 1957
    .local v8, "surfaceInsets":Landroid/graphics/Rect;
    if-eqz v5, :cond_3c

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->inFreeformWindowingMode()Z

    move-result v9

    if-eqz v9, :cond_3c

    const/4 v7, 0x1

    nop

    .line 1958
    .local v7, "freeform":Z
    :cond_3c
    if-eqz v5, :cond_83

    .line 1963
    if-eqz v7, :cond_46

    .line 1964
    iget-object v9, v5, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v6, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_73

    .line 1965
    :cond_46
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->isLetterboxedAppWindow()Z

    move-result v9

    if-eqz v9, :cond_58

    .line 1966
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_73

    .line 1967
    :cond_58
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->isDockedResizing()Z

    move-result v9

    if-eqz v9, :cond_6e

    .line 1970
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_73

    .line 1972
    :cond_6e
    iget-object v9, v5, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {v6, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1974
    :goto_73
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    iget-object v8, v9, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 1977
    iget-object v9, v5, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v14, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1978
    iget-object v9, v5, Lcom/android/server/wm/WindowState;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v13, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1981
    .end local v8    # "surfaceInsets":Landroid/graphics/Rect;
    .local v22, "surfaceInsets":Landroid/graphics/Rect;
    :cond_83
    move-object/from16 v22, v8

    iget-boolean v8, v0, Lcom/android/server/wm/AppWindowToken;->mLaunchTaskBehind:Z

    if-eqz v8, :cond_8d

    .line 1985
    const/4 v8, 0x0

    .line 1990
    .end local p3    # "enter":Z
    .local v8, "enter":Z
    move/from16 v23, v8

    goto :goto_8f

    .end local v8    # "enter":Z
    .restart local p3    # "enter":Z
    :cond_8d
    move/from16 v23, p3

    .end local p3    # "enter":Z
    .local v23, "enter":Z
    :goto_8f
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    .line 1991
    .local v12, "displayConfig":Landroid/content/res/Configuration;
    iget-object v8, v0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget v11, v12, Landroid/content/res/Configuration;->uiMode:I

    iget v10, v12, Landroid/content/res/Configuration;->orientation:I

    .line 1993
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v9

    iget v9, v9, Lcom/android/server/wm/Task;->mTaskId:I

    .line 1991
    move/from16 v21, v9

    move-object/from16 v9, p1

    move/from16 v16, v10

    move/from16 v10, p2

    move/from16 v17, v11

    move/from16 v11, v23

    move-object/from16 v24, v12

    move/from16 v12, v17

    .end local v12    # "displayConfig":Landroid/content/res/Configuration;
    .local v24, "displayConfig":Landroid/content/res/Configuration;
    move-object/from16 v25, v13

    move/from16 v13, v16

    .end local v13    # "stableInsets":Landroid/graphics/Rect;
    .local v25, "stableInsets":Landroid/graphics/Rect;
    move-object/from16 v26, v14

    move-object v14, v6

    .end local v14    # "insets":Landroid/graphics/Rect;
    .local v26, "insets":Landroid/graphics/Rect;
    move-object/from16 v16, v26

    move-object/from16 v17, v22

    move-object/from16 v18, v25

    move/from16 v19, p4

    move/from16 v20, v7

    invoke-virtual/range {v8 .. v21}, Lcom/android/server/wm/AppTransition;->loadAnimation(Landroid/view/WindowManager$LayoutParams;IZIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZI)Landroid/view/animation/Animation;

    move-result-object v8

    .line 1994
    .local v8, "a":Landroid/view/animation/Animation;
    if-eqz v8, :cond_dc

    .line 1996
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v9

    .line 1997
    .local v9, "containingWidth":I
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v10

    .line 1998
    .local v10, "containingHeight":I
    invoke-virtual {v8, v9, v10, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 1999
    iget-object v11, v0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v11}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v11

    invoke-virtual {v8, v11}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 2001
    .end local v9    # "containingWidth":I
    .end local v10    # "containingHeight":I
    :cond_dc
    return-object v8
.end method

.method private loadThumbnailAnimation(Landroid/graphics/GraphicBuffer;)Landroid/view/animation/Animation;
    .registers 15
    .param p1, "thumbnailHeader"    # Landroid/graphics/GraphicBuffer;

    .line 2237
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 2242
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 2243
    .local v1, "win":Lcom/android/server/wm/WindowState;
    if-eqz v1, :cond_12

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    .line 2244
    :goto_10
    move-object v7, v2

    goto :goto_1d

    :cond_12
    new-instance v2, Landroid/graphics/Rect;

    iget v3, v0, Landroid/view/DisplayInfo;->appWidth:I

    iget v4, v0, Landroid/view/DisplayInfo;->appHeight:I

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_10

    .line 2245
    .local v7, "appRect":Landroid/graphics/Rect;
    :goto_1d
    if-eqz v1, :cond_23

    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    :goto_21
    move-object v8, v2

    goto :goto_25

    :cond_23
    const/4 v2, 0x0

    goto :goto_21

    .line 2246
    .local v8, "insets":Landroid/graphics/Rect;
    :goto_25
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 2247
    .local v2, "displayConfig":Landroid/content/res/Configuration;
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 2248
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    iget v10, v3, Lcom/android/server/wm/Task;->mTaskId:I

    iget v11, v2, Landroid/content/res/Configuration;->uiMode:I

    iget v12, v2, Landroid/content/res/Configuration;->orientation:I

    .line 2247
    move-object v9, p1

    invoke-virtual/range {v6 .. v12}, Lcom/android/server/wm/AppTransition;->createThumbnailAspectScaleAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/GraphicBuffer;III)Landroid/view/animation/Animation;

    move-result-object v3

    return-object v3
.end method

.method private shouldAnimate(I)Z
    .registers 6
    .param p1, "transit"    # I

    .line 1839
    nop

    .line 1840
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-ne v0, v3, :cond_c

    move v0, v2

    goto :goto_d

    :cond_c
    move v0, v1

    .line 1841
    .local v0, "isSplitScreenPrimary":Z
    :goto_d
    const/16 v3, 0xd

    if-eq p1, v3, :cond_13

    move v3, v2

    goto :goto_14

    :cond_13
    move v3, v1

    .line 1846
    .local v3, "allowSplitScreenPrimaryAnimation":Z
    :goto_14
    if-eqz v0, :cond_1a

    if-eqz v3, :cond_19

    goto :goto_1a

    :cond_19
    goto :goto_1b

    :cond_1a
    :goto_1a
    move v1, v2

    :goto_1b
    return v1
.end method

.method private unfreezeBounds()V
    .registers 3

    .line 1139
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenBounds:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1140
    return-void

    .line 1142
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenBounds:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    .line 1143
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenMergedConfig:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1144
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenMergedConfig:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    .line 1146
    :cond_1b
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_23
    if-ltz v0, :cond_33

    .line 1147
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 1148
    .local v1, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->onUnfreezeBounds()V

    .line 1146
    .end local v1    # "win":Lcom/android/server/wm/WindowState;
    add-int/lit8 v0, v0, -0x1

    goto :goto_23

    .line 1150
    .end local v0    # "i":I
    :cond_33
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 1151
    return-void
.end method

.method private waitingForReplacement()Z
    .registers 5

    .line 1067
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 1068
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 1069
    .local v2, "candidate":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->waitingForReplacement()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1070
    return v1

    .line 1067
    .end local v2    # "candidate":Lcom/android/server/wm/WindowState;
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1073
    .end local v0    # "i":I
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method addWindow(Lcom/android/server/wm/WindowState;)V
    .registers 6
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 1044
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowToken;->addWindow(Lcom/android/server/wm/WindowState;)V

    .line 1046
    const/4 v0, 0x0

    .line 1047
    .local v0, "gotReplacementWindow":Z
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_c
    if-ltz v1, :cond_1e

    .line 1048
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 1049
    .local v2, "candidate":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowState;->setReplacementWindowIfNeeded(Lcom/android/server/wm/WindowState;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 1047
    .end local v2    # "candidate":Lcom/android/server/wm/WindowState;
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 1053
    .end local v1    # "i":I
    :cond_1e
    if-eqz v0, :cond_25

    .line 1054
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/WindowManagerService;->scheduleWindowReplacementTimeouts(Lcom/android/server/wm/AppWindowToken;)V

    .line 1056
    :cond_25
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->checkKeyguardFlagsChanged()V

    .line 1057
    return-void
.end method

.method applyAnimationLocked(Landroid/view/WindowManager$LayoutParams;IZZ)Z
    .registers 21
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "transit"    # I
    .param p3, "enter"    # Z
    .param p4, "isVoiceInteraction"    # Z

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 1854
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 1855
    .local v2, "win":Lcom/android/server/wm/WindowState;
    iget-object v3, v0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowManagerService;->mDisableTransitionAnimation:Z

    const/4 v4, 0x0

    if-nez v3, :cond_120

    invoke-direct {v0, v1}, Lcom/android/server/wm/AppWindowToken;->shouldAnimate(I)Z

    move-result v3

    if-eqz v3, :cond_120

    if-eqz v2, :cond_1f

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->inFreeformWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_1f

    goto/16 :goto_120

    .line 1868
    :cond_1f
    const-string v3, "AWT#applyAnimationLocked"

    const-wide/16 v5, 0x20

    invoke-static {v5, v6, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1869
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->okToAnimate()Z

    move-result v3

    if-eqz v3, :cond_115

    .line 1871
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v3

    .line 1872
    .local v3, "stack":Lcom/android/server/wm/TaskStack;
    iget-object v7, v0, Lcom/android/server/wm/AppWindowToken;->mTmpPoint:Landroid/graphics/Point;

    invoke-virtual {v7, v4, v4}, Landroid/graphics/Point;->set(II)V

    .line 1873
    iget-object v7, v0, Lcom/android/server/wm/AppWindowToken;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->setEmpty()V

    .line 1874
    if-eqz v3, :cond_4b

    .line 1875
    iget-object v7, v0, Lcom/android/server/wm/AppWindowToken;->mTmpPoint:Landroid/graphics/Point;

    invoke-virtual {v3, v7}, Lcom/android/server/wm/TaskStack;->getRelativePosition(Landroid/graphics/Point;)V

    .line 1876
    iget-object v7, v0, Lcom/android/server/wm/AppWindowToken;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v7}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    .line 1877
    iget-object v7, v0, Lcom/android/server/wm/AppWindowToken;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v4, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1881
    :cond_4b
    iget-object v4, v0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v4}, Lcom/android/server/wm/AppTransition;->getRemoteAnimationController()Lcom/android/server/wm/RemoteAnimationController;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v4, :cond_71

    iget-object v4, v0, Lcom/android/server/wm/AppWindowToken;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 1882
    invoke-virtual {v4}, Lcom/android/server/wm/SurfaceAnimator;->isAnimationStartDelayed()Z

    move-result v4

    if-nez v4, :cond_71

    .line 1883
    iget-object v4, v0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v4}, Lcom/android/server/wm/AppTransition;->getRemoteAnimationController()Lcom/android/server/wm/RemoteAnimationController;

    move-result-object v4

    iget-object v7, v0, Lcom/android/server/wm/AppWindowToken;->mTmpPoint:Landroid/graphics/Point;

    iget-object v9, v0, Lcom/android/server/wm/AppWindowToken;->mTmpRect:Landroid/graphics/Rect;

    .line 1884
    invoke-virtual {v4, v0, v7, v9}, Lcom/android/server/wm/RemoteAnimationController;->createAnimationAdapter(Lcom/android/server/wm/AppWindowToken;Landroid/graphics/Point;Landroid/graphics/Rect;)Lcom/android/server/wm/AnimationAdapter;

    move-result-object v7

    .local v7, "adapter":Lcom/android/server/wm/AnimationAdapter;
    goto/16 :goto_f7

    .line 1888
    .end local v7    # "adapter":Lcom/android/server/wm/AnimationAdapter;
    :cond_71
    iget-boolean v4, v0, Lcom/android/server/wm/AppWindowToken;->mIgnoreInput:Z

    if-eqz v4, :cond_77

    .line 1889
    move-object v4, v7

    goto :goto_7b

    :cond_77
    invoke-direct/range {p0 .. p4}, Lcom/android/server/wm/AppWindowToken;->loadAnimation(Landroid/view/WindowManager$LayoutParams;IZZ)Landroid/view/animation/Animation;

    move-result-object v4

    .line 1891
    .local v4, "a":Landroid/view/animation/Animation;
    :goto_7b
    if-eqz v4, :cond_f7

    .line 1900
    new-instance v7, Lcom/android/server/wm/WindowAnimationSpec;

    iget-object v11, v0, Lcom/android/server/wm/AppWindowToken;->mTmpPoint:Landroid/graphics/Point;

    iget-object v12, v0, Lcom/android/server/wm/AppWindowToken;->mTmpRect:Landroid/graphics/Rect;

    iget-object v9, v0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 1901
    invoke-virtual {v9}, Lcom/android/server/wm/AppTransition;->canSkipFirstFrame()Z

    move-result v13

    iget-object v9, v0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 1902
    invoke-virtual {v9}, Lcom/android/server/wm/AppTransition;->getAppStackClipMode()I

    move-result v14

    const/4 v15, 0x1

    move-object v9, v7

    move-object v10, v4

    invoke-direct/range {v9 .. v15}, Lcom/android/server/wm/WindowAnimationSpec;-><init>(Landroid/view/animation/Animation;Landroid/graphics/Point;Landroid/graphics/Rect;ZIZ)V

    iput-object v7, v0, Lcom/android/server/wm/AppWindowToken;->mWindowAnimationSpec:Lcom/android/server/wm/WindowAnimationSpec;

    .line 1905
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 1906
    .local v7, "bounds":Landroid/graphics/Rect;
    iget-object v9, v0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v9

    .line 1907
    .local v9, "ds":Lcom/android/server/wm/DisplayContent;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getActivityType()I

    move-result v10

    const/4 v11, 0x2

    if-eq v10, v11, :cond_d5

    .line 1908
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getActivityType()I

    move-result v10

    const/4 v11, 0x3

    if-eq v10, v11, :cond_d5

    iget-object v10, v0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 1909
    invoke-virtual {v10, v1}, Lcom/android/server/wm/AppTransition;->shouldAppTransitionRoundCorner(I)Z

    move-result v10

    if-eqz v10, :cond_d5

    iget v10, v9, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 1910
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v11

    if-ne v10, v11, :cond_d5

    iget v10, v9, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 1911
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v11

    if-ne v10, v11, :cond_d5

    .line 1912
    iget-object v10, v0, Lcom/android/server/wm/AppWindowToken;->mWindowAnimationSpec:Lcom/android/server/wm/WindowAnimationSpec;

    iput-object v0, v10, Lcom/android/server/wm/WindowAnimationSpec;->mWindowToken:Lcom/android/server/wm/AppWindowToken;

    .line 1914
    :cond_d5
    new-instance v10, Lcom/android/server/wm/LocalAnimationAdapter;

    iget-object v11, v0, Lcom/android/server/wm/AppWindowToken;->mWindowAnimationSpec:Lcom/android/server/wm/WindowAnimationSpec;

    iget-object v12, v0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-direct {v10, v11, v12}, Lcom/android/server/wm/LocalAnimationAdapter;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)V

    .line 1917
    .local v10, "adapter":Lcom/android/server/wm/AnimationAdapter;
    invoke-virtual {v4}, Landroid/view/animation/Animation;->getZAdjustment()I

    move-result v11

    if-ne v11, v8, :cond_e8

    .line 1918
    iput-boolean v8, v0, Lcom/android/server/wm/AppWindowToken;->mNeedsZBoost:Z

    .line 1920
    :cond_e8
    iput v1, v0, Lcom/android/server/wm/AppWindowToken;->mTransit:I

    .line 1921
    iget-object v11, v0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v11, v11, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v11}, Lcom/android/server/wm/AppTransition;->getTransitFlags()I

    move-result v11

    iput v11, v0, Lcom/android/server/wm/AppWindowToken;->mTransitFlags:I

    .line 1922
    .end local v7    # "bounds":Landroid/graphics/Rect;
    .end local v9    # "ds":Lcom/android/server/wm/DisplayContent;
    nop

    .line 1923
    move-object v7, v10

    nop

    .end local v4    # "a":Landroid/view/animation/Animation;
    .end local v10    # "adapter":Lcom/android/server/wm/AnimationAdapter;
    .local v7, "adapter":Lcom/android/server/wm/AnimationAdapter;
    :cond_f7
    :goto_f7
    move-object v4, v7

    .line 1926
    .end local v7    # "adapter":Lcom/android/server/wm/AnimationAdapter;
    .local v4, "adapter":Lcom/android/server/wm/AnimationAdapter;
    if-eqz v4, :cond_114

    .line 1927
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->isVisible()Z

    move-result v9

    xor-int/2addr v8, v9

    invoke-virtual {v0, v7, v4, v8}, Lcom/android/server/wm/AppWindowToken;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;Z)V

    .line 1928
    invoke-interface {v4}, Lcom/android/server/wm/AnimationAdapter;->getShowWallpaper()Z

    move-result v7

    if-eqz v7, :cond_114

    .line 1929
    iget-object v7, v0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v8, v7, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v8, v8, 0x4

    iput v8, v7, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 1932
    .end local v3    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v4    # "adapter":Lcom/android/server/wm/AnimationAdapter;
    :cond_114
    goto :goto_118

    .line 1933
    :cond_115
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->cancelAnimation()V

    .line 1935
    :goto_118
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1937
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->isReallyAnimating()Z

    move-result v3

    return v3

    .line 1861
    :cond_120
    :goto_120
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->cancelAnimation()V

    .line 1862
    return v4
.end method

.method asAppWindowToken()Lcom/android/server/wm/AppWindowToken;
    .registers 1

    .line 1686
    return-object p0
.end method

.method attachCrossProfileAppsThumbnailAnimation()V
    .registers 11

    .line 2210
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->isReallyAnimating()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2211
    return-void

    .line 2213
    :cond_7
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->clearThumbnail()V

    .line 2215
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 2216
    .local v0, "win":Lcom/android/server/wm/WindowState;
    if-nez v0, :cond_11

    .line 2217
    return-void

    .line 2219
    :cond_11
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    .line 2220
    .local v1, "frame":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iget v2, v2, Lcom/android/server/wm/Task;->mUserId:I

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v3, v3, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    if-ne v2, v3, :cond_23

    .line 2221
    const v2, 0x10802f6

    goto :goto_26

    .line 2222
    :cond_23
    const v2, 0x108033e

    .line 2223
    .local v2, "thumbnailDrawableRes":I
    :goto_26
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 2225
    invoke-virtual {v3, v2, v1}, Lcom/android/server/wm/AppTransition;->createCrossProfileAppsThumbnail(ILandroid/graphics/Rect;)Landroid/graphics/GraphicBuffer;

    move-result-object v3

    .line 2226
    .local v3, "thumbnail":Landroid/graphics/GraphicBuffer;
    if-nez v3, :cond_31

    .line 2227
    return-void

    .line 2229
    :cond_31
    new-instance v4, Lcom/android/server/wm/AppWindowThumbnail;

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v5

    invoke-direct {v4, v5, p0, v3}, Lcom/android/server/wm/AppWindowThumbnail;-><init>(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AppWindowToken;Landroid/graphics/GraphicBuffer;)V

    iput-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mThumbnail:Lcom/android/server/wm/AppWindowThumbnail;

    .line 2230
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    .line 2231
    invoke-virtual {v4, v5}, Lcom/android/server/wm/AppTransition;->createCrossProfileAppsThumbnailAnimationLocked(Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v4

    .line 2232
    .local v4, "animation":Landroid/view/animation/Animation;
    iget-object v5, p0, Lcom/android/server/wm/AppWindowToken;->mThumbnail:Lcom/android/server/wm/AppWindowThumbnail;

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v6

    new-instance v7, Landroid/graphics/Point;

    iget v8, v1, Landroid/graphics/Rect;->left:I

    iget v9, v1, Landroid/graphics/Rect;->top:I

    invoke-direct {v7, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v5, v6, v4, v7}, Lcom/android/server/wm/AppWindowThumbnail;->startAnimation(Landroid/view/SurfaceControl$Transaction;Landroid/view/animation/Animation;Landroid/graphics/Point;)V

    .line 2234
    return-void
.end method

.method attachThumbnailAnimation()V
    .registers 2

    .line 2169
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppWindowToken;->attachThumbnailAnimation(Z)V

    .line 2170
    return-void
.end method

.method attachThumbnailAnimation(Z)V
    .registers 11
    .param p1, "isMiuiThumbnail"    # Z

    .line 2176
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->isReallyAnimating()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2177
    return-void

    .line 2179
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 2180
    .local v0, "taskId":I
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 2181
    invoke-virtual {v1, v0}, Lcom/android/server/wm/AppTransition;->getAppTransitionThumbnailHeader(I)Landroid/graphics/GraphicBuffer;

    move-result-object v1

    .line 2182
    .local v1, "thumbnailHeader":Landroid/graphics/GraphicBuffer;
    if-nez v1, :cond_18

    .line 2184
    return-void

    .line 2186
    :cond_18
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->clearThumbnail()V

    .line 2189
    iput-boolean p1, p0, Lcom/android/server/wm/AppWindowToken;->mIsMiuiThumbnail:Z

    .line 2190
    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->mIsMiuiThumbnail:Z

    if-eqz v2, :cond_53

    .line 2191
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    .line 2192
    .local v2, "displayInfo":Landroid/view/DisplayInfo;
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    .line 2193
    .local v3, "win":Lcom/android/server/wm/WindowState;
    if-eqz v3, :cond_34

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    goto :goto_3e

    .line 2194
    :cond_34
    new-instance v4, Landroid/graphics/Rect;

    iget v5, v2, Landroid/view/DisplayInfo;->appWidth:I

    iget v6, v2, Landroid/view/DisplayInfo;->appHeight:I

    const/4 v7, 0x0

    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2195
    .local v4, "appRect":Landroid/graphics/Rect;
    :goto_3e
    new-instance v5, Lcom/android/server/wm/AppWindowThumbnail;

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v6

    new-instance v7, Lcom/android/server/wm/AppWindowAnimatorHelper;

    iget-object v8, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mMiuiAppTransitionAnimationHelper:Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    invoke-direct {v7, v4, v8}, Lcom/android/server/wm/AppWindowAnimatorHelper;-><init>(Landroid/graphics/Rect;Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;)V

    invoke-direct {v5, v6, p0, v1, v7}, Lcom/android/server/wm/AppWindowThumbnail;-><init>(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AppWindowToken;Landroid/graphics/GraphicBuffer;Lcom/android/server/wm/AppWindowAnimatorHelper;)V

    iput-object v5, p0, Lcom/android/server/wm/AppWindowToken;->mThumbnail:Lcom/android/server/wm/AppWindowThumbnail;

    .line 2198
    .end local v2    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v3    # "win":Lcom/android/server/wm/WindowState;
    .end local v4    # "appRect":Landroid/graphics/Rect;
    goto :goto_5e

    .line 2199
    :cond_53
    new-instance v2, Lcom/android/server/wm/AppWindowThumbnail;

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    invoke-direct {v2, v3, p0, v1}, Lcom/android/server/wm/AppWindowThumbnail;-><init>(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AppWindowToken;Landroid/graphics/GraphicBuffer;)V

    iput-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mThumbnail:Lcom/android/server/wm/AppWindowThumbnail;

    .line 2202
    :goto_5e
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mThumbnail:Lcom/android/server/wm/AppWindowThumbnail;

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/android/server/wm/AppWindowToken;->loadThumbnailAnimation(Landroid/graphics/GraphicBuffer;)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/AppWindowThumbnail;->startAnimation(Landroid/view/SurfaceControl$Transaction;Landroid/view/animation/Animation;)V

    .line 2203
    return-void
.end method

.method canTurnScreenOn()Z
    .registers 2

    .line 1800
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mCanTurnScreenOn:Z

    return v0
.end method

.method cancelAnimation()V
    .registers 1

    .line 2150
    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->cancelAnimation()V

    .line 2151
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->clearThumbnail()V

    .line 2152
    return-void
.end method

.method checkAppWindowsReadyToShow()V
    .registers 3

    .line 1449
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mLastAllDrawn:Z

    if-ne v0, v1, :cond_7

    .line 1450
    return-void

    .line 1453
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mLastAllDrawn:Z

    .line 1454
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-nez v0, :cond_10

    .line 1455
    return-void

    .line 1459
    :cond_10
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mFreezingScreen:Z

    if-eqz v0, :cond_23

    .line 1460
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->showAllWindowsLocked()V

    .line 1461
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/AppWindowToken;->stopFreezingScreen(ZZ)V

    .line 1466
    const/4 v0, 0x4

    const-string v1, "checkAppWindowsReadyToShow: freezingScreen"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/AppWindowToken;->setAppLayoutChanges(ILjava/lang/String;)V

    goto :goto_37

    .line 1469
    :cond_23
    const/16 v0, 0x8

    const-string v1, "checkAppWindowsReadyToShow"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/AppWindowToken;->setAppLayoutChanges(ILjava/lang/String;)V

    .line 1472
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 1473
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->showAllWindowsLocked()V

    .line 1476
    :cond_37
    :goto_37
    return-void
.end method

.method checkCompleteDeferredRemoval()Z
    .registers 2

    .line 659
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    if-eqz v0, :cond_7

    .line 660
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->removeIfPossible()V

    .line 662
    :cond_7
    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->checkCompleteDeferredRemoval()Z

    move-result v0

    return v0
.end method

.method checkKeyguardFlagsChanged()V
    .registers 5

    .line 1731
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->containsDismissKeyguardWindow()Z

    move-result v0

    .line 1732
    .local v0, "containsDismissKeyguard":Z
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->containsShowWhenLockedWindow()Z

    move-result v1

    .line 1733
    .local v1, "containsShowWhenLocked":Z
    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->mLastContainsDismissKeyguardWindow:Z

    if-ne v0, v2, :cond_10

    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->mLastContainsShowWhenLockedWindow:Z

    if-eq v1, v2, :cond_16

    .line 1735
    :cond_10
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->notifyKeyguardFlagsChanged(Ljava/lang/Runnable;)V

    .line 1737
    :cond_16
    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mLastContainsDismissKeyguardWindow:Z

    .line 1738
    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mLastContainsShowWhenLockedWindow:Z

    .line 1739
    return-void
.end method

.method clearAllDrawn()V
    .registers 2

    .line 814
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 815
    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->deferClearAllDrawn:Z

    .line 816
    return-void
.end method

.method clearAnimatingFlags()V
    .registers 5

    .line 745
    const/4 v0, 0x0

    .line 746
    .local v0, "wallpaperMightChange":Z
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_1b

    .line 747
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 748
    .local v2, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->clearAnimatingFlags()Z

    move-result v3

    or-int/2addr v0, v3

    .line 746
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 750
    .end local v1    # "i":I
    :cond_1b
    if-eqz v0, :cond_20

    .line 751
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->requestUpdateWallpaperIfNeeded()V

    .line 753
    :cond_20
    return-void
.end method

.method clearMiuiThumbnailAnimation()V
    .registers 1

    .line 2477
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->clearThumbnail()V

    .line 2478
    return-void
.end method

.method clearRelaunching()V
    .registers 2

    .line 1007
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    if-nez v0, :cond_5

    .line 1008
    return-void

    .line 1010
    :cond_5
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->unfreezeBounds()V

    .line 1011
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    .line 1012
    return-void
.end method

.method clearWillReplaceWindows()V
    .registers 3

    .line 939
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 940
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 941
    .local v1, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->clearWillReplaceWindow()V

    .line 939
    .end local v1    # "w":Lcom/android/server/wm/WindowState;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 943
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method containsDismissKeyguardWindow()Z
    .registers 5

    .line 1701
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isRelaunching()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1702
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mLastContainsDismissKeyguardWindow:Z

    return v0

    .line 1705
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_11
    if-ltz v0, :cond_28

    .line 1706
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x400000

    and-int/2addr v2, v3

    if-eqz v2, :cond_25

    .line 1707
    return v1

    .line 1705
    :cond_25
    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    .line 1710
    .end local v0    # "i":I
    :cond_28
    const/4 v0, 0x0

    return v0
.end method

.method containsShowWhenLockedWindow()Z
    .registers 5

    .line 1717
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isRelaunching()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1718
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mLastContainsShowWhenLockedWindow:Z

    return v0

    .line 1721
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_11
    if-ltz v0, :cond_28

    .line 1722
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x80000

    and-int/2addr v2, v3

    if-eqz v2, :cond_25

    .line 1723
    return v1

    .line 1721
    :cond_25
    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    .line 1727
    .end local v0    # "i":I
    :cond_28
    const/4 v0, 0x0

    return v0
.end method

.method destroySurfaces()V
    .registers 2

    .line 756
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/AppWindowToken;->destroySurfaces(Z)V

    .line 757
    return-void
.end method

.method detachChildren()V
    .registers 4

    .line 987
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 988
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_b
    if-ltz v0, :cond_1d

    .line 989
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 990
    .local v1, "w":Lcom/android/server/wm/WindowState;
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateAnimator;->detachChildren()V

    .line 988
    .end local v1    # "w":Lcom/android/server/wm/WindowState;
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 992
    .end local v0    # "i":I
    :cond_1d
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 993
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    .line 2270
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 2271
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-eqz v0, :cond_20

    .line 2272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "app=true mVoiceInteraction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mVoiceInteraction:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2274
    :cond_20
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "task="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2275
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mFillsParent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mFillsParent:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2276
    const-string v0, " mOrientation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mOrientation:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "hiddenRequested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mClientHidden="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mClientHidden:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2278
    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mDeferHidingClient:Z

    if-eqz v1, :cond_7b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mDeferHidingClient="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->mDeferHidingClient:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_7d

    :cond_7b
    const-string v1, ""

    :goto_7d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " reportedDrawn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->reportedDrawn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " reportedVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2277
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2280
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->paused:Z

    if-eqz v0, :cond_ad

    .line 2281
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "paused="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->paused:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2283
    :cond_ad
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mAppStopped:Z

    if-eqz v0, :cond_bf

    .line 2284
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAppStopped="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mAppStopped:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2286
    :cond_bf
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mNumInterestingWindows:I

    if-nez v0, :cond_cf

    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mNumDrawnWindows:I

    if-nez v0, :cond_cf

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-nez v0, :cond_cf

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mLastAllDrawn:Z

    if-eqz v0, :cond_114

    .line 2288
    :cond_cf
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNumInterestingWindows="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2289
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mNumInterestingWindows:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2290
    const-string v0, " mNumDrawnWindows="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mNumDrawnWindows:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2291
    const-string v0, " inPendingTransaction="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2292
    const-string v0, " allDrawn="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2293
    const-string v0, " lastAllDrawn="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mLastAllDrawn:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2294
    const-string v0, " isCastMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->isCastMode:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2295
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2297
    :cond_114
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    if-eqz v0, :cond_125

    .line 2298
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "inPendingTransaction="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2299
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2301
    :cond_125
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    if-nez v0, :cond_135

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->removed:Z

    if-nez v0, :cond_135

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    if-nez v0, :cond_135

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    if-eqz v0, :cond_161

    .line 2302
    :cond_135
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "startingData="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2303
    const-string v0, " removed="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->removed:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2304
    const-string v0, " firstWindowDrawn="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2305
    const-string v0, " mIsExiting="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2307
    :cond_161
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_175

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    if-nez v0, :cond_175

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    if-nez v0, :cond_175

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    if-nez v0, :cond_175

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mHiddenSetFromTransferredStartingWindow:Z

    if-eqz v0, :cond_1b7

    .line 2309
    :cond_175
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "startingWindow="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2310
    const-string v0, " startingSurface="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2311
    const-string v0, " startingDisplayed="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2312
    const-string v0, " startingMoved="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mHiddenSetFromTransferredStartingWindow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mHiddenSetFromTransferredStartingWindow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2316
    :cond_1b7
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenBounds:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1db

    .line 2317
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFrozenBounds="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenBounds:Ljava/util/ArrayDeque;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2318
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFrozenMergedConfig="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenMergedConfig:Ljava/util/ArrayDeque;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2320
    :cond_1db
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    if-eqz v0, :cond_1ed

    .line 2321
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPendingRelaunchCount="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2323
    :cond_1ed
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v0

    if-eqz v0, :cond_202

    .line 2324
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "controller="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2326
    :cond_202
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mRemovingFromDisplay:Z

    if-eqz v0, :cond_220

    .line 2327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mRemovingFromDisplay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mRemovingFromDisplay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2331
    :cond_220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mMiuiConfigFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/AppWindowToken;->mMiuiConfigFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2332
    return-void
.end method

.method fillsParent()Z
    .registers 2

    .line 1691
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mFillsParent:Z

    return v0
.end method

.method findMainWindow()Lcom/android/server/wm/WindowState;
    .registers 2

    .line 587
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    return-object v0
.end method

.method findMainWindow(Z)Lcom/android/server/wm/WindowState;
    .registers 8
    .param p1, "includeStartingApp"    # Z

    .line 598
    const/4 v0, 0x0

    .line 599
    .local v0, "candidate":Lcom/android/server/wm/WindowState;
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "j":I
    :goto_9
    if-ltz v1, :cond_27

    .line 600
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 601
    .local v3, "win":Lcom/android/server/wm/WindowState;
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 604
    .local v4, "type":I
    if-eq v4, v2, :cond_1e

    if-eqz p1, :cond_23

    const/4 v5, 0x3

    if-ne v4, v5, :cond_23

    .line 609
    :cond_1e
    iget-boolean v5, v3, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v5, :cond_26

    .line 610
    move-object v0, v3

    .line 599
    .end local v3    # "win":Lcom/android/server/wm/WindowState;
    .end local v4    # "type":I
    :cond_23
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 612
    .restart local v3    # "win":Lcom/android/server/wm/WindowState;
    .restart local v4    # "type":I
    :cond_26
    return-object v3

    .line 616
    .end local v1    # "j":I
    .end local v3    # "win":Lcom/android/server/wm/WindowState;
    .end local v4    # "type":I
    :cond_27
    return-object v0
.end method

.method finishRelaunching()V
    .registers 2

    .line 996
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->unfreezeBounds()V

    .line 998
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    if-lez v0, :cond_e

    .line 999
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    goto :goto_11

    .line 1002
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->checkKeyguardFlagsChanged()V

    .line 1004
    :goto_11
    return-void
.end method

.method forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .registers 4
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;Z)Z"
        }
    .end annotation

    .line 1672
    .local p1, "callback":Lcom/android/internal/util/ToBooleanFunction;, "Lcom/android/internal/util/ToBooleanFunction<Lcom/android/server/wm/WindowState;>;"
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->waitingForReplacement()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1673
    const/4 v0, 0x0

    return v0

    .line 1675
    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/AppWindowToken;->forAllWindowsUnchecked(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v0

    return v0
.end method

.method forAllWindowsUnchecked(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .registers 4
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;Z)Z"
        }
    .end annotation

    .line 1680
    .local p1, "callback":Lcom/android/internal/util/ToBooleanFunction;, "Lcom/android/internal/util/ToBooleanFunction<Lcom/android/server/wm/WindowState;>;"
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowToken;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v0

    return v0
.end method

.method public getAnimationLeashParent()Landroid/view/SurfaceControl;
    .registers 2

    .line 1831
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getAppAnimationLayer()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method getAppAnimationLayer()Landroid/view/SurfaceControl;
    .registers 2

    .line 1817
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->inPinnedWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x3

    goto :goto_19

    .line 1818
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x2

    goto :goto_19

    .line 1819
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->needsZBoost()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    .line 1820
    :cond_18
    const/4 v0, 0x0

    .line 1817
    :goto_19
    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppWindowToken;->getAppAnimationLayer(I)Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method getController()Lcom/android/server/wm/AppWindowContainerController;
    .registers 3

    .line 624
    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->getController()Lcom/android/server/wm/WindowContainerController;

    move-result-object v0

    .line 625
    .local v0, "controller":Lcom/android/server/wm/WindowContainerController;
    if-eqz v0, :cond_a

    move-object v1, v0

    check-cast v1, Lcom/android/server/wm/AppWindowContainerController;

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return-object v1
.end method

.method bridge synthetic getController()Lcom/android/server/wm/WindowContainerController;
    .registers 2

    .line 142
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v0

    return-object v0
.end method

.method getHighestAnimLayerWindow(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowState;
    .registers 7
    .param p1, "currentTarget"    # Lcom/android/server/wm/WindowState;

    .line 1764
    const/4 v0, 0x0

    .line 1765
    .local v0, "candidate":Lcom/android/server/wm/WindowState;
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .local v1, "i":I
    :goto_7
    if-ltz v1, :cond_26

    .line 1766
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 1767
    .local v2, "w":Lcom/android/server/wm/WindowState;
    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-eqz v3, :cond_16

    .line 1768
    goto :goto_23

    .line 1770
    :cond_16
    if-eqz v0, :cond_22

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-le v3, v4, :cond_23

    .line 1772
    :cond_22
    move-object v0, v2

    .line 1765
    .end local v2    # "w":Lcom/android/server/wm/WindowState;
    :cond_23
    :goto_23
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 1775
    .end local v1    # "i":I
    :cond_26
    return-object v0
.end method

.method getImeTargetBelowWindow(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowState;
    .registers 5
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 1742
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1743
    .local v0, "index":I
    if-lez v0, :cond_19

    .line 1744
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 1745
    .local v1, "target":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->canBeImeTarget()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1746
    return-object v1

    .line 1749
    .end local v1    # "target":Lcom/android/server/wm/WindowState;
    :cond_19
    const/4 v1, 0x0

    return-object v1
.end method

.method getLetterboxInsets()Landroid/graphics/Rect;
    .registers 2

    .line 2443
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-eqz v0, :cond_b

    .line 2444
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mLetterbox:Lcom/android/server/wm/Letterbox;

    invoke-virtual {v0}, Lcom/android/server/wm/Letterbox;->getInsets()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    .line 2446
    :cond_b
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    return-object v0
.end method

.method getLowestAnimLayer()I
    .registers 4

    .line 1753
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 1754
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 1755
    .local v1, "w":Lcom/android/server/wm/WindowState;
    iget-boolean v2, v1, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-eqz v2, :cond_19

    .line 1756
    nop

    .line 1753
    .end local v1    # "w":Lcom/android/server/wm/WindowState;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1758
    .restart local v1    # "w":Lcom/android/server/wm/WindowState;
    :cond_19
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    return v2

    .line 1760
    .end local v0    # "i":I
    .end local v1    # "w":Lcom/android/server/wm/WindowState;
    :cond_1e
    const v0, 0x7fffffff

    return v0
.end method

.method getOrientation(I)I
    .registers 10
    .param p1, "candidate"    # I

    .line 1360
    const/4 v0, 0x3

    if-ne p1, v0, :cond_10

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_10

    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mIsDummyVisible:Z

    if-nez v1, :cond_10

    .line 1364
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mOrientation:I

    return v0

    .line 1373
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 1374
    .local v1, "task":Lcom/android/server/wm/Task;
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 1375
    .local v2, "displayContent":Lcom/android/server/wm/DisplayContent;
    const/4 v3, 0x0

    .line 1376
    .local v3, "fullscreenTaskInMultiWindow":Z
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_36

    if-eqz v2, :cond_36

    .line 1377
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->inMultiWindowMode()Z

    move-result v6

    if-nez v6, :cond_34

    .line 1378
    invoke-virtual {v2, v0}, Lcom/android/server/wm/DisplayContent;->isStackVisible(I)Z

    move-result v6

    if-nez v6, :cond_32

    const/4 v6, 0x5

    .line 1379
    invoke-virtual {v2, v6}, Lcom/android/server/wm/DisplayContent;->isStackVisible(I)Z

    move-result v6

    if-eqz v6, :cond_34

    :cond_32
    move v6, v5

    goto :goto_35

    :cond_34
    move v6, v4

    :goto_35
    move v3, v6

    .line 1383
    :cond_36
    iget-boolean v6, p0, Lcom/android/server/wm/AppWindowToken;->isCastMode:Z

    if-eqz v6, :cond_5e

    iget-object v6, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->getCastMode()Z

    move-result v6

    if-eqz v6, :cond_5e

    .line 1384
    iget-object v6, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v6, v6, Lcom/android/server/wm/WindowManagerService;->mCastRotation:I

    if-eqz v6, :cond_5d

    iget-object v6, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v6, v6, Lcom/android/server/wm/WindowManagerService;->mCastRotation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_50

    goto :goto_5d

    .line 1386
    :cond_50
    iget-object v6, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v6, v6, Lcom/android/server/wm/WindowManagerService;->mCastRotation:I

    if-eq v6, v5, :cond_5c

    iget-object v5, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v5, v5, Lcom/android/server/wm/WindowManagerService;->mCastRotation:I

    if-ne v5, v0, :cond_5e

    .line 1387
    :cond_5c
    return v4

    .line 1385
    :cond_5d
    :goto_5d
    return v5

    .line 1392
    :cond_5e
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->sendingToBottom:Z

    if-nez v0, :cond_6c

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    :cond_6c
    if-eqz v3, :cond_8f

    .line 1394
    :cond_6e
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_78

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mIsDummyVisible:Z

    if-eqz v0, :cond_88

    :cond_78
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    .line 1395
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_88

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isOnTop()Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 1399
    :cond_88
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mOrientation:I

    invoke-static {p0, v0}, Lcom/android/server/wm/WindowManagerServiceInjector;->getForceOrientation(Lcom/android/server/wm/AppWindowToken;I)I

    move-result v0

    return v0

    .line 1402
    :cond_8f
    const/4 v0, -0x2

    return v0
.end method

.method getOrientationIgnoreVisibility()I
    .registers 2

    .line 1407
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mOrientation:I

    return v0
.end method

.method getRemoteAnimationDefinition()Landroid/view/RemoteAnimationDefinition;
    .registers 2

    .line 2265
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

    return-object v0
.end method

.method getStack()Lcom/android/server/wm/TaskStack;
    .registers 3

    .line 823
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 824
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_9

    .line 825
    iget-object v1, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    return-object v1

    .line 827
    :cond_9
    const/4 v1, 0x0

    return-object v1
.end method

.method getTask()Lcom/android/server/wm/Task;
    .registers 2

    .line 819
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    return-object v0
.end method

.method getTopFullscreenWindow()Lcom/android/server/wm/WindowState;
    .registers 4

    .line 577
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_20

    .line 578
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 579
    .local v1, "win":Lcom/android/server/wm/WindowState;
    if-eqz v1, :cond_1d

    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 580
    return-object v1

    .line 577
    .end local v1    # "win":Lcom/android/server/wm/WindowState;
    :cond_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 583
    .end local v0    # "i":I
    :cond_20
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransit()I
    .registers 2

    .line 2160
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mTransit:I

    return v0
.end method

.method getTransitFlags()I
    .registers 2

    .line 2164
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mTransitFlags:I

    return v0
.end method

.method hasWindowsAlive()Z
    .registers 4

    .line 906
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1a

    .line 909
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowState;->mAppDied:Z

    if-nez v2, :cond_17

    .line 910
    return v1

    .line 906
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 913
    .end local v0    # "i":I
    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method isAppAnimating()Z
    .registers 2

    .line 2130
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isSelfAnimating()Z

    move-result v0

    return v0
.end method

.method isClientHidden()Z
    .registers 2

    .line 407
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mClientHidden:Z

    return v0
.end method

.method isClosingOrEnteringPip()Z
    .registers 2

    .line 2472
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v0, :cond_e

    :cond_a
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mWillCloseOrEnterPip:Z

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method protected isFirstChildWindowGreaterThanSecond(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)Z
    .registers 8
    .param p1, "newWindow"    # Lcom/android/server/wm/WindowState;
    .param p2, "existingWindow"    # Lcom/android/server/wm/WindowState;

    .line 1021
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1022
    .local v0, "type1":I
    iget-object v1, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1025
    .local v1, "type2":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_f

    if-eq v1, v3, :cond_f

    .line 1026
    return v2

    .line 1027
    :cond_f
    if-eq v0, v3, :cond_14

    if-ne v1, v3, :cond_14

    .line 1028
    return v3

    .line 1032
    :cond_14
    const/4 v4, 0x3

    if-ne v0, v4, :cond_1a

    if-eq v1, v4, :cond_1a

    .line 1033
    return v3

    .line 1034
    :cond_1a
    if-eq v0, v4, :cond_1f

    if-ne v1, v4, :cond_1f

    .line 1035
    return v2

    .line 1039
    :cond_1f
    return v3
.end method

.method isFreezingScreen()Z
    .registers 2

    .line 2373
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mFreezingScreen:Z

    return v0
.end method

.method isLastWindow(Lcom/android/server/wm/WindowState;)Z
    .registers 5
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 1344
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_14

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_14

    move v1, v2

    nop

    :cond_14
    return v1
.end method

.method isLetterboxOverlappingWith(Landroid/graphics/Rect;)Z
    .registers 3
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 2455
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mLetterbox:Lcom/android/server/wm/Letterbox;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/Letterbox;->isOverlappingWith(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method isRelaunching()Z
    .registers 2

    .line 953
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method isSelfAnimating()Z
    .registers 2

    .line 2136
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isWaitingForTransitionStart()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->isReallyAnimating()Z

    move-result v0

    if-eqz v0, :cond_d

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

.method isSurfaceShowing()Z
    .registers 2

    .line 2369
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mLastSurfaceShowing:Z

    return v0
.end method

.method isVisible()Z
    .registers 2

    .line 632
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method isWaitingForTransitionStart()Z
    .registers 2

    .line 2155
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    .line 2156
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_1e
    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    .line 2155
    :goto_21
    return v0
.end method

.method layoutLetterbox(Lcom/android/server/wm/WindowState;)V
    .registers 12
    .param p1, "winHint"    # Lcom/android/server/wm/WindowState;

    .line 1605
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 1606
    .local v0, "w":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_b3

    if-eqz p1, :cond_c

    if-eq v0, p1, :cond_c

    goto/16 :goto_b3

    .line 1609
    :cond_c
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_23

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    if-nez v1, :cond_23

    .line 1611
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isDragResizeChanged()Z

    move-result v1

    if-eqz v1, :cond_21

    goto :goto_23

    :cond_21
    move v1, v3

    goto :goto_24

    :cond_23
    :goto_23
    move v1, v2

    .line 1612
    .local v1, "surfaceReady":Z
    :goto_24
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isLetterboxedAppWindow()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->fillsParent()Z

    move-result v4

    if-eqz v4, :cond_33

    if-eqz v1, :cond_33

    goto :goto_34

    :cond_33
    move v2, v3

    .line 1613
    .local v2, "needsLetterbox":Z
    :goto_34
    if-eqz v2, :cond_a9

    .line 1614
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-nez v4, :cond_46

    .line 1615
    new-instance v4, Lcom/android/server/wm/Letterbox;

    new-instance v5, Lcom/android/server/wm/-$$Lambda$AppWindowToken$clD7LvtE6cPZl3BRlaGuoR17rP4;

    invoke-direct {v5, p0}, Lcom/android/server/wm/-$$Lambda$AppWindowToken$clD7LvtE6cPZl3BRlaGuoR17rP4;-><init>(Lcom/android/server/wm/AppWindowToken;)V

    invoke-direct {v4, v5}, Lcom/android/server/wm/Letterbox;-><init>(Ljava/util/function/Supplier;)V

    iput-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mLetterbox:Lcom/android/server/wm/Letterbox;

    .line 1622
    :cond_46
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 1623
    .local v4, "newBounds":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v5, :cond_a1

    iget-object v5, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 1624
    invoke-virtual {v5, v3}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v3

    if-eqz v3, :cond_a1

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1625
    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a1

    .line 1626
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-lt v3, v5, :cond_82

    .line 1627
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-ge v3, v5, :cond_a1

    .line 1628
    :cond_82
    new-instance v3, Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    .line 1629
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget v8, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v8

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v8

    iget v9, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v9

    invoke-direct {v3, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1630
    .local v3, "oldBounds":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/server/wm/AppWindowToken;->mLetterbox:Lcom/android/server/wm/Letterbox;

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v5, v3, v6}, Lcom/android/server/wm/Letterbox;->layout(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1631
    .end local v3    # "oldBounds":Landroid/graphics/Rect;
    goto :goto_a8

    .line 1632
    :cond_a1
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mLetterbox:Lcom/android/server/wm/Letterbox;

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/Letterbox;->layout(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1635
    .end local v4    # "newBounds":Landroid/graphics/Rect;
    :goto_a8
    goto :goto_b2

    :cond_a9
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-eqz v3, :cond_b2

    .line 1636
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mLetterbox:Lcom/android/server/wm/Letterbox;

    invoke-virtual {v3}, Lcom/android/server/wm/Letterbox;->hide()V

    .line 1638
    :cond_b2
    :goto_b2
    return-void

    .line 1607
    .end local v1    # "surfaceReady":Z
    .end local v2    # "needsLetterbox":Z
    :cond_b3
    :goto_b3
    return-void
.end method

.method needsZBoost()Z
    .registers 2

    .line 2378
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mNeedsZBoost:Z

    if-nez v0, :cond_d

    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->needsZBoost()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method notifyAppResumed(Z)V
    .registers 3
    .param p1, "wasStopped"    # Z

    .line 791
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mAppStopped:Z

    .line 793
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppWindowToken;->setCanTurnScreenOn(Z)V

    .line 794
    if-nez p1, :cond_c

    .line 795
    invoke-direct {p0, v0}, Lcom/android/server/wm/AppWindowToken;->destroySurfaces(Z)V

    .line 797
    :cond_c
    return-void
.end method

.method notifyAppStopped()V
    .registers 2

    .line 805
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mAppStopped:Z

    .line 806
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->destroySurfaces()V

    .line 808
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 809
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowContainerController;->removeStartingWindow()V

    .line 811
    :cond_13
    return-void
.end method

.method protected onAnimationFinished()V
    .registers 4

    .line 2080
    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->onAnimationFinished()V

    .line 2082
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/AppWindowToken;->mTransit:I

    .line 2083
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/AppWindowToken;->mTransitFlags:I

    .line 2084
    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mNeedsZBoost:Z

    .line 2086
    const-string v1, "AppWindowToken"

    const/16 v2, 0xc

    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/AppWindowToken;->setAppLayoutChanges(ILjava/lang/String;)V

    .line 2089
    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v1, :cond_1b

    .line 2090
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mPendingTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/AppWindowToken;->resetRoundCornerForAppTransition(Landroid/view/SurfaceControl$Transaction;)V

    .line 2092
    :cond_1b
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->clearThumbnail()V

    .line 2093
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2b

    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v1, :cond_2b

    move v1, v2

    goto :goto_2c

    :cond_2b
    move v1, v0

    :goto_2c
    invoke-virtual {p0, v1}, Lcom/android/server/wm/AppWindowToken;->setClientHidden(Z)V

    .line 2095
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_44

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-ne v1, p0, :cond_44

    .line 2096
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    .line 2107
    :cond_44
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2109
    .local v1, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->mIsDummyAnimating:Z

    if-eqz v2, :cond_60

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mMiuiGestureController:Lcom/android/server/wm/MiuiGestureController;

    invoke-virtual {v2}, Lcom/android/server/wm/MiuiGestureController;->isGestureRunning()Z

    move-result v2

    if-nez v2, :cond_60

    .line 2110
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mMiuiGestureController:Lcom/android/server/wm/MiuiGestureController;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/MiuiGestureController;->setKeepWallpaperShowing(Z)V

    .line 2112
    :cond_60
    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mIsDummyAnimating:Z

    .line 2114
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mIsDummyVisible:Z

    if-eqz v0, :cond_6b

    .line 2115
    sget-object v0, Lcom/android/server/wm/-$$Lambda$AppWindowToken$hpU5mVsr8VtXkFw3u_Jfq_dHbWI;->INSTANCE:Lcom/android/server/wm/-$$Lambda$AppWindowToken$hpU5mVsr8VtXkFw3u_Jfq_dHbWI;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 2122
    :cond_6b
    sget-object v0, Lcom/android/server/wm/-$$Lambda$01bPtngJg5AqEoOWfW3rWfV7MH4;->INSTANCE:Lcom/android/server/wm/-$$Lambda$01bPtngJg5AqEoOWfW3rWfV7MH4;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 2124
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionFinishedLocked(Landroid/os/IBinder;)V

    .line 2125
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->scheduleAnimation()V

    .line 2126
    return-void
.end method

.method public onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 6
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "leash"    # Landroid/view/SurfaceControl;

    .line 2044
    const/4 v0, 0x0

    .line 2047
    .local v0, "layer":I
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getPrefixOrderIndex()I

    move-result v0

    .line 2056
    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mNeedsZBoost:Z

    if-eqz v1, :cond_d

    .line 2057
    const v1, 0x2fb7ba90

    add-int/2addr v0, v1

    .line 2059
    :cond_d
    invoke-virtual {p2, v0}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 2061
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 2062
    .local v1, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->assignStackOrdering()V

    .line 2063
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mAnimatingAppWindowTokenRegistry:Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;

    if-eqz v2, :cond_20

    .line 2064
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mAnimatingAppWindowTokenRegistry:Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;

    invoke-virtual {v2, p0}, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->notifyStarting(Lcom/android/server/wm/AppWindowToken;)V

    .line 2066
    :cond_20
    return-void
.end method

.method public onAnimationLeashDestroyed(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 2013
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowToken;->onAnimationLeashDestroyed(Landroid/view/SurfaceControl$Transaction;)V

    .line 2014
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mAnimatingAppWindowTokenRegistry:Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;

    if-eqz v0, :cond_c

    .line 2015
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mAnimatingAppWindowTokenRegistry:Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->notifyFinished(Lcom/android/server/wm/AppWindowToken;)V

    .line 2017
    :cond_c
    return-void
.end method

.method public onAppFreezeTimeout()V
    .registers 4

    .line 1223
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Force clearing freeze: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/AppWindowToken;->stopFreezingScreen(ZZ)V

    .line 1225
    return-void
.end method

.method onAppTransitionDone()V
    .registers 2

    .line 1349
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->sendingToBottom:Z

    .line 1350
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 7
    .param p1, "newParentConfig"    # Landroid/content/res/Configuration;

    .line 1412
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getWindowingMode()I

    move-result v0

    .line 1413
    .local v0, "prevWinMode":I
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowToken;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1414
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getWindowingMode()I

    move-result v1

    .line 1416
    .local v1, "winMode":I
    if-ne v0, v1, :cond_e

    .line 1417
    return-void

    .line 1420
    :cond_e
    const/4 v2, 0x2

    if-eqz v0, :cond_1b

    if-ne v1, v2, :cond_1b

    .line 1422
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

    invoke-virtual {v2, p0}, Lcom/android/server/wm/PinnedStackController;->resetReentrySnapFraction(Lcom/android/server/wm/AppWindowToken;)V

    goto :goto_42

    .line 1423
    :cond_1b
    if-ne v0, v2, :cond_42

    if-eqz v1, :cond_42

    .line 1424
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v2

    if-nez v2, :cond_42

    .line 1427
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getPinnedStack()Lcom/android/server/wm/TaskStack;

    move-result-object v2

    .line 1428
    .local v2, "pinnedStack":Lcom/android/server/wm/TaskStack;
    if-eqz v2, :cond_42

    .line 1430
    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->lastAnimatingBoundsWasToFullscreen()Z

    move-result v3

    if-eqz v3, :cond_36

    .line 1433
    iget-object v3, v2, Lcom/android/server/wm/TaskStack;->mPreAnimationBounds:Landroid/graphics/Rect;

    .local v3, "stackBounds":Landroid/graphics/Rect;
    goto :goto_3b

    .line 1438
    .end local v3    # "stackBounds":Landroid/graphics/Rect;
    :cond_36
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mTmpRect:Landroid/graphics/Rect;

    .line 1439
    .restart local v3    # "stackBounds":Landroid/graphics/Rect;
    invoke-virtual {v2, v3}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    .line 1441
    :goto_3b
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

    invoke-virtual {v4, p0, v3}, Lcom/android/server/wm/PinnedStackController;->saveReentrySnapFraction(Lcom/android/server/wm/AppWindowToken;Landroid/graphics/Rect;)V

    .line 1445
    .end local v2    # "pinnedStack":Lcom/android/server/wm/TaskStack;
    .end local v3    # "stackBounds":Landroid/graphics/Rect;
    :cond_42
    :goto_42
    return-void
.end method

.method onFirstWindowDrawn(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowStateAnimator;)V
    .registers 4
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "winAnimator"    # Lcom/android/server/wm/WindowStateAnimator;

    .line 331
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    .line 334
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->removeDeadWindows()V

    .line 336
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1a

    .line 342
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->cancelAnimation()V

    .line 343
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 344
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowContainerController;->removeStartingWindow()V

    .line 347
    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 348
    return-void
.end method

.method onParentSet()V
    .registers 4

    .line 833
    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->onParentSet()V

    .line 835
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 840
    .local v0, "task":Lcom/android/server/wm/Task;
    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mReparenting:Z

    if-nez v1, :cond_26

    .line 841
    if-nez v0, :cond_15

    .line 844
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_26

    .line 845
    :cond_15
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mLastParent:Lcom/android/server/wm/Task;

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mLastParent:Lcom/android/server/wm/Task;

    iget-object v1, v1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_26

    .line 846
    iget-object v1, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v1, v1, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/AppTokenList;->remove(Ljava/lang/Object;)Z

    .line 849
    :cond_26
    :goto_26
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    .line 852
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mAnimatingAppWindowTokenRegistry:Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;

    if-eqz v2, :cond_33

    .line 853
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mAnimatingAppWindowTokenRegistry:Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;

    invoke-virtual {v2, p0}, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->notifyFinished(Lcom/android/server/wm/AppWindowToken;)V

    .line 855
    :cond_33
    if-eqz v1, :cond_3a

    .line 856
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getAnimatingAppWindowTokenRegistry()Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;

    move-result-object v2

    goto :goto_3b

    .line 857
    :cond_3a
    const/4 v2, 0x0

    :goto_3b
    iput-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mAnimatingAppWindowTokenRegistry:Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;

    .line 859
    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mLastParent:Lcom/android/server/wm/Task;

    .line 860
    return-void
.end method

.method onRemovedFromDisplay()V
    .registers 8

    .line 666
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mRemovingFromDisplay:Z

    if-eqz v0, :cond_5

    .line 667
    return-void

    .line 669
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mRemovingFromDisplay:Z

    .line 673
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    iget-boolean v6, p0, Lcom/android/server/wm/AppWindowToken;->mVoiceInteraction:Z

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/AppWindowToken;->setVisibility(Landroid/view/WindowManager$LayoutParams;ZIZZ)Z

    move-result v1

    .line 675
    .local v1, "delayed":Z
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v2, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 677
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDummyVisibleApp:Lcom/android/server/wm/AppWindowToken;

    const/4 v3, 0x0

    if-ne v2, p0, :cond_25

    .line 678
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mDummyVisibleApp:Lcom/android/server/wm/AppWindowToken;

    .line 681
    :cond_25
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v2, p0}, Lcom/android/server/wm/UnknownAppVisibilityController;->appRemovedOrHidden(Lcom/android/server/wm/AppWindowToken;)V

    .line 682
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v2, p0}, Lcom/android/server/wm/TaskSnapshotController;->onAppRemoved(Lcom/android/server/wm/AppWindowToken;)V

    .line 683
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->waitingToShow:Z

    .line 684
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v4, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 685
    const/4 v1, 0x1

    goto :goto_54

    .line 686
    :cond_42
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v4}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v4

    if-eqz v4, :cond_54

    .line 687
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v4, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 688
    const/4 v1, 0x1

    .line 697
    :cond_54
    :goto_54
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    if-eqz v4, :cond_65

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v4

    if-eqz v4, :cond_65

    .line 698
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowContainerController;->removeStartingWindow()V

    .line 704
    :cond_65
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isSelfAnimating()Z

    move-result v4

    if-eqz v4, :cond_74

    .line 705
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    iget-object v5, p0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 708
    :cond_74
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v4

    .line 709
    .local v4, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v1, :cond_8a

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8a

    .line 713
    if-eqz v4, :cond_87

    .line 714
    iget-object v5, v4, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v5, p0}, Lcom/android/server/wm/AppTokenList;->add(Ljava/lang/Object;)Z

    .line 716
    :cond_87
    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    goto :goto_97

    .line 720
    :cond_8a
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->cancelAnimation()V

    .line 721
    if-eqz v4, :cond_94

    .line 722
    iget-object v5, v4, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v5, p0}, Lcom/android/server/wm/AppTokenList;->remove(Ljava/lang/Object;)Z

    .line 724
    :cond_94
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->removeIfPossible()V

    .line 727
    :goto_97
    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->removed:Z

    .line 728
    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/AppWindowToken;->stopFreezingScreen(ZZ)V

    .line 730
    iget-object v5, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-ne v5, p0, :cond_b2

    .line 732
    iget-object v5, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object v3, v5, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    .line 733
    iget-object v5, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5, v2, v0}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 734
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/InputMonitor;->setFocusedAppLw(Lcom/android/server/wm/AppWindowToken;)V

    .line 737
    :cond_b2
    if-nez v1, :cond_b7

    .line 738
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 741
    :cond_b7
    iput-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->mRemovingFromDisplay:Z

    .line 742
    return-void
.end method

.method onWindowReplacementTimeout()V
    .registers 3

    .line 1077
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 1078
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->onWindowReplacementTimeout()V

    .line 1077
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1080
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method postWindowRemoveStartingWindowCleanup(Lcom/android/server/wm/WindowState;)V
    .registers 4
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 864
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_12

    .line 866
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 867
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowContainerController;->removeStartingWindow()V

    goto :goto_45

    .line 869
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_26

    .line 873
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    .line 874
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mHiddenSetFromTransferredStartingWindow:Z

    if-eqz v0, :cond_45

    .line 878
    invoke-virtual {p0, v1}, Lcom/android/server/wm/AppWindowToken;->setHidden(Z)V

    goto :goto_45

    .line 880
    :cond_26
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    if-ne v0, v1, :cond_45

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    if-eqz v0, :cond_45

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isRelaunching()Z

    move-result v0

    if-nez v0, :cond_45

    .line 885
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 886
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowContainerController;->removeStartingWindow()V

    .line 889
    :cond_45
    :goto_45
    return-void
.end method

.method prepareSurfaces()V
    .registers 5

    .line 2349
    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->isSelfAnimating()Z

    move-result v0

    .line 2350
    .local v0, "reallyAnimating":Z
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v1

    if-eqz v1, :cond_f

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v1, 0x1

    .line 2351
    .local v1, "show":Z
    :goto_10
    if-eqz v1, :cond_1e

    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->mLastSurfaceShowing:Z

    if-nez v2, :cond_1e

    .line 2352
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mPendingTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_33

    .line 2355
    :cond_1e
    if-nez v1, :cond_33

    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->mLastSurfaceShowing:Z

    if-eqz v2, :cond_33

    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->mHandleByGesture:Z

    if-nez v2, :cond_33

    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->isCastMode:Z

    if-nez v2, :cond_33

    .line 2356
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mPendingTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 2358
    :cond_33
    :goto_33
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mThumbnail:Lcom/android/server/wm/AppWindowThumbnail;

    if-eqz v2, :cond_3e

    .line 2359
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mThumbnail:Lcom/android/server/wm/AppWindowThumbnail;

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mPendingTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/AppWindowThumbnail;->setShowing(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 2361
    :cond_3e
    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mLastSurfaceShowing:Z

    .line 2362
    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->prepareSurfaces()V

    .line 2363
    return-void
.end method

.method registerRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V
    .registers 2
    .param p1, "definition"    # Landroid/view/RemoteAnimationDefinition;

    .line 2261
    iput-object p1, p0, Lcom/android/server/wm/AppWindowToken;->mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

    .line 2262
    return-void
.end method

.method bridge synthetic removeChild(Lcom/android/server/wm/WindowContainer;)V
    .registers 2

    .line 142
    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWindowToken;->removeChild(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method removeChild(Lcom/android/server/wm/WindowState;)V
    .registers 2
    .param p1, "child"    # Lcom/android/server/wm/WindowState;

    .line 1061
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowToken;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 1062
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->checkKeyguardFlagsChanged()V

    .line 1063
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWindowToken;->updateLetterboxSurface(Lcom/android/server/wm/WindowState;)V

    .line 1064
    return-void
.end method

.method removeDeadWindows()V
    .registers 5

    .line 892
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "winNdx":I
    :goto_8
    if-ltz v0, :cond_1e

    .line 893
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 894
    .local v2, "win":Lcom/android/server/wm/WindowState;
    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mAppDied:Z

    if-eqz v3, :cond_1b

    .line 898
    iput-boolean v1, v2, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 900
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->removeIfPossible()V

    .line 892
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 903
    .end local v0    # "winNdx":I
    :cond_1e
    return-void
.end method

.method removeIfPossible()V
    .registers 2

    .line 652
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    .line 653
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->removeAllWindowsIfPossible()V

    .line 654
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->removeImmediately()V

    .line 655
    return-void
.end method

.method removeImmediately()V
    .registers 6

    .line 637
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->onRemovedFromDisplay()V

    .line 638
    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->removeImmediately()V

    .line 640
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 641
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_29

    .line 642
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    .line 643
    .local v1, "displayId":I
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(I)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 644
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 648
    .end local v1    # "displayId":I
    :cond_29
    return-void
.end method

.method removeReplacedWindowIfNeeded(Lcom/android/server/wm/WindowState;)V
    .registers 5
    .param p1, "replacement"    # Lcom/android/server/wm/WindowState;

    .line 1164
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 1165
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 1166
    .local v1, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowState;->removeReplacedWindowIfNeeded(Lcom/android/server/wm/WindowState;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1167
    return-void

    .line 1164
    .end local v1    # "win":Lcom/android/server/wm/WindowState;
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1170
    .end local v0    # "i":I
    :cond_1c
    return-void
.end method

.method reparent(Lcom/android/server/wm/Task;I)V
    .registers 7
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "position"    # I

    .line 1083
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1084
    .local v0, "currentTask":Lcom/android/server/wm/Task;
    if-eq p1, v0, :cond_58

    .line 1089
    iget-object v1, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v2, p1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-ne v1, v2, :cond_30

    .line 1097
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 1099
    .local v1, "prevDisplayContent":Lcom/android/server/wm/DisplayContent;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->mReparenting:Z

    .line 1101
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 1102
    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/AppWindowToken;I)V

    .line 1104
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->mReparenting:Z

    .line 1107
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 1108
    .local v2, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 1109
    if-eq v1, v2, :cond_2f

    .line 1110
    invoke-virtual {p0, v2}, Lcom/android/server/wm/AppWindowToken;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 1111
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 1113
    :cond_2f
    return-void

    .line 1090
    .end local v1    # "prevDisplayContent":Lcom/android/server/wm/DisplayContent;
    .end local v2    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_30
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "window token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " current task="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " belongs to a different stack than "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1085
    :cond_58
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "window token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " already child of task="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected reparentSurfaceControl(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 5
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "newParent"    # Landroid/view/SurfaceControl;

    .line 2035
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->hasLeash()Z

    move-result v0

    if-nez v0, :cond_11

    .line 2036
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p2}, Landroid/view/SurfaceControl;->getHandle()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/os/IBinder;)Landroid/view/SurfaceControl$Transaction;

    .line 2038
    :cond_11
    return-void
.end method

.method requestUpdateWallpaperIfNeeded()V
    .registers 3

    .line 946
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 947
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 948
    .local v1, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->requestUpdateWallpaperIfNeeded()V

    .line 946
    .end local v1    # "w":Lcom/android/server/wm/WindowState;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 950
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method resetRoundCornerForAppTransition(Landroid/view/SurfaceControl$Transaction;)V
    .registers 7
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 2511
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mAppStopped:Z

    if-nez v0, :cond_5b

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    if-nez v0, :cond_5b

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->removed:Z

    if-eqz v0, :cond_d

    goto :goto_5b

    .line 2515
    :cond_d
    :try_start_d
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 2516
    .local v1, "w":Lcom/android/server/wm/WindowState;
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 2517
    .local v2, "surfaceController":Lcom/android/server/wm/WindowSurfaceController;
    iget-boolean v3, v1, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v3, :cond_3c

    iget-boolean v3, v1, Lcom/android/server/wm/WindowState;->mRoundCornerFlagChanged:Z

    if-eqz v3, :cond_3c

    if-eqz v2, :cond_3c

    .line 2518
    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfaceController;->hasSurface()Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 2519
    iget-object v3, v2, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 2520
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/server/wm/WindowState;->mRoundCornerFlagChanged:Z
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_3c} :catch_3e

    .line 2522
    .end local v1    # "w":Lcom/android/server/wm/WindowState;
    .end local v2    # "surfaceController":Lcom/android/server/wm/WindowSurfaceController;
    :cond_3c
    goto :goto_13

    .line 2527
    :cond_3d
    goto :goto_5a

    .line 2523
    :catch_3e
    move-exception v0

    .line 2525
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MiuiGestureStrategy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to reset round corner for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2526
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2528
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5a
    return-void

    .line 2512
    :cond_5b
    :goto_5b
    return-void
.end method

.method setAppLayoutChanges(ILjava/lang/String;)V
    .registers 5
    .param p1, "changes"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 1154
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 1155
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1156
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    iget v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/2addr v1, p1

    iput v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 1161
    .end local v0    # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_11
    return-void
.end method

.method setCanTurnScreenOn(Z)V
    .registers 2
    .param p1, "canTurnScreenOn"    # Z

    .line 1789
    iput-boolean p1, p0, Lcom/android/server/wm/AppWindowToken;->mCanTurnScreenOn:Z

    .line 1790
    return-void
.end method

.method setClientHidden(Z)V
    .registers 3
    .param p1, "hideClient"    # Z

    .line 411
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mClientHidden:Z

    if-eq v0, p1, :cond_11

    if-eqz p1, :cond_b

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mDeferHidingClient:Z

    if-eqz v0, :cond_b

    goto :goto_11

    .line 416
    :cond_b
    iput-boolean p1, p0, Lcom/android/server/wm/AppWindowToken;->mClientHidden:Z

    .line 417
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->sendAppVisibilityToClients()V

    .line 418
    return-void

    .line 412
    :cond_11
    :goto_11
    return-void
.end method

.method setDisablePreviewScreenshots(Z)V
    .registers 2
    .param p1, "disable"    # Z

    .line 1782
    iput-boolean p1, p0, Lcom/android/server/wm/AppWindowToken;->mDisablePreviewScreenshots:Z

    .line 1783
    return-void
.end method

.method setFillsParent(Z)V
    .registers 2
    .param p1, "fillsParent"    # Z

    .line 1695
    iput-boolean p1, p0, Lcom/android/server/wm/AppWindowToken;->mFillsParent:Z

    .line 1696
    return-void
.end method

.method setHidden(Z)V
    .registers 3
    .param p1, "hidden"    # Z

    .line 2336
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowToken;->setHidden(Z)V

    .line 2338
    if-eqz p1, :cond_c

    .line 2340
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/PinnedStackController;->resetReentrySnapFraction(Lcom/android/server/wm/AppWindowToken;)V

    .line 2342
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->scheduleAnimation()V

    .line 2343
    return-void
.end method

.method protected setLayer(Landroid/view/SurfaceControl$Transaction;I)V
    .registers 4
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "layer"    # I

    .line 2021
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->hasLeash()Z

    move-result v0

    if-nez v0, :cond_d

    .line 2022
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, p2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 2024
    :cond_d
    return-void
.end method

.method public setMiuiConfigFlag(IZ)V
    .registers 4
    .param p1, "miuiConfigFlag"    # I
        .annotation build Landroid/app/WindowConfiguration$MiuiConfigFlag;
        .end annotation
    .end param
    .param p2, "isSetToStack"    # Z

    .line 2538
    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Lcom/android/server/wm/WindowToken;->setMiuiConfigFlag(IZ)V

    .line 2539
    if-eqz p2, :cond_11

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_11

    .line 2540
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/TaskStack;->setMiuiConfigFlag(IZ)V

    .line 2542
    :cond_11
    return-void
.end method

.method protected setRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V
    .registers 5
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "relativeTo"    # Landroid/view/SurfaceControl;
    .param p3, "layer"    # I

    .line 2028
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->hasLeash()Z

    move-result v0

    if-nez v0, :cond_d

    .line 2029
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 2031
    :cond_d
    return-void
.end method

.method setRoundCornerForAppTransition(Landroid/view/SurfaceControl$Transaction;F)V
    .registers 8
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "radius"    # F

    .line 2481
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    if-nez v0, :cond_82

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->removed:Z

    if-eqz v0, :cond_a

    goto/16 :goto_82

    .line 2485
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_64

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 2486
    .local v1, "w":Lcom/android/server/wm/WindowState;
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->isGestureOpen()Z

    move-result v2

    if-eqz v2, :cond_37

    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x4000000

    and-int/2addr v2, v3

    if-nez v2, :cond_37

    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-nez v2, :cond_37

    .line 2489
    goto :goto_10

    .line 2491
    :cond_37
    iget-boolean v2, v1, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v2, :cond_10

    iget-boolean v2, v1, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-eqz v2, :cond_40

    .line 2492
    goto :goto_10

    .line 2494
    :cond_40
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_52

    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_63

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_63

    .line 2496
    :cond_52
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 2497
    .local v2, "surfaceController":Lcom/android/server/wm/WindowSurfaceController;
    if-eqz v2, :cond_63

    iget-object v4, v2, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v4, :cond_63

    .line 2498
    iput-boolean v3, v1, Lcom/android/server/wm/WindowState;->mRoundCornerFlagChanged:Z

    .line 2499
    iget-object v3, v2, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v3, p2}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_63} :catch_65

    .line 2502
    .end local v1    # "w":Lcom/android/server/wm/WindowState;
    .end local v2    # "surfaceController":Lcom/android/server/wm/WindowSurfaceController;
    :cond_63
    goto :goto_10

    .line 2507
    :cond_64
    goto :goto_81

    .line 2503
    :catch_65
    move-exception v0

    .line 2505
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MiuiGestureStrategy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to set round corner for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2506
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2508
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_81
    return-void

    .line 2482
    :cond_82
    :goto_82
    return-void
.end method

.method setVisibility(Landroid/view/WindowManager$LayoutParams;ZIZZ)Z
    .registers 22
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "visible"    # Z
    .param p3, "transit"    # I
    .param p4, "performLayout"    # Z
    .param p5, "isVoiceInteraction"    # Z

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    .line 423
    const/4 v3, 0x0

    .line 424
    .local v3, "delayed":Z
    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    .line 427
    iput-boolean v4, v0, Lcom/android/server/wm/AppWindowToken;->mHiddenSetFromTransferredStartingWindow:Z

    .line 434
    const/4 v5, 0x0

    .line 435
    .local v5, "visibilityChanged":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v1, :cond_2d

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v6

    if-eqz v6, :cond_1e

    iget-boolean v6, v0, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    if-nez v6, :cond_2d

    :cond_1e
    if-eqz v1, :cond_27

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->waitingForReplacement()Z

    move-result v6

    if-eqz v6, :cond_27

    goto :goto_2d

    .line 494
    :cond_27
    move-object/from16 v10, p1

    move/from16 v11, p5

    goto/16 :goto_c7

    .line 436
    :cond_2d
    :goto_2d
    iget-object v6, v0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    .line 437
    .local v6, "accessibilityController":Lcom/android/server/wm/AccessibilityController;
    const/4 v8, 0x0

    .line 441
    .local v8, "changed":Z
    const/4 v9, 0x0

    .line 443
    .local v9, "runningAppAnimation":Z
    const/4 v10, -0x1

    if-eq v2, v10, :cond_59

    .line 444
    move-object/from16 v10, p1

    move/from16 v11, p5

    invoke-virtual {v0, v10, v2, v1, v11}, Lcom/android/server/wm/AppWindowToken;->applyAnimationLocked(Landroid/view/WindowManager$LayoutParams;IZZ)Z

    move-result v12

    if-eqz v12, :cond_42

    .line 445
    move v9, v7

    move v3, v7

    .line 447
    :cond_42
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v12

    .line 449
    .local v12, "window":Lcom/android/server/wm/WindowState;
    if-eqz v12, :cond_57

    if-eqz v6, :cond_57

    .line 450
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v13

    if-nez v13, :cond_57

    .line 451
    invoke-virtual {v6, v12, v2}, Lcom/android/server/wm/AccessibilityController;->onAppWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V

    .line 453
    :cond_57
    const/4 v8, 0x1

    .end local v12    # "window":Lcom/android/server/wm/WindowState;
    goto :goto_5d

    .line 456
    :cond_59
    move-object/from16 v10, p1

    move/from16 v11, p5

    :goto_5d
    iget-object v12, v0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v12}, Lcom/android/server/wm/WindowList;->size()I

    move-result v12

    .line 457
    .local v12, "windowsCount":I
    move v13, v8

    move v8, v4

    .local v8, "i":I
    .local v13, "changed":Z
    :goto_65
    if-ge v8, v12, :cond_77

    .line 458
    iget-object v14, v0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v14, v8}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/wm/WindowState;

    .line 459
    .local v14, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v14, v1, v9}, Lcom/android/server/wm/WindowState;->onAppVisibilityChanged(ZZ)Z

    move-result v15

    or-int/2addr v13, v15

    .line 457
    .end local v14    # "win":Lcom/android/server/wm/WindowState;
    add-int/lit8 v8, v8, 0x1

    goto :goto_65

    .line 462
    .end local v8    # "i":I
    :cond_77
    xor-int/lit8 v8, v1, 0x1

    invoke-virtual {v0, v8}, Lcom/android/server/wm/AppWindowToken;->setHidden(Z)V

    .line 463
    xor-int/lit8 v8, v1, 0x1

    iput-boolean v8, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    .line 464
    const/4 v5, 0x1

    .line 465
    if-nez v1, :cond_87

    .line 466
    invoke-virtual {v0, v7, v7}, Lcom/android/server/wm/AppWindowToken;->stopFreezingScreen(ZZ)V

    goto :goto_a8

    .line 470
    :cond_87
    iget-object v8, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v8, :cond_9b

    iget-object v8, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v8

    if-nez v8, :cond_9b

    .line 471
    iget-object v8, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    iput-boolean v4, v8, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    .line 472
    iget-object v8, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    iput-boolean v4, v8, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    .line 477
    :cond_9b
    iget-object v8, v0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v14, Lcom/android/server/wm/-$$Lambda$2KrtdmjrY7Nagc4IRqzCk9gDuQU;

    invoke-direct {v14, v8}, Lcom/android/server/wm/-$$Lambda$2KrtdmjrY7Nagc4IRqzCk9gDuQU;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    invoke-virtual {v0, v14, v7}, Lcom/android/server/wm/AppWindowToken;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 483
    :goto_a8
    if-eqz v13, :cond_c7

    .line 484
    iget-object v8, v0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v8}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    .line 485
    if-eqz p4, :cond_c0

    .line 486
    iget-object v14, v0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v15, 0x3

    invoke-virtual {v14, v15, v4}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 488
    iget-object v14, v0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v14, v14, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v14}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 490
    :cond_c0
    iget-object v14, v0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v14, v14, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v14, v4}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 494
    .end local v6    # "accessibilityController":Lcom/android/server/wm/AccessibilityController;
    .end local v9    # "runningAppAnimation":Z
    .end local v12    # "windowsCount":I
    .end local v13    # "changed":Z
    :cond_c7
    :goto_c7
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->isReallyAnimating()Z

    move-result v6

    if-eqz v6, :cond_cf

    .line 495
    const/4 v3, 0x1

    goto :goto_d2

    .line 501
    :cond_cf
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->onAnimationFinished()V

    .line 504
    :goto_d2
    iget-object v6, v0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowList;->size()I

    move-result v6

    sub-int/2addr v6, v7

    .local v6, "i":I
    :goto_d9
    if-ltz v6, :cond_ef

    if-nez v3, :cond_ef

    .line 505
    iget-object v9, v0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v9, v6}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowState;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->isSelfOrChildAnimating()Z

    move-result v9

    if-eqz v9, :cond_ec

    .line 506
    const/4 v3, 0x1

    .line 504
    :cond_ec
    add-int/lit8 v6, v6, -0x1

    goto :goto_d9

    .line 510
    .end local v6    # "i":I
    :cond_ef
    if-eqz v5, :cond_186

    .line 511
    if-eqz v1, :cond_100

    if-nez v3, :cond_100

    .line 514
    iput-boolean v7, v0, Lcom/android/server/wm/AppWindowToken;->mEnteringAnimation:Z

    .line 515
    iget-object v6, v0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mActivityManagerAppTransitionNotifier:Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    iget-object v9, v0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v6, v9}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionFinishedLocked(Landroid/os/IBinder;)V

    .line 524
    :cond_100
    if-nez v1, :cond_108

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->isReallyAnimating()Z

    move-result v6

    if-nez v6, :cond_10d

    .line 525
    :cond_108
    xor-int/lit8 v6, v1, 0x1

    invoke-virtual {v0, v6}, Lcom/android/server/wm/AppWindowToken;->setClientHidden(Z)V

    .line 528
    :cond_10d
    iget-object v6, v0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_135

    iget-object v6, v0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_135

    .line 534
    iget-object v6, v0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v6

    .line 535
    invoke-virtual {v6}, Lcom/android/server/wm/DockedStackDividerController;->notifyAppVisibilityChanged()V

    .line 539
    iget-object v6, v0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v6, v0, v1}, Lcom/android/server/wm/TaskSnapshotController;->notifyAppVisibilityChanged(Lcom/android/server/wm/AppWindowToken;Z)V

    .line 552
    :cond_135
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v6

    if-eqz v6, :cond_186

    if-nez v3, :cond_186

    iget-object v6, v0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v6}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v6

    if-nez v6, :cond_186

    .line 556
    iget-object v6, v0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v6, v6, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v6, :cond_165

    iget-object v6, v0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_165

    .line 557
    iget-object v6, v0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 558
    iget-object v6, v0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v6, v0, v4}, Lcom/android/server/wm/TaskSnapshotController;->notifyAppVisibilityChanged(Lcom/android/server/wm/AppWindowToken;Z)V

    .line 561
    :cond_165
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 562
    iget-object v4, v0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    sub-int/2addr v4, v7

    .local v4, "i":I
    :goto_16f
    if-ltz v4, :cond_183

    .line 563
    iget-object v6, v0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v6, v4}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const-string v7, "immediately hidden"

    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowStateAnimator;->hide(Ljava/lang/String;)V

    .line 562
    add-int/lit8 v4, v4, -0x1

    goto :goto_16f

    .line 565
    .end local v4    # "i":I
    :cond_183
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 569
    :cond_186
    return v3
.end method

.method setWillCloseOrEnterPip(Z)V
    .registers 2
    .param p1, "willCloseOrEnterPip"    # Z

    .line 2463
    iput-boolean p1, p0, Lcom/android/server/wm/AppWindowToken;->mWillCloseOrEnterPip:Z

    .line 2464
    return-void
.end method

.method setWillReplaceChildWindows()V
    .registers 3

    .line 929
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 930
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 931
    .local v1, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->setWillReplaceChildWindows()V

    .line 929
    .end local v1    # "w":Lcom/android/server/wm/WindowState;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 933
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method setWillReplaceWindows(Z)V
    .registers 4
    .param p1, "animate"    # Z

    .line 920
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 921
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 922
    .local v1, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowState;->setWillReplaceWindow(Z)V

    .line 920
    .end local v1    # "w":Lcom/android/server/wm/WindowState;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 924
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method public shouldDeferAnimationFinish(Ljava/lang/Runnable;)Z
    .registers 3
    .param p1, "endDeferFinishCallback"    # Ljava/lang/Runnable;

    .line 2006
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mAnimatingAppWindowTokenRegistry:Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mAnimatingAppWindowTokenRegistry:Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;

    .line 2007
    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->notifyAboutToFinish(Lcom/android/server/wm/AppWindowToken;Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 2006
    :goto_f
    return v0
.end method

.method shouldFreezeBounds()Z
    .registers 3

    .line 957
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 961
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_16

    .line 969
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isDragResizing()Z

    move-result v1

    return v1

    .line 962
    :cond_16
    :goto_16
    const/4 v1, 0x0

    return v1
.end method

.method shouldUseAppThemeSnapshot()Z
    .registers 3

    .line 1812
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mDisablePreviewScreenshots:Z

    const/4 v1, 0x1

    if-nez v0, :cond_10

    sget-object v0, Lcom/android/server/wm/-$$Lambda$AppWindowToken$ErIvy8Kb9OulX2W0_mr0NNBS-KE;->INSTANCE:Lcom/android/server/wm/-$$Lambda$AppWindowToken$ErIvy8Kb9OulX2W0_mr0NNBS-KE;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/AppWindowToken;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 v1, 0x0

    nop

    :cond_10
    :goto_10
    return v1
.end method

.method showAllWindowsLocked()V
    .registers 3

    .line 2072
    sget-object v0, Lcom/android/server/wm/-$$Lambda$AppWindowToken$jSO6pNpAHzC89v5XTI_Oj39kDGg;->INSTANCE:Lcom/android/server/wm/-$$Lambda$AppWindowToken$jSO6pNpAHzC89v5XTI_Oj39kDGg;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/AppWindowToken;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 2076
    return-void
.end method

.method startFreezingScreen()V
    .registers 6

    .line 1176
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v0, :cond_50

    .line 1177
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mFreezingScreen:Z

    const/4 v1, 0x0

    if-nez v0, :cond_39

    .line 1178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mFreezingScreen:Z

    .line 1179
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p0}, Lcom/android/server/wm/WindowManagerService;->registerAppFreezeListener(Lcom/android/server/wm/WindowManagerService$AppFreezeListener;)V

    .line 1180
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v3, v2, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    add-int/2addr v3, v0

    iput v3, v2, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    .line 1181
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v2, v2, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    if-ne v2, v0, :cond_39

    .line 1182
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v0, v1, v1, v2}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplayLocked(IILcom/android/server/wm/DisplayContent;)V

    .line 1183
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 1184
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 1187
    :cond_39
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 1188
    .local v0, "count":I
    nop

    .local v1, "i":I
    :goto_40
    if-ge v1, v0, :cond_50

    .line 1189
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 1190
    .local v2, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->onStartFreezingScreen()V

    .line 1188
    .end local v2    # "w":Lcom/android/server/wm/WindowState;
    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    .line 1193
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_50
    return-void
.end method

.method startRelaunching()V
    .registers 2

    .line 973
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->shouldFreezeBounds()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 974
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->freezeBounds()V

    .line 981
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->detachChildren()V

    .line 983
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    .line 984
    return-void
.end method

.method stopFreezingScreen(ZZ)V
    .registers 9
    .param p1, "unfreezeSurfaceNow"    # Z
    .param p2, "force"    # Z

    .line 1196
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mFreezingScreen:Z

    if-nez v0, :cond_5

    .line 1197
    return-void

    .line 1200
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 1201
    .local v0, "count":I
    const/4 v1, 0x0

    .line 1202
    .local v1, "unfrozeWindows":Z
    const/4 v2, 0x0

    move v3, v1

    move v1, v2

    .local v1, "i":I
    .local v3, "unfrozeWindows":Z
    :goto_f
    if-ge v1, v0, :cond_21

    .line 1203
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 1204
    .local v4, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->onStopFreezingScreen()Z

    move-result v5

    or-int/2addr v3, v5

    .line 1202
    .end local v4    # "w":Lcom/android/server/wm/WindowState;
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1206
    .end local v1    # "i":I
    :cond_21
    if-nez p2, :cond_25

    if-eqz v3, :cond_38

    .line 1208
    :cond_25
    iput-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->mFreezingScreen:Z

    .line 1209
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/WindowManagerService;->unregisterAppFreezeListener(Lcom/android/server/wm/WindowManagerService$AppFreezeListener;)V

    .line 1210
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v2, v1, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    .line 1211
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object p0, v1, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    .line 1213
    :cond_38
    if-eqz p1, :cond_48

    .line 1214
    if-eqz v3, :cond_43

    .line 1215
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 1217
    :cond_43
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked()V

    .line 1219
    :cond_48
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 2432
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->stringName:Ljava/lang/String;

    if-nez v0, :cond_2e

    .line 2433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2434
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "AppWindowToken{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2435
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2436
    const-string v1, " token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2437
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/AppWindowToken;->stringName:Ljava/lang/String;

    .line 2439
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_2e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->stringName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    if-eqz v1, :cond_3f

    const-string v1, " mIsExiting="

    goto :goto_41

    :cond_3f
    const-string v1, ""

    :goto_41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method transferStartingWindow(Landroid/os/IBinder;)Z
    .registers 11
    .param p1, "transferFrom"    # Landroid/os/IBinder;

    .line 1247
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 1248
    .local v0, "fromToken":Lcom/android/server/wm/AppWindowToken;
    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 1249
    return v1

    .line 1252
    :cond_c
    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 1253
    .local v2, "tStartingWindow":Lcom/android/server/wm/WindowState;
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_af

    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    if-eqz v5, :cond_af

    .line 1255
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v5

    .line 1256
    .local v5, "mainWin":Lcom/android/server/wm/WindowState;
    iget-object v6, p0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    if-nez v6, :cond_ae

    iget-object v6, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-nez v6, :cond_ae

    if-eqz v5, :cond_31

    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v6, :cond_31

    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v6, v6, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_31

    goto/16 :goto_ae

    .line 1264
    :cond_31
    iget-object v6, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v4, v6, Lcom/android/server/wm/WindowManagerService;->mSkipAppTransitionAnimation:Z

    .line 1269
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1272
    .local v6, "origId":J
    :try_start_39
    iget-object v8, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    iput-object v8, p0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    .line 1273
    iget-object v8, v0, Lcom/android/server/wm/AppWindowToken;->startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    iput-object v8, p0, Lcom/android/server/wm/AppWindowToken;->startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    .line 1274
    iget-boolean v8, v0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    iput-boolean v8, p0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    .line 1275
    iput-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    .line 1276
    iput-object v2, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 1277
    iget-boolean v8, v0, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    iput-boolean v8, p0, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    .line 1278
    iput-object v3, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    .line 1279
    iput-object v3, v0, Lcom/android/server/wm/AppWindowToken;->startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    .line 1280
    iput-object v3, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 1281
    iput-boolean v4, v0, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    .line 1282
    iput-object p0, v2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 1283
    iput-object p0, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1287
    invoke-virtual {v0, v2}, Lcom/android/server/wm/AppWindowToken;->removeChild(Lcom/android/server/wm/WindowState;)V

    .line 1288
    invoke-virtual {v0, v2}, Lcom/android/server/wm/AppWindowToken;->postWindowRemoveStartingWindowCleanup(Lcom/android/server/wm/WindowState;)V

    .line 1289
    iput-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->mHiddenSetFromTransferredStartingWindow:Z

    .line 1290
    invoke-virtual {p0, v2}, Lcom/android/server/wm/AppWindowToken;->addWindow(Lcom/android/server/wm/WindowState;)V

    .line 1295
    iget-boolean v3, v0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-eqz v3, :cond_6e

    .line 1296
    iput-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 1297
    iget-boolean v3, v0, Lcom/android/server/wm/AppWindowToken;->deferClearAllDrawn:Z

    iput-boolean v3, p0, Lcom/android/server/wm/AppWindowToken;->deferClearAllDrawn:Z

    .line 1299
    :cond_6e
    iget-boolean v3, v0, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    if-eqz v3, :cond_74

    .line 1300
    iput-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    .line 1302
    :cond_74
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v3

    if-nez v3, :cond_81

    .line 1303
    invoke-virtual {p0, v1}, Lcom/android/server/wm/AppWindowToken;->setHidden(Z)V

    .line 1304
    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    .line 1305
    iput-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->mHiddenSetFromTransferredStartingWindow:Z

    .line 1307
    :cond_81
    iget-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->mClientHidden:Z

    invoke-virtual {p0, v1}, Lcom/android/server/wm/AppWindowToken;->setClientHidden(Z)V

    .line 1309
    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppWindowToken;->transferAnimation(Lcom/android/server/wm/WindowContainer;)V

    .line 1314
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1316
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v4}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 1318
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 1319
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V
    :try_end_a4
    .catchall {:try_start_39 .. :try_end_a4} :catchall_a9

    .line 1321
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1322
    nop

    .line 1323
    return v4

    .line 1321
    :catchall_a9
    move-exception v1

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 1259
    .end local v6    # "origId":J
    :cond_ae
    :goto_ae
    return v1

    .line 1324
    .end local v5    # "mainWin":Lcom/android/server/wm/WindowState;
    :cond_af
    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    if-eqz v5, :cond_c9

    .line 1329
    iget-object v1, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    iput-object v1, p0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    .line 1330
    iput-object v3, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    .line 1331
    iput-boolean v4, v0, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    .line 1332
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v1

    if-eqz v1, :cond_c8

    .line 1333
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowContainerController;->scheduleAddStartingWindow()V

    .line 1335
    :cond_c8
    return v4

    .line 1340
    :cond_c9
    return v1
.end method

.method transferStartingWindowFromHiddenAboveTokenIfNeeded()V
    .registers 5

    .line 1234
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1235
    .local v0, "task":Lcom/android/server/wm/Task;
    iget-object v1, v0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_c
    if-ltz v1, :cond_29

    .line 1236
    iget-object v2, v0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    .line 1237
    .local v2, "fromToken":Lcom/android/server/wm/AppWindowToken;
    if-ne v2, p0, :cond_19

    .line 1238
    return-void

    .line 1240
    :cond_19
    iget-boolean v3, v2, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v3, :cond_26

    iget-object v3, v2, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {p0, v3}, Lcom/android/server/wm/AppWindowToken;->transferStartingWindow(Landroid/os/IBinder;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 1241
    return-void

    .line 1235
    .end local v2    # "fromToken":Lcom/android/server/wm/AppWindowToken;
    :cond_26
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 1244
    .end local v1    # "i":I
    :cond_29
    return-void
.end method

.method updateAllDrawn()V
    .registers 5

    .line 1502
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-nez v0, :cond_3e

    .line 1505
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mNumInterestingWindows:I

    .line 1510
    .local v0, "numInteresting":I
    if-lez v0, :cond_3e

    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->allDrawnStatesConsidered()Z

    move-result v1

    if-eqz v1, :cond_3e

    iget v1, p0, Lcom/android/server/wm/AppWindowToken;->mNumDrawnWindows:I

    if-lt v1, v0, :cond_3e

    .line 1511
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isRelaunching()Z

    move-result v1

    if-nez v1, :cond_3e

    .line 1514
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 1517
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v1, :cond_24

    .line 1518
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 1520
    :cond_24
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x20

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1524
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getPinnedStack()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    .line 1525
    .local v1, "pinnedStack":Lcom/android/server/wm/TaskStack;
    if-eqz v1, :cond_3e

    .line 1526
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->onAllWindowsDrawn()V

    .line 1530
    .end local v0    # "numInteresting":I
    .end local v1    # "pinnedStack":Lcom/android/server/wm/TaskStack;
    :cond_3e
    return-void
.end method

.method updateDrawnWindowStates(Lcom/android/server/wm/WindowState;)Z
    .registers 9
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 1539
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowState;->setDrawnStateEvaluated(Z)V

    .line 1546
    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mFreezingScreen:Z

    if-nez v1, :cond_e

    .line 1547
    return v2

    .line 1550
    :cond_e
    iget-wide v3, p0, Lcom/android/server/wm/AppWindowToken;->mLastTransactionSequence:J

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v1, v1, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    int-to-long v5, v1

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2f

    .line 1551
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v1, v1, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    int-to-long v3, v1

    iput-wide v3, p0, Lcom/android/server/wm/AppWindowToken;->mLastTransactionSequence:J

    .line 1552
    iput v2, p0, Lcom/android/server/wm/AppWindowToken;->mNumDrawnWindows:I

    .line 1553
    iput-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    .line 1556
    invoke-virtual {p0, v2}, Lcom/android/server/wm/AppWindowToken;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eqz v1, :cond_2c

    move v1, v0

    goto :goto_2d

    :cond_2c
    move v1, v2

    :goto_2d
    iput v1, p0, Lcom/android/server/wm/AppWindowToken;->mNumInterestingWindows:I

    .line 1559
    :cond_2f
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 1561
    .local v1, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    const/4 v3, 0x0

    .line 1563
    .local v3, "isInterestingAndDrawn":Z
    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-nez v4, :cond_73

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->mightAffectAllDrawn()Z

    move-result v4

    if-eqz v4, :cond_73

    .line 1576
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eq p1, v4, :cond_5e

    .line 1577
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isInteresting()Z

    move-result v4

    if-eqz v4, :cond_73

    .line 1579
    invoke-virtual {p0, v2}, Lcom/android/server/wm/AppWindowToken;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-eq v2, p1, :cond_51

    .line 1580
    iget v2, p0, Lcom/android/server/wm/AppWindowToken;->mNumInterestingWindows:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/server/wm/AppWindowToken;->mNumInterestingWindows:I

    .line 1582
    :cond_51
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v2

    if-eqz v2, :cond_73

    .line 1583
    iget v2, p0, Lcom/android/server/wm/AppWindowToken;->mNumDrawnWindows:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/server/wm/AppWindowToken;->mNumDrawnWindows:I

    .line 1590
    const/4 v3, 0x1

    goto :goto_73

    .line 1593
    :cond_5e
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v2

    if-eqz v2, :cond_73

    .line 1594
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v2

    if-eqz v2, :cond_71

    .line 1595
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowContainerController;->reportStartingWindowDrawn()V

    .line 1597
    :cond_71
    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    .line 1601
    :cond_73
    :goto_73
    return v3
.end method

.method updateLetterboxSurface(Lcom/android/server/wm/WindowState;)V
    .registers 5
    .param p1, "winHint"    # Lcom/android/server/wm/WindowState;

    .line 1641
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 1642
    .local v0, "w":Lcom/android/server/wm/WindowState;
    if-eq v0, p1, :cond_b

    if-eqz p1, :cond_b

    if-eqz v0, :cond_b

    .line 1643
    return-void

    .line 1647
    :cond_b
    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->isCastMode:Z

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-eqz v1, :cond_1e

    .line 1648
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 1649
    .local v1, "t":Landroid/view/SurfaceControl$Transaction;
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mLetterbox:Lcom/android/server/wm/Letterbox;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/Letterbox;->hideLetterboxSurface(Landroid/view/SurfaceControl$Transaction;)V

    .line 1650
    return-void

    .line 1654
    .end local v1    # "t":Landroid/view/SurfaceControl$Transaction;
    :cond_1e
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWindowToken;->layoutLetterbox(Lcom/android/server/wm/WindowState;)V

    .line 1655
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mLetterbox:Lcom/android/server/wm/Letterbox;

    invoke-virtual {v1}, Lcom/android/server/wm/Letterbox;->needsApplySurfaceChanges()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 1656
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mLetterbox:Lcom/android/server/wm/Letterbox;

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mPendingTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/Letterbox;->applySurfaceChanges(Landroid/view/SurfaceControl$Transaction;)V

    .line 1659
    :cond_34
    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mHandleByGesture:Z

    if-eqz v1, :cond_46

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-eqz v1, :cond_46

    .line 1660
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 1661
    .restart local v1    # "t":Landroid/view/SurfaceControl$Transaction;
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mLetterbox:Lcom/android/server/wm/Letterbox;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/Letterbox;->hideLetterboxSurface(Landroid/view/SurfaceControl$Transaction;)V

    .line 1664
    .end local v1    # "t":Landroid/view/SurfaceControl$Transaction;
    :cond_46
    return-void
.end method

.method updateReportedVisibilityLocked()V
    .registers 10

    .line 351
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-nez v0, :cond_5

    .line 352
    return-void

    .line 356
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 358
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mReportedVisibilityResults:Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->reset()V

    .line 360
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_12
    if-ge v2, v0, :cond_24

    .line 361
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 362
    .local v3, "win":Lcom/android/server/wm/WindowState;
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mReportedVisibilityResults:Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowState;->updateReportedVisibility(Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;)V

    .line 360
    .end local v3    # "win":Lcom/android/server/wm/WindowState;
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 365
    .end local v2    # "i":I
    :cond_24
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mReportedVisibilityResults:Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

    iget v2, v2, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numInteresting:I

    .line 366
    .local v2, "numInteresting":I
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mReportedVisibilityResults:Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

    iget v3, v3, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numVisible:I

    .line 367
    .local v3, "numVisible":I
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mReportedVisibilityResults:Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

    iget v4, v4, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numDrawn:I

    .line 368
    .local v4, "numDrawn":I
    iget-object v5, p0, Lcom/android/server/wm/AppWindowToken;->mReportedVisibilityResults:Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->nowGone:Z

    .line 370
    .local v5, "nowGone":Z
    const/4 v6, 0x1

    if-lez v2, :cond_3b

    if-lt v4, v2, :cond_3b

    move v7, v6

    goto :goto_3c

    :cond_3b
    move v7, v1

    .line 371
    .local v7, "nowDrawn":Z
    :goto_3c
    if-lez v2, :cond_48

    if-lt v3, v2, :cond_48

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v8

    if-nez v8, :cond_48

    move v1, v6

    nop

    .line 372
    .local v1, "nowVisible":Z
    :cond_48
    if-nez v5, :cond_53

    .line 374
    if-nez v7, :cond_4f

    .line 375
    iget-boolean v6, p0, Lcom/android/server/wm/AppWindowToken;->reportedDrawn:Z

    .line 377
    .end local v7    # "nowDrawn":Z
    .local v6, "nowDrawn":Z
    move v7, v6

    .end local v6    # "nowDrawn":Z
    .restart local v7    # "nowDrawn":Z
    :cond_4f
    if-nez v1, :cond_53

    .line 378
    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    .line 383
    :cond_53
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v6

    .line 384
    .local v6, "controller":Lcom/android/server/wm/AppWindowContainerController;
    iget-boolean v8, p0, Lcom/android/server/wm/AppWindowToken;->reportedDrawn:Z

    if-eq v7, v8, :cond_64

    .line 385
    if-eqz v7, :cond_62

    .line 386
    if-eqz v6, :cond_62

    .line 387
    invoke-virtual {v6}, Lcom/android/server/wm/AppWindowContainerController;->reportWindowsDrawn()V

    .line 390
    :cond_62
    iput-boolean v7, p0, Lcom/android/server/wm/AppWindowToken;->reportedDrawn:Z

    .line 392
    :cond_64
    iget-boolean v8, p0, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    if-eq v1, v8, :cond_75

    .line 395
    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    .line 396
    if-eqz v6, :cond_75

    .line 397
    if-eqz v1, :cond_72

    .line 398
    invoke-virtual {v6}, Lcom/android/server/wm/AppWindowContainerController;->reportWindowsVisible()V

    goto :goto_75

    .line 400
    :cond_72
    invoke-virtual {v6}, Lcom/android/server/wm/AppWindowContainerController;->reportWindowsGone()V

    .line 404
    :cond_75
    :goto_75
    return-void
.end method

.method windowsAreFocusable()Z
    .registers 2

    .line 620
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->canReceiveKeys()Z

    move-result v0

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mAlwaysFocusable:Z

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method writeNameToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 7
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 2419
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-nez v0, :cond_5

    .line 2420
    return-void

    .line 2423
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    invoke-interface {v0}, Landroid/view/IApplicationToken;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_e} :catch_f

    .line 2427
    goto :goto_19

    .line 2424
    :catch_f
    move-exception v0

    .line 2426
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2428
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_19
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;JZ)V
    .registers 11
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "trim"    # Z

    .line 2384
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 2385
    .local v0, "token":J
    const-wide v2, 0x10900000001L

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/wm/AppWindowToken;->writeNameToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2386
    const-wide v2, 0x10b00000002L

    invoke-super {p0, p1, v2, v3, p4}, Lcom/android/server/wm/WindowToken;->writeToProto(Landroid/util/proto/ProtoOutputStream;JZ)V

    .line 2387
    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->mLastSurfaceShowing:Z

    const-wide v3, 0x10800000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2388
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isWaitingForTransitionStart()Z

    move-result v2

    const-wide v3, 0x10800000004L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2389
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->isReallyAnimating()Z

    move-result v2

    const-wide v3, 0x10800000005L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2390
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mThumbnail:Lcom/android/server/wm/AppWindowThumbnail;

    if-eqz v2, :cond_44

    .line 2391
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mThumbnail:Lcom/android/server/wm/AppWindowThumbnail;

    const-wide v3, 0x10b00000006L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/wm/AppWindowThumbnail;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2393
    :cond_44
    const-wide v2, 0x10800000007L

    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->mFillsParent:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2394
    const-wide v2, 0x10800000008L

    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->mAppStopped:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2395
    const-wide v2, 0x10800000009L

    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2396
    const-wide v2, 0x1080000000aL

    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->mClientHidden:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2397
    const-wide v2, 0x1080000000bL

    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->mDeferHidingClient:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2398
    const-wide v2, 0x1080000000cL

    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->reportedDrawn:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2399
    const-wide v2, 0x1080000000dL

    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2400
    const-wide v2, 0x1050000000eL

    iget v4, p0, Lcom/android/server/wm/AppWindowToken;->mNumInterestingWindows:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2401
    const-wide v2, 0x1050000000fL

    iget v4, p0, Lcom/android/server/wm/AppWindowToken;->mNumDrawnWindows:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2402
    const-wide v2, 0x10800000010L

    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2403
    const-wide v2, 0x10800000011L

    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->mLastAllDrawn:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2404
    const-wide v2, 0x10800000012L

    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->removed:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2405
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_ca

    .line 2406
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    const-wide v3, 0x10b00000013L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/wm/WindowState;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2408
    :cond_ca
    const-wide v2, 0x10800000014L

    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2409
    const-wide v2, 0x10800000015L

    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2410
    const-wide v2, 0x10800000016L

    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->mHiddenSetFromTransferredStartingWindow:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2412
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenBounds:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_ee
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_103

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 2413
    .local v3, "bounds":Landroid/graphics/Rect;
    const-wide v4, 0x20b00000017L

    invoke-virtual {v3, p1, v4, v5}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2414
    .end local v3    # "bounds":Landroid/graphics/Rect;
    goto :goto_ee

    .line 2415
    :cond_103
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2416
    return-void
.end method
