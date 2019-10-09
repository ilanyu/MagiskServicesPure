.class public Lcom/android/server/wm/DockedStackDividerController;
.super Ljava/lang/Object;
.source "DockedStackDividerController.java"


# static fields
.field private static final CLIP_REVEAL_MEET_EARLIEST:F = 0.6f

.field private static final CLIP_REVEAL_MEET_FRACTION_MAX:F = 0.8f

.field private static final CLIP_REVEAL_MEET_FRACTION_MIN:F = 0.4f

.field private static final CLIP_REVEAL_MEET_LAST:F = 1.0f

.field private static final DIVIDER_WIDTH_INACTIVE_DP:I = 0x4

.field private static final IME_ADJUST_ANIM_DURATION:J = 0x118L

.field private static final IME_ADJUST_DRAWN_TIMEOUT:J = 0xc8L

.field private static final IME_ADJUST_ENTRY_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private mAdjustedForDivider:Z

.field private mAdjustedForIme:Z

.field private mAnimatingForIme:Z

.field private mAnimatingForMinimizedDockedStack:Z

.field private mAnimationDuration:J

.field private mAnimationStart:F

.field private mAnimationStartDelayed:Z

.field private mAnimationStartTime:J

.field private mAnimationStarted:Z

.field private mAnimationTarget:F

.field private mDelayedImeWin:Lcom/android/server/wm/WindowState;

.field private mDimmedStack:Lcom/android/server/wm/TaskStack;

.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mDividerAnimationStart:F

.field private mDividerAnimationTarget:F

.field private mDividerInsets:I

.field private mDividerWindowWidth:I

.field private mDividerWindowWidthInactive:I

.field private final mDockedStackListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/view/IDockedStackListener;",
            ">;"
        }
    .end annotation
.end field

.field private mImeHeight:I

.field private mImeHideRequested:Z

.field mLastAnimationProgress:F

.field private mLastDimLayerAlpha:F

.field private final mLastDimLayerRect:Landroid/graphics/Rect;

.field mLastDividerProgress:F

.field private final mLastRect:Landroid/graphics/Rect;

.field private mLastVisibility:Z

.field private mMaximizeMeetFraction:F

.field private mMinimizedDock:Z

.field private final mMinimizedDockInterpolator:Landroid/view/animation/Interpolator;

.field private mOriginalDockedSide:I

