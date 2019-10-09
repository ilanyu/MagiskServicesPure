.class Lcom/android/server/accessibility/AccessibilityGestureDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "AccessibilityGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;
    }
.end annotation


# static fields
.field private static final ANGLE_THRESHOLD:F = 0.0f

.field private static final CANCEL_ON_PAUSE_THRESHOLD_NOT_STARTED_MS:J = 0x96L

.field private static final CANCEL_ON_PAUSE_THRESHOLD_STARTED_MS:J = 0x12cL

.field private static final DEBUG:Z = false

.field private static final DIRECTIONS_TO_GESTURE_ID:[[I

.field private static final DOWN:I = 0x3

.field private static final GESTURE_CONFIRM_MM:I = 0xa

.field private static final LEFT:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "AccessibilityGestureDetector"

.field private static final MIN_INCHES_BETWEEN_SAMPLES:F = 0.1f

.field private static final MIN_PREDICTION_SCORE:F = 2.0f

.field private static final RIGHT:I = 0x1

.field private static final TOUCH_TOLERANCE:I = 0x3

.field private static final UP:I = 0x2


# instance fields
.field private mBaseTime:J

.field private mBaseX:F

.field private mBaseY:F

.field private final mContext:Landroid/content/Context;

.field private mDoubleTapDetected:Z

.field private mFirstTapDetected:Z

.field private final mGestureDetectionThreshold:F

.field protected mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureStarted:Z

.field private final mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

.field private final mMinPixelsBetweenSamplesX:F

.field private final mMinPixelsBetweenSamplesY:F

.field private mPolicyFlags:I

.field private mPreviousGestureX:F

.field private mPreviousGestureY:F

.field private mRecognizingGesture:Z

.field private mSecondFingerDoubleTap:Z

.field private mSecondPointerDownTime:J

.field private final mStrokeBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/gesture/GesturePoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 64
    const/4 v0, 0x4

    new-array v1, v0, [[I

    new-array v2, v0, [I

    fill-array-data v2, :array_26

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v2, v0, [I

    fill-array-data v2, :array_32

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-array v2, v0, [I

    fill-array-data v2, :array_3e

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-array v0, v0, [I

    fill-array-data v0, :array_4a

    const/4 v2, 0x3

    aput-object v0, v1, v2

    sput-object v1, Lcom/android/server/accessibility/AccessibilityGestureDetector;->DIRECTIONS_TO_GESTURE_ID:[[I

    return-void

    :array_26
    .array-data 4
        0x3
        0x5
        0x9
        0xa
    .end array-data

    :array_32
    .array-data 4
        0x6
        0x4
        0xb
        0xc
    .end array-data

    :array_3e
    .array-data 4
        0xd
        0xe
        0x1
        0x7
    .end array-data

    :array_4a
    .array-data 4
        0xf
        0x10
        0x8
        0x2
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

    .line 219
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    .line 220
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

    .line 221
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mContext:Landroid/content/Context;

    .line 223
    nop

    .line 224
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 223
    const/4 v1, 0x5

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureDetectionThreshold:F

    .line 227
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    .line 228
    .local v0, "pixelsPerInchX":F
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->ydpi:F

    .line 229
    .local v1, "pixelsPerInchY":F
    const v2, 0x3dcccccd    # 0.1f

    mul-float v3, v2, v0

    iput v3, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mMinPixelsBetweenSamplesX:F

    .line 230
    mul-float/2addr v2, v1

    iput v2, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mMinPixelsBetweenSamplesY:F

    .line 231
    return-void
.end method

.method private cancelGesture()V
    .registers 2

    .line 448
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mRecognizingGesture:Z

    .line 449
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureStarted:Z

    .line 450
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 451
    return-void
.end method

.method private finishDoubleTap(Landroid/view/MotionEvent;I)Z
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .line 442
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->clear()V

    .line 444
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

    invoke-interface {v0, p1, p2}, Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;->onDoubleTap(Landroid/view/MotionEvent;I)Z

    move-result v0

    return v0
.end method

.method private mapSecondPointerToFirstPointer(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .registers 19
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 603
    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5e

    .line 604
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v3, 0x6

    const/4 v4, 0x5

    if-eq v1, v4, :cond_1e

    .line 605
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eq v1, v3, :cond_1e

    .line 606
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eq v1, v2, :cond_1e

    goto :goto_5e

    .line 610
    :cond_1e
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 612
    .local v1, "action":I
    if-ne v1, v4, :cond_26

    .line 613
    const/4 v1, 0x0

    goto :goto_29

    .line 614
    :cond_26
    if-ne v1, v3, :cond_29

    .line 615
    const/4 v1, 0x1

    .line 619
    :cond_29
    :goto_29
    move-object/from16 v15, p0

    iget-wide v2, v15, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mSecondPointerDownTime:J

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    .line 620
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v9

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getSize(I)F

    move-result v10

    .line 621
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v13

    .line 622
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v16

    .line 619
    move v6, v1

    move/from16 v15, v16

    invoke-static/range {v2 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v2

    return-object v2

    .line 607
    .end local v1    # "action":I
    :cond_5e
    :goto_5e
    const/4 v1, 0x0

    return-object v1
.end method

.method private maybeSendLongPress(Landroid/view/MotionEvent;I)V
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .line 432
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mDoubleTapDetected:Z

    if-nez v0, :cond_5

    .line 433
    return-void

    .line 436
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->clear()V

    .line 438
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

    invoke-interface {v0, p1, p2}, Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;->onDoubleTapAndHold(Landroid/view/MotionEvent;I)V

    .line 439
    return-void
.end method

.method private recognizeGesture(Landroid/view/MotionEvent;I)Z
    .registers 23
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 463
    move/from16 v2, p2

    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_16

    .line 464
    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

    invoke-interface {v3, v1, v2}, Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;->onGestureCancelled(Landroid/view/MotionEvent;I)Z

    move-result v3

    return v3

    .line 473
    :cond_16
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 474
    .local v3, "path":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/PointF;>;"
    new-instance v4, Landroid/graphics/PointF;

    iget-object v5, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/gesture/GesturePoint;

    iget v5, v5, Landroid/gesture/GesturePoint;->x:F

    iget-object v7, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/gesture/GesturePoint;

    iget v6, v6, Landroid/gesture/GesturePoint;->y:F

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 475
    .local v4, "lastDelimiter":Landroid/graphics/PointF;
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    const/4 v5, 0x0

    .line 478
    .local v5, "dX":F
    const/4 v6, 0x0

    .line 479
    .local v6, "dY":F
    const/4 v7, 0x0

    .line 480
    .local v7, "count":I
    const/4 v8, 0x0

    .line 482
    .local v8, "length":F
    new-instance v9, Landroid/graphics/PointF;

    invoke-direct {v9}, Landroid/graphics/PointF;-><init>()V

    .line 483
    .local v9, "next":Landroid/graphics/PointF;
    move v11, v8

    move v8, v6

    move v6, v5

    move-object v5, v4

    const/4 v4, 0x1

    .line 483
    .local v4, "i":I
    .local v5, "lastDelimiter":Landroid/graphics/PointF;
    .local v6, "dX":F
    .local v8, "dY":F
    .local v11, "length":F
    :goto_46
    iget-object v12, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v4, v12, :cond_e3

    .line 484
    new-instance v12, Landroid/graphics/PointF;

    iget-object v13, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/gesture/GesturePoint;

    iget v13, v13, Landroid/gesture/GesturePoint;->x:F

    iget-object v14, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/gesture/GesturePoint;

    iget v14, v14, Landroid/gesture/GesturePoint;->y:F

    invoke-direct {v12, v13, v14}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v9, v12

    .line 485
    if-lez v7, :cond_b3

    .line 487
    int-to-float v12, v7

    div-float v12, v6, v12

    .line 488
    .local v12, "currentDX":F
    int-to-float v13, v7

    div-float v13, v8, v13

    .line 497
    .local v13, "currentDY":F
    new-instance v14, Landroid/graphics/PointF;

    mul-float v15, v11, v12

    iget v10, v5, Landroid/graphics/PointF;->x:F

    add-float/2addr v15, v10

    mul-float v10, v11, v13

    move/from16 v16, v6

    iget v6, v5, Landroid/graphics/PointF;->y:F

    .line 497
    .end local v6    # "dX":F
    .local v16, "dX":F
    add-float/2addr v10, v6

    invoke-direct {v14, v15, v10}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v6, v14

    .line 501
    .local v6, "newDelimiter":Landroid/graphics/PointF;
    iget v10, v9, Landroid/graphics/PointF;->x:F

    iget v14, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v10, v14

    .line 502
    .local v10, "nextDX":F
    iget v14, v9, Landroid/graphics/PointF;->y:F

    iget v15, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v14, v15

    .line 503
    .local v14, "nextDY":F
    mul-float v15, v10, v10

    mul-float v17, v14, v14

    add-float v15, v15, v17

    move/from16 v18, v7

    move/from16 v19, v8

    float-to-double v7, v15

    .line 503
    .end local v7    # "count":I
    .end local v8    # "dY":F
    .local v18, "count":I
    .local v19, "dY":F
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v7, v7

    .line 504
    .local v7, "nextLength":F
    div-float/2addr v10, v7

    .line 505
    div-float/2addr v14, v7

    .line 509
    mul-float v8, v12, v10

    mul-float v15, v13, v14

    add-float/2addr v8, v15

    .line 510
    .local v8, "dot":F
    const/4 v15, 0x0

    cmpg-float v15, v8, v15

    if-gez v15, :cond_b9

    .line 511
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    move-object v5, v6

    .line 513
    const/4 v15, 0x0

    .line 514
    .end local v16    # "dX":F
    .local v15, "dX":F
    const/16 v16, 0x0

    .line 515
    .end local v19    # "dY":F
    .local v16, "dY":F
    const/4 v7, 0x0

    .line 520
    .end local v6    # "newDelimiter":Landroid/graphics/PointF;
    .end local v8    # "dot":F
    .end local v10    # "nextDX":F
    .end local v12    # "currentDX":F
    .end local v13    # "currentDY":F
    .end local v14    # "nextDY":F
    .end local v18    # "count":I
    .local v7, "count":I
    move/from16 v18, v7

    goto :goto_bd

    .line 520
    .end local v15    # "dX":F
    .end local v16    # "dY":F
    .local v6, "dX":F
    .local v8, "dY":F
    :cond_b3
    move/from16 v16, v6

    move/from16 v18, v7

    move/from16 v19, v8

    .line 520
    .end local v6    # "dX":F
    .end local v7    # "count":I
    .end local v8    # "dY":F
    .local v16, "dX":F
    .restart local v18    # "count":I
    .restart local v19    # "dY":F
    :cond_b9
    move/from16 v15, v16

    move/from16 v16, v19

    .line 520
    .end local v19    # "dY":F
    .restart local v15    # "dX":F
    .local v16, "dY":F
    :goto_bd
    iget v6, v9, Landroid/graphics/PointF;->x:F

    iget v7, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v7

    .line 521
    .local v6, "currentDX":F
    iget v7, v9, Landroid/graphics/PointF;->y:F

    iget v8, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v8

    .line 522
    .local v7, "currentDY":F
    mul-float v8, v6, v6

    mul-float v10, v7, v7

    add-float/2addr v8, v10

    float-to-double v12, v8

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v11, v12

    .line 525
    const/4 v8, 0x1

    add-int/lit8 v10, v18, 0x1

    .line 526
    .end local v18    # "count":I
    .local v10, "count":I
    div-float v12, v6, v11

    add-float/2addr v12, v15

    .line 527
    .end local v15    # "dX":F
    .local v12, "dX":F
    div-float v13, v7, v11

    add-float v6, v16, v13

    .line 483
    .end local v7    # "currentDY":F
    .end local v16    # "dY":F
    .local v6, "dY":F
    add-int/lit8 v4, v4, 0x1

    move v8, v6

    move v7, v10

    move v6, v12

    goto/16 :goto_46

    .line 530
    .end local v4    # "i":I
    .end local v10    # "count":I
    .end local v12    # "dX":F
    .local v6, "dX":F
    .local v7, "count":I
    .restart local v8    # "dY":F
    :cond_e3
    move/from16 v16, v6

    move/from16 v18, v7

    move/from16 v19, v8

    .line 530
    .end local v6    # "dX":F
    .end local v7    # "count":I
    .end local v8    # "dY":F
    .local v16, "dX":F
    .restart local v18    # "count":I
    .restart local v19    # "dY":F
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    const-string v4, "AccessibilityGestureDetector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "path="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->recognizeGesturePath(Landroid/view/MotionEvent;ILjava/util/ArrayList;)Z

    move-result v4

    return v4
.end method

.method private recognizeGesturePath(Landroid/view/MotionEvent;ILjava/util/ArrayList;)Z
    .registers 15
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            "I",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;)Z"
        }
    .end annotation

    .line 550
    .local p3, "path":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/PointF;>;"
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v0, v4, :cond_45

    .line 551
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 552
    .local v0, "start":Landroid/graphics/PointF;
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    .line 554
    .local v2, "end":Landroid/graphics/PointF;
    iget v5, v2, Landroid/graphics/PointF;->x:F

    iget v6, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v6

    .line 555
    .local v5, "dX":F
    iget v6, v2, Landroid/graphics/PointF;->y:F

    iget v7, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v7

    .line 556
    .local v6, "dY":F
    invoke-static {v5, v6}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->toDirection(FF)I

    move-result v7

    .line 557
    .local v7, "direction":I
    packed-switch v7, :pswitch_data_8e

    .line 570
    .end local v0    # "start":Landroid/graphics/PointF;
    .end local v2    # "end":Landroid/graphics/PointF;
    .end local v5    # "dX":F
    .end local v6    # "dY":F
    .end local v7    # "direction":I
    goto :goto_86

    .line 565
    .restart local v0    # "start":Landroid/graphics/PointF;
    .restart local v2    # "end":Landroid/graphics/PointF;
    .restart local v5    # "dX":F
    .restart local v6    # "dY":F
    .restart local v7    # "direction":I
    :pswitch_28
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

    invoke-interface {v1, v4}, Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;->onGestureCompleted(I)Z

    move-result v1

    return v1

    .line 563
    :pswitch_2f
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

    invoke-interface {v1, v3}, Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;->onGestureCompleted(I)Z

    move-result v1

    return v1

    .line 561
    :pswitch_36
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

    const/4 v3, 0x4

    invoke-interface {v1, v3}, Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;->onGestureCompleted(I)Z

    move-result v1

    return v1

    .line 559
    :pswitch_3e
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

    invoke-interface {v3, v1}, Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;->onGestureCompleted(I)Z

    move-result v1

    return v1

    .line 570
    .end local v0    # "start":Landroid/graphics/PointF;
    .end local v2    # "end":Landroid/graphics/PointF;
    .end local v5    # "dX":F
    .end local v6    # "dY":F
    .end local v7    # "direction":I
    :cond_45
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_86

    .line 571
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 572
    .restart local v0    # "start":Landroid/graphics/PointF;
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 573
    .local v1, "mid":Landroid/graphics/PointF;
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    .line 575
    .restart local v2    # "end":Landroid/graphics/PointF;
    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v4, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    .line 576
    .local v3, "dX0":F
    iget v4, v1, Landroid/graphics/PointF;->y:F

    iget v5, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    .line 578
    .local v4, "dY0":F
    iget v5, v2, Landroid/graphics/PointF;->x:F

    iget v6, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v6

    .line 579
    .local v5, "dX1":F
    iget v6, v2, Landroid/graphics/PointF;->y:F

    iget v7, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v7

    .line 581
    .local v6, "dY1":F
    invoke-static {v3, v4}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->toDirection(FF)I

    move-result v7

    .line 582
    .local v7, "segmentDirection0":I
    invoke-static {v5, v6}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->toDirection(FF)I

    move-result v8

    .line 583
    .local v8, "segmentDirection1":I
    sget-object v9, Lcom/android/server/accessibility/AccessibilityGestureDetector;->DIRECTIONS_TO_GESTURE_ID:[[I

    aget-object v9, v9, v7

    aget v9, v9, v8

    .line 584
    .local v9, "gestureId":I
    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

    invoke-interface {v10, v9}, Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;->onGestureCompleted(I)Z

    move-result v10

    return v10

    .line 587
    .end local v0    # "start":Landroid/graphics/PointF;
    .end local v1    # "mid":Landroid/graphics/PointF;
    .end local v2    # "end":Landroid/graphics/PointF;
    .end local v3    # "dX0":F
    .end local v4    # "dY0":F
    .end local v5    # "dX1":F
    .end local v6    # "dY1":F
    .end local v7    # "segmentDirection0":I
    .end local v8    # "segmentDirection1":I
    .end local v9    # "gestureId":I
    :cond_86
    :goto_86
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

    invoke-interface {v0, p1, p2}, Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;->onGestureCancelled(Landroid/view/MotionEvent;I)Z

    move-result v0

    return v0

    nop

    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_3e
        :pswitch_36
        :pswitch_2f
        :pswitch_28
    .end packed-switch
.end method

.method private static toDirection(FF)I
    .registers 4
    .param p0, "dX"    # F
    .param p1, "dY"    # F

    .line 592
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-lez v0, :cond_15

    .line 594
    cmpg-float v0, p0, v1

    if-gez v0, :cond_13

    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    const/4 v0, 0x1

    :goto_14
    return v0

    .line 597
    :cond_15
    cmpg-float v0, p1, v1

    if-gez v0, :cond_1b

    const/4 v0, 0x2

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x3

    :goto_1c
    return v0
.end method


# virtual methods
.method public clear()V
    .registers 10

    .line 393
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mFirstTapDetected:Z

    .line 394
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mDoubleTapDetected:Z

    .line 395
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mSecondFingerDoubleTap:Z

    .line 396
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureStarted:Z

    .line 397
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 399
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->cancelGesture()V

    .line 400
    return-void
.end method

.method public firstTapDetected()Z
    .registers 2

    .line 403
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mFirstTapDetected:Z

    return v0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 427
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mDoubleTapDetected:Z

    .line 428
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 408
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mPolicyFlags:I

    invoke-direct {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->maybeSendLongPress(Landroid/view/MotionEvent;I)V

    .line 409
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;I)Z
    .registers 20
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 253
    move/from16 v2, p2

    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v3, :cond_18

    .line 254
    new-instance v3, Landroid/view/GestureDetector;

    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v3, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    .line 255
    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, v0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 258
    :cond_18
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 259
    .local v3, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 260
    .local v4, "y":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    .line 262
    .local v5, "time":J
    iput v2, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mPolicyFlags:I

    .line 263
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    packed-switch v7, :pswitch_data_14a

    :pswitch_2f
    goto/16 :goto_129

    .line 362
    :pswitch_31
    iget-boolean v7, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mSecondFingerDoubleTap:Z

    if-eqz v7, :cond_129

    iget-boolean v7, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mDoubleTapDetected:Z

    if-eqz v7, :cond_129

    .line 363
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->finishDoubleTap(Landroid/view/MotionEvent;I)Z

    move-result v7

    return v7

    .line 345
    :pswitch_3e
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->cancelGesture()V

    .line 347
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    const/4 v10, 0x2

    if-ne v7, v10, :cond_4e

    .line 350
    iput-boolean v8, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mSecondFingerDoubleTap:Z

    .line 351
    iput-wide v5, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mSecondPointerDownTime:J

    goto/16 :goto_129

    .line 355
    :cond_4e
    iput-boolean v9, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mSecondFingerDoubleTap:Z

    .line 357
    goto/16 :goto_129

    .line 368
    :pswitch_52
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->clear()V

    goto/16 :goto_129

    .line 280
    :pswitch_57
    iget-boolean v7, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mRecognizingGesture:Z

    if-eqz v7, :cond_129

    .line 281
    iget v7, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mBaseX:F

    sub-float/2addr v7, v3

    .line 282
    .local v7, "deltaX":F
    iget v10, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mBaseY:F

    sub-float/2addr v10, v4

    .line 283
    .local v10, "deltaY":F
    float-to-double v11, v7

    float-to-double v13, v10

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v11

    .line 284
    .local v11, "moveDelta":D
    iget v13, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureDetectionThreshold:F

    float-to-double v13, v13

    cmpl-double v13, v11, v13

    if-lez v13, :cond_85

    .line 287
    iput v3, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mBaseX:F

    .line 288
    iput v4, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mBaseY:F

    .line 289
    iput-wide v5, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mBaseTime:J

    .line 293
    iput-boolean v9, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mFirstTapDetected:Z

    .line 294
    iput-boolean v9, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mDoubleTapDetected:Z

    .line 298
    iget-boolean v13, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureStarted:Z

    if-nez v13, :cond_a4

    .line 299
    iput-boolean v8, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureStarted:Z

    .line 300
    iget-object v8, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

    invoke-interface {v8}, Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;->onGestureStarted()Z

    move-result v8

    return v8

    .line 302
    :cond_85
    iget-boolean v8, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mFirstTapDetected:Z

    if-nez v8, :cond_a4

    .line 305
    iget-wide v13, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mBaseTime:J

    sub-long v13, v5, v13

    .line 306
    .local v13, "timeDelta":J
    iget-boolean v8, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureStarted:Z

    if-eqz v8, :cond_94

    .line 307
    const-wide/16 v15, 0x12c

    goto :goto_96

    .line 308
    :cond_94
    const-wide/16 v15, 0x96

    .line 312
    .local v15, "threshold":J
    :goto_96
    cmp-long v8, v13, v15

    if-lez v8, :cond_a4

    .line 313
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->cancelGesture()V

    .line 314
    iget-object v8, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

    invoke-interface {v8, v1, v2}, Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;->onGestureCancelled(Landroid/view/MotionEvent;I)Z

    move-result v8

    return v8

    .line 318
    .end local v13    # "timeDelta":J
    .end local v15    # "threshold":J
    :cond_a4
    iget v8, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mPreviousGestureX:F

    sub-float v8, v3, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 319
    .local v8, "dX":F
    iget v13, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mPreviousGestureY:F

    sub-float v13, v4, v13

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    .line 320
    .local v13, "dY":F
    iget v14, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mMinPixelsBetweenSamplesX:F

    cmpl-float v14, v8, v14

    if-gez v14, :cond_c0

    iget v14, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mMinPixelsBetweenSamplesY:F

    cmpl-float v14, v13, v14

    if-ltz v14, :cond_ce

    .line 321
    :cond_c0
    iput v3, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mPreviousGestureX:F

    .line 322
    iput v4, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mPreviousGestureY:F

    .line 323
    iget-object v14, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    new-instance v15, Landroid/gesture/GesturePoint;

    invoke-direct {v15, v3, v4, v5, v6}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    .end local v7    # "deltaX":F
    .end local v8    # "dX":F
    .end local v10    # "deltaY":F
    .end local v11    # "moveDelta":D
    .end local v13    # "dY":F
    :cond_ce
    goto :goto_129

    .line 329
    :pswitch_cf
    iget-boolean v7, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mDoubleTapDetected:Z

    if-eqz v7, :cond_d8

    .line 330
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->finishDoubleTap(Landroid/view/MotionEvent;I)Z

    move-result v7

    return v7

    .line 332
    :cond_d8
    iget-boolean v7, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureStarted:Z

    if-eqz v7, :cond_129

    .line 333
    iget v7, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mPreviousGestureX:F

    sub-float v7, v3, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 334
    .local v7, "dX":F
    iget v8, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mPreviousGestureY:F

    sub-float v8, v4, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 335
    .local v8, "dY":F
    iget v9, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mMinPixelsBetweenSamplesX:F

    cmpl-float v9, v7, v9

    if-gez v9, :cond_f8

    iget v9, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mMinPixelsBetweenSamplesY:F

    cmpl-float v9, v8, v9

    if-ltz v9, :cond_102

    .line 336
    :cond_f8
    iget-object v9, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    new-instance v10, Landroid/gesture/GesturePoint;

    invoke-direct {v10, v3, v4, v5, v6}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    :cond_102
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->recognizeGesture(Landroid/view/MotionEvent;I)Z

    move-result v9

    return v9

    .line 265
    .end local v7    # "dX":F
    .end local v8    # "dY":F
    :pswitch_107
    iput-boolean v9, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mDoubleTapDetected:Z

    .line 266
    iput-boolean v9, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mSecondFingerDoubleTap:Z

    .line 267
    iput-boolean v8, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mRecognizingGesture:Z

    .line 268
    iput-boolean v9, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureStarted:Z

    .line 269
    iput v3, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mPreviousGestureX:F

    .line 270
    iput v4, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mPreviousGestureY:F

    .line 271
    iget-object v7, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 272
    iget-object v7, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    new-instance v8, Landroid/gesture/GesturePoint;

    invoke-direct {v8, v3, v4, v5, v6}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    iput v3, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mBaseX:F

    .line 275
    iput v4, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mBaseY:F

    .line 276
    iput-wide v5, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mBaseTime:J

    .line 277
    nop

    .line 374
    :cond_129
    :goto_129
    iget-boolean v7, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mSecondFingerDoubleTap:Z

    if-eqz v7, :cond_13e

    .line 375
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mapSecondPointerToFirstPointer(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v7

    .line 376
    .local v7, "newEvent":Landroid/view/MotionEvent;
    if-nez v7, :cond_134

    .line 377
    return v9

    .line 379
    :cond_134
    iget-object v8, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v8, v7}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    .line 380
    .local v8, "handled":Z
    invoke-virtual {v7}, Landroid/view/MotionEvent;->recycle()V

    .line 381
    return v8

    .line 384
    .end local v7    # "newEvent":Landroid/view/MotionEvent;
    .end local v8    # "handled":Z
    :cond_13e
    iget-boolean v7, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mRecognizingGesture:Z

    if-nez v7, :cond_143

    .line 385
    return v9

    .line 389
    :cond_143
    iget-object v7, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v7, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    return v7

    :pswitch_data_14a
    .packed-switch 0x0
        :pswitch_107
        :pswitch_cf
        :pswitch_57
        :pswitch_52
        :pswitch_2f
        :pswitch_3e
        :pswitch_31
    .end packed-switch
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 419
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->clear()V

    .line 420
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 413
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mFirstTapDetected:Z

    .line 414
    const/4 v0, 0x0

    return v0
.end method
