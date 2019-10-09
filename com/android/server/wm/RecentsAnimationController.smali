.class public Lcom/android/server/wm/RecentsAnimationController;
.super Ljava/lang/Object;
.source "RecentsAnimationController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;,
        Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;,
        Lcom/android/server/wm/RecentsAnimationController$ReorderMode;
    }
.end annotation


# static fields
.field private static final FAILSAFE_DELAY:J = 0x3e8L

.field public static final REORDER_KEEP_IN_PLACE:I = 0x0

.field public static final REORDER_MOVE_TO_ORIGINAL_POSITION:I = 0x2

.field public static final REORDER_MOVE_TO_TOP:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCallbacks:Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;

.field private mCanceled:Z

.field private final mController:Landroid/view/IRecentsAnimationController;

.field private final mDisplayId:I

.field private final mFailsafeRunnable:Ljava/lang/Runnable;

.field private mInputConsumerEnabled:Z

.field private mLinkedToDeathOfRunner:Z

.field private mMinimizedHomeBounds:Landroid/graphics/Rect;

.field private final mPendingAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingStart:Z

.field private mRunner:Landroid/view/IRecentsAnimationRunner;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mSplitScreenMinimized:Z

.field private mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 67
    const-class v0, Lcom/android/server/wm/RecentsAnimationController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/RecentsAnimationController;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IRecentsAnimationRunner;Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;I)V
    .registers 6
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "remoteAnimationRunner"    # Landroid/view/IRecentsAnimationRunner;
    .param p3, "callbacks"    # Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;
    .param p4, "displayId"    # I

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    .line 86
    new-instance v0, Lcom/android/server/wm/-$$Lambda$RecentsAnimationController$4jQqaDgSmtGCjbUJiVoDh_jr9rY;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$RecentsAnimationController$4jQqaDgSmtGCjbUJiVoDh_jr9rY;-><init>(Lcom/android/server/wm/RecentsAnimationController;)V

    iput-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mFailsafeRunnable:Ljava/lang/Runnable;

    .line 91
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mMinimizedHomeBounds:Landroid/graphics/Rect;

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingStart:Z

    .line 109
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mTmpRect:Landroid/graphics/Rect;

    .line 117
    new-instance v0, Lcom/android/server/wm/RecentsAnimationController$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RecentsAnimationController$1;-><init>(Lcom/android/server/wm/RecentsAnimationController;)V

    iput-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mController:Landroid/view/IRecentsAnimationController;

    .line 249
    iput-object p1, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 250
    iput-object p2, p0, Lcom/android/server/wm/RecentsAnimationController;->mRunner:Landroid/view/IRecentsAnimationRunner;

    .line 251
    iput-object p3, p0, Lcom/android/server/wm/RecentsAnimationController;->mCallbacks:Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;

    .line 252
    iput p4, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayId:I

    .line 253
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/RecentsAnimationController;

    .line 66
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/RecentsAnimationController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/RecentsAnimationController;

    .line 66
    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mCanceled:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/RecentsAnimationController;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/RecentsAnimationController;

    .line 66
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/RecentsAnimationController;

    .line 66
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mCallbacks:Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/wm/RecentsAnimationController;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/RecentsAnimationController;
    .param p1, "x1"    # Z

    .line 66
    iput-boolean p1, p0, Lcom/android/server/wm/RecentsAnimationController;->mInputConsumerEnabled:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/server/wm/RecentsAnimationController;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/RecentsAnimationController;
    .param p1, "x1"    # Z

    .line 66
    iput-boolean p1, p0, Lcom/android/server/wm/RecentsAnimationController;->mSplitScreenMinimized:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/wm/RecentsAnimationController;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/RecentsAnimationController;

    .line 66
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mTmpRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method private cancelAnimation(IZLjava/lang/String;)V
    .registers 8
    .param p1, "reorderMode"    # I
        .annotation build Lcom/android/server/wm/RecentsAnimationController$ReorderMode;
        .end annotation
    .end param
    .param p2, "runSynchronously"    # Z
    .param p3, "reason"    # Ljava/lang/String;

    .line 399
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 400
    :try_start_7
    iget-boolean v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mCanceled:Z

    if-eqz v1, :cond_d

    .line 402
    monitor-exit v0

    return-void

    .line 404
    :cond_d
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mFailsafeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 405
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mCanceled:Z
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_2e

    .line 407
    :try_start_19
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mRunner:Landroid/view/IRecentsAnimationRunner;

    invoke-interface {v1}, Landroid/view/IRecentsAnimationRunner;->onAnimationCanceled()V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1e} :catch_1f
    .catchall {:try_start_19 .. :try_end_1e} :catchall_2e

    .line 410
    goto :goto_27

    .line 408
    :catch_1f
    move-exception v1

    .line 409
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_20
    sget-object v2, Lcom/android/server/wm/RecentsAnimationController;->TAG:Ljava/lang/String;

    const-string v3, "Failed to cancel recents animation"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 411
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_2e

    .line 414
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mCallbacks:Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;

    invoke-interface {v0, p1, p2}, Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;->onAnimationFinished(IZ)V

    .line 415
    return-void

    .line 411
    :catchall_2e
    move-exception v1

    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v1
