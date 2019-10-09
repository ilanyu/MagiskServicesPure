.class Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;
.super Ljava/lang/Object;
.source "MagnificationController.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/MagnificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpecAnimationBridge"
.end annotation


# instance fields
.field private mEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mEndMagnificationSpec:Landroid/view/MagnificationSpec;

.field private final mLock:Ljava/lang/Object;

.field private final mSentMagnificationSpec:Landroid/view/MagnificationSpec;

.field private final mStartMagnificationSpec:Landroid/view/MagnificationSpec;

.field private final mTmpMagnificationSpec:Landroid/view/MagnificationSpec;

.field private final mValueAnimator:Landroid/animation/ValueAnimator;

.field private final mWindowManager:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/wm/WindowManagerInternal;Landroid/animation/ValueAnimator;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lock"    # Ljava/lang/Object;
    .param p3, "wm"    # Lcom/android/server/wm/WindowManagerInternal;
    .param p4, "animator"    # Landroid/animation/ValueAnimator;

    .line 860
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 841
    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 843
    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mStartMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 845
    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mEndMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 847
    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mTmpMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 856
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mEnabled:Z

    .line 861
    iput-object p2, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mLock:Ljava/lang/Object;

    .line 862
    iput-object p3, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    .line 863
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    .line 865
    .local v0, "animationDuration":J
    iput-object p4, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 866
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 867
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x40200000    # 2.5f

    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 868
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mValueAnimator:Landroid/animation/ValueAnimator;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_52

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 869
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 870
    return-void

    :array_52
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/wm/WindowManagerInternal;Landroid/animation/ValueAnimator;Lcom/android/server/accessibility/MagnificationController$1;)V
    .registers 6
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Lcom/android/server/wm/WindowManagerInternal;
    .param p4, "x3"    # Landroid/animation/ValueAnimator;
    .param p5, "x4"    # Lcom/android/server/accessibility/MagnificationController$1;

    .line 834
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;-><init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/wm/WindowManagerInternal;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;)Landroid/view/MagnificationSpec;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    .line 834
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    return-object v0
.end method

.method private animateMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V
    .registers 4
    .param p1, "toSpec"    # Landroid/view/MagnificationSpec;

    .line 919
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mEndMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {v0, p1}, Landroid/view/MagnificationSpec;->setTo(Landroid/view/MagnificationSpec;)V

    .line 920
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mStartMagnificationSpec:Landroid/view/MagnificationSpec;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {v0, v1}, Landroid/view/MagnificationSpec;->setTo(Landroid/view/MagnificationSpec;)V

    .line 921
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 922
    return-void
.end method

.method private setMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V
    .registers 3
    .param p1, "spec"    # Landroid/view/MagnificationSpec;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 908
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mEnabled:Z

    if-eqz v0, :cond_e

    .line 913
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {v0, p1}, Landroid/view/MagnificationSpec;->setTo(Landroid/view/MagnificationSpec;)V

    .line 914
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerInternal;->setMagnificationSpec(Landroid/view/MagnificationSpec;)V

    .line 916
    :cond_e
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 8
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 926
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 927
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mEnabled:Z

    if-eqz v1, :cond_51

    .line 928
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    .line 929
    .local v1, "fract":F
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mTmpMagnificationSpec:Landroid/view/MagnificationSpec;

    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mStartMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v3, v3, Landroid/view/MagnificationSpec;->scale:F

    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mEndMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v4, v4, Landroid/view/MagnificationSpec;->scale:F

    iget-object v5, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mStartMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v5, v5, Landroid/view/MagnificationSpec;->scale:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, v2, Landroid/view/MagnificationSpec;->scale:F

    .line 931
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mTmpMagnificationSpec:Landroid/view/MagnificationSpec;

    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mStartMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v3, v3, Landroid/view/MagnificationSpec;->offsetX:F

    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mEndMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v4, v4, Landroid/view/MagnificationSpec;->offsetX:F

    iget-object v5, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mStartMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v5, v5, Landroid/view/MagnificationSpec;->offsetX:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, v2, Landroid/view/MagnificationSpec;->offsetX:F

    .line 934
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mTmpMagnificationSpec:Landroid/view/MagnificationSpec;

    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mStartMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v3, v3, Landroid/view/MagnificationSpec;->offsetY:F

    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mEndMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v4, v4, Landroid/view/MagnificationSpec;->offsetY:F

    iget-object v5, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mStartMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v5, v5, Landroid/view/MagnificationSpec;->offsetY:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, v2, Landroid/view/MagnificationSpec;->offsetY:F

    .line 937
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_53

    .line 938
    :try_start_47
    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mTmpMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-direct {p0, v3}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->setMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V

    .line 939
    monitor-exit v2

    goto :goto_51

    :catchall_4e
    move-exception v3

    monitor-exit v2
    :try_end_50
    .catchall {:try_start_47 .. :try_end_50} :catchall_4e

    :try_start_50
    throw v3

    .line 941
    .end local v1    # "fract":F
    :cond_51
    :goto_51
    monitor-exit v0

    .line 942
    return-void

    .line 941
    :catchall_53
    move-exception v1

    monitor-exit v0
    :try_end_55
    .catchall {:try_start_50 .. :try_end_55} :catchall_53

    throw v1
.end method

.method public setEnabled(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .line 877
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 878
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mEnabled:Z

    if-eq p1, v1, :cond_19

    .line 879
    iput-boolean p1, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mEnabled:Z

    .line 880
    iget-boolean v1, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mEnabled:Z

    if-nez v1, :cond_19

    .line 881
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {v1}, Landroid/view/MagnificationSpec;->clear()V

    .line 882
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerInternal;->setMagnificationSpec(Landroid/view/MagnificationSpec;)V

    .line 885
    :cond_19
    monitor-exit v0

    .line 886
    return-void

    .line 885
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public updateSentSpecMainThread(Landroid/view/MagnificationSpec;Z)V
    .registers 5
    .param p1, "spec"    # Landroid/view/MagnificationSpec;
    .param p2, "animate"    # Z

    .line 889
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 890
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 894
    :cond_d
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 895
    :try_start_10
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {v1, p1}, Landroid/view/MagnificationSpec;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 896
    .local v1, "changed":Z
    if-eqz v1, :cond_23

    .line 897
    if-eqz p2, :cond_20

    .line 898
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->animateMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V

    goto :goto_23

    .line 900
    :cond_20
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->setMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V

    .line 903
    .end local v1    # "changed":Z
    :cond_23
    :goto_23
    monitor-exit v0

    .line 904
    return-void

    .line 903
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_10 .. :try_end_27} :catchall_25

    throw v1
.end method
