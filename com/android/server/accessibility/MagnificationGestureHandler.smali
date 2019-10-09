.class Lcom/android/server/accessibility/MagnificationGestureHandler;
.super Lcom/android/server/accessibility/BaseEventStreamTransformation;
.source "MagnificationGestureHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/MagnificationGestureHandler$ScreenStateReceiver;,
        Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;,
        Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;,
        Lcom/android/server/accessibility/MagnificationGestureHandler$DelegatingState;,
        Lcom/android/server/accessibility/MagnificationGestureHandler$ViewportDraggingState;,
        Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;,
        Lcom/android/server/accessibility/MagnificationGestureHandler$State;
    }
.end annotation


# static fields
.field private static final DEBUG_ALL:Z = false

.field private static final DEBUG_DETECTING:Z = false

.field private static final DEBUG_EVENT_STREAM:Z = false

.field private static final DEBUG_PANNING_SCALING:Z = false

.field private static final DEBUG_STATE_TRANSITIONS:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "MagnificationGestureHandler"

.field private static final MAX_SCALE:F = 5.0f

.field private static final MIN_SCALE:F = 2.0f


# instance fields
.field mCurrentState:Lcom/android/server/accessibility/MagnificationGestureHandler$State;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mDebugInputEventHistory:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mDebugOutputEventHistory:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field final mDelegatingState:Lcom/android/server/accessibility/MagnificationGestureHandler$DelegatingState;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field final mDetectShortcutTrigger:Z

.field final mDetectTripleTap:Z

.field final mDetectingState:Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field final mMagnificationController:Lcom/android/server/accessibility/MagnificationController;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field final mPanningScalingState:Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mPreviousState:Lcom/android/server/accessibility/MagnificationGestureHandler$State;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mScreenStateReceiver:Lcom/android/server/accessibility/MagnificationGestureHandler$ScreenStateReceiver;

.field private mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

