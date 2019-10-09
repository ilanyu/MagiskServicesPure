.class final Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;
.super Ljava/lang/Object;
.source "SurfaceAnimationRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SurfaceAnimationRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RunningAnimation"
.end annotation


# instance fields
.field mAnim:Landroid/animation/ValueAnimator;

.field final mAnimSpec:Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

.field private mCancelled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mCancelLock"
    .end annotation
.end field

.field final mFinishCallback:Ljava/lang/Runnable;

.field final mLeash:Landroid/view/SurfaceControl;


# direct methods
.method constructor <init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Landroid/view/SurfaceControl;Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "animSpec"    # Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;
    .param p2, "leash"    # Landroid/view/SurfaceControl;
    .param p3, "finishCallback"    # Ljava/lang/Runnable;

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    iput-object p1, p0, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mAnimSpec:Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

    .line 261
    iput-object p2, p0, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mLeash:Landroid/view/SurfaceControl;

    .line 262
    iput-object p3, p0, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mFinishCallback:Ljava/lang/Runnable;

    .line 263
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    .line 250
    iget-boolean v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mCancelled:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;
    .param p1, "x1"    # Z

    .line 250
    iput-boolean p1, p0, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mCancelled:Z

    return p1
.end method