.field private mResizing:Z

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mSnapAlgorithmForRotation:[Lcom/android/internal/policy/DividerSnapAlgorithm;

.field private mTaskHeightInMinimizedMode:I

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTmpRect2:Landroid/graphics/Rect;

.field private final mTmpRect3:Landroid/graphics/Rect;

.field private final mTouchRegion:Landroid/graphics/Rect;

.field private mWindow:Lcom/android/server/wm/WindowState;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 98
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    const/4 v2, 0x0

    const v3, 0x3dcccccd    # 0.1f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/server/wm/DockedStackDividerController;->IME_ADJUST_ENTRY_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .registers 5
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    .line 116
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    .line 117
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect3:Landroid/graphics/Rect;

    .line 118
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastRect:Landroid/graphics/Rect;

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastVisibility:Z

    .line 120
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    .line 124
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mOriginalDockedSide:I

    .line 134
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mTouchRegion:Landroid/graphics/Rect;

    .line 144
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/policy/DividerSnapAlgorithm;

    iput-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mSnapAlgorithmForRotation:[Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 146
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastDimLayerRect:Landroid/graphics/Rect;

    .line 151
    iput-object p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 152
    iput-object p2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 153
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 154
    .local v0, "context":Landroid/content/Context;
    const v1, 0x10c000d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDockInterpolator:Landroid/view/animation/Interpolator;

    .line 156
    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->loadDimens()V

    .line 157
    return-void
.end method

.method private adjustMaximizeAmount(Lcom/android/server/wm/TaskStack;FF)F
    .registers 10
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;
    .param p2, "t"    # F
    .param p3, "naturalAmount"    # F

    .line 982
    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mMaximizeMeetFraction:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_9

    .line 983
    return p3

    .line 985
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->getMinimizeDistance()I

    move-result v0

    .line 986
    .local v0, "minimizeDistance":I
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->getLastClipRevealMaxTranslation()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    .line 988
    .local v2, "startPrime":F
    iget v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationTarget:F

    mul-float/2addr v3, p2

    sub-float v4, v1, p2

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    .line 989
    .local v3, "amountPrime":F
    iget v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mMaximizeMeetFraction:F

    div-float v4, p2, v4

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 994
    .local v4, "t2":F
    mul-float v5, v3, v4

    sub-float/2addr v1, v4

    mul-float/2addr v1, p3

    add-float/2addr v5, v1

    .line 995
    .local v5, "tmpMaximizeAmount":F
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_34

    const/4 v1, 0x0

    goto :goto_35

    :cond_34
    move v1, v5

    :goto_35
    return v1
.end method

.method private animateForIme(J)Z
    .registers 9
    .param p1, "now"    # J

    .line 907
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStarted:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStartDelayed:Z

    if-eqz v0, :cond_19

    .line 908
    :cond_9
    iput-boolean v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStarted:Z

    .line 909
    iput-wide p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStartTime:J

    .line 910
    const/high16 v0, 0x438c0000    # 280.0f

    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 911
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getWindowAnimationScaleLocked()F

    move-result v2

    mul-float/2addr v0, v2

    float-to-long v2, v0

    iput-wide v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationDuration:J

    .line 913
    :cond_19
    iget-wide v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStartTime:J

    sub-long v2, p1, v2

    long-to-float v0, v2

    iget-wide v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationDuration:J

    long-to-float v2, v2

    div-float/2addr v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 914
    .local v0, "t":F
    iget v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationTarget:F

    cmpl-float v3, v3, v2

    if-nez v3, :cond_31

    sget-object v3, Lcom/android/server/wm/DockedStackDividerController;->IME_ADJUST_ENTRY_INTERPOLATOR:Landroid/view/animation/Interpolator;

    goto :goto_33

    :cond_31
    sget-object v3, Lcom/android/server/wm/AppTransition;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 915
    :goto_33
    invoke-interface {v3, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 916
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationTarget:F

    iget v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerAnimationTarget:F

    .line 917
    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/wm/DisplayContent;->animateForIme(FFF)Z

    move-result v3

    .line 918
    .local v3, "updated":Z
    if-eqz v3, :cond_4a

    .line 919
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 921
    :cond_4a
    cmpl-float v2, v0, v2

    if-ltz v2, :cond_5a

    .line 922
    iget v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationTarget:F

    iput v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastAnimationProgress:F

    .line 923
    iget v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerAnimationTarget:F

    iput v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastDividerProgress:F

    .line 924
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForIme:Z

    .line 925
    return v1

    .line 927
    :cond_5a
    return v1
.end method

.method private animateForMinimizedDockedStack(J)Z
    .registers 8
    .param p1, "now"    # J

    .line 932
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStackIgnoringVisibility()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 933
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    iget-boolean v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStarted:Z

    const/4 v2, 0x1

    if-nez v1, :cond_18

    .line 934
    iput-boolean v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStarted:Z

    .line 935
    iput-wide p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStartTime:J

    .line 936
    iget-boolean v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDock:Z

    .line 937
    invoke-virtual {p0}, Lcom/android/server/wm/DockedStackDividerController;->isHomeStackResizable()Z

    move-result v3

    .line 936
    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedStackMinimizedChanged(ZZZ)V

    .line 939
    :cond_18
    iget-wide v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStartTime:J

    sub-long v3, p1, v3

    long-to-float v1, v3

    iget-wide v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationDuration:J

    long-to-float v3, v3

    div-float/2addr v1, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 940
    .local v1, "t":F
    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->isAnimationMaximizing()Z

    move-result v4

    if-eqz v4, :cond_30

    sget-object v4, Lcom/android/server/wm/AppTransition;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    goto :goto_32

    :cond_30
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDockInterpolator:Landroid/view/animation/Interpolator;

    .line 941
    :goto_32
    invoke-interface {v4, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 942
    if-eqz v0, :cond_49

    .line 943
    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/DockedStackDividerController;->getMinimizeAmount(Lcom/android/server/wm/TaskStack;F)F

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/server/wm/TaskStack;->setAdjustedForMinimizedDock(F)Z

    move-result v4

    if-eqz v4, :cond_49

    .line 944
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 947
    :cond_49
    cmpl-float v3, v1, v3

    if-ltz v3, :cond_51

    .line 948
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForMinimizedDockedStack:Z

    .line 949
    return v2

    .line 951
    :cond_51
    return v2
.end method

.method private clearImeAdjustAnimation()Z
    .registers 3

    .line 797
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->clearImeAdjustAnimation()Z

    move-result v0

    .line 798
    .local v0, "changed":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForIme:Z

    .line 799
    return v0
.end method

.method private containsAppInDockedStack(Landroid/util/ArraySet;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;)Z"
        }
    .end annotation

    .line 684
    .local p1, "apps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_1e

    .line 685
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    .line 686
    .local v2, "token":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_1b

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->inSplitScreenPrimaryWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 687
    return v1

    .line 684
    .end local v2    # "token":Lcom/android/server/wm/AppWindowToken;
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 690
    .end local v0    # "i":I
    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method private getClipRevealMeetFraction(Lcom/android/server/wm/TaskStack;)F
    .registers 8
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;

    .line 1004
    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->isAnimationMaximizing()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_41

    if-eqz p1, :cond_41

    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 1005
    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->hadClipRevealAnimation()Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_41

    .line 1008
    :cond_15
    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->getMinimizeDistance()I

    move-result v0

    .line 1009
    .local v0, "minimizeDistance":I
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->getLastClipRevealMaxTranslation()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    .line 1011
    .local v2, "fraction":F
    const/4 v3, 0x0

    const v4, 0x3ecccccd    # 0.4f

    sub-float v5, v2, v4

    div-float/2addr v5, v4

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 1013
    .local v3, "t":F
    const v4, 0x3f19999a    # 0.6f

    sub-float/2addr v1, v3

    const v5, 0x3ecccccc    # 0.39999998f

    mul-float/2addr v1, v5

    add-float/2addr v4, v1

    return v4

    .line 1006
    .end local v0    # "minimizeDistance":I
    .end local v2    # "fraction":F
    .end local v3    # "t":F
    :cond_41
    :goto_41
    return v1
.end method

.method private getMinimizeAmount(Lcom/android/server/wm/TaskStack;F)F
    .registers 5
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;
    .param p2, "t"    # F

    .line 967
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DockedStackDividerController;->getInterpolatedAnimationValue(F)F

    move-result v0

    .line 968
    .local v0, "naturalAmount":F
    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->isAnimationMaximizing()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 969
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wm/DockedStackDividerController;->adjustMaximizeAmount(Lcom/android/server/wm/TaskStack;FF)F

    move-result v1

    return v1

    .line 971
    :cond_f
    return v0
.end method

.method private getResizeDimLayer()I
    .registers 3

    .line 635
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mWindow:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mWindow:Lcom/android/server/wm/WindowState;

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    add-int/lit8 v1, v0, -0x1

    nop

    :cond_c
    return v1
.end method

.method private initSnapAlgorithmForRotations()V
    .registers 29

    .line 271
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 274
    .local v1, "baseConfig":Landroid/content/res/Configuration;
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    .line 275
    .local v2, "config":Landroid/content/res/Configuration;
    const/4 v3, 0x0

    move v4, v3

    .local v4, "rotation":I
    :goto_f
    const/4 v5, 0x4

    if-ge v4, v5, :cond_102

    .line 276
    const/4 v12, 0x1

    if-eq v4, v12, :cond_1b

    const/4 v5, 0x3

    if-ne v4, v5, :cond_19

    goto :goto_1b

    :cond_19
    move v5, v3

    goto :goto_1c

    :cond_1b
    :goto_1b
    move v5, v12

    :goto_1c
    move v13, v5

    .line 277
    .local v13, "rotated":Z
    if-eqz v13, :cond_24

    .line 278
    iget-object v5, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v5, v5, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    goto :goto_28

    .line 279
    :cond_24
    iget-object v5, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v5, v5, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    :goto_28
    move v15, v5

    .line 280
    .local v15, "dw":I
    if-eqz v13, :cond_30

    .line 281
    iget-object v5, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v5, v5, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    goto :goto_34

    .line 282
    :cond_30
    iget-object v5, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v5, v5, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    :goto_34
    move v14, v5

    .line 283
    .local v14, "dh":I
    iget-object v5, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 284
    invoke-virtual {v5, v4}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v21

    .line 285
    .local v21, "displayCutout":Landroid/view/DisplayCutout;
    iget-object v5, v0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v10, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    move v6, v4

    move v7, v15

    move v8, v14

    move-object/from16 v9, v21

    invoke-interface/range {v5 .. v10}, Lcom/android/server/policy/WindowManagerPolicy;->getStableInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 286
    invoke-virtual {v2}, Landroid/content/res/Configuration;->unset()V

    .line 287
    if-gt v15, v14, :cond_54

    move v5, v12

    goto :goto_55

    :cond_54
    const/4 v5, 0x2

    :goto_55
    iput v5, v2, Landroid/content/res/Configuration;->orientation:I

    .line 289
    iget-object v5, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v22

    .line 290
    .local v22, "displayId":I
    iget-object v5, v0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v9, v1, Landroid/content/res/Configuration;->uiMode:I

    move v6, v15

    move v7, v14

    move v8, v4

    move/from16 v10, v22

    move-object/from16 v11, v21

    invoke-interface/range {v5 .. v11}, Lcom/android/server/policy/WindowManagerPolicy;->getNonDecorDisplayWidth(IIIIILandroid/view/DisplayCutout;)I

    move-result v23

    .line 292
    .local v23, "appWidth":I
    iget-object v5, v0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v9, v1, Landroid/content/res/Configuration;->uiMode:I

    invoke-interface/range {v5 .. v11}, Lcom/android/server/policy/WindowManagerPolicy;->getNonDecorDisplayHeight(IIIIILandroid/view/DisplayCutout;)I

    move-result v24

    .line 294
    .local v24, "appHeight":I
    iget-object v5, v0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v10, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    move v6, v4

    move v7, v15

    move v8, v14

    move-object/from16 v9, v21

    invoke-interface/range {v5 .. v10}, Lcom/android/server/policy/WindowManagerPolicy;->getNonDecorInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 295
    iget-object v5, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v11, v5, Landroid/graphics/Rect;->left:I

    .line 296
    .local v11, "leftInset":I
    iget-object v5, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v10, v5, Landroid/graphics/Rect;->top:I

    .line 298
    .local v10, "topInset":I
    iget-object v5, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    add-int v6, v11, v23

    add-int v7, v10, v24

    invoke-virtual {v5, v11, v10, v6, v7}, Landroid/app/WindowConfiguration;->setAppBounds(IIII)V

    .line 301
    iget-object v5, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v9, v5, Landroid/util/DisplayMetrics;->density:F

    .line 302
    .local v9, "density":F
    iget-object v5, v0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v8, v1, Landroid/content/res/Configuration;->uiMode:I

    move v6, v15

    move v7, v14

    move/from16 v16, v8

    move v8, v4

    move/from16 v25, v9

    move/from16 v9, v16

    .end local v9    # "density":F
    .local v25, "density":F
    move/from16 v26, v10

    move/from16 v10, v22

    .end local v10    # "topInset":I
    .local v26, "topInset":I
    move/from16 v27, v11

    move-object/from16 v11, v21

    .end local v11    # "leftInset":I
    .local v27, "leftInset":I
    invoke-interface/range {v5 .. v11}, Lcom/android/server/policy/WindowManagerPolicy;->getConfigDisplayWidth(IIIIILandroid/view/DisplayCutout;)I

    move-result v5

    int-to-float v5, v5

    div-float v5, v5, v25

    float-to-int v5, v5

    iput v5, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 304
    iget-object v5, v0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v9, v1, Landroid/content/res/Configuration;->uiMode:I

    invoke-interface/range {v5 .. v11}, Lcom/android/server/policy/WindowManagerPolicy;->getConfigDisplayHeight(IIIIILandroid/view/DisplayCutout;)I

    move-result v5

    int-to-float v5, v5

    div-float v5, v5, v25

    float-to-int v5, v5

    iput v5, v2, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 306
    iget-object v5, v0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v5

    .line 307
    .local v5, "rotationContext":Landroid/content/Context;
    iget-object v6, v0, Lcom/android/server/wm/DockedStackDividerController;->mSnapAlgorithmForRotation:[Lcom/android/internal/policy/DividerSnapAlgorithm;

    new-instance v7, Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 308
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DockedStackDividerController;->getContentWidth()I

    move-result v18

    iget v9, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v9, v12, :cond_eb

    move/from16 v19, v12

    goto :goto_ed

    :cond_eb
    move/from16 v19, v3

    :goto_ed
    iget-object v9, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    move v10, v14

    move-object v14, v7

    .end local v14    # "dh":I
    .local v10, "dh":I
    move v11, v15

    move-object v15, v8

    .end local v15    # "dw":I
    .local v11, "dw":I
    move/from16 v16, v11

    move/from16 v17, v10

    move-object/from16 v20, v9

    invoke-direct/range {v14 .. v20}, Lcom/android/internal/policy/DividerSnapAlgorithm;-><init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;)V

    aput-object v7, v6, v4

    .line 275
    .end local v5    # "rotationContext":Landroid/content/Context;
    .end local v10    # "dh":I
    .end local v11    # "dw":I
    .end local v13    # "rotated":Z
    .end local v21    # "displayCutout":Landroid/view/DisplayCutout;
    .end local v22    # "displayId":I
    .end local v23    # "appWidth":I
    .end local v24    # "appHeight":I
    .end local v25    # "density":F
    .end local v26    # "topInset":I
    .end local v27    # "leftInset":I
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_f

    .line 311
    .end local v4    # "rotation":I
    :cond_102
    return-void
.end method

.method private isAnimationMaximizing()Z
    .registers 3

    .line 891
    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationTarget:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method private isWithinDisplay(Lcom/android/server/wm/Task;)Z
    .registers 4
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 746
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 747
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;)V

    .line 748
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$startImeAdjustAnimation$0(Lcom/android/server/wm/DockedStackDividerController;ZZ)V
    .registers 10
    .param p1, "adjustedForIme"    # Z
    .param p2, "adjustedForDivider"    # Z

    .line 856
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 857
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStartDelayed:Z

    .line 858
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDelayedImeWin:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_14

    .line 859
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDelayedImeWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->endDelayingAnimationStart()V

    .line 863
    :cond_14
    const-wide/16 v2, 0x0

    .line 864
    .local v2, "duration":J
    iget-boolean v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForIme:Z

    if-ne v4, p1, :cond_21

    iget-boolean v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForDivider:Z

    if-ne v4, p2, :cond_21

    .line 866
    const-wide/16 v2, 0x118

    goto :goto_53

    .line 868
    :cond_21
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IME adjust changed while waiting for drawn: adjustedForIme="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " adjustedForDivider="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " mAdjustedForIme="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForIme:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " mAdjustedForDivider="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForDivider:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    :goto_53
    iget-boolean v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForIme:Z

    if-nez v4, :cond_5d

    iget-boolean v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForDivider:Z

    if-eqz v4, :cond_5c

    goto :goto_5d

    :cond_5c
    goto :goto_5e

    :cond_5d
    :goto_5d
    const/4 v1, 0x1

    :goto_5e
    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/wm/DockedStackDividerController;->notifyAdjustedForImeChanged(ZJ)V

    .line 876
    .end local v2    # "duration":J
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_5 .. :try_end_62} :catchall_66

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 877
    return-void

    .line 876
    :catchall_66
    move-exception v1

    :try_start_67
    monitor-exit v0
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private loadDimens()V
    .registers 4

    .line 314
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 315
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105008b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerWindowWidth:I

    .line 317
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105008a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    .line 319
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 320
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 319
    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerWindowWidthInactive:I

    .line 321
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10501d4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mTaskHeightInMinimizedMode:I

    .line 323
    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->initSnapAlgorithmForRotations()V

    .line 324
    return-void
.end method

.method private notifyAdjustedForImeChanged(ZJ)V
    .registers 10
    .param p1, "adjustedForIme"    # Z
    .param p2, "animDuration"    # J

    .line 576
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 577
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_20

    .line 578
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/view/IDockedStackListener;

    .line 580
    .local v2, "listener":Landroid/view/IDockedStackListener;
    :try_start_11
    invoke-interface {v2, p1, p2, p3}, Landroid/view/IDockedStackListener;->onAdjustedForImeChanged(ZJ)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_15

    .line 583
    goto :goto_1d

    .line 581
    :catch_15
    move-exception v3

    .line 582
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "WindowManager"

    const-string v5, "Error delivering adjusted for ime changed event."

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 577
    .end local v2    # "listener":Landroid/view/IDockedStackListener;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 585
    .end local v1    # "i":I
    :cond_20
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 586
    return-void
.end method

.method private notifyDockedDividerVisibilityChanged(Z)V
    .registers 8
    .param p1, "visible"    # Z

    .line 451
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 452
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_20

    .line 453
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/view/IDockedStackListener;

    .line 455
    .local v2, "listener":Landroid/view/IDockedStackListener;
    :try_start_11
    invoke-interface {v2, p1}, Landroid/view/IDockedStackListener;->onDividerVisibilityChanged(Z)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_15

    .line 458
    goto :goto_1d

    .line 456
    :catch_15
    move-exception v3

    .line 457
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "WindowManager"

    const-string v5, "Error delivering divider visibility changed event."

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 452
    .end local v2    # "listener":Landroid/view/IDockedStackListener;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 460
    .end local v1    # "i":I
    :cond_20
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 461
    return-void
.end method

.method private notifyDockedStackMinimizedChanged(ZZZ)V
    .registers 12
    .param p1, "minimizedDock"    # Z
    .param p2, "animate"    # Z
    .param p3, "isHomeStackResizable"    # Z

    .line 534
    const-wide/16 v0, 0x0

    .line 535
    .local v0, "animDuration":J
    if-eqz p2, :cond_33

    .line 536
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 537
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStackIgnoringVisibility()Lcom/android/server/wm/TaskStack;

    move-result-object v2

    .line 538
    .local v2, "stack":Lcom/android/server/wm/TaskStack;
    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->isAnimationMaximizing()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 539
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->getLastClipRevealTransitionDuration()J

    move-result-wide v3

    goto :goto_1b

    .line 540
    :cond_19
    const-wide/16 v3, 0x150

    .line 541
    .local v3, "transitionDuration":J
    :goto_1b
    long-to-float v5, v3

    iget-object v6, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 542
    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v6

    mul-float/2addr v5, v6

    float-to-long v5, v5

    iput-wide v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationDuration:J

    .line 543
    invoke-direct {p0, v2}, Lcom/android/server/wm/DockedStackDividerController;->getClipRevealMeetFraction(Lcom/android/server/wm/TaskStack;)F

    move-result v5

    iput v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mMaximizeMeetFraction:F

    .line 544
    iget-wide v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationDuration:J

    long-to-float v5, v5

    iget v6, p0, Lcom/android/server/wm/DockedStackDividerController;->mMaximizeMeetFraction:F

    mul-float/2addr v5, v6

    float-to-long v0, v5

    .line 546
    .end local v2    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v3    # "transitionDuration":J
    :cond_33
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0x35

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 547
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 548
    nop

    .line 547
    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 548
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 549
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 550
    .local v2, "size":I
    nop

    .local v4, "i":I
    :goto_50
    move v3, v4

    .end local v4    # "i":I
    .local v3, "i":I
    if-ge v3, v2, :cond_6a

    .line 551
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/view/IDockedStackListener;

    .line 553
    .local v4, "listener":Landroid/view/IDockedStackListener;
    :try_start_5b
    invoke-interface {v4, p1, v0, v1, p3}, Landroid/view/IDockedStackListener;->onDockedStackMinimizedChanged(ZJZ)V
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_5b .. :try_end_5e} :catch_5f

    .line 557
    goto :goto_67

    .line 555
    :catch_5f
    move-exception v5

    .line 556
    .local v5, "e":Landroid/os/RemoteException;
    const-string v6, "WindowManager"

    const-string v7, "Error delivering minimized dock changed event."

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 550
    .end local v4    # "listener":Landroid/view/IDockedStackListener;
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_67
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    goto :goto_50

    .line 559
    .end local v4    # "i":I
    :cond_6a
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 560
    return-void