.field final mViewportDraggingState:Lcom/android/server/accessibility/MagnificationGestureHandler$ViewportDraggingState;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/MagnificationController;ZZ)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "magnificationController"    # Lcom/android/server/accessibility/MagnificationController;
    .param p3, "detectTripleTap"    # Z
    .param p4, "detectShortcutTrigger"    # Z

    .line 165
    invoke-direct {p0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;-><init>()V

    .line 172
    iput-object p2, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    .line 174
    new-instance v0, Lcom/android/server/accessibility/MagnificationGestureHandler$DelegatingState;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DelegatingState;-><init>(Lcom/android/server/accessibility/MagnificationGestureHandler;)V

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDelegatingState:Lcom/android/server/accessibility/MagnificationGestureHandler$DelegatingState;

    .line 175
    new-instance v0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;

    invoke-direct {v0, p0, p1}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;-><init>(Lcom/android/server/accessibility/MagnificationGestureHandler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDetectingState:Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;

    .line 176
    new-instance v0, Lcom/android/server/accessibility/MagnificationGestureHandler$ViewportDraggingState;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$ViewportDraggingState;-><init>(Lcom/android/server/accessibility/MagnificationGestureHandler;)V

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mViewportDraggingState:Lcom/android/server/accessibility/MagnificationGestureHandler$ViewportDraggingState;

    .line 177
    new-instance v0, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;

    invoke-direct {v0, p0, p1}, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;-><init>(Lcom/android/server/accessibility/MagnificationGestureHandler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mPanningScalingState:Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;

    .line 179
    iput-boolean p3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDetectTripleTap:Z

    .line 180
    iput-boolean p4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDetectShortcutTrigger:Z

    .line 182
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDetectShortcutTrigger:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_37

    .line 183
    new-instance v0, Lcom/android/server/accessibility/MagnificationGestureHandler$ScreenStateReceiver;

    invoke-direct {v0, p1, p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$ScreenStateReceiver;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/MagnificationGestureHandler;)V

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mScreenStateReceiver:Lcom/android/server/accessibility/MagnificationGestureHandler$ScreenStateReceiver;

    .line 184
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mScreenStateReceiver:Lcom/android/server/accessibility/MagnificationGestureHandler$ScreenStateReceiver;

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler$ScreenStateReceiver;->register()V

    goto :goto_39

    .line 186
    :cond_37
    iput-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mScreenStateReceiver:Lcom/android/server/accessibility/MagnificationGestureHandler$ScreenStateReceiver;

    .line 189
    :goto_39
    iput-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDebugInputEventHistory:Ljava/util/Queue;

    .line 190
    iput-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDebugOutputEventHistory:Ljava/util/Queue;

    .line 192
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDetectingState:Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->transitionTo(Lcom/android/server/accessibility/MagnificationGestureHandler$State;)V

    .line 193
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/accessibility/MagnificationGestureHandler;Lcom/android/server/accessibility/MagnificationGestureHandler$State;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/MagnificationGestureHandler;
    .param p1, "x1"    # Lcom/android/server/accessibility/MagnificationGestureHandler$State;

    .line 109
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/MagnificationGestureHandler;->transitionTo(Lcom/android/server/accessibility/MagnificationGestureHandler$State;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/accessibility/MagnificationGestureHandler;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/accessibility/MagnificationGestureHandler;

    .line 109
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->zoomOff()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/accessibility/MagnificationGestureHandler;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/accessibility/MagnificationGestureHandler;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # Landroid/view/MotionEvent;
    .param p3, "x3"    # I

    .line 109
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/MagnificationGestureHandler;->dispatchTransformedEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/accessibility/MagnificationGestureHandler;Lcom/android/server/accessibility/MagnificationGestureHandler$State;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/accessibility/MagnificationGestureHandler;
    .param p1, "x1"    # Lcom/android/server/accessibility/MagnificationGestureHandler$State;
    .param p2, "x2"    # Landroid/view/MotionEvent;
    .param p3, "x3"    # Landroid/view/MotionEvent;
    .param p4, "x4"    # I

    .line 109
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/accessibility/MagnificationGestureHandler;->handleEventWith(Lcom/android/server/accessibility/MagnificationGestureHandler$State;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/accessibility/MagnificationGestureHandler;FF)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/accessibility/MagnificationGestureHandler;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .line 109
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/MagnificationGestureHandler;->zoomOn(FF)V

    return-void
.end method

.method static synthetic access$800(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .registers 2
    .param p0, "x0"    # Landroid/view/MotionEvent;

    .line 109
    invoke-static {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->recycleAndNullify(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method private dispatchTransformedEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 29
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 278
    iget-object v2, v0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    invoke-virtual {v2}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying()Z

    move-result v2

    if-eqz v2, :cond_9d

    const/16 v2, 0x1002

    .line 279
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v2

    if-eqz v2, :cond_9d

    iget-object v2, v0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    .line 281
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 280
    invoke-virtual {v2, v3, v4}, Lcom/android/server/accessibility/MagnificationController;->magnificationRegionContains(FF)Z

    move-result v2

    if-eqz v2, :cond_9d

    .line 282
    iget-object v2, v0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    invoke-virtual {v2}, Lcom/android/server/accessibility/MagnificationController;->getScale()F

    move-result v2

    .line 283
    .local v2, "scale":F
    iget-object v3, v0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    invoke-virtual {v3}, Lcom/android/server/accessibility/MagnificationController;->getOffsetX()F

    move-result v3

    .line 284
    .local v3, "scaledOffsetX":F
    iget-object v4, v0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    invoke-virtual {v4}, Lcom/android/server/accessibility/MagnificationController;->getOffsetY()F

    move-result v4

    .line 285
    .local v4, "scaledOffsetY":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v15

    .line 286
    .local v15, "pointerCount":I
    invoke-direct {v0, v15}, Lcom/android/server/accessibility/MagnificationGestureHandler;->getTempPointerCoordsWithMinSize(I)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v21

    .line 287
    .local v21, "coords":[Landroid/view/MotionEvent$PointerCoords;
    invoke-direct {v0, v15}, Lcom/android/server/accessibility/MagnificationGestureHandler;->getTempPointerPropertiesWithMinSize(I)[Landroid/view/MotionEvent$PointerProperties;

    move-result-object v22

    .line 289
    .local v22, "properties":[Landroid/view/MotionEvent$PointerProperties;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_43
    if-ge v5, v15, :cond_66

    .line 290
    aget-object v6, v21, v5

    invoke-virtual {v1, v5, v6}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 291
    aget-object v6, v21, v5

    aget-object v7, v21, v5

    iget v7, v7, Landroid/view/MotionEvent$PointerCoords;->x:F

    sub-float/2addr v7, v3

    div-float/2addr v7, v2

    iput v7, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 292
    aget-object v6, v21, v5

    aget-object v7, v21, v5

    iget v7, v7, Landroid/view/MotionEvent$PointerCoords;->y:F

    sub-float/2addr v7, v4

    div-float/2addr v7, v2

    iput v7, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 293
    aget-object v6, v22, v5

    invoke-virtual {v1, v5, v6}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 289
    add-int/lit8 v5, v5, 0x1

    goto :goto_43

    .line 295
    .end local v5    # "i":I
    :cond_66
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v5

    .line 296
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    .line 297
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v18

    const/16 v19, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v20

    .line 298
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v23

    .line 295
    move v10, v15

    move-object/from16 v11, v22

    move-object/from16 v12, v21

    move/from16 v24, v15

    move/from16 v15, v16

    .end local v15    # "pointerCount":I
    .local v24, "pointerCount":I
    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v23

    invoke-static/range {v5 .. v20}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v1

    .line 311
    .end local v2    # "scale":F
    .end local v3    # "scaledOffsetX":F
    .end local v4    # "scaledOffsetY":F
    .end local v21    # "coords":[Landroid/view/MotionEvent$PointerCoords;
    .end local v22    # "properties":[Landroid/view/MotionEvent$PointerProperties;
    .end local v24    # "pointerCount":I
    .end local p1    # "event":Landroid/view/MotionEvent;
    .local v1, "event":Landroid/view/MotionEvent;
    :cond_9d
    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-super {v0, v1, v2, v3}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 313
    return-void
.end method

.method private getTempPointerCoordsWithMinSize(I)[Landroid/view/MotionEvent$PointerCoords;
    .registers 6
    .param p1, "size"    # I

    .line 324
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    array-length v0, v0

    goto :goto_a

    :cond_9
    move v0, v1

    .line 325
    .local v0, "oldSize":I
    :goto_a
    if-ge v0, p1, :cond_19

    .line 326
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 327
    .local v2, "oldTempPointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    new-array v3, p1, [Landroid/view/MotionEvent$PointerCoords;

    iput-object v3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 328
    if-eqz v2, :cond_19

    .line 329
    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    invoke-static {v2, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 332
    .end local v2    # "oldTempPointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    :cond_19
    move v1, v0

    .local v1, "i":I
    :goto_1a
    if-ge v1, p1, :cond_28

    .line 333
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v3, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v3, v2, v1

    .line 332
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 335
    .end local v1    # "i":I
    :cond_28
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    return-object v1
.end method

.method private getTempPointerPropertiesWithMinSize(I)[Landroid/view/MotionEvent$PointerProperties;
    .registers 6
    .param p1, "size"    # I

    .line 339
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    array-length v0, v0

    goto :goto_a

    .line 340
    :cond_9
    move v0, v1

    .line 341
    .local v0, "oldSize":I
    :goto_a
    if-ge v0, p1, :cond_19

    .line 342
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 343
    .local v2, "oldTempPointerProperties":[Landroid/view/MotionEvent$PointerProperties;
    new-array v3, p1, [Landroid/view/MotionEvent$PointerProperties;

    iput-object v3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 344
    if-eqz v2, :cond_19

    .line 345
    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    invoke-static {v2, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 349
    .end local v2    # "oldTempPointerProperties":[Landroid/view/MotionEvent$PointerProperties;
    :cond_19
    move v1, v0

    .local v1, "i":I
    :goto_1a
    if-ge v1, p1, :cond_28

    .line 350
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    new-instance v3, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v3, v2, v1

    .line 349
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 352
    .end local v1    # "i":I
    :cond_28
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    return-object v1
.end method

.method private handleEventWith(Lcom/android/server/accessibility/MagnificationGestureHandler$State;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 6
    .param p1, "stateHandler"    # Lcom/android/server/accessibility/MagnificationGestureHandler$State;
    .param p2, "event"    # Landroid/view/MotionEvent;
    .param p3, "rawEvent"    # Landroid/view/MotionEvent;
    .param p4, "policyFlags"    # I

    .line 225
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mPanningScalingState:Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;

    # getter for: Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->mScrollGestureDetector:Landroid/view/GestureDetector;
    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->access$000(Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 226
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mPanningScalingState:Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;

    # getter for: Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;
    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->access$100(Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;)Landroid/view/ScaleGestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 228
    invoke-interface {p1, p2, p3, p4}, Lcom/android/server/accessibility/MagnificationGestureHandler$State;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 229
    return-void
.end method

.method private onMotionEventInternal(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 213
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDetectTripleTap:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDetectShortcutTrigger:Z

    if-eqz v0, :cond_10

    :cond_8
    const/16 v0, 0x1002

    .line 214
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-nez v0, :cond_14

    .line 215
    :cond_10
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/MagnificationGestureHandler;->dispatchTransformedEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 216
    return-void

    .line 219
    :cond_14
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mCurrentState:Lcom/android/server/accessibility/MagnificationGestureHandler$State;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/accessibility/MagnificationGestureHandler;->handleEventWith(Lcom/android/server/accessibility/MagnificationGestureHandler$State;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 220
    return-void
.end method

.method private static recycleAndNullify(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .registers 2
    .param p0, "event"    # Landroid/view/MotionEvent;

    .line 951
    if-eqz p0, :cond_5

    .line 952
    invoke-virtual {p0}, Landroid/view/MotionEvent;->recycle()V

    .line 954
    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method private static storeEventInto(Ljava/util/Queue;Landroid/view/MotionEvent;)V
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Landroid/view/MotionEvent;",
            ">;",
            "Landroid/view/MotionEvent;",
            ")V"
        }
    .end annotation

    .line 316
    .local p0, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Landroid/view/MotionEvent;>;"
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 318
    :goto_7
    invoke-interface {p0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-interface {p0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-lez v0, :cond_2c

    .line 319
    invoke-interface {p0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_7

    .line 321
    :cond_2c
    return-void
.end method

.method private transitionTo(Lcom/android/server/accessibility/MagnificationGestureHandler$State;)V
    .registers 3
    .param p1, "state"    # Lcom/android/server/accessibility/MagnificationGestureHandler$State;

    .line 362
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mCurrentState:Lcom/android/server/accessibility/MagnificationGestureHandler$State;

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mPreviousState:Lcom/android/server/accessibility/MagnificationGestureHandler$State;

    .line 363
    iput-object p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mCurrentState:Lcom/android/server/accessibility/MagnificationGestureHandler$State;

    .line 364
    return-void
.end method

.method private zoomOff()V
    .registers 3

    .line 947
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/MagnificationController;->reset(Z)Z

    .line 948
    return-void
.end method

.method private zoomOn(FF)V
    .registers 12
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F

    .line 935
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    .line 936
    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationController;->getPersistedScale()F

    move-result v0

    .line 935
    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    .line 938
    .local v0, "scale":F
    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    const/4 v7, 0x1

    const/4 v8, 0x0

    move v4, v0

    move v5, p1

    move v6, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/accessibility/MagnificationController;->setScaleAndCenter(FFFZI)Z

    .line 942
    return-void
.end method


# virtual methods
.method clearAndTransitionToStateDetecting()V
    .registers 2

    .line 265
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDetectingState:Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mCurrentState:Lcom/android/server/accessibility/MagnificationGestureHandler$State;

    .line 266
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDetectingState:Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->clear()V

    .line 267
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mViewportDraggingState:Lcom/android/server/accessibility/MagnificationGestureHandler$ViewportDraggingState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler$ViewportDraggingState;->clear()V

    .line 268
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mPanningScalingState:Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;->clear()V

    .line 269
    return-void
.end method

.method public clearEvents(I)V
    .registers 3
    .param p1, "inputSource"    # I

    .line 233
    const/16 v0, 0x1002

    if-ne p1, v0, :cond_7

    .line 234
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->clearAndTransitionToStateDetecting()V

    .line 237
    :cond_7
    invoke-super {p0, p1}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->clearEvents(I)V

    .line 238
    return-void
.end method

.method notifyShortcutTriggered()V
    .registers 3

    .line 254
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDetectShortcutTrigger:Z

    if-eqz v0, :cond_16

    .line 255
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/MagnificationController;->resetIfNeeded(Z)Z

    move-result v0

    .line 256
    .local v0, "wasMagnifying":Z
    if-eqz v0, :cond_11

    .line 257
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->clearAndTransitionToStateDetecting()V

    goto :goto_16

    .line 259
    :cond_11
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDetectingState:Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;

    invoke-virtual {v1}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->toggleShortcutTriggered()V

    .line 262
    .end local v0    # "wasMagnifying":Z
    :cond_16
    :goto_16
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 247
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mScreenStateReceiver:Lcom/android/server/accessibility/MagnificationGestureHandler$ScreenStateReceiver;

    if-eqz v0, :cond_9

    .line 248
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mScreenStateReceiver:Lcom/android/server/accessibility/MagnificationGestureHandler$ScreenStateReceiver;

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler$ScreenStateReceiver;->unregister()V

    .line 250
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->clearAndTransitionToStateDetecting()V

    .line 251
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 206
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/MagnificationGestureHandler;->onMotionEventInternal(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 208
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 959
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MagnificationGesture{mDetectingState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDetectingState:Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDelegatingState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDelegatingState:Lcom/android/server/accessibility/MagnificationGestureHandler$DelegatingState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mMagnifiedInteractionState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mPanningScalingState:Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mViewportDraggingState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mViewportDraggingState:Lcom/android/server/accessibility/MagnificationGestureHandler$ViewportDraggingState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDetectTripleTap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDetectTripleTap:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDetectShortcutTrigger="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDetectShortcutTrigger:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mCurrentState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mCurrentState:Lcom/android/server/accessibility/MagnificationGestureHandler$State;

    .line 966
    invoke-static {v1}, Lcom/android/server/accessibility/MagnificationGestureHandler$State;->nameOf(Lcom/android/server/accessibility/MagnificationGestureHandler$State;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mPreviousState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mPreviousState:Lcom/android/server/accessibility/MagnificationGestureHandler$State;

    .line 967
    invoke-static {v1}, Lcom/android/server/accessibility/MagnificationGestureHandler$State;->nameOf(Lcom/android/server/accessibility/MagnificationGestureHandler$State;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mMagnificationController="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 959
    return-object v0
.end method
