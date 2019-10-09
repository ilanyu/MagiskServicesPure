.class public Lcom/android/server/wm/MiuiGesturePointerEventListener;
.super Ljava/lang/Object;
.source "MiuiGesturePointerEventListener.java"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;,
        Lcom/android/server/wm/MiuiGesturePointerEventListener$GestureAnimatorUpdateListener;,
        Lcom/android/server/wm/MiuiGesturePointerEventListener$H;
    }
.end annotation


# static fields
.field private static final BACKGROUND_DIM_ALPHA:F = 0.5f

.field private static final CLIP:Ljava/lang/String; = "clip"

.field private static DEBUG:Z = false

.field private static final DELAYED_NOTIFY_TO_HOME:I = 0x15e

.field private static final DISTANCE_GO_BACK_APP:I = 0xa0

.field public static final MIX_INITIAL_SIZE:I = 0xe

.field static final MSG_ACTION_DOWN:I = 0x0

.field static final MSG_ACTION_MOVE:I = 0x1

.field static final MSG_ACTION_UP:I = 0x2

.field private static final NORMAL_ANIMATION_DURATION:I = 0x12c

.field private static final SCALE:Ljava/lang/String; = "scale"

.field private static final STATUS_FINISH:I = 0x3

.field private static final STATUS_READY:I = 0x1

.field private static final STATUS_RUNNING:I = 0x2

.field private static final STATUS_UNKNOWN:I = 0x0

.field public static final TAG:Ljava/lang/String; = "MiuiGesturePointerEventListener"

.field private static final TRANSLATE_X:Ljava/lang/String; = "translateX"

.field private static final TRANSLATE_Y:Ljava/lang/String; = "translateY"

.field private static final TYPE_CANCAL_ANIMATION:I = 0x1

.field private static final TYPE_GO_HOME_ANIMATION:I


# instance fields
.field private mAnimating:Z

.field private final mAnimationClipRect:Landroid/graphics/Rect;

.field private mAnimationFrameCallbackScheduled:Z

.field private mAnimationScale:F

.field private mAnimationTransX:F

.field private mAnimationTransY:F

.field private mCancelAnimation:Z

.field private mCancelCallback:Ljava/lang/Runnable;

.field private mChoreographer:Landroid/view/Choreographer;

.field private final mCloseTransformation:Landroid/view/animation/Transformation;

.field private final mClosingAppTokens:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field private final mClosingAppWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mConvertX:I

.field private mConvertY:I

.field private mCurrentScale:F

.field private mCurrentX:I

.field private mCurrentY:I

.field private final mDecelerateInterpolator:Landroid/view/animation/Interpolator;

.field private mDeferReset:Z

.field private mDownX:F

.field private mDownY:F

.field mDuringGoBackHome:Z

.field private mGestureAnimationCallback:Landroid/view/Choreographer$FrameCallback;

.field private final mGestureAnimator:Lcom/android/server/wm/MiuiGestureAnimator;

.field private mGestureController:Lcom/android/server/wm/MiuiGestureController;

.field private mGestureStatus:I

.field private mGoBackAppAnimatorSet:Landroid/animation/AnimatorSet;

.field private final mHandleByGestureWindows:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field mHomeAppToken:Lcom/android/server/wm/AppWindowToken;

.field private mHomeWindow:Lcom/android/server/wm/WindowState;

.field private mInMultiTouch:Z

.field private mInputEventReceiver:Landroid/view/InputEventReceiver;

.field private mInputMethodManagerInternal:Landroid/view/inputmethod/InputMethodManagerInternal;

.field private mIsEnterRecents:Z

.field private mIsFirstMove:Z

.field private mIsPortrait:Z

.field private mIsThumbnailShow:Z

.field private mLastAnimating:Z

.field mLoadBackHomeAnimation:Z

.field private final mLock:Ljava/lang/Object;

.field private mOpenAnimation:Landroid/view/animation/Animation;

.field private final mOpenTransformation:Landroid/view/animation/Transformation;

.field private mPosX:I

.field private mPosY:I

.field mRecentsAppToken:Lcom/android/server/wm/AppWindowToken;

.field private final mRecentsResetCallback:Ljava/lang/Runnable;

.field final mRecentsStrategy:Lcom/android/server/wm/MiuiGestureStrategy;

.field private mRecentsWindow:Lcom/android/server/wm/WindowState;

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

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mService:Lcom/android/server/wm/WindowManagerService;

.field private volatile mSpec:Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;

.field private mTailDistance:D

.field private mTailX:I

.field private mTailY:I

.field private mTargetHeight:I

.field private mTargetWidth:I

.field private mTargetX:I

.field private mTargetY:I

.field private mThumbnail:Landroid/view/SurfaceControl;

.field private mToken:Landroid/os/IBinder;

.field private mTopAppCloseAnimation:Landroid/view/animation/Animation;

.field mTopClosingAppToken:Lcom/android/server/wm/AppWindowToken;

.field mTopClosingAppWindow:Lcom/android/server/wm/WindowState;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 85
    sget-boolean v0, Lcom/android/server/wm/MiuiGestureController;->DEBUG_PROCESS:Z

    sput-boolean v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/MiuiGestureController;)V
    .registers 7
    .param p1, "wms"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "controller"    # Lcom/android/server/wm/MiuiGestureController;

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mLock:Ljava/lang/Object;

    .line 95
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mOpenAnimation:Landroid/view/animation/Animation;

    .line 100
    iput-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTopAppCloseAnimation:Landroid/view/animation/Animation;

    .line 109
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mOpenTransformation:Landroid/view/animation/Transformation;

    .line 110
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mCloseTransformation:Landroid/view/animation/Transformation;

    .line 114
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureStatus:I

    .line 139
    iput-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHomeWindow:Lcom/android/server/wm/WindowState;

    .line 140
    iput-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mRecentsWindow:Lcom/android/server/wm/WindowState;

    .line 141
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mClosingAppTokens:Ljava/util/Set;

    .line 143
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mClosingAppWindows:Ljava/util/ArrayList;

    .line 145
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHandleByGestureWindows:Ljava/util/Set;

    .line 147
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScalingWindows:Ljava/util/concurrent/ConcurrentHashMap;

    .line 150
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mAnimationClipRect:Landroid/graphics/Rect;

    .line 156
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGoBackAppAnimatorSet:Landroid/animation/AnimatorSet;

    .line 159
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mToken:Landroid/os/IBinder;

    .line 167
    new-instance v1, Lcom/android/server/wm/-$$Lambda$MiuiGesturePointerEventListener$Ksm8uB6czNQZZV7I_nS5AWn3cLA;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$MiuiGesturePointerEventListener$Ksm8uB6czNQZZV7I_nS5AWn3cLA;-><init>(Lcom/android/server/wm/MiuiGesturePointerEventListener;)V

    iput-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mRecentsResetCallback:Ljava/lang/Runnable;

    .line 179
    iput-object p1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 180
    iput-object p2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    .line 181
    const-class v1, Landroid/view/inputmethod/InputMethodManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManagerInternal;

    iput-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mInputMethodManagerInternal:Landroid/view/inputmethod/InputMethodManagerInternal;

    .line 182
    new-instance v1, Lcom/android/server/wm/MiuiGesturePointerEventListener$H;

    iget-object v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    iget-object v2, v2, Lcom/android/server/wm/MiuiGestureController;->mHandler:Lcom/android/server/wm/MiuiGestureController$GestureThreadHandler;

    invoke-virtual {v2}, Lcom/android/server/wm/MiuiGestureController$GestureThreadHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/android/server/wm/MiuiGesturePointerEventListener$H;-><init>(Lcom/android/server/wm/MiuiGesturePointerEventListener;Landroid/os/Looper;Lcom/android/server/wm/MiuiGesturePointerEventListener$1;)V

    iput-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHandler:Landroid/os/Handler;

    .line 183
    new-instance v0, Lcom/android/server/wm/MiuiGestureAnimator;

    iget-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, v1, p2}, Lcom/android/server/wm/MiuiGestureAnimator;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/MiuiGestureController;)V

    iput-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureAnimator:Lcom/android/server/wm/MiuiGestureAnimator;

    .line 184
    invoke-direct {p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->init()V

    .line 185
    new-instance v0, Lcom/android/server/wm/MiuiGestureRecentsStrategy;

    iget-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    iget-object v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureAnimator:Lcom/android/server/wm/MiuiGestureAnimator;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/wm/MiuiGestureRecentsStrategy;-><init>(Lcom/android/server/wm/MiuiGestureController;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/MiuiGestureAnimator;)V

    iput-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mRecentsStrategy:Lcom/android/server/wm/MiuiGestureStrategy;

    .line 187
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mRecentsStrategy:Lcom/android/server/wm/MiuiGestureStrategy;

    iget-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mRecentsResetCallback:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/android/server/wm/MiuiGestureStrategy;->setResetCallback(Ljava/lang/Runnable;)V

    .line 188
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wm/MiuiGesturePointerEventListener;FF)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/wm/MiuiGesturePointerEventListener;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->onActionDown(FF)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/wm/MiuiGesturePointerEventListener;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/wm/MiuiGesturePointerEventListener;

    .line 68
    invoke-direct {p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->reset()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/wm/MiuiGesturePointerEventListener;)Lcom/android/server/wm/WindowManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/MiuiGesturePointerEventListener;

    .line 68
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/wm/MiuiGesturePointerEventListener;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/MiuiGesturePointerEventListener;
    .param p1, "x1"    # Ljava/lang/String;

    .line 68
    invoke-direct {p0, p1}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->sendCloseSystemWindows(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/wm/MiuiGesturePointerEventListener;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/MiuiGesturePointerEventListener;

    .line 68
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mAnimationClipRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/wm/MiuiGesturePointerEventListener;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/MiuiGesturePointerEventListener;

    .line 68
    iget v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mAnimationTransX:F

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/wm/MiuiGesturePointerEventListener;F)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/MiuiGesturePointerEventListener;
    .param p1, "x1"    # F

    .line 68
    iput p1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mAnimationTransX:F

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/wm/MiuiGesturePointerEventListener;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/MiuiGesturePointerEventListener;

    .line 68
    iget v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mAnimationTransY:F

    return v0
.end method

.method static synthetic access$1502(Lcom/android/server/wm/MiuiGesturePointerEventListener;F)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/MiuiGesturePointerEventListener;
    .param p1, "x1"    # F

    .line 68
    iput p1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mAnimationTransY:F

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/wm/MiuiGesturePointerEventListener;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/MiuiGesturePointerEventListener;

    .line 68
    iget v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mAnimationScale:F

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/wm/MiuiGesturePointerEventListener;F)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/MiuiGesturePointerEventListener;
    .param p1, "x1"    # F

    .line 68
    iput p1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mAnimationScale:F

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/wm/MiuiGesturePointerEventListener;)Lcom/android/server/wm/MiuiGestureAnimator;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/MiuiGesturePointerEventListener;

    .line 68
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureAnimator:Lcom/android/server/wm/MiuiGestureAnimator;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/MiuiGesturePointerEventListener;FF)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/wm/MiuiGesturePointerEventListener;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->onActionMove(FF)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/wm/MiuiGesturePointerEventListener;FF)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/wm/MiuiGesturePointerEventListener;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->onActionUp(FF)V

    return-void
.end method

.method static synthetic access$400()Z
    .registers 1

    .line 68
    sget-boolean v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->DEBUG:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/wm/MiuiGesturePointerEventListener;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/MiuiGesturePointerEventListener;

    .line 68
    iget v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureStatus:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/wm/MiuiGesturePointerEventListener;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/MiuiGesturePointerEventListener;
    .param p1, "x1"    # Z

    .line 68
    iput-boolean p1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mDeferReset:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/wm/MiuiGesturePointerEventListener;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/MiuiGesturePointerEventListener;

    .line 68
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScalingWindows:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/wm/MiuiGesturePointerEventListener;Lcom/android/server/wm/WindowState;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/MiuiGesturePointerEventListener;
    .param p1, "x1"    # Lcom/android/server/wm/WindowState;

    .line 68
    invoke-direct {p0, p1}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->resetClipWindow(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/wm/MiuiGesturePointerEventListener;)Lcom/android/server/wm/MiuiGestureController;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/MiuiGesturePointerEventListener;

    .line 68
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    return-object v0
.end method

