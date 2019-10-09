.class Lcom/android/server/wm/TaskSnapshotController;
.super Ljava/lang/Object;
.source "TaskSnapshotController.java"


# static fields
.field static final SNAPSHOT_MODE_APP_THEME:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final SNAPSHOT_MODE_NONE:I = 0x2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final SNAPSHOT_MODE_REAL:I = 0x0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private final mCache:Lcom/android/server/wm/TaskSnapshotCache;

.field private final mHandler:Landroid/os/Handler;

.field private final mIsRunningOnIoT:Z

.field private final mIsRunningOnTv:Z

.field private final mIsRunningOnWear:Z

.field private final mLoader:Lcom/android/server/wm/TaskSnapshotLoader;

.field private final mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mSkipClosingAppSnapshotTasks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTmpTasks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 5
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Lcom/android/server/wm/TaskSnapshotPersister;

    sget-object v1, Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$OPdXuZQLetMnocdH6XV32JbNQ3I;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$OPdXuZQLetMnocdH6XV32JbNQ3I;

    invoke-direct {v0, v1}, Lcom/android/server/wm/TaskSnapshotPersister;-><init>(Lcom/android/server/wm/TaskSnapshotPersister$DirectoryResolver;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    .line 100
    new-instance v0, Lcom/android/server/wm/TaskSnapshotLoader;

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-direct {v0, v1}, Lcom/android/server/wm/TaskSnapshotLoader;-><init>(Lcom/android/server/wm/TaskSnapshotPersister;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mLoader:Lcom/android/server/wm/TaskSnapshotLoader;

    .line 101
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mSkipClosingAppSnapshotTasks:Landroid/util/ArraySet;

    .line 102
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    .line 103
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mHandler:Landroid/os/Handler;

    .line 105
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpRect:Landroid/graphics/Rect;

    .line 123
    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 124
    new-instance v0, Lcom/android/server/wm/TaskSnapshotCache;

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotController;->mLoader:Lcom/android/server/wm/TaskSnapshotLoader;

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/TaskSnapshotCache;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskSnapshotLoader;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    .line 125
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mIsRunningOnTv:Z

    .line 127
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.embedded"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mIsRunningOnIoT:Z

    .line 129
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.watch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mIsRunningOnWear:Z

    .line 131
    return-void
.end method

.method private drawAppThemeSnapshot(Lcom/android/server/wm/Task;)Landroid/app/ActivityManager$TaskSnapshot;
    .registers 25
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 395
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    .line 396
    .local v0, "topChild":Lcom/android/server/wm/AppWindowToken;
    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 397
    return-object v1

    .line 399
    :cond_a
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 400
    .local v2, "mainWindow":Lcom/android/server/wm/WindowState;
    if-nez v2, :cond_11

    .line 401
    return-object v1

    .line 403
    :cond_11
    nop

    .line 404
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getTaskDescription()Landroid/app/ActivityManager$TaskDescription;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v3

    const/16 v4, 0xff

    .line 403
    invoke-static {v3, v4}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v3

    .line 405
    .local v3, "color":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getTaskDescription()Landroid/app/ActivityManager$TaskDescription;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActivityManager$TaskDescription;->getStatusBarColor()I

    move-result v4

    .line 406
    .local v4, "statusBarColor":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getTaskDescription()Landroid/app/ActivityManager$TaskDescription;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ActivityManager$TaskDescription;->getNavigationBarColor()I

    move-result v11

    .line 407
    .local v11, "navigationBarColor":I
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v12

    .line 408
    .local v12, "attrs":Landroid/view/WindowManager$LayoutParams;
    new-instance v13, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;

    iget v6, v12, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v7, v12, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget v8, v12, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    move-object v5, v13

    move v9, v4

    move v10, v11

    invoke-direct/range {v5 .. v10}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;-><init>(IIIII)V

    .line 410
    .local v5, "decorPainter":Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 411
    .local v6, "width":I
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 413
    .local v7, "height":I
    const-string v8, "TaskSnapshotController"

    invoke-static {v8, v1}, Landroid/view/RenderNode;->create(Ljava/lang/String;Landroid/view/View;)Landroid/view/RenderNode;

    move-result-object v8

    .line 414
    .local v8, "node":Landroid/view/RenderNode;
    const/4 v9, 0x0

    invoke-virtual {v8, v9, v9, v6, v7}, Landroid/view/RenderNode;->setLeftTopRightBottom(IIII)Z

    .line 415
    invoke-virtual {v8, v9}, Landroid/view/RenderNode;->setClipToBounds(Z)Z

    .line 416
    invoke-virtual {v8, v6, v7}, Landroid/view/RenderNode;->start(II)Landroid/view/DisplayListCanvas;

    move-result-object v9

    .line 417
    .local v9, "c":Landroid/view/DisplayListCanvas;
    invoke-virtual {v9, v3}, Landroid/view/DisplayListCanvas;->drawColor(I)V

    .line 418
    iget-object v10, v2, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    iget-object v13, v2, Lcom/android/server/wm/WindowState;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v5, v10, v13}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->setInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 419
    invoke-virtual {v5, v9, v1}, Lcom/android/server/wm/TaskSnapshotSurface$SystemBarBackgroundPainter;->drawDecors(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 420
    invoke-virtual {v8, v9}, Landroid/view/RenderNode;->end(Landroid/view/DisplayListCanvas;)V

    .line 421
    invoke-static {v8, v6, v7}, Landroid/view/ThreadedRenderer;->createHardwareBitmap(Landroid/view/RenderNode;II)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 422
    .local v10, "hwBitmap":Landroid/graphics/Bitmap;
    if-nez v10, :cond_7a

    .line 423
    return-object v1

    .line 427
    :cond_7a
    new-instance v1, Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->createGraphicBufferHandle()Landroid/graphics/GraphicBuffer;

    move-result-object v14

    .line 428
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    iget v15, v13, Landroid/content/res/Configuration;->orientation:I

    iget-object v13, v2, Lcom/android/server/wm/WindowState;->mStableInsets:Landroid/graphics/Rect;

    .line 429
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v17

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    .line 430
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v20

    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/TaskSnapshotController;->getSystemUiVisibility(Lcom/android/server/wm/Task;)I

    move-result v21

    const/16 v22, 0x0

    move-object/from16 v16, v13

    move-object v13, v1

    invoke-direct/range {v13 .. v22}, Landroid/app/ActivityManager$TaskSnapshot;-><init>(Landroid/graphics/GraphicBuffer;ILandroid/graphics/Rect;ZFZIIZ)V

    .line 427
    return-object v1
.end method

.method private getInsets(Lcom/android/server/wm/WindowState;)Landroid/graphics/Rect;
    .registers 4
    .param p1, "state"    # Lcom/android/server/wm/WindowState;

    .line 339
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mStableInsets:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/TaskSnapshotController;->minRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 340
    .local v0, "insets":Landroid/graphics/Rect;
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->getLetterboxInsets()Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wm/utils/InsetUtils;->addInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 341
    return-object v0
.end method

.method private getSystemUiVisibility(Lcom/android/server/wm/Task;)I
    .registers 5
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 501
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopFullscreenAppToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 502
    .local v0, "topFullscreenToken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v0, :cond_b

    .line 503
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getTopFullscreenWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    goto :goto_c

    .line 504
    :cond_b
    const/4 v1, 0x0

    .line 505
    .local v1, "topFullscreenWindow":Lcom/android/server/wm/WindowState;
    :goto_c
    if-eqz v1, :cond_13

    .line 506
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getSystemUiVisibility()I

    move-result v2

    return v2

    .line 508
    :cond_13
    const/4 v2, 0x0

    return v2
.end method

.method private handleClosingApps(Landroid/util/ArraySet;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;)V"
        }
    .end annotation

    .line 164
    .local p1, "closingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    invoke-direct {p0}, Lcom/android/server/wm/TaskSnapshotController;->shouldDisableSnapshots()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 165
    return-void

    .line 170
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskSnapshotController;->getClosingTasks(Landroid/util/ArraySet;Landroid/util/ArraySet;)V

    .line 171
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTasks(Landroid/util/ArraySet;)V

    .line 172
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mSkipClosingAppSnapshotTasks:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 173
    return-void
.end method

.method public static synthetic lambda$OPdXuZQLetMnocdH6XV32JbNQ3I(I)Ljava/io/File;
    .registers 1

    invoke-static {p0}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$screenTurningOff$1(Lcom/android/server/wm/TaskSnapshotController;Lcom/android/server/wm/Task;)V
    .registers 3
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 484
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 485
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 487
    :cond_b
    return-void
.end method

.method public static synthetic lambda$screenTurningOff$2(Lcom/android/server/wm/TaskSnapshotController;Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;

    .line 481
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_2d

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 482
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 483
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$ewi-Dm2ws6pdTXd1elso7FtoLKw;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$ewi-Dm2ws6pdTXd1elso7FtoLKw;-><init>(Lcom/android/server/wm/TaskSnapshotController;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->forAllTasks(Ljava/util/function/Consumer;)V

    .line 488
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTasks(Landroid/util/ArraySet;)V

    .line 489
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_27

    :try_start_1f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_2d

    .line 491
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;->onScreenOff()V

    .line 492
    nop

    .line 493
    return-void

    .line 489
    :catchall_27
    move-exception v1

    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    :try_start_29
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
    :try_end_2d
    .catchall {:try_start_29 .. :try_end_2d} :catchall_2d

    .line 491
    :catchall_2d
    move-exception v0

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;->onScreenOff()V

    throw v0
.end method

.method static synthetic lambda$snapshotTask$0(Lcom/android/server/wm/WindowState;)Z
    .registers 3
    .param p0, "ws"    # Lcom/android/server/wm/WindowState;

    .line 269
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->isSurfaceShowing()Z

    move-result v0

    if-eqz v0, :cond_23

    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 270
    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_23

    const/4 v0, 0x1

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    .line 269
    :goto_24
    return v0
.end method

.method private minRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 9
    .param p1, "rect1"    # Landroid/graphics/Rect;
    .param p2, "rect2"    # Landroid/graphics/Rect;

    .line 345
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    .line 346
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p2, Landroid/graphics/Rect;->right:I

    .line 347
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    .line 348
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 345
    return-object v0
.end method

.method private shouldDisableSnapshots()Z
    .registers 2

    .line 333
    iget-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mIsRunningOnWear:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mIsRunningOnTv:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mIsRunningOnIoT:Z

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method private snapshotTask(Lcom/android/server/wm/Task;)Landroid/app/ActivityManager$TaskSnapshot;
    .registers 26
    .param p1, "task"    # Lcom/android/server/wm/Task;

    move-object/from16 v0, p0

    .line 240
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    .line 241
    .local v1, "top":Lcom/android/server/wm/AppWindowToken;
    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 242
    return-object v2

    .line 244
    :cond_c
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    .line 245
    .local v3, "mainWindow":Lcom/android/server/wm/WindowState;
    if-nez v3, :cond_13

    .line 246
    return-object v2

    .line 248
    :cond_13
    iget-object v4, v0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v4}, Lcom/android/server/policy/WindowManagerPolicy;->isScreenOn()Z

    move-result v4

    if-nez v4, :cond_1e

    .line 252
    return-object v2

    .line 254
    :cond_1e
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v4

    if-nez v4, :cond_25

    .line 255
    return-object v2

    .line 258
    :cond_25
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->hasCommittedReparentToAnimationLeash()Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 262
    return-object v2

    .line 265
    :cond_2c
    sget-object v4, Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$1IXTXVXjIGs9ncGKW_v40ivZeoI;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$1IXTXVXjIGs9ncGKW_v40ivZeoI;

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Lcom/android/server/wm/AppWindowToken;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v4

    .line 273
    .local v4, "hasVisibleChild":Z
    if-nez v4, :cond_36

    .line 277
    return-object v2

    .line 280
    :cond_36
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v16

    .line 281
    .local v16, "isLowRamDevice":Z
    if-eqz v16, :cond_3f

    sget v6, Lcom/android/server/wm/TaskSnapshotPersister;->REDUCED_SCALE:F

    goto :goto_41

    :cond_3f
    const/high16 v6, 0x3f800000    # 1.0f

    :goto_41
    move v15, v6

    .line 282
    .local v15, "scaleFraction":F
    iget-object v6, v0, Lcom/android/server/wm/TaskSnapshotController;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v14, p1

    invoke-virtual {v14, v6}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 286
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v13

    .line 287
    .local v13, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v13, :cond_56

    .line 288
    invoke-virtual {v13}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    :goto_53
    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    goto :goto_5b

    :cond_56
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    goto :goto_53

    .line 289
    .local v6, "orientation":I
    :goto_5b
    iget-object v7, v0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v7, v7, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    const/4 v8, 0x0

    if-eqz v7, :cond_d7

    iget-object v7, v0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 290
    invoke-virtual {v7, v8}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v7

    if-eqz v7, :cond_d7

    iget-object v7, v0, Lcom/android/server/wm/TaskSnapshotController;->mTmpRect:Landroid/graphics/Rect;

    .line 291
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    iget-object v9, v3, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    if-lt v7, v9, :cond_88

    iget-object v7, v0, Lcom/android/server/wm/TaskSnapshotController;->mTmpRect:Landroid/graphics/Rect;

    .line 292
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget-object v9, v3, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-ge v7, v9, :cond_d7

    .line 293
    :cond_88
    if-ne v6, v5, :cond_af

    .line 294
    iget-object v7, v0, Lcom/android/server/wm/TaskSnapshotController;->mTmpRect:Landroid/graphics/Rect;

    iget-object v9, v0, Lcom/android/server/wm/TaskSnapshotController;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v10, v0, Lcom/android/server/wm/TaskSnapshotController;->mTmpRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, v0, Lcom/android/server/wm/TaskSnapshotController;->mTmpRect:Landroid/graphics/Rect;

    .line 295
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    iget-object v12, v0, Lcom/android/server/wm/TaskSnapshotController;->mTmpRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    add-int/2addr v11, v12

    iget-object v12, v0, Lcom/android/server/wm/TaskSnapshotController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v12

    iget-object v2, v0, Lcom/android/server/wm/TaskSnapshotController;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v12, v2

    .line 294
    invoke-virtual {v7, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 296
    const/4 v2, 0x2

    .end local v6    # "orientation":I
    .local v2, "orientation":I
    :goto_ae
    goto :goto_d8

    .line 297
    .end local v2    # "orientation":I
    .restart local v6    # "orientation":I
    :cond_af
    const/4 v2, 0x2

    if-ne v6, v2, :cond_d7

    .line 298
    iget-object v2, v0, Lcom/android/server/wm/TaskSnapshotController;->mTmpRect:Landroid/graphics/Rect;

    iget-object v7, v0, Lcom/android/server/wm/TaskSnapshotController;->mTmpRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v9, v0, Lcom/android/server/wm/TaskSnapshotController;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, v0, Lcom/android/server/wm/TaskSnapshotController;->mTmpRect:Landroid/graphics/Rect;

    .line 299
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    iget-object v11, v0, Lcom/android/server/wm/TaskSnapshotController;->mTmpRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v11

    iget-object v11, v0, Lcom/android/server/wm/TaskSnapshotController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    iget-object v12, v0, Lcom/android/server/wm/TaskSnapshotController;->mTmpRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    add-int/2addr v11, v12

    .line 298
    invoke-virtual {v2, v7, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 300
    const/4 v2, 0x1

    goto :goto_ae

    .line 305
    :cond_d7
    move v2, v6

    .end local v6    # "orientation":I
    .restart local v2    # "orientation":I
    :goto_d8
    iget-object v12, v0, Lcom/android/server/wm/TaskSnapshotController;->mTmpRect:Landroid/graphics/Rect;

    .line 306
    .local v12, "taskBounds":Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v6

    if-eqz v6, :cond_103

    .line 307
    iget-object v6, v0, Lcom/android/server/wm/TaskSnapshotController;->mTmpRect:Landroid/graphics/Rect;

    iget v7, v12, Landroid/graphics/Rect;->left:I

    iget v9, v12, Landroid/graphics/Rect;->top:I

    iget v10, v12, Landroid/graphics/Rect;->left:I

    .line 308
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    sget v18, Landroid/util/MiuiMultiWindowUtils;->sScale:F

    mul-float v11, v11, v18

    float-to-int v11, v11

    add-int/2addr v10, v11

    iget v11, v12, Landroid/graphics/Rect;->top:I

    .line 309
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    sget v18, Landroid/util/MiuiMultiWindowUtils;->sScale:F

    mul-float v5, v5, v18

    float-to-int v5, v5

    add-int/2addr v11, v5

    .line 307
    invoke-virtual {v6, v7, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 312
    :cond_103
    iget-object v5, v0, Lcom/android/server/wm/TaskSnapshotController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v8, v8}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 314
    nop

    .line 315
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/SurfaceControl;->getHandle()Landroid/os/IBinder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/wm/TaskSnapshotController;->mTmpRect:Landroid/graphics/Rect;

    .line 314
    invoke-static {v5, v6, v15}, Landroid/view/SurfaceControl;->captureLayers(Landroid/os/IBinder;Landroid/graphics/Rect;F)Landroid/graphics/GraphicBuffer;

    move-result-object v5

    .line 316
    .local v5, "buffer":Landroid/graphics/GraphicBuffer;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_122

    const/4 v6, 0x1

    goto :goto_123

    :cond_122
    move v6, v8

    :goto_123
    move/from16 v18, v6

    .line 317
    .local v18, "isWindowTranslucent":Z
    if-eqz v5, :cond_172

    invoke-virtual {v5}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_172

    invoke-virtual {v5}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v6

    if-gt v6, v7, :cond_13b

    .line 321
    move-object/from16 v23, v12

    move-object/from16 v19, v13

    move/from16 v20, v15

    goto :goto_178

    .line 325
    :cond_13b
    new-instance v17, Landroid/app/ActivityManager$TaskSnapshot;

    .line 327
    invoke-direct {v0, v3}, Lcom/android/server/wm/TaskSnapshotController;->getInsets(Lcom/android/server/wm/WindowState;)Landroid/graphics/Rect;

    move-result-object v9

    const/16 v19, 0x1

    .line 328
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v20

    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/TaskSnapshotController;->getSystemUiVisibility(Lcom/android/server/wm/Task;)I

    move-result v21

    .line 329
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->fillsParent()Z

    move-result v6

    if-eqz v6, :cond_157

    if-eqz v18, :cond_154

    goto :goto_157

    :cond_154
    move/from16 v22, v8

    goto :goto_159

    :cond_157
    :goto_157
    move/from16 v22, v7

    :goto_159
    move-object/from16 v6, v17

    move-object v7, v5

    move v8, v2

    move/from16 v10, v16

    move v11, v15

    move-object/from16 v23, v12

    move/from16 v12, v19

    .end local v12    # "taskBounds":Landroid/graphics/Rect;
    .local v23, "taskBounds":Landroid/graphics/Rect;
    move-object/from16 v19, v13

    move/from16 v13, v20

    .end local v13    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .local v19, "displayContent":Lcom/android/server/wm/DisplayContent;
    move/from16 v14, v21

    move/from16 v20, v15

    move/from16 v15, v22

    .end local v15    # "scaleFraction":F
    .local v20, "scaleFraction":F
    invoke-direct/range {v6 .. v15}, Landroid/app/ActivityManager$TaskSnapshot;-><init>(Landroid/graphics/GraphicBuffer;ILandroid/graphics/Rect;ZFZIIZ)V

    .line 325
    return-object v17

    .line 321
    .end local v19    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v20    # "scaleFraction":F
    .end local v23    # "taskBounds":Landroid/graphics/Rect;
    .restart local v12    # "taskBounds":Landroid/graphics/Rect;
    .restart local v13    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v15    # "scaleFraction":F
    :cond_172
    move-object/from16 v23, v12

    move-object/from16 v19, v13

    move/from16 v20, v15

    .end local v12    # "taskBounds":Landroid/graphics/Rect;
    .end local v13    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v15    # "scaleFraction":F
    .restart local v19    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v20    # "scaleFraction":F
    .restart local v23    # "taskBounds":Landroid/graphics/Rect;
    :goto_178
    const/4 v6, 0x0

    return-object v6
.end method


# virtual methods
.method addSkipClosingAppSnapshotTasks(Landroid/util/ArraySet;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/Task;",
            ">;)V"
        }
    .end annotation

    .line 182
    .local p1, "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/Task;>;"
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mSkipClosingAppSnapshotTasks:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 183
    return-void
.end method

.method createStartingSurface(Lcom/android/server/wm/AppWindowToken;Landroid/app/ActivityManager$TaskSnapshot;)Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;
    .registers 4
    .param p1, "token"    # Lcom/android/server/wm/AppWindowToken;
    .param p2, "snapshot"    # Landroid/app/ActivityManager$TaskSnapshot;

    .line 236
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/wm/TaskSnapshotSurface;->create(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/AppWindowToken;Landroid/app/ActivityManager$TaskSnapshot;)Lcom/android/server/wm/TaskSnapshotSurface;

    move-result-object v0

    return-object v0
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 512
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/TaskSnapshotCache;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 513
    return-void
.end method

.method getClosingTasks(Landroid/util/ArraySet;Landroid/util/ArraySet;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/Task;",
            ">;)V"
        }
    .end annotation

    .line 356
    .local p1, "closingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    .local p2, "outClosingTasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/Task;>;"
    invoke-virtual {p2}, Landroid/util/ArraySet;->clear()V

    .line 357
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_9
    if-ltz v0, :cond_38

    .line 358
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    .line 359
    .local v1, "atoken":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 363
    .local v2, "task":Lcom/android/server/wm/Task;
    if-eqz v2, :cond_35

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v3

    if-nez v3, :cond_35

    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotController;->mSkipClosingAppSnapshotTasks:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_35

    .line 367
    iget-boolean v3, v2, Lcom/android/server/wm/Task;->mUpdateTaskSnapshotByGesture:Z

    if-eqz v3, :cond_32

    .line 368
    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotController;->mSkipClosingAppSnapshotTasks:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 369
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/wm/Task;->mUpdateTaskSnapshotByGesture:Z

    .line 370
    goto :goto_35

    .line 373
    :cond_32
    invoke-virtual {p2, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 357
    .end local v1    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v2    # "task":Lcom/android/server/wm/Task;
    :cond_35
    :goto_35
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 376
    .end local v0    # "i":I
    :cond_38
    return-void
.end method

.method getSnapshot(IIZZ)Landroid/app/ActivityManager$TaskSnapshot;
    .registers 7
    .param p1, "taskId"    # I
    .param p2, "userId"    # I
    .param p3, "restoreFromDisk"    # Z
    .param p4, "reducedResolution"    # Z

    .line 226
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    if-nez p4, :cond_b

    sget-boolean v1, Lcom/android/server/wm/TaskSnapshotPersister;->DISABLE_FULL_SIZED_BITMAPS:Z

    if-eqz v1, :cond_9

    goto :goto_b

    :cond_9
    const/4 v1, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v1, 0x1

    :goto_c
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/server/wm/TaskSnapshotCache;->getSnapshot(IIZZ)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v0

    return-object v0
.end method

.method getSnapshotMode(Lcom/android/server/wm/Task;)I
    .registers 4
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 380
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    .line 381
    .local v0, "topChild":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isActivityTypeStandardOrUndefined()Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isActivityTypeAssistant()Z

    move-result v1

    if-nez v1, :cond_14

    .line 382
    const/4 v1, 0x2

    return v1

    .line 383
    :cond_14
    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->shouldUseAppThemeSnapshot()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 384
    const/4 v1, 0x1

    return v1

    .line 386
    :cond_1e
    const/4 v1, 0x0

    return v1
.end method

.method handleSnapshotTaskByGesture(Lcom/android/server/wm/AppWindowToken;)V
    .registers 5
    .param p1, "atoken"    # Lcom/android/server/wm/AppWindowToken;

    .line 152
    invoke-direct {p0}, Lcom/android/server/wm/TaskSnapshotController;->shouldDisableSnapshots()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 153
    return-void

    .line 156
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 157
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_22

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mSkipClosingAppSnapshotTasks:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 158
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/server/wm/Task;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTasks(Landroid/util/ArraySet;)V

    .line 160
    :cond_22
    return-void
.end method

.method notifyAppVisibilityChanged(Lcom/android/server/wm/AppWindowToken;Z)V
    .registers 5
    .param p1, "appWindowToken"    # Lcom/android/server/wm/AppWindowToken;
    .param p2, "visible"    # Z

    .line 145
    if-nez p2, :cond_f

    .line 146
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/server/wm/AppWindowToken;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskSnapshotController;->handleClosingApps(Landroid/util/ArraySet;)V

    .line 148
    :cond_f
    return-void
.end method

.method notifyTaskRemovedFromRecents(II)V
    .registers 4
    .param p1, "taskId"    # I
    .param p2, "userId"    # I

    .line 449
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskSnapshotCache;->onTaskRemoved(I)V

    .line 450
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/TaskSnapshotPersister;->onTaskRemovedFromRecents(II)V

    .line 451
    return-void
.end method

.method onAppDied(Lcom/android/server/wm/AppWindowToken;)V
    .registers 3
    .param p1, "wtoken"    # Lcom/android/server/wm/AppWindowToken;

    .line 445
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskSnapshotCache;->onAppDied(Lcom/android/server/wm/AppWindowToken;)V

    .line 446
    return-void
.end method

.method onAppRemoved(Lcom/android/server/wm/AppWindowToken;)V
    .registers 3
    .param p1, "wtoken"    # Lcom/android/server/wm/AppWindowToken;

    .line 438
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskSnapshotCache;->onAppRemoved(Lcom/android/server/wm/AppWindowToken;)V

    .line 439
    return-void
.end method

.method onTransitionStarting()V
    .registers 2

    .line 138
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskSnapshotController;->handleClosingApps(Landroid/util/ArraySet;)V

    .line 139
    return-void
.end method

.method removeObsoleteTaskFiles(Landroid/util/ArraySet;[I)V
    .registers 4
    .param p2, "runningUserIds"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;[I)V"
        }
    .end annotation

    .line 457
    .local p1, "persistentTaskIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/TaskSnapshotPersister;->removeObsoleteFiles(Landroid/util/ArraySet;[I)V

    .line 458
    return-void
.end method

.method screenTurningOff(Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;

    .line 473
    invoke-direct {p0}, Lcom/android/server/wm/TaskSnapshotController;->shouldDisableSnapshots()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 474
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;->onScreenOff()V

    .line 475
    return-void

    .line 479
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$q-BG2kMqHK9gvuY43J0TfS4aSVU;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/-$$Lambda$TaskSnapshotController$q-BG2kMqHK9gvuY43J0TfS4aSVU;-><init>(Lcom/android/server/wm/TaskSnapshotController;Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 494
    return-void
.end method

.method setPersisterPaused(Z)V
    .registers 3
    .param p1, "paused"    # Z

    .line 466
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskSnapshotPersister;->setPaused(Z)V

    .line 467
    return-void
.end method

.method snapshotTasks(Landroid/util/ArraySet;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/Task;",
            ">;)V"
        }
    .end annotation

    .line 186
    .local p1, "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/Task;>;"
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 186
    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_7f

    .line 187
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    .line 188
    .local v1, "task":Lcom/android/server/wm/Task;
    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskSnapshotController;->getSnapshotMode(Lcom/android/server/wm/Task;)I

    move-result v2

    .line 190
    .local v2, "mode":I
    packed-switch v2, :pswitch_data_82

    .line 200
    const/4 v3, 0x0

    goto :goto_22

    .line 192
    :pswitch_17
    goto :goto_7c

    .line 194
    :pswitch_18
    invoke-direct {p0, v1}, Lcom/android/server/wm/TaskSnapshotController;->drawAppThemeSnapshot(Lcom/android/server/wm/Task;)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v3

    .line 195
    .local v3, "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    goto :goto_22

    .line 197
    .end local v3    # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    :pswitch_1d
    invoke-direct {p0, v1}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTask(Lcom/android/server/wm/Task;)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v3

    .line 198
    .restart local v3    # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    nop

    .line 200
    :goto_22
    nop

    .line 203
    if-eqz v3, :cond_7c

    .line 204
    invoke-virtual {v3}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v4

    .line 205
    .local v4, "buffer":Landroid/graphics/GraphicBuffer;
    invoke-virtual {v4}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v5

    if-eqz v5, :cond_52

    invoke-virtual {v4}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v5

    if-nez v5, :cond_36

    goto :goto_52

    .line 210
    :cond_36
    iget-object v5, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    invoke-virtual {v5, v1, v3}, Lcom/android/server/wm/TaskSnapshotCache;->putSnapshot(Lcom/android/server/wm/Task;Landroid/app/ActivityManager$TaskSnapshot;)V

    .line 211
    iget-object v5, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    iget v6, v1, Lcom/android/server/wm/Task;->mTaskId:I

    iget v7, v1, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v5, v6, v7, v3}, Lcom/android/server/wm/TaskSnapshotPersister;->persistSnapshot(IILandroid/app/ActivityManager$TaskSnapshot;)V

    .line 212
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getController()Lcom/android/server/wm/TaskWindowContainerController;

    move-result-object v5

    if-eqz v5, :cond_7c

    .line 213
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getController()Lcom/android/server/wm/TaskWindowContainerController;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/server/wm/TaskWindowContainerController;->reportSnapshotChanged(Landroid/app/ActivityManager$TaskSnapshot;)V

    .line 213
    .end local v1    # "task":Lcom/android/server/wm/Task;
    .end local v2    # "mode":I
    .end local v3    # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    .end local v4    # "buffer":Landroid/graphics/GraphicBuffer;
    goto :goto_7c

    .line 206
    .restart local v1    # "task":Lcom/android/server/wm/Task;
    .restart local v2    # "mode":I
    .restart local v3    # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    .restart local v4    # "buffer":Landroid/graphics/GraphicBuffer;
    :cond_52
    :goto_52
    invoke-virtual {v4}, Landroid/graphics/GraphicBuffer;->destroy()V

    .line 207
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid task snapshot dimensions "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {v4}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 207
    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    .end local v1    # "task":Lcom/android/server/wm/Task;
    .end local v2    # "mode":I
    .end local v3    # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    .end local v4    # "buffer":Landroid/graphics/GraphicBuffer;
    :cond_7c
    :goto_7c
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 218
    .end local v0    # "i":I
    :cond_7f
    return-void

    nop

    nop

    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_18
        :pswitch_17
    .end packed-switch
.end method

.method systemReady()V
    .registers 2

    .line 134
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskSnapshotPersister;->start()V

    .line 135
    return-void
.end method
