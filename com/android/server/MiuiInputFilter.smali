.class public Lcom/android/server/MiuiInputFilter;
.super Landroid/view/InputFilter;
.source "MiuiInputFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/MiuiInputFilter$ClickableRect;,
        Lcom/android/server/MiuiInputFilter$H;,
        Lcom/android/server/MiuiInputFilter$KeyData;
    }
.end annotation


# static fields
.field static ENTERED_LISTEN_COMBINATION_KEYS:[[I = null

.field private static MIDDLE_KEYCODE:I = 0x0

.field static NOT_ENTERED_LISTEN_COMBINATION_KEYS:[[I = null

.field private static final PERSIST_SYS_BACKTOUCH_PROPERTY:Ljava/lang/String; = "persist.sys.backtouch"

.field private static final PERSIST_SYS_HANDSWAP_PROPERTY:Ljava/lang/String; = "persist.sys.handswap"

.field private static isDpadDevice:Z

.field private static sEdgeDistance:F


# instance fields
.field private final MAX_COS:D

.field private mCitTestEnabled:Z

.field private mClickingRect:Lcom/android/server/MiuiInputFilter$ClickableRect;

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/server/MiuiInputFilter$H;

.field private mInstalled:Z

.field private mOutsideClickableRects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/MiuiInputFilter$ClickableRect;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/MiuiInputFilter$KeyData;",
            ">;"
        }
    .end annotation
.end field

.field private mPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private mSampleDura:I

.field private mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

.field private mWasInside:Z


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 44
    const-string/jumbo v0, "middle_keycode_is_dpad_center"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/MiuiInputFilter;->isDpadDevice:Z

    .line 45
    sget-boolean v0, Lcom/android/server/MiuiInputFilter;->isDpadDevice:Z

    const/4 v2, 0x3

    if-eqz v0, :cond_12

    const/16 v0, 0x17

    goto :goto_13

    :cond_12
    move v0, v2

    :goto_13
    sput v0, Lcom/android/server/MiuiInputFilter;->MIDDLE_KEYCODE:I

    .line 52
    const/4 v0, 0x2

    new-array v3, v0, [[I

    new-array v4, v0, [I

    sget v5, Lcom/android/server/MiuiInputFilter;->MIDDLE_KEYCODE:I

    aput v5, v4, v1

    const/4 v5, 0x4

    const/4 v6, 0x1

    aput v5, v4, v6

    aput-object v4, v3, v1

    new-array v4, v0, [I

    sget v7, Lcom/android/server/MiuiInputFilter;->MIDDLE_KEYCODE:I

    aput v7, v4, v1

    const/16 v7, 0x52

    aput v7, v4, v6

    aput-object v4, v3, v6

    sput-object v3, Lcom/android/server/MiuiInputFilter;->NOT_ENTERED_LISTEN_COMBINATION_KEYS:[[I

    .line 58
    new-array v3, v5, [[I

    new-array v4, v0, [I

    sget v8, Lcom/android/server/MiuiInputFilter;->MIDDLE_KEYCODE:I

    aput v8, v4, v1

    aput v5, v4, v6

    aput-object v4, v3, v1

    new-array v4, v0, [I

    sget v8, Lcom/android/server/MiuiInputFilter;->MIDDLE_KEYCODE:I

    aput v8, v4, v1

    aput v7, v4, v6

    aput-object v4, v3, v6

    new-array v4, v0, [I

    aput v5, v4, v1

    sget v5, Lcom/android/server/MiuiInputFilter;->MIDDLE_KEYCODE:I

    aput v5, v4, v6

    aput-object v4, v3, v0

    new-array v0, v0, [I

    aput v7, v0, v1

    sget v1, Lcom/android/server/MiuiInputFilter;->MIDDLE_KEYCODE:I

    aput v1, v0, v6

    aput-object v0, v3, v2

    sput-object v3, Lcom/android/server/MiuiInputFilter;->ENTERED_LISTEN_COMBINATION_KEYS:[[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 123
    invoke-static {}, Lcom/android/server/DisplayThread;->get()Lcom/android/server/DisplayThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/DisplayThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/InputFilter;-><init>(Landroid/os/Looper;)V

    .line 49
    const-wide v0, 0x3fd657184ae74487L    # 0.3490658503988659

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/MiuiInputFilter;->MAX_COS:D

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/MiuiInputFilter;->mPendingKeys:Ljava/util/List;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/MiuiInputFilter;->mOutsideClickableRects:Ljava/util/List;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/MiuiInputFilter;->mPoints:Ljava/util/ArrayList;

    .line 124
    iput-object p1, p0, Lcom/android/server/MiuiInputFilter;->mContext:Landroid/content/Context;

    .line 125
    new-instance v0, Lcom/android/server/MiuiInputFilter$H;

    invoke-static {}, Lcom/android/server/DisplayThread;->get()Lcom/android/server/DisplayThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/DisplayThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/MiuiInputFilter$H;-><init>(Lcom/android/server/MiuiInputFilter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/MiuiInputFilter;->mHandler:Lcom/android/server/MiuiInputFilter$H;

    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41a00000    # 20.0f

    mul-float/2addr v1, v0

    sput v1, Lcom/android/server/MiuiInputFilter;->sEdgeDistance:F

    .line 128
    return-void
.end method

.method private changeVolumeForBackTouch(I)V
    .registers 25
    .param p1, "policyFlags"    # I

    move-object/from16 v0, p0

    .line 180
    move/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/MiuiInputFilter;->mPoints:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    .line 181
    .local v2, "firstP":Landroid/graphics/PointF;
    iget-object v3, v0, Lcom/android/server/MiuiInputFilter;->mPoints:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    .line 182
    .local v3, "secondP":Landroid/graphics/PointF;
    iget-object v4, v0, Lcom/android/server/MiuiInputFilter;->mPoints:Ljava/util/ArrayList;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    .line 183
    .local v4, "thirdP":Landroid/graphics/PointF;
    const/4 v5, 0x0

    .line 184
    .local v5, "volumeChange":F
    iget v6, v3, Landroid/graphics/PointF;->x:F

    iget v7, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v7

    iget v7, v4, Landroid/graphics/PointF;->x:F

    iget v8, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    iget v7, v3, Landroid/graphics/PointF;->y:F

    iget v8, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v8

    iget v8, v4, Landroid/graphics/PointF;->y:F

    iget v9, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v8, v9

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-double v6, v6

    iget v8, v3, Landroid/graphics/PointF;->x:F

    iget v9, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v8, v9

    float-to-double v8, v8

    iget v10, v3, Landroid/graphics/PointF;->y:F

    iget v11, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v10, v11

    float-to-double v10, v10

    .line 185
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    iget v10, v4, Landroid/graphics/PointF;->x:F

    iget v11, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v10, v11

    float-to-double v10, v10

    iget v12, v4, Landroid/graphics/PointF;->y:F

    iget v13, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v12, v13

    float-to-double v12, v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v10

    mul-double/2addr v8, v10

    div-double/2addr v6, v8

    .line 186
    .local v6, "cosTheta":D
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    iget-wide v10, v0, Lcom/android/server/MiuiInputFilter;->MAX_COS:D

    cmpg-double v8, v8, v10

    if-gez v8, :cond_7c

    .line 187
    iget v8, v3, Landroid/graphics/PointF;->x:F

    iget v9, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v8, v9

    iget v9, v4, Landroid/graphics/PointF;->y:F

    iget v10, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v9, v10

    mul-float/2addr v8, v9

    iget v9, v4, Landroid/graphics/PointF;->x:F

    iget v10, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v9, v10

    iget v10, v3, Landroid/graphics/PointF;->y:F

    iget v11, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v10, v11

    mul-float/2addr v9, v10

    sub-float v5, v8, v9

    .line 189
    :cond_7c
    const/4 v8, 0x0

    cmpl-float v9, v5, v8

    if-eqz v9, :cond_c2

    .line 190
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    .line 191
    .local v18, "time":J
    new-instance v9, Landroid/view/KeyEvent;

    const/4 v15, 0x0

    cmpl-float v10, v5, v8

    const/16 v20, 0x19

    const/16 v21, 0x18

    if-lez v10, :cond_93

    move/from16 v16, v21

    goto :goto_95

    :cond_93
    move/from16 v16, v20

    :goto_95
    const/16 v17, 0x0

    move-object v10, v9

    move-wide/from16 v11, v18

    move-wide/from16 v13, v18

    invoke-direct/range {v10 .. v17}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 192
    .local v9, "evt":Landroid/view/KeyEvent;
    invoke-virtual {v0, v9, v1}, Lcom/android/server/MiuiInputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    .line 193
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    .line 194
    new-instance v22, Landroid/view/KeyEvent;

    const/4 v15, 0x1

    cmpl-float v8, v5, v8

    if-lez v8, :cond_b0

    move/from16 v16, v21

    goto :goto_b2

    :cond_b0
    move/from16 v16, v20

    :goto_b2
    const/16 v17, 0x0

    move-object/from16 v10, v22

    move-wide/from16 v11, v18

    move-wide/from16 v13, v18

    invoke-direct/range {v10 .. v17}, Landroid/view/KeyEvent;-><init>(JJIII)V

    move-object/from16 v8, v22

    .line 195
    .end local v9    # "evt":Landroid/view/KeyEvent;
    .local v8, "evt":Landroid/view/KeyEvent;
    invoke-virtual {v0, v8, v1}, Lcom/android/server/MiuiInputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    .line 197
    .end local v8    # "evt":Landroid/view/KeyEvent;
    .end local v18    # "time":J
    :cond_c2
    return-void
.end method

.method private findClickableRect(FF)Lcom/android/server/MiuiInputFilter$ClickableRect;
    .registers 8
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 316
    iget-object v0, p0, Lcom/android/server/MiuiInputFilter;->mOutsideClickableRects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/MiuiInputFilter$ClickableRect;

    .line 317
    .local v1, "c":Lcom/android/server/MiuiInputFilter$ClickableRect;
    iget-object v2, v1, Lcom/android/server/MiuiInputFilter$ClickableRect;->mRect:Landroid/graphics/Rect;

    float-to-int v3, p1

    float-to-int v4, p2

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 318
    return-object v1

    .line 320
    .end local v1    # "c":Lcom/android/server/MiuiInputFilter$ClickableRect;
    :cond_1d
    goto :goto_6

    .line 321
    :cond_1e
    const/4 v0, 0x0

    return-object v0
.end method

.method private getTempPointerCoordsWithMinSize(I)[Landroid/view/MotionEvent$PointerCoords;
    .registers 6
    .param p1, "size"    # I

    .line 334
    iget-object v0, p0, Lcom/android/server/MiuiInputFilter;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/MiuiInputFilter;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    array-length v0, v0

    goto :goto_a

    :cond_9
    move v0, v1

    .line 335
    .local v0, "oldSize":I
    :goto_a
    if-ge v0, p1, :cond_19

    .line 336
    iget-object v2, p0, Lcom/android/server/MiuiInputFilter;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 337
    .local v2, "oldTempPointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    new-array v3, p1, [Landroid/view/MotionEvent$PointerCoords;

    iput-object v3, p0, Lcom/android/server/MiuiInputFilter;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 338
    if-eqz v2, :cond_19

    .line 339
    iget-object v3, p0, Lcom/android/server/MiuiInputFilter;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    invoke-static {v2, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 342
    .end local v2    # "oldTempPointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    :cond_19
    move v1, v0

    .local v1, "i":I
    :goto_1a
    if-ge v1, p1, :cond_28

    .line 343
    iget-object v2, p0, Lcom/android/server/MiuiInputFilter;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v3, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v3, v2, v1

    .line 342
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 345
    .end local v1    # "i":I
    :cond_28
    iget-object v1, p0, Lcom/android/server/MiuiInputFilter;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    return-object v1
.end method

.method private getTempPointerPropertiesWithMinSize(I)[Landroid/view/MotionEvent$PointerProperties;
    .registers 6
    .param p1, "size"    # I

    .line 349
    iget-object v0, p0, Lcom/android/server/MiuiInputFilter;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/MiuiInputFilter;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    array-length v0, v0

    goto :goto_a

    :cond_9
    move v0, v1

    .line 350
    .local v0, "oldSize":I
    :goto_a
    if-ge v0, p1, :cond_19

    .line 351
    iget-object v2, p0, Lcom/android/server/MiuiInputFilter;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 352
    .local v2, "oldTempPointerProperties":[Landroid/view/MotionEvent$PointerProperties;
    new-array v3, p1, [Landroid/view/MotionEvent$PointerProperties;

    iput-object v3, p0, Lcom/android/server/MiuiInputFilter;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 353
    if-eqz v2, :cond_19

    .line 354
    iget-object v3, p0, Lcom/android/server/MiuiInputFilter;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    invoke-static {v2, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 357
    .end local v2    # "oldTempPointerProperties":[Landroid/view/MotionEvent$PointerProperties;
    :cond_19
    move v1, v0

    .local v1, "i":I
    :goto_1a
    if-ge v1, p1, :cond_28

    .line 358
    iget-object v2, p0, Lcom/android/server/MiuiInputFilter;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    new-instance v3, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v3, v2, v1

    .line 357
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 360
    .end local v1    # "i":I
    :cond_28
    iget-object v1, p0, Lcom/android/server/MiuiInputFilter;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    return-object v1
.end method

.method private isTouchInside(FF)Z
    .registers 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 325
    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_19

    sget v1, Lcom/android/server/HandyMode;->sScreenWidth:I

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_19

    cmpl-float v0, p2, v0

    if-lez v0, :cond_19

    sget v0, Lcom/android/server/HandyMode;->sScreenHeight:I

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    return v0
.end method

.method private isTouchInsideOrEdge(FF)Z
    .registers 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 329
    sget v0, Lcom/android/server/MiuiInputFilter;->sEdgeDistance:F

    neg-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_21

    sget v0, Lcom/android/server/HandyMode;->sScreenWidth:I

    int-to-float v0, v0

    sget v1, Lcom/android/server/MiuiInputFilter;->sEdgeDistance:F

    add-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gez v0, :cond_21

    sget v0, Lcom/android/server/MiuiInputFilter;->sEdgeDistance:F

    neg-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_21

    sget v0, Lcom/android/server/HandyMode;->sScreenHeight:I

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_21

    const/4 v0, 0x1

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    return v0
.end method

.method private needDelayKey(Z)Z
    .registers 3
    .param p1, "isSecondKey"    # Z

    .line 369
    invoke-direct {p0}, Lcom/android/server/MiuiInputFilter;->needShowDialog()Z

    move-result v0

    if-eqz v0, :cond_b

    if-eqz p1, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method private needShowDialog()Z
    .registers 2

    .line 364
    invoke-static {}, Lcom/android/server/HandyMode;->getMode()I

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Lcom/android/server/HandyMode;->sHandyModeUtils:Lmiui/util/HandyModeUtils;

    .line 365
    invoke-virtual {v0}, Lmiui/util/HandyModeUtils;->isEnterDirect()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 364
    :goto_11
    return v0
.end method

.method private declared-synchronized onKeyEvent(Landroid/view/KeyEvent;I)V
    .registers 16
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    monitor-enter p0

    .line 377
    :try_start_1
    sget-boolean v0, Lcom/android/server/HandyMode;->sEnable:Z

    if-eqz v0, :cond_131

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_131

    .line 381
    :cond_d
    const/4 v0, 0x0

    .line 382
    .local v0, "needDelay":Z
    const/4 v1, 0x0

    .line 383
    .local v1, "needTrigger":Z
    const/4 v2, 0x0

    .line 384
    .local v2, "isSecondKey":Z
    iget-object v3, p0, Lcom/android/server/MiuiInputFilter;->mPendingKeys:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v3, :pswitch_data_13a

    goto/16 :goto_122

    .line 426
    :pswitch_1d
    iget-object v3, p0, Lcom/android/server/MiuiInputFilter;->mPendingKeys:Ljava/util/List;

    const/4 v6, 0x2

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/MiuiInputFilter$KeyData;

    iget-object v3, v3, Lcom/android/server/MiuiInputFilter$KeyData;->keyEvent:Landroid/view/KeyEvent;

    .line 427
    .local v3, "pendingKeyEvent":Landroid/view/KeyEvent;
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-ne v6, v5, :cond_4c

    .line 428
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    invoke-virtual {v3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    if-ne v6, v7, :cond_4c

    .line 429
    const/4 v1, 0x1

    .line 430
    const/4 v0, 0x1

    .line 431
    invoke-virtual {p1}, Landroid/view/KeyEvent;->copy()Landroid/view/KeyEvent;

    move-result-object v7

    const/4 v9, -0x1

    const/4 v10, 0x1

    if-nez v0, :cond_44

    move v11, v5

    goto :goto_45

    :cond_44
    move v11, v4

    :goto_45
    move-object v6, p0

    move v8, p2

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/MiuiInputFilter;->addPendingData(Landroid/view/KeyEvent;IIZZ)V

    goto/16 :goto_122

    .line 433
    :cond_4c
    invoke-virtual {p0}, Lcom/android/server/MiuiInputFilter;->flushPending()V

    .line 435
    goto/16 :goto_122

    .line 407
    .end local v3    # "pendingKeyEvent":Landroid/view/KeyEvent;
    :pswitch_51
    iget-object v3, p0, Lcom/android/server/MiuiInputFilter;->mPendingKeys:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/MiuiInputFilter$KeyData;

    iget-object v3, v3, Lcom/android/server/MiuiInputFilter$KeyData;->keyEvent:Landroid/view/KeyEvent;

    .line 408
    .local v3, "firstKeyEvent":Landroid/view/KeyEvent;
    iget-object v6, p0, Lcom/android/server/MiuiInputFilter;->mPendingKeys:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/MiuiInputFilter$KeyData;

    iget-object v6, v6, Lcom/android/server/MiuiInputFilter$KeyData;->keyEvent:Landroid/view/KeyEvent;

    .line 409
    .local v6, "lastKeyEvent":Landroid/view/KeyEvent;
    invoke-virtual {v6}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    if-ne v7, v5, :cond_7c

    .line 410
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_7c

    .line 411
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/server/MiuiInputFilter;->checkSecondKey(I)Z

    move-result v7

    move v2, v7

    if-nez v7, :cond_92

    .line 412
    :cond_7c
    invoke-virtual {v6}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_b3

    .line 413
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    if-ne v7, v5, :cond_b3

    .line 414
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    invoke-virtual {v3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    if-ne v7, v8, :cond_b3

    .line 416
    :cond_92
    invoke-direct {p0, v2}, Lcom/android/server/MiuiInputFilter;->needDelayKey(Z)Z

    move-result v7

    move v0, v7

    .line 417
    invoke-virtual {p1}, Landroid/view/KeyEvent;->copy()Landroid/view/KeyEvent;

    move-result-object v8

    .line 418
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_a4

    const/4 v7, -0x1

    move v10, v7

    goto :goto_a5

    :cond_a4
    move v10, v5

    :goto_a5
    const/4 v11, 0x1

    if-nez v0, :cond_aa

    .line 417
    move v12, v5

    goto :goto_ac

    .line 418
    :cond_aa
    nop

    .line 417
    move v12, v4

    :goto_ac
    move-object v7, p0

    move v9, p2

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/MiuiInputFilter;->addPendingData(Landroid/view/KeyEvent;IIZZ)V

    goto/16 :goto_122

    .line 420
    :cond_b3
    invoke-virtual {p0}, Lcom/android/server/MiuiInputFilter;->flushPending()V

    .line 422
    goto/16 :goto_122

    .line 394
    .end local v3    # "firstKeyEvent":Landroid/view/KeyEvent;
    .end local v6    # "lastKeyEvent":Landroid/view/KeyEvent;
    :pswitch_b8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v5, :cond_d2

    .line 395
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    iget-object v6, p0, Lcom/android/server/MiuiInputFilter;->mPendingKeys:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/MiuiInputFilter$KeyData;

    iget-object v6, v6, Lcom/android/server/MiuiInputFilter$KeyData;->keyEvent:Landroid/view/KeyEvent;

    invoke-virtual {v6}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    if-eq v3, v6, :cond_e3

    .line 396
    :cond_d2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_f9

    .line 397
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/MiuiInputFilter;->checkSecondKey(I)Z

    move-result v3

    move v2, v3

    if-eqz v3, :cond_f9

    .line 398
    :cond_e3
    invoke-direct {p0, v2}, Lcom/android/server/MiuiInputFilter;->needDelayKey(Z)Z

    move-result v3

    move v0, v3

    .line 399
    invoke-virtual {p1}, Landroid/view/KeyEvent;->copy()Landroid/view/KeyEvent;

    move-result-object v7

    const/4 v9, -0x1

    const/4 v10, 0x0

    if-nez v0, :cond_f2

    move v11, v5

    goto :goto_f3

    :cond_f2
    move v11, v4

    :goto_f3
    move-object v6, p0

    move v8, p2

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/MiuiInputFilter;->addPendingData(Landroid/view/KeyEvent;IIZZ)V

    goto :goto_122

    .line 401
    :cond_f9
    invoke-virtual {p0}, Lcom/android/server/MiuiInputFilter;->flushPending()V

    .line 403
    goto :goto_122

    .line 386
    :pswitch_fd
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_122

    .line 387
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/MiuiInputFilter;->checkKeyNeedListen(I)Z

    move-result v3

    if-eqz v3, :cond_122

    .line 388
    invoke-direct {p0, v4}, Lcom/android/server/MiuiInputFilter;->needDelayKey(Z)Z

    move-result v3

    move v0, v3

    .line 389
    invoke-virtual {p1}, Landroid/view/KeyEvent;->copy()Landroid/view/KeyEvent;

    move-result-object v7

    const/4 v9, -0x1

    const/4 v10, 0x1

    if-nez v0, :cond_11c

    move v11, v5

    goto :goto_11d

    :cond_11c
    move v11, v4

    :goto_11d
    move-object v6, p0

    move v8, p2

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/MiuiInputFilter;->addPendingData(Landroid/view/KeyEvent;IIZZ)V

    .line 439
    :cond_122
    :goto_122
    if-nez v0, :cond_127

    .line 440
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 443
    :cond_127
    if-eqz v1, :cond_12f

    .line 444
    invoke-virtual {p0}, Lcom/android/server/MiuiInputFilter;->triggerCombinationClick()V

    .line 445
    invoke-virtual {p0}, Lcom/android/server/MiuiInputFilter;->clearPendingList()V
    :try_end_12f
    .catchall {:try_start_1 .. :try_end_12f} :catchall_136

    .line 447
    :cond_12f
    monitor-exit p0

    return-void

    .line 378
    .end local v0    # "needDelay":Z
    .end local v1    # "needTrigger":Z
    .end local v2    # "isSecondKey":Z
    :cond_131
    :goto_131
    :try_start_131
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V
    :try_end_134
    .catchall {:try_start_131 .. :try_end_134} :catchall_136

    .line 379
    monitor-exit p0

    return-void

    .line 376
    .end local p1    # "keyEvent":Landroid/view/KeyEvent;
    .end local p2    # "policyFlags":I
    :catchall_136
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/MiuiInputFilter;
    throw p1

    nop

    :pswitch_data_13a
    .packed-switch 0x0
        :pswitch_fd
        :pswitch_b8
        :pswitch_51
        :pswitch_1d
    .end packed-switch
.end method

.method private onMotionEvent(Landroid/view/MotionEvent;I)V
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .line 235
    sget-boolean v0, Lcom/android/server/HandyMode;->sEnable:Z

    if-eqz v0, :cond_8

    .line 236
    invoke-direct {p0, p1, p2}, Lcom/android/server/MiuiInputFilter;->processMotionEventForHandyMode(Landroid/view/MotionEvent;I)V

    goto :goto_b

    .line 238
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 240
    :goto_b
    return-void
.end method

.method static processCoordinate(FFFF)F
    .registers 5
    .param p0, "coordValue"    # F
    .param p1, "offset"    # F
    .param p2, "scale"    # F
    .param p3, "scalePivot"    # F

    .line 231
    sub-float v0, p3, p0

    mul-float/2addr v0, p2

    sub-float v0, p3, v0

    sub-float/2addr v0, p1

    return v0
.end method

.method private processMotionEventForBackTouch(Landroid/view/MotionEvent;I)V
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .line 160
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_40

    goto :goto_3f

    .line 162
    :pswitch_9
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 163
    .local v0, "curPointF":Landroid/graphics/PointF;
    iget v2, p0, Lcom/android/server/MiuiInputFilter;->mSampleDura:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/MiuiInputFilter;->mSampleDura:I

    const/4 v3, 0x5

    if-lt v2, v3, :cond_26

    .line 164
    iget-object v2, p0, Lcom/android/server/MiuiInputFilter;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    iput v1, p0, Lcom/android/server/MiuiInputFilter;->mSampleDura:I

    .line 167
    :cond_26
    iget-object v1, p0, Lcom/android/server/MiuiInputFilter;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_3f

    .line 168
    invoke-direct {p0, p2}, Lcom/android/server/MiuiInputFilter;->changeVolumeForBackTouch(I)V

    .line 169
    iget-object v1, p0, Lcom/android/server/MiuiInputFilter;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_3f

    .line 173
    .end local v0    # "curPointF":Landroid/graphics/PointF;
    :pswitch_38
    iput v1, p0, Lcom/android/server/MiuiInputFilter;->mSampleDura:I

    .line 174
    iget-object v0, p0, Lcom/android/server/MiuiInputFilter;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 177
    :cond_3f
    :goto_3f
    return-void

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_38
        :pswitch_9
    .end packed-switch
.end method

.method private processMotionEventForHandyMode(Landroid/view/MotionEvent;I)V
    .registers 31
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 243
    move/from16 v2, p2

    invoke-static {}, Lcom/android/server/HandyMode;->getMode()I

    move-result v3

    .line 244
    .local v3, "mode":I
    if-eqz v3, :cond_12a

    .line 245
    const/high16 v4, 0x3f800000    # 1.0f

    sget v5, Lcom/android/server/HandyMode;->sScale:F

    div-float/2addr v4, v5

    .line 247
    .local v4, "scaleInverse":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v15

    .line 248
    .local v15, "pointerCount":I
    invoke-direct {v0, v15}, Lcom/android/server/MiuiInputFilter;->getTempPointerCoordsWithMinSize(I)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v21

    .line 249
    .local v21, "coords":[Landroid/view/MotionEvent$PointerCoords;
    invoke-direct {v0, v15}, Lcom/android/server/MiuiInputFilter;->getTempPointerPropertiesWithMinSize(I)[Landroid/view/MotionEvent$PointerProperties;

    move-result-object v22

    .line 250
    .local v22, "properties":[Landroid/view/MotionEvent$PointerProperties;
    const/4 v14, 0x0

    move v5, v14

    .local v5, "i":I
    :goto_1f
    const/4 v13, 0x2

    if-ge v5, v15, :cond_52

    .line 251
    aget-object v6, v21, v5

    invoke-virtual {v1, v5, v6}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 253
    const/4 v6, 0x0

    if-ne v3, v13, :cond_2e

    sget v7, Lcom/android/server/HandyMode;->sScreenWidth:I

    int-to-float v7, v7

    goto :goto_2f

    :cond_2e
    move v7, v6

    .line 254
    .local v7, "xPivot":F
    :goto_2f
    aget-object v8, v21, v5

    aget-object v9, v21, v5

    iget v9, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-static {v9, v6, v4, v7}, Lcom/android/server/MiuiInputFilter;->processCoordinate(FFFF)F

    move-result v9

    iput v9, v8, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 256
    sget v8, Lcom/android/server/HandyMode;->sScreenHeight:I

    int-to-float v8, v8

    .line 257
    .local v8, "yPivot":F
    aget-object v9, v21, v5

    aget-object v10, v21, v5

    iget v10, v10, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-static {v10, v6, v4, v8}, Lcom/android/server/MiuiInputFilter;->processCoordinate(FFFF)F

    move-result v6

    iput v6, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 259
    aget-object v6, v22, v5

    invoke-virtual {v1, v5, v6}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 250
    .end local v7    # "xPivot":F
    .end local v8    # "yPivot":F
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    .line 261
    .end local v5    # "i":I
    :cond_52
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v5

    .line 262
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    .line 263
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    .line 267
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v16

    .line 268
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v17

    .line 269
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v18

    .line 270
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v19

    .line 271
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v20

    .line 272
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v23

    .line 273
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v24

    .line 274
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v25

    .line 261
    move v10, v15

    move-object/from16 v11, v22

    move-object/from16 v12, v21

    move/from16 v26, v3

    move v3, v13

    move/from16 v13, v16

    .end local v3    # "mode":I
    .local v26, "mode":I
    move v3, v14

    move/from16 v14, v17

    move v3, v15

    move/from16 v15, v18

    .end local v15    # "pointerCount":I
    .local v3, "pointerCount":I
    move/from16 v16, v19

    move/from16 v17, v20

    move/from16 v18, v23

    move/from16 v19, v24

    move/from16 v20, v25

    invoke-static/range {v5 .. v20}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v5

    .line 276
    .local v5, "newEvent":Landroid/view/MotionEvent;
    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v3, v7, :cond_11f

    .line 277
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-nez v8, :cond_b7

    .line 279
    const/4 v8, 0x0

    iput-boolean v8, v0, Lcom/android/server/MiuiInputFilter;->mWasInside:Z

    .line 280
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-direct {v0, v8, v9}, Lcom/android/server/MiuiInputFilter;->findClickableRect(FF)Lcom/android/server/MiuiInputFilter$ClickableRect;

    move-result-object v8

    iput-object v8, v0, Lcom/android/server/MiuiInputFilter;->mClickingRect:Lcom/android/server/MiuiInputFilter$ClickableRect;

    .line 283
    :cond_b7
    iget-boolean v8, v0, Lcom/android/server/MiuiInputFilter;->mWasInside:Z

    if-nez v8, :cond_108

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-direct {v0, v8, v9}, Lcom/android/server/MiuiInputFilter;->isTouchInside(FF)Z

    move-result v8

    if-nez v8, :cond_108

    .line 284
    iget-object v8, v0, Lcom/android/server/MiuiInputFilter;->mClickingRect:Lcom/android/server/MiuiInputFilter$ClickableRect;

    if-eqz v8, :cond_e3

    iget-object v8, v0, Lcom/android/server/MiuiInputFilter;->mClickingRect:Lcom/android/server/MiuiInputFilter$ClickableRect;

    iget-object v8, v8, Lcom/android/server/MiuiInputFilter$ClickableRect;->mRect:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-nez v8, :cond_e3

    .line 285
    iput-object v6, v0, Lcom/android/server/MiuiInputFilter;->mClickingRect:Lcom/android/server/MiuiInputFilter$ClickableRect;

    .line 288
    :cond_e3
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-ne v6, v7, :cond_126

    .line 289
    iget-object v6, v0, Lcom/android/server/MiuiInputFilter;->mClickingRect:Lcom/android/server/MiuiInputFilter$ClickableRect;

    if-eqz v6, :cond_f5

    .line 290
    iget-object v6, v0, Lcom/android/server/MiuiInputFilter;->mClickingRect:Lcom/android/server/MiuiInputFilter$ClickableRect;

    iget-object v6, v6, Lcom/android/server/MiuiInputFilter$ClickableRect;->mClickListener:Ljava/lang/Runnable;

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    goto :goto_126

    .line 291
    :cond_f5
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-direct {v0, v6, v7}, Lcom/android/server/MiuiInputFilter;->isTouchInsideOrEdge(FF)Z

    move-result v6

    if-nez v6, :cond_126

    .line 292
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/android/server/HandyMode;->changeMode(I)V

    goto :goto_126

    .line 296
    :cond_108
    iget-boolean v8, v0, Lcom/android/server/MiuiInputFilter;->mWasInside:Z

    if-nez v8, :cond_117

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_117

    .line 297
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/view/MotionEvent;->setAction(I)V

    .line 299
    :cond_117
    invoke-virtual {v0, v5, v2}, Lcom/android/server/MiuiInputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    .line 300
    iput-boolean v7, v0, Lcom/android/server/MiuiInputFilter;->mWasInside:Z

    .line 301
    iput-object v6, v0, Lcom/android/server/MiuiInputFilter;->mClickingRect:Lcom/android/server/MiuiInputFilter$ClickableRect;

    goto :goto_126

    .line 304
    :cond_11f
    invoke-virtual {v0, v5, v2}, Lcom/android/server/MiuiInputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    .line 305
    iput-boolean v7, v0, Lcom/android/server/MiuiInputFilter;->mWasInside:Z

    .line 306
    iput-object v6, v0, Lcom/android/server/MiuiInputFilter;->mClickingRect:Lcom/android/server/MiuiInputFilter$ClickableRect;

    .line 309
    :cond_126
    :goto_126
    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    .line 310
    .end local v3    # "pointerCount":I
    .end local v4    # "scaleInverse":F
    .end local v5    # "newEvent":Landroid/view/MotionEvent;
    .end local v21    # "coords":[Landroid/view/MotionEvent$PointerCoords;
    .end local v22    # "properties":[Landroid/view/MotionEvent$PointerProperties;
    goto :goto_12f

    .line 311
    .end local v26    # "mode":I
    .local v3, "mode":I
    :cond_12a
    move/from16 v26, v3

    .end local v3    # "mode":I
    .restart local v26    # "mode":I
    invoke-super/range {p0 .. p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 313
    :goto_12f
    return-void
.end method


# virtual methods
.method public addOutsideClickableRect(Landroid/graphics/Rect;Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "listener"    # Ljava/lang/Runnable;

    .line 131
    iget-object v0, p0, Lcom/android/server/MiuiInputFilter;->mOutsideClickableRects:Ljava/util/List;

    new-instance v1, Lcom/android/server/MiuiInputFilter$ClickableRect;

    invoke-direct {v1, p1, p2}, Lcom/android/server/MiuiInputFilter$ClickableRect;-><init>(Landroid/graphics/Rect;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    return-void
.end method

.method declared-synchronized addPendingData(Landroid/view/KeyEvent;IIZZ)V
    .registers 11
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "index"    # I
    .param p4, "delayEnhance"    # Z
    .param p5, "isSended"    # Z

    monitor-enter p0

    .line 513
    :try_start_1
    iget-object v0, p0, Lcom/android/server/MiuiInputFilter;->mHandler:Lcom/android/server/MiuiInputFilter$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/MiuiInputFilter$H;->removeMessages(I)V

    .line 515
    new-instance v0, Lcom/android/server/MiuiInputFilter$KeyData;

    invoke-direct {v0}, Lcom/android/server/MiuiInputFilter$KeyData;-><init>()V

    .line 516
    .local v0, "keyData":Lcom/android/server/MiuiInputFilter$KeyData;
    iput-object p1, v0, Lcom/android/server/MiuiInputFilter$KeyData;->keyEvent:Landroid/view/KeyEvent;

    .line 517
    iput p2, v0, Lcom/android/server/MiuiInputFilter$KeyData;->policyFlags:I

    .line 518
    iput-boolean p5, v0, Lcom/android/server/MiuiInputFilter$KeyData;->isSended:Z

    .line 519
    if-gez p3, :cond_1a

    .line 520
    iget-object v2, p0, Lcom/android/server/MiuiInputFilter;->mPendingKeys:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 522
    :cond_1a
    iget-object v2, p0, Lcom/android/server/MiuiInputFilter;->mPendingKeys:Ljava/util/List;

    invoke-interface {v2, p3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 525
    :goto_1f
    iget-object v2, p0, Lcom/android/server/MiuiInputFilter;->mHandler:Lcom/android/server/MiuiInputFilter$H;

    sget v3, Lcom/android/server/HandyMode;->COMBINATION_CLICK_TIMEOUT:I

    .line 526
    if-eqz p4, :cond_27

    const/4 v4, 0x2

    goto :goto_28

    :cond_27
    move v4, v1

    :goto_28
    mul-int/2addr v3, v4

    int-to-long v3, v3

    .line 525
    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/MiuiInputFilter$H;->sendEmptyMessageDelayed(IJ)Z
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_2f

    .line 527
    monitor-exit p0

    return-void

    .line 512
    .end local v0    # "keyData":Lcom/android/server/MiuiInputFilter$KeyData;
    .end local p1    # "keyEvent":Landroid/view/KeyEvent;
    .end local p2    # "policyFlags":I
    .end local p3    # "index":I
    .end local p4    # "delayEnhance":Z
    .end local p5    # "isSended":Z
    :catchall_2f
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/MiuiInputFilter;
    throw p1
.end method

.method checkKeyNeedListen(I)Z
    .registers 7
    .param p1, "keyCode"    # I

    .line 450
    invoke-virtual {p0}, Lcom/android/server/MiuiInputFilter;->getListenCombinationKeys()[[I

    move-result-object v0

    .line 451
    .local v0, "listenCombinationKeys":[[I
    array-length v1, v0

    .line 452
    .local v1, "N":I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_7
    if-ge v3, v1, :cond_14

    .line 453
    aget-object v4, v0, v3

    aget v4, v4, v2

    if-ne v4, p1, :cond_11

    .line 454
    const/4 v2, 0x1

    return v2

    .line 452
    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 457
    .end local v3    # "i":I
    :cond_14
    return v2
.end method

.method checkSecondKey(I)Z
    .registers 10
    .param p1, "secondKeyCode"    # I

    .line 469
    invoke-virtual {p0}, Lcom/android/server/MiuiInputFilter;->getListenCombinationKeys()[[I

    move-result-object v0

    .line 470
    .local v0, "listenCombinationKeys":[[I
    iget-object v1, p0, Lcom/android/server/MiuiInputFilter;->mPendingKeys:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/MiuiInputFilter$KeyData;

    iget-object v1, v1, Lcom/android/server/MiuiInputFilter$KeyData;->keyEvent:Landroid/view/KeyEvent;

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 471
    .local v1, "firstKeyCode":I
    array-length v3, v0

    .line 472
    .local v3, "N":I
    move v4, v2

    .local v4, "i":I
    :goto_15
    if-ge v4, v3, :cond_26

    .line 473
    aget-object v5, v0, v4

    .line 474
    .local v5, "keySequence":[I
    aget v6, v5, v2

    if-ne v6, v1, :cond_23

    const/4 v6, 0x1

    aget v7, v5, v6

    if-ne v7, p1, :cond_23

    .line 475
    return v6

    .line 472
    .end local v5    # "keySequence":[I
    :cond_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 478
    .end local v4    # "i":I
    :cond_26
    return v2
.end method

.method declared-synchronized clearPendingList()V
    .registers 3

    monitor-enter p0

    .line 530
    :try_start_1
    iget-object v0, p0, Lcom/android/server/MiuiInputFilter;->mHandler:Lcom/android/server/MiuiInputFilter$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/MiuiInputFilter$H;->removeMessages(I)V

    .line 531
    iget-object v0, p0, Lcom/android/server/MiuiInputFilter;->mPendingKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 532
    monitor-exit p0

    return-void

    .line 529
    :catchall_e
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/MiuiInputFilter;
    throw v0
.end method

.method declared-synchronized flushPending()V
    .registers 5

    monitor-enter p0

    .line 503
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    :try_start_2
    iget-object v1, p0, Lcom/android/server/MiuiInputFilter;->mPendingKeys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_28

    .line 504
    iget-object v1, p0, Lcom/android/server/MiuiInputFilter;->mPendingKeys:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/MiuiInputFilter$KeyData;

    .line 505
    .local v1, "keyData":Lcom/android/server/MiuiInputFilter$KeyData;
    iget-boolean v2, v1, Lcom/android/server/MiuiInputFilter$KeyData;->isSended:Z

    if-nez v2, :cond_25

    .line 506
    iget-object v2, v1, Lcom/android/server/MiuiInputFilter$KeyData;->keyEvent:Landroid/view/KeyEvent;

    iget-object v3, p0, Lcom/android/server/MiuiInputFilter;->mPendingKeys:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/MiuiInputFilter$KeyData;

    iget v3, v3, Lcom/android/server/MiuiInputFilter$KeyData;->policyFlags:I

    invoke-virtual {p0, v2, v3}, Lcom/android/server/MiuiInputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    .line 503
    .end local v1    # "keyData":Lcom/android/server/MiuiInputFilter$KeyData;
    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 509
    .end local v0    # "i":I
    :cond_28
    invoke-virtual {p0}, Lcom/android/server/MiuiInputFilter;->clearPendingList()V
    :try_end_2b
    .catchall {:try_start_2 .. :try_end_2b} :catchall_2d

    .line 510
    monitor-exit p0

    return-void

    .line 502
    :catchall_2d
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/MiuiInputFilter;
    throw v0
.end method

.method getListenCombinationKeys()[[I
    .registers 2

    .line 461
    invoke-static {}, Lcom/android/server/HandyMode;->getMode()I

    move-result v0

    if-nez v0, :cond_9

    .line 462
    sget-object v0, Lcom/android/server/MiuiInputFilter;->NOT_ENTERED_LISTEN_COMBINATION_KEYS:[[I

    return-object v0

    .line 464
    :cond_9
    sget-object v0, Lcom/android/server/MiuiInputFilter;->ENTERED_LISTEN_COMBINATION_KEYS:[[I

    return-object v0
.end method

.method public isInstalled()Z
    .registers 2

    .line 86
    iget-boolean v0, p0, Lcom/android/server/MiuiInputFilter;->mInstalled:Z

    return v0
.end method

.method public onInputEvent(Landroid/view/InputEvent;I)V
    .registers 5
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "policyFlags"    # I

    .line 201
    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_34

    const/16 v0, 0x1002

    invoke-virtual {p1, v0}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 202
    invoke-virtual {p1}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    if-eqz v0, :cond_2d

    const-string v0, "backtouch"

    invoke-virtual {p1}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-boolean v0, p0, Lcom/android/server/MiuiInputFilter;->mCitTestEnabled:Z

    if-nez v0, :cond_2d

    .line 203
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    invoke-direct {p0, v0, p2}, Lcom/android/server/MiuiInputFilter;->processMotionEventForBackTouch(Landroid/view/MotionEvent;I)V

    .line 204
    return-void

    .line 206
    :cond_2d
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    invoke-direct {p0, v0, p2}, Lcom/android/server/MiuiInputFilter;->onMotionEvent(Landroid/view/MotionEvent;I)V

    .line 207
    return-void

    .line 208
    :cond_34
    instance-of v0, p1, Landroid/view/KeyEvent;

    if-eqz v0, :cond_4d

    const/16 v0, 0x101

    invoke-virtual {p1, v0}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 209
    invoke-static {}, Lmiui/util/HandyModeUtils;->isFeatureVisible()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 210
    move-object v0, p1

    check-cast v0, Landroid/view/KeyEvent;

    invoke-direct {p0, v0, p2}, Lcom/android/server/MiuiInputFilter;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 211
    return-void

    .line 214
    :cond_4d
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 215
    return-void
.end method

.method public onInstalled()V
    .registers 2

    .line 219
    invoke-super {p0}, Landroid/view/InputFilter;->onInstalled()V

    .line 220
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/MiuiInputFilter;->mInstalled:Z

    .line 221
    return-void
.end method

.method public onUninstalled()V
    .registers 2

    .line 225
    invoke-super {p0}, Landroid/view/InputFilter;->onUninstalled()V

    .line 226
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/MiuiInputFilter;->mInstalled:Z

    .line 227
    invoke-virtual {p0}, Lcom/android/server/MiuiInputFilter;->clearPendingList()V

    .line 228
    return-void
.end method

.method public removeOutsideClickableRect(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "listener"    # Ljava/lang/Runnable;

    .line 135
    iget-object v0, p0, Lcom/android/server/MiuiInputFilter;->mOutsideClickableRects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1e

    .line 136
    iget-object v1, p0, Lcom/android/server/MiuiInputFilter;->mOutsideClickableRects:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/MiuiInputFilter$ClickableRect;

    iget-object v1, v1, Lcom/android/server/MiuiInputFilter$ClickableRect;->mClickListener:Ljava/lang/Runnable;

    if-ne v1, p1, :cond_1b

    .line 137
    iget-object v1, p0, Lcom/android/server/MiuiInputFilter;->mOutsideClickableRects:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 135
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 140
    .end local v0    # "i":I
    :cond_1e
    return-void
.end method

.method public setCitTestEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 156
    iput-boolean p1, p0, Lcom/android/server/MiuiInputFilter;->mCitTestEnabled:Z

    .line 157
    return-void
.end method

.method declared-synchronized triggerCombinationClick()V
    .registers 8

    monitor-enter p0

    .line 482
    :try_start_1
    sget-object v0, Lcom/android/server/HandyMode;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_buttons_state"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_62

    if-eqz v0, :cond_13

    .line 483
    monitor-exit p0

    return-void

    .line 485
    :cond_13
    :try_start_13
    const-string/jumbo v0, "persist.sys.handswap"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 486
    .local v0, "handswap":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 488
    .local v1, "keyDirectionExchanged":Z
    const/4 v2, 0x0

    .line 489
    .local v2, "newMode":I
    iget-object v3, p0, Lcom/android/server/MiuiInputFilter;->mPendingKeys:Ljava/util/List;

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/MiuiInputFilter$KeyData;

    iget-object v3, v3, Lcom/android/server/MiuiInputFilter$KeyData;->keyEvent:Landroid/view/KeyEvent;

    invoke-virtual {v3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/4 v5, 0x4

    const/4 v6, 0x1

    if-ne v3, v5, :cond_3c

    .line 490
    if-eqz v1, :cond_3a

    move v4, v6

    nop

    :cond_3a
    move v2, v4

    goto :goto_53

    .line 491
    :cond_3c
    iget-object v3, p0, Lcom/android/server/MiuiInputFilter;->mPendingKeys:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/MiuiInputFilter$KeyData;

    iget-object v3, v3, Lcom/android/server/MiuiInputFilter$KeyData;->keyEvent:Landroid/view/KeyEvent;

    invoke-virtual {v3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v5, 0x52

    if-ne v3, v5, :cond_53

    .line 492
    if-eqz v1, :cond_51

    goto :goto_52

    :cond_51
    move v4, v6

    :goto_52
    move v2, v4

    .line 495
    :cond_53
    :goto_53
    invoke-direct {p0}, Lcom/android/server/MiuiInputFilter;->needShowDialog()Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 496
    invoke-static {v2}, Lcom/android/server/HandyMode;->alertToEnter(I)V

    goto :goto_60

    .line 498
    :cond_5d
    invoke-static {v2}, Lcom/android/server/HandyMode;->changeMode(I)V
    :try_end_60
    .catchall {:try_start_13 .. :try_end_60} :catchall_62

    .line 500
    :goto_60
    monitor-exit p0

    return-void

    .line 481
    .end local v0    # "handswap":Ljava/lang/String;
    .end local v1    # "keyDirectionExchanged":Z
    .end local v2    # "newMode":I
    :catchall_62
    move-exception v0

    monitor-exit p0

    .line 481
    .end local p0    # "this":Lcom/android/server/MiuiInputFilter;
    throw v0
.end method

.method public updateOutsideClickableRect(Landroid/graphics/Rect;Ljava/lang/Runnable;)V
    .registers 6
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "listener"    # Ljava/lang/Runnable;

    .line 143
    const/4 v0, 0x0

    .line 144
    .local v0, "containListener":Z
    iget-object v1, p0, Lcom/android/server/MiuiInputFilter;->mOutsideClickableRects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_20

    .line 145
    iget-object v2, p0, Lcom/android/server/MiuiInputFilter;->mOutsideClickableRects:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/MiuiInputFilter$ClickableRect;

    iget-object v2, v2, Lcom/android/server/MiuiInputFilter$ClickableRect;->mClickListener:Ljava/lang/Runnable;

    if-ne v2, p2, :cond_1d

    .line 146
    iget-object v2, p0, Lcom/android/server/MiuiInputFilter;->mOutsideClickableRects:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 147
    const/4 v0, 0x1

    .line 144
    :cond_1d
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 150
    .end local v1    # "i":I
    :cond_20
    if-eqz v0, :cond_2c

    .line 151
    iget-object v1, p0, Lcom/android/server/MiuiInputFilter;->mOutsideClickableRects:Ljava/util/List;

    new-instance v2, Lcom/android/server/MiuiInputFilter$ClickableRect;

    invoke-direct {v2, p1, p2}, Lcom/android/server/MiuiInputFilter$ClickableRect;-><init>(Landroid/graphics/Rect;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    :cond_2c
    return-void
.end method
