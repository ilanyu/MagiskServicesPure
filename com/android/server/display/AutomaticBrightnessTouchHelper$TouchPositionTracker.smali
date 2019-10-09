.class Lcom/android/server/display/AutomaticBrightnessTouchHelper$TouchPositionTracker;
.super Ljava/lang/Object;
.source "AutomaticBrightnessTouchHelper.java"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AutomaticBrightnessTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TouchPositionTracker"
.end annotation


# static fields
.field private static final TOUCH_NEGATIVE:I = 0x0

.field private static final TOUCH_POSITIVE:I = 0x1

.field private static final TOUCH_UNKNOWN:I = -0x1


# instance fields
.field private mLastObservedTouchTime:J

.field private mPointerIndexTriggerBitMask:S

.field private mTouchBottom:F

.field private mTouchLeft:F

.field private mTouchRight:F

.field mTouchStatus:I

.field private mTouchTop:F


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessTouchHelper$TouchPositionTracker;->mTouchStatus:I

    .line 126
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessTouchHelper$TouchPositionTracker;->mTouchLeft:F

    .line 127
    const/high16 v1, 0x43fa0000    # 500.0f

    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessTouchHelper$TouchPositionTracker;->mTouchRight:F

    .line 128
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessTouchHelper$TouchPositionTracker;->mTouchTop:F

    .line 129
    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessTouchHelper$TouchPositionTracker;->mTouchBottom:F

    .line 130
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/display/AutomaticBrightnessTouchHelper$TouchPositionTracker;->mLastObservedTouchTime:J

    .line 131
    const/4 v0, 0x0

    iput-short v0, p0, Lcom/android/server/display/AutomaticBrightnessTouchHelper$TouchPositionTracker;->mPointerIndexTriggerBitMask:S

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/AutomaticBrightnessTouchHelper$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/display/AutomaticBrightnessTouchHelper$1;

    .line 121
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessTouchHelper$TouchPositionTracker;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/display/AutomaticBrightnessTouchHelper$TouchPositionTracker;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessTouchHelper$TouchPositionTracker;

    .line 121
    iget-wide v0, p0, Lcom/android/server/display/AutomaticBrightnessTouchHelper$TouchPositionTracker;->mLastObservedTouchTime:J

    return-wide v0
.end method


# virtual methods
.method getTouchStatus()I
    .registers 4

    .line 175
    # getter for: Lcom/android/server/display/AutomaticBrightnessTouchHelper;->DEBUG:Z
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->access$200()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 176
    const-string v0, "AutomaticBrightnessTouchHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "touch status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessTouchHelper$TouchPositionTracker;->mTouchStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_1f
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessTouchHelper$TouchPositionTracker;->mTouchStatus:I

    return v0
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .registers 12
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 183
    invoke-virtual {p1}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_115

    .line 184
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 185
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 186
    .local v1, "mPointerCount":I
    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 188
    .local v2, "mPointerCoords":Landroid/view/MotionEvent$PointerCoords;
    # getter for: Lcom/android/server/display/AutomaticBrightnessTouchHelper;->DEBUG:Z
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->access$200()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_43

    .line 189
    move v3, v4

    .line 189
    .local v3, "i":I
    :goto_1b
    if-ge v3, v1, :cond_43

    .line 190
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 191
    .local v5, "mPointerId":I
    const-string v6, "AutomaticBrightnessTouchHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "touch onPointerEvent: index: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", id:  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .end local v5    # "mPointerId":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 195
    .end local v3    # "i":I
    :cond_43
    and-int/lit16 v3, v0, 0xff

    const/16 v5, 0x8

    const/4 v6, 0x1

    packed-switch v3, :pswitch_data_118

    .line 225
    # getter for: Lcom/android/server/display/AutomaticBrightnessTouchHelper;->DEBUG:Z
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->access$200()Z

    move-result v3

    if-eqz v3, :cond_115

    .line 226
    const-string v3, "AutomaticBrightnessTouchHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "touch onPointerEvent action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "action":I
    .end local v1    # "mPointerCount":I
    .end local v2    # "mPointerCoords":Landroid/view/MotionEvent$PointerCoords;
    goto/16 :goto_115

    .line 207
    .restart local v0    # "action":I
    .restart local v1    # "mPointerCount":I
    .restart local v2    # "mPointerCoords":Landroid/view/MotionEvent$PointerCoords;
    :pswitch_6a
    if-ne v0, v6, :cond_99

    .line 208
    # getter for: Lcom/android/server/display/AutomaticBrightnessTouchHelper;->DEBUG:Z
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->access$200()Z

    move-result v3

    if-eqz v3, :cond_8b

    .line 209
    const-string v3, "AutomaticBrightnessTouchHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "touch onPointerEvent ACTION_UP, mTouchStatus = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/display/AutomaticBrightnessTouchHelper$TouchPositionTracker;->mTouchStatus:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_8b
    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessTouchHelper$TouchPositionTracker;->mTouchStatus:I

    if-ne v3, v6, :cond_95

    .line 212
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/display/AutomaticBrightnessTouchHelper$TouchPositionTracker;->mLastObservedTouchTime:J

    .line 214
    :cond_95
    iput v4, p0, Lcom/android/server/display/AutomaticBrightnessTouchHelper$TouchPositionTracker;->mTouchStatus:I

    goto/16 :goto_115

    .line 216
    :cond_99
    iget-short v3, p0, Lcom/android/server/display/AutomaticBrightnessTouchHelper$TouchPositionTracker;->mPointerIndexTriggerBitMask:S

    const v4, 0xff00

    and-int v6, v0, v4

    shr-int/2addr v6, v5

    not-int v6, v6

    and-int/2addr v3, v6

    int-to-short v3, v3

    iput-short v3, p0, Lcom/android/server/display/AutomaticBrightnessTouchHelper$TouchPositionTracker;->mPointerIndexTriggerBitMask:S

    .line 218
    # getter for: Lcom/android/server/display/AutomaticBrightnessTouchHelper;->DEBUG:Z
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->access$200()Z

    move-result v3

    if-eqz v3, :cond_115

    .line 219
    const-string v3, "AutomaticBrightnessTouchHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "touch onPointerEvent ACTION_POINTER_UP: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/2addr v4, v0

    shr-int/2addr v4, v5

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_115

    .line 198
    :pswitch_cb
    move v3, v4

    .line 198
    .restart local v3    # "i":I
    :goto_cc
    if-ge v3, v1, :cond_114

    .line 199
    invoke-virtual {p1, v3, v2}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 200
    # getter for: Lcom/android/server/display/AutomaticBrightnessTouchHelper;->DEBUG:Z
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->access$200()Z

    move-result v7

    if-eqz v7, :cond_10a

    .line 201
    const-string v7, "AutomaticBrightnessTouchHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "touch getPointerCoords: ORIENTATION = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, ", x = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {v2, v4}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, ", y = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 201
    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_10a
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    invoke-virtual {p0, v2, v7}, Lcom/android/server/display/AutomaticBrightnessTouchHelper$TouchPositionTracker;->updatePosition(Landroid/view/MotionEvent$PointerCoords;I)V

    .line 198
    add-int/lit8 v3, v3, 0x1

    goto :goto_cc

    .line 205
    .end local v3    # "i":I
    :cond_114
    nop

    .line 230
    .end local v0    # "action":I
    .end local v1    # "mPointerCount":I
    .end local v2    # "mPointerCoords":Landroid/view/MotionEvent$PointerCoords;
    :cond_115
    :goto_115
    return-void

    nop

    nop

    :pswitch_data_118
    .packed-switch 0x0
        :pswitch_cb
        :pswitch_6a
        :pswitch_cb
    .end packed-switch
