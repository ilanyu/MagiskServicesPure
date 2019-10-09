.class public Lcom/android/server/wm/AppWindowAnimatorHelper;
.super Ljava/lang/Object;
.source "AppWindowAnimatorHelper.java"


# instance fields
.field private final mAppRect:Landroid/graphics/Rect;

.field private mHasNotifyMiuiThumbnailAnimEnd:Z

.field private mHasNotifyMiuiThumbnailAnimStart:Z

.field private mMiuiAppTransitionAnimationHelper:Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

.field private final mMiuiThumbnailRect:Landroid/graphics/Rect;

.field private mThumbnailLeash:Landroid/view/SurfaceControl;


# direct methods
.method constructor <init>(Landroid/graphics/Rect;Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;)V
    .registers 4
    .param p1, "appRect"    # Landroid/graphics/Rect;
    .param p2, "helper"    # Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppWindowAnimatorHelper;->mAppRect:Landroid/graphics/Rect;

    .line 14
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppWindowAnimatorHelper;->mMiuiThumbnailRect:Landroid/graphics/Rect;

    .line 21
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimatorHelper;->mAppRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 22
    iput-object p2, p0, Lcom/android/server/wm/AppWindowAnimatorHelper;->mMiuiAppTransitionAnimationHelper:Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    .line 23
    return-void
.end method


# virtual methods
.method clearMiuiThumbnail()V
    .registers 3

    .line 38
    monitor-enter p0

    .line 39
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowAnimatorHelper;->mHasNotifyMiuiThumbnailAnimEnd:Z

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 40
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimatorHelper;->mMiuiAppTransitionAnimationHelper:Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    invoke-static {v0}, Lcom/android/server/wm/AppTransitionInjector;->notifyMiuiAnimationEnd(Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;)V

    goto :goto_e

    .line 42
    :cond_c
    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowAnimatorHelper;->mHasNotifyMiuiThumbnailAnimEnd:Z

    .line 44
    :goto_e
    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowAnimatorHelper;->mHasNotifyMiuiThumbnailAnimStart:Z

    .line 45
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimatorHelper;->mAppRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 46
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimatorHelper;->mMiuiThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppWindowAnimatorHelper;->mThumbnailLeash:Landroid/view/SurfaceControl;

    .line 48
    monitor-exit p0

    .line 49
    return-void

    .line 48
    :catchall_1f
    move-exception v0

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method setLeash(Landroid/view/SurfaceControl;)V
    .registers 3
    .param p1, "leash"    # Landroid/view/SurfaceControl;

    .line 32
    monitor-enter p0

    .line 33
    :try_start_1
    iput-object p1, p0, Lcom/android/server/wm/AppWindowAnimatorHelper;->mThumbnailLeash:Landroid/view/SurfaceControl;

    .line 34
    monitor-exit p0

    .line 35
    return-void

    .line 34
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method setMiuiThumbnailRect(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "thumbnailRect"    # Landroid/graphics/Rect;

    .line 26
    monitor-enter p0

    .line 27
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimatorHelper;->mMiuiThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 28
    monitor-exit p0

    .line 29
    return-void

    .line 28
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method stepGestureThumbnailAnimation(Landroid/view/SurfaceControl$Transaction;Landroid/view/animation/Transformation;)V
    .registers 11
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "appTransformation"    # Landroid/view/animation/Transformation;

    .line 52
    monitor-enter p0

    .line 53
    const/high16 v0, 0x3f800000    # 1.0f

    :try_start_3
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v1

    sub-float/2addr v0, v1

    .line 54
    .local v0, "alpha":F
    iget-object v2, p0, Lcom/android/server/wm/AppWindowAnimatorHelper;->mAppRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/AppWindowAnimatorHelper;->mMiuiThumbnailRect:Landroid/graphics/Rect;

    .line 55
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    iget-object v7, p0, Lcom/android/server/wm/AppWindowAnimatorHelper;->mThumbnailLeash:Landroid/view/SurfaceControl;

    .line 54
    move v5, v0

    move-object v6, p1

    invoke-static/range {v2 .. v7}, Lcom/android/server/wm/AppTransitionInjector;->calculateGestureThumbnailSpec(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Matrix;FLandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 56
    .end local v0    # "alpha":F
    monitor-exit p0

    .line 57
    return-void

    .line 56
    :catchall_19
    move-exception v0

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method stepMiuiThumbnailAnimation(Landroid/view/SurfaceControl$Transaction;Landroid/view/animation/Transformation;)V
    .registers 12
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "appTransformation"    # Landroid/view/animation/Transformation;

    .line 60
    monitor-enter p0

    .line 61
    :try_start_1
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    if-lez v0, :cond_16

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowAnimatorHelper;->mHasNotifyMiuiThumbnailAnimStart:Z

    if-nez v0, :cond_16

    .line 62
    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowAnimatorHelper;->mHasNotifyMiuiThumbnailAnimStart:Z

    .line 63
    iget-object v0, p0, Lcom/android/server/wm/AppWindowAnimatorHelper;->mMiuiAppTransitionAnimationHelper:Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    invoke-static {v0}, Lcom/android/server/wm/AppTransitionInjector;->notifyMiuiAnimationStart(Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;)V

    .line 66
    :cond_16
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v0, v2, v0

    .line 67
    .local v0, "alpha":F
    iget-object v3, p0, Lcom/android/server/wm/AppWindowAnimatorHelper;->mAppRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/AppWindowAnimatorHelper;->mMiuiThumbnailRect:Landroid/graphics/Rect;

    .line 68
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    iget-object v8, p0, Lcom/android/server/wm/AppWindowAnimatorHelper;->mThumbnailLeash:Landroid/view/SurfaceControl;

    .line 67
    move v6, v0

    move-object v7, p1

    invoke-static/range {v3 .. v8}, Lcom/android/server/wm/AppTransitionInjector;->calculateMiuiThumbnailSpec(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Matrix;FLandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 71
    cmpl-float v2, v0, v2

    if-nez v2, :cond_3c

    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowAnimatorHelper;->mHasNotifyMiuiThumbnailAnimEnd:Z

    if-nez v2, :cond_3c

    .line 72
    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowAnimatorHelper;->mHasNotifyMiuiThumbnailAnimEnd:Z

    .line 73
    iget-object v1, p0, Lcom/android/server/wm/AppWindowAnimatorHelper;->mMiuiAppTransitionAnimationHelper:Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    invoke-static {v1}, Lcom/android/server/wm/AppTransitionInjector;->notifyMiuiAnimationEnd(Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;)V

    .line 75
    .end local v0    # "alpha":F
    :cond_3c
    monitor-exit p0

    .line 76
    return-void

    .line 75
    :catchall_3e
    move-exception v0

    monitor-exit p0
    :try_end_40
    .catchall {:try_start_1 .. :try_end_40} :catchall_3e

    throw v0
.end method
