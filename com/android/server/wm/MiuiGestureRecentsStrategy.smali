.class Lcom/android/server/wm/MiuiGestureRecentsStrategy;
.super Ljava/lang/Object;
.source "MiuiGestureRecentsStrategy.java"

# interfaces
.implements Lcom/android/server/wm/MiuiGestureStrategy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/MiuiGestureRecentsStrategy$GestureRecentsHandler;,
        Lcom/android/server/wm/MiuiGestureRecentsStrategy$GestureRecentsAnimatorUpdateListener;,
        Lcom/android/server/wm/MiuiGestureRecentsStrategy$AnimationStatus;
    }
.end annotation


# static fields
.field private static final BOTTOM:Ljava/lang/String; = "bottom"

.field private static DEBUG:Z = false

.field private static final DECELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final DELAYED_RESET_ALL_STATUS:I = 0x1f4

.field private static final DELAYED_RESET_ANIMATION:I = 0x64

.field private static final DELAYED_RESET_INPUT:I = 0x12c

.field private static final MSG_CANCEL_ANIMATION:I = 0x3

.field private static final MSG_RESET_ALL_STATUS:I = 0x5

.field private static final MSG_RESET_GO_RECENTS_ANIMATION:I = 0x1

.field private static final MSG_RESET_INPUT:I = 0x2

.field private static final MSG_RESTART_FROM_RECENTS_ANIMATION:I = 0x4

.field private static final MSG_START_GO_RECENTS_ANIMATION:I = 0x0

.field private static final NORMAL_ANIMATION_DURATION:I = 0x12c

.field private static final SCALE:Ljava/lang/String; = "scale"

.field private static final TAG:Ljava/lang/String; = "MiuiGestureRecentsStrategy"

.field private static final TOP:Ljava/lang/String; = "top"

.field private static final TRANSLATE_X:Ljava/lang/String; = "translate_x"

.field private static final TRANSLATE_Y:Ljava/lang/String; = "translate_y"


# instance fields
.field private final mAnimationClipRect:Landroid/graphics/Rect;

.field private final mAnimationHandler:Landroid/os/Handler;

.field private mAnimationScale:F

.field private mAnimationStatus:Lcom/android/server/wm/MiuiGestureRecentsStrategy$AnimationStatus;

.field private mAnimationTransX:F

.field private mAnimationTransY:F

.field private mAppTokenStartFromRecents:Lcom/android/server/wm/AppWindowToken;

.field private final mClosingApps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field private final mGestureAnimator:Lcom/android/server/wm/MiuiGestureAnimator;

.field private final mGestureController:Lcom/android/server/wm/MiuiGestureController;

.field private mGoRecentsAnimation:Landroid/animation/AnimatorSet;

.field private mGoRecentsListener:Landroid/animation/Animator$AnimatorListener;

.field private mIsRestartAppTokenVisible:Z

.field private mResetCallback:Ljava/lang/Runnable;