.end method

.method updatePosition(Landroid/view/MotionEvent$PointerCoords;I)V
    .registers 10
    .param p1, "mPointerCoords"    # Landroid/view/MotionEvent$PointerCoords;
    .param p2, "pointerId"    # I

    .line 144
    # getter for: Lcom/android/server/display/AutomaticBrightnessTouchHelper;->DEBUG:Z
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->access$200()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x1

    if-eqz v0, :cond_4b

    .line 145
    const-string v0, "AutomaticBrightnessTouchHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "touch event updatePosition [ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", Ori: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, "],  { "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 145
    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_4b
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    move-result v0

    const/4 v4, 0x0

    cmpl-float v0, v0, v4

    if-nez v0, :cond_68

    .line 150
    # getter for: Lcom/android/server/display/AutomaticBrightnessTouchHelper;->TOUCHLEFT:F
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->access$300()F

    move-result v0

    # getter for: Lcom/android/server/display/AutomaticBrightnessTouchHelper;->TOUCHRIGHT:F
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->access$400()F

    move-result v2

    # getter for: Lcom/android/server/display/AutomaticBrightnessTouchHelper;->TOUCHTOP:F
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->access$500()F

    move-result v4

    # getter for: Lcom/android/server/display/AutomaticBrightnessTouchHelper;->TOUCHBOTTOM:F
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->access$600()F

    move-result v5

    invoke-virtual {p0, v0, v2, v4, v5}, Lcom/android/server/display/AutomaticBrightnessTouchHelper$TouchPositionTracker;->updateTouchBorder(FFFF)V

    goto :goto_b3

    .line 151
    :cond_68
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_8e

    .line 152
    # getter for: Lcom/android/server/display/AutomaticBrightnessTouchHelper;->TOUCHTOP:F
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->access$500()F

    move-result v0

    # getter for: Lcom/android/server/display/AutomaticBrightnessTouchHelper;->TOUCHBOTTOM:F
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->access$600()F

    move-result v2

    # getter for: Lcom/android/server/display/AutomaticBrightnessTouchHelper;->SCREEN_WIDTH:F
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->access$700()F

    move-result v4

    # getter for: Lcom/android/server/display/AutomaticBrightnessTouchHelper;->TOUCHRIGHT:F
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->access$400()F

    move-result v5

    sub-float/2addr v4, v5

    # getter for: Lcom/android/server/display/AutomaticBrightnessTouchHelper;->SCREEN_WIDTH:F
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->access$700()F

    move-result v5

    # getter for: Lcom/android/server/display/AutomaticBrightnessTouchHelper;->TOUCHLEFT:F
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->access$300()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {p0, v0, v2, v4, v5}, Lcom/android/server/display/AutomaticBrightnessTouchHelper$TouchPositionTracker;->updateTouchBorder(FFFF)V

    goto :goto_b3

    .line 153
    :cond_8e
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_b3

    .line 154
    # getter for: Lcom/android/server/display/AutomaticBrightnessTouchHelper;->SCREEN_HEIGHT:F
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->access$800()F

    move-result v0

    # getter for: Lcom/android/server/display/AutomaticBrightnessTouchHelper;->TOUCHBOTTOM:F
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->access$600()F

    move-result v2

    sub-float/2addr v0, v2

    # getter for: Lcom/android/server/display/AutomaticBrightnessTouchHelper;->SCREEN_HEIGHT:F
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->access$800()F

    move-result v2

    # getter for: Lcom/android/server/display/AutomaticBrightnessTouchHelper;->TOUCHTOP:F
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->access$500()F

    move-result v4

    sub-float/2addr v2, v4

    # getter for: Lcom/android/server/display/AutomaticBrightnessTouchHelper;->TOUCHLEFT:F
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->access$300()F

    move-result v4

    # getter for: Lcom/android/server/display/AutomaticBrightnessTouchHelper;->TOUCHRIGHT:F
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->access$400()F

    move-result v5

    invoke-virtual {p0, v0, v2, v4, v5}, Lcom/android/server/display/AutomaticBrightnessTouchHelper$TouchPositionTracker;->updateTouchBorder(FFFF)V

    .line 157
    :cond_b3
    :goto_b3
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    move-result v0

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessTouchHelper$TouchPositionTracker;->mTouchLeft:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_109

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    move-result v0

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessTouchHelper$TouchPositionTracker;->mTouchRight:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_109

    .line 158
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    move-result v0

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessTouchHelper$TouchPositionTracker;->mTouchTop:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_109

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    move-result v0

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessTouchHelper$TouchPositionTracker;->mTouchBottom:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_109

    .line 159
    iget-short v0, p0, Lcom/android/server/display/AutomaticBrightnessTouchHelper$TouchPositionTracker;->mPointerIndexTriggerBitMask:S

    shl-int v2, v3, p2

    or-int/2addr v0, v2

    int-to-short v0, v0

    iput-short v0, p0, Lcom/android/server/display/AutomaticBrightnessTouchHelper$TouchPositionTracker;->mPointerIndexTriggerBitMask:S

    .line 160
    # getter for: Lcom/android/server/display/AutomaticBrightnessTouchHelper;->DEBUG:Z
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->access$200()Z

    move-result v0

    if-eqz v0, :cond_112

    .line 161
    const-string v0, "AutomaticBrightnessTouchHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "touch: { time: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/display/AutomaticBrightnessTouchHelper$TouchPositionTracker;->mLastObservedTouchTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "}"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_112

    .line 164
    :cond_109
    iget-short v0, p0, Lcom/android/server/display/AutomaticBrightnessTouchHelper$TouchPositionTracker;->mPointerIndexTriggerBitMask:S

    shl-int v2, v3, p2

    not-int v2, v2

    and-int/2addr v0, v2

    int-to-short v0, v0

    iput-short v0, p0, Lcom/android/server/display/AutomaticBrightnessTouchHelper$TouchPositionTracker;->mPointerIndexTriggerBitMask:S

    .line 167
    :cond_112
    :goto_112
    iget-short v0, p0, Lcom/android/server/display/AutomaticBrightnessTouchHelper$TouchPositionTracker;->mPointerIndexTriggerBitMask:S

    if-eqz v0, :cond_119

    .line 168
    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessTouchHelper$TouchPositionTracker;->mTouchStatus:I

    goto :goto_11b

    .line 170
    :cond_119
    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessTouchHelper$TouchPositionTracker;->mTouchStatus:I

    .line 172
    :goto_11b
    return-void
.end method

.method updateTouchBorder(FFFF)V
    .registers 7
    .param p1, "left"    # F
    .param p2, "right"    # F
    .param p3, "top"    # F
    .param p4, "bottom"    # F

    .line 134
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessTouchHelper$TouchPositionTracker;->mTouchLeft:F

    .line 135
    iput p2, p0, Lcom/android/server/display/AutomaticBrightnessTouchHelper$TouchPositionTracker;->mTouchRight:F

    .line 136
    iput p3, p0, Lcom/android/server/display/AutomaticBrightnessTouchHelper$TouchPositionTracker;->mTouchTop:F

    .line 137
    iput p4, p0, Lcom/android/server/display/AutomaticBrightnessTouchHelper$TouchPositionTracker;->mTouchBottom:F

    .line 138
    # getter for: Lcom/android/server/display/AutomaticBrightnessTouchHelper;->DEBUG:Z
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->access$200()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 139
    const-string v0, "AutomaticBrightnessTouchHelper"

    const-string/jumbo v1, "updateTouchBorder!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_16
    return-void
.end method
