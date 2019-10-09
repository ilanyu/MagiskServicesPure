.class public Lcom/android/server/accessibility/MotionEventInjector;
.super Lcom/android/server/accessibility/BaseEventStreamTransformation;
.source "MotionEventInjector.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final EVENT_BUTTON_STATE:I = 0x0

.field private static final EVENT_DEVICE_ID:I = 0x0

.field private static final EVENT_EDGE_FLAGS:I = 0x0

.field private static final EVENT_FLAGS:I = 0x0

.field private static final EVENT_META_STATE:I = 0x0

.field private static final EVENT_SOURCE:I = 0x1002

.field private static final EVENT_X_PRECISION:F = 1.0f

.field private static final EVENT_Y_PRECISION:F = 1.0f

.field private static final LOG_TAG:Ljava/lang/String; = "MotionEventInjector"

.field private static final MESSAGE_INJECT_EVENTS:I = 0x2

.field private static final MESSAGE_SEND_MOTION_EVENT:I = 0x1

.field private static sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private static sPointerProps:[Landroid/view/MotionEvent$PointerProperties;


# instance fields
.field private mDownTime:J

.field private final mHandler:Landroid/os/Handler;

.field private mIsDestroyed:Z

.field private mLastScheduledEventTime:J

.field private mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

.field private mNumLastTouchPoints:I

.field private final mOpenGesturesInProgress:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mSequencesInProgress:Landroid/util/IntArray;

.field private mServiceInterfaceForCurrentGesture:Landroid/accessibilityservice/IAccessibilityServiceClient;

.field private mStrokeIdToPointerId:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 4
    .param p1, "handler"    # Landroid/os/Handler;

    .line 90
    invoke-direct {p0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;-><init>()V

    .line 69
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mOpenGesturesInProgress:Landroid/util/SparseArray;

    .line 72
    new-instance v0, Landroid/util/IntArray;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/IntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mSequencesInProgress:Landroid/util/IntArray;

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mIsDestroyed:Z

    .line 78
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mStrokeIdToPointerId:Landroid/util/SparseIntArray;

    .line 91
    iput-object p1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .registers 4
    .param p1, "looper"    # Landroid/os/Looper;

    .line 83
    invoke-direct {p0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;-><init>()V

    .line 69
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mOpenGesturesInProgress:Landroid/util/SparseArray;

    .line 72
    new-instance v0, Landroid/util/IntArray;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/IntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mSequencesInProgress:Landroid/util/IntArray;

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mIsDestroyed:Z

    .line 78
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mStrokeIdToPointerId:Landroid/util/SparseIntArray;

    .line 84
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    .line 85
    return-void
.end method

.method private appendDownEvents(Ljava/util/List;[Landroid/accessibilityservice/GestureDescription$TouchPoint;IJ)V
    .registers 22
    .param p2, "currentTouchPoints"    # [Landroid/accessibilityservice/GestureDescription$TouchPoint;
    .param p3, "currentTouchPointsSize"    # I
    .param p4, "currentTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/MotionEvent;",
            ">;[",
            "Landroid/accessibilityservice/GestureDescription$TouchPoint;",
            "IJ)V"
        }
    .end annotation

    .local p1, "motionEvents":Ljava/util/List;, "Ljava/util/List<Landroid/view/MotionEvent;>;"
    move-object/from16 v8, p0

    .line 419
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accessibility/MotionEventInjector;->getLastTouchPoints()[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    move-result-object v9

    .line 420
    .local v9, "lastTouchPoints":[Landroid/accessibilityservice/GestureDescription$TouchPoint;
    const/4 v10, 0x0

    move v0, v10

    .local v0, "i":I
    :goto_8
    move v11, v0

    .end local v0    # "i":I
    .local v11, "i":I
    move/from16 v12, p3

    if-ge v11, v12, :cond_4e

    .line 421
    aget-object v0, p2, v11

    iget-boolean v0, v0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsStartOfPath:Z

    if-eqz v0, :cond_47

    .line 423
    iget v0, v8, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    add-int/lit8 v1, v0, 0x1

    iput v1, v8, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    aget-object v0, v9, v0

    aget-object v1, p2, v11

    invoke-virtual {v0, v1}, Landroid/accessibilityservice/GestureDescription$TouchPoint;->copyFrom(Landroid/accessibilityservice/GestureDescription$TouchPoint;)V

    .line 424
    iget v0, v8, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_27

    .line 425
    move v0, v10

    goto :goto_28

    :cond_27
    const/4 v0, 0x5

    .line 426
    .local v0, "action":I
    :goto_28
    if-nez v0, :cond_2f

    .line 427
    move-wide/from16 v13, p4

    iput-wide v13, v8, Lcom/android/server/accessibility/MotionEventInjector;->mDownTime:J

    goto :goto_31

    .line 429
    :cond_2f
    move-wide/from16 v13, p4

    :goto_31
    shl-int/lit8 v1, v11, 0x8

    or-int v15, v0, v1

    .line 430
    .end local v0    # "action":I
    .local v15, "action":I
    iget-wide v1, v8, Lcom/android/server/accessibility/MotionEventInjector;->mDownTime:J

    iget v7, v8, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    move-object v0, v8

    move-wide v3, v13

    move v5, v15

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lcom/android/server/accessibility/MotionEventInjector;->obtainMotionEvent(JJI[Landroid/accessibilityservice/GestureDescription$TouchPoint;I)Landroid/view/MotionEvent;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v15    # "action":I
    goto :goto_4b

    .line 420
    :cond_47
    move-object/from16 v1, p1

    move-wide/from16 v13, p4

    :goto_4b
    add-int/lit8 v0, v11, 0x1

    .end local v11    # "i":I
    .local v0, "i":I
    goto :goto_8

    .line 434
    .end local v0    # "i":I
    :cond_4e
    move-object/from16 v1, p1

    move-wide/from16 v13, p4

    return-void
.end method

.method private appendMoveEventIfNeeded(Ljava/util/List;[Landroid/accessibilityservice/GestureDescription$TouchPoint;IJ)V
    .registers 18
    .param p2, "currentTouchPoints"    # [Landroid/accessibilityservice/GestureDescription$TouchPoint;
    .param p3, "currentTouchPointsSize"    # I
    .param p4, "currentTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/MotionEvent;",
            ">;[",
            "Landroid/accessibilityservice/GestureDescription$TouchPoint;",
            "IJ)V"
        }
    .end annotation

    .local p1, "motionEvents":Ljava/util/List;, "Ljava/util/List<Landroid/view/MotionEvent;>;"
    move-object v8, p0

    .line 370
    const/4 v0, 0x0

    .line 371
    .local v0, "moveFound":Z
    invoke-direct {v8}, Lcom/android/server/accessibility/MotionEventInjector;->getLastTouchPoints()[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    move-result-object v9

    .line 372
    .local v9, "lastTouchPoints":[Landroid/accessibilityservice/GestureDescription$TouchPoint;
    const/4 v1, 0x0

    move v10, v0

    move v0, v1

    .local v0, "i":I
    .local v10, "moveFound":Z
    :goto_9
    move v11, p3

    if-ge v0, v11, :cond_40

    .line 373
    iget v2, v8, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    aget-object v3, p2, v0

    iget v3, v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    invoke-static {v9, v2, v3}, Lcom/android/server/accessibility/MotionEventInjector;->findPointByStrokeId([Landroid/accessibilityservice/GestureDescription$TouchPoint;II)I

    move-result v2

    .line 375
    .local v2, "lastPointsIndex":I
    if-ltz v2, :cond_3d

    .line 376
    aget-object v3, v9, v2

    iget v3, v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    aget-object v4, p2, v0

    iget v4, v4, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_33

    aget-object v3, v9, v2

    iget v3, v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    aget-object v4, p2, v0

    iget v4, v4, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_31

    goto :goto_33

    :cond_31
    move v3, v1

    goto :goto_34

    :cond_33
    :goto_33
    const/4 v3, 0x1

    :goto_34
    or-int/2addr v3, v10

    .line 378
    .end local v10    # "moveFound":Z
    .local v3, "moveFound":Z
    aget-object v4, v9, v2

    aget-object v5, p2, v0

    invoke-virtual {v4, v5}, Landroid/accessibilityservice/GestureDescription$TouchPoint;->copyFrom(Landroid/accessibilityservice/GestureDescription$TouchPoint;)V

    .line 372
    .end local v2    # "lastPointsIndex":I
    move v10, v3

    .end local v3    # "moveFound":Z
    .restart local v10    # "moveFound":Z
    :cond_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 382
    .end local v0    # "i":I
    :cond_40
    if-eqz v10, :cond_54

    .line 383
    iget-wide v1, v8, Lcom/android/server/accessibility/MotionEventInjector;->mDownTime:J

    const/4 v5, 0x2

    iget v7, v8, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    move-object v0, v8

    move-wide/from16 v3, p4

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lcom/android/server/accessibility/MotionEventInjector;->obtainMotionEvent(JJI[Landroid/accessibilityservice/GestureDescription$TouchPoint;I)Landroid/view/MotionEvent;

    move-result-object v0

    move-object v1, p1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_55

    .line 386
    :cond_54
    move-object v1, p1

    :goto_55
    return-void
.end method

.method private appendUpEvents(Ljava/util/List;[Landroid/accessibilityservice/GestureDescription$TouchPoint;IJ)V
    .registers 21
    .param p2, "currentTouchPoints"    # [Landroid/accessibilityservice/GestureDescription$TouchPoint;
    .param p3, "currentTouchPointsSize"    # I
    .param p4, "currentTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/MotionEvent;",
            ">;[",
            "Landroid/accessibilityservice/GestureDescription$TouchPoint;",
            "IJ)V"
        }
    .end annotation

    .local p1, "motionEvents":Ljava/util/List;, "Ljava/util/List<Landroid/view/MotionEvent;>;"
    move-object v8, p0

    .line 391
    invoke-direct {v8}, Lcom/android/server/accessibility/MotionEventInjector;->getLastTouchPoints()[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    move-result-object v9

    .line 392
    .local v9, "lastTouchPoints":[Landroid/accessibilityservice/GestureDescription$TouchPoint;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    move v10, v0

    .end local v0    # "i":I
    .local v10, "i":I
    move/from16 v11, p3

    if-ge v10, v11, :cond_64

    .line 393
    aget-object v0, p2, v10

    iget-boolean v0, v0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsEndOfPath:Z

    if-eqz v0, :cond_5f

    .line 394
    iget v0, v8, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    aget-object v1, p2, v10

    iget v1, v1, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    invoke-static {v9, v0, v1}, Lcom/android/server/accessibility/MotionEventInjector;->findPointByStrokeId([Landroid/accessibilityservice/GestureDescription$TouchPoint;II)I

    move-result v12

    .line 396
    .local v12, "indexOfUpEvent":I
    if-gez v12, :cond_1e

    .line 397
    goto :goto_5f

    .line 399
    :cond_1e
    iget v0, v8, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    const/4 v13, 0x1

    if-ne v0, v13, :cond_25

    .line 400
    move v0, v13

    goto :goto_26

    :cond_25
    const/4 v0, 0x6

    .line 401
    .local v0, "action":I
    :goto_26
    shl-int/lit8 v1, v12, 0x8

    or-int v14, v0, v1

    .line 402
    .end local v0    # "action":I
    .local v14, "action":I
    iget-wide v1, v8, Lcom/android/server/accessibility/MotionEventInjector;->mDownTime:J

    iget v7, v8, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    move-object v0, v8

    move-wide/from16 v3, p4

    move v5, v14

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lcom/android/server/accessibility/MotionEventInjector;->obtainMotionEvent(JJI[Landroid/accessibilityservice/GestureDescription$TouchPoint;I)Landroid/view/MotionEvent;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    move v0, v12

    .local v0, "j":I
    :goto_3d
    iget v2, v8, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    sub-int/2addr v2, v13

    if-ge v0, v2, :cond_50

    .line 406
    aget-object v2, v9, v0

    iget-object v3, v8, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    add-int/lit8 v4, v0, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/accessibilityservice/GestureDescription$TouchPoint;->copyFrom(Landroid/accessibilityservice/GestureDescription$TouchPoint;)V

    .line 405
    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    .line 408
    .end local v0    # "j":I
    :cond_50
    iget v0, v8, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    sub-int/2addr v0, v13

    iput v0, v8, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    .line 409
    iget v0, v8, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    if-nez v0, :cond_61

    .line 410
    iget-object v0, v8, Lcom/android/server/accessibility/MotionEventInjector;->mStrokeIdToPointerId:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .end local v12    # "indexOfUpEvent":I
    .end local v14    # "action":I
    goto :goto_61

    .line 392
    :cond_5f
    :goto_5f
    move-object/from16 v1, p1

    :cond_61
    :goto_61
    add-int/lit8 v0, v10, 0x1

    .end local v10    # "i":I
    .local v0, "i":I
    goto :goto_6

    .line 414
    .end local v0    # "i":I
    :cond_64
    move-object/from16 v1, p1

    return-void
.end method

.method private cancelAnyGestureInProgress(I)V
    .registers 14
    .param p1, "source"    # I

    .line 295
    invoke-virtual {p0}, Lcom/android/server/accessibility/MotionEventInjector;->getNext()Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mOpenGesturesInProgress:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 296
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 297
    .local v10, "now":J
    const/4 v7, 0x3

    .line 298
    invoke-direct {p0}, Lcom/android/server/accessibility/MotionEventInjector;->getLastTouchPoints()[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    move-result-object v8

    const/4 v9, 0x1

    move-object v2, p0

    move-wide v3, v10

    move-wide v5, v10

    invoke-direct/range {v2 .. v9}, Lcom/android/server/accessibility/MotionEventInjector;->obtainMotionEvent(JJI[Landroid/accessibilityservice/GestureDescription$TouchPoint;I)Landroid/view/MotionEvent;

    move-result-object v0

    .line 299
    .local v0, "cancelEvent":Landroid/view/MotionEvent;
    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {p0, v0, v0, v2}, Lcom/android/server/accessibility/MotionEventInjector;->sendMotionEventToNext(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 301
    iget-object v2, p0, Lcom/android/server/accessibility/MotionEventInjector;->mOpenGesturesInProgress:Landroid/util/SparseArray;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 303
    .end local v0    # "cancelEvent":Landroid/view/MotionEvent;
    .end local v10    # "now":J
    :cond_38
    return-void
.end method

.method private cancelAnyPendingInjectedEvents()V
    .registers 5

    .line 306
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    const/4 v2, 0x0

    const/16 v3, 0x1002

    if-eqz v0, :cond_30

    .line 307
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 308
    invoke-direct {p0, v3}, Lcom/android/server/accessibility/MotionEventInjector;->cancelAnyGestureInProgress(I)V

    .line 309
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mSequencesInProgress:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_1b
    if-ltz v0, :cond_37

    .line 310
    iget-object v1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mServiceInterfaceForCurrentGesture:Landroid/accessibilityservice/IAccessibilityServiceClient;

    iget-object v3, p0, Lcom/android/server/accessibility/MotionEventInjector;->mSequencesInProgress:Landroid/util/IntArray;

    .line 311
    invoke-virtual {v3, v0}, Landroid/util/IntArray;->get(I)I

    move-result v3

    .line 310
    invoke-direct {p0, v1, v3, v2}, Lcom/android/server/accessibility/MotionEventInjector;->notifyService(Landroid/accessibilityservice/IAccessibilityServiceClient;IZ)V

    .line 312
    iget-object v1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mSequencesInProgress:Landroid/util/IntArray;

    invoke-virtual {v1, v0}, Landroid/util/IntArray;->remove(I)V

    .line 309
    add-int/lit8 v0, v0, -0x1

    goto :goto_1b

    .line 314
    .end local v0    # "i":I
    :cond_30
    iget v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    if-eqz v0, :cond_37

    .line 316
    invoke-direct {p0, v3}, Lcom/android/server/accessibility/MotionEventInjector;->cancelAnyGestureInProgress(I)V

    .line 318
    :cond_37
    iput v2, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    .line 319
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mStrokeIdToPointerId:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 320
    return-void
.end method

.method private static findPointByStrokeId([Landroid/accessibilityservice/GestureDescription$TouchPoint;II)I
    .registers 5
    .param p0, "touchPoints"    # [Landroid/accessibilityservice/GestureDescription$TouchPoint;
    .param p1, "touchPointsSize"    # I
    .param p2, "strokeId"    # I

    .line 472
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_d

    .line 473
    aget-object v1, p0, v0

    iget v1, v1, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    if-ne v1, p2, :cond_a

    .line 474
    return v0

    .line 472
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 477
    .end local v0    # "i":I
    :cond_d
    const/4 v0, -0x1

    return v0
.end method

.method private getLastTouchPoints()[Landroid/accessibilityservice/GestureDescription$TouchPoint;
    .registers 5

    .line 357
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    if-nez v0, :cond_1b

    .line 358
    invoke-static {}, Landroid/accessibilityservice/GestureDescription;->getMaxStrokeCount()I

    move-result v0

    .line 359
    .local v0, "capacity":I
    new-array v1, v0, [Landroid/accessibilityservice/GestureDescription$TouchPoint;

    iput-object v1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 360
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_1b

    .line 361
    iget-object v2, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    new-instance v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;

    invoke-direct {v3}, Landroid/accessibilityservice/GestureDescription$TouchPoint;-><init>()V

    aput-object v3, v2, v1

    .line 360
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 364
    .end local v0    # "capacity":I
    .end local v1    # "i":I
    :cond_1b
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    return-object v0
.end method

.method private getMotionEventsFromGestureSteps(Ljava/util/List;J)Ljava/util/List;
    .registers 16
    .param p2, "startTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/GestureDescription$GestureStep;",
            ">;J)",
            "Ljava/util/List<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation

    .line 333
    .local p1, "steps":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/GestureDescription$GestureStep;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 335
    .local v0, "motionEvents":Ljava/util/List;, "Ljava/util/List<Landroid/view/MotionEvent;>;"
    invoke-direct {p0}, Lcom/android/server/accessibility/MotionEventInjector;->getLastTouchPoints()[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    move-result-object v7

    .line 337
    .local v7, "lastTouchPoints":[Landroid/accessibilityservice/GestureDescription$TouchPoint;
    const/4 v8, 0x0

    move v1, v8

    .local v1, "i":I
    :goto_b
    move v9, v1

    .end local v1    # "i":I
    .local v9, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v9, v1, :cond_49

    .line 338
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/accessibilityservice/GestureDescription$GestureStep;

    .line 339
    .local v10, "step":Landroid/accessibilityservice/GestureDescription$GestureStep;
    iget v11, v10, Landroid/accessibilityservice/GestureDescription$GestureStep;->numTouchPoints:I

    .line 340
    .local v11, "currentTouchPointSize":I
    array-length v1, v7

    if-le v11, v1, :cond_24

    .line 341
    iput v8, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    .line 342
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 343
    return-object v0

    .line 346
    :cond_24
    iget-object v3, v10, Landroid/accessibilityservice/GestureDescription$GestureStep;->touchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    iget-wide v1, v10, Landroid/accessibilityservice/GestureDescription$GestureStep;->timeSinceGestureStart:J

    add-long v5, p2, v1

    move-object v1, p0

    move-object v2, v0

    move v4, v11

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/MotionEventInjector;->appendMoveEventIfNeeded(Ljava/util/List;[Landroid/accessibilityservice/GestureDescription$TouchPoint;IJ)V

    .line 348
    iget-object v3, v10, Landroid/accessibilityservice/GestureDescription$GestureStep;->touchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    iget-wide v1, v10, Landroid/accessibilityservice/GestureDescription$GestureStep;->timeSinceGestureStart:J

    add-long v5, p2, v1

    move-object v1, p0

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/MotionEventInjector;->appendUpEvents(Ljava/util/List;[Landroid/accessibilityservice/GestureDescription$TouchPoint;IJ)V

    .line 350
    iget-object v3, v10, Landroid/accessibilityservice/GestureDescription$GestureStep;->touchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    iget-wide v1, v10, Landroid/accessibilityservice/GestureDescription$GestureStep;->timeSinceGestureStart:J

    add-long v5, p2, v1

    move-object v1, p0

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/MotionEventInjector;->appendDownEvents(Ljava/util/List;[Landroid/accessibilityservice/GestureDescription$TouchPoint;IJ)V

    .line 337
    .end local v10    # "step":Landroid/accessibilityservice/GestureDescription$GestureStep;
    .end local v11    # "currentTouchPointSize":I
    add-int/lit8 v1, v9, 0x1

    .end local v9    # "i":I
    .restart local v1    # "i":I
    goto :goto_b

    .line 353
    .end local v1    # "i":I
    :cond_49
    return-object v0
.end method

.method private getUnusedPointerId()I
    .registers 4

    .line 480
    const/16 v0, 0xa

    .line 481
    .local v0, "MAX_POINTER_ID":I
    const/4 v1, 0x0

    .line 482
    .local v1, "pointerId":I
    :cond_3
    iget-object v2, p0, Lcom/android/server/accessibility/MotionEventInjector;->mStrokeIdToPointerId:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v2

    if-ltz v2, :cond_10

    .line 483
    add-int/lit8 v1, v1, 0x1

    .line 484
    if-lt v1, v0, :cond_3

    .line 485
    return v0

    .line 488
    :cond_10
    return v1
.end method

.method private injectEventsMainThread(Ljava/util/List;Landroid/accessibilityservice/IAccessibilityServiceClient;I)V
    .registers 23
    .param p2, "serviceInterface"    # Landroid/accessibilityservice/IAccessibilityServiceClient;
    .param p3, "sequence"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/GestureDescription$GestureStep;",
            ">;",
            "Landroid/accessibilityservice/IAccessibilityServiceClient;",
            "I)V"
        }
    .end annotation

    .local p1, "gestureSteps":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/GestureDescription$GestureStep;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 160
    move/from16 v3, p3

    iget-boolean v0, v1, Lcom/android/server/accessibility/MotionEventInjector;->mIsDestroyed:Z

    const/4 v4, 0x0

    if-eqz v0, :cond_28

    .line 162
    :try_start_b
    invoke-interface {v2, v3, v4}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onPerformGestureResult(IZ)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_f

    .line 166
    goto :goto_27

    .line 163
    :catch_f
    move-exception v0

    move-object v4, v0

    .line 164
    .local v0, "re":Landroid/os/RemoteException;
    const-string v4, "MotionEventInjector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error sending status with mIsDestroyed to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_27
    return-void

    .line 170
    :cond_28
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/MotionEventInjector;->getNext()Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object v0

    if-nez v0, :cond_32

    .line 171
    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/accessibility/MotionEventInjector;->notifyService(Landroid/accessibilityservice/IAccessibilityServiceClient;IZ)V

    .line 172
    return-void

    .line 175
    :cond_32
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/MotionEventInjector;->newGestureTriesToContinueOldOne(Ljava/util/List;)Z

    move-result v0

    .line 177
    .local v0, "continuingGesture":Z
    if-eqz v0, :cond_49

    .line 178
    iget-object v5, v1, Lcom/android/server/accessibility/MotionEventInjector;->mServiceInterfaceForCurrentGesture:Landroid/accessibilityservice/IAccessibilityServiceClient;

    if-ne v2, v5, :cond_42

    .line 179
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/MotionEventInjector;->prepareToContinueOldGesture(Ljava/util/List;)Z

    move-result v5

    if-nez v5, :cond_49

    .line 180
    :cond_42
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accessibility/MotionEventInjector;->cancelAnyPendingInjectedEvents()V

    .line 181
    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/accessibility/MotionEventInjector;->notifyService(Landroid/accessibilityservice/IAccessibilityServiceClient;IZ)V

    .line 182
    return-void

    .line 185
    :cond_49
    if-nez v0, :cond_53

    .line 186
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accessibility/MotionEventInjector;->cancelAnyPendingInjectedEvents()V

    .line 188
    const/16 v5, 0x1002

    invoke-direct {v1, v5}, Lcom/android/server/accessibility/MotionEventInjector;->cancelAnyGestureInProgress(I)V

    .line 190
    :cond_53
    iput-object v2, v1, Lcom/android/server/accessibility/MotionEventInjector;->mServiceInterfaceForCurrentGesture:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 192
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 193
    .local v5, "currentTime":J
    nop

    .line 194
    iget-object v7, v1, Lcom/android/server/accessibility/MotionEventInjector;->mSequencesInProgress:Landroid/util/IntArray;

    invoke-virtual {v7}, Landroid/util/IntArray;->size()I

    move-result v7

    if-nez v7, :cond_64

    .line 193
    move-wide v7, v5

    goto :goto_66

    .line 194
    :cond_64
    iget-wide v7, v1, Lcom/android/server/accessibility/MotionEventInjector;->mLastScheduledEventTime:J

    .line 193
    :goto_66
    move-object/from16 v9, p1

    invoke-direct {v1, v9, v7, v8}, Lcom/android/server/accessibility/MotionEventInjector;->getMotionEventsFromGestureSteps(Ljava/util/List;J)Ljava/util/List;

    move-result-object v7

    .line 195
    .local v7, "events":Ljava/util/List;, "Ljava/util/List<Landroid/view/MotionEvent;>;"
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_76

    .line 196
    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/accessibility/MotionEventInjector;->notifyService(Landroid/accessibilityservice/IAccessibilityServiceClient;IZ)V

    .line 197
    return-void

    .line 199
    :cond_76
    iget-object v8, v1, Lcom/android/server/accessibility/MotionEventInjector;->mSequencesInProgress:Landroid/util/IntArray;

    invoke-virtual {v8, v3}, Landroid/util/IntArray;->add(I)V

    .line 201
    move v8, v4

    .local v8, "i":I
    :goto_7c
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-ge v8, v10, :cond_b9

    .line 202
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/MotionEvent;

    .line 203
    .local v10, "event":Landroid/view/MotionEvent;
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    if-ne v8, v11, :cond_92

    move v11, v12

    goto :goto_93

    :cond_92
    move v11, v4

    .line 204
    .local v11, "isEndOfSequence":I
    :goto_93
    iget-object v13, v1, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v13, v12, v11, v4, v10}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    .line 206
    .local v12, "message":Landroid/os/Message;
    invoke-virtual {v10}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v13

    iput-wide v13, v1, Lcom/android/server/accessibility/MotionEventInjector;->mLastScheduledEventTime:J

    .line 207
    iget-object v13, v1, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    const-wide/16 v14, 0x0

    invoke-virtual {v10}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v16

    move/from16 v18, v0

    sub-long v0, v16, v5

    .end local v0    # "continuingGesture":Z
    .local v18, "continuingGesture":Z
    invoke-static {v14, v15, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {v13, v12, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 201
    .end local v10    # "event":Landroid/view/MotionEvent;
    .end local v11    # "isEndOfSequence":I
    .end local v12    # "message":Landroid/os/Message;
    add-int/lit8 v8, v8, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    goto :goto_7c

    .line 209
    .end local v8    # "i":I
    .end local v18    # "continuingGesture":Z
    .restart local v0    # "continuingGesture":Z
    :cond_b9
    move/from16 v18, v0

    .end local v0    # "continuingGesture":Z
    .restart local v18    # "continuingGesture":Z
    return-void
.end method

.method private newGestureTriesToContinueOldOne(Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/GestureDescription$GestureStep;",
            ">;)Z"
        }
    .end annotation

    .line 212
    .local p1, "gestureSteps":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/GestureDescription$GestureStep;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 213
    return v1

    .line 215
    :cond_8
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/GestureDescription$GestureStep;

    .line 216
    .local v0, "firstStep":Landroid/accessibilityservice/GestureDescription$GestureStep;
    move v2, v1

    .local v2, "i":I
    :goto_f
    iget v3, v0, Landroid/accessibilityservice/GestureDescription$GestureStep;->numTouchPoints:I

    if-ge v2, v3, :cond_20

    .line 217
    iget-object v3, v0, Landroid/accessibilityservice/GestureDescription$GestureStep;->touchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    aget-object v3, v3, v2

    iget-boolean v3, v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsStartOfPath:Z

    if-nez v3, :cond_1d

    .line 218
    const/4 v1, 0x1

    return v1

    .line 216
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 221
    .end local v2    # "i":I
    :cond_20
    return v1
.end method

.method private notifyService(Landroid/accessibilityservice/IAccessibilityServiceClient;IZ)V
    .registers 8
    .param p1, "service"    # Landroid/accessibilityservice/IAccessibilityServiceClient;
    .param p2, "sequence"    # I
    .param p3, "success"    # Z

    .line 324
    :try_start_0
    invoke-interface {p1, p2, p3}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onPerformGestureResult(IZ)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 328
    goto :goto_1d

    .line 325
    :catch_4
    move-exception v0

    .line 326
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "MotionEventInjector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error sending motion event injection status to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/accessibility/MotionEventInjector;->mServiceInterfaceForCurrentGesture:Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 329
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_1d
    return-void
.end method

.method private obtainMotionEvent(JJI[Landroid/accessibilityservice/GestureDescription$TouchPoint;I)Landroid/view/MotionEvent;
    .registers 26
    .param p1, "downTime"    # J
    .param p3, "eventTime"    # J
    .param p5, "action"    # I
    .param p6, "touchPoints"    # [Landroid/accessibilityservice/GestureDescription$TouchPoint;
    .param p7, "touchPointsSize"    # I

    move-object/from16 v0, p0

    .line 438
    move/from16 v14, p7

    sget-object v1, Lcom/android/server/accessibility/MotionEventInjector;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    sget-object v1, Lcom/android/server/accessibility/MotionEventInjector;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    array-length v1, v1

    if-ge v1, v14, :cond_21

    .line 439
    :cond_e
    new-array v1, v14, [Landroid/view/MotionEvent$PointerCoords;

    sput-object v1, Lcom/android/server/accessibility/MotionEventInjector;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 440
    move v1, v2

    .local v1, "i":I
    :goto_13
    if-ge v1, v14, :cond_21

    .line 441
    sget-object v3, Lcom/android/server/accessibility/MotionEventInjector;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v4, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v4}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v4, v3, v1

    .line 440
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 444
    .end local v1    # "i":I
    :cond_21
    sget-object v1, Lcom/android/server/accessibility/MotionEventInjector;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    if-eqz v1, :cond_2a

    sget-object v1, Lcom/android/server/accessibility/MotionEventInjector;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    array-length v1, v1

    if-ge v1, v14, :cond_3d

    .line 445
    :cond_2a
    new-array v1, v14, [Landroid/view/MotionEvent$PointerProperties;

    sput-object v1, Lcom/android/server/accessibility/MotionEventInjector;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    .line 446
    move v1, v2

    .restart local v1    # "i":I
    :goto_2f
    if-ge v1, v14, :cond_3d

    .line 447
    sget-object v3, Lcom/android/server/accessibility/MotionEventInjector;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    new-instance v4, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v4}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v4, v3, v1

    .line 446
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 450
    .end local v1    # "i":I
    :cond_3d
    move v1, v2

    .restart local v1    # "i":I
    :goto_3e
    if-ge v1, v14, :cond_92

    .line 451
    iget-object v3, v0, Lcom/android/server/accessibility/MotionEventInjector;->mStrokeIdToPointerId:Landroid/util/SparseIntArray;

    aget-object v4, p6, v1

    iget v4, v4, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 452
    .local v3, "pointerId":I
    if-ne v3, v5, :cond_5a

    .line 453
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accessibility/MotionEventInjector;->getUnusedPointerId()I

    move-result v3

    .line 454
    iget-object v4, v0, Lcom/android/server/accessibility/MotionEventInjector;->mStrokeIdToPointerId:Landroid/util/SparseIntArray;

    aget-object v5, p6, v1

    iget v5, v5, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 456
    :cond_5a
    sget-object v4, Lcom/android/server/accessibility/MotionEventInjector;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v4, v4, v1

    iput v3, v4, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 457
    sget-object v4, Lcom/android/server/accessibility/MotionEventInjector;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v4, v4, v1

    iput v2, v4, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 458
    sget-object v4, Lcom/android/server/accessibility/MotionEventInjector;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/view/MotionEvent$PointerCoords;->clear()V

    .line 459
    sget-object v4, Lcom/android/server/accessibility/MotionEventInjector;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v1

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 460
    sget-object v4, Lcom/android/server/accessibility/MotionEventInjector;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v1

    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 461
    sget-object v4, Lcom/android/server/accessibility/MotionEventInjector;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v1

    aget-object v5, p6, v1

    iget v5, v5, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 462
    sget-object v4, Lcom/android/server/accessibility/MotionEventInjector;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v1

    aget-object v5, p6, v1

    iget v5, v5, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 450
    .end local v3    # "pointerId":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    .line 464
    .end local v1    # "i":I
    :cond_92
    sget-object v7, Lcom/android/server/accessibility/MotionEventInjector;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    sget-object v8, Lcom/android/server/accessibility/MotionEventInjector;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1002

    const/16 v17, 0x0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move v6, v14

    move v14, v15

    move/from16 v15, v16

    move/from16 v16, v17

    invoke-static/range {v1 .. v16}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v1

    return-object v1
.end method

.method private prepareToContinueOldGesture(Ljava/util/List;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/GestureDescription$GestureStep;",
            ">;)Z"
        }
    .end annotation

    .line 233
    .local p1, "gestureSteps":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/GestureDescription$GestureStep;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_ea

    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    if-eqz v0, :cond_ea

    iget v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    if-nez v0, :cond_11

    goto/16 :goto_ea

    .line 236
    :cond_11
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/GestureDescription$GestureStep;

    .line 238
    .local v0, "firstStep":Landroid/accessibilityservice/GestureDescription$GestureStep;
    const/4 v2, 0x0

    .line 239
    .local v2, "numContinuedStrokes":I
    move v3, v2

    move v2, v1

    .local v2, "i":I
    .local v3, "numContinuedStrokes":I
    :goto_1a
    iget v4, v0, Landroid/accessibilityservice/GestureDescription$GestureStep;->numTouchPoints:I

    if-ge v2, v4, :cond_d3

    .line 240
    iget-object v4, v0, Landroid/accessibilityservice/GestureDescription$GestureStep;->touchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    aget-object v4, v4, v2

    .line 241
    .local v4, "touchPoint":Landroid/accessibilityservice/GestureDescription$TouchPoint;
    iget-boolean v5, v4, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsStartOfPath:Z

    if-nez v5, :cond_cd

    .line 242
    iget-object v5, p0, Lcom/android/server/accessibility/MotionEventInjector;->mStrokeIdToPointerId:Landroid/util/SparseIntArray;

    iget v6, v4, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mContinuedStrokeId:I

    .line 243
    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    .line 244
    .local v5, "continuedPointerId":I
    if-ne v5, v7, :cond_48

    .line 245
    const-string v6, "MotionEventInjector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t continue gesture due to unknown continued stroke id in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return v1

    .line 249
    :cond_48
    iget-object v6, p0, Lcom/android/server/accessibility/MotionEventInjector;->mStrokeIdToPointerId:Landroid/util/SparseIntArray;

    iget v7, v4, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    invoke-virtual {v6, v7, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 250
    iget-object v6, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    iget v7, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    iget v8, v4, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mContinuedStrokeId:I

    invoke-static {v6, v7, v8}, Lcom/android/server/accessibility/MotionEventInjector;->findPointByStrokeId([Landroid/accessibilityservice/GestureDescription$TouchPoint;II)I

    move-result v6

    .line 252
    .local v6, "lastPointIndex":I
    if-gez v6, :cond_80

    .line 253
    const-string v7, "MotionEventInjector"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t continue gesture due continued gesture id of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " not matching any previous strokes in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 255
    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 253
    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    return v1

    .line 258
    :cond_80
    iget-object v7, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    aget-object v7, v7, v6

    iget-boolean v7, v7, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsEndOfPath:Z

    if-nez v7, :cond_aa

    iget-object v7, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    aget-object v7, v7, v6

    iget v7, v7, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    iget v8, v4, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    cmpl-float v7, v7, v8

    if-nez v7, :cond_aa

    iget-object v7, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    aget-object v7, v7, v6

    iget v7, v7, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    iget v8, v4, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_a1

    goto :goto_aa

    .line 267
    :cond_a1
    iget-object v7, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    aget-object v7, v7, v6

    iget v8, v4, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    iput v8, v7, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    .end local v5    # "continuedPointerId":I
    .end local v6    # "lastPointIndex":I
    goto :goto_cd

    .line 261
    .restart local v5    # "continuedPointerId":I
    .restart local v6    # "lastPointIndex":I
    :cond_aa
    :goto_aa
    const-string v7, "MotionEventInjector"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t continue gesture due to points mismatch between "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    aget-object v9, v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " and "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    return v1

    .line 269
    .end local v5    # "continuedPointerId":I
    .end local v6    # "lastPointIndex":I
    :cond_cd
    :goto_cd
    add-int/lit8 v3, v3, 0x1

    .line 239
    .end local v4    # "touchPoint":Landroid/accessibilityservice/GestureDescription$TouchPoint;
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1a

    .line 272
    .end local v2    # "i":I
    :cond_d3
    move v2, v1

    .restart local v2    # "i":I
    :goto_d4
    iget v4, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    if-ge v2, v4, :cond_e5

    .line 273
    iget-object v4, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    aget-object v4, v4, v2

    iget-boolean v4, v4, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsEndOfPath:Z

    if-nez v4, :cond_e2

    .line 274
    add-int/lit8 v3, v3, -0x1

    .line 272
    :cond_e2
    add-int/lit8 v2, v2, 0x1

    goto :goto_d4

    .line 277
    .end local v2    # "i":I
    :cond_e5
    if-nez v3, :cond_e9

    const/4 v1, 0x1

    nop

    :cond_e9
    return v1

    .line 234
    .end local v0    # "firstStep":Landroid/accessibilityservice/GestureDescription$GestureStep;
    .end local v3    # "numContinuedStrokes":I
    :cond_ea
    :goto_ea
    return v1
.end method

.method private sendMotionEventToNext(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 282
    invoke-virtual {p0}, Lcom/android/server/accessibility/MotionEventInjector;->getNext()Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 283
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 284
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1d

    .line 285
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mOpenGesturesInProgress:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 287
    :cond_1d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v1, :cond_2a

    .line 288
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_38

    .line 289
    :cond_2a
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mOpenGesturesInProgress:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 292
    :cond_38
    return-void
.end method


# virtual methods
.method public clearEvents(I)V
    .registers 4
    .param p1, "inputSource"    # I

    .line 124
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_13

    .line 125
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mOpenGesturesInProgress:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 127
    :cond_13
    return-void
.end method

.method public bridge synthetic getNext()Lcom/android/server/accessibility/EventStreamTransformation;
    .registers 2

    .line 48
    invoke-super {p0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->getNext()Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 8
    .param p1, "message"    # Landroid/os/Message;

    .line 137
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1b

    .line 138
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 139
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/accessibilityservice/IAccessibilityServiceClient;

    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/accessibility/MotionEventInjector;->injectEventsMainThread(Ljava/util/List;Landroid/accessibilityservice/IAccessibilityServiceClient;I)V

    .line 141
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 142
    return v1

    .line 144
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :cond_1b
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_39

    .line 145
    const-string v0, "MotionEventInjector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown message: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return v2

    .line 148
    :cond_39
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/MotionEvent;

    .line 149
    .local v0, "motionEvent":Landroid/view/MotionEvent;
    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {p0, v0, v0, v3}, Lcom/android/server/accessibility/MotionEventInjector;->sendMotionEventToNext(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 150
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_48

    move v3, v1

    goto :goto_49

    :cond_48
    move v3, v2

    .line 151
    .local v3, "isEndOfSequence":Z
    :goto_49
    if-eqz v3, :cond_5b

    .line 152
    iget-object v4, p0, Lcom/android/server/accessibility/MotionEventInjector;->mServiceInterfaceForCurrentGesture:Landroid/accessibilityservice/IAccessibilityServiceClient;

    iget-object v5, p0, Lcom/android/server/accessibility/MotionEventInjector;->mSequencesInProgress:Landroid/util/IntArray;

    invoke-virtual {v5, v2}, Landroid/util/IntArray;->get(I)I

    move-result v5

    invoke-direct {p0, v4, v5, v1}, Lcom/android/server/accessibility/MotionEventInjector;->notifyService(Landroid/accessibilityservice/IAccessibilityServiceClient;IZ)V

    .line 153
    iget-object v4, p0, Lcom/android/server/accessibility/MotionEventInjector;->mSequencesInProgress:Landroid/util/IntArray;

    invoke-virtual {v4, v2}, Landroid/util/IntArray;->remove(I)V

    .line 155
    :cond_5b
    return v1
.end method

.method public injectEvents(Ljava/util/List;Landroid/accessibilityservice/IAccessibilityServiceClient;I)V
    .registers 8
    .param p2, "serviceInterface"    # Landroid/accessibilityservice/IAccessibilityServiceClient;
    .param p3, "sequence"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/GestureDescription$GestureStep;",
            ">;",
            "Landroid/accessibilityservice/IAccessibilityServiceClient;",
            "I)V"
        }
    .end annotation

    .line 105
    .local p1, "gestureSteps":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/GestureDescription$GestureStep;>;"
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 106
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 107
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 108
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 109
    iget-object v1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 110
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 131
    invoke-direct {p0}, Lcom/android/server/accessibility/MotionEventInjector;->cancelAnyPendingInjectedEvents()V

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mIsDestroyed:Z

    .line 133
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 114
    invoke-direct {p0}, Lcom/android/server/accessibility/MotionEventInjector;->cancelAnyPendingInjectedEvents()V

    .line 115
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/MotionEventInjector;->sendMotionEventToNext(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 116
    return-void
.end method

.method public bridge synthetic setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .registers 2

    .line 48
    invoke-super {p0, p1}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    return-void
.end method