.end method

.method private resetDragResizingChangeReported()V
    .registers 4

    .line 363
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    sget-object v1, Lcom/android/server/wm/-$$Lambda$vhwCX-wzYksBgFM46tASKUCeQRc;->INSTANCE:Lcom/android/server/wm/-$$Lambda$vhwCX-wzYksBgFM46tASKUCeQRc;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 365
    return-void
.end method

.method private setMinimizedDockedStack(ZZ)V
    .registers 9
    .param p1, "minimizedDock"    # Z
    .param p2, "animate"    # Z

    .line 759
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDock:Z

    .line 760
    .local v0, "wasMinimized":Z
    iput-boolean p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDock:Z

    .line 761
    if-ne p1, v0, :cond_7

    .line 762
    return-void

    .line 765
    :cond_7
    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->clearImeAdjustAnimation()Z

    move-result v1

    .line 766
    .local v1, "imeChanged":Z
    const/4 v2, 0x0

    .line 767
    .local v2, "minimizedChange":Z
    invoke-virtual {p0}, Lcom/android/server/wm/DockedStackDividerController;->isHomeStackResizable()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_18

    .line 768
    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedStackMinimizedChanged(ZZZ)V

    .line 770
    const/4 v2, 0x1

    goto :goto_35

    .line 772
    :cond_18
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-eqz p1, :cond_29

    .line 773
    if-eqz p2, :cond_23

    .line 774
    invoke-direct {p0, v5, v3}, Lcom/android/server/wm/DockedStackDividerController;->startAdjustAnimation(FF)V

    goto :goto_35

    .line 776
    :cond_23
    invoke-direct {p0, v4}, Lcom/android/server/wm/DockedStackDividerController;->setMinimizedDockedStack(Z)Z

    move-result v3

    or-int/2addr v2, v3

    goto :goto_35

    .line 779
    :cond_29
    if-eqz p2, :cond_2f

    .line 780
    invoke-direct {p0, v3, v5}, Lcom/android/server/wm/DockedStackDividerController;->startAdjustAnimation(FF)V

    goto :goto_35

    .line 782
    :cond_2f
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/wm/DockedStackDividerController;->setMinimizedDockedStack(Z)Z

    move-result v3

    or-int/2addr v2, v3

    .line 786
    :goto_35
    if-nez v1, :cond_39

    if-eqz v2, :cond_63

    .line 787
    :cond_39
    if-eqz v1, :cond_5c

    if-nez v2, :cond_5c

    .line 788
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setMinimizedDockedStack: IME adjust changed due to minimizing, minimizedDock="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " minimizedChange="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    :cond_5c
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 794
    :cond_63
    return-void
