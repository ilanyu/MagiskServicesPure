.class final Lcom/android/server/accessibility/GestureUtils;
.super Ljava/lang/Object;
.source "GestureUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public static distance(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)D
    .registers 6
    .param p0, "first"    # Landroid/view/MotionEvent;
    .param p1, "second"    # Landroid/view/MotionEvent;

    .line 35
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/util/MathUtils;->dist(FFFF)F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method private static eventsWithinTimeAndDistanceSlop(Landroid/view/MotionEvent;Landroid/view/MotionEvent;II)Z
    .registers 10
    .param p0, "first"    # Landroid/view/MotionEvent;
    .param p1, "second"    # Landroid/view/MotionEvent;
    .param p2, "timeout"    # I
    .param p3, "distance"    # I

    .line 24
    invoke-static {p0, p1, p2}, Lcom/android/server/accessibility/GestureUtils;->isTimedOut(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 25
    return v1

    .line 27
    :cond_8
    invoke-static {p0, p1}, Lcom/android/server/accessibility/GestureUtils;->distance(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)D

    move-result-wide v2

    .line 28
    .local v2, "deltaMove":D
    int-to-double v4, p3

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_12

    .line 29
    return v1

    .line 31
    :cond_12
    const/4 v0, 0x1

    return v0
.end method

.method public static isDraggingGesture(FFFFFFFFF)Z
    .registers 26
    .param p0, "firstPtrDownX"    # F
    .param p1, "firstPtrDownY"    # F
    .param p2, "secondPtrDownX"    # F
    .param p3, "secondPtrDownY"    # F
    .param p4, "firstPtrX"    # F
    .param p5, "firstPtrY"    # F
    .param p6, "secondPtrX"    # F
    .param p7, "secondPtrY"    # F
    .param p8, "maxDraggingAngleCos"    # F

    .line 53
    sub-float v2, p4, p0

    .line 54
    .local v2, "firstDeltaX":F
    sub-float v3, p5, p1

    .line 56
    .local v3, "firstDeltaY":F
    const/4 v4, 0x0

    cmpl-float v5, v2, v4

    const/4 v6, 0x1

    if-nez v5, :cond_f

    cmpl-float v5, v3, v4

    if-nez v5, :cond_f

    .line 57
    return v6

    .line 60
    :cond_f
    float-to-double v7, v2

    float-to-double v9, v3

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v7

    double-to-float v5, v7

    .line 62
    .local v5, "firstMagnitude":F
    cmpl-float v7, v5, v4

    if-lez v7, :cond_1d

    div-float v7, v2, v5

    goto :goto_1e

    :cond_1d
    move v7, v2

    .line 64
    .local v7, "firstXNormalized":F
    :goto_1e
    cmpl-float v8, v5, v4

    if-lez v8, :cond_25

    div-float v8, v3, v5

    goto :goto_26

    :cond_25
    move v8, v3

    .line 66
    .local v8, "firstYNormalized":F
    :goto_26
    sub-float v11, p6, p2

    .line 67
    .local v11, "secondDeltaX":F
    sub-float v6, p7, p3

    .line 69
    .local v6, "secondDeltaY":F
    cmpl-float v13, v11, v4

    if-nez v13, :cond_34

    cmpl-float v13, v6, v4

    if-nez v13, :cond_34

    .line 70
    const/4 v4, 0x1

    return v4

    .line 73
    :cond_34
    move v14, v5

    float-to-double v4, v11

    .end local v5    # "firstMagnitude":F
    .local v14, "firstMagnitude":F
    float-to-double v0, v6

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 75
    .local v0, "secondMagnitude":F
    const/4 v1, 0x0

    cmpl-float v4, v0, v1

    if-lez v4, :cond_44

    div-float v4, v11, v0

    goto :goto_45

    :cond_44
    move v4, v11

    .line 77
    .local v4, "secondXNormalized":F
    :goto_45
    cmpl-float v1, v0, v1

    if-lez v1, :cond_4c

    div-float v1, v6, v0

    goto :goto_4d

    :cond_4c
    move v1, v6

    .line 79
    .local v1, "secondYNormalized":F
    :goto_4d
    mul-float v5, v7, v4

    mul-float v13, v8, v1

    add-float/2addr v5, v13

    .line 82
    .local v5, "angleCos":F
    cmpg-float v15, v5, p8

    if-gez v15, :cond_58

    .line 83
    const/4 v12, 0x0

    return v12

    .line 86
    :cond_58
    const/4 v12, 0x1

    return v12
.end method

.method public static isMultiTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;II)Z
    .registers 5
    .param p0, "firstUp"    # Landroid/view/MotionEvent;
    .param p1, "secondUp"    # Landroid/view/MotionEvent;
    .param p2, "multiTapTimeSlop"    # I
    .param p3, "multiTapDistanceSlop"    # I

    .line 17
    if-eqz p0, :cond_a

    if-nez p1, :cond_5

    goto :goto_a

    .line 18
    :cond_5
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/accessibility/GestureUtils;->eventsWithinTimeAndDistanceSlop(Landroid/view/MotionEvent;Landroid/view/MotionEvent;II)Z

    move-result v0

    return v0

    .line 17
    :cond_a
    :goto_a
    const/4 v0, 0x0

    return v0
.end method

.method public static isTimedOut(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Z
    .registers 7
    .param p0, "firstUp"    # Landroid/view/MotionEvent;
    .param p1, "secondUp"    # Landroid/view/MotionEvent;
    .param p2, "timeout"    # I

    .line 39
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 40
    .local v0, "deltaTime":J
    int-to-long v2, p2

    cmp-long v2, v0, v2

    if-ltz v2, :cond_10

    const/4 v2, 0x1

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    return v2
.end method
