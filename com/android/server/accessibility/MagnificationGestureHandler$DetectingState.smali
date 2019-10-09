.class final Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;
.super Ljava/lang/Object;
.source "MagnificationGestureHandler.java"

# interfaces
.implements Lcom/android/server/accessibility/MagnificationGestureHandler$State;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/MagnificationGestureHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DetectingState"
.end annotation


# static fields
.field private static final MESSAGE_ON_TRIPLE_TAP_AND_HOLD:I = 0x1

.field private static final MESSAGE_TRANSITION_TO_DELEGATING_STATE:I = 0x2


# instance fields
.field private mDelayedEventQueue:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

.field mHandler:Landroid/os/Handler;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mLastDown:Landroid/view/MotionEvent;

.field private mLastUp:Landroid/view/MotionEvent;

.field final mLongTapMinDelay:I

.field final mMultiTapMaxDelay:I

.field final mMultiTapMaxDistance:I

.field private mPreLastDown:Landroid/view/MotionEvent;

.field private mPreLastUp:Landroid/view/MotionEvent;

.field mShortcutTriggered:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field final mSwipeMinDistance:I

.field final synthetic this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/MagnificationGestureHandler;Landroid/content/Context;)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/server/accessibility/MagnificationGestureHandler;
    .param p2, "context"    # Landroid/content/Context;

    .line 643
    iput-object p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 641
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mHandler:Landroid/os/Handler;

    .line 644
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mLongTapMinDelay:I

    .line 645
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    .line 646
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0093

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mMultiTapMaxDelay:I

    .line 648
    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mSwipeMinDistance:I

    .line 649
    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mMultiTapMaxDistance:I

    .line 650
    return-void
.end method

.method private cacheDelayedMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 829
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_11

    .line 830
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mPreLastDown:Landroid/view/MotionEvent;

    .line 831
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    goto :goto_22

    .line 832
    :cond_11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_22

    .line 833
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mLastUp:Landroid/view/MotionEvent;

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mPreLastUp:Landroid/view/MotionEvent;

    .line 834
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mLastUp:Landroid/view/MotionEvent;

    .line 837
    :cond_22
    :goto_22
    invoke-static {p1, p2, p3}, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->obtain(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    move-result-object v0

    .line 839
    .local v0, "info":Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    if-nez v1, :cond_2d

    .line 840
    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    goto :goto_3d

    .line 842
    :cond_2d
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    .line 843
    .local v1, "tail":Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;
    :goto_2f
    # getter for: Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->mNext:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;
    invoke-static {v1}, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->access$500(Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;)Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    move-result-object v2

    if-eqz v2, :cond_3a

    .line 844
    # getter for: Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->mNext:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;
    invoke-static {v1}, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->access$500(Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;)Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    move-result-object v1

    goto :goto_2f

    .line 846
    :cond_3a
    # setter for: Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->mNext:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;
    invoke-static {v1, v0}, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->access$502(Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;)Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    .line 848
    .end local v1    # "tail":Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;
    :goto_3d
    return-void
.end method

.method private clearDelayedMotionEvents()V
    .registers 3

    .line 862
    :goto_0
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    if-eqz v0, :cond_10

    .line 863
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    .line 864
    .local v0, "info":Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;
    # getter for: Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->mNext:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;
    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->access$500(Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;)Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    .line 865
    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->recycle()V

    .line 866
    .end local v0    # "info":Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;
    goto :goto_0

    .line 867
    :cond_10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mPreLastDown:Landroid/view/MotionEvent;

    .line 868
    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mPreLastUp:Landroid/view/MotionEvent;

    .line 869
    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    .line 870
    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mLastUp:Landroid/view/MotionEvent;

    .line 871
    return-void
.end method

.method private isMultiTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "first"    # Landroid/view/MotionEvent;
    .param p2, "second"    # Landroid/view/MotionEvent;

    .line 772
    iget v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mMultiTapMaxDelay:I

    iget v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mMultiTapMaxDistance:I

    invoke-static {p1, p2, v0, v1}, Lcom/android/server/accessibility/GestureUtils;->isMultiTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;II)Z

    move-result v0

    return v0
.end method