.end method

.method private setMinimizedDockedStack(Z)Z
    .registers 5
    .param p1, "minimized"    # Z

    .line 885
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStackIgnoringVisibility()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 886
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {p0}, Lcom/android/server/wm/DockedStackDividerController;->isHomeStackResizable()Z

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v1}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedStackMinimizedChanged(ZZZ)V

    .line 887
    if-eqz v0, :cond_1e

    if-eqz p1, :cond_15

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskStack;->setAdjustedForMinimizedDock(F)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v2, 0x1

    nop

    :cond_1e
    return v2
.end method

.method private startAdjustAnimation(FF)V
    .registers 4
    .param p1, "from"    # F
    .param p2, "to"    # F

    .line 803
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForMinimizedDockedStack:Z

    .line 804
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStarted:Z

    .line 805
    iput p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStart:F

    .line 806
    iput p2, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationTarget:F

    .line 807
    return-void
.end method

.method private startImeAdjustAnimation(ZZLcom/android/server/wm/WindowState;)V
    .registers 9
    .param p1, "adjustedForIme"    # Z
    .param p2, "adjustedForDivider"    # Z
    .param p3, "imeWin"    # Lcom/android/server/wm/WindowState;

    .line 815
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForIme:Z

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v0, :cond_22

    .line 816
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForIme:Z

    if-eqz v0, :cond_d

    move v0, v2

    goto :goto_e

    :cond_d
    move v0, v1

    :goto_e
    iput v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStart:F

    .line 817
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForDivider:Z

    if-eqz v0, :cond_16

    move v0, v2

    goto :goto_17

    :cond_16
    move v0, v1

    :goto_17
    iput v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerAnimationStart:F

    .line 818
    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStart:F

    iput v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastAnimationProgress:F

    .line 819
    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerAnimationStart:F

    iput v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastDividerProgress:F

    goto :goto_2a

    .line 821
    :cond_22
    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastAnimationProgress:F

    iput v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStart:F

    .line 822
    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastDividerProgress:F

    iput v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerAnimationStart:F

    .line 824
    :goto_2a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForIme:Z

    .line 825
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStarted:Z

    .line 826
    if-eqz p1, :cond_34

    move v4, v2

    goto :goto_35

    :cond_34
    move v4, v1

    :goto_35
    iput v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationTarget:F

    .line 827
    if-eqz p2, :cond_3b

    move v1, v2

    nop

    :cond_3b
    iput v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerAnimationTarget:F

    .line 829
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->beginImeAdjustAnimation()V

    .line 833
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_87

    .line 834
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 835
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 837
    iput-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStartDelayed:Z

    .line 838
    if-eqz p3, :cond_70

    .line 841
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDelayedImeWin:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_6b

    .line 842
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDelayedImeWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->endDelayingAnimationStart()V

    .line 844
    :cond_6b
    iput-object p3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDelayedImeWin:Lcom/android/server/wm/WindowState;

    .line 845
    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->startDelayingAnimationStart()V

    .line 852
    :cond_70
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_7d

    .line 853
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 855
    :cond_7d
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$DockedStackDividerController$5bA1vUPZ2WAWRKwBSEsFIfWUu9o;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/-$$Lambda$DockedStackDividerController$5bA1vUPZ2WAWRKwBSEsFIfWUu9o;-><init>(Lcom/android/server/wm/DockedStackDividerController;ZZ)V

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    goto :goto_93

    .line 879
    :cond_87
    if-nez p1, :cond_8e

    if-eqz p2, :cond_8c

    goto :goto_8e

    :cond_8c
    move v0, v3

    nop

    :cond_8e
    :goto_8e
    const-wide/16 v1, 0x118

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/wm/DockedStackDividerController;->notifyAdjustedForImeChanged(ZJ)V

    .line 882
    :goto_93
    return-void
