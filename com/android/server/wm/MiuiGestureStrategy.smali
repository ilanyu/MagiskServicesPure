.class interface abstract Lcom/android/server/wm/MiuiGestureStrategy;
.super Ljava/lang/Object;
.source "MiuiGestureStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/MiuiGestureStrategy$SurfaceOperator;
    }
.end annotation


# static fields
.field public static final SURFACE_VIEW_WINDOWS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "MiuiGestureStrategy"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 19
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/wm/MiuiGestureStrategy;->SURFACE_VIEW_WINDOWS:Ljava/util/Set;

    return-void
.end method

.method public static synthetic lambda$hideSurfaceLocked$1(Landroid/view/SurfaceControl;)V
    .registers 1
    .param p0, "surface"    # Landroid/view/SurfaceControl;

    .line 66
    invoke-virtual {p0}, Landroid/view/SurfaceControl;->hide()V

    .line 67
    return-void
.end method

.method public static synthetic lambda$resetWindowSurfaceLocked$0(Landroid/view/SurfaceControl;)V
    .registers 2
    .param p0, "surface"    # Landroid/view/SurfaceControl;

    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 59
    return-void
.end method

.method public static synthetic lambda$showSurfaceLocked$2(Landroid/view/SurfaceControl;)V
    .registers 1
    .param p0, "surface"    # Landroid/view/SurfaceControl;

    .line 74
    invoke-virtual {p0}, Landroid/view/SurfaceControl;->show()V

    .line 75
    return-void
.end method


# virtual methods
.method public abstract cancelAnimation(Lcom/android/server/wm/AppWindowToken;)V
.end method

.method public hideSurfaceLocked(Lcom/android/server/wm/WindowState;)V
    .registers 3
    .param p1, "w"    # Lcom/android/server/wm/WindowState;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "WMS.mWindowMap"
    .end annotation

    .line 65
    sget-object v0, Lcom/android/server/wm/-$$Lambda$MiuiGestureStrategy$LR42CHt9zUWZ0Dd5GzuzIQFBLpA;->INSTANCE:Lcom/android/server/wm/-$$Lambda$MiuiGestureStrategy$LR42CHt9zUWZ0Dd5GzuzIQFBLpA;

    invoke-interface {p0, p1, v0}, Lcom/android/server/wm/MiuiGestureStrategy;->operateSurfaceChecked(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/MiuiGestureStrategy$SurfaceOperator;)V

    .line 68
    return-void
.end method

.method public abstract isForbidGesture()Z
.end method

.method public operateSurfaceChecked(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/MiuiGestureStrategy$SurfaceOperator;)V
    .registers 5
    .param p1, "w"    # Lcom/android/server/wm/WindowState;
    .param p2, "operator"    # Lcom/android/server/wm/MiuiGestureStrategy$SurfaceOperator;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "WMS.mWindowMap"
    .end annotation

    .line 81
    if-eqz p1, :cond_28

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v0, :cond_28

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-nez v0, :cond_d

    goto :goto_28

    .line 86
    :cond_d
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 87
    .local v0, "sc":Landroid/view/SurfaceControl;
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 89
    if-eqz v0, :cond_23

    if-eqz p2, :cond_23

    .line 90
    :try_start_1a
    invoke-interface {p2, v0}, Lcom/android/server/wm/MiuiGestureStrategy$SurfaceOperator;->action(Landroid/view/SurfaceControl;)V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_1e

    goto :goto_23

    .line 93
    :catchall_1e
    move-exception v1

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v1

    :cond_23
    :goto_23
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 94
    nop

    .line 95
    return-void

    .line 83
    .end local v0    # "sc":Landroid/view/SurfaceControl;
    :cond_28
    :goto_28
    return-void
.end method