.method private onTripleTap(Landroid/view/MotionEvent;)V
    .registers 5
    .param p1, "up"    # Landroid/view/MotionEvent;

    .line 885
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->clear()V

    .line 888
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v0, v0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 889
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    # invokes: Lcom/android/server/accessibility/MagnificationGestureHandler;->zoomOff()V
    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->access$300(Lcom/android/server/accessibility/MagnificationGestureHandler;)V

    goto :goto_20

    .line 891
    :cond_13
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    # invokes: Lcom/android/server/accessibility/MagnificationGestureHandler;->zoomOn(FF)V
    invoke-static {v0, v1, v2}, Lcom/android/server/accessibility/MagnificationGestureHandler;->access$700(Lcom/android/server/accessibility/MagnificationGestureHandler;FF)V

    .line 893
    :goto_20
    return-void
.end method

.method private removePendingDelayedMessages()V
    .registers 3

    .line 823
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 824
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 825
    return-void
.end method

.method private sendDelayedMotionEvents()V
    .registers 7

    .line 851
    :goto_0
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    if-eqz v0, :cond_1f

    .line 852
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    .line 853
    .local v0, "info":Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;
    # getter for: Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->mNext:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;
    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->access$500(Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;)Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    .line 855
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v2, v2, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDelegatingState:Lcom/android/server/accessibility/MagnificationGestureHandler$DelegatingState;

    iget-object v3, v0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->event:Landroid/view/MotionEvent;

    iget-object v4, v0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->rawEvent:Landroid/view/MotionEvent;

    iget v5, v0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->policyFlags:I

    # invokes: Lcom/android/server/accessibility/MagnificationGestureHandler;->handleEventWith(Lcom/android/server/accessibility/MagnificationGestureHandler$State;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/server/accessibility/MagnificationGestureHandler;->access$600(Lcom/android/server/accessibility/MagnificationGestureHandler;Lcom/android/server/accessibility/MagnificationGestureHandler$State;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 857
    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->recycle()V

    .line 858
    .end local v0    # "info":Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;
    goto :goto_0

    .line 859
    :cond_1f
    return-void
.end method

