.class final Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SystemGesturesPointerEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/SystemGesturesPointerEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FlingGestureDetector"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/SystemGesturesPointerEventListener;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/SystemGesturesPointerEventListener;)V
    .registers 2

    .line 249
    iput-object p1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/SystemGesturesPointerEventListener;Lcom/android/server/policy/SystemGesturesPointerEventListener$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/policy/SystemGesturesPointerEventListener;
    .param p2, "x1"    # Lcom/android/server/policy/SystemGesturesPointerEventListener$1;

    .line 249
    invoke-direct {p0, p1}, Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;-><init>(Lcom/android/server/policy/SystemGesturesPointerEventListener;)V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 20
    .param p1, "down"    # Landroid/view/MotionEvent;
    .param p2, "up"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    move-object v0, p0

    .line 260
    iget-object v1, v0, Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    # getter for: Lcom/android/server/policy/SystemGesturesPointerEventListener;->mOverscroller:Landroid/widget/OverScroller;
    invoke-static {v1}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->access$100(Lcom/android/server/policy/SystemGesturesPointerEventListener;)Landroid/widget/OverScroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 261
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 263
    .local v1, "now":J
    iget-object v3, v0, Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    # getter for: Lcom/android/server/policy/SystemGesturesPointerEventListener;->mLastFlingTime:J
    invoke-static {v3}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->access$200(Lcom/android/server/policy/SystemGesturesPointerEventListener;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const/4 v4, 0x1

    if-eqz v3, :cond_31

    iget-object v3, v0, Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    # getter for: Lcom/android/server/policy/SystemGesturesPointerEventListener;->mLastFlingTime:J
    invoke-static {v3}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->access$200(Lcom/android/server/policy/SystemGesturesPointerEventListener;)J

    move-result-wide v5

    const-wide/16 v7, 0x1388

    add-long/2addr v5, v7

    cmp-long v3, v1, v5

    if-lez v3, :cond_31

    .line 264
    iget-object v3, v0, Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    # getter for: Lcom/android/server/policy/SystemGesturesPointerEventListener;->mOverscroller:Landroid/widget/OverScroller;
    invoke-static {v3}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->access$100(Lcom/android/server/policy/SystemGesturesPointerEventListener;)Landroid/widget/OverScroller;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 266
    :cond_31
    iget-object v3, v0, Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    # getter for: Lcom/android/server/policy/SystemGesturesPointerEventListener;->mOverscroller:Landroid/widget/OverScroller;
    invoke-static {v3}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->access$100(Lcom/android/server/policy/SystemGesturesPointerEventListener;)Landroid/widget/OverScroller;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v3, p3

    float-to-int v8, v3

    move/from16 v14, p4

    float-to-int v9, v14

    const/high16 v10, -0x80000000

    const v11, 0x7fffffff

    const/high16 v12, -0x80000000

    const v13, 0x7fffffff

    invoke-virtual/range {v5 .. v13}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 268
    iget-object v5, v0, Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    # getter for: Lcom/android/server/policy/SystemGesturesPointerEventListener;->mOverscroller:Landroid/widget/OverScroller;
    invoke-static {v5}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->access$100(Lcom/android/server/policy/SystemGesturesPointerEventListener;)Landroid/widget/OverScroller;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/OverScroller;->getDuration()I

    move-result v5

    .line 269
    .local v5, "duration":I
    const/16 v6, 0x1388

    if-le v5, v6, :cond_5c

    .line 270
    const/16 v5, 0x1388

    .line 272
    :cond_5c
    iget-object v6, v0, Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    # setter for: Lcom/android/server/policy/SystemGesturesPointerEventListener;->mLastFlingTime:J
    invoke-static {v6, v1, v2}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->access$202(Lcom/android/server/policy/SystemGesturesPointerEventListener;J)J

    .line 273
    iget-object v6, v0, Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    # getter for: Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;
    invoke-static {v6}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->access$300(Lcom/android/server/policy/SystemGesturesPointerEventListener;)Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    move-result-object v6

    invoke-interface {v6, v5}, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;->onFling(I)V

    .line 274
    return v4
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 7
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .line 280
    iget-object v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    # getter for: Lcom/android/server/policy/SystemGesturesPointerEventListener;->mScrollFired:Z
    invoke-static {v0}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->access$400(Lcom/android/server/policy/SystemGesturesPointerEventListener;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_17

    .line 281
    iget-object v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    # getter for: Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;
    invoke-static {v0}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->access$300(Lcom/android/server/policy/SystemGesturesPointerEventListener;)Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;->onScroll(Z)V

    .line 282
    iget-object v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    # setter for: Lcom/android/server/policy/SystemGesturesPointerEventListener;->mScrollFired:Z
    invoke-static {v0, v1}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->access$402(Lcom/android/server/policy/SystemGesturesPointerEventListener;Z)Z

    .line 284
    :cond_17
    return v1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 252
    iget-object v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    # getter for: Lcom/android/server/policy/SystemGesturesPointerEventListener;->mOverscroller:Landroid/widget/OverScroller;
    invoke-static {v0}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->access$100(Lcom/android/server/policy/SystemGesturesPointerEventListener;)Landroid/widget/OverScroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_16

    .line 253
    iget-object v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    # getter for: Lcom/android/server/policy/SystemGesturesPointerEventListener;->mOverscroller:Landroid/widget/OverScroller;
    invoke-static {v0}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->access$100(Lcom/android/server/policy/SystemGesturesPointerEventListener;)Landroid/widget/OverScroller;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 255
    :cond_16
    return v1
.end method
