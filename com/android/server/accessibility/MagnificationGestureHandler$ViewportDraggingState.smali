.class final Lcom/android/server/accessibility/MagnificationGestureHandler$ViewportDraggingState;
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
    name = "ViewportDraggingState"
.end annotation


# instance fields
.field private mLastMoveOutsideMagnifiedRegion:Z

.field mZoomedInBeforeDrag:Z

.field final synthetic this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/MagnificationGestureHandler;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/accessibility/MagnificationGestureHandler;

    .line 521
    iput-object p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$ViewportDraggingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 571
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$ViewportDraggingState;->mLastMoveOutsideMagnifiedRegion:Z

    .line 572
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 10
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 529
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 530
    .local v0, "action":I
    packed-switch v0, :pswitch_data_78

    :pswitch_7
    goto :goto_77

    .line 532
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$ViewportDraggingState;->clear()V

    .line 533
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$ViewportDraggingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$ViewportDraggingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v2, v2, Lcom/android/server/accessibility/MagnificationGestureHandler;->mPanningScalingState:Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;

    # invokes: Lcom/android/server/accessibility/MagnificationGestureHandler;->transitionTo(Lcom/android/server/accessibility/MagnificationGestureHandler$State;)V
    invoke-static {v1, v2}, Lcom/android/server/accessibility/MagnificationGestureHandler;->access$200(Lcom/android/server/accessibility/MagnificationGestureHandler;Lcom/android/server/accessibility/MagnificationGestureHandler$State;)V

    .line 535
    goto :goto_77

    .line 537
    :pswitch_15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3e

    .line 540
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 541
    .local v1, "eventX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 542
    .local v3, "eventY":F
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$ViewportDraggingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v4, v4, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    invoke-virtual {v4, v1, v3}, Lcom/android/server/accessibility/MagnificationController;->magnificationRegionContains(FF)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 543
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$ViewportDraggingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v2, v2, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    iget-boolean v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$ViewportDraggingState;->mLastMoveOutsideMagnifiedRegion:Z

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/android/server/accessibility/MagnificationController;->setCenter(FFZI)Z

    .line 546
    iput-boolean v5, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$ViewportDraggingState;->mLastMoveOutsideMagnifiedRegion:Z

    goto :goto_3d

    .line 548
    :cond_3b
    iput-boolean v2, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$ViewportDraggingState;->mLastMoveOutsideMagnifiedRegion:Z

    .line 551
    .end local v1    # "eventX":F
    .end local v3    # "eventY":F
    :goto_3d
    goto :goto_77

    .line 538
    :cond_3e
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Should have one pointer down."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 555
    :pswitch_46
    iget-boolean v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$ViewportDraggingState;->mZoomedInBeforeDrag:Z

    if-nez v1, :cond_4f

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$ViewportDraggingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    # invokes: Lcom/android/server/accessibility/MagnificationGestureHandler;->zoomOff()V
    invoke-static {v1}, Lcom/android/server/accessibility/MagnificationGestureHandler;->access$300(Lcom/android/server/accessibility/MagnificationGestureHandler;)V

    .line 556
    :cond_4f
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$ViewportDraggingState;->clear()V

    .line 557
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$ViewportDraggingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$ViewportDraggingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v2, v2, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDetectingState:Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;

    # invokes: Lcom/android/server/accessibility/MagnificationGestureHandler;->transitionTo(Lcom/android/server/accessibility/MagnificationGestureHandler$State;)V
    invoke-static {v1, v2}, Lcom/android/server/accessibility/MagnificationGestureHandler;->access$200(Lcom/android/server/accessibility/MagnificationGestureHandler;Lcom/android/server/accessibility/MagnificationGestureHandler$State;)V

    .line 559
    goto :goto_77

    .line 563
    :pswitch_5c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected event type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    invoke-static {v0}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 567
    :goto_77
    return-void

    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_5c
        :pswitch_46
        :pswitch_15
        :pswitch_46
        :pswitch_7
        :pswitch_8
        :pswitch_5c
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewportDraggingState{mZoomedInBeforeDrag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$ViewportDraggingState;->mZoomedInBeforeDrag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mLastMoveOutsideMagnifiedRegion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$ViewportDraggingState;->mLastMoveOutsideMagnifiedRegion:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