.method private timeBetween(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)J
    .registers 7
    .param p1, "a"    # Landroid/view/MotionEvent;
    .param p2, "b"    # Landroid/view/MotionEvent;

    .line 780
    if-nez p1, :cond_7

    if-nez p2, :cond_7

    const-wide/16 v0, 0x0

    return-wide v0

    .line 781
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->timeOf(Landroid/view/MotionEvent;)J

    move-result-wide v0

    invoke-direct {p0, p2}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->timeOf(Landroid/view/MotionEvent;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private timeOf(Landroid/view/MotionEvent;)J
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 793
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    goto :goto_9

    :cond_7
    const-wide/high16 v0, -0x8000000000000000L

    :goto_9
    return-wide v0
.end method


# virtual methods
.method public afterLongTapTimeoutTransitionToDraggingState(Landroid/view/MotionEvent;)V
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 809
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mHandler:Landroid/os/Handler;

    .line 811
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    .line 810
    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 812
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    .line 809
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 813
    return-void
.end method

.method public afterMultiTapTimeoutTransitionToDelegatingState()V
    .registers 5

    .line 802
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mMultiTapMaxDelay:I

    int-to-long v1, v1

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 805
    return-void
.end method

.method public clear()V
    .registers 2

    .line 817
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->setShortcutTriggered(Z)V

    .line 818
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->removePendingDelayedMessages()V

    .line 819
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->clearDelayedMotionEvents()V

    .line 820
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 6
    .param p1, "message"    # Landroid/os/Message;

    .line 654
    iget v0, p1, Landroid/os/Message;->what:I

    .line 655
    .local v0, "type":I
    packed-switch v0, :pswitch_data_2e

    .line 667
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown message type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 663
    :pswitch_1c
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->transitionToDelegatingStateAndClear()V

    .line 665
    goto :goto_2b

    .line 657
    :pswitch_20
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/MotionEvent;

    .line 658
    .local v1, "down":Landroid/view/MotionEvent;
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->transitionToViewportDraggingStateAndClear(Landroid/view/MotionEvent;)V

    .line 659
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 661
    .end local v1    # "down":Landroid/view/MotionEvent;
    nop

    .line 670
    :goto_2b
    const/4 v1, 0x1

    return v1

    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_20
        :pswitch_1c
    .end packed-switch
.end method

.method public isFingerDown()Z
    .registers 2

    .line 776
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isMultiTapTriggered(I)Z
    .registers 6
    .param p1, "numTaps"    # I

    .line 763
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mShortcutTriggered:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->tapCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    if-lt v0, p1, :cond_10

    move v1, v2

    nop

    :cond_10
    return v1

    .line 765
    :cond_11
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-boolean v0, v0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDetectTripleTap:Z

    if-eqz v0, :cond_33

    .line 766
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->tapCount()I

    move-result v0

    if-lt v0, p1, :cond_33

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mPreLastDown:Landroid/view/MotionEvent;

    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    .line 767
    invoke-direct {p0, v0, v3}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->isMultiTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mPreLastUp:Landroid/view/MotionEvent;

    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mLastUp:Landroid/view/MotionEvent;

    .line 768
    invoke-direct {p0, v0, v3}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->isMultiTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 765
    move v1, v2

    goto :goto_34

    .line 768
    :cond_33
    nop

    .line 765
    :goto_34
    return v1
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 10
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 675
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->cacheDelayedMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 676
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_c3

    const/4 v1, 0x2

    packed-switch v0, :pswitch_data_e0

    goto/16 :goto_de

    .line 716
    :pswitch_10
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->isFingerDown()Z

    move-result v0

    if-eqz v0, :cond_de

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    .line 717
    invoke-static {v0, p1}, Lcom/android/server/accessibility/GestureUtils;->distance(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)D

    move-result-wide v2

    iget v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mSwipeMinDistance:I

    int-to-double v4, v0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_de

    .line 724
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->isMultiTapTriggered(I)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 725
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->transitionToViewportDraggingStateAndClear(Landroid/view/MotionEvent;)V

    goto/16 :goto_de

    .line 727
    :cond_2e
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->transitionToDelegatingStateAndClear()V

    goto/16 :goto_de

    .line 734
    :pswitch_33
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 736
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v0, v0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    .line 737
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 736
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/MagnificationController;->magnificationRegionContains(FF)Z

    move-result v0

    if-nez v0, :cond_50

    .line 739
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->transitionToDelegatingStateAndClear()V

    goto/16 :goto_de

    .line 741
    :cond_50
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->isMultiTapTriggered(I)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 743
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->onTripleTap(Landroid/view/MotionEvent;)V

    goto/16 :goto_de

    .line 745
    :cond_5c
    nop

    .line 747
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->isFingerDown()Z

    move-result v0

    if-eqz v0, :cond_de

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mLastUp:Landroid/view/MotionEvent;

    .line 749
    invoke-direct {p0, v0, v1}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->timeBetween(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)J

    move-result-wide v0

    iget v2, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mLongTapMinDelay:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_81

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mLastUp:Landroid/view/MotionEvent;

    .line 750
    invoke-static {v0, v1}, Lcom/android/server/accessibility/GestureUtils;->distance(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)D

    move-result-wide v0

    iget v2, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mSwipeMinDistance:I

    int-to-double v2, v2

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_de

    .line 752
    :cond_81
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->transitionToDelegatingStateAndClear()V

    goto :goto_de

    .line 679
    :pswitch_85
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 681
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v0, v0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    .line 682
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 681
    invoke-virtual {v0, v2, v3}, Lcom/android/server/accessibility/MagnificationController;->magnificationRegionContains(FF)Z

    move-result v0

    if-nez v0, :cond_a0

    .line 684
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->transitionToDelegatingStateAndClear()V

    goto :goto_de

    .line 686
    :cond_a0
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->isMultiTapTriggered(I)Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 689
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->afterLongTapTimeoutTransitionToDraggingState(Landroid/view/MotionEvent;)V

    goto :goto_de

    .line 691
    :cond_aa
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-boolean v0, v0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDetectTripleTap:Z

    if-nez v0, :cond_bf

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v0, v0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    .line 695
    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying()Z

    move-result v0

    if-eqz v0, :cond_bb

    goto :goto_bf

    .line 702
    :cond_bb
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->transitionToDelegatingStateAndClear()V

    .line 705
    goto :goto_de

    .line 697
    :cond_bf
    :goto_bf
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->afterMultiTapTimeoutTransitionToDelegatingState()V

    goto :goto_de

    .line 707
    :cond_c3
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v0, v0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying()Z

    move-result v0

    if-eqz v0, :cond_da

    .line 708
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v1, v1, Lcom/android/server/accessibility/MagnificationGestureHandler;->mPanningScalingState:Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;

    # invokes: Lcom/android/server/accessibility/MagnificationGestureHandler;->transitionTo(Lcom/android/server/accessibility/MagnificationGestureHandler$State;)V
    invoke-static {v0, v1}, Lcom/android/server/accessibility/MagnificationGestureHandler;->access$200(Lcom/android/server/accessibility/MagnificationGestureHandler;Lcom/android/server/accessibility/MagnificationGestureHandler$State;)V

    .line 709
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->clear()V

    goto :goto_de

    .line 711
    :cond_da
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->transitionToDelegatingStateAndClear()V

    .line 714
    nop

    .line 758
    :cond_de
    :goto_de
    return-void

    nop

    :pswitch_data_e0
    .packed-switch 0x0
        :pswitch_85
        :pswitch_33
        :pswitch_10
    .end packed-switch
.end method

.method setShortcutTriggered(Z)V
    .registers 3
    .param p1, "state"    # Z

    .line 922
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mShortcutTriggered:Z

    if-ne v0, p1, :cond_5

    .line 923
    return-void

    .line 927
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mShortcutTriggered:Z

    .line 928
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v0, v0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/MagnificationController;->setForceShowMagnifiableBounds(Z)V

    .line 929
    return-void
.end method

.method public tapCount()I
    .registers 3

    .line 797
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->countOf(Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 910
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DetectingState{tapCount()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 911
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->tapCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mShortcutTriggered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mShortcutTriggered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDelayedEventQueue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    .line 913
    invoke-static {v1}, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->toString(Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 910
    return-object v0
.end method

.method toggleShortcutTriggered()V
    .registers 2

    .line 918
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mShortcutTriggered:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->setShortcutTriggered(Z)V

    .line 919
    return-void
.end method

.method transitionToDelegatingStateAndClear()V
    .registers 3

    .line 874
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v1, v1, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDelegatingState:Lcom/android/server/accessibility/MagnificationGestureHandler$DelegatingState;

    # invokes: Lcom/android/server/accessibility/MagnificationGestureHandler;->transitionTo(Lcom/android/server/accessibility/MagnificationGestureHandler$State;)V
    invoke-static {v0, v1}, Lcom/android/server/accessibility/MagnificationGestureHandler;->access$200(Lcom/android/server/accessibility/MagnificationGestureHandler;Lcom/android/server/accessibility/MagnificationGestureHandler$State;)V

    .line 875
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->sendDelayedMotionEvents()V

    .line 876
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->removePendingDelayedMessages()V

    .line 877
    return-void
.end method

.method transitionToViewportDraggingStateAndClear(Landroid/view/MotionEvent;)V
    .registers 5
    .param p1, "down"    # Landroid/view/MotionEvent;

    .line 898
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->clear()V

    .line 900
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v0, v0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mViewportDraggingState:Lcom/android/server/accessibility/MagnificationGestureHandler$ViewportDraggingState;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v1, v1, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    .line 901
    invoke-virtual {v1}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/accessibility/MagnificationGestureHandler$ViewportDraggingState;->mZoomedInBeforeDrag:Z

    .line 903
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    # invokes: Lcom/android/server/accessibility/MagnificationGestureHandler;->zoomOn(FF)V
    invoke-static {v0, v1, v2}, Lcom/android/server/accessibility/MagnificationGestureHandler;->access$700(Lcom/android/server/accessibility/MagnificationGestureHandler;FF)V

    .line 905
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v1, v1, Lcom/android/server/accessibility/MagnificationGestureHandler;->mViewportDraggingState:Lcom/android/server/accessibility/MagnificationGestureHandler$ViewportDraggingState;

    # invokes: Lcom/android/server/accessibility/MagnificationGestureHandler;->transitionTo(Lcom/android/server/accessibility/MagnificationGestureHandler$State;)V
    invoke-static {v0, v1}, Lcom/android/server/accessibility/MagnificationGestureHandler;->access$200(Lcom/android/server/accessibility/MagnificationGestureHandler;Lcom/android/server/accessibility/MagnificationGestureHandler$State;)V

    .line 906
    return-void
.end method
