.class public Lcom/android/server/policy/SystemGesturesPointerEventListener;
.super Ljava/lang/Object;
.source "SystemGesturesPointerEventListener.java"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;,
        Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_FLING_TIME_MILLIS:I = 0x1388

.field private static final MAX_TRACKED_POINTERS:I = 0x20

.field private static final SWIPE_FROM_BOTTOM:I = 0x2

.field private static final SWIPE_FROM_LEFT:I = 0x4

.field private static final SWIPE_FROM_RIGHT:I = 0x3

.field private static final SWIPE_FROM_TOP:I = 0x1

.field private static final SWIPE_NONE:I = 0x0

.field private static final SWIPE_TIMEOUT_MS:J = 0x1f4L

.field private static final TAG:Ljava/lang/String; = "SystemGestures"

.field private static final UNTRACKED_POINTER:I = -0x1


# instance fields
.field private final mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

.field private final mContext:Landroid/content/Context;

.field private mDebugFireable:Z

.field private final mDownPointerId:[I

.field private mDownPointers:I

.field private final mDownTime:[J

.field private final mDownX:[F

.field private final mDownY:[F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mLastFlingTime:J

.field private mMouseHoveringAtEdge:Z

.field private mOverscroller:Landroid/widget/OverScroller;

.field private mScrollFired:Z

.field private final mSwipeDistanceThreshold:I

.field private mSwipeFireable:Z

.field private final mSwipeStartThreshold:I

.field screenHeight:I

.field screenWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callbacks"    # Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/16 v0, 0x20

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownPointerId:[I

    .line 53
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownX:[F

    .line 54
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownY:[F

    .line 55
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownTime:[J

    .line 70
    iput-object p1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mContext:Landroid/content/Context;

    .line 71
    const-string v0, "callbacks"

    invoke-static {v0, p2}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->checkNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    iput-object v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    .line 72
    const-string v0, "context"

    invoke-static {v0, p1}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->checkNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 73
    const v1, 0x10501cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    .line 74
    iget v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    iput v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    .line 77
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/policy/SystemGesturesPointerEventListener;)Landroid/widget/OverScroller;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/SystemGesturesPointerEventListener;

    .line 34
    iget-object v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mOverscroller:Landroid/widget/OverScroller;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/policy/SystemGesturesPointerEventListener;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/policy/SystemGesturesPointerEventListener;

    .line 34
    iget-wide v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mLastFlingTime:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/android/server/policy/SystemGesturesPointerEventListener;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/policy/SystemGesturesPointerEventListener;
    .param p1, "x1"    # J

    .line 34
    iput-wide p1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mLastFlingTime:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/android/server/policy/SystemGesturesPointerEventListener;)Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/SystemGesturesPointerEventListener;

    .line 34
    iget-object v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/policy/SystemGesturesPointerEventListener;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/SystemGesturesPointerEventListener;

    .line 34
    iget-boolean v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mScrollFired:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/policy/SystemGesturesPointerEventListener;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/SystemGesturesPointerEventListener;
    .param p1, "x1"    # Z

    .line 34
    iput-boolean p1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mScrollFired:Z

    return p1
.end method

.method private captureDown(Landroid/view/MotionEvent;I)V
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .line 169
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 170
    .local v0, "pointerId":I
    invoke-direct {p0, v0}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->findIndex(I)I

    move-result v1

    .line 173
    .local v1, "i":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_23

    .line 174
    iget-object v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownX:[F

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    aput v3, v2, v1

    .line 175
    iget-object v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownY:[F

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    aput v3, v2, v1

    .line 176
    iget-object v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownTime:[J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    aput-wide v3, v2, v1

    .line 180
    :cond_23
    return-void
.end method

.method private static checkNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .line 80
    .local p1, "arg":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_3

    .line 83
    return-object p1

    .line 81
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " must not be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private detectSwipe(IJFF)I
    .registers 14
    .param p1, "i"    # I
    .param p2, "time"    # J
    .param p4, "x"    # F
    .param p5, "y"    # F

    .line 221
    iget-object v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownX:[F

    aget v0, v0, p1

    .line 222
    .local v0, "fromX":F
    iget-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownY:[F

    aget v1, v1, p1

    .line 223
    .local v1, "fromY":F
    iget-object v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownTime:[J

    aget-wide v2, v2, p1

    sub-long v2, p2, v2

    .line 226
    .local v2, "elapsed":J
    iget v4, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    int-to-float v4, v4

    cmpg-float v4, v1, v4

    const-wide/16 v5, 0x1f4

    if-gtz v4, :cond_25

    iget v4, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float v4, v4

    add-float/2addr v4, v1

    cmpl-float v4, p5, v4

    if-lez v4, :cond_25

    cmp-long v4, v2, v5

    if-gez v4, :cond_25

    .line 229
    const/4 v4, 0x1

    return v4

    .line 231
    :cond_25
    iget v4, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->screenHeight:I

    iget v7, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    sub-int/2addr v4, v7

    int-to-float v4, v4

    cmpl-float v4, v1, v4

    if-ltz v4, :cond_3e

    iget v4, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float v4, v4

    sub-float v4, v1, v4

    cmpg-float v4, p5, v4

    if-gez v4, :cond_3e

    cmp-long v4, v2, v5

    if-gez v4, :cond_3e

    .line 234
    const/4 v4, 0x2

    return v4

    .line 236
    :cond_3e
    iget v4, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->screenWidth:I

    iget v7, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    sub-int/2addr v4, v7

    int-to-float v4, v4

    cmpl-float v4, v0, v4

    if-ltz v4, :cond_57

    iget v4, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float v4, v4

    sub-float v4, v0, v4

    cmpg-float v4, p4, v4

    if-gez v4, :cond_57

    cmp-long v4, v2, v5

    if-gez v4, :cond_57

    .line 239
    const/4 v4, 0x3

    return v4

    .line 241
    :cond_57
    iget v4, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    int-to-float v4, v4

    cmpg-float v4, v0, v4

    if-gtz v4, :cond_6c

    iget v4, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float v4, v4

    add-float/2addr v4, v0

    cmpl-float v4, p4, v4

    if-lez v4, :cond_6c

    cmp-long v4, v2, v5

    if-gez v4, :cond_6c

    .line 244
    const/4 v4, 0x4

    return v4

    .line 246
    :cond_6c
    const/4 v4, 0x0

    return v4
.end method

.method private detectSwipe(Landroid/view/MotionEvent;)I
    .registers 21
    .param p1, "move"    # Landroid/view/MotionEvent;

    .line 196
    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v1

    .line 197
    .local v1, "historySize":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 198
    .local v2, "pointerCount":I
    const/4 v3, 0x0

    move v4, v3

    .local v4, "p":I
    :goto_c
    if-ge v4, v2, :cond_54

    .line 199
    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 200
    .local v5, "pointerId":I
    move-object/from16 v12, p0

    invoke-direct {v12, v5}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->findIndex(I)I

    move-result v13

    .line 201
    .local v13, "i":I
    const/4 v6, -0x1

    if-eq v13, v6, :cond_51

    .line 202
    move v6, v3

    .local v6, "h":I
    :goto_1c
    move v14, v6

    .end local v6    # "h":I
    .local v14, "h":I
    if-ge v14, v1, :cond_3c

    .line 203
    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v15

    .line 204
    .local v15, "time":J
    invoke-virtual {v0, v4, v14}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v17

    .line 205
    .local v17, "x":F
    invoke-virtual {v0, v4, v14}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v18

    .line 206
    .local v18, "y":F
    move-object v6, v12

    move v7, v13

    move-wide v8, v15

    move/from16 v10, v17

    move/from16 v11, v18

    invoke-direct/range {v6 .. v11}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->detectSwipe(IJFF)I

    move-result v6

    .line 207
    .local v6, "swipe":I
    if-eqz v6, :cond_39

    .line 208
    return v6

    .line 202
    .end local v6    # "swipe":I
    .end local v15    # "time":J
    .end local v17    # "x":F
    .end local v18    # "y":F
    :cond_39
    add-int/lit8 v6, v14, 0x1

    .end local v14    # "h":I
    .local v6, "h":I
    goto :goto_1c

    .line 211
    .end local v6    # "h":I
    :cond_3c
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    move-object v6, v12

    move v7, v13

    invoke-direct/range {v6 .. v11}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->detectSwipe(IJFF)I

    move-result v6

    .line 212
    .local v6, "swipe":I
    if-eqz v6, :cond_51

    .line 213
    return v6

    .line 198
    .end local v5    # "pointerId":I
    .end local v6    # "swipe":I
    .end local v13    # "i":I
    :cond_51
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 217
    .end local v4    # "p":I
    :cond_54
    move-object/from16 v12, p0

    return v3
.end method

.method private findIndex(I)I
    .registers 5
    .param p1, "pointerId"    # I

    .line 183
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownPointers:I

    if-ge v0, v1, :cond_f

    .line 184
    iget-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownPointerId:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_c

    .line 185
    return v0

    .line 183
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 188
    .end local v0    # "i":I
    :cond_f
    iget v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownPointers:I

    const/16 v1, 0x20

    const/4 v2, -0x1

    if-eq v0, v1, :cond_28

    if-ne p1, v2, :cond_19

    goto :goto_28

    .line 191
    :cond_19
    iget-object v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownPointerId:[I

    iget v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownPointers:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownPointers:I

    aput p1, v0, v1

    .line 192
    iget v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownPointers:I

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 189
    :cond_28
    :goto_28
    return v2
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 94
    iget-object v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 95
    iget-object v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 97
    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_da

    const/4 v1, 0x7

    if-eq v0, v1, :cond_85

    packed-switch v0, :pswitch_data_fa

    goto/16 :goto_f8

    .line 121
    :pswitch_20
    iget-boolean v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    if-eqz v0, :cond_f8

    .line 122
    invoke-direct {p0, p1}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->detectSwipe(Landroid/view/MotionEvent;)I

    move-result v0

    .line 123
    .local v0, "swipe":I
    if-nez v0, :cond_2c

    move v3, v2

    nop

    :cond_2c
    iput-boolean v3, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    .line 124
    if-ne v0, v2, :cond_36

    .line 126
    iget-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v1}, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;->onSwipeFromTop()V

    goto :goto_50

    .line 127
    :cond_36
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3f

    .line 129
    iget-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v1}, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;->onSwipeFromBottom()V

    goto :goto_50

    .line 130
    :cond_3f
    const/4 v1, 0x3

    if-ne v0, v1, :cond_48

    .line 132
    iget-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v1}, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;->onSwipeFromRight()V

    goto :goto_50

    .line 133
    :cond_48
    const/4 v1, 0x4

    if-ne v0, v1, :cond_50

    .line 135
    iget-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v1}, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;->onSwipeFromLeft()V

    .line 137
    .end local v0    # "swipe":I
    :cond_50
    :goto_50
    goto/16 :goto_f8

    .line 156
    :pswitch_52
    iput-boolean v3, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    .line 157
    iput-boolean v3, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDebugFireable:Z

    .line 158
    iget-boolean v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mScrollFired:Z

    if-eqz v0, :cond_5f

    .line 159
    iget-object v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v0, v3}, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;->onScroll(Z)V

    .line 160
    :cond_5f
    iput-boolean v3, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mScrollFired:Z

    .line 161
    iget-object v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v0}, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;->onUpOrCancel()V

    .line 162
    goto/16 :goto_f8

    .line 99
    :pswitch_68
    iput-boolean v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    .line 100
    iput-boolean v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDebugFireable:Z

    .line 101
    iput-boolean v3, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mScrollFired:Z

    .line 102
    iput v3, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownPointers:I

    .line 103
    invoke-direct {p0, p1, v3}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->captureDown(Landroid/view/MotionEvent;I)V

    .line 104
    iget-boolean v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mMouseHoveringAtEdge:Z

    if-eqz v0, :cond_7e

    .line 105
    iput-boolean v3, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mMouseHoveringAtEdge:Z

    .line 106
    iget-object v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v0}, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;->onMouseLeaveFromEdge()V

    .line 108
    :cond_7e
    iget-object v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v0}, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;->onDown()V

    .line 109
    goto/16 :goto_f8

    .line 140
    :cond_85
    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_f8

    .line 141
    iget-boolean v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mMouseHoveringAtEdge:Z

    const/4 v1, 0x0

    if-nez v0, :cond_a2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_a2

    .line 142
    iget-object v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v0}, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;->onMouseHoverAtTop()V

    .line 143
    iput-boolean v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mMouseHoveringAtEdge:Z

    goto :goto_f8

    .line 144
    :cond_a2
    iget-boolean v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mMouseHoveringAtEdge:Z

    if-nez v0, :cond_ba

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v4, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->screenHeight:I

    sub-int/2addr v4, v2

    int-to-float v4, v4

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_ba

    .line 145
    iget-object v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v0}, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;->onMouseHoverAtBottom()V

    .line 146
    iput-boolean v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mMouseHoveringAtEdge:Z

    goto :goto_f8

    .line 147
    :cond_ba
    iget-boolean v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mMouseHoveringAtEdge:Z

    if-eqz v0, :cond_f8

    .line 148
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_f8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->screenHeight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_f8

    .line 149
    iget-object v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v0}, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;->onMouseLeaveFromEdge()V

    .line 150
    iput-boolean v3, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mMouseHoveringAtEdge:Z

    goto :goto_f8

    .line 111
    :cond_da
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->captureDown(Landroid/view/MotionEvent;I)V

    .line 112
    iget-boolean v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDebugFireable:Z

    if-eqz v0, :cond_f8

    .line 113
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ge v0, v1, :cond_ec

    goto :goto_ed

    :cond_ec
    move v2, v3

    :goto_ed
    iput-boolean v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDebugFireable:Z

    .line 114
    iget-boolean v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDebugFireable:Z

    if-nez v0, :cond_f8

    .line 116
    iget-object v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v0}, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;->onDebug()V

    .line 166
    :cond_f8
    :goto_f8
    return-void

    nop

    :pswitch_data_fa
    .packed-switch 0x0
        :pswitch_68
        :pswitch_52
        :pswitch_20
        :pswitch_52
    .end packed-switch
.end method

.method public systemReady()V
    .registers 6

    .line 87
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 88
    .local v0, "h":Landroid/os/Handler;
    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;-><init>(Lcom/android/server/policy/SystemGesturesPointerEventListener;Lcom/android/server/policy/SystemGesturesPointerEventListener$1;)V

    invoke-direct {v1, v2, v3, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    .line 89
    new-instance v1, Landroid/widget/OverScroller;

    iget-object v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mOverscroller:Landroid/widget/OverScroller;

    .line 90
    return-void
.end method
