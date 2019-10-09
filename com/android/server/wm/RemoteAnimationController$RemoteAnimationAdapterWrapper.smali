.class Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;
.super Ljava/lang/Object;
.source "RemoteAnimationController.java"

# interfaces
.implements Lcom/android/server/wm/AnimationAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/RemoteAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteAnimationAdapterWrapper"
.end annotation


# instance fields
.field private final mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

.field private mCapturedFinishCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

.field private mCapturedLeash:Landroid/view/SurfaceControl;

.field private final mPosition:Landroid/graphics/Point;

.field private final mStackBounds:Landroid/graphics/Rect;

.field private mTarget:Landroid/view/RemoteAnimationTarget;

.field final synthetic this$0:Lcom/android/server/wm/RemoteAnimationController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/RemoteAnimationController;Lcom/android/server/wm/AppWindowToken;Landroid/graphics/Point;Landroid/graphics/Rect;)V
    .registers 7
    .param p2, "appWindowToken"    # Lcom/android/server/wm/AppWindowToken;
    .param p3, "position"    # Landroid/graphics/Point;
    .param p4, "stackBounds"    # Landroid/graphics/Rect;

    .line 295
    iput-object p1, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->this$0:Lcom/android/server/wm/RemoteAnimationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mPosition:Landroid/graphics/Point;

    .line 291
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mStackBounds:Landroid/graphics/Rect;

    .line 296
    iput-object p2, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    .line 297
    iget-object p1, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mPosition:Landroid/graphics/Point;

    iget v0, p3, Landroid/graphics/Point;->x:I

    iget v1, p3, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 298
    iget-object p1, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mStackBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 299
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 285
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mCapturedFinishCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    return-object v0
.end method

.method private getMode()I
    .registers 3

    .line 319
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->this$0:Lcom/android/server/wm/RemoteAnimationController;

    # getter for: Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v0}, Lcom/android/server/wm/RemoteAnimationController;->access$200(Lcom/android/server/wm/RemoteAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 320
    const/4 v0, 0x0

    return v0

    .line 322
    :cond_12
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method createRemoteAppAnimation()Landroid/view/RemoteAnimationTarget;
    .registers 18

    .line 302
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 303
    .local v1, "task":Lcom/android/server/wm/Task;
    iget-object v2, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 304
    .local v2, "mainWindow":Lcom/android/server/wm/WindowState;
    if-eqz v1, :cond_5b

    if-eqz v2, :cond_5b

    iget-object v3, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mCapturedFinishCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    if-eqz v3, :cond_5b

    iget-object v3, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mCapturedLeash:Landroid/view/SurfaceControl;

    if-nez v3, :cond_1b

    goto :goto_5b

    .line 308
    :cond_1b
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 309
    .local v3, "insets":Landroid/graphics/Rect;
    iget-object v4, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->getLetterboxInsets()Landroid/graphics/Rect;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/wm/utils/InsetUtils;->addInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 310
    new-instance v4, Landroid/view/RemoteAnimationTarget;

    iget v6, v1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->getMode()I

    move-result v7

    iget-object v8, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mCapturedLeash:Landroid/view/SurfaceControl;

    iget-object v5, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    .line 311
    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->fillsParent()Z

    move-result v5

    xor-int/lit8 v9, v5, 0x1

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v10, v5, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    iget-object v5, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    .line 313
    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->getPrefixOrderIndex()I

    move-result v12

    iget-object v13, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mPosition:Landroid/graphics/Point;

    iget-object v14, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mStackBounds:Landroid/graphics/Rect;

    .line 314
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v15

    const/16 v16, 0x0

    move-object v5, v4

    move-object v11, v3

    invoke-direct/range {v5 .. v16}, Landroid/view/RemoteAnimationTarget;-><init>(IILandroid/view/SurfaceControl;ZLandroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/app/WindowConfiguration;Z)V

    iput-object v4, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mTarget:Landroid/view/RemoteAnimationTarget;

    .line 315
    iget-object v4, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mTarget:Landroid/view/RemoteAnimationTarget;

    return-object v4

    .line 306
    .end local v3    # "insets":Landroid/graphics/Rect;
    :cond_5b
    :goto_5b
    const/4 v3, 0x0

    return-object v3
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 380
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "token="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 381
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mTarget:Landroid/view/RemoteAnimationTarget;

    if-eqz v0, :cond_31

    .line 382
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Target:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mTarget:Landroid/view/RemoteAnimationTarget;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/view/RemoteAnimationTarget;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_39

    .line 385
    :cond_31
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Target: null"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 387
    :goto_39
    return-void
.end method

.method public getBackgroundColor()I
    .registers 2

    .line 338
    const/4 v0, 0x0

    return v0
.end method

.method public getDetachWallpaper()Z
    .registers 2

    .line 328
    const/4 v0, 0x0

    return v0
.end method

