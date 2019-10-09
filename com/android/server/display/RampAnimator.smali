.class final Lcom/android/server/display/RampAnimator;
.super Ljava/lang/Object;
.source "RampAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/RampAnimator$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mAnimatedValue:F

.field private mAnimating:Z

.field private final mAnimationCallback:Ljava/lang/Runnable;

.field private final mChoreographer:Landroid/view/Choreographer;

.field private mCurrentValue:I

.field private mFirstTime:Z

.field private mLastFrameTimeNanos:J

.field private mListener:Lcom/android/server/display/RampAnimator$Listener;

.field private final mObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mProperty:Landroid/util/IntProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/IntProperty<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mRate:I

.field private mStartFrameTimeNanos:J

.field private mTargetValue:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/util/IntProperty;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/util/IntProperty<",
            "TT;>;)V"
        }
    .end annotation

    .line 46
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    .local p2, "property":Landroid/util/IntProperty;, "Landroid/util/IntProperty<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    .line 137
    new-instance v0, Lcom/android/server/display/RampAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/RampAnimator$1;-><init>(Lcom/android/server/display/RampAnimator;)V

    iput-object v0, p0, Lcom/android/server/display/RampAnimator;->mAnimationCallback:Ljava/lang/Runnable;

    .line 47
    iput-object p1, p0, Lcom/android/server/display/RampAnimator;->mObject:Ljava/lang/Object;

    .line 48
    iput-object p2, p0, Lcom/android/server/display/RampAnimator;->mProperty:Landroid/util/IntProperty;

    .line 49
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/RampAnimator;)Landroid/view/Choreographer;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;

    .line 27
    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/display/RampAnimator;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;

    .line 27
    iget-wide v0, p0, Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/android/server/display/RampAnimator;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;
    .param p1, "x1"    # Z

    .line 27
    iput-boolean p1, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/server/display/RampAnimator;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;
    .param p1, "x1"    # J

    .line 27
    iput-wide p1, p0, Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/android/server/display/RampAnimator;)Lcom/android/server/display/RampAnimator$Listener;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;

    .line 27
    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/display/RampAnimator;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;

    .line 27
    iget-wide v0, p0, Lcom/android/server/display/RampAnimator;->mStartFrameTimeNanos:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/server/display/RampAnimator;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;

    .line 27
    iget v0, p0, Lcom/android/server/display/RampAnimator;->mRate:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/display/RampAnimator;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;

    .line 27
    iget v0, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/display/RampAnimator;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;
    .param p1, "x1"    # I

    .line 27
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/display/RampAnimator;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;

    .line 27
    iget v0, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/display/RampAnimator;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;

    .line 27
    iget v0, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/display/RampAnimator;F)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;
    .param p1, "x1"    # F

    .line 27
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/display/RampAnimator;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;

    .line 27
    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/display/RampAnimator;)Landroid/util/IntProperty;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;

    .line 27
    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mProperty:Landroid/util/IntProperty;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/display/RampAnimator;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;

    .line 27
    invoke-direct {p0}, Lcom/android/server/display/RampAnimator;->postAnimationCallback()V

    return-void
.end method

.method private cancelAnimationCallback()V
    .registers 5

    .line 134
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/android/server/display/RampAnimator;->mAnimationCallback:Ljava/lang/Runnable;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 135
    return-void
.end method

.method private postAnimationCallback()V
    .registers 5

    .line 130
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/android/server/display/RampAnimator;->mAnimationCallback:Ljava/lang/Runnable;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 131
    return-void
.end method


# virtual methods
.method public animateTo(II)Z
    .registers 7
    .param p1, "target"    # I
    .param p2, "rate"    # I

    .line 64
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    iget-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_51

    if-gtz p2, :cond_9

    goto :goto_51

    .line 90
    :cond_9
    iget-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    if-eqz v0, :cond_25

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mRate:I

    if-gt p2, v0, :cond_25

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-gt p1, v0, :cond_1b

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    iget v3, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    if-le v0, v3, :cond_25

    :cond_1b
    iget v0, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    iget v3, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-gt v0, v3, :cond_27

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-gt v0, p1, :cond_27

    .line 94
    :cond_25
    iput p2, p0, Lcom/android/server/display/RampAnimator;->mRate:I

    .line 97
    :cond_27
    iget v0, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    if-eq v0, p1, :cond_2d

    move v2, v1

    nop

    :cond_2d
    move v0, v2

    .line 98
    .local v0, "changed":Z
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    .line 102
    if-eqz v0, :cond_38

    .line 103
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/display/RampAnimator;->mStartFrameTimeNanos:J

    .line 105
    :cond_38
    iget-boolean v2, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    if-nez v2, :cond_50

    iget v2, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-eq p1, v2, :cond_50

    .line 106
    iput-boolean v1, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    .line 107
    iget v1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    int-to-float v1, v1

    iput v1, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    .line 108
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J

    .line 109
    invoke-direct {p0}, Lcom/android/server/display/RampAnimator;->postAnimationCallback()V

    .line 112
    :cond_50
    return v0

    .line 65
    .end local v0    # "changed":Z
    :cond_51
    :goto_51
    iget-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    if-nez v0, :cond_5b

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-eq p1, v0, :cond_5a

    goto :goto_5b

    .line 80
    :cond_5a
    return v2

    .line 66
    :cond_5b
    :goto_5b
    iput-boolean v2, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    .line 67
    iput v2, p0, Lcom/android/server/display/RampAnimator;->mRate:I

    .line 68
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    .line 69
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    .line 70
    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mProperty:Landroid/util/IntProperty;

    iget-object v3, p0, Lcom/android/server/display/RampAnimator;->mObject:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    .line 71
    iget-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    if-eqz v0, :cond_73

    .line 72
    iput-boolean v2, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    .line 73
    invoke-direct {p0}, Lcom/android/server/display/RampAnimator;->cancelAnimationCallback()V

    .line 75
    :cond_73
    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    if-eqz v0, :cond_7c

    .line 76
    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    invoke-interface {v0}, Lcom/android/server/display/RampAnimator$Listener;->onAnimationEnd()V

    .line 78
    :cond_7c
    return v1
.end method

.method public isAnimating()Z
    .registers 2

    .line 119
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    iget-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    return v0
.end method

.method public setListener(Lcom/android/server/display/RampAnimator$Listener;)V
    .registers 2
    .param p1, "listener"    # Lcom/android/server/display/RampAnimator$Listener;

    .line 126
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    iput-object p1, p0, Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    .line 127
    return-void
.end method