.end method

.method private wasVisible()Z
    .registers 2

    .line 391
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastVisibility:Z

    return v0
.end method


# virtual methods
.method public animate(J)Z
    .registers 5
    .param p1, "now"    # J

    .line 895
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mWindow:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 896
    return v1

    .line 898
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForMinimizedDockedStack:Z

    if-eqz v0, :cond_f

    .line 899
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DockedStackDividerController;->animateForMinimizedDockedStack(J)Z

    move-result v0

    return v0

    .line 900
    :cond_f
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForIme:Z

    if-eqz v0, :cond_18

    .line 901
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DockedStackDividerController;->animateForIme(J)Z

    move-result v0

    return v0

    .line 903
    :cond_18
    return v1
.end method

.method canPrimaryStackDockTo(I)Z
    .registers 10
    .param p1, "dockSide"    # I

    .line 471
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 472
    .local v0, "di":Landroid/view/DisplayInfo;
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mOriginalDockedSide:I

    iget v5, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v6, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v7, v0, Landroid/view/DisplayInfo;->rotation:I

    move v3, p1

    invoke-interface/range {v2 .. v7}, Lcom/android/server/policy/WindowManagerPolicy;->isDockSideAllowed(IIIII)Z

    move-result v1

    return v1
.end method

.method checkMinimizeChanged(Z)V
    .registers 14
    .param p1, "animate"    # Z

    .line 698
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStackIgnoringVisibility()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    if-nez v0, :cond_9

    .line 699
    return-void

    .line 701
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getHomeStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 702
    .local v0, "homeStack":Lcom/android/server/wm/TaskStack;
    if-nez v0, :cond_12

    .line 703
    return-void

    .line 705
    :cond_12
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->findHomeTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 706
    .local v1, "homeTask":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_94

    invoke-direct {p0, v1}, Lcom/android/server/wm/DockedStackDividerController;->isWithinDisplay(Lcom/android/server/wm/Task;)Z

    move-result v2

    if-nez v2, :cond_20

    goto/16 :goto_94

    .line 712
    :cond_20
    iget-boolean v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDock:Z

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mKeyguardOrAodShowingOnDefaultDisplay:Z

    if-eqz v2, :cond_2b

    .line 713
    return-void

    .line 715
    :cond_2b
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->getTopStackInWindowingMode(I)Lcom/android/server/wm/TaskStack;

    move-result-object v2

    .line 717
    .local v2, "topSecondaryStack":Lcom/android/server/wm/TaskStack;
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v3

    .line 718
    .local v3, "recentsAnim":Lcom/android/server/wm/RecentsAnimationController;
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_44

    .line 719
    invoke-virtual {v3}, Lcom/android/server/wm/RecentsAnimationController;->isSplitScreenMinimized()Z

    move-result v6

    if-eqz v6, :cond_44

    move v6, v5

    goto :goto_45

    :cond_44
    move v6, v4

    .line 722
    .local v6, "minimizedForRecentsAnimation":Z
    :goto_45
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopVisibleAppToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v7

    if-eqz v7, :cond_55

    .line 723
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopVisibleAppToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v7

    iget-boolean v7, v7, Lcom/android/server/wm/AppWindowToken;->mIsDummyVisible:Z

    if-nez v7, :cond_55

    move v7, v5

    goto :goto_56

    :cond_55
    move v7, v4

    .line 724
    .local v7, "homeVisible":Z
    :goto_56
    if-eqz v7, :cond_64

    if-eqz v2, :cond_64

    .line 727
    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskStack;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result v8

    if-ltz v8, :cond_62

    move v8, v5

    goto :goto_63

    :cond_62
    move v8, v4

    :goto_63
    move v7, v8

    .line 732
    :cond_64
    iget-object v8, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v8, v5}, Lcom/android/server/wm/DisplayContent;->getTopStackInWindowingMode(I)Lcom/android/server/wm/TaskStack;

    move-result-object v8

    .line 734
    .local v8, "fullscreenStack":Lcom/android/server/wm/TaskStack;
    if-eqz v8, :cond_76

    if-eq v8, v0, :cond_76

    .line 735
    invoke-virtual {v8}, Lcom/android/server/wm/TaskStack;->isVisible()Z

    move-result v9

    if-eqz v9, :cond_76

    move v9, v5

    goto :goto_77

    :cond_76
    move v9, v4

    .line 736
    .local v9, "fullscreenTaskVisible":Z
    :goto_77
    if-eqz v9, :cond_89

    .line 737
    invoke-virtual {v8}, Lcom/android/server/wm/TaskStack;->getTopVisibleTask()Lcom/android/server/wm/Task;

    move-result-object v10

    .line 738
    .local v10, "topfullscreenStackTask":Lcom/android/server/wm/Task;
    if-eqz v10, :cond_87

    .line 739
    invoke-virtual {v10}, Lcom/android/server/wm/Task;->isFullscreen()Z

    move-result v11

    if-eqz v11, :cond_87

    move v11, v5

    goto :goto_88

    :cond_87
    move v11, v4

    :goto_88
    move v9, v11

    .line 741
    .end local v10    # "topfullscreenStackTask":Lcom/android/server/wm/Task;
    :cond_89
    if-nez v7, :cond_8f

    if-eqz v9, :cond_8e

    goto :goto_8f

    :cond_8e
    goto :goto_90

    :cond_8f
    :goto_8f
    move v4, v5

    :goto_90
    invoke-direct {p0, v4, p1}, Lcom/android/server/wm/DockedStackDividerController;->setMinimizedDockedStack(ZZ)V

    .line 743
    return-void

    .line 707
    .end local v2    # "topSecondaryStack":Lcom/android/server/wm/TaskStack;
    .end local v3    # "recentsAnim":Lcom/android/server/wm/RecentsAnimationController;
    .end local v6    # "minimizedForRecentsAnimation":Z
    .end local v7    # "homeVisible":Z
    .end local v8    # "fullscreenStack":Lcom/android/server/wm/TaskStack;
    .end local v9    # "fullscreenTaskVisible":Z
    :cond_94
    :goto_94
    return-void
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 1026
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "DockedStackDividerController"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1027
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mLastVisibility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastVisibility:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1028
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mMinimizedDock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDock:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1029
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mAdjustedForIme="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForIme:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1030
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mAdjustedForDivider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForDivider:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1031
    return-void
.end method

.method getContentInsets()I
    .registers 2

    .line 339
    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    return v0
.end method

.method getContentWidth()I
    .registers 4

    .line 335
    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerWindowWidth:I

    iget v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    const/4 v2, 0x2

    mul-int/2addr v2, v1

    sub-int/2addr v0, v2

    return v0
.end method

.method getContentWidthInactive()I
    .registers 2

    .line 343
    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerWindowWidthInactive:I

    return v0
.end method