.method public resetClipWindow(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;Lcom/android/server/wm/MiuiGestureAnimator;Lcom/android/server/wm/MiuiGestureController;)V
    .registers 9
    .param p1, "w"    # Lcom/android/server/wm/WindowState;
    .param p2, "wInfo"    # Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;
    .param p3, "animator"    # Lcom/android/server/wm/MiuiGestureAnimator;
    .param p4, "controller"    # Lcom/android/server/wm/MiuiGestureController;

    .line 99
    if-eqz p1, :cond_36

    if-eqz p2, :cond_36

    if-eqz p3, :cond_36

    if-nez p4, :cond_9

    goto :goto_36

    .line 102
    :cond_9
    iget-boolean v0, p2, Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;->mNeedClip:Z

    if-nez v0, :cond_e

    .line 103
    return-void

    .line 105
    :cond_e
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 106
    .local v0, "clipRect":Landroid/graphics/Rect;
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_26

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_24

    goto :goto_26

    :cond_24
    const/4 v2, 0x0

    nop

    :cond_26
    :goto_26
    move v1, v2

    .line 109
    .local v1, "isMainWin":Z
    if-nez v1, :cond_2d

    iget-boolean v2, p2, Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;->mHasShowStartingWindow:Z

    if-eqz v2, :cond_35

    .line 110
    :cond_2d
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p3, v2, v0}, Lcom/android/server/wm/MiuiGestureAnimator;->setWindowCropInTransaction(Lcom/android/server/wm/AppWindowToken;Landroid/graphics/Rect;)V

    .line 111
    invoke-virtual {p3}, Lcom/android/server/wm/MiuiGestureAnimator;->applyTransaction()V

    .line 113
    :cond_35
    return-void

    .line 100
    .end local v0    # "clipRect":Landroid/graphics/Rect;
    .end local v1    # "isMainWin":Z
    :cond_36
    :goto_36
    return-void
.end method

.method public resetWindowSurfaceLocked(Lcom/android/server/wm/WindowState;Ljava/util/concurrent/ConcurrentHashMap;)V
    .registers 6
    .param p1, "w"    # Lcom/android/server/wm/WindowState;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "WMS.mWindowMap"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowState;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/android/server/wm/WindowState;",
            "Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;",
            ">;)V"
        }
    .end annotation

    .line 46
    .local p2, "scalingWindows":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Lcom/android/server/wm/WindowState;Lcom/android/server/wm/MiuiGesturePointerEventListener$WindowStateInfo;>;"
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1b

    .line 47
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 48
    .local v0, "aToken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v0, :cond_1b

    .line 49
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppWindowToken;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 50
    .local v1, "mainWin":Lcom/android/server/wm/WindowState;
    if-eqz v1, :cond_1b

    invoke-virtual {p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 51
    invoke-interface {p0, v1}, Lcom/android/server/wm/MiuiGestureStrategy;->hideSurfaceLocked(Lcom/android/server/wm/WindowState;)V

    .line 56
    .end local v0    # "aToken":Lcom/android/server/wm/AppWindowToken;
    .end local v1    # "mainWin":Lcom/android/server/wm/WindowState;
    :cond_1b
    sget-object v0, Lcom/android/server/wm/-$$Lambda$MiuiGestureStrategy$p8rfJZR7Z6_asYSlY-0mB5meRgQ;->INSTANCE:Lcom/android/server/wm/-$$Lambda$MiuiGestureStrategy$p8rfJZR7Z6_asYSlY-0mB5meRgQ;

    invoke-interface {p0, p1, v0}, Lcom/android/server/wm/MiuiGestureStrategy;->operateSurfaceChecked(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/MiuiGestureStrategy$SurfaceOperator;)V

    .line 60
    return-void
.end method

.method public abstract setResetCallback(Ljava/lang/Runnable;)V
.end method

.method public showSurfaceLocked(Lcom/android/server/wm/WindowState;)V
    .registers 3
    .param p1, "w"    # Lcom/android/server/wm/WindowState;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "WMS.mWindowMap"
    .end annotation

    .line 73
    sget-object v0, Lcom/android/server/wm/-$$Lambda$MiuiGestureStrategy$hz0T7hb6mMGUd3xEbLg0Lu398O4;->INSTANCE:Lcom/android/server/wm/-$$Lambda$MiuiGestureStrategy$hz0T7hb6mMGUd3xEbLg0Lu398O4;

    invoke-interface {p0, p1, v0}, Lcom/android/server/wm/MiuiGestureStrategy;->operateSurfaceChecked(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/MiuiGestureStrategy$SurfaceOperator;)V

    .line 76
    return-void
.end method

.method public abstract startAnimation(Ljava/util/Set;Ljava/util/concurrent/ConcurrentHashMap;)V
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
.end method