.method private animate(J)V
    .registers 24
    .param p1, "frameTimeNs"    # J

    move-object/from16 v8, p0

    .line 204
    const/4 v9, 0x0

    const-wide/16 v10, 0x20

    :try_start_5
    iget-object v12, v8, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mLock:Ljava/lang/Object;

    monitor-enter v12
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_19f
    .catchall {:try_start_5 .. :try_end_8} :catchall_19d

    .line 205
    :try_start_8
    const-string v0, "gesture go home animation"

    invoke-static {v10, v11, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 207
    iget-boolean v0, v8, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mCancelAnimation:Z

    if-eqz v0, :cond_25

    .line 208
    iget-object v0, v8, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTopClosingAppWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_20

    .line 209
    const-string v0, "home"

    iget-object v1, v8, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTopClosingAppWindow:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/wm/FullScreenEventReporter;->recordJankyFrames(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :cond_20
    monitor-exit v12
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_19a

    .line 328
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 213
    return-void

    .line 216
    :cond_25
    :try_start_25
    const-string v0, "home"

    invoke-static {v0}, Lcom/android/server/wm/FullScreenEventReporter;->caculateAnimationFrameInterval(Ljava/lang/String;)V

    .line 219
    const-wide/32 v0, 0xf4240

    div-long v0, p1, v0

    .line 220
    .local v0, "currentTime":J
    iput-boolean v9, v8, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mAnimating:Z

    .line 221
    iget-object v2, v8, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTopAppCloseAnimation:Landroid/view/animation/Animation;

    const/4 v13, 0x1

    const/4 v14, 0x5

    const/4 v15, 0x2

    const/16 v16, 0x4

    const/16 v7, 0x9

    if-eqz v2, :cond_b8

    .line 222
    iget-object v2, v8, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mCloseTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v2}, Landroid/view/animation/Transformation;->clear()V

    .line 223
    iget-object v2, v8, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTopAppCloseAnimation:Landroid/view/animation/Animation;

    iget-object v3, v8, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mCloseTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v2, v0, v1, v3}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v2

    move/from16 v17, v2

    .line 226
    .local v17, "hasMoreFrames":Z
    new-array v2, v7, [F

    .line 227
    .local v2, "tmp":[F
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    move-object v6, v3

    .line 228
    .local v6, "tmpMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    .line 229
    iget-object v3, v8, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mCloseTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 230
    iget-object v3, v8, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTopClosingAppWindow:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_70

    .line 231
    iget-object v3, v8, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTopClosingAppWindow:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    .line 232
    .local v3, "appFrame":Landroid/graphics/Rect;
    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, v3, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {v6, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 235
    .end local v3    # "appFrame":Landroid/graphics/Rect;
    :cond_70
    invoke-virtual {v6, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 237
    iget-object v3, v8, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mCloseTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v3

    .line 238
    .local v3, "alpha":F
    aget v4, v2, v9

    .line 239
    .local v4, "scaleX":F
    aget v5, v2, v16

    .line 240
    .local v5, "scaleY":F
    aget v18, v2, v15

    move-object/from16 v19, v6

    move/from16 v6, v18

    .line 241
    .local v6, "tx":F
    .local v19, "tmpMatrix":Landroid/graphics/Matrix;
    aget v18, v2, v14

    move v10, v7

    move/from16 v7, v18

    .line 243
    .local v7, "ty":F
    iget-object v11, v8, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureAnimator:Lcom/android/server/wm/MiuiGestureAnimator;

    iget-object v9, v8, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mCloseTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v11, v9}, Lcom/android/server/wm/MiuiGestureAnimator;->stepThumbnailAnimationIfNeeded(Landroid/view/animation/Transformation;)V

    .line 244
    iget-object v9, v8, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mClosingAppTokens:Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_95
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v18, v2

    move-object v2, v11

    .line 245
    .local v2, "aToken":Lcom/android/server/wm/AppWindowToken;
    .local v18, "tmp":[F
    move-wide v10, v0

    move-object v1, v8

    .end local v0    # "currentTime":J
    .local v10, "currentTime":J
    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->setAppTokenTransformation(Lcom/android/server/wm/AppWindowToken;FFFFF)V

    .line 246
    .end local v2    # "aToken":Lcom/android/server/wm/AppWindowToken;
    nop

    .line 244
    move-wide v0, v10

    move-object/from16 v2, v18

    const/16 v10, 0x9

    goto :goto_95

    .line 248
    .end local v10    # "currentTime":J
    .end local v18    # "tmp":[F
    .restart local v0    # "currentTime":J
    .local v2, "tmp":[F
    :cond_b0
    move-wide v10, v0

    move-object/from16 v18, v2

    .end local v0    # "currentTime":J
    .end local v2    # "tmp":[F
    .restart local v10    # "currentTime":J
    .restart local v18    # "tmp":[F
    if-eqz v17, :cond_b9

    .line 249
    iput-boolean v13, v8, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mAnimating:Z

    .end local v3    # "alpha":F
    .end local v4    # "scaleX":F
    .end local v5    # "scaleY":F
    .end local v6    # "tx":F
    .end local v7    # "ty":F
    .end local v17    # "hasMoreFrames":Z
    .end local v18    # "tmp":[F
    .end local v19    # "tmpMatrix":Landroid/graphics/Matrix;
    goto :goto_b9

    .line 253
    .end local v10    # "currentTime":J
    .restart local v0    # "currentTime":J
    :cond_b8
    move-wide v10, v0

    .end local v0    # "currentTime":J
    .restart local v10    # "currentTime":J
    :cond_b9
    :goto_b9
    iget-object v0, v8, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mOpenAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_137

    .line 254
    iget-object v0, v8, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mOpenTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    .line 255
    iget-object v0, v8, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mOpenAnimation:Landroid/view/animation/Animation;

    iget-object v1, v8, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mOpenTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, v10, v11, v1}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v0

    .line 258
    .local v0, "hasMoreFrames":Z
    const/16 v1, 0x9

    new-array v1, v1, [F

    move-object v9, v1

    .line 259
    .local v9, "tmp":[F
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    move-object v2, v1

    .line 260
    .local v2, "tmpMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 261
    iget-object v1, v8, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mOpenTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 262
    iget-object v1, v8, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHomeWindow:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_f2

    .line 263
    iget-object v1, v8, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHomeWindow:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    .line 264
    .local v1, "frame":Landroid/graphics/Rect;
    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 266
    .end local v1    # "frame":Landroid/graphics/Rect;
    :cond_f2
    invoke-virtual {v2, v9}, Landroid/graphics/Matrix;->getValues([F)V

    .line 268
    iget-object v1, v8, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mOpenTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v3

    .line 269
    .restart local v3    # "alpha":F
    const/4 v1, 0x0

    aget v4, v9, v1

    .line 270
    .restart local v4    # "scaleX":F
    aget v5, v9, v16

    .line 271
    .restart local v5    # "scaleY":F
    aget v6, v9, v15

    .line 272
    .restart local v6    # "tx":F
    aget v7, v9, v14

    .line 274
    .restart local v7    # "ty":F
    iget-object v1, v8, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHomeAppToken:Lcom/android/server/wm/AppWindowToken;

    const/4 v13, 0x0

    if-eqz v1, :cond_12e

    .line 275
    iget-object v1, v8, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHomeAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object v14, v1

    move-object v1, v8

    move-object v15, v2

    move-object v2, v14

    .end local v2    # "tmpMatrix":Landroid/graphics/Matrix;
    .local v15, "tmpMatrix":Landroid/graphics/Matrix;
    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->setAppTokenTransformation(Lcom/android/server/wm/AppWindowToken;FFFFF)V

    .line 277
    iget-object v1, v8, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHomeWindow:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_11d

    .line 278
    iget-object v1, v8, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHomeWindow:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    goto :goto_11e

    :cond_11d
    move-object v1, v13

    .line 279
    .local v1, "surfaceController":Lcom/android/server/wm/WindowSurfaceController;
    :goto_11e
    if-eqz v1, :cond_12f

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfaceController;->getShown()Z

    move-result v2

    if-nez v2, :cond_12f

    iget-boolean v2, v8, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mIsPortrait:Z

    if-eqz v2, :cond_12f

    .line 281
    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfaceController;->showRobustlyInTransaction()Z

    .end local v1    # "surfaceController":Lcom/android/server/wm/WindowSurfaceController;
    goto :goto_12f

    .line 285
    .end local v15    # "tmpMatrix":Landroid/graphics/Matrix;
    .restart local v2    # "tmpMatrix":Landroid/graphics/Matrix;
    :cond_12e
    move-object v15, v2

    .end local v2    # "tmpMatrix":Landroid/graphics/Matrix;
    .restart local v15    # "tmpMatrix":Landroid/graphics/Matrix;
    :cond_12f
    :goto_12f
    if-nez v0, :cond_134

    .line 286
    iput-object v13, v8, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mOpenAnimation:Landroid/view/animation/Animation;

    goto :goto_137

    .line 288
    :cond_134
    const/4 v1, 0x1

    iput-boolean v1, v8, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mAnimating:Z

    .line 292
    .end local v0    # "hasMoreFrames":Z
    .end local v3    # "alpha":F
    .end local v4    # "scaleX":F
    .end local v5    # "scaleY":F
    .end local v6    # "tx":F
    .end local v7    # "ty":F
    .end local v9    # "tmp":[F
    .end local v15    # "tmpMatrix":Landroid/graphics/Matrix;
    :cond_137
    :goto_137
    iget-boolean v0, v8, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mAnimating:Z

    if-eqz v0, :cond_152

    iget-boolean v0, v8, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mLastAnimating:Z

    if-nez v0, :cond_152

    .line 293
    const-string v0, "gesture animating"

    const-wide/16 v1, 0x20

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 294
    sget-boolean v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->DEBUG:Z

    if-eqz v0, :cond_152

    .line 295
    const-string v0, "MiuiGesturePointerEventListener"

    const-string v1, "Go home animating begin"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_152
    iget-boolean v0, v8, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mAnimating:Z

    if-nez v0, :cond_16d

    iget-boolean v0, v8, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mLastAnimating:Z

    if-eqz v0, :cond_16d

    .line 300
    const-string v0, "gesture animating"

    const-wide/16 v1, 0x20

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 301
    sget-boolean v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->DEBUG:Z

    if-eqz v0, :cond_16d

    .line 302
    const-string v0, "MiuiGesturePointerEventListener"

    const-string v1, "Go home animating end"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_16d
    iget-boolean v0, v8, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mAnimating:Z

    iput-boolean v0, v8, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mLastAnimating:Z

    .line 307
    iget-object v0, v8, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureAnimator:Lcom/android/server/wm/MiuiGestureAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/MiuiGestureAnimator;->applyTransaction()V

    .line 309
    iget-boolean v0, v8, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mAnimating:Z

    if-eqz v0, :cond_17d

    .line 310
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->scheduleAnimation()V

    .line 312
    .end local v10    # "currentTime":J
    :cond_17d
    monitor-exit v12
    :try_end_17e
    .catchall {:try_start_25 .. :try_end_17e} :catchall_19a

    .line 314
    :try_start_17e
    iget-boolean v0, v8, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mAnimating:Z

    if-nez v0, :cond_1ae

    iget-boolean v0, v8, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mCancelAnimation:Z

    if-nez v0, :cond_1ae

    .line 315
    iget-object v0, v8, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTopClosingAppWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_195

    .line 316
    const-string v0, "home"

    iget-object v1, v8, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTopClosingAppWindow:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/wm/FullScreenEventReporter;->recordJankyFrames(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    :cond_195
    const/4 v1, 0x0

    invoke-direct {v8, v1}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->finishGoHomeAnimation(I)V
    :try_end_199
    .catch Ljava/lang/Exception; {:try_start_17e .. :try_end_199} :catch_19f
    .catchall {:try_start_17e .. :try_end_199} :catchall_19d

    goto :goto_1ae

    .line 312
    :catchall_19a
    move-exception v0

    :try_start_19b
    monitor-exit v12
    :try_end_19c
    .catchall {:try_start_19b .. :try_end_19c} :catchall_19a

    :try_start_19c
    throw v0
    :try_end_19d
    .catch Ljava/lang/Exception; {:try_start_19c .. :try_end_19d} :catch_19f
    .catchall {:try_start_19c .. :try_end_19d} :catchall_19d

    .line 328
    :catchall_19d
    move-exception v0

    goto :goto_1b5

    .line 323
    :catch_19f
    move-exception v0

    .line 324
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    :try_start_1a1
    invoke-direct {v8, v1}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->finishGoHomeAnimation(I)V

    .line 325
    const-string v1, "MiuiGesturePointerEventListener"

    const-string v2, "Go home animating exception"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1ae
    .catchall {:try_start_1a1 .. :try_end_1ae} :catchall_19d

    .line 328
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1ae
    :goto_1ae
    const-wide/16 v1, 0x20

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 329
    nop

    .line 330
    return-void

    .line 328
    :goto_1b5
    const-wide/16 v1, 0x20

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private applyResetAnimation(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;Z)Landroid/animation/ValueAnimator;
    .registers 30
    .param p1, "w"    # Lcom/android/server/wm/WindowState;
    .param p2, "info"    # Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;
    .param p3, "isRecent"    # Z

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    .line 1364
    const/4 v0, 0x0

    .line 1365
    .local v0, "targetX":I
    const/4 v1, 0x0

    .line 1366
    .local v1, "targetY":I
    const/4 v2, 0x0

    .line 1367
    .local v2, "nowX":I
    const/4 v3, 0x0

    .line 1368
    .local v3, "nowY":I
    const/high16 v4, 0x3f800000    # 1.0f

    .line 1369
    .local v4, "nowScale":F
    const/high16 v5, 0x3f800000    # 1.0f

    .line 1370
    .local v5, "targetScale":F
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 1371
    .local v8, "targetFrame":Landroid/graphics/Rect;
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 1373
    .local v9, "nowFrame":Landroid/graphics/Rect;
    const/high16 v10, 0x3f800000    # 1.0f

    if-eqz v7, :cond_64

    .line 1374
    move-object/from16 v11, p1

    iget-object v12, v11, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1375
    .local v12, "aToken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v12, :cond_3d

    .line 1376
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 1377
    .local v13, "taskBounds":Landroid/graphics/Rect;
    invoke-virtual {v12}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v14

    invoke-virtual {v14, v13}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 1378
    if-eqz p3, :cond_31

    iget v14, v6, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTargetX:I

    goto :goto_33

    :cond_31
    iget v14, v13, Landroid/graphics/Rect;->left:I

    :goto_33
    move v0, v14

    .line 1379
    if-eqz p3, :cond_39

    iget v14, v6, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTargetY:I

    goto :goto_3b

    :cond_39
    iget v14, v13, Landroid/graphics/Rect;->top:I

    :goto_3b
    move v1, v14

    .line 1380
    .end local v13    # "taskBounds":Landroid/graphics/Rect;
    goto :goto_4d

    .line 1381
    :cond_3d
    if-eqz p3, :cond_42

    iget v13, v6, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTargetX:I

    goto :goto_44

    :cond_42
    iget v13, v7, Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;->mOriPosX:I

    :goto_44
    move v0, v13

    .line 1382
    if-eqz p3, :cond_4a

    iget v13, v6, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTargetY:I

    goto :goto_4c

    :cond_4a
    iget v13, v7, Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;->mOriPosX:I

    :goto_4c
    move v1, v13

    .line 1385
    :goto_4d
    iget v2, v7, Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;->mNowPosX:I

    .line 1386
    iget v3, v7, Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;->mNowPosY:I

    .line 1387
    iget-object v8, v7, Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;->mOriFrame:Landroid/graphics/Rect;

    .line 1388
    iget-object v9, v7, Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;->mNowFrame:Landroid/graphics/Rect;

    .line 1389
    iget v4, v7, Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;->mNowScale:F

    .line 1390
    if-eqz p3, :cond_61

    iget v13, v6, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTargetWidth:I

    int-to-float v13, v13

    iget v14, v6, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScreenWidth:I

    int-to-float v14, v14

    div-float/2addr v13, v14

    goto :goto_62

    :cond_61
    move v13, v10

    :goto_62
    move v5, v13

    .line 1390
    .end local v12    # "aToken":Lcom/android/server/wm/AppWindowToken;
    goto :goto_66

    .line 1393
    :cond_64
    move-object/from16 v11, p1

    .line 1393
    .end local v0    # "targetX":I
    .end local v1    # "targetY":I
    .end local v2    # "nowX":I
    .end local v3    # "nowY":I
    .local v4, "nowFrame":Landroid/graphics/Rect;
    .local v5, "targetFrame":Landroid/graphics/Rect;
    .local v8, "nowX":I
    .local v9, "targetX":I
    .local v12, "nowY":I
    .local v13, "targetY":I
    .local v14, "nowScale":F
    .local v15, "targetScale":F
    :goto_66
    move v13, v1

    move v12, v3

    move v14, v4

    move v15, v5

    move-object v5, v8

    move-object v4, v9

    move v9, v0

    move v8, v2

    const-string/jumbo v0, "translateX"

    const/4 v1, 0x2

    new-array v2, v1, [F

    int-to-float v3, v8

    const/16 v16, 0x0

    aput v3, v2, v16

    int-to-float v3, v9

    const/16 v17, 0x1

    aput v3, v2, v17

    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v18

    .line 1395
    .local v18, "translateX":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v0, "translateY"

    new-array v2, v1, [F

    int-to-float v3, v12

    aput v3, v2, v16

    int-to-float v3, v13

    aput v3, v2, v17

    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v19

    .line 1397
    .local v19, "translateY":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v0, "scale"

    new-array v2, v1, [F

    aput v14, v2, v16

    aput v15, v2, v17

    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v20

    .line 1400
    .local v20, "scale":Landroid/animation/PropertyValuesHolder;
    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    .line 1401
    .local v0, "targetClip":I
    if-eqz p3, :cond_b1

    iget v2, v6, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTargetWidth:I

    if-lez v2, :cond_b1

    .line 1402
    iget v2, v6, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTargetHeight:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v3

    mul-int/2addr v2, v3

    iget v3, v6, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTargetWidth:I

    div-int v0, v2, v3

    .line 1405
    .end local v0    # "targetClip":I
    .local v21, "targetClip":I
    :cond_b1
    move/from16 v21, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_be

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v0

    goto :goto_c0

    :cond_be
    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    :goto_c0
    move/from16 v22, v0

    .line 1406
    .local v22, "startBottom":I
    const-string v0, "clip"

    new-array v2, v1, [I

    aput v22, v2, v16

    aput v21, v2, v17

    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v23

    .line 1408
    .local v23, "clip":Landroid/animation/PropertyValuesHolder;
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    aput-object v18, v0, v16

    aput-object v19, v0, v17

    aput-object v20, v0, v1

    const/4 v1, 0x3

    aput-object v23, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 1410
    .local v3, "animator":Landroid/animation/ValueAnimator;
    iget-object v0, v6, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1412
    iget v0, v6, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mCurrentY:I

    iget v1, v6, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScreenHeight:I

    add-int/lit16 v1, v1, -0xa0

    if-ge v0, v1, :cond_f0

    .line 1413
    iget v0, v6, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScreenHeight:I

    add-int/lit16 v0, v0, -0xa0

    goto :goto_f2

    :cond_f0
    iget v0, v6, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mCurrentY:I

    :goto_f2
    move/from16 v16, v0

    .line 1414
    .local v16, "finishY":I
    const/high16 v0, 0x43960000    # 300.0f

    iget v1, v6, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScreenHeight:I

    add-int/lit16 v1, v1, -0xa0

    sub-int v1, v16, v1

    int-to-float v1, v1

    const/high16 v2, 0x43200000    # 160.0f

    div-float/2addr v1, v2

    sub-float/2addr v10, v1

    mul-float/2addr v0, v10

    float-to-int v0, v0

    .line 1417
    .local v0, "cancelDuration":I
    if-gez v0, :cond_106

    .line 1418
    const/4 v0, 0x0

    .line 1420
    .end local v0    # "cancelDuration":I
    .local v10, "cancelDuration":I
    :cond_106
    move v10, v0

    if-eqz p3, :cond_10c

    const-wide/16 v0, 0x12c

    goto :goto_10d

    :cond_10c
    int-to-long v0, v10

    :goto_10d
    invoke-virtual {v3, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1421
    new-instance v2, Lcom/android/server/wm/MiuiGesturePointerEventListener$GestureAnimatorUpdateListener;

    move-object v0, v2

    move-object v1, v6

    move-object v6, v2

    move-object v2, v3

    move/from16 v24, v8

    move-object v8, v3

    move-object v3, v11

    .line 1421
    .end local v3    # "animator":Landroid/animation/ValueAnimator;
    .local v8, "animator":Landroid/animation/ValueAnimator;
    .local v24, "nowX":I
    move-object/from16 v17, v4

    move-object v4, v7

    .line 1421
    .end local v4    # "nowFrame":Landroid/graphics/Rect;
    .local v17, "nowFrame":Landroid/graphics/Rect;
    move-object/from16 v25, v5

    move/from16 v5, p3

    .line 1421
    .end local v5    # "targetFrame":Landroid/graphics/Rect;
    .local v25, "targetFrame":Landroid/graphics/Rect;
    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/MiuiGesturePointerEventListener$GestureAnimatorUpdateListener;-><init>(Lcom/android/server/wm/MiuiGesturePointerEventListener;Landroid/animation/ValueAnimator;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;Z)V

    invoke-virtual {v8, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1423
    return-object v8
.end method

.method private calculateWindowPosition(FF)V
    .registers 9
    .param p1, "rowX"    # F
    .param p2, "rowY"    # F

    .line 921
    iget v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mDownX:F

    add-float/2addr v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScreenWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mDownX:F

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mConvertX:I

    .line 922
    iget-boolean v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mIsPortrait:Z

    const/high16 v1, 0x44870000    # 1080.0f

    const/high16 v2, 0x40400000    # 3.0f

    const/4 v3, 0x0

    if-eqz v0, :cond_34

    .line 923
    iget v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScreenHeight:I

    int-to-float v0, v0

    iget v4, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScreenHeight:I

    int-to-float v4, v4

    invoke-direct {p0, p2, v4, v3, v2}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->linearToCubic(FFFF)F

    move-result v4

    const/high16 v5, 0x44070000    # 540.0f

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScreenWidth:I

    int-to-float v5, v5

    div-float/2addr v5, v1

    mul-float/2addr v4, v5

    sub-float/2addr v0, v4

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x14

    iput v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mConvertY:I

    goto :goto_4c

    .line 926
    :cond_34
    iget v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScreenHeight:I

    int-to-float v0, v0

    iget v4, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScreenHeight:I

    int-to-float v4, v4

    invoke-direct {p0, p2, v4, v3, v2}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->linearToCubic(FFFF)F

    move-result v4

    const/high16 v5, 0x43a50000    # 330.0f

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScreenHeight:I

    int-to-float v5, v5

    div-float/2addr v5, v1

    mul-float/2addr v4, v5

    sub-float/2addr v0, v4

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x14

    iput v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mConvertY:I

    .line 929
    :goto_4c
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScreenHeight:I

    int-to-float v1, v1

    invoke-direct {p0, p2, v1, v3, v2}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->linearToCubic(FFFF)F

    move-result v1

    const v2, 0x3ec51eb8    # 0.385f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mCurrentScale:F

    .line 930
    return-void
.end method

.method private cancelGesture()V
    .registers 6

    .line 761
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    invoke-virtual {v0}, Lcom/android/server/wm/MiuiGestureController;->isSuperSavePowerMode()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 762
    return-void

    .line 764
    :cond_9
    sget-boolean v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->DEBUG:Z

    if-eqz v0, :cond_25

    .line 765
    const-string v0, "MiuiGesturePointerEventListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelGesture: mIsEnterRecents = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mIsEnterRecents:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    :cond_25
    iget-boolean v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mIsEnterRecents:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_36

    .line 768
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    iget-object v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHomeAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/MiuiGestureController;->setLaunchRecentsBehind(Lcom/android/server/wm/AppWindowToken;Z)V

    .line 769
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    invoke-virtual {v0}, Lcom/android/server/wm/MiuiGestureController;->notifyGestureCancel()V

    .line 771
    :cond_36
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    invoke-virtual {v0}, Lcom/android/server/wm/MiuiGestureController;->notifyGestureAnimationCancel()V

    .line 772
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTopClosingAppWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTopClosingAppWindow:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 773
    invoke-direct {p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->startGoBackAppAnimation()V

    goto :goto_7e

    .line 775
    :cond_4d
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScalingWindows:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_75

    .line 776
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScalingWindows:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 777
    .local v0, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/wm/WindowState;Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_75

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 778
    .local v3, "winEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wm/WindowState;Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v4}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->resetClipWindow(Lcom/android/server/wm/WindowState;)V

    .line 779
    .end local v3    # "winEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wm/WindowState;Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;>;"
    goto :goto_5f

    .line 781
    .end local v0    # "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/wm/WindowState;Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;>;>;"
    :cond_75
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/wm/MiuiGestureController;->notifyGestureFinish(Z)V

    .line 782
    invoke-direct {p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->reset()V

    .line 784
    :goto_7e
    iput-boolean v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mIsEnterRecents:Z

    .line 785
    return-void
.end method

.method static enableDebug(Z)V
    .registers 1
    .param p0, "enable"    # Z

    .line 1240
    sput-boolean p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->DEBUG:Z

    .line 1241
    return-void
.end method

.method private finishGoHomeAnimation(I)V
    .registers 13
    .param p1, "type"    # I

    .line 1244
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTopAppCloseAnimation:Landroid/view/animation/Animation;

    .line 1245
    iget-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mClosingAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_6c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 1246
    .local v2, "w":Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_6b

    .line 1247
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v4, :cond_21

    .line 1248
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    goto :goto_22

    :cond_21
    move-object v4, v0

    .line 1249
    .local v4, "controller":Lcom/android/server/wm/WindowSurfaceController;
    :goto_22
    iget-object v5, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    iget-object v6, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v5, v6}, Lcom/android/server/wm/MiuiGestureController;->stopGestureAnimation(Lcom/android/server/wm/WindowStateAnimator;)V

    .line 1251
    iget-object v5, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v5

    :try_start_2e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1252
    if-nez p1, :cond_3c

    iget-boolean v6, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mCancelAnimation:Z

    if-eqz v6, :cond_3c

    .line 1253
    monitor-exit v5
    :try_end_38
    .catchall {:try_start_2e .. :try_end_38} :catchall_65

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1256
    :cond_3c
    :try_start_3c
    iget-object v6, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const-string v7, "hide by gesture"

    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowStateAnimator;->hide(Ljava/lang/String;)V

    .line 1257
    invoke-direct {p0, v2}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->resetWindowSurface(Lcom/android/server/wm/WindowState;)V

    .line 1258
    if-nez p1, :cond_60

    .line 1259
    const/4 v6, 0x1

    iput-boolean v6, v2, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 1260
    iget-object v7, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v7, :cond_60

    iget-object v7, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v7, v7, Lcom/android/server/wm/AppWindowToken;->mAppStopped:Z

    if-eqz v7, :cond_60

    .line 1261
    invoke-virtual {v2, v3, v6}, Lcom/android/server/wm/WindowState;->destroySurface(ZZ)Z

    move-result v3

    .line 1262
    .local v3, "result":Z
    if-nez v3, :cond_60

    if-eqz v4, :cond_60

    .line 1263
    invoke-virtual {v4}, Lcom/android/server/wm/WindowSurfaceController;->destroyNotInTransaction()V

    .line 1267
    .end local v3    # "result":Z
    :cond_60
    monitor-exit v5
    :try_end_61
    .catchall {:try_start_3c .. :try_end_61} :catchall_65

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_6b

    :catchall_65
    move-exception v0

    :try_start_66
    monitor-exit v5
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 1269
    .end local v2    # "w":Lcom/android/server/wm/WindowState;
    .end local v4    # "controller":Lcom/android/server/wm/WindowSurfaceController;
    :cond_6b
    :goto_6b
    goto :goto_9

    .line 1271
    :cond_6c
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_71
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1272
    iget-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mClosingAppTokens:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    .line 1273
    .local v2, "aToken":Lcom/android/server/wm/AppWindowToken;
    iget-object v4, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureAnimator:Lcom/android/server/wm/MiuiGestureAnimator;

    invoke-virtual {v4, v2}, Lcom/android/server/wm/MiuiGestureAnimator;->hideAppWindowToken(Lcom/android/server/wm/AppWindowToken;)V

    .line 1274
    .end local v2    # "aToken":Lcom/android/server/wm/AppWindowToken;
    goto :goto_7a

    .line 1275
    :cond_8c
    monitor-exit v0
    :try_end_8d
    .catchall {:try_start_71 .. :try_end_8d} :catchall_b0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1277
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHomeAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_a2

    .line 1278
    iget-object v5, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHomeAppToken:Lcom/android/server/wm/AppWindowToken;

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->setAppTokenTransformation(Lcom/android/server/wm/AppWindowToken;FFFFF)V

    .line 1281
    :cond_a2
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureAnimator:Lcom/android/server/wm/MiuiGestureAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/MiuiGestureAnimator;->applyTransaction()V

    .line 1282
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/MiuiGestureController;->notifyGestureFinish(Z)V

    .line 1283
    invoke-direct {p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->reset()V

    .line 1284
    return-void

    .line 1275
    :catchall_b0
    move-exception v1

    :try_start_b1
    monitor-exit v0
    :try_end_b2
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_b0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private gestureReady()V
    .registers 4

    .line 649
    const-string v0, "MiuiGesturePointerEventListener"

    const-string v1, "gestureReady"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureStatus:I

    .line 651
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    invoke-virtual {v0}, Lcom/android/server/wm/MiuiGestureController;->isSuperSavePowerMode()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 652
    return-void

    .line 654
    :cond_13
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGoBackAppAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 655
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGoBackAppAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 657
    :cond_20
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHandleByGestureWindows:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 658
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mClosingAppTokens:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 659
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mClosingAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 660
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScalingWindows:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 661
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHomeAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 662
    iput-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTopClosingAppWindow:Lcom/android/server/wm/WindowState;

    .line 663
    invoke-direct {p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->registerInputConsumer()V

    .line 664
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/MiuiGestureController;->setKeepWallpaperShowing(Z)V

    .line 666
    new-instance v0, Lcom/android/server/wm/-$$Lambda$MiuiGesturePointerEventListener$zq72uAj-OPUXMkQn7NlcPrUhi0w;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$MiuiGesturePointerEventListener$zq72uAj-OPUXMkQn7NlcPrUhi0w;-><init>(Lcom/android/server/wm/MiuiGesturePointerEventListener;)V

    invoke-direct {p0, v0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->updateVisibleWindowsForGestureLocked(Ljava/util/function/Consumer;)V

    .line 718
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTopClosingAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_65

    .line 719
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTopClosingAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-direct {p0, v0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->screenshotActivity(Lcom/android/server/wm/AppWindowToken;)V

    .line 720
    iget-boolean v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mIsPortrait:Z

    if-eqz v0, :cond_63

    .line 721
    invoke-static {}, Lcom/android/server/MiuiFgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/android/server/wm/-$$Lambda$MiuiGesturePointerEventListener$Ns94XM9e5verYqFtvabsSHXi3OQ;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$MiuiGesturePointerEventListener$Ns94XM9e5verYqFtvabsSHXi3OQ;-><init>(Lcom/android/server/wm/MiuiGesturePointerEventListener;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 724
    :cond_63
    iput-boolean v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mIsFirstMove:Z

    .line 726
    :cond_65
    invoke-direct {p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->hideInputMethodWindowIfNeeded()V

    .line 727
    return-void
.end method

.method private hideInputMethodWindowIfNeeded()V
    .registers 2

    .line 1427
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 1428
    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1429
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mInputMethodManagerInternal:Landroid/view/inputmethod/InputMethodManagerInternal;

    if-nez v0, :cond_28

    .line 1430
    const-class v0, Landroid/view/inputmethod/InputMethodManagerInternal;

    .line 1431
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManagerInternal;

    iput-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mInputMethodManagerInternal:Landroid/view/inputmethod/InputMethodManagerInternal;

    .line 1434
    :cond_28
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mInputMethodManagerInternal:Landroid/view/inputmethod/InputMethodManagerInternal;

    if-eqz v0, :cond_31

    .line 1435
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mInputMethodManagerInternal:Landroid/view/inputmethod/InputMethodManagerInternal;

    invoke-interface {v0}, Landroid/view/inputmethod/InputMethodManagerInternal;->hideCurrentInputMethod()V

    .line 1438
    :cond_31
    return-void
.end method

.method private init()V
    .registers 5

    .line 191
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    invoke-static {v0, p0, v1}, Lcom/android/server/wm/MiuiGestureDetector;->init(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/MiuiGesturePointerEventListener;Lcom/android/server/wm/MiuiGestureController;)V

    .line 192
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    iget-object v0, v0, Lcom/android/server/wm/MiuiGestureController;->mHandler:Lcom/android/server/wm/MiuiGestureController$GestureThreadHandler;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$MiuiGesturePointerEventListener$YIHq3rcyza9TdXPD4ppl-HgNf3c;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$MiuiGesturePointerEventListener$YIHq3rcyza9TdXPD4ppl-HgNf3c;-><init>(Lcom/android/server/wm/MiuiGesturePointerEventListener;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/MiuiGestureController$GestureThreadHandler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 194
    new-instance v0, Lcom/android/server/wm/-$$Lambda$MiuiGesturePointerEventListener$lOlSdiL5h05QDBbhe0VQ_u65VD8;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$MiuiGesturePointerEventListener$lOlSdiL5h05QDBbhe0VQ_u65VD8;-><init>(Lcom/android/server/wm/MiuiGesturePointerEventListener;)V

    iput-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureAnimationCallback:Landroid/view/Choreographer$FrameCallback;

    .line 200
    return-void
.end method

.method public static synthetic lambda$gestureReady$3(Lcom/android/server/wm/MiuiGesturePointerEventListener;Lcom/android/server/wm/WindowStateAnimator;)V
    .registers 10
    .param p1, "windowStateAnimator"    # Lcom/android/server/wm/WindowStateAnimator;

    .line 667
    iget-boolean v0, p1, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_42

    .line 668
    iget-object v0, p1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 669
    .local v0, "win":Lcom/android/server/wm/WindowState;
    iget-object v2, p1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v2, :cond_3e

    .line 670
    iget-object v2, p1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v2, v2, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 671
    .local v2, "sc":Landroid/view/SurfaceControl;
    if-eqz v2, :cond_3e

    .line 672
    iget-boolean v3, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mIsPortrait:Z

    const/4 v4, 0x0

    if-nez v3, :cond_29

    .line 673
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    new-instance v5, Landroid/graphics/Rect;

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    invoke-direct {v5, v4, v4, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_3b

    .line 675
    :cond_29
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    new-instance v5, Landroid/graphics/Rect;

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v5, v4, v4, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 677
    :goto_3b
    invoke-virtual {v2, v1}, Landroid/view/SurfaceControl;->setOverrideScalingMode(I)V

    .line 681
    .end local v2    # "sc":Landroid/view/SurfaceControl;
    :cond_3e
    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowStateAnimator;->prepareSurfaceLocked(Z)V

    .line 682
    return-void

    .line 685
    .end local v0    # "win":Lcom/android/server/wm/WindowState;
    :cond_42
    iget-object v0, p1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 686
    .local v0, "w":Lcom/android/server/wm/WindowState;
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v2, :cond_cf

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v2

    if-eqz v2, :cond_cf

    .line 687
    iget-object v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/MiuiGestureController;->startGestureAnimation(Lcom/android/server/wm/WindowStateAnimator;)V

    .line 688
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 689
    .local v2, "aToken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v2, :cond_a6

    .line 690
    sget-boolean v3, Lcom/android/server/wm/MiuiGesturePointerEventListener;->DEBUG:Z

    if-eqz v3, :cond_7a

    .line 691
    const-string v3, "MiuiGesturePointerEventListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to mClosingAppTokens"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    :cond_7a
    iget-object v3, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mClosingAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 694
    iget-object v3, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTopClosingAppWindow:Lcom/android/server/wm/WindowState;

    if-nez v3, :cond_94

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v3, v1, :cond_90

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_94

    .line 697
    :cond_90
    iput-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTopClosingAppWindow:Lcom/android/server/wm/WindowState;

    .line 698
    iput-object v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTopClosingAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 700
    :cond_94
    iget-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mClosingAppTokens:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a6

    .line 701
    iget-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mClosingAppTokens:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 702
    iget-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureAnimator:Lcom/android/server/wm/MiuiGestureAnimator;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/MiuiGestureAnimator;->createLeash(Lcom/android/server/wm/AppWindowToken;)V

    .line 706
    :cond_a6
    new-instance v1, Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;

    invoke-direct {v1, p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;-><init>(Lcom/android/server/wm/MiuiGesturePointerEventListener;)V

    .line 707
    .local v1, "wInfo":Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;
    iget-object v3, v1, Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;->mOriFrame:Landroid/graphics/Rect;

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 708
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iput v3, v1, Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;->mOriPosX:I

    .line 709
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iput v3, v1, Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;->mOriPosY:I

    .line 710
    iput-object v2, v1, Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 711
    iget-object v3, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScalingWindows:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    iget-object v3, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHandleByGestureWindows:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 713
    if-eqz v2, :cond_cf

    .line 714
    invoke-virtual {v2, v0}, Lcom/android/server/wm/AppWindowToken;->updateLetterboxSurface(Lcom/android/server/wm/WindowState;)V

    .line 717
    .end local v1    # "wInfo":Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;
    .end local v2    # "aToken":Lcom/android/server/wm/AppWindowToken;
    :cond_cf
    return-void
.end method

.method public static synthetic lambda$gestureReady$4(Lcom/android/server/wm/MiuiGesturePointerEventListener;)V
    .registers 3

    .line 721
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    iget-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTopClosingAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 722
    invoke-virtual {v0, v1}, Lcom/android/server/wm/MiuiGestureController;->getLaunchIconInfo(Lcom/android/server/wm/AppWindowToken;)Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mSpec:Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;

    .line 721
    return-void
.end method

.method public static synthetic lambda$init$1(Lcom/android/server/wm/MiuiGesturePointerEventListener;)V
    .registers 2

    .line 193
    invoke-static {}, Landroid/view/Choreographer;->getSfInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mChoreographer:Landroid/view/Choreographer;

    return-void
.end method

.method public static synthetic lambda$init$2(Lcom/android/server/wm/MiuiGesturePointerEventListener;J)V
    .registers 5
    .param p1, "frameTimeNs"    # J

    .line 195
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 196
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mAnimationFrameCallbackScheduled:Z

    .line 197
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_b

    .line 198
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->animate(J)V

    .line 199
    return-void

    .line 197
    :catchall_b
    move-exception v1

    :try_start_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v1
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/wm/MiuiGesturePointerEventListener;)V
    .registers 3

    .line 168
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTopClosingAppWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_10

    .line 169
    const-string/jumbo v0, "recents"

    iget-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTopClosingAppWindow:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/wm/FullScreenEventReporter;->recordJankyFrames(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :cond_10
    invoke-direct {p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->resetWindowGestureState()V

    .line 175
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->reset(Z)V

    .line 176
    return-void
.end method

.method public static synthetic lambda$startGoHomeAnimation$6(Lcom/android/server/wm/MiuiGesturePointerEventListener;)V
    .registers 2

    .line 1196
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMiuiAppTransitionAnimationHelper:Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    invoke-static {v0}, Lcom/android/server/wm/AppTransitionInjector;->notifyMiuiAnimationEnd(Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;)V

    .line 1198
    return-void
.end method

.method public static synthetic lambda$unregisterInputConsumer$7(Lcom/android/server/wm/MiuiGesturePointerEventListener;)V
    .registers 3

    .line 1351
    sget-boolean v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->DEBUG:Z

    if-eqz v0, :cond_c

    .line 1352
    const-string v0, "MiuiGesturePointerEventListener"

    const-string/jumbo v1, "unregister inputConsumer"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    if-eqz v0, :cond_1f

    .line 1355
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v1, "gesture_input_consumer"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->destroyInputConsumer(Ljava/lang/String;)Z

    .line 1356
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    invoke-virtual {v0}, Landroid/view/InputEventReceiver;->dispose()V

    .line 1357
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    .line 1359
    :cond_1f
    return-void
.end method

.method public static synthetic lambda$updateVisibleWindowsForGestureLocked$5(Lcom/android/server/wm/MiuiGesturePointerEventListener;Ljava/util/function/Consumer;Lcom/android/server/wm/WindowState;)V
    .registers 12
    .param p1, "callback"    # Ljava/util/function/Consumer;
    .param p2, "w"    # Lcom/android/server/wm/WindowState;

    .line 935
    if-nez p2, :cond_3

    .line 936
    return-void

    .line 939
    :cond_3
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 940
    .local v0, "type":I
    invoke-static {v0}, Landroid/view/WindowManager$LayoutParams;->isSystemAlertWindowType(I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 941
    return-void

    .line 944
    :cond_e
    iget-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1, v0}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    move-result v1

    .line 945
    .local v1, "layer":I
    iget-object v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/16 v3, 0x7d0

    invoke-interface {v2, v3}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    move-result v2

    if-gt v2, v1, :cond_23

    .line 946
    return-void

    .line 949
    :cond_23
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getWindowingMode()I

    move-result v2

    .line 950
    .local v2, "windowMode":I
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getActivityType()I

    move-result v3

    .line 952
    .local v3, "activityType":I
    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    const/4 v5, 0x2

    if-eqz v4, :cond_49

    if-ne v3, v5, :cond_49

    .line 953
    iget-object v4, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    iget-object v6, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v4, v6}, Lcom/android/server/wm/MiuiGestureController;->isHomeAppToken(Lcom/android/server/wm/AppWindowToken;)Z

    move-result v4

    if-eqz v4, :cond_49

    .line 954
    invoke-static {p2}, Lcom/android/server/wm/MiuiGestureDetector;->isCurrentUser(Lcom/android/server/wm/WindowState;)Z

    move-result v4

    if-eqz v4, :cond_49

    .line 955
    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iput-object v4, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHomeAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 956
    iput-object p2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHomeWindow:Lcom/android/server/wm/WindowState;

    .line 957
    return-void

    .line 961
    :cond_49
    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    const/4 v6, 0x1

    const/4 v7, 0x3

    if-eqz v4, :cond_64

    if-ne v3, v7, :cond_64

    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v4, v6, :cond_64

    .line 963
    invoke-static {p2}, Lcom/android/server/wm/MiuiGestureDetector;->isCurrentUser(Lcom/android/server/wm/WindowState;)Z

    move-result v4

    if-eqz v4, :cond_64

    .line 964
    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iput-object v4, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mRecentsAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 965
    iput-object p2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mRecentsWindow:Lcom/android/server/wm/WindowState;

    .line 966
    return-void

    .line 971
    :cond_64
    if-eq v2, v7, :cond_a3

    if-ne v2, v5, :cond_69

    goto :goto_a3

    .line 977
    :cond_69
    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    const/high16 v8, 0x2000000

    and-int/2addr v4, v8

    if-eqz v4, :cond_73

    .line 978
    return-void

    .line 981
    :cond_73
    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 982
    .local v4, "animator":Lcom/android/server/wm/WindowStateAnimator;
    if-eqz v4, :cond_a2

    iget-boolean v8, v4, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    if-nez v8, :cond_9f

    invoke-virtual {v4}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v8

    if-eqz v8, :cond_a2

    .line 983
    invoke-virtual {v4}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v8

    if-eqz v8, :cond_a2

    if-eq v3, v7, :cond_a2

    if-eq v3, v5, :cond_a2

    iget-object v8, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v8, v6, :cond_9d

    iget-object v6, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v6, v5, :cond_9d

    iget-object v5, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v5, v7, :cond_a2

    :cond_9d
    if-eqz p1, :cond_a2

    .line 989
    :cond_9f
    invoke-interface {p1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 991
    :cond_a2
    return-void

    .line 973
    .end local v4    # "animator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_a3
    :goto_a3
    return-void
.end method

.method private launchHome()V
    .registers 4

    .line 1291
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHomeAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_18

    .line 1292
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    invoke-virtual {v0}, Lcom/android/server/wm/MiuiGestureController;->notifySkipAppTransition()V

    .line 1294
    :try_start_9
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v1, Lcom/android/server/wm/MiuiGesturePointerEventListener$3;

    invoke-direct {v1, p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener$3;-><init>(Lcom/android/server/wm/MiuiGesturePointerEventListener;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_15} :catch_16

    goto :goto_17

    .line 1301
    :catch_16
    move-exception v0

    .line 1303
    :goto_17
    goto :goto_38

    .line 1305
    :cond_18
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    .line 1306
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1307
    .local v0, "homeIntent":Landroid/content/Intent;
    const/high16 v1, 0x10010000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1309
    :try_start_2a
    iget-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v2, Lcom/android/server/wm/MiuiGesturePointerEventListener$4;

    invoke-direct {v2, p0, v0}, Lcom/android/server/wm/MiuiGesturePointerEventListener$4;-><init>(Lcom/android/server/wm/MiuiGesturePointerEventListener;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_36} :catch_37

    .line 1317
    goto :goto_38

    .line 1316
    :catch_37
    move-exception v1

    .line 1319
    .end local v0    # "homeIntent":Landroid/content/Intent;
    :goto_38
    return-void
.end method

.method private linearToCubic(FFFF)F
    .registers 13
    .param p1, "now"    # F
    .param p2, "original"    # F
    .param p3, "end"    # F
    .param p4, "pow"    # F

    .line 996
    cmpl-float v0, p4, p2

    if-nez v0, :cond_5

    .line 997
    return p1

    .line 1000
    :cond_5
    sub-float v0, p1, p2

    sub-float v1, p4, p2

    div-float/2addr v0, v1

    .line 1001
    .local v0, "percent":F
    const/4 v1, 0x0

    .line 1003
    .local v1, "ease":F
    const/4 v2, 0x0

    cmpl-float v2, p4, v2

    if-eqz v2, :cond_1d

    .line 1004
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v0

    float-to-double v4, v4

    float-to-double v6, p4

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    sub-double/2addr v2, v4

    double-to-float v1, v2

    .line 1006
    :cond_1d
    return v1
.end method

.method private onActionDown(FF)V
    .registers 9
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 442
    iput p1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mDownX:F

    .line 443
    iput p2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mDownY:F

    .line 444
    iget v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mDownX:F

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTailX:I

    .line 445
    iget v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mDownY:F

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTailY:I

    .line 446
    iget v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mDownX:F

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mCurrentX:I

    .line 447
    iget v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mDownY:F

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mCurrentY:I

    .line 448
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_1d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 449
    invoke-direct {p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->updateScreenParams()V

    .line 450
    iget v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScreenWidth:I

    iget v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScreenHeight:I

    iget v3, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mCurrentX:I

    iget v4, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mCurrentY:I

    iget-boolean v5, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mIsPortrait:Z

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/server/wm/MiuiGestureDetector;->onActionDown(IIIIZ)V

    .line 451
    invoke-static {}, Lcom/android/server/wm/MiuiGestureDetector;->canGestureBegin()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 452
    invoke-static {}, Lcom/android/server/wm/MiuiGestureDetector;->isAppLaunchingAndSurfaceShownLocked()I

    move-result v1

    .line 453
    .local v1, "result":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_44

    .line 454
    invoke-static {}, Lcom/android/server/wm/MiuiGestureDetector;->resetTail()V

    .line 455
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureStatus:I

    goto :goto_5c

    .line 456
    :cond_44
    if-nez v1, :cond_51

    .line 458
    const-string v2, "MiuiGesturePointerEventListener"

    const-string v3, "foreground app crash, go to home"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    invoke-direct {p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->launchHome()V

    goto :goto_5c

    .line 460
    :cond_51
    const/4 v2, -0x1

    if-ne v1, v2, :cond_5c

    .line 462
    const-string v2, "MiuiGesturePointerEventListener"

    const-string/jumbo v3, "wtf:no app was found"

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    .end local v1    # "result":I
    :cond_5c
    :goto_5c
    goto :goto_60

    .line 465
    :cond_5d
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureStatus:I

    .line 467
    :goto_60
    monitor-exit v0
    :try_end_61
    .catchall {:try_start_1d .. :try_end_61} :catchall_65

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 468
    return-void

    .line 467
    :catchall_65
    move-exception v1

    :try_start_66
    monitor-exit v0
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private onActionMove(FF)V
    .registers 26
    .param p1, "x"    # F
    .param p2, "y"    # F

    move-object/from16 v1, p0

    .line 472
    move/from16 v2, p1

    float-to-int v0, v2

    :try_start_5
    iput v0, v1, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mCurrentX:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_7} :catch_1c7

    .line 473
    move/from16 v3, p2

    float-to-int v0, v3

    :try_start_a
    iput v0, v1, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mCurrentY:I

    .line 474
    iget v0, v1, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mCurrentX:I

    iget v4, v1, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mCurrentY:I

    invoke-static {v0, v4}, Lcom/android/server/wm/MiuiGestureDetector;->onActionMove(II)V

    .line 475
    iget v0, v1, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureStatus:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v0, v4, :cond_23

    iget v0, v1, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureStatus:I

    if-ne v0, v5, :cond_1c4

    .line 476
    invoke-static {}, Lcom/android/server/wm/MiuiGestureDetector;->canGestureReady()Z

    move-result v0

    if-eqz v0, :cond_1c4

    .line 477
    :cond_23
    invoke-static {}, Lcom/android/server/wm/MiuiGestureDetector;->resendTailMessage()V

    .line 478
    iget v0, v1, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureStatus:I

    if-ne v0, v5, :cond_2d

    .line 479
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->gestureReady()V

    .line 481
    :cond_2d
    iget-object v0, v1, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    invoke-virtual {v0}, Lcom/android/server/wm/MiuiGestureController;->isSuperSavePowerMode()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 482
    return-void

    .line 484
    :cond_36
    invoke-static {}, Lcom/android/server/wm/MiuiGestureDetector;->shouldCancelGoRecents()Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_64

    .line 486
    iget-boolean v0, v1, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mIsEnterRecents:Z

    if-eqz v0, :cond_64

    .line 487
    iput-boolean v4, v1, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mIsEnterRecents:Z

    .line 488
    iget-object v0, v1, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mRecentsWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_58

    .line 489
    iget-object v0, v1, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mRecentsWindow:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 490
    .local v0, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    if-eqz v0, :cond_58

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v6

    if-eqz v6, :cond_58

    .line 491
    const-string v6, "hide recent window"

    invoke-virtual {v0, v6}, Lcom/android/server/wm/WindowStateAnimator;->hide(Ljava/lang/String;)V

    .line 495
    .end local v0    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_58
    iget-object v0, v1, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    iget-object v6, v1, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTopClosingAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0, v6, v4}, Lcom/android/server/wm/MiuiGestureController;->setLaunchRecentsBehind(Lcom/android/server/wm/AppWindowToken;Z)V

    .line 496
    iget-object v0, v1, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    invoke-virtual {v0}, Lcom/android/server/wm/MiuiGestureController;->notifyGestureCancel()V

    .line 499
    :cond_64
    invoke-direct/range {p0 .. p2}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->calculateWindowPosition(FF)V

    .line 500
    iget-object v0, v1, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScalingWindows:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    move-object v6, v0

    .line 501
    .local v6, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/wm/WindowState;Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;>;>;"
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_72
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1c1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 502
    .local v7, "winEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wm/WindowState;Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowState;

    .line 503
    .local v8, "win":Lcom/android/server/wm/WindowState;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;

    .line 505
    .local v9, "wInfo":Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;
    if-nez v9, :cond_8d

    .line 506
    goto :goto_72

    .line 509
    :cond_8d
    new-instance v10, Landroid/graphics/Rect;

    iget-object v11, v8, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-direct {v10, v11}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 510
    .local v10, "curFrame":Landroid/graphics/Rect;
    iget-object v11, v8, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    iget v12, v1, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mConvertY:I

    if-le v11, v12, :cond_a2

    .line 511
    iput-boolean v5, v9, Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;->mNeedClip:Z

    .line 512
    iget v11, v1, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mConvertY:I

    iput v11, v10, Landroid/graphics/Rect;->bottom:I

    .line 515
    :cond_a2
    iget-boolean v11, v1, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mIsFirstMove:Z

    if-eqz v11, :cond_be

    .line 516
    iget-object v11, v1, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v11, v11, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v11
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_ab} :catch_1c5

    :try_start_ab
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 518
    iget-object v12, v8, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v12, v4}, Lcom/android/server/wm/WindowStateAnimator;->setOpaqueLocked(Z)V

    .line 519
    monitor-exit v11
    :try_end_b4
    .catchall {:try_start_ab .. :try_end_b4} :catchall_b8

    :try_start_b4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_b7} :catch_1c5

    goto :goto_be

    :catchall_b8
    move-exception v0

    :try_start_b9
    monitor-exit v11
    :try_end_ba
    .catchall {:try_start_b9 .. :try_end_ba} :catchall_b8

    :try_start_ba
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 522
    :cond_be
    :goto_be
    iget-object v11, v9, Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;->mNowFrame:Landroid/graphics/Rect;

    invoke-virtual {v11, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 524
    iget-object v11, v8, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 525
    .local v11, "type":I
    const/4 v12, 0x3

    if-eq v11, v5, :cond_d1

    if-ne v11, v12, :cond_cd

    goto :goto_d1

    .line 577
    .end local v7    # "winEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wm/WindowState;Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;>;"
    .end local v8    # "win":Lcom/android/server/wm/WindowState;
    .end local v9    # "wInfo":Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;
    .end local v10    # "curFrame":Landroid/graphics/Rect;
    .end local v11    # "type":I
    :cond_cd
    move-object/from16 v22, v0

    goto/16 :goto_1ba

    .line 528
    .restart local v7    # "winEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wm/WindowState;Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;>;"
    .restart local v8    # "win":Lcom/android/server/wm/WindowState;
    .restart local v9    # "wInfo":Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;
    .restart local v10    # "curFrame":Landroid/graphics/Rect;
    .restart local v11    # "type":I
    :cond_d1
    :goto_d1
    iget-object v13, v8, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 529
    .local v13, "aToken":Lcom/android/server/wm/AppWindowToken;
    if-nez v13, :cond_d6

    .line 530
    goto :goto_72

    .line 533
    :cond_d6
    iget-object v14, v8, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v14, v14, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 534
    .local v14, "sc":Lcom/android/server/wm/WindowSurfaceController;
    if-ne v11, v12, :cond_118

    iget-object v12, v9, Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v12, :cond_118

    .line 535
    iget-object v12, v9, Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object v13, v12

    .line 536
    invoke-virtual {v13, v4}, Lcom/android/server/wm/AppWindowToken;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v12

    .line 537
    .local v12, "mainWin":Lcom/android/server/wm/WindowState;
    if-eqz v12, :cond_118

    iget-object v15, v12, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v15}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v15

    if-eqz v15, :cond_118

    .line 538
    iput-boolean v5, v9, Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;->mHasShowStartingWindow:Z

    .line 539
    iget-object v15, v1, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScalingWindows:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v15, v8}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    iget-object v15, v1, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mClosingAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 541
    iget-object v15, v1, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHandleByGestureWindows:Ljava/util/Set;

    invoke-interface {v15, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 543
    iget-object v15, v1, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScalingWindows:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v15, v12, v9}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    iget-object v15, v1, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mClosingAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    iget-object v15, v1, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHandleByGestureWindows:Ljava/util/Set;

    invoke-interface {v15, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 546
    iget-object v15, v1, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    iget-object v5, v12, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v15, v5}, Lcom/android/server/wm/MiuiGestureController;->startGestureAnimation(Lcom/android/server/wm/WindowStateAnimator;)V

    .line 549
    .end local v12    # "mainWin":Lcom/android/server/wm/WindowState;
    :cond_118
    if-nez v14, :cond_11c

    .line 550
    goto/16 :goto_1be

    .line 553
    :cond_11c
    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->isInMultiWindowMode()Z

    move-result v5

    if-eqz v5, :cond_150

    .line 554
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 555
    .local v5, "taskBounds":Landroid/graphics/Rect;
    invoke-virtual {v13}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v15

    invoke-virtual {v15, v5}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 556
    iget v15, v1, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mConvertX:I

    int-to-float v15, v15

    iget v4, v1, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mCurrentScale:F

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v4, v12

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v4, v12

    sub-float/2addr v15, v4

    float-to-int v4, v15

    iput v4, v1, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mPosX:I

    .line 557
    iget v4, v1, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mConvertY:I

    int-to-float v4, v4

    iget v12, v1, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mCurrentScale:F

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v12, v15

    sub-float/2addr v4, v12

    float-to-int v4, v4

    iput v4, v1, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mPosY:I

    .line 558
    .end local v5    # "taskBounds":Landroid/graphics/Rect;
    goto :goto_16d

    .line 559
    :cond_150
    iget v4, v1, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mConvertX:I

    int-to-float v4, v4

    iget v5, v1, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mCurrentScale:F

    iget v12, v1, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScreenWidth:I

    int-to-float v12, v12

    mul-float/2addr v5, v12

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v5, v12

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v1, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mPosX:I

    .line 560
    iget v4, v1, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mConvertY:I

    int-to-float v4, v4

    iget v5, v1, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mCurrentScale:F

    iget v12, v1, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScreenHeight:I

    int-to-float v12, v12

    mul-float/2addr v5, v12

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v1, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mPosY:I

    .line 563
    :goto_16d
    iget-boolean v4, v9, Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;->mNeedClip:Z

    if-eqz v4, :cond_17a

    .line 564
    const/4 v4, 0x0

    invoke-virtual {v10, v4, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 565
    iget-object v4, v1, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureAnimator:Lcom/android/server/wm/MiuiGestureAnimator;

    invoke-virtual {v4, v13, v10}, Lcom/android/server/wm/MiuiGestureAnimator;->setWindowCropInTransaction(Lcom/android/server/wm/AppWindowToken;Landroid/graphics/Rect;)V

    .line 567
    :cond_17a
    iget-object v4, v1, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureAnimator:Lcom/android/server/wm/MiuiGestureAnimator;

    iget v5, v1, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mPosX:I

    int-to-float v5, v5

    iget v12, v1, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mPosY:I

    int-to-float v12, v12

    invoke-virtual {v4, v13, v5, v12}, Lcom/android/server/wm/MiuiGestureAnimator;->setPositionInTransaction(Lcom/android/server/wm/AppWindowToken;FF)V

    .line 568
    iget-object v4, v1, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureAnimator:Lcom/android/server/wm/MiuiGestureAnimator;

    iget v5, v1, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mCurrentScale:F

    iget-object v12, v8, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v12, v12, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    iget-object v15, v8, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v15, v15, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    move-object/from16 v22, v0

    iget v0, v1, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mCurrentScale:F

    move-object/from16 v16, v4

    move-object/from16 v17, v13

    move/from16 v18, v5

    move/from16 v19, v12

    move/from16 v20, v15

    move/from16 v21, v0

    invoke-virtual/range {v16 .. v21}, Lcom/android/server/wm/MiuiGestureAnimator;->setMatrixInTransaction(Lcom/android/server/wm/AppWindowToken;FFFF)V

    .line 570
    iget-object v0, v1, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureAnimator:Lcom/android/server/wm/MiuiGestureAnimator;

    invoke-virtual {v0, v13}, Lcom/android/server/wm/MiuiGestureAnimator;->setDefaultRoundCorner(Lcom/android/server/wm/AppWindowToken;)V

    .line 571
    iget-object v0, v1, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureAnimator:Lcom/android/server/wm/MiuiGestureAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/MiuiGestureAnimator;->applyTransaction()V

    .line 573
    iget v0, v1, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mPosX:I

    iput v0, v9, Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;->mNowPosX:I

    .line 574
    iget v0, v1, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mPosY:I

    iput v0, v9, Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;->mNowPosY:I

    .line 575
    iget v0, v1, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mCurrentScale:F

    iput v0, v9, Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;->mNowScale:F

    .line 577
    .end local v7    # "winEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wm/WindowState;Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;>;"
    .end local v8    # "win":Lcom/android/server/wm/WindowState;
    .end local v9    # "wInfo":Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;
    .end local v10    # "curFrame":Landroid/graphics/Rect;
    .end local v11    # "type":I
    .end local v13    # "aToken":Lcom/android/server/wm/AppWindowToken;
    .end local v14    # "sc":Lcom/android/server/wm/WindowSurfaceController;
    :goto_1ba
    nop

    .line 501
    move-object/from16 v0, v22

    const/4 v4, 0x0

    :goto_1be
    const/4 v5, 0x1

    goto/16 :goto_72

    .line 578
    :cond_1c1
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mIsFirstMove:Z
    :try_end_1c4
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_1c4} :catch_1c5

    .line 585
    .end local v6    # "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/wm/WindowState;Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;>;>;"
    :cond_1c4
    goto :goto_1db

    .line 580
    :catch_1c5
    move-exception v0

    goto :goto_1ca

    :catch_1c7
    move-exception v0

    move/from16 v3, p2

    .line 581
    .local v0, "e":Ljava/lang/Exception;
    :goto_1ca
    const-string v4, "MiuiGesturePointerEventListener"

    const-string/jumbo v5, "onActionMove: exception"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->unregisterInputConsumer()V

    .line 583
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->reset()V

    .line 584
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 586
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1db
    return-void
.end method

.method private onActionUp(FF)V
    .registers 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 590
    float-to-int v0, p1

    float-to-int v1, p2

    :try_start_2
    invoke-static {v0, v1}, Lcom/android/server/wm/MiuiGestureDetector;->onActionUp(II)V

    .line 591
    iget v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureStatus:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_70

    .line 592
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mCancelCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_18

    .line 593
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mCancelCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 594
    invoke-direct {p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->cancelGesture()V

    goto :goto_70

    .line 595
    :cond_18
    invoke-static {}, Lcom/android/server/wm/MiuiGestureDetector;->isOverSpeed()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 596
    invoke-static {}, Lcom/android/server/wm/MiuiGestureDetector;->isRightDirection()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 598
    iget-boolean v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mIsEnterRecents:Z

    if-eqz v0, :cond_39

    .line 599
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    iget-object v3, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTopClosingAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0, v3, v2}, Lcom/android/server/wm/MiuiGestureController;->setLaunchRecentsBehind(Lcom/android/server/wm/AppWindowToken;Z)V

    .line 600
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    invoke-virtual {v0}, Lcom/android/server/wm/MiuiGestureController;->notifySkipAppTransition()V

    .line 601
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    invoke-virtual {v0}, Lcom/android/server/wm/MiuiGestureController;->notifyGestureCancel()V

    .line 603
    :cond_39
    invoke-direct {p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->startGoHomeAnimation()V

    goto :goto_70

    .line 606
    :cond_3d
    invoke-direct {p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->cancelGesture()V

    goto :goto_70

    .line 609
    :cond_41
    invoke-static {}, Lcom/android/server/wm/MiuiGestureDetector;->shouldGoRecents()Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 611
    iget-boolean v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mIsEnterRecents:Z

    if-eqz v0, :cond_61

    .line 612
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTopClosingAppWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTopClosingAppWindow:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 613
    invoke-direct {p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->startGoRecentsAnimation()V

    goto :goto_70

    .line 615
    :cond_5d
    invoke-direct {p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->cancelGesture()V

    goto :goto_70

    .line 619
    :cond_61
    const-string v0, "MiuiGesturePointerEventListener"

    const-string/jumbo v3, "onActionUp: go to home when recents not show behind"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    invoke-direct {p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->startGoHomeAnimation()V

    goto :goto_70

    .line 624
    :cond_6d
    invoke-direct {p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->cancelGesture()V

    .line 628
    :cond_70
    :goto_70
    iput-boolean v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mIsEnterRecents:Z

    .line 629
    iget v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureStatus:I

    if-ne v0, v1, :cond_79

    .line 630
    invoke-direct {p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->unregisterInputConsumer()V

    .line 632
    :cond_79
    iget v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_87

    iget-boolean v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mDeferReset:Z

    if-eqz v0, :cond_87

    .line 633
    iput-boolean v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mDeferReset:Z

    .line 634
    invoke-direct {p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->reset()V

    .line 636
    :cond_87
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureStatus:I
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8a} :catch_8b

    .line 645
    goto :goto_b3

    .line 637
    :catch_8b
    move-exception v0

    .line 638
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MiuiGesturePointerEventListener"

    const-string/jumbo v2, "onActionUp: exception"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    iget-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mClosingAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_aa

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 640
    .local v2, "win":Lcom/android/server/wm/WindowState;
    invoke-direct {p0, v2}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->resetClipWindow(Lcom/android/server/wm/WindowState;)V

    .line 641
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    goto :goto_9a

    .line 642
    :cond_aa
    invoke-direct {p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->unregisterInputConsumer()V

    .line 643
    invoke-direct {p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->reset()V

    .line 644
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 646
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_b3
    return-void
.end method

.method private registerInputConsumer()V
    .registers 5

    .line 1332
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    if-nez v0, :cond_24

    .line 1333
    new-instance v0, Landroid/view/InputChannel;

    invoke-direct {v0}, Landroid/view/InputChannel;-><init>()V

    .line 1334
    .local v0, "inputChanel":Landroid/view/InputChannel;
    iget-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v2, "gesture_input_consumer"

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->destroyInputConsumer(Ljava/lang/String;)Z

    .line 1335
    iget-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mToken:Landroid/os/IBinder;

    const-string v3, "gesture_input_consumer"

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/wm/WindowManagerService;->createInputConsumer(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/InputChannel;)V

    .line 1337
    new-instance v1, Lcom/android/server/wm/MiuiGesturePointerEventListener$5;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v0, v2}, Lcom/android/server/wm/MiuiGesturePointerEventListener$5;-><init>(Lcom/android/server/wm/MiuiGesturePointerEventListener;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    .line 1345
    .end local v0    # "inputChanel":Landroid/view/InputChannel;
    :cond_24
    return-void
.end method

.method private reset()V
    .registers 2

    .line 1061
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->reset(Z)V

    .line 1062
    return-void
.end method

.method private reset(Z)V
    .registers 7
    .param p1, "resetAppTransitionSkipped"    # Z

    .line 1065
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1066
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHandleByGestureWindows:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_25

    .line 1067
    iget-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHandleByGestureWindows:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 1068
    .local v2, "w":Lcom/android/server/wm/WindowState;
    iget-object v3, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/MiuiGestureController;->stopGestureAnimation(Lcom/android/server/wm/WindowStateAnimator;)V

    .line 1069
    .end local v2    # "w":Lcom/android/server/wm/WindowState;
    goto :goto_11

    .line 1071
    :cond_25
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mDeferReset:Z

    .line 1072
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mSpec:Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;

    .line 1073
    iput-object v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mRecentsAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1074
    iput-object v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mRecentsWindow:Lcom/android/server/wm/WindowState;

    .line 1075
    iput-object v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHomeWindow:Lcom/android/server/wm/WindowState;

    .line 1076
    iput-object v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHomeAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1077
    iput-object v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTopClosingAppWindow:Lcom/android/server/wm/WindowState;

    .line 1078
    iput-object v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTopClosingAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1079
    iput-object v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mCancelCallback:Ljava/lang/Runnable;

    .line 1080
    iget-object v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHandleByGestureWindows:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 1081
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mIsFirstMove:Z

    .line 1082
    iput-boolean v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mDuringGoBackHome:Z

    .line 1083
    iput-boolean v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mAnimating:Z

    .line 1084
    iput-boolean v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mLastAnimating:Z

    .line 1085
    iput-boolean v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mIsEnterRecents:Z

    .line 1086
    iget-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mClosingAppTokens:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 1087
    iget-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mClosingAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1088
    iget-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScalingWindows:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 1089
    if-eqz p1, :cond_5f

    .line 1090
    iget-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    invoke-virtual {v1}, Lcom/android/server/wm/MiuiGestureController;->disabledAppTransitionSkipped()V

    .line 1092
    :cond_5f
    iget-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureAnimator:Lcom/android/server/wm/MiuiGestureAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/MiuiGestureAnimator;->reset()V

    .line 1093
    iget-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v2, Lcom/android/server/wm/MiuiGesturePointerEventListener$2;

    invoke-direct {v2, p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener$2;-><init>(Lcom/android/server/wm/MiuiGesturePointerEventListener;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 1099
    monitor-exit v0

    .line 1100
    return-void

    .line 1099
    :catchall_72
    move-exception v1

    monitor-exit v0
    :try_end_74
    .catchall {:try_start_3 .. :try_end_74} :catchall_72

    throw v1
.end method

.method private resetClipWindow(Lcom/android/server/wm/WindowState;)V
    .registers 7
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 333
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 334
    .local v0, "clipRect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScalingWindows:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;

    .line 335
    .local v1, "info":Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;
    if-eqz v1, :cond_30

    iget-boolean v2, v1, Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;->mNeedClip:Z

    if-nez v2, :cond_30

    .line 336
    sget-boolean v2, Lcom/android/server/wm/MiuiGesturePointerEventListener;->DEBUG:Z

    if-eqz v2, :cond_2f

    .line 337
    const-string v2, "MiuiGesturePointerEventListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "don\'t need resetClipWindow: w: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_2f
    return-void

    .line 341
    :cond_30
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_41

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_3f

    goto :goto_41

    :cond_3f
    const/4 v3, 0x0

    nop

    :cond_41
    :goto_41
    move v2, v3

    .line 344
    .local v2, "isMainWin":Z
    if-nez v2, :cond_4a

    if-eqz v1, :cond_56

    iget-boolean v3, v1, Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;->mHasShowStartingWindow:Z

    if-eqz v3, :cond_56

    .line 345
    :cond_4a
    iget-object v3, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureAnimator:Lcom/android/server/wm/MiuiGestureAnimator;

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v3, v4, v0}, Lcom/android/server/wm/MiuiGestureAnimator;->setWindowCropInTransaction(Lcom/android/server/wm/AppWindowToken;Landroid/graphics/Rect;)V

    .line 346
    iget-object v3, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureAnimator:Lcom/android/server/wm/MiuiGestureAnimator;

    invoke-virtual {v3}, Lcom/android/server/wm/MiuiGestureAnimator;->applyTransaction()V

    .line 348
    :cond_56
    return-void
.end method

.method private resetWindowGestureState()V
    .registers 5

    .line 1014
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHandleByGestureWindows:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    .line 1015
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHandleByGestureWindows:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 1016
    .local v1, "w":Lcom/android/server/wm/WindowState;
    iget-object v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/MiuiGestureController;->stopGestureAnimation(Lcom/android/server/wm/WindowStateAnimator;)V

    .line 1017
    .end local v1    # "w":Lcom/android/server/wm/WindowState;
    goto :goto_e

    .line 1019
    :cond_22
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHandleByGestureWindows:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1020
    return-void
.end method

.method private resetWindowSurface(Lcom/android/server/wm/WindowState;)V
    .registers 6
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "WMS.mWindowMap"
    .end annotation

    .line 1024
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2c

    .line 1025
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1026
    .local v0, "aToken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v0, :cond_2c

    .line 1027
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppWindowToken;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 1028
    .local v1, "mainWin":Lcom/android/server/wm/WindowState;
    if-eqz v1, :cond_2c

    iget-object v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScalingWindows:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v2, :cond_2c

    .line 1030
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v2, v2, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1031
    .local v2, "sur":Landroid/view/SurfaceControl;
    if-eqz v2, :cond_2c

    .line 1032
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 1038
    .end local v0    # "aToken":Lcom/android/server/wm/AppWindowToken;
    .end local v1    # "mainWin":Lcom/android/server/wm/WindowState;
    .end local v2    # "sur":Landroid/view/SurfaceControl;
    :cond_2c
    if-eqz p1, :cond_31

    .line 1039
    invoke-direct {p0, p1}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->resetClipWindow(Lcom/android/server/wm/WindowState;)V

    .line 1042
    :cond_31
    if-eqz p1, :cond_64

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v0, :cond_64

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-nez v0, :cond_3e

    goto :goto_64

    .line 1047
    :cond_3e
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1048
    .local v0, "sc":Landroid/view/SurfaceControl;
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 1050
    if-eqz v0, :cond_5f

    .line 1051
    :try_start_49
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->hide()V

    .line 1053
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setPosition(FF)V
    :try_end_59
    .catchall {:try_start_49 .. :try_end_59} :catchall_5a

    goto :goto_5f

    .line 1056
    :catchall_5a
    move-exception v1

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v1

    :cond_5f
    :goto_5f
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 1057
    nop

    .line 1058
    return-void

    .line 1044
    .end local v0    # "sc":Landroid/view/SurfaceControl;
    :cond_64
    :goto_64
    return-void
.end method

.method private scheduleAnimation()V
    .registers 3

    .line 351
    iget-boolean v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mAnimationFrameCallbackScheduled:Z

    if-nez v0, :cond_e

    .line 352
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mAnimationFrameCallbackScheduled:Z

    .line 353
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureAnimationCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 355
    :cond_e
    return-void
.end method

.method private screenshotActivity(Lcom/android/server/wm/AppWindowToken;)V
    .registers 3
    .param p1, "token"    # Lcom/android/server/wm/AppWindowToken;

    .line 1010
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/MiuiGestureController;->notifyGestureReady(Lcom/android/server/wm/AppWindowToken;)V

    .line 1011
    return-void
.end method

.method private sendCloseSystemWindows(Ljava/lang/String;)V
    .registers 3
    .param p1, "reason"    # Ljava/lang/String;

    .line 1287
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 1288
    return-void
.end method

.method private setAppTokenTransformation(Lcom/android/server/wm/AppWindowToken;FFFFF)V
    .registers 15
    .param p1, "aToken"    # Lcom/android/server/wm/AppWindowToken;
    .param p2, "alpha"    # F
    .param p3, "sx"    # F
    .param p4, "sy"    # F
    .param p5, "tx"    # F
    .param p6, "ty"    # F

    .line 1323
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1324
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureAnimator:Lcom/android/server/wm/MiuiGestureAnimator;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/MiuiGestureAnimator;->setAlphaInTransaction(Lcom/android/server/wm/AppWindowToken;F)V

    .line 1325
    iget-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureAnimator:Lcom/android/server/wm/MiuiGestureAnimator;

    invoke-virtual {v1, p1, p5, p6}, Lcom/android/server/wm/MiuiGestureAnimator;->setPositionInTransaction(Lcom/android/server/wm/AppWindowToken;FF)V

    .line 1326
    iget-object v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureAnimator:Lcom/android/server/wm/MiuiGestureAnimator;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    move v4, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/MiuiGestureAnimator;->setMatrixInTransaction(Lcom/android/server/wm/AppWindowToken;FFFF)V

    .line 1327
    iget-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureAnimator:Lcom/android/server/wm/MiuiGestureAnimator;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/MiuiGestureAnimator;->setDefaultRoundCorner(Lcom/android/server/wm/AppWindowToken;)V

    .line 1328
    monitor-exit v0

    .line 1329
    return-void

    .line 1328
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method private startGoBackAppAnimation()V
    .registers 8

    .line 788
    sget-boolean v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->DEBUG:Z

    if-eqz v0, :cond_c

    .line 789
    const-string v0, "MiuiGesturePointerEventListener"

    const-string/jumbo v1, "startGoBackAppAnimation"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    :cond_c
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 793
    .local v0, "animatorItems":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/animation/Animator;>;"
    iget-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScalingWindows:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScalingWindows:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4a

    .line 794
    iget-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScalingWindows:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 795
    .local v1, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/wm/WindowState;Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 796
    .local v3, "winEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wm/WindowState;Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 797
    .local v4, "w":Lcom/android/server/wm/WindowState;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;

    .line 798
    .local v5, "wInfo":Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;
    const/4 v6, 0x0

    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->applyResetAnimation(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;Z)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 799
    .local v6, "a":Landroid/animation/ValueAnimator;
    if-eqz v6, :cond_49

    .line 800
    invoke-interface {v0, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 802
    .end local v3    # "winEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wm/WindowState;Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;>;"
    .end local v4    # "w":Lcom/android/server/wm/WindowState;
    .end local v5    # "wInfo":Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;
    .end local v6    # "a":Landroid/animation/ValueAnimator;
    :cond_49
    goto :goto_27

    .line 805
    .end local v1    # "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/wm/WindowState;Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;>;>;"
    :cond_4a
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-lez v1, :cond_7d

    .line 806
    iget-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGoBackAppAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 807
    iget-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGoBackAppAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 810
    :cond_5d
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGoBackAppAnimatorSet:Landroid/animation/AnimatorSet;

    .line 811
    iget-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGoBackAppAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 813
    iget-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGoBackAppAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/android/server/wm/MiuiGesturePointerEventListener$1;

    invoke-direct {v2, p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener$1;-><init>(Lcom/android/server/wm/MiuiGesturePointerEventListener;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 867
    const-string v1, "cancel"

    invoke-static {v1}, Lcom/android/server/wm/FullScreenEventReporter;->resetAnimationFrameIntervalParams(Ljava/lang/String;)V

    .line 869
    iget-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGoBackAppAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 871
    :cond_7d
    return-void
.end method

.method private startGoHomeAnimation()V
    .registers 15

    .line 1104
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    invoke-virtual {v0}, Lcom/android/server/wm/MiuiGestureController;->isSuperSavePowerMode()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1105
    invoke-direct {p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->launchHome()V

    .line 1106
    return-void

    .line 1109
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureAnimator:Lcom/android/server/wm/MiuiGestureAnimator;

    iget-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHomeAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/MiuiGestureAnimator;->createLeash(Lcom/android/server/wm/AppWindowToken;)V

    .line 1110
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1111
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    .line 1112
    .local v1, "displayInfo":Landroid/view/DisplayInfo;
    iget v2, v1, Landroid/view/DisplayInfo;->appWidth:I

    .line 1113
    .local v2, "width":I
    iget v3, v1, Landroid/view/DisplayInfo;->appHeight:I

    .line 1114
    .local v3, "height":I
    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1115
    .local v4, "appFrame":Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    move-object v12, v6

    .line 1117
    .local v12, "closingAppStartRect":Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTopClosingAppWindow:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_57

    .line 1118
    iget-object v6, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTopClosingAppWindow:Lcom/android/server/wm/WindowState;

    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {v4, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1119
    iget v6, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mPosX:I

    iget v7, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mPosY:I

    iget v8, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mPosX:I

    .line 1120
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mCurrentScale:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v8, v9

    iget v9, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mPosY:I

    .line 1121
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    iget v11, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mCurrentScale:F

    mul-float/2addr v10, v11

    float-to-int v10, v10

    add-int/2addr v9, v10

    .line 1119
    invoke-virtual {v12, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 1124
    :cond_57
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    move-object v13, v6

    .line 1125
    .local v13, "positionRect":Landroid/graphics/Rect;
    iget-boolean v6, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mIsPortrait:Z

    if-eqz v6, :cond_b7

    .line 1126
    iget-object v6, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mSpec:Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;

    if-nez v6, :cond_81

    .line 1127
    const-string v6, "MiuiGesturePointerEventListener"

    const-string/jumbo v7, "mSpec == null, wait 50 ms"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1130
    .local v6, "start":J
    :goto_71
    iget-object v8, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mSpec:Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;

    if-nez v8, :cond_81

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x32

    add-long/2addr v10, v6

    cmp-long v8, v8, v10

    if-gez v8, :cond_81

    goto :goto_71

    .line 1134
    .end local v6    # "start":J
    :cond_81
    iget-object v6, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mSpec:Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;

    if-eqz v6, :cond_b0

    iget-object v6, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mSpec:Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;

    iget-object v6, v6, Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_b0

    .line 1135
    iget-object v6, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mSpec:Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;

    iget-object v6, v6, Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v13, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1136
    invoke-virtual {v13}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_b7

    .line 1137
    iget-object v6, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureAnimator:Lcom/android/server/wm/MiuiGestureAnimator;

    iget-object v7, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTopClosingAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v8, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTopClosingAppWindow:Lcom/android/server/wm/WindowState;

    iget-object v9, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mSpec:Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;

    iget-object v9, v9, Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/wm/MiuiGestureAnimator;->createThumbnail(Lcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/WindowState;Landroid/graphics/Bitmap;)Z

    move-result v6

    .line 1139
    .local v6, "res":Z
    if-eqz v6, :cond_af

    .line 1140
    iget-object v7, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    iget-object v7, v7, Lcom/android/server/wm/MiuiGestureController;->mMiuiAppTransitionAnimationHelper:Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    invoke-static {v7}, Lcom/android/server/wm/AppTransitionInjector;->notifyMiuiAnimationStart(Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;)V

    .line 1143
    .end local v6    # "res":Z
    :cond_af
    goto :goto_b7

    .line 1145
    :cond_b0
    const-string v6, "MiuiGesturePointerEventListener"

    const-string v7, "fail to get mSpec!"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    :cond_b7
    :goto_b7
    const/4 v6, 0x0

    const/4 v10, 0x1

    .line 1151
    invoke-static {}, Lcom/android/server/wm/MiuiGestureDetector;->calculateInertia()Landroid/graphics/Point;

    move-result-object v11

    .line 1149
    move-object v7, v4

    move-object v8, v13

    move-object v9, v12

    invoke-static/range {v6 .. v11}, Lcom/android/server/wm/AppTransitionInjector;->createWallPaperOpenAnimation(ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Point;)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTopAppCloseAnimation:Landroid/view/animation/Animation;

    .line 1152
    iget-object v6, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTopAppCloseAnimation:Landroid/view/animation/Animation;

    if-eqz v6, :cond_ea

    .line 1153
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 1154
    .local v6, "containingWidth":I
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 1155
    .local v7, "containingHeight":I
    iget-object v8, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTopAppCloseAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v8}, Landroid/view/animation/Animation;->isInitialized()Z

    move-result v8

    if-nez v8, :cond_df

    .line 1156
    iget-object v8, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTopAppCloseAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v8, v6, v7, v2, v3}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 1158
    :cond_df
    iget-object v8, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTopAppCloseAnimation:Landroid/view/animation/Animation;

    iget-object v9, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 1161
    .end local v6    # "containingWidth":I
    .end local v7    # "containingHeight":I
    :cond_ea
    iget-object v6, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mClosingAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_125

    .line 1162
    iget-object v6, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mClosingAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_f8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_125

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowState;

    .line 1163
    .local v7, "w":Lcom/android/server/wm/WindowState;
    if-eqz v7, :cond_124

    iget-object v8, v7, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v8, :cond_124

    iget-object v8, v7, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v8

    if-eqz v8, :cond_124

    .line 1164
    iget-object v8, v7, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v8, v8, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 1166
    .local v8, "surfaceController":Lcom/android/server/wm/WindowSurfaceController;
    if-eqz v8, :cond_124

    .line 1167
    iget-object v9, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    iget-object v10, v7, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v9, v10}, Lcom/android/server/wm/MiuiGestureController;->startGestureAnimation(Lcom/android/server/wm/WindowStateAnimator;)V

    .line 1168
    iget-object v9, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHandleByGestureWindows:Ljava/util/Set;

    invoke-interface {v9, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1171
    .end local v7    # "w":Lcom/android/server/wm/WindowState;
    .end local v8    # "surfaceController":Lcom/android/server/wm/WindowSurfaceController;
    :cond_124
    goto :goto_f8

    .line 1174
    :cond_125
    iget-object v6, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHomeWindow:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_140

    .line 1175
    iget-object v6, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHomeWindow:Lcom/android/server/wm/WindowState;

    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {v4, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1176
    iget-object v6, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    iget-object v7, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHomeWindow:Lcom/android/server/wm/WindowState;

    iget-object v7, v7, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v6, v7}, Lcom/android/server/wm/MiuiGestureController;->startGestureAnimation(Lcom/android/server/wm/WindowStateAnimator;)V

    .line 1177
    iget-object v6, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHandleByGestureWindows:Ljava/util/Set;

    iget-object v7, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHomeWindow:Lcom/android/server/wm/WindowState;

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1180
    :cond_140
    invoke-direct {p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->launchHome()V

    .line 1182
    iput-boolean v5, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mCancelAnimation:Z

    .line 1183
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mDuringGoBackHome:Z

    .line 1184
    invoke-static {v5, v4, v13, v12}, Lcom/android/server/wm/AppTransitionInjector;->createWallPaperOpenAnimation(ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mOpenAnimation:Landroid/view/animation/Animation;

    .line 1186
    iget-object v5, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mOpenAnimation:Landroid/view/animation/Animation;

    if-eqz v5, :cond_172

    .line 1187
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 1188
    .local v5, "containingWidth":I
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 1189
    .local v6, "containingHeight":I
    iget-object v7, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mOpenAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v7}, Landroid/view/animation/Animation;->isInitialized()Z

    move-result v7

    if-nez v7, :cond_167

    .line 1190
    iget-object v7, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mOpenAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v7, v5, v6, v2, v3}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 1192
    :cond_167
    iget-object v7, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mOpenAnimation:Landroid/view/animation/Animation;

    iget-object v8, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 1195
    .end local v5    # "containingWidth":I
    .end local v6    # "containingHeight":I
    :cond_172
    iget-object v5, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/server/wm/-$$Lambda$MiuiGesturePointerEventListener$QVAt2f_GorcdRI2sRzf0JFuyBNw;

    invoke-direct {v6, p0}, Lcom/android/server/wm/-$$Lambda$MiuiGesturePointerEventListener$QVAt2f_GorcdRI2sRzf0JFuyBNw;-><init>(Lcom/android/server/wm/MiuiGesturePointerEventListener;)V

    const/high16 v7, 0x43af0000    # 350.0f

    iget-object v8, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 1198
    invoke-virtual {v8}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v8

    mul-float/2addr v7, v8

    float-to-long v7, v7

    .line 1195
    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1200
    const-string v5, "home"

    invoke-static {v5}, Lcom/android/server/wm/FullScreenEventReporter;->resetAnimationFrameIntervalParams(Ljava/lang/String;)V

    .line 1202
    invoke-direct {p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->scheduleAnimation()V

    .line 1203
    return-void
.end method

.method private startGoRecentsAnimation()V
    .registers 13

    .line 874
    sget-boolean v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->DEBUG:Z

    if-eqz v0, :cond_c

    .line 875
    const-string v0, "MiuiGesturePointerEventListener"

    const-string/jumbo v1, "startGoRecentsAnimation"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    :cond_c
    const-string/jumbo v0, "recents"

    invoke-static {v0}, Lcom/android/server/wm/FullScreenEventReporter;->resetAnimationFrameIntervalParams(Ljava/lang/String;)V

    .line 882
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScalingWindows:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 883
    .local v0, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/wm/WindowState;Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1c
    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 884
    .local v2, "winEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wm/WindowState;Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 885
    .local v3, "win":Lcom/android/server/wm/WindowState;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;

    .line 887
    .local v4, "wInfo":Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;
    if-eqz v3, :cond_1c

    if-nez v4, :cond_39

    .line 888
    goto :goto_1c

    .line 891
    :cond_39
    iget v5, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTargetX:I

    .line 892
    .local v5, "targetX":I
    iget v6, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTargetY:I

    .line 893
    .local v6, "targetY":I
    iget v7, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTargetWidth:I

    int-to-float v7, v7

    iget v8, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScreenWidth:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    .line 894
    .local v7, "targetScale":F
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isInMultiWindowMode()Z

    move-result v8

    if-eqz v8, :cond_68

    .line 895
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v8

    .line 896
    .local v8, "task":Lcom/android/server/wm/Task;
    if-eqz v8, :cond_68

    .line 897
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 898
    .local v9, "taskBounds":Landroid/graphics/Rect;
    invoke-virtual {v8, v9}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 899
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v10

    if-lez v10, :cond_68

    .line 900
    iget v10, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTargetWidth:I

    int-to-float v10, v10

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    div-float v7, v10, v11

    .line 905
    .end local v8    # "task":Lcom/android/server/wm/Task;
    .end local v9    # "taskBounds":Landroid/graphics/Rect;
    :cond_68
    iget-object v8, v4, Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;->mOriFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    .line 906
    .local v8, "targetBottom":I
    iget v9, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTargetWidth:I

    if-lez v9, :cond_85

    iget-object v9, v4, Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;->mNowFrame:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    if-lez v9, :cond_85

    .line 907
    iget v9, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTargetHeight:I

    iget-object v10, v4, Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;->mNowFrame:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    mul-int/2addr v9, v10

    iget v10, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTargetWidth:I

    div-int v8, v9, v10

    .line 910
    :cond_85
    iput v5, v4, Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;->mTargetPosX:I

    .line 911
    iput v6, v4, Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;->mTargetPosY:I

    .line 912
    iput v7, v4, Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;->mTargetScale:F

    .line 913
    iput v8, v4, Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;->mTargetBottom:I

    .line 914
    .end local v2    # "winEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wm/WindowState;Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;>;"
    .end local v3    # "win":Lcom/android/server/wm/WindowState;
    .end local v4    # "wInfo":Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;
    .end local v5    # "targetX":I
    .end local v6    # "targetY":I
    .end local v7    # "targetScale":F
    .end local v8    # "targetBottom":I
    goto :goto_1c

    .line 916
    :cond_8e
    iget-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mRecentsStrategy:Lcom/android/server/wm/MiuiGestureStrategy;

    iget-object v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mClosingAppTokens:Ljava/util/Set;

    iget-object v3, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScalingWindows:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v1, v2, v3}, Lcom/android/server/wm/MiuiGestureStrategy;->startAnimation(Ljava/util/Set;Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 917
    const-string/jumbo v1, "recentapps"

    invoke-direct {p0, v1}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 918
    return-void
.end method

.method private unregisterInputConsumer()V
    .registers 3

    .line 1350
    invoke-static {}, Lcom/android/server/MiuiFgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/-$$Lambda$MiuiGesturePointerEventListener$2i2m16R-VBVmwqjhX7lH69Kkvvc;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$MiuiGesturePointerEventListener$2i2m16R-VBVmwqjhX7lH69Kkvvc;-><init>(Lcom/android/server/wm/MiuiGesturePointerEventListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 1360
    return-void
.end method

.method private updateScreenParams()V
    .registers 9

    .line 740
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 741
    .local v0, "ds":Lcom/android/server/wm/DisplayContent;
    iget v1, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 742
    .local v1, "displayHeight":I
    iget v2, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 744
    .local v2, "displayWidth":I
    iget-object v3, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 745
    .local v3, "configuration":Landroid/content/res/Configuration;
    iget v4, v3, Landroid/content/res/Configuration;->orientation:I

    .line 746
    .local v4, "ori":I
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 747
    .local v5, "max":I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 749
    .local v6, "min":I
    const/4 v7, 0x1

    if-ne v4, v7, :cond_2a

    .line 750
    iput v5, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScreenHeight:I

    .line 751
    iput v6, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScreenWidth:I

    .line 752
    iput-boolean v7, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mIsPortrait:Z

    goto :goto_34

    .line 753
    :cond_2a
    const/4 v7, 0x2

    if-ne v4, v7, :cond_34

    .line 754
    iput v6, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScreenHeight:I

    .line 755
    iput v5, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mScreenWidth:I

    .line 756
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mIsPortrait:Z

    .line 758
    :cond_34
    :goto_34
    return-void
.end method

.method private updateVisibleWindowsForGestureLocked(Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowStateAnimator;",
            ">;)V"
        }
    .end annotation

    .line 933
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/WindowStateAnimator;>;"
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 934
    iget-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    new-instance v2, Lcom/android/server/wm/-$$Lambda$MiuiGesturePointerEventListener$tcVgDq9sYmXplD0vnE-YdoI-vSw;

    invoke-direct {v2, p0, p1}, Lcom/android/server/wm/-$$Lambda$MiuiGesturePointerEventListener$tcVgDq9sYmXplD0vnE-YdoI-vSw;-><init>(Lcom/android/server/wm/MiuiGesturePointerEventListener;Ljava/util/function/Consumer;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 992
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 993
    return-void

    .line 992
    :catchall_1c
    move-exception v1

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method


# virtual methods
.method cancelGoHomeAnimationIfNeeded(Lcom/android/server/wm/AppWindowToken;)V
    .registers 7
    .param p1, "token"    # Lcom/android/server/wm/AppWindowToken;

    .line 1224
    iget-boolean v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mDuringGoBackHome:Z

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mClosingAppTokens:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1225
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1226
    const/4 v1, 0x1

    :try_start_10
    iput-boolean v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mCancelAnimation:Z

    .line 1227
    sget-boolean v2, Lcom/android/server/wm/MiuiGesturePointerEventListener;->DEBUG:Z

    if-eqz v2, :cond_2c

    .line 1228
    const-string v2, "MiuiGesturePointerEventListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancel go home animation token = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    :cond_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_10 .. :try_end_2d} :catchall_31

    .line 1231
    invoke-direct {p0, v1}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->finishGoHomeAnimation(I)V

    goto :goto_34

    .line 1230
    :catchall_31
    move-exception v1

    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v1

    .line 1233
    :cond_34
    :goto_34
    return-void
.end method

.method isGestureRunning()Z
    .registers 3

    .line 1220
    iget v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method launchRecentsBehind()V
    .registers 4

    .line 731
    iget-boolean v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mIsEnterRecents:Z

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    invoke-virtual {v0}, Lcom/android/server/wm/MiuiGestureController;->isSuperSavePowerMode()Z

    move-result v0

    if-nez v0, :cond_20

    .line 732
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mIsEnterRecents:Z

    .line 733
    iget-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    iget-object v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTopClosingAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/MiuiGestureController;->setLaunchRecentsBehind(Lcom/android/server/wm/AppWindowToken;Z)V

    .line 734
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    invoke-virtual {v0}, Lcom/android/server/wm/MiuiGestureController;->notifySkipAppTransition()V

    .line 735
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    invoke-virtual {v0}, Lcom/android/server/wm/MiuiGestureController;->notifyGestureStartRecents()V

    .line 737
    :cond_20
    return-void
.end method

.method notifyStartFromRecents(Lcom/android/server/wm/AppWindowToken;)V
    .registers 3
    .param p1, "token"    # Lcom/android/server/wm/AppWindowToken;

    .line 1236
    iget-object v0, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mRecentsStrategy:Lcom/android/server/wm/MiuiGestureStrategy;

    invoke-interface {v0, p1}, Lcom/android/server/wm/MiuiGestureStrategy;->cancelAnimation(Lcom/android/server/wm/AppWindowToken;)V

    .line 1237
    return-void
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .registers 7
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 359
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 360
    .local v0, "action":I
    const/4 v1, 0x1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_19

    invoke-virtual {p0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->isGestureRunning()Z

    move-result v2

    if-nez v2, :cond_19

    .line 361
    const-string v2, "MiuiGesturePointerEventListener"

    const-string/jumbo v3, "will ignore multi-touch event"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iput-boolean v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mInMultiTouch:Z

    .line 363
    return-void

    .line 365
    :cond_19
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v2

    .line 366
    .local v2, "args":Lcom/android/internal/os/SomeArgs;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 367
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 368
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 369
    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_6c

    goto :goto_69

    .line 374
    :pswitch_40
    iget-boolean v3, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mInMultiTouch:Z

    if-nez v3, :cond_69

    .line 375
    iget-object v3, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_69

    .line 380
    :pswitch_4e
    iget-boolean v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mInMultiTouch:Z

    if-eqz v1, :cond_54

    .line 381
    iput-boolean v3, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mInMultiTouch:Z

    .line 383
    :cond_54
    iget-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 384
    goto :goto_69

    .line 371
    :pswitch_5f
    iget-object v1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 372
    nop

    .line 388
    :cond_69
    :goto_69
    return-void

    nop

    nop

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_5f
        :pswitch_4e
        :pswitch_40
        :pswitch_4e
    .end packed-switch
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;I)V
    .registers 3
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
    .param p2, "displayId"    # I

    .line 392
    if-nez p2, :cond_5

    .line 393
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->onPointerEvent(Landroid/view/MotionEvent;)V

    .line 395
    :cond_5
    return-void
.end method

.method setFinishCallback(Ljava/lang/Runnable;)V
    .registers 2
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 398
    iput-object p1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mCancelCallback:Ljava/lang/Runnable;

    .line 399
    return-void
.end method

.method setLoadBackHomeAnimation(Z)V
    .registers 2
    .param p1, "loadBackHomeAnimation"    # Z

    .line 438
    iput-boolean p1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mLoadBackHomeAnimation:Z

    .line 439
    return-void
.end method

.method setRecentsAppWindowToken(Lcom/android/server/wm/AppWindowToken;)V
    .registers 5
    .param p1, "token"    # Lcom/android/server/wm/AppWindowToken;

    .line 1213
    sget-boolean v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->DEBUG:Z

    if-eqz v0, :cond_1b

    .line 1214
    const-string v0, "MiuiGesturePointerEventListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRecentsAppWindowToken token = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    :cond_1b
    iput-object p1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mRecentsAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1217
    return-void
.end method

.method setRecentsItemCoordinates(IIII)V
    .registers 5
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "targetWidth"    # I
    .param p4, "targetHeight"    # I

    .line 431
    iput p1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTargetX:I

    .line 432
    iput p2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTargetY:I

    .line 433
    iput p3, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTargetWidth:I

    .line 434
    iput p4, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mTargetHeight:I

    .line 435
    return-void
.end method

.method setRecentsWindowState(Lcom/android/server/wm/WindowState;)V
    .registers 5
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 1206
    sget-boolean v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->DEBUG:Z

    if-eqz v0, :cond_1b

    .line 1207
    const-string v0, "MiuiGesturePointerEventListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRecentsWindowState w = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    :cond_1b
    iput-object p1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mRecentsWindow:Lcom/android/server/wm/WindowState;

    .line 1210
    return-void
.end method