.end method

.method private isAnimatingApp(Lcom/android/server/wm/AppWindowToken;)Z
    .registers 7
    .param p1, "appToken"    # Lcom/android/server/wm/AppWindowToken;

    .line 533
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_2c

    .line 534
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    # getter for: Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTask:Lcom/android/server/wm/Task;
    invoke-static {v2}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->access$300(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)Lcom/android/server/wm/Task;

    move-result-object v2

    .line 535
    .local v2, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v1

    .local v3, "j":I
    :goto_1b
    if-ltz v3, :cond_29

    .line 536
    invoke-virtual {v2, v3}, Lcom/android/server/wm/Task;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/AppWindowToken;

    .line 537
    .local v4, "app":Lcom/android/server/wm/AppWindowToken;
    if-ne v4, p1, :cond_26

    .line 538
    return v1

    .line 535
    .end local v4    # "app":Lcom/android/server/wm/AppWindowToken;
    :cond_26
    add-int/lit8 v3, v3, -0x1

    goto :goto_1b

    .line 533
    .end local v2    # "task":Lcom/android/server/wm/Task;
    .end local v3    # "j":I
    :cond_29
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 542
    .end local v0    # "i":I
    :cond_2c
    const/4 v0, 0x0

    return v0
.end method

.method private isTargetOverWallpaper()Z
    .registers 2

    .line 517
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v0, :cond_6

    .line 518
    const/4 v0, 0x0

    return v0

    .line 520
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->windowsCanBeWallpaperTarget()Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/wm/RecentsAnimationController;)V
    .registers 3

    .line 87
    const-string v0, "failSafeRunnable"

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimation(ILjava/lang/String;)V

    return-void
.end method

.method private linkToDeathOfRunner()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 455
    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mLinkedToDeathOfRunner:Z

    if-nez v0, :cond_11

    .line 456
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mRunner:Landroid/view/IRecentsAnimationRunner;

    invoke-interface {v0}, Landroid/view/IRecentsAnimationRunner;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 457
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mLinkedToDeathOfRunner:Z

    .line 459
    :cond_11
    return-void
.end method

.method private unlinkToDeathOfRunner()V
    .registers 3

    .line 462
    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mLinkedToDeathOfRunner:Z

    if-eqz v0, :cond_10

    .line 463
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mRunner:Landroid/view/IRecentsAnimationRunner;

    invoke-interface {v0}, Landroid/view/IRecentsAnimationRunner;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 464
    iput-boolean v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mLinkedToDeathOfRunner:Z

    .line 466
    :cond_10
    return-void
.end method


# virtual methods
.method addAnimation(Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/AnimationAdapter;
    .registers 7
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "isRecentTaskInvisible"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 313
    new-instance v0, Lcom/android/server/wm/SurfaceAnimator;

    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1}, Lcom/android/server/wm/SurfaceAnimator;-><init>(Lcom/android/server/wm/SurfaceAnimator$Animatable;Ljava/lang/Runnable;Lcom/android/server/wm/WindowManagerService;)V

    .line 315
    .local v0, "anim":Lcom/android/server/wm/SurfaceAnimator;
    new-instance v1, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;-><init>(Lcom/android/server/wm/RecentsAnimationController;Lcom/android/server/wm/Task;Z)V

    .line 317
    .local v1, "taskAdapter":Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/server/wm/SurfaceAnimator;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;Z)V

    .line 318
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->commitPendingTransaction()V

    .line 319
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    return-object v1
.end method

.method public binderDied()V
    .registers 3

    .line 470
    const-string v0, "binderDied"

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimation(ILjava/lang/String;)V

    .line 471
    return-void
.end method

.method cancelAnimation(ILjava/lang/String;)V
    .registers 4
    .param p1, "reorderMode"    # I
        .annotation build Lcom/android/server/wm/RecentsAnimationController$ReorderMode;
        .end annotation
    .end param
    .param p2, "reason"    # Ljava/lang/String;

    .line 388
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimation(IZLjava/lang/String;)V

    .line 389
    return-void
