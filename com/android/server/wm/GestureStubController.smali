.class public Lcom/android/server/wm/GestureStubController;
.super Ljava/lang/Object;
.source "GestureStubController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/GestureStubController$GestureThumbnailCallback;
    }
.end annotation


# static fields
.field private static final GESTURE_RESET_DELAY:I = 0x7d0


# instance fields
.field private mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mGestureFinishRunnable:Ljava/lang/Runnable;

.field private mGestureStubListener:Landroid/view/IGestureStubListener;

.field private mInvisibleAppTokens:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field private mIsAppTransitionSkipped:Z

.field private mKeepWallpaperShowing:Z

.field private final mLock:Ljava/lang/Object;

.field private mService:Lcom/android/server/wm/WindowManagerService;

.field private mThumbnailCallback:Lcom/android/server/wm/GestureStubController$GestureThumbnailCallback;

.field private mWindowAlphaMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/wm/WindowState;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .registers 4
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/GestureStubController;->mLock:Ljava/lang/Object;

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/GestureStubController;->mIsAppTransitionSkipped:Z

    .line 19
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/GestureStubController;->mInvisibleAppTokens:Ljava/util/Set;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/GestureStubController;->mWindowAlphaMap:Ljava/util/Map;

    .line 22
    new-instance v0, Lcom/android/server/wm/GestureStubController$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/GestureStubController$1;-><init>(Lcom/android/server/wm/GestureStubController;)V

    iput-object v0, p0, Lcom/android/server/wm/GestureStubController;->mGestureFinishRunnable:Ljava/lang/Runnable;

    .line 30
    iput-object p1, p0, Lcom/android/server/wm/GestureStubController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 31
    iput-object p2, p0, Lcom/android/server/wm/GestureStubController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/GestureStubController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/wm/GestureStubController;

    .line 10
    invoke-direct {p0}, Lcom/android/server/wm/GestureStubController;->reset()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wm/GestureStubController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/wm/GestureStubController;

    .line 10
    invoke-direct {p0}, Lcom/android/server/wm/GestureStubController;->notifyGestureReady()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wm/GestureStubController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/wm/GestureStubController;

    .line 10
    invoke-direct {p0}, Lcom/android/server/wm/GestureStubController;->notifyGestureStart()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/wm/GestureStubController;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/GestureStubController;
    .param p1, "x1"    # Z

    .line 10
    invoke-direct {p0, p1}, Lcom/android/server/wm/GestureStubController;->notifyGestureFinish(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/wm/GestureStubController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/wm/GestureStubController;

    .line 10
    invoke-direct {p0}, Lcom/android/server/wm/GestureStubController;->notifySkipAppTransition()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wm/GestureStubController;)Lcom/android/server/wm/WindowManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/GestureStubController;

    .line 10
    iget-object v0, p0, Lcom/android/server/wm/GestureStubController;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/wm/GestureStubController;)Lcom/android/server/wm/GestureStubController$GestureThumbnailCallback;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/GestureStubController;

    .line 10
    iget-object v0, p0, Lcom/android/server/wm/GestureStubController;->mThumbnailCallback:Lcom/android/server/wm/GestureStubController$GestureThumbnailCallback;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/wm/GestureStubController;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/GestureStubController;
    .param p1, "x1"    # Z

    .line 10
    iput-boolean p1, p0, Lcom/android/server/wm/GestureStubController;->mKeepWallpaperShowing:Z

    return p1
.end method

.method public static synthetic lambda$notifyGestureReady$0(Lcom/android/server/wm/GestureStubController;Lcom/android/server/wm/TaskStack;Lcom/android/server/wm/TaskStack;Lcom/android/server/wm/WindowState;)V
    .registers 8
    .param p1, "dockedStack"    # Lcom/android/server/wm/TaskStack;
    .param p2, "homeStack"    # Lcom/android/server/wm/TaskStack;
    .param p3, "w"    # Lcom/android/server/wm/WindowState;

    .line 99
    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 100
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    if-eq v0, p1, :cond_36

    if-ne v0, p2, :cond_9

    goto :goto_36

    .line 104
    :cond_9
    iget-object v1, p3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v1, :cond_35

    iget-object v1, p3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v1

    if-eqz v1, :cond_35

    iget-object v1, p3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_35

    .line 106
    iget-object v1, p0, Lcom/android/server/wm/GestureStubController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 107
    :try_start_1c
    iget-object v2, p0, Lcom/android/server/wm/GestureStubController;->mInvisibleAppTokens:Ljava/util/Set;

    iget-object v3, p3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v2, p0, Lcom/android/server/wm/GestureStubController;->mWindowAlphaMap:Ljava/util/Map;

    iget-object v3, p3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v2, p3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    monitor-exit v1

    goto :goto_35

    :catchall_32
    move-exception v2

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_1c .. :try_end_34} :catchall_32

    throw v2

    .line 111
    :cond_35
    :goto_35
    return-void

    .line 101
    :cond_36
    :goto_36
    return-void
.end method

