.class final Lcom/android/server/accessibility/MagnificationGestureHandler$DelegatingState;
.super Ljava/lang/Object;
.source "MagnificationGestureHandler.java"

# interfaces
.implements Lcom/android/server/accessibility/MagnificationGestureHandler$State;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/MagnificationGestureHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DelegatingState"
.end annotation


# instance fields
.field public mLastDelegatedDownEventTime:J

.field final synthetic this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/MagnificationGestureHandler;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/accessibility/MagnificationGestureHandler;

    .line 583
    iput-object p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DelegatingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 594
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1b

    packed-switch v0, :pswitch_data_38

    goto :goto_25

    .line 601
    :pswitch_b
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DelegatingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DelegatingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v1, v1, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDelegatingState:Lcom/android/server/accessibility/MagnificationGestureHandler$DelegatingState;

    # invokes: Lcom/android/server/accessibility/MagnificationGestureHandler;->transitionTo(Lcom/android/server/accessibility/MagnificationGestureHandler$State;)V
    invoke-static {v0, v1}, Lcom/android/server/accessibility/MagnificationGestureHandler;->access$200(Lcom/android/server/accessibility/MagnificationGestureHandler;Lcom/android/server/accessibility/MagnificationGestureHandler$State;)V

    .line 602
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DelegatingState;->mLastDelegatedDownEventTime:J

    goto :goto_25

    .line 597
    :cond_1b
    :pswitch_1b
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DelegatingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DelegatingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v1, v1, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDetectingState:Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;

    # invokes: Lcom/android/server/accessibility/MagnificationGestureHandler;->transitionTo(Lcom/android/server/accessibility/MagnificationGestureHandler$State;)V
    invoke-static {v0, v1}, Lcom/android/server/accessibility/MagnificationGestureHandler;->access$200(Lcom/android/server/accessibility/MagnificationGestureHandler;Lcom/android/server/accessibility/MagnificationGestureHandler$State;)V

    .line 598
    nop

    .line 606
    :goto_25
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DelegatingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->getNext()Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 613
    iget-wide v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DelegatingState;->mLastDelegatedDownEventTime:J

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setDownTime(J)V

    .line 614
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DelegatingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    # invokes: Lcom/android/server/accessibility/MagnificationGestureHandler;->dispatchTransformedEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/accessibility/MagnificationGestureHandler;->access$400(Lcom/android/server/accessibility/MagnificationGestureHandler;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 616
    :cond_37
    return-void

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_b
        :pswitch_1b
    .end packed-switch
.end method