.field private final mScalingWindows:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/android/server/wm/WindowState;",
            "Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mWms:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 28
    sget-boolean v0, Lcom/android/server/wm/MiuiGestureController;->DEBUG_RECENTS:Z

    sput-boolean v0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->DEBUG:Z

    .line 30
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->DECELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/MiuiGestureController;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/MiuiGestureAnimator;)V
    .registers 6
    .param p1, "controller"    # Lcom/android/server/wm/MiuiGestureController;
    .param p2, "wms"    # Lcom/android/server/wm/WindowManagerService;
    .param p3, "animator"    # Lcom/android/server/wm/MiuiGestureAnimator;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mGoRecentsAnimation:Landroid/animation/AnimatorSet;

    .line 55
    sget-object v0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$AnimationStatus;->STATUS_FINISH:Lcom/android/server/wm/MiuiGestureRecentsStrategy$AnimationStatus;

    iput-object v0, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mAnimationStatus:Lcom/android/server/wm/MiuiGestureRecentsStrategy$AnimationStatus;

    .line 58
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mClosingApps:Ljava/util/Set;

    .line 59
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mScalingWindows:Ljava/util/concurrent/ConcurrentHashMap;

    .line 64
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mAnimationClipRect:Landroid/graphics/Rect;

    .line 70
    new-instance v0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/MiuiGestureRecentsStrategy$1;-><init>(Lcom/android/server/wm/MiuiGestureRecentsStrategy;)V

    iput-object v0, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mGoRecentsListener:Landroid/animation/Animator$AnimatorListener;

    .line 126
    iput-object p1, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    .line 127
    iput-object p2, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mWms:Lcom/android/server/wm/WindowManagerService;

    .line 128
    new-instance v0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$GestureRecentsHandler;

    iget-object v1, p1, Lcom/android/server/wm/MiuiGestureController;->mHandler:Lcom/android/server/wm/MiuiGestureController$GestureThreadHandler;

    invoke-virtual {v1}, Lcom/android/server/wm/MiuiGestureController$GestureThreadHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/MiuiGestureRecentsStrategy$GestureRecentsHandler;-><init>(Lcom/android/server/wm/MiuiGestureRecentsStrategy;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mAnimationHandler:Landroid/os/Handler;

    .line 129
    iput-object p3, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mGestureAnimator:Lcom/android/server/wm/MiuiGestureAnimator;

    .line 130
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .line 27
    sget-boolean v0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/wm/MiuiGestureRecentsStrategy;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/wm/MiuiGestureRecentsStrategy;

    .line 27
    invoke-direct {p0}, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->resetAllStatus()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/server/wm/MiuiGestureRecentsStrategy;Lcom/android/server/wm/MiuiGestureRecentsStrategy$AnimationStatus;)Lcom/android/server/wm/MiuiGestureRecentsStrategy$AnimationStatus;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/MiuiGestureRecentsStrategy;
    .param p1, "x1"    # Lcom/android/server/wm/MiuiGestureRecentsStrategy$AnimationStatus;

    .line 27
    iput-object p1, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mAnimationStatus:Lcom/android/server/wm/MiuiGestureRecentsStrategy$AnimationStatus;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/server/wm/MiuiGestureRecentsStrategy;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/MiuiGestureRecentsStrategy;

    .line 27
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mAnimationClipRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/wm/MiuiGestureRecentsStrategy;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/MiuiGestureRecentsStrategy;

    .line 27
    iget v0, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mAnimationTransX:F

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/wm/MiuiGestureRecentsStrategy;F)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/MiuiGestureRecentsStrategy;
    .param p1, "x1"    # F

    .line 27
    iput p1, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mAnimationTransX:F

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/wm/MiuiGestureRecentsStrategy;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/MiuiGestureRecentsStrategy;

    .line 27
    iget v0, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mAnimationTransY:F

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/wm/MiuiGestureRecentsStrategy;F)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/MiuiGestureRecentsStrategy;
    .param p1, "x1"    # F

    .line 27
    iput p1, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mAnimationTransY:F

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/wm/MiuiGestureRecentsStrategy;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/MiuiGestureRecentsStrategy;

    .line 27
    iget v0, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mAnimationScale:F

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/wm/MiuiGestureRecentsStrategy;F)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/MiuiGestureRecentsStrategy;
    .param p1, "x1"    # F

    .line 27
    iput p1, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mAnimationScale:F

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/wm/MiuiGestureRecentsStrategy;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/wm/MiuiGestureRecentsStrategy;

    .line 27
    invoke-direct {p0}, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->startGoRecentsAnimation()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/wm/MiuiGestureRecentsStrategy;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/wm/MiuiGestureRecentsStrategy;

    .line 27
    invoke-direct {p0}, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->handleResetGoRecentsAnimation()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/wm/MiuiGestureRecentsStrategy;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/wm/MiuiGestureRecentsStrategy;

    .line 27
    invoke-direct {p0}, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->handleResetInput()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/wm/MiuiGestureRecentsStrategy;Lcom/android/server/wm/AppWindowToken;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/MiuiGestureRecentsStrategy;
    .param p1, "x1"    # Lcom/android/server/wm/AppWindowToken;

    .line 27
    invoke-direct {p0, p1}, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->handleCancelAnimation(Lcom/android/server/wm/AppWindowToken;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/wm/MiuiGestureRecentsStrategy;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/wm/MiuiGestureRecentsStrategy;

    .line 27
    invoke-direct {p0}, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->handleRestartFromRecentsAnimation()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wm/MiuiGestureRecentsStrategy;)Lcom/android/server/wm/MiuiGestureController;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/MiuiGestureRecentsStrategy;

    .line 27
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/MiuiGestureRecentsStrategy;)Lcom/android/server/wm/AppWindowToken;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/MiuiGestureRecentsStrategy;

    .line 27
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mAppTokenStartFromRecents:Lcom/android/server/wm/AppWindowToken;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wm/MiuiGestureRecentsStrategy;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/MiuiGestureRecentsStrategy;

    .line 27
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mAnimationHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/wm/MiuiGestureRecentsStrategy;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/MiuiGestureRecentsStrategy;

    .line 27
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mResetCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/wm/MiuiGestureRecentsStrategy;)Ljava/util/Set;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/MiuiGestureRecentsStrategy;

    .line 27
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mClosingApps:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/wm/MiuiGestureRecentsStrategy;)Lcom/android/server/wm/MiuiGestureAnimator;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/MiuiGestureRecentsStrategy;

    .line 27
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mGestureAnimator:Lcom/android/server/wm/MiuiGestureAnimator;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/wm/MiuiGestureRecentsStrategy;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/MiuiGestureRecentsStrategy;

    .line 27
    iget-boolean v0, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mIsRestartAppTokenVisible:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/wm/MiuiGestureRecentsStrategy;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/MiuiGestureRecentsStrategy;
    .param p1, "x1"    # Z

    .line 27
    iput-boolean p1, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mIsRestartAppTokenVisible:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/wm/MiuiGestureRecentsStrategy;)Lcom/android/server/wm/WindowManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/MiuiGestureRecentsStrategy;

    .line 27
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mWms:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method private applyAnimatorLocked(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;)Landroid/animation/ValueAnimator;
    .registers 21
    .param p1, "w"    # Lcom/android/server/wm/WindowState;
    .param p2, "wInfo"    # Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;

    move-object/from16 v0, p1

    .line 210
    move-object/from16 v1, p2

    if-eqz v0, :cond_8d

    if-nez v1, :cond_a

    goto/16 :goto_8d

    .line 214
    :cond_a
    iget v2, v1, Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;->mNowPosX:I

    .line 215
    .local v2, "nowX":I
    iget v3, v1, Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;->mNowPosY:I

    .line 216
    .local v3, "nowY":I
    iget v4, v1, Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;->mNowScale:F

    .line 217
    .local v4, "nowScale":F
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isInMultiWindowMode()Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 218
    iget-object v5, v1, Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;->mNowFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    goto :goto_21

    :cond_1d
    iget-object v5, v1, Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;->mNowFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    .line 220
    .local v5, "startBottom":I
    :goto_21
    iget v6, v1, Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;->mTargetPosX:I

    .line 221
    .local v6, "targetX":I
    iget v7, v1, Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;->mTargetPosY:I

    .line 222
    .local v7, "targetY":I
    iget v8, v1, Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;->mTargetScale:F

    .line 223
    .local v8, "targetScale":F
    iget v9, v1, Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;->mTargetBottom:I

    .line 225
    .local v9, "targetBottom":I
    const-string/jumbo v10, "translate_x"

    const/4 v11, 0x2

    new-array v12, v11, [F

    int-to-float v13, v2

    const/4 v14, 0x0

    aput v13, v12, v14

    int-to-float v13, v6

    const/4 v15, 0x1

    aput v13, v12, v15

    invoke-static {v10, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    .line 226
    .local v10, "translateX":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v12, "translate_y"

    new-array v13, v11, [F

    int-to-float v11, v3

    aput v11, v13, v14

    int-to-float v11, v7

    aput v11, v13, v15

    invoke-static {v12, v13}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .line 227
    .local v11, "translateY":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v12, "scale"

    move/from16 v16, v2

    const/4 v13, 0x2

    new-array v2, v13, [F

    .line 227
    .end local v2    # "nowX":I
    .local v16, "nowX":I
    aput v4, v2, v14

    aput v8, v2, v15

    invoke-static {v12, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 228
    .local v2, "scale":Landroid/animation/PropertyValuesHolder;
    const-string v12, "bottom"

    move/from16 v17, v3

    new-array v3, v13, [I

    .line 228
    .end local v3    # "nowY":I
    .local v17, "nowY":I
    aput v5, v3, v14

    aput v9, v3, v15

    invoke-static {v12, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 230
    .local v3, "bottom":Landroid/animation/PropertyValuesHolder;
    const/4 v12, 0x4

    new-array v12, v12, [Landroid/animation/PropertyValuesHolder;

    aput-object v10, v12, v14

    aput-object v11, v12, v15

    aput-object v2, v12, v13

    const/4 v13, 0x3

    aput-object v3, v12, v13

    invoke-static {v12}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v12

    .line 232
    .local v12, "animator":Landroid/animation/ValueAnimator;
    sget-object v13, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->DECELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v12, v13}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 233
    const-wide/16 v13, 0x12c

    invoke-virtual {v12, v13, v14}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 234
    new-instance v13, Lcom/android/server/wm/MiuiGestureRecentsStrategy$GestureRecentsAnimatorUpdateListener;

    move-object/from16 v14, p0

    invoke-direct {v13, v14, v0, v1}, Lcom/android/server/wm/MiuiGestureRecentsStrategy$GestureRecentsAnimatorUpdateListener;-><init>(Lcom/android/server/wm/MiuiGestureRecentsStrategy;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;)V

    invoke-virtual {v12, v13}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 235
    return-object v12

    .line 211
    .end local v2    # "scale":Landroid/animation/PropertyValuesHolder;
    .end local v3    # "bottom":Landroid/animation/PropertyValuesHolder;
    .end local v4    # "nowScale":F
    .end local v5    # "startBottom":I
    .end local v6    # "targetX":I
    .end local v7    # "targetY":I
    .end local v8    # "targetScale":F
    .end local v9    # "targetBottom":I
    .end local v10    # "translateX":Landroid/animation/PropertyValuesHolder;
    .end local v11    # "translateY":Landroid/animation/PropertyValuesHolder;
    .end local v12    # "animator":Landroid/animation/ValueAnimator;
    .end local v16    # "nowX":I
    .end local v17    # "nowY":I
    :cond_8d
    :goto_8d
    move-object/from16 v14, p0

    const/4 v2, 0x0

    return-object v2
.end method

.method static enableDebug(Z)V
    .registers 1
    .param p0, "enable"    # Z

    .line 497
    sput-boolean p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->DEBUG:Z

    .line 498
    return-void
.end method

.method private handleCancelAnimation(Lcom/android/server/wm/AppWindowToken;)V
    .registers 4
    .param p1, "aToken"    # Lcom/android/server/wm/AppWindowToken;

    .line 275
    if-nez p1, :cond_3

    .line 276
    return-void

    .line 279
    :cond_3
    iput-object p1, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mAppTokenStartFromRecents:Lcom/android/server/wm/AppWindowToken;

    .line 280
    invoke-direct {p0}, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->restartFromRecentsChecked()V

    .line 282
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mClosingApps:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mAppTokenStartFromRecents:Lcom/android/server/wm/AppWindowToken;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 283
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mGoRecentsAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 284
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mGoRecentsAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 287
    :cond_1f
    return-void
.end method

.method private handleResetGoRecentsAnimation()V
    .registers 9

    .line 240
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mAnimationStatus:Lcom/android/server/wm/MiuiGestureRecentsStrategy$AnimationStatus;

    sget-object v1, Lcom/android/server/wm/MiuiGestureRecentsStrategy$AnimationStatus;->STATUS_RESTART_ANIMATING:Lcom/android/server/wm/MiuiGestureRecentsStrategy$AnimationStatus;

    if-ne v0, v1, :cond_7

    .line 241
    return-void

    .line 244
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 245
    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mClosingApps:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    .line 246
    .local v2, "appWindowToken":Lcom/android/server/wm/AppWindowToken;
    iget-object v3, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mGestureAnimator:Lcom/android/server/wm/MiuiGestureAnimator;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/MiuiGestureAnimator;->hideTaskDimmerLayer(Lcom/android/server/wm/AppWindowToken;)V

    .line 247
    iget-object v3, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mGestureAnimator:Lcom/android/server/wm/MiuiGestureAnimator;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/MiuiGestureAnimator;->hideAppWindowToken(Lcom/android/server/wm/AppWindowToken;)V

    .line 248
    iget-object v3, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mGestureAnimator:Lcom/android/server/wm/MiuiGestureAnimator;

    invoke-virtual {v3}, Lcom/android/server/wm/MiuiGestureAnimator;->applyTransaction()V

    .line 249
    .end local v2    # "appWindowToken":Lcom/android/server/wm/AppWindowToken;
    goto :goto_15

    .line 250
    :cond_31
    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mScalingWindows:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 251
    .local v1, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/wm/WindowState;Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_63

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 252
    .local v3, "winEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wm/WindowState;Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 253
    .local v4, "w":Lcom/android/server/wm/WindowState;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;

    .line 254
    .local v5, "wInfo":Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;
    iget-object v6, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mGestureAnimator:Lcom/android/server/wm/MiuiGestureAnimator;

    iget-object v7, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->resetClipWindow(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;Lcom/android/server/wm/MiuiGestureAnimator;Lcom/android/server/wm/MiuiGestureController;)V

    .line 255
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mIsRestartAppTokenVisible:Z

    .line 256
    iget-object v6, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mScalingWindows:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v4, v6}, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->resetWindowSurfaceLocked(Lcom/android/server/wm/WindowState;Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 257
    .end local v3    # "winEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wm/WindowState;Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;>;"
    .end local v4    # "w":Lcom/android/server/wm/WindowState;
    .end local v5    # "wInfo":Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;
    goto :goto_3b

    .line 258
    .end local v1    # "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/wm/WindowState;Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;>;>;"
    :cond_63
    monitor-exit v0
    :try_end_64
    .catchall {:try_start_c .. :try_end_64} :catchall_7d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 260
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mResetCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_70

    .line 261
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mResetCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 264
    :cond_70
    sget-object v0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$AnimationStatus;->STATUS_FINISH:Lcom/android/server/wm/MiuiGestureRecentsStrategy$AnimationStatus;

    iput-object v0, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mAnimationStatus:Lcom/android/server/wm/MiuiGestureRecentsStrategy$AnimationStatus;

    .line 265
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mAnimationHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 266
    return-void

    .line 258
    :catchall_7d
    move-exception v1

    :try_start_7e
    monitor-exit v0
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_7d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private handleResetInput()V
    .registers 5

    .line 269
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mClosingApps:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    .line 270
    .local v1, "aToken":Lcom/android/server/wm/AppWindowToken;
    iget-object v2, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v3}, Lcom/android/server/wm/MiuiGestureController;->notifyIgnoreInput(Lcom/android/server/wm/AppWindowToken;ZZ)V

    .line 271
    .end local v1    # "aToken":Lcom/android/server/wm/AppWindowToken;
    goto :goto_6

    .line 272
    :cond_19
    return-void
.end method

.method private handleRestartFromRecentsAnimation()V
    .registers 16

    .line 304
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mAnimationHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 305
    invoke-direct {p0}, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->handleResetInput()V

    .line 306
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    invoke-virtual {v0}, Lcom/android/server/wm/MiuiGestureController;->notifySkipAppTransition()V

    .line 307
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/wm/MiuiGestureController;->setKeepWallpaperShowing(Z)V

    .line 309
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 310
    .local v0, "winFrame":Landroid/graphics/Rect;
    const/4 v3, 0x0

    .line 311
    .local v3, "appWin":Lcom/android/server/wm/WindowState;
    iget-object v4, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mScalingWindows:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 312
    .local v4, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/wm/WindowState;Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;>;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_24
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_44

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 313
    .local v6, "winEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wm/WindowState;Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowState;

    .line 314
    .local v7, "win":Lcom/android/server/wm/WindowState;
    iget-object v8, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v8, v2, :cond_43

    .line 315
    move-object v3, v7

    .line 316
    iget-object v5, v7, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 317
    goto :goto_44

    .line 319
    .end local v6    # "winEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wm/WindowState;Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;>;"
    .end local v7    # "win":Lcom/android/server/wm/WindowState;
    :cond_43
    goto :goto_24

    .line 321
    :cond_44
    :goto_44
    sget-boolean v5, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->DEBUG:Z

    if-eqz v5, :cond_50

    .line 322
    const-string v5, "MiuiGestureRecentsStrategy"

    const-string/jumbo v6, "restartFromRecentsAnimation"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_50
    const/4 v5, 0x0

    .line 326
    .local v5, "toX":F
    const/4 v6, 0x0

    .line 327
    .local v6, "toY":F
    if-eqz v3, :cond_72

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isInMultiWindowMode()Z

    move-result v7

    if-eqz v7, :cond_72

    .line 328
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 329
    .local v7, "taskBounds":Landroid/graphics/Rect;
    iget-object v8, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v8, :cond_72

    .line 330
    iget-object v8, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v8}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v8

    .line 331
    .local v8, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v8, v7}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 332
    iget v9, v7, Landroid/graphics/Rect;->left:I

    int-to-float v5, v9

    .line 333
    iget v9, v7, Landroid/graphics/Rect;->top:I

    int-to-float v6, v9

    .line 336
    .end local v7    # "taskBounds":Landroid/graphics/Rect;
    .end local v8    # "task":Lcom/android/server/wm/Task;
    :cond_72
    const-string/jumbo v7, "translate_x"

    new-array v8, v1, [F

    iget v9, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mAnimationTransX:F

    const/4 v10, 0x0

    aput v9, v8, v10

    aput v5, v8, v2

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 338
    .local v7, "translateX":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v8, "translate_y"

    new-array v9, v1, [F

    iget v11, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mAnimationTransY:F

    aput v11, v9, v10

    aput v6, v9, v2

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 340
    .local v8, "translateY":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v9, "scale"

    new-array v11, v1, [F

    iget v12, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mAnimationScale:F

    aput v12, v11, v10

    const/high16 v12, 0x3f800000    # 1.0f

    aput v12, v11, v2

    invoke-static {v9, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    .line 342
    .local v9, "scale":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v11, "top"

    new-array v12, v1, [I

    iget-object v13, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mAnimationClipRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    aput v13, v12, v10

    aput v10, v12, v2

    invoke-static {v11, v12}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .line 344
    .local v11, "top":Landroid/animation/PropertyValuesHolder;
    const-string v12, "bottom"

    new-array v13, v1, [I

    iget-object v14, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mAnimationClipRect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    aput v14, v13, v10

    iget v14, v0, Landroid/graphics/Rect;->bottom:I

    aput v14, v13, v2

    invoke-static {v12, v13}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v12

    .line 347
    .local v12, "bottom":Landroid/animation/PropertyValuesHolder;
    const/4 v13, 0x5

    new-array v13, v13, [Landroid/animation/PropertyValuesHolder;

    aput-object v7, v13, v10

    aput-object v8, v13, v2

    aput-object v9, v13, v1

    const/4 v1, 0x3

    aput-object v11, v13, v1

    const/4 v1, 0x4

    aput-object v12, v13, v1

    invoke-static {v13}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 349
    .local v1, "animator":Landroid/animation/ValueAnimator;
    const-wide/16 v13, 0x12c

    invoke-virtual {v1, v13, v14}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 351
    new-instance v2, Lcom/android/server/wm/MiuiGestureRecentsStrategy$2;

    invoke-direct {v2, p0, v0}, Lcom/android/server/wm/MiuiGestureRecentsStrategy$2;-><init>(Lcom/android/server/wm/MiuiGestureRecentsStrategy;Landroid/graphics/Rect;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 386
    new-instance v2, Lcom/android/server/wm/MiuiGestureRecentsStrategy$3;

    invoke-direct {v2, p0}, Lcom/android/server/wm/MiuiGestureRecentsStrategy$3;-><init>(Lcom/android/server/wm/MiuiGestureRecentsStrategy;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 408
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 409
    return-void
.end method

.method private loadGoRecentsAnimationLocked(Ljava/util/concurrent/ConcurrentHashMap;)Ljava/util/Set;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/android/server/wm/WindowState;",
            "Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;",
            ">;)",
            "Ljava/util/Set<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .line 192
    .local p1, "scalingWindows":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Lcom/android/server/wm/WindowState;Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;>;"
    if-nez p1, :cond_b

    .line 193
    const-string v0, "MiuiGestureRecentsStrategy"

    const-string v1, "Failed to load go recents animation: no app is closing."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const/4 v0, 0x0

    return-object v0

    .line 197
    :cond_b
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 198
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Landroid/animation/Animator;>;"
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 199
    .local v1, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/wm/WindowState;Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 200
    .local v3, "winEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wm/WindowState;Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;

    invoke-direct {p0, v4, v5}, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->applyAnimatorLocked(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 201
    .local v4, "animator":Landroid/animation/ValueAnimator;
    if-eqz v4, :cond_39

    .line 202
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 204
    .end local v3    # "winEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wm/WindowState;Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;>;"
    .end local v4    # "animator":Landroid/animation/ValueAnimator;
    :cond_39
    goto :goto_18

    .line 206
    :cond_3a
    return-object v0
.end method

.method private resetAllStatus()V
    .registers 2

    .line 412
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mClosingApps:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 413
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mScalingWindows:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 414
    sget-object v0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$AnimationStatus;->STATUS_FINISH:Lcom/android/server/wm/MiuiGestureRecentsStrategy$AnimationStatus;

    iput-object v0, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mAnimationStatus:Lcom/android/server/wm/MiuiGestureRecentsStrategy$AnimationStatus;

    .line 415
    return-void
.end method

.method private restartFromRecentsChecked()V
    .registers 3

    .line 291
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mClosingApps:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mAppTokenStartFromRecents:Lcom/android/server/wm/AppWindowToken;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 292
    sget-object v0, Lcom/android/server/wm/MiuiGestureRecentsStrategy$AnimationStatus;->STATUS_RESTART_ANIMATING:Lcom/android/server/wm/MiuiGestureRecentsStrategy$AnimationStatus;

    iput-object v0, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mAnimationStatus:Lcom/android/server/wm/MiuiGestureRecentsStrategy$AnimationStatus;

    .line 297
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mAnimationStatus:Lcom/android/server/wm/MiuiGestureRecentsStrategy$AnimationStatus;

    sget-object v1, Lcom/android/server/wm/MiuiGestureRecentsStrategy$AnimationStatus;->STATUS_RESTART_ANIMATING:Lcom/android/server/wm/MiuiGestureRecentsStrategy$AnimationStatus;

    if-ne v0, v1, :cond_20

    .line 298
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mAnimationHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 299
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mAnimationHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 301
    :cond_20
    return-void
.end method

.method private startGoRecentsAnimation()V
    .registers 5

    .line 164
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mClosingApps:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5a

    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mScalingWindows:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_5a

    .line 170
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mGoRecentsAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 171
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mGoRecentsAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 173
    :cond_1e
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mGoRecentsAnimation:Landroid/animation/AnimatorSet;

    .line 176
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    if-eqz v0, :cond_42

    .line 177
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mClosingApps:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    .line 178
    .local v1, "aToken":Lcom/android/server/wm/AppWindowToken;
    iget-object v2, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3, v3}, Lcom/android/server/wm/MiuiGestureController;->notifyIgnoreInput(Lcom/android/server/wm/AppWindowToken;ZZ)V

    .line 179
    .end local v1    # "aToken":Lcom/android/server/wm/AppWindowToken;
    goto :goto_2f

    .line 183
    :cond_42
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mScalingWindows:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, v0}, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->loadGoRecentsAnimationLocked(Ljava/util/concurrent/ConcurrentHashMap;)Ljava/util/Set;

    move-result-object v0

    .line 185
    .local v0, "animatorSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/animation/Animator;>;"
    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mGoRecentsAnimation:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mGoRecentsListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 186
    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mGoRecentsAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 187
    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mGoRecentsAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 188
    return-void

    .line 165
    .end local v0    # "animatorSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/animation/Animator;>;"
    :cond_5a
    :goto_5a
    const-string v0, "MiuiGestureRecentsStrategy"

    const-string v1, "Failed to start go recents animation: no app is closing."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return-void
.end method


# virtual methods
.method public cancelAnimation(Lcom/android/server/wm/AppWindowToken;)V
    .registers 4
    .param p1, "aToken"    # Lcom/android/server/wm/AppWindowToken;

    .line 146
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mAnimationHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 147
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 148
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 149
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 150
    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 151
    return-void
.end method

.method public isForbidGesture()Z
    .registers 3

    .line 160
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mAnimationStatus:Lcom/android/server/wm/MiuiGestureRecentsStrategy$AnimationStatus;

    sget-object v1, Lcom/android/server/wm/MiuiGestureRecentsStrategy$AnimationStatus;->STATUS_FINISH:Lcom/android/server/wm/MiuiGestureRecentsStrategy$AnimationStatus;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public setResetCallback(Ljava/lang/Runnable;)V
    .registers 2
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 155
    iput-object p1, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mResetCallback:Ljava/lang/Runnable;

    .line 156
    return-void
.end method

.method public startAnimation(Ljava/util/Set;Ljava/util/concurrent/ConcurrentHashMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/android/server/wm/WindowState;",
            "Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;",
            ">;)V"
        }
    .end annotation

    .line 135
    .local p1, "closingApps":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wm/AppWindowToken;>;"
    .local p2, "scalingWindows":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Lcom/android/server/wm/WindowState;Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;>;"
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mAnimationHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 136
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mClosingApps:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 137
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mScalingWindows:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 138
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mClosingApps:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 139
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mScalingWindows:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mAppTokenStartFromRecents:Lcom/android/server/wm/AppWindowToken;

    .line 141
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;->mAnimationHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 142
    return-void
.end method