.method getDockSide(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .registers 8
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "displayRect"    # Landroid/graphics/Rect;
    .param p3, "orientation"    # I

    .line 210
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p3, v1, :cond_1f

    .line 212
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    .line 213
    .local v1, "diff":I
    if-lez v1, :cond_12

    .line 214
    return v0

    .line 215
    :cond_12
    const/4 v2, 0x4

    if-gez v1, :cond_16

    .line 216
    return v2

    .line 218
    :cond_16
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DockedStackDividerController;->canPrimaryStackDockTo(I)Z

    move-result v3

    if-eqz v3, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v2

    :goto_1e
    return v0

    .line 219
    .end local v1    # "diff":I
    :cond_1f
    if-ne p3, v0, :cond_3c

    .line 221
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v2

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    sub-int/2addr v0, v2

    .line 222
    .local v0, "diff":I
    if-lez v0, :cond_2f

    .line 223
    return v1

    .line 224
    :cond_2f
    const/4 v2, 0x3

    if-gez v0, :cond_33

    .line 225
    return v2

    .line 227
    :cond_33
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DockedStackDividerController;->canPrimaryStackDockTo(I)Z

    move-result v3

    if-eqz v3, :cond_3a

    goto :goto_3b

    :cond_3a
    move v1, v2

    :goto_3b
    return v1

    .line 229
    .end local v0    # "diff":I
    :cond_3c
    const/4 v0, -0x1

    return v0
.end method

.method getHomeStackBoundsInDockedMode(Landroid/graphics/Rect;)V
    .registers 12
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .line 233
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 234
    .local v0, "di":Landroid/view/DisplayInfo;
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v3, v0, Landroid/view/DisplayInfo;->rotation:I

    iget v4, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v5, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iget-object v6, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iget-object v7, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    invoke-interface/range {v2 .. v7}, Lcom/android/server/policy/WindowManagerPolicy;->getStableInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 236
    iget v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerWindowWidth:I

    iget v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    const/4 v3, 0x2

    mul-int/2addr v3, v2

    sub-int/2addr v1, v3

    .line 237
    .local v1, "dividerSize":I
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 240
    .local v2, "configuration":Landroid/content/res/Configuration;
    iget v3, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_3a

    .line 241
    iget v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mTaskHeightInMinimizedMode:I

    add-int/2addr v3, v1

    iget-object v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v5

    iget v5, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v6, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {p1, v4, v3, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_6a

    .line 246
    :cond_3a
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStackIgnoringVisibility()Lcom/android/server/wm/TaskStack;

    move-result-object v3

    .line 247
    .local v3, "stack":Lcom/android/server/wm/TaskStack;
    iget v6, p0, Lcom/android/server/wm/DockedStackDividerController;->mTaskHeightInMinimizedMode:I

    add-int/2addr v6, v1

    iget-object v7, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v7

    .line 248
    .local v6, "primaryTaskWidth":I
    iget-object v7, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    .line 249
    .local v7, "left":I
    iget v8, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v9, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    .line 250
    .local v8, "right":I
    if-eqz v3, :cond_65

    .line 251
    invoke-virtual {v3}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v9

    if-ne v9, v5, :cond_5d

    .line 252
    add-int/2addr v7, v6

    goto :goto_65

    .line 253
    :cond_5d
    invoke-virtual {v3}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v5

    const/4 v9, 0x3

    if-ne v5, v9, :cond_65

    .line 254
    sub-int/2addr v8, v6

    .line 257
    :cond_65
    :goto_65
    iget v5, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {p1, v7, v4, v8, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 259
    .end local v3    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v6    # "primaryTaskWidth":I
    .end local v7    # "left":I
    .end local v8    # "right":I
    :goto_6a
    return-void
.end method

.method getImeHeightAdjustedFor()I
    .registers 2

    .line 412
    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mImeHeight:I

    return v0
.end method

.method getInterpolatedAnimationValue(F)F
    .registers 5
    .param p1, "t"    # F

    .line 956
    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationTarget:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    iget v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStart:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method getInterpolatedDividerValue(F)F
    .registers 5
    .param p1, "t"    # F

    .line 960
    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerAnimationTarget:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    iget v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerAnimationStart:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method getSmallestWidthDpForBounds(Landroid/graphics/Rect;)I
    .registers 25
    .param p1, "bounds"    # Landroid/graphics/Rect;

    move-object/from16 v0, p0

    .line 160
    iget-object v1, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    .line 162
    .local v1, "di":Landroid/view/DisplayInfo;
    iget-object v2, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 163
    .local v2, "baseDisplayWidth":I
    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v3, v3, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 164
    .local v3, "baseDisplayHeight":I
    const v4, 0x7fffffff

    .line 168
    .local v4, "minWidth":I
    const/4 v5, 0x0

    move v6, v4

    move v4, v5

    .local v4, "rotation":I
    .local v6, "minWidth":I
    :goto_16
    const/4 v7, 0x4

    if-ge v4, v7, :cond_d2

    .line 169
    iget-object v7, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v13, p1

    invoke-virtual {v7, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 170
    iget-object v7, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v8, v1, Landroid/view/DisplayInfo;->rotation:I

    iget-object v9, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8, v4, v9}, Lcom/android/server/wm/DisplayContent;->rotateBounds(IILandroid/graphics/Rect;)V

    .line 171
    const/4 v7, 0x1

    if-eq v4, v7, :cond_32

    const/4 v8, 0x3

    if-ne v4, v8, :cond_30

    goto :goto_32

    :cond_30
    move v8, v5

    goto :goto_33

    :cond_32
    :goto_32
    move v8, v7

    :goto_33
    move v14, v8

    .line 172
    .local v14, "rotated":Z
    iget-object v8, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    .line 173
    if-eqz v14, :cond_3a

    .line 174
    move v9, v3

    goto :goto_3b

    :cond_3a
    move v9, v2

    :goto_3b
    if-eqz v14, :cond_3f

    .line 172
    move v10, v2

    goto :goto_40

    :cond_3f
    move v10, v3

    :goto_40
    invoke-virtual {v8, v5, v5, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 175
    iget-object v8, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    iget-object v9, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-gt v8, v9, :cond_52

    .line 176
    goto :goto_53

    .line 177
    :cond_52
    const/4 v7, 0x2

    :goto_53
    move v15, v7

    .line 178
    .local v15, "orientation":I
    iget-object v7, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget-object v8, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v0, v7, v8, v15}, Lcom/android/server/wm/DockedStackDividerController;->getDockSide(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v12

    .line 179
    .local v12, "dockSide":I
    iget-object v7, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    .line 180
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DockedStackDividerController;->getContentWidth()I

    move-result v8

    .line 179
    invoke-static {v7, v12, v8}, Lcom/android/internal/policy/DockedDividerUtils;->calculatePositionForBounds(Landroid/graphics/Rect;II)I

    move-result v11

    .line 182
    .local v11, "position":I
    iget-object v7, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v7, v4}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v7

    .line 183
    invoke-virtual {v7}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v22

    .line 187
    .local v22, "displayCutout":Landroid/view/DisplayCutout;
    iget-object v7, v0, Lcom/android/server/wm/DockedStackDividerController;->mSnapAlgorithmForRotation:[Lcom/android/internal/policy/DividerSnapAlgorithm;

    aget-object v7, v7, v4

    .line 188
    invoke-virtual {v7, v11}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateNonDismissingSnapTarget(I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v7

    iget v10, v7, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 189
    .local v10, "snappedPosition":I
    iget-object v7, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget-object v8, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    .line 190
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v19

    iget-object v8, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DockedStackDividerController;->getContentWidth()I

    move-result v21

    .line 189
    move/from16 v16, v10

    move/from16 v17, v12

    move-object/from16 v18, v7

    invoke-static/range {v16 .. v21}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;III)V

    .line 191
    iget-object v7, v0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v8, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v9

    iget-object v8, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v16

    iget-object v8, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect3:Landroid/graphics/Rect;

    move-object/from16 v17, v8

    move v8, v4

    move/from16 v18, v10

    move/from16 v10, v16

    .end local v10    # "snappedPosition":I
    .local v18, "snappedPosition":I
    move/from16 v16, v11

    move-object/from16 v11, v22

    .end local v11    # "position":I
    .local v16, "position":I
    move/from16 v19, v12

    move-object/from16 v12, v17

    .end local v12    # "dockSide":I
    .local v19, "dockSide":I
    invoke-interface/range {v7 .. v12}, Lcom/android/server/policy/WindowManagerPolicy;->getStableInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 193
    iget-object v7, v0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    iget-object v9, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect3:Landroid/graphics/Rect;

    iget-object v10, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/wm/WindowManagerService;->intersectDisplayInsetBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 194
    iget-object v7, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 168
    .end local v14    # "rotated":Z
    .end local v15    # "orientation":I
    .end local v16    # "position":I
    .end local v18    # "snappedPosition":I
    .end local v19    # "dockSide":I
    .end local v22    # "displayCutout":Landroid/view/DisplayCutout;
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_16

    .line 196
    .end local v4    # "rotation":I
    :cond_d2
    move-object/from16 v13, p1

    int-to-float v4, v6

    iget-object v5, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v4, v5

    float-to-int v4, v4

    return v4
.end method

.method getTouchRegion(Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "outRegion"    # Landroid/graphics/Rect;

    .line 358
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mTouchRegion:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 359
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 360
    return-void
.end method

.method getWindow()Lcom/android/server/wm/WindowState;
    .registers 2

    .line 1022
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mWindow:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method isHomeStackResizable()Z
    .registers 5

    .line 262
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getHomeStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 263
    .local v0, "homeStack":Lcom/android/server/wm/TaskStack;
    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 264
    return v1

    .line 266
    :cond_a
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->findHomeTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 267
    .local v2, "homeTask":Lcom/android/server/wm/Task;
    if-eqz v2, :cond_18

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v3

    if-eqz v3, :cond_18

    const/4 v1, 0x1

    nop

    :cond_18
    return v1
.end method

.method isImeHideRequested()Z
    .registers 2

    .line 529
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mImeHideRequested:Z

    return v0
.end method

.method isMinimizedDock()Z
    .registers 2

    .line 694
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDock:Z

    return v0
.end method

.method isResizing()Z
    .registers 2

    .line 331
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mResizing:Z

    return v0
.end method

.method notifyAppTransitionStarting(Landroid/util/ArraySet;I)V
    .registers 10
    .param p2, "appTransition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;I)V"
        }
    .end annotation

    .line 647
    .local p1, "openingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDock:Z

    .line 648
    .local v0, "wasMinimized":Z
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DockedStackDividerController;->checkMinimizeChanged(Z)V

    .line 656
    if-eqz v0, :cond_5a

    iget-boolean v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDock:Z

    if-eqz v2, :cond_5a

    invoke-direct {p0, p1}, Lcom/android/server/wm/DockedStackDividerController;->containsAppInDockedStack(Landroid/util/ArraySet;)Z

    move-result v2

    if-eqz v2, :cond_5a

    if-eqz p2, :cond_5a

    .line 658
    invoke-static {p2}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransit(I)Z

    move-result v2

    if-nez v2, :cond_5a

    .line 659
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v3, v3, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    invoke-virtual {v2, v3}, Landroid/app/ActivityManagerInternal;->isRecentsComponentHomeActivity(I)Z

    move-result v2

    if-eqz v2, :cond_29

    goto :goto_5a

    .line 665
    :cond_29
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/DisplayContent;->getTopStackInWindowingMode(I)Lcom/android/server/wm/TaskStack;

    move-result-object v1

    .line 667
    .local v1, "fullscreenStack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 668
    .local v2, "task":Lcom/android/server/wm/Task;
    if-eqz v2, :cond_55

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->inMultiWindowMode()Z

    move-result v3

    if-eqz v3, :cond_55

    .line 669
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 670
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget v5, v2, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 671
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 672
    return-void

    .line 675
    :cond_55
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->showRecentApps()V

    .line 678
    .end local v1    # "fullscreenStack":Lcom/android/server/wm/TaskStack;
    .end local v2    # "task":Lcom/android/server/wm/Task;
    :cond_5a
    :goto_5a
    return-void
.end method

.method notifyAppVisibilityChanged()V
    .registers 2

    .line 643
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DockedStackDividerController;->checkMinimizeChanged(Z)V

    .line 644
    return-void
.end method

.method notifyDockSideChanged(I)V
    .registers 8
    .param p1, "newDockSide"    # I

    .line 563
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 564
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_20

    .line 565
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/view/IDockedStackListener;

    .line 567
    .local v2, "listener":Landroid/view/IDockedStackListener;
    :try_start_11
    invoke-interface {v2, p1}, Landroid/view/IDockedStackListener;->onDockSideChanged(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_15

    .line 570
    goto :goto_1d

    .line 568
    :catch_15
    move-exception v3

    .line 569
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "WindowManager"

    const-string v5, "Error delivering dock side changed event."

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 564
    .end local v2    # "listener":Landroid/view/IDockedStackListener;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 572
    .end local v1    # "i":I
    :cond_20
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 573
    return-void
.end method

.method notifyDockedStackExistsChanged(Z)V
    .registers 9
    .param p1, "exists"    # Z

    .line 478
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 479
    .local v0, "size":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_21

    .line 480
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/view/IDockedStackListener;

    .line 482
    .local v3, "listener":Landroid/view/IDockedStackListener;
    :try_start_12
    invoke-interface {v3, p1}, Landroid/view/IDockedStackListener;->onDockedStackExistsChanged(Z)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_16

    .line 485
    goto :goto_1e

    .line 483
    :catch_16
    move-exception v4

    .line 484
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "WindowManager"

    const-string v6, "Error delivering docked stack exists changed event."

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 479
    .end local v3    # "listener":Landroid/view/IDockedStackListener;
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 487
    .end local v2    # "i":I
    :cond_21
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 488
    if-eqz p1, :cond_47

    .line 489
    const-class v1, Landroid/view/inputmethod/InputMethodManagerInternal;

    .line 490
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManagerInternal;

    .line 491
    .local v1, "inputMethodManagerInternal":Landroid/view/inputmethod/InputMethodManagerInternal;
    if-eqz v1, :cond_38

    .line 495
    invoke-interface {v1}, Landroid/view/inputmethod/InputMethodManagerInternal;->hideCurrentInputMethod()V

    .line 496
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mImeHideRequested:Z

    .line 501
    :cond_38
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStackIgnoringVisibility()Lcom/android/server/wm/TaskStack;

    move-result-object v2

    .line 502
    .local v2, "stack":Lcom/android/server/wm/TaskStack;
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/TaskStack;->getDockSideForDisplay(Lcom/android/server/wm/DisplayContent;)I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mOriginalDockedSide:I

    .line 503
    return-void

    .line 505
    .end local v1    # "inputMethodManagerInternal":Landroid/view/inputmethod/InputMethodManagerInternal;
    .end local v2    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_47
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mOriginalDockedSide:I

    .line 506
    invoke-direct {p0, v1, v1}, Lcom/android/server/wm/DockedStackDividerController;->setMinimizedDockedStack(ZZ)V

    .line 508
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDimmedStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_59

    .line 509
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDimmedStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->stopDimming()V

    .line 510
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDimmedStack:Lcom/android/server/wm/TaskStack;

    .line 512
    :cond_59
    return-void
.end method

.method onConfigurationChanged()V
    .registers 1

    .line 327
    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->loadDimens()V

    .line 328
    return-void
.end method

.method positionDockedStackedDivider(Landroid/graphics/Rect;)V
    .registers 9
    .param p1, "frame"    # Landroid/graphics/Rect;

    .line 416
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStackIgnoringVisibility()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 417
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    if-nez v0, :cond_e

    .line 423
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 424
    return-void

    .line 426
    :cond_e
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    .line 428
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v1

    .line 429
    .local v1, "side":I
    packed-switch v1, :pswitch_data_90

    goto :goto_89

    .line 443
    :pswitch_1b
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    add-int/2addr v3, v4

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    add-int/2addr v5, v6

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_89

    .line 439
    :pswitch_36
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    add-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    add-int/2addr v4, v5

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 441
    goto :goto_89

    .line 435
    :pswitch_51
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    .line 436
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    sub-int/2addr v5, v6

    .line 435
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 437
    goto :goto_89

    .line 431
    :pswitch_6e
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    .line 432
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    sub-int/2addr v4, v5

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    .line 431
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 433
    nop

    .line 447
    :goto_89
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 448
    return-void

    nop

    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_6e
        :pswitch_51
        :pswitch_36
        :pswitch_1b
    .end packed-switch
.end method

.method reevaluateVisibility(Z)V
    .registers 6
    .param p1, "force"    # Z

    .line 373
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mWindow:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_5

    .line 374
    return-void

    .line 376
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStackIgnoringVisibility()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 379
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    const/4 v1, 0x0

    if-eqz v0, :cond_10

    const/4 v2, 0x1

    goto :goto_11

    :cond_10
    move v2, v1

    .line 380
    .local v2, "visible":Z
    :goto_11
    iget-boolean v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastVisibility:Z

    if-ne v3, v2, :cond_18

    if-nez p1, :cond_18

    .line 381
    return-void

    .line 383
    :cond_18
    iput-boolean v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastVisibility:Z

    .line 384
    invoke-direct {p0, v2}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedDividerVisibilityChanged(Z)V

    .line 385
    if-nez v2, :cond_23

    .line 386
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v1, v3}, Lcom/android/server/wm/DockedStackDividerController;->setResizeDimLayer(ZIF)V

    .line 388
    :cond_23
    return-void
.end method

.method registerDockedStackListener(Landroid/view/IDockedStackListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/view/IDockedStackListener;

    .line 589
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 590
    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->wasVisible()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedDividerVisibilityChanged(Z)V

    .line 591
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 592
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStackIgnoringVisibility()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    .line 591
    :cond_17
    move v0, v1

    :goto_18
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedStackExistsChanged(Z)V

    .line 593
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDock:Z

    .line 594
    invoke-virtual {p0}, Lcom/android/server/wm/DockedStackDividerController;->isHomeStackResizable()Z

    move-result v2

    .line 593
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedStackMinimizedChanged(ZZZ)V

    .line 595
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForIme:Z

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/wm/DockedStackDividerController;->notifyAdjustedForImeChanged(ZJ)V

    .line 597
    return-void
.end method

.method resetImeHideRequested()V
    .registers 2

    .line 518
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mImeHideRequested:Z

    .line 519
    return-void
.end method

.method setAdjustedForIme(ZZZLcom/android/server/wm/WindowState;I)V
    .registers 9
    .param p1, "adjustedForIme"    # Z
    .param p2, "adjustedForDivider"    # Z
    .param p3, "animate"    # Z
    .param p4, "imeWin"    # Lcom/android/server/wm/WindowState;
    .param p5, "imeHeight"    # I

    .line 397
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForIme:Z

    if-ne v0, p1, :cond_e

    if-eqz p1, :cond_a

    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mImeHeight:I

    if-ne v0, p5, :cond_e

    :cond_a
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForDivider:Z

    if-eq v0, p2, :cond_2b

    .line 399
    :cond_e
    if-eqz p3, :cond_18

    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForMinimizedDockedStack:Z

    if-nez v0, :cond_18

    .line 400
    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/wm/DockedStackDividerController;->startImeAdjustAnimation(ZZLcom/android/server/wm/WindowState;)V

    goto :goto_25

    .line 403
    :cond_18
    if-nez p1, :cond_1f

    if-eqz p2, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 v0, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 v0, 0x1

    :goto_20
    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/wm/DockedStackDividerController;->notifyAdjustedForImeChanged(ZJ)V

    .line 405
    :goto_25
    iput-boolean p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForIme:Z

    .line 406
    iput p5, p0, Lcom/android/server/wm/DockedStackDividerController;->mImeHeight:I

    .line 407
    iput-boolean p2, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForDivider:Z

    .line 409
    :cond_2b
    return-void
.end method

.method setResizeDimLayer(ZIF)V
    .registers 9
    .param p1, "visible"    # Z
    .param p2, "targetWindowingMode"    # I
    .param p3, "alpha"    # F

    .line 607
    const/4 v0, 0x0

    if-eqz p2, :cond_a

    .line 608
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/DisplayContent;->getTopStackInWindowingMode(I)Lcom/android/server/wm/TaskStack;

    move-result-object v1

    goto :goto_b

    .line 609
    :cond_a
    move-object v1, v0

    .line 610
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    :goto_b
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStack()Lcom/android/server/wm/TaskStack;

    move-result-object v2

    .line 611
    .local v2, "dockedStack":Lcom/android/server/wm/TaskStack;
    if-eqz p1, :cond_19

    if-eqz v1, :cond_19

    if-eqz v2, :cond_19

    const/4 v3, 0x1

    goto :goto_1a

    :cond_19
    const/4 v3, 0x0

    .line 615
    .local v3, "visibleAndValid":Z
    :goto_1a
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDimmedStack:Lcom/android/server/wm/TaskStack;

    if-eqz v4, :cond_29

    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDimmedStack:Lcom/android/server/wm/TaskStack;

    if-eq v4, v1, :cond_29

    .line 616
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDimmedStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v4}, Lcom/android/server/wm/TaskStack;->stopDimming()V

    .line 617
    iput-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDimmedStack:Lcom/android/server/wm/TaskStack;

    .line 620
    :cond_29
    if-eqz v3, :cond_30

    .line 621
    iput-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDimmedStack:Lcom/android/server/wm/TaskStack;

    .line 622
    invoke-virtual {v1, p3}, Lcom/android/server/wm/TaskStack;->dim(F)V

    .line 624
    :cond_30
    if-nez v3, :cond_39

    if-eqz v1, :cond_39

    .line 625
    iput-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDimmedStack:Lcom/android/server/wm/TaskStack;

    .line 626
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->stopDimming()V

    .line 628
    :cond_39
    return-void
.end method

.method setResizing(Z)V
    .registers 3
    .param p1, "resizing"    # Z

    .line 347
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mResizing:Z

    if-eq v0, p1, :cond_9

    .line 348
    iput-boolean p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mResizing:Z

    .line 349
    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->resetDragResizingChangeReported()V

    .line 351
    :cond_9
    return-void
.end method

.method setTouchRegion(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "touchRegion"    # Landroid/graphics/Rect;

    .line 354
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mTouchRegion:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 355
    return-void
.end method

.method setWindow(Lcom/android/server/wm/WindowState;)V
    .registers 3
    .param p1, "window"    # Lcom/android/server/wm/WindowState;

    .line 368
    iput-object p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mWindow:Lcom/android/server/wm/WindowState;

    .line 369
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DockedStackDividerController;->reevaluateVisibility(Z)V

    .line 370
    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .registers 2

    .line 1018
    const-string v0, "WindowManager"

    return-object v0
.end method

.method writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 1034
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1035
    .local v0, "token":J
    iget-boolean v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDock:Z

    const-wide v3, 0x10800000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1036
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1037
    return-void
.end method