.end method

.method cancelAnimationSynchronously(ILjava/lang/String;)V
    .registers 4
    .param p1, "reorderMode"    # I
        .annotation build Lcom/android/server/wm/RecentsAnimationController$ReorderMode;
        .end annotation
    .end param
    .param p2, "reason"    # Ljava/lang/String;

    .line 392
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimation(IZLjava/lang/String;)V

    .line 393
    return-void
.end method

.method checkAnimationReady(Lcom/android/server/wm/WallpaperController;)V
    .registers 4
    .param p1, "wallpaperController"    # Lcom/android/server/wm/WallpaperController;

    .line 474
    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingStart:Z

    if-eqz v0, :cond_25

    .line 475
    invoke-direct {p0}, Lcom/android/server/wm/RecentsAnimationController;->isTargetOverWallpaper()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 476
    invoke-virtual {p1}, Lcom/android/server/wm/WallpaperController;->getWallpaperTarget()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 477
    invoke-virtual {p1}, Lcom/android/server/wm/WallpaperController;->wallpaperTransitionReady()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v0, 0x1

    .line 478
    .local v0, "wallpaperReady":Z
    :goto_1a
    if-eqz v0, :cond_25

    .line 479
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/RecentsAnimationController;->startAnimation()V

    .line 482
    .end local v0    # "wallpaperReady":Z
    :cond_25
    return-void
.end method