.method public static synthetic lambda$notifyGestureStart$1(Lcom/android/server/wm/GestureStubController;Lcom/android/server/wm/WindowState;)V
    .registers 6
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 122
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v0, :cond_28

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v0, :cond_28

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/GestureStubController;->mKeepWallpaperShowing:Z

    .line 125
    iget-object v0, p0, Lcom/android/server/wm/GestureStubController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v1, Lcom/android/server/wm/GestureStubController$3;

    invoke-direct {v1, p0}, Lcom/android/server/wm/GestureStubController$3;-><init>(Lcom/android/server/wm/GestureStubController;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 131
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfaceController;->showRobustlyInTransaction()Z

    .line 133
    :cond_28
    return-void
.end method

.method private notifyGestureFinish(Z)V
    .registers 6
    .param p1, "immediate"    # Z

    .line 151
    iget-object v0, p0, Lcom/android/server/wm/GestureStubController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/GestureStubController;->mGestureFinishRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_b

    const-wide/16 v2, 0x0

    goto :goto_d

    :cond_b
    const-wide/16 v2, 0x7d0

    :goto_d
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 152
    return-void
.end method

.method private notifyGestureReady()V
    .registers 6

    .line 93
    iget-object v0, p0, Lcom/android/server/wm/GestureStubController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/GestureStubController;->mGestureFinishRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 94
    invoke-direct {p0}, Lcom/android/server/wm/GestureStubController;->reset()V

    .line 95
    iget-object v0, p0, Lcom/android/server/wm/GestureStubController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 96
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStackIgnoringVisibility()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 97
    .local v0, "dockedStack":Lcom/android/server/wm/TaskStack;
    iget-object v1, p0, Lcom/android/server/wm/GestureStubController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getHomeStack()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    .line 98
    .local v1, "homeStack":Lcom/android/server/wm/TaskStack;
    iget-object v2, p0, Lcom/android/server/wm/GestureStubController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v3, Lcom/android/server/wm/-$$Lambda$GestureStubController$ZUVitIx6JR8oy2rdThRoBtezl7k;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/server/wm/-$$Lambda$GestureStubController$ZUVitIx6JR8oy2rdThRoBtezl7k;-><init>(Lcom/android/server/wm/GestureStubController;Lcom/android/server/wm/TaskStack;Lcom/android/server/wm/TaskStack;)V

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 113
    iget-object v2, p0, Lcom/android/server/wm/GestureStubController;->mThumbnailCallback:Lcom/android/server/wm/GestureStubController$GestureThumbnailCallback;

    if-eqz v2, :cond_3f

    .line 114
    iget-object v2, p0, Lcom/android/server/wm/GestureStubController;->mInvisibleAppTokens:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    .line 115
    .local v3, "token":Lcom/android/server/wm/AppWindowToken;
    iget-object v4, p0, Lcom/android/server/wm/GestureStubController;->mThumbnailCallback:Lcom/android/server/wm/GestureStubController$GestureThumbnailCallback;

    invoke-interface {v4, v3}, Lcom/android/server/wm/GestureStubController$GestureThumbnailCallback;->onGestureReady(Lcom/android/server/wm/AppWindowToken;)V

    .line 116
    .end local v3    # "token":Lcom/android/server/wm/AppWindowToken;
    goto :goto_2d

    .line 118
    :cond_3f
    return-void
.end method

.method private notifyGestureStart()V
    .registers 6

    .line 121
    iget-object v0, p0, Lcom/android/server/wm/GestureStubController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$GestureStubController$qDXskHc6EyrBwXtbAxVi8wkRV10;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$GestureStubController$qDXskHc6EyrBwXtbAxVi8wkRV10;-><init>(Lcom/android/server/wm/GestureStubController;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 135
    iget-object v0, p0, Lcom/android/server/wm/GestureStubController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 136
    :try_start_e
    iget-object v1, p0, Lcom/android/server/wm/GestureStubController;->mWindowAlphaMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 137
    .local v2, "win":Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_3b

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v3, :cond_3b

    .line 138
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v4, 0x0

    iput v4, v3, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    .line 139
    iget-object v3, p0, Lcom/android/server/wm/GestureStubController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v4, Lcom/android/server/wm/GestureStubController$4;

    invoke-direct {v4, p0}, Lcom/android/server/wm/GestureStubController$4;-><init>(Lcom/android/server/wm/GestureStubController;)V

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 146
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    :cond_3b
    goto :goto_18

    .line 147
    :cond_3c
    monitor-exit v0

    .line 148
    return-void

    .line 147
    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_e .. :try_end_40} :catchall_3e

    throw v1
.end method

.method private notifySkipAppTransition()V
    .registers 3

    .line 155
    iget-object v0, p0, Lcom/android/server/wm/GestureStubController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 156
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/wm/GestureStubController;->mIsAppTransitionSkipped:Z

    .line 157
    monitor-exit v0

    .line 158
    return-void

    .line 157
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method private reset()V
    .registers 6

    .line 161
    iget-object v0, p0, Lcom/android/server/wm/GestureStubController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 162
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/wm/GestureStubController;->mKeepWallpaperShowing:Z

    .line 163
    iget-object v1, p0, Lcom/android/server/wm/GestureStubController;->mInvisibleAppTokens:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    .line 164
    .local v2, "token":Lcom/android/server/wm/AppWindowToken;
    iget-object v3, p0, Lcom/android/server/wm/GestureStubController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v4, Lcom/android/server/wm/GestureStubController$5;

    invoke-direct {v4, p0, v2}, Lcom/android/server/wm/GestureStubController$5;-><init>(Lcom/android/server/wm/GestureStubController;Lcom/android/server/wm/AppWindowToken;)V

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 172
    .end local v2    # "token":Lcom/android/server/wm/AppWindowToken;
    goto :goto_c

    .line 174
    :cond_25
    iget-object v1, p0, Lcom/android/server/wm/GestureStubController;->mWindowAlphaMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 175
    .local v2, "win":Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_51

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v3, :cond_51

    .line 176
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v4, p0, Lcom/android/server/wm/GestureStubController;->mWindowAlphaMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iput v4, v3, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    .line 178
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    :cond_51
    goto :goto_2f

    .line 180
    :cond_52
    iget-object v1, p0, Lcom/android/server/wm/GestureStubController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v2, Lcom/android/server/wm/GestureStubController$6;

    invoke-direct {v2, p0}, Lcom/android/server/wm/GestureStubController$6;-><init>(Lcom/android/server/wm/GestureStubController;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 187
    iget-object v1, p0, Lcom/android/server/wm/GestureStubController;->mInvisibleAppTokens:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 188
    iget-object v1, p0, Lcom/android/server/wm/GestureStubController;->mWindowAlphaMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 189
    monitor-exit v0

    .line 190
    return-void

    .line 189
    :catchall_6a
    move-exception v1

    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_4 .. :try_end_6c} :catchall_6a

    throw v1
.end method


# virtual methods
.method disabledAppTransitionSkipped()V
    .registers 3

    .line 43
    iget-object v0, p0, Lcom/android/server/wm/GestureStubController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 44
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/wm/GestureStubController;->mIsAppTransitionSkipped:Z

    .line 45
    monitor-exit v0

    .line 46
    return-void

    .line 45
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method getGestureStubListener()Landroid/view/IGestureStubListener;
    .registers 3

    .line 62
    iget-object v0, p0, Lcom/android/server/wm/GestureStubController;->mGestureStubListener:Landroid/view/IGestureStubListener;

    if-nez v0, :cond_17

    .line 63
    iget-object v0, p0, Lcom/android/server/wm/GestureStubController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 64
    :try_start_7
    iget-object v1, p0, Lcom/android/server/wm/GestureStubController;->mGestureStubListener:Landroid/view/IGestureStubListener;

    if-nez v1, :cond_12

    .line 65
    new-instance v1, Lcom/android/server/wm/GestureStubController$2;

    invoke-direct {v1, p0}, Lcom/android/server/wm/GestureStubController$2;-><init>(Lcom/android/server/wm/GestureStubController;)V

    iput-object v1, p0, Lcom/android/server/wm/GestureStubController;->mGestureStubListener:Landroid/view/IGestureStubListener;

    .line 87
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 89
    :cond_17
    :goto_17
    iget-object v0, p0, Lcom/android/server/wm/GestureStubController;->mGestureStubListener:Landroid/view/IGestureStubListener;

    return-object v0
.end method

.method isAppTransitionSkipped()Z
    .registers 2

    .line 35
    iget-boolean v0, p0, Lcom/android/server/wm/GestureStubController;->mIsAppTransitionSkipped:Z

    return v0
.end method

.method keepWallpaperShowing()Z
    .registers 2

    .line 39
    iget-boolean v0, p0, Lcom/android/server/wm/GestureStubController;->mKeepWallpaperShowing:Z

    return v0
.end method

.method registerThumbnailCallback(Lcom/android/server/wm/GestureStubController$GestureThumbnailCallback;)V
    .registers 4
    .param p1, "callback"    # Lcom/android/server/wm/GestureStubController$GestureThumbnailCallback;

    .line 56
    iget-object v0, p0, Lcom/android/server/wm/GestureStubController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 57
    :try_start_3
    iput-object p1, p0, Lcom/android/server/wm/GestureStubController;->mThumbnailCallback:Lcom/android/server/wm/GestureStubController$GestureThumbnailCallback;

    .line 58
    monitor-exit v0

    .line 59
    return-void

    .line 58
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method resetSurfaceStatusIfNeeded(Lcom/android/server/wm/AppWindowToken;)V
    .registers 4
    .param p1, "wtoken"    # Lcom/android/server/wm/AppWindowToken;

    .line 49
    iget-object v0, p0, Lcom/android/server/wm/GestureStubController;->mInvisibleAppTokens:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 50
    iget-object v0, p0, Lcom/android/server/wm/GestureStubController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/GestureStubController;->mGestureFinishRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 51
    invoke-direct {p0}, Lcom/android/server/wm/GestureStubController;->reset()V

    .line 53
    :cond_14
    return-void
.end method