.method public getDurationHint()J
    .registers 3

    .line 369
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->this$0:Lcom/android/server/wm/RemoteAnimationController;

    # getter for: Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;
    invoke-static {v0}, Lcom/android/server/wm/RemoteAnimationController;->access$1000(Lcom/android/server/wm/RemoteAnimationController;)Landroid/view/RemoteAnimationAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/RemoteAnimationAdapter;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getShowWallpaper()Z
    .registers 2

    .line 333
    const/4 v0, 0x0

    return v0
.end method

.method public getStatusBarTransitionsStartTime()J
    .registers 5

    .line 374
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->this$0:Lcom/android/server/wm/RemoteAnimationController;

    .line 375
    # getter for: Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;
    invoke-static {v2}, Lcom/android/server/wm/RemoteAnimationController;->access$1000(Lcom/android/server/wm/RemoteAnimationController;)Landroid/view/RemoteAnimationAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/RemoteAnimationAdapter;->getStatusBarTransitionDelay()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 374
    return-wide v0
.end method

.method public onAnimationCancelled(Landroid/view/SurfaceControl;)V
    .registers 4
    .param p1, "animationLeash"    # Landroid/view/SurfaceControl;

    .line 358
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->this$0:Lcom/android/server/wm/RemoteAnimationController;

    # getter for: Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/wm/RemoteAnimationController;->access$400(Lcom/android/server/wm/RemoteAnimationController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 359
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->this$0:Lcom/android/server/wm/RemoteAnimationController;

    # getter for: Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/wm/RemoteAnimationController;->access$400(Lcom/android/server/wm/RemoteAnimationController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 360
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->this$0:Lcom/android/server/wm/RemoteAnimationController;

    # getter for: Lcom/android/server/wm/RemoteAnimationController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/wm/RemoteAnimationController;->access$600(Lcom/android/server/wm/RemoteAnimationController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->this$0:Lcom/android/server/wm/RemoteAnimationController;

    # getter for: Lcom/android/server/wm/RemoteAnimationController;->mTimeoutRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/wm/RemoteAnimationController;->access$500(Lcom/android/server/wm/RemoteAnimationController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 361
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->this$0:Lcom/android/server/wm/RemoteAnimationController;

    # invokes: Lcom/android/server/wm/RemoteAnimationController;->releaseFinishedCallback()V
    invoke-static {v0}, Lcom/android/server/wm/RemoteAnimationController;->access$700(Lcom/android/server/wm/RemoteAnimationController;)V

    .line 362
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->this$0:Lcom/android/server/wm/RemoteAnimationController;

    # invokes: Lcom/android/server/wm/RemoteAnimationController;->invokeAnimationCancelled()V
    invoke-static {v0}, Lcom/android/server/wm/RemoteAnimationController;->access$800(Lcom/android/server/wm/RemoteAnimationController;)V

    .line 363
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->this$0:Lcom/android/server/wm/RemoteAnimationController;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/wm/RemoteAnimationController;->sendRunningRemoteAnimation(Z)V
    invoke-static {v0, v1}, Lcom/android/server/wm/RemoteAnimationController;->access$900(Lcom/android/server/wm/RemoteAnimationController;Z)V

    .line 365
    :cond_34
    return-void
.end method

.method public startAnimation(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V
    .registers 6
    .param p1, "animationLeash"    # Landroid/view/SurfaceControl;
    .param p2, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p3, "finishCallback"    # Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 347
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getPrefixOrderIndex()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 348
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mPosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {p2, p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 349
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->this$0:Lcom/android/server/wm/RemoteAnimationController;

    # getter for: Lcom/android/server/wm/RemoteAnimationController;->mTmpRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/android/server/wm/RemoteAnimationController;->access$300(Lcom/android/server/wm/RemoteAnimationController;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 350
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->this$0:Lcom/android/server/wm/RemoteAnimationController;

    # getter for: Lcom/android/server/wm/RemoteAnimationController;->mTmpRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/android/server/wm/RemoteAnimationController;->access$300(Lcom/android/server/wm/RemoteAnimationController;)Landroid/graphics/Rect;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 351
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->this$0:Lcom/android/server/wm/RemoteAnimationController;

    # getter for: Lcom/android/server/wm/RemoteAnimationController;->mTmpRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/android/server/wm/RemoteAnimationController;->access$300(Lcom/android/server/wm/RemoteAnimationController;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 352
    iput-object p1, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mCapturedLeash:Landroid/view/SurfaceControl;

    .line 353
    iput-object p3, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mCapturedFinishCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 354
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;)V
    .registers 7
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 391
    const-wide v0, 0x10b00000002L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 392
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mTarget:Landroid/view/RemoteAnimationTarget;

    if-eqz v2, :cond_17

    .line 393
    iget-object v2, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mTarget:Landroid/view/RemoteAnimationTarget;

    const-wide v3, 0x10b00000001L

    invoke-virtual {v2, p1, v3, v4}, Landroid/view/RemoteAnimationTarget;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 395
    :cond_17
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 396
    return-void
.end method