.method cleanupAnimation(I)V
    .registers 6
    .param p1, "reorderMode"    # I
        .annotation build Lcom/android/server/wm/RecentsAnimationController$ReorderMode;
        .end annotation
    .end param

    .line 421
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 421
    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_23

    .line 422
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    .line 423
    .local v2, "taskAdapter":Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;
    if-eq p1, v1, :cond_16

    if-nez p1, :cond_1d

    .line 424
    :cond_16
    # getter for: Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTask:Lcom/android/server/wm/Task;
    invoke-static {v2}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->access$300(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->dontAnimateDimExit()V

    .line 426
    :cond_1d
    invoke-virtual {p0, v2}, Lcom/android/server/wm/RecentsAnimationController;->removeAnimation(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)V

    .line 421
    .end local v2    # "taskAdapter":Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 430
    .end local v0    # "i":I
    :cond_23
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mFailsafeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 433
    invoke-direct {p0}, Lcom/android/server/wm/RecentsAnimationController;->unlinkToDeathOfRunner()V

    .line 434
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mRunner:Landroid/view/IRecentsAnimationRunner;

    .line 435
    iput-boolean v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mCanceled:Z

    .line 438
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 439
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v2, "recents_animation_input_consumer"

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService;->destroyInputConsumer(Ljava/lang/String;)Z

    .line 443
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_56

    .line 444
    if-eq p1, v1, :cond_4b

    if-nez p1, :cond_56

    .line 445
    :cond_4b
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionFinishedLocked(Landroid/os/IBinder;)V

    .line 448
    :cond_56
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 651
    .local v0, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/android/server/wm/RecentsAnimationController;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 652
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mPendingStart="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingStart:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 653
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mCanceled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mCanceled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 654
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mInputConsumerEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mInputConsumerEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 655
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mSplitScreenMinimized="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mSplitScreenMinimized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 656
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mTargetAppToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 657
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isTargetOverWallpaper="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/wm/RecentsAnimationController;->isTargetOverWallpaper()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 658
    return-void
.end method

.method hasInputConsumerForApp(Lcom/android/server/wm/AppWindowToken;)Z
    .registers 3
    .param p1, "appToken"    # Lcom/android/server/wm/AppWindowToken;

    .line 494
    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mInputConsumerEnabled:Z

    if-eqz v0, :cond_c

    invoke-direct {p0, p1}, Lcom/android/server/wm/RecentsAnimationController;->isAnimatingApp(Lcom/android/server/wm/AppWindowToken;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public initialize(ILandroid/util/SparseBooleanArray;)V
    .registers 12
    .param p1, "targetActivityType"    # I
    .param p2, "recentTaskIds"    # Landroid/util/SparseBooleanArray;

    .line 263
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 264
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getVisibleTasks()Ljava/util/ArrayList;

    move-result-object v1

    .line 265
    .local v1, "visibleTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 266
    .local v2, "taskCount":I
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_14
    if-ge v4, v2, :cond_42

    .line 267
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/Task;

    .line 268
    .local v5, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v5}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v6

    .line 269
    .local v6, "config":Landroid/app/WindowConfiguration;
    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->tasksAreFloating()Z

    move-result v7

    if-nez v7, :cond_3f

    .line 270
    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_3f

    .line 271
    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v7

    if-ne v7, p1, :cond_34

    .line 272
    goto :goto_3f

    .line 274
    :cond_34
    iget v7, v5, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p2, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    invoke-virtual {p0, v5, v7}, Lcom/android/server/wm/RecentsAnimationController;->addAnimation(Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/AnimationAdapter;

    .line 266
    .end local v5    # "task":Lcom/android/server/wm/Task;
    .end local v6    # "config":Landroid/app/WindowConfiguration;
    :cond_3f
    :goto_3f
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 278
    .end local v4    # "i":I
    :cond_42
    iget-object v4, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_51

    .line 279
    const-string v3, "initialize-noVisibleTasks"

    invoke-virtual {p0, v5, v3}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimation(ILjava/lang/String;)V

    .line 280
    return-void

    .line 284
    :cond_51
    :try_start_51
    invoke-direct {p0}, Lcom/android/server/wm/RecentsAnimationController;->linkToDeathOfRunner()V
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_54} :catch_87

    .line 288
    nop

    .line 291
    invoke-virtual {v0, v3, p1}, Lcom/android/server/wm/DisplayContent;->getStack(II)Lcom/android/server/wm/TaskStack;

    move-result-object v3

    .line 292
    invoke-virtual {v3}, Lcom/android/server/wm/TaskStack;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getTopFullscreenAppToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v3

    .line 293
    .local v3, "recentsComponentAppToken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v3, :cond_76

    .line 296
    iput-object v3, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 297
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->windowsCanBeWallpaperTarget()Z

    move-result v4

    if-eqz v4, :cond_76

    .line 298
    iget v4, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v4, v4, 0x4

    iput v4, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 299
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 304
    :cond_76
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/RecentsAnimationController;->mMinimizedHomeBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/DockedStackDividerController;->getHomeStackBoundsInDockedMode(Landroid/graphics/Rect;)V

    .line 306
    iget-object v4, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 307
    return-void

    .line 285
    .end local v3    # "recentsComponentAppToken":Lcom/android/server/wm/AppWindowToken;
    :catch_87
    move-exception v3

    .line 286
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "initialize-failedToLinkToDeath"

    invoke-virtual {p0, v5, v4}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimation(ILjava/lang/String;)V

    .line 287
    return-void
.end method

.method isAnimatingTask(Lcom/android/server/wm/Task;)Z
    .registers 5
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 524
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 525
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    # getter for: Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTask:Lcom/android/server/wm/Task;
    invoke-static {v2}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->access$300(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)Lcom/android/server/wm/Task;

    move-result-object v2

    if-ne p1, v2, :cond_19

    .line 526
    return v1

    .line 524
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 529
    .end local v0    # "i":I
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method isSplitScreenMinimized()Z
    .registers 2

    .line 485
    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mSplitScreenMinimized:Z

    return v0
.end method

.method isTargetApp(Lcom/android/server/wm/AppWindowToken;)Z
    .registers 3
    .param p1, "token"    # Lcom/android/server/wm/AppWindowToken;

    .line 513
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    if-ne p1, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z
    .registers 4
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 489
    if-eqz p1, :cond_14

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-ne v0, v1, :cond_14

    .line 490
    invoke-direct {p0}, Lcom/android/server/wm/RecentsAnimationController;->isTargetOverWallpaper()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 489
    :goto_15
    return v0
.end method

.method removeAnimation(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)V
    .registers 4
    .param p1, "taskAdapter"    # Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 327
    # getter for: Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mTask:Lcom/android/server/wm/Task;
    invoke-static {p1}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->access$300(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->setCanAffectSystemUiFlags(Z)V

    .line 328
    # getter for: Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->mCapturedFinishCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;
    invoke-static {p1}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->access$700(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(Lcom/android/server/wm/AnimationAdapter;)V

    .line 329
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 330
    return-void
.end method

.method scheduleFailsafe()V
    .registers 5

    .line 451
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mFailsafeRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 452
    return-void
.end method

.method startAnimation()V
    .registers 8

    .line 335
    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingStart:Z

    if-eqz v0, :cond_9d

    iget-boolean v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mCanceled:Z

    if-eqz v0, :cond_a

    goto/16 :goto_9d

    .line 340
    :cond_a
    const/4 v0, 0x1

    :try_start_b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 341
    .local v1, "appAnimations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/RemoteAnimationTarget;>;"
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v0

    .line 341
    .local v2, "i":I
    :goto_17
    if-ltz v2, :cond_31

    .line 342
    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    .line 343
    .local v3, "taskAdapter":Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;
    invoke-virtual {v3}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->createRemoteAnimationApp()Landroid/view/RemoteAnimationTarget;

    move-result-object v4

    .line 344
    .local v4, "target":Landroid/view/RemoteAnimationTarget;
    if-eqz v4, :cond_2b

    .line 345
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 347
    :cond_2b
    invoke-virtual {p0, v3}, Lcom/android/server/wm/RecentsAnimationController;->removeAnimation(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)V

    .line 341
    .end local v3    # "taskAdapter":Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;
    .end local v4    # "target":Landroid/view/RemoteAnimationTarget;
    :goto_2e
    add-int/lit8 v2, v2, -0x1

    goto :goto_17

    .line 352
    .end local v2    # "i":I
    :cond_31
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 353
    const/4 v2, 0x2

    const-string/jumbo v3, "startAnimation-noAppWindows"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimation(ILjava/lang/String;)V

    .line 354
    return-void

    .line 357
    :cond_3f
    nop

    .line 358
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/view/RemoteAnimationTarget;

    .line 357
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/view/RemoteAnimationTarget;

    .line 359
    .local v2, "appTargets":[Landroid/view/RemoteAnimationTarget;
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wm/RecentsAnimationController;->mPendingStart:Z

    .line 362
    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    const/4 v4, 0x0

    if-eqz v3, :cond_5f

    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->inSplitScreenSecondaryWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 363
    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimationController;->mMinimizedHomeBounds:Landroid/graphics/Rect;

    goto :goto_60

    .line 364
    :cond_5f
    move-object v3, v4

    .line 366
    .local v3, "minimizedHomeBounds":Landroid/graphics/Rect;
    :goto_60
    iget-object v5, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v5, :cond_75

    iget-object v5, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v5

    if-eqz v5, :cond_75

    .line 367
    iget-object v4, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    goto :goto_76

    .line 368
    :cond_75
    nop

    .line 369
    .local v4, "contentInsets":Landroid/graphics/Rect;
    :goto_76
    iget-object v5, p0, Lcom/android/server/wm/RecentsAnimationController;->mRunner:Landroid/view/IRecentsAnimationRunner;

    iget-object v6, p0, Lcom/android/server/wm/RecentsAnimationController;->mController:Landroid/view/IRecentsAnimationController;

    invoke-interface {v5, v6, v2, v4, v3}, Landroid/view/IRecentsAnimationRunner;->onAnimationStart(Landroid/view/IRecentsAnimationController;[Landroid/view/RemoteAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    :try_end_7d
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_7d} :catch_7e

    .line 380
    .end local v1    # "appAnimations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/RemoteAnimationTarget;>;"
    .end local v2    # "appTargets":[Landroid/view/RemoteAnimationTarget;
    .end local v3    # "minimizedHomeBounds":Landroid/graphics/Rect;
    .end local v4    # "contentInsets":Landroid/graphics/Rect;
    goto :goto_86

    .line 378
    :catch_7e
    move-exception v1

    .line 379
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/server/wm/RecentsAnimationController;->TAG:Ljava/lang/String;

    const-string v3, "Failed to start recents animation"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 381
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_86
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 382
    .local v1, "reasons":Landroid/util/SparseIntArray;
    const/4 v2, 0x5

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 383
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x2f

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 384
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 385
    return-void

    .line 337
    .end local v1    # "reasons":Landroid/util/SparseIntArray;
    :cond_9d
    :goto_9d
    return-void
.end method

.method updateInputConsumerForApp(Lcom/android/server/wm/InputConsumerImpl;Z)Z
    .registers 6
    .param p1, "recentsAnimationInputConsumer"    # Lcom/android/server/wm/InputConsumerImpl;
    .param p2, "hasFocus"    # Z

    .line 500
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_b

    .line 501
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    goto :goto_c

    .line 502
    :cond_b
    const/4 v0, 0x0

    .line 503
    .local v0, "targetAppMainWindow":Lcom/android/server/wm/WindowState;
    :goto_c
    if-eqz v0, :cond_22

    .line 504
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowState;->getBounds(Landroid/graphics/Rect;)V

    .line 505
    iget-object v1, p1, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean p2, v1, Lcom/android/server/input/InputWindowHandle;->hasFocus:Z

    .line 506
    iget-object v1, p1, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v1, v1, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 507
    const/4 v1, 0x1

    return v1

    .line 509
    :cond_22
    const/4 v1, 0x0

    return v1
.end method
