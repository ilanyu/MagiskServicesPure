.class public Lcom/android/server/wm/MiuiGestureAnimator;
.super Ljava/lang/Object;
.source "MiuiGestureAnimator.java"


# instance fields
.field private mAppWindowAnimatorHelper:Lcom/android/server/wm/AppWindowAnimatorHelper;

.field private final mGestureController:Lcom/android/server/wm/MiuiGestureController;

.field private final mGestureTransaction:Landroid/view/SurfaceControl$Transaction;

.field private mIsThumbnailShown:Z

.field private final mLeashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/server/wm/AppWindowToken;",
            "Landroid/view/SurfaceControl;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mThumbnail:Landroid/view/SurfaceControl;

.field private mThumbnailLeash:Landroid/view/SurfaceControl;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/MiuiGestureController;)V
    .registers 4
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "gestureController"    # Lcom/android/server/wm/MiuiGestureController;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MiuiGestureAnimator;->mLeashMap:Ljava/util/HashMap;

    .line 24
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MiuiGestureAnimator;->mGestureTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 33
    iput-object p1, p0, Lcom/android/server/wm/MiuiGestureAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 34
    iput-object p2, p0, Lcom/android/server/wm/MiuiGestureAnimator;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    .line 35
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/wm/AppTransitionInjector;->initDisplayRoundCorner(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method private createLeashLocked(Lcom/android/server/wm/AppWindowToken;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl;
    .registers 9
    .param p1, "aToken"    # Lcom/android/server/wm/AppWindowToken;
    .param p2, "child"    # Landroid/view/SurfaceControl;

    .line 280
    if-eqz p1, :cond_60

    if-nez p2, :cond_5

    goto :goto_60

    .line 284
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->hasCommittedReparentToAnimationLeash()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 285
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->cancelAnimation()V

    .line 288
    :cond_e
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->isAppAnimating()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 289
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->cancelAnimation()V

    .line 292
    :cond_17
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getSurfaceWidth()I

    move-result v0

    .line 293
    .local v0, "width":I
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getSurfaceHeight()I

    move-result v1

    .line 294
    .local v1, "height":I
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->isActivityTypeHome()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 295
    const/4 v2, 0x2

    goto :goto_28

    .line 296
    :cond_27
    const/4 v2, 0x1

    .line 298
    .local v2, "animationLayer":I
    :goto_28
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    .line 299
    invoke-virtual {p1, v2}, Lcom/android/server/wm/AppWindowToken;->getAppAnimationLayer(I)Landroid/view/SurfaceControl;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "-miui-gesture-leash"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 300
    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    .line 301
    invoke-virtual {v3, v0, v1}, Landroid/view/SurfaceControl$Builder;->setSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    .line 302
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v3

    .line 304
    .local v3, "leash":Landroid/view/SurfaceControl;
    iget-object v4, p0, Lcom/android/server/wm/MiuiGestureAnimator;->mGestureTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v4, v3}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 305
    iget-object v4, p0, Lcom/android/server/wm/MiuiGestureAnimator;->mGestureTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v3}, Landroid/view/SurfaceControl;->getHandle()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, p2, v5}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/os/IBinder;)Landroid/view/SurfaceControl$Transaction;

    .line 306
    return-object v3

    .line 281
    .end local v0    # "width":I
    .end local v1    # "height":I
    .end local v2    # "animationLayer":I
    .end local v3    # "leash":Landroid/view/SurfaceControl;
    :cond_60
    :goto_60
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method applyTransaction()V
    .registers 2

    .line 235
    monitor-enter p0

    .line 236
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureAnimator;->mGestureTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 237
    monitor-exit p0

    .line 238
    return-void

    .line 237
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method createLeash(Lcom/android/server/wm/AppWindowToken;)V
    .registers 5
    .param p1, "aToken"    # Lcom/android/server/wm/AppWindowToken;

    .line 39
    if-nez p1, :cond_3

    .line 40
    return-void

    .line 43
    :cond_3
    monitor-enter p0

    .line 44
    :try_start_4
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    .line 45
    .local v0, "curSurface":Landroid/view/SurfaceControl;
    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/MiuiGestureAnimator;->createLeashLocked(Lcom/android/server/wm/AppWindowToken;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl;

    move-result-object v1

    .line 46
    .local v1, "leash":Landroid/view/SurfaceControl;
    if-eqz v1, :cond_1a

    .line 47
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getPrefixOrderIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 48
    iget-object v2, p0, Lcom/android/server/wm/MiuiGestureAnimator;->mLeashMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .end local v0    # "curSurface":Landroid/view/SurfaceControl;
    .end local v1    # "leash":Landroid/view/SurfaceControl;
    :cond_1a
    monitor-exit p0

    .line 51
    return-void

    .line 50
    :catchall_1c
    move-exception v0

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method createThumbnail(Lcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/WindowState;Landroid/graphics/Bitmap;)Z
    .registers 15
    .param p1, "target"    # Lcom/android/server/wm/AppWindowToken;
    .param p2, "topWin"    # Lcom/android/server/wm/WindowState;
    .param p3, "thumbnail"    # Landroid/graphics/Bitmap;

    .line 67
    monitor-enter p0

    .line 68
    const/4 v0, 0x0

    if-eqz p1, :cond_d0

    if-eqz p3, :cond_d0

    :try_start_6
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_e

    goto/16 :goto_d0

    .line 72
    :cond_e
    sget-object v1, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p3, v1, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 73
    .local v1, "hwBitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1b

    .line 74
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->createGraphicBufferHandle()Landroid/graphics/GraphicBuffer;

    move-result-object v2

    goto :goto_1c

    :cond_1b
    const/4 v2, 0x0

    .line 75
    .local v2, "iconGraphicBuffer":Landroid/graphics/GraphicBuffer;
    :goto_1c
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    .line 76
    if-nez v2, :cond_23

    .line 77
    monitor-exit p0

    return v0

    .line 80
    :cond_23
    iget-object v3, p0, Lcom/android/server/wm/MiuiGestureAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v3

    .line 81
    .local v3, "displayInfo":Landroid/view/DisplayInfo;
    invoke-virtual {v2}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v4

    .line 82
    .local v4, "thumbnailWidth":I
    invoke-virtual {v2}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v5

    .line 83
    .local v5, "thumbnailHeight":I
    if-eqz p2, :cond_3a

    iget-object v6, p2, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    goto :goto_43

    .line 84
    :cond_3a
    new-instance v6, Landroid/graphics/Rect;

    iget v7, v3, Landroid/view/DisplayInfo;->appWidth:I

    iget v8, v3, Landroid/view/DisplayInfo;->appHeight:I

    invoke-direct {v6, v0, v0, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 85
    .local v6, "appRect":Landroid/graphics/Rect;
    :goto_43
    new-instance v7, Lcom/android/server/wm/AppWindowAnimatorHelper;

    iget-object v8, p0, Lcom/android/server/wm/MiuiGestureAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mMiuiAppTransitionAnimationHelper:Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    invoke-direct {v7, v6, v8}, Lcom/android/server/wm/AppWindowAnimatorHelper;-><init>(Landroid/graphics/Rect;Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;)V

    iput-object v7, p0, Lcom/android/server/wm/MiuiGestureAnimator;->mAppWindowAnimatorHelper:Lcom/android/server/wm/AppWindowAnimatorHelper;

    .line 87
    iget-object v7, p0, Lcom/android/server/wm/MiuiGestureAnimator;->mAppWindowAnimatorHelper:Lcom/android/server/wm/AppWindowAnimatorHelper;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v0, v0, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v7, v8}, Lcom/android/server/wm/AppWindowAnimatorHelper;->setMiuiThumbnailRect(Landroid/graphics/Rect;)V

    .line 90
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->makeSurface()Landroid/view/SurfaceControl$Builder;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "gesture thumbnail anim: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v7

    .line 92
    invoke-virtual {v7, v4, v5}, Landroid/view/SurfaceControl$Builder;->setSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v7

    const/4 v8, -0x3

    .line 93
    invoke-virtual {v7, v8}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v7

    iget v8, p1, Lcom/android/server/wm/AppWindowToken;->windowType:I

    .line 95
    if-eqz p2, :cond_85

    iget v9, p2, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    goto :goto_89

    :cond_85
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 94
    :goto_89
    invoke-virtual {v7, v8, v9}, Landroid/view/SurfaceControl$Builder;->setMetadata(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v7

    .line 96
    invoke-virtual {v7}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/wm/MiuiGestureAnimator;->mThumbnail:Landroid/view/SurfaceControl;

    .line 98
    new-instance v7, Landroid/view/Surface;

    invoke-direct {v7}, Landroid/view/Surface;-><init>()V

    .line 99
    .local v7, "drawSurface":Landroid/view/Surface;
    iget-object v8, p0, Lcom/android/server/wm/MiuiGestureAnimator;->mThumbnail:Landroid/view/SurfaceControl;

    invoke-virtual {v7, v8}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 100
    invoke-virtual {v7, v2}, Landroid/view/Surface;->attachAndQueueBuffer(Landroid/graphics/GraphicBuffer;)V

    .line 101
    invoke-virtual {v7}, Landroid/view/Surface;->release()V

    .line 103
    iget-object v8, p0, Lcom/android/server/wm/MiuiGestureAnimator;->mGestureTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v9, p0, Lcom/android/server/wm/MiuiGestureAnimator;->mThumbnail:Landroid/view/SurfaceControl;

    const/high16 v10, -0x80000000

    invoke-virtual {v8, v9, v10}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 106
    iget-object v8, p0, Lcom/android/server/wm/MiuiGestureAnimator;->mThumbnail:Landroid/view/SurfaceControl;

    invoke-direct {p0, p1, v8}, Lcom/android/server/wm/MiuiGestureAnimator;->createLeashLocked(Lcom/android/server/wm/AppWindowToken;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/wm/MiuiGestureAnimator;->mThumbnailLeash:Landroid/view/SurfaceControl;

    .line 107
    iget-object v8, p0, Lcom/android/server/wm/MiuiGestureAnimator;->mThumbnailLeash:Landroid/view/SurfaceControl;

    if-eqz v8, :cond_c6

    .line 108
    iget-object v8, p0, Lcom/android/server/wm/MiuiGestureAnimator;->mGestureTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v9, p0, Lcom/android/server/wm/MiuiGestureAnimator;->mThumbnailLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v8, v9, v10}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 109
    iget-object v8, p0, Lcom/android/server/wm/MiuiGestureAnimator;->mAppWindowAnimatorHelper:Lcom/android/server/wm/AppWindowAnimatorHelper;

    iget-object v9, p0, Lcom/android/server/wm/MiuiGestureAnimator;->mThumbnailLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v8, v9}, Lcom/android/server/wm/AppWindowAnimatorHelper;->setLeash(Landroid/view/SurfaceControl;)V

    .line 111
    :cond_c6
    iput-boolean v0, p0, Lcom/android/server/wm/MiuiGestureAnimator;->mIsThumbnailShown:Z

    .line 112
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureAnimator;->mGestureTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 113
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 69
    .end local v1    # "hwBitmap":Landroid/graphics/Bitmap;
    .end local v2    # "iconGraphicBuffer":Landroid/graphics/GraphicBuffer;
    .end local v3    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v4    # "thumbnailWidth":I
    .end local v5    # "thumbnailHeight":I
    .end local v6    # "appRect":Landroid/graphics/Rect;
    .end local v7    # "drawSurface":Landroid/view/Surface;
    :cond_d0
    :goto_d0
    monitor-exit p0

    return v0

    .line 114
    :catchall_d2
    move-exception v0

    monitor-exit p0
    :try_end_d4
    .catchall {:try_start_6 .. :try_end_d4} :catchall_d2

    throw v0
.end method

.method hideAppWindowToken(Lcom/android/server/wm/AppWindowToken;)V
    .registers 4
    .param p1, "token"    # Lcom/android/server/wm/AppWindowToken;

    .line 161
    if-nez p1, :cond_3

    .line 162
    return-void

    .line 164
    :cond_3
    iget-object v0, p1, Lcom/android/server/wm/AppWindowToken;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 165
    .local v0, "sc":Landroid/view/SurfaceControl;
    if-eqz v0, :cond_c

    .line 166
    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureAnimator;->mGestureTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 168
    :cond_c
    return-void
.end method

.method hideTaskDimmerLayer(Lcom/android/server/wm/AppWindowToken;)V
    .registers 6
    .param p1, "token"    # Lcom/android/server/wm/AppWindowToken;

    .line 147
    if-nez p1, :cond_3

    .line 148
    return-void

    .line 150
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 151
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_28

    .line 152
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getDimmer()Lcom/android/server/wm/Dimmer;

    move-result-object v1

    .line 153
    .local v1, "dimmer":Lcom/android/server/wm/Dimmer;
    if-eqz v1, :cond_28

    iget-object v2, v1, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    if-eqz v2, :cond_28

    iget-object v2, v1, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    iget-boolean v2, v2, Lcom/android/server/wm/Dimmer$DimState;->isVisible:Z

    if-eqz v2, :cond_28

    iget-object v2, v1, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    iget-object v2, v2, Lcom/android/server/wm/Dimmer$DimState;->mDimLayer:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_28

    .line 155
    iget-object v2, p0, Lcom/android/server/wm/MiuiGestureAnimator;->mGestureTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v3, v1, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    iget-object v3, v3, Lcom/android/server/wm/Dimmer$DimState;->mDimLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 158
    .end local v1    # "dimmer":Lcom/android/server/wm/Dimmer;
    :cond_28
    return-void
.end method

.method recreateLeashIfNeeded(Lcom/android/server/wm/AppWindowToken;)V
    .registers 3
    .param p1, "aToken"    # Lcom/android/server/wm/AppWindowToken;

    .line 54
    monitor-enter p0

    .line 55
    if-eqz p1, :cond_f

    :try_start_3
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureAnimator;->mLeashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 56
    monitor-exit p0

    return-void

    .line 60
    :catchall_d
    move-exception v0

    goto :goto_14

    .line 59
    :cond_f
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MiuiGestureAnimator;->createLeash(Lcom/android/server/wm/AppWindowToken;)V

    .line 60
    monitor-exit p0

    .line 61
    return-void

    .line 60
    :goto_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_d

    throw v0
.end method

.method reset()V
    .registers 10

    .line 241
    monitor-enter p0

    .line 242
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureAnimator;->mLeashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 243
    .local v0, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/wm/AppWindowToken;Landroid/view/SurfaceControl;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 244
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wm/AppWindowToken;Landroid/view/SurfaceControl;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    .line 245
    .local v3, "aToken":Lcom/android/server/wm/AppWindowToken;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/SurfaceControl;

    .line 246
    .local v4, "leash":Landroid/view/SurfaceControl;
    if-eqz v3, :cond_b

    if-nez v4, :cond_28

    .line 247
    goto :goto_b

    .line 250
    :cond_28
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v5

    .line 251
    .local v5, "surface":Landroid/view/SurfaceControl;
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v6

    .line 253
    .local v6, "parent":Landroid/view/SurfaceControl;
    if-eqz v6, :cond_3d

    if-eqz v5, :cond_3d

    .line 254
    iget-object v7, p0, Lcom/android/server/wm/MiuiGestureAnimator;->mGestureTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v6}, Landroid/view/SurfaceControl;->getHandle()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/os/IBinder;)Landroid/view/SurfaceControl$Transaction;

    .line 256
    :cond_3d
    iget-object v7, p0, Lcom/android/server/wm/MiuiGestureAnimator;->mGestureTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v7, v4}, Landroid/view/SurfaceControl$Transaction;->destroy(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 257
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wm/AppWindowToken;Landroid/view/SurfaceControl;>;"
    .end local v3    # "aToken":Lcom/android/server/wm/AppWindowToken;
    .end local v4    # "leash":Landroid/view/SurfaceControl;
    .end local v5    # "surface":Landroid/view/SurfaceControl;
    .end local v6    # "parent":Landroid/view/SurfaceControl;
    goto :goto_b

    .line 259
    :cond_43
    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureAnimator;->mThumbnail:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    if-eqz v1, :cond_51

    .line 260
    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureAnimator;->mGestureTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v3, p0, Lcom/android/server/wm/MiuiGestureAnimator;->mThumbnail:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl$Transaction;->destroy(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 261
    iput-object v2, p0, Lcom/android/server/wm/MiuiGestureAnimator;->mThumbnail:Landroid/view/SurfaceControl;

    .line 264
    :cond_51
    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureAnimator;->mThumbnailLeash:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_5e

    .line 265
    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureAnimator;->mGestureTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v3, p0, Lcom/android/server/wm/MiuiGestureAnimator;->mThumbnailLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl$Transaction;->destroy(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 266
    iput-object v2, p0, Lcom/android/server/wm/MiuiGestureAnimator;->mThumbnailLeash:Landroid/view/SurfaceControl;

    .line 269
    :cond_5e
    invoke-virtual {p0}, Lcom/android/server/wm/MiuiGestureAnimator;->applyTransaction()V

    .line 270
    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureAnimator;->mLeashMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 271
    iput-object v2, p0, Lcom/android/server/wm/MiuiGestureAnimator;->mAppWindowAnimatorHelper:Lcom/android/server/wm/AppWindowAnimatorHelper;

    .line 272
    .end local v0    # "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/wm/AppWindowToken;Landroid/view/SurfaceControl;>;>;"
    monitor-exit p0

    .line 273
    return-void

    .line 272
    :catchall_6a
    move-exception v0

    monitor-exit p0
    :try_end_6c
    .catchall {:try_start_1 .. :try_end_6c} :catchall_6a

    throw v0
.end method

.method resetRoundCorner(Lcom/android/server/wm/AppWindowToken;)V
    .registers 5
    .param p1, "aToken"    # Lcom/android/server/wm/AppWindowToken;

    .line 141
    if-eqz p1, :cond_a

    .line 142
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureAnimator;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureAnimator;->mGestureTransaction:Landroid/view/SurfaceControl$Transaction;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/MiuiGestureController;->setRoundCorner(Lcom/android/server/wm/AppWindowToken;Landroid/view/SurfaceControl$Transaction;F)V

    .line 144
    :cond_a
    return-void
.end method

.method setAlphaInTransaction(Lcom/android/server/wm/AppWindowToken;F)V
    .registers 5
    .param p1, "aToken"    # Lcom/android/server/wm/AppWindowToken;
    .param p2, "alpha"    # F

    .line 118
    monitor-enter p0

    .line 119
    if-eqz p1, :cond_f

    :try_start_3
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureAnimator;->mLeashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 120
    monitor-exit p0

    return-void

    .line 127
    :catchall_d
    move-exception v0

    goto :goto_20

    .line 123
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureAnimator;->mLeashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl;

    .line 124
    .local v0, "leash":Landroid/view/SurfaceControl;
    if-eqz v0, :cond_1e

    .line 125
    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureAnimator;->mGestureTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, v0, p2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 127
    .end local v0    # "leash":Landroid/view/SurfaceControl;
    :cond_1e
    monitor-exit p0

    .line 128
    return-void

    .line 127
    :goto_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_d

    throw v0
.end method

.method setDefaultRoundCorner(Lcom/android/server/wm/AppWindowToken;)V
    .registers 3
    .param p1, "aToken"    # Lcom/android/server/wm/AppWindowToken;

    .line 131
    sget v0, Lcom/android/server/wm/AppTransitionInjector;->DISPLAY_ROUND_CORNER_RADIUS:I

    int-to-float v0, v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/MiuiGestureAnimator;->setRoundCorner(Lcom/android/server/wm/AppWindowToken;F)V

    .line 132
    return-void
.end method

.method setMatrixInTransaction(Lcom/android/server/wm/AppWindowToken;FFFF)V
    .registers 13
    .param p1, "aToken"    # Lcom/android/server/wm/AppWindowToken;
    .param p2, "dsdx"    # F
    .param p3, "dtdx"    # F
    .param p4, "dtdy"    # F
    .param p5, "dsdy"    # F

    .line 182
    monitor-enter p0

    .line 183
    if-eqz p1, :cond_f

    :try_start_3
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureAnimator;->mLeashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 184
    monitor-exit p0

    return-void

    .line 191
    :catchall_d
    move-exception v0

    goto :goto_25

    .line 187
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureAnimator;->mLeashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl;

    .line 188
    .local v0, "leash":Landroid/view/SurfaceControl;
    if-eqz v0, :cond_23

    .line 189
    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureAnimator;->mGestureTransaction:Landroid/view/SurfaceControl$Transaction;

    move-object v2, v0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 191
    .end local v0    # "leash":Landroid/view/SurfaceControl;
    :cond_23
    monitor-exit p0

    .line 192
    return-void

    .line 191
    :goto_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_d

    throw v0
.end method

.method setPositionInTransaction(Lcom/android/server/wm/AppWindowToken;FF)V
    .registers 6
    .param p1, "aToken"    # Lcom/android/server/wm/AppWindowToken;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 195
    monitor-enter p0

    .line 196
    if-eqz p1, :cond_f

    :try_start_3
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureAnimator;->mLeashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 197
    monitor-exit p0

    return-void

    .line 204
    :catchall_d
    move-exception v0

    goto :goto_20

    .line 200
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureAnimator;->mLeashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl;

    .line 201
    .local v0, "leash":Landroid/view/SurfaceControl;
    if-eqz v0, :cond_1e

    .line 202
    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureAnimator;->mGestureTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, v0, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 204
    .end local v0    # "leash":Landroid/view/SurfaceControl;
    :cond_1e
    monitor-exit p0

    .line 205
    return-void

    .line 204
    :goto_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_d

    throw v0
.end method

.method setRoundCorner(Lcom/android/server/wm/AppWindowToken;F)V
    .registers 5
    .param p1, "aToken"    # Lcom/android/server/wm/AppWindowToken;
    .param p2, "radius"    # F

    .line 135
    if-eqz p1, :cond_9

    .line 136
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureAnimator;->mGestureController:Lcom/android/server/wm/MiuiGestureController;

    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureAnimator;->mGestureTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/wm/MiuiGestureController;->setRoundCorner(Lcom/android/server/wm/AppWindowToken;Landroid/view/SurfaceControl$Transaction;F)V

    .line 138
    :cond_9
    return-void
.end method

.method setWindowCropInTransaction(Lcom/android/server/wm/AppWindowToken;Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "aToken"    # Lcom/android/server/wm/AppWindowToken;
    .param p2, "clipRect"    # Landroid/graphics/Rect;

    .line 208
    monitor-enter p0

    .line 209
    if-eqz p1, :cond_f

    :try_start_3
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureAnimator;->mLeashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 210
    monitor-exit p0

    return-void

    .line 217
    :catchall_d
    move-exception v0

    goto :goto_20

    .line 213
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureAnimator;->mLeashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl;

    .line 214
    .local v0, "leash":Landroid/view/SurfaceControl;
    if-eqz v0, :cond_1e

    .line 215
    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureAnimator;->mGestureTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, v0, p2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 217
    .end local v0    # "leash":Landroid/view/SurfaceControl;
    :cond_1e
    monitor-exit p0

    .line 218
    return-void

    .line 217
    :goto_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_d

    throw v0
.end method

.method showAppWindowToken(Lcom/android/server/wm/AppWindowToken;)V
    .registers 4
    .param p1, "token"    # Lcom/android/server/wm/AppWindowToken;

    .line 171
    if-nez p1, :cond_3

    .line 172
    return-void

    .line 174
    :cond_3
    iget-object v0, p1, Lcom/android/server/wm/AppWindowToken;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 175
    .local v0, "sc":Landroid/view/SurfaceControl;
    if-eqz v0, :cond_c

    .line 176
    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureAnimator;->mGestureTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 178
    :cond_c
    return-void
.end method

.method stepThumbnailAnimationIfNeeded(Landroid/view/animation/Transformation;)V
    .registers 4
    .param p1, "transformation"    # Landroid/view/animation/Transformation;

    .line 221
    monitor-enter p0

    .line 222
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureAnimator;->mAppWindowAnimatorHelper:Lcom/android/server/wm/AppWindowAnimatorHelper;

    if-eqz v0, :cond_1e

    .line 223
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureAnimator;->mAppWindowAnimatorHelper:Lcom/android/server/wm/AppWindowAnimatorHelper;

    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureAnimator;->mGestureTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/AppWindowAnimatorHelper;->stepGestureThumbnailAnimation(Landroid/view/SurfaceControl$Transaction;Landroid/view/animation/Transformation;)V

    .line 226
    iget-boolean v0, p0, Lcom/android/server/wm/MiuiGestureAnimator;->mIsThumbnailShown:Z

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureAnimator;->mThumbnail:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1e

    .line 227
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureAnimator;->mGestureTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/server/wm/MiuiGestureAnimator;->mThumbnail:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/MiuiGestureAnimator;->mIsThumbnailShown:Z

    .line 231
    :cond_1e
    monitor-exit p0

    .line 232
    return-void

    .line 231
    :catchall_20
    move-exception v0

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_20

    throw v0
.end method
