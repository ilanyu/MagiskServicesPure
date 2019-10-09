.class Lcom/android/server/gamepad/BsGamePadWorker$1;
.super Landroid/os/Handler;
.source "BsGamePadWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/gamepad/BsGamePadWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/gamepad/BsGamePadWorker;


# direct methods
.method constructor <init>(Lcom/android/server/gamepad/BsGamePadWorker;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/gamepad/BsGamePadWorker;

    .line 106
    iput-object p1, p0, Lcom/android/server/gamepad/BsGamePadWorker$1;->this$0:Lcom/android/server/gamepad/BsGamePadWorker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 109
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_ce

    goto/16 :goto_cd

    .line 134
    :pswitch_9
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 135
    .local v0, "touchid":I
    if-ltz v0, :cond_cd

    iget-object v1, p0, Lcom/android/server/gamepad/BsGamePadWorker$1;->this$0:Lcom/android/server/gamepad/BsGamePadWorker;

    # getter for: Lcom/android/server/gamepad/BsGamePadWorker;->mGamePadMapper:Landroid/util/ArrayMap;
    invoke-static {v1}, Lcom/android/server/gamepad/BsGamePadWorker;->access$700(Lcom/android/server/gamepad/BsGamePadWorker;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_cd

    .line 136
    new-instance v1, Lcom/android/server/gamepad/BsGamePadWorker$Pos;

    iget-object v3, p0, Lcom/android/server/gamepad/BsGamePadWorker$1;->this$0:Lcom/android/server/gamepad/BsGamePadWorker;

    iget-object v4, p0, Lcom/android/server/gamepad/BsGamePadWorker$1;->this$0:Lcom/android/server/gamepad/BsGamePadWorker;

    # getter for: Lcom/android/server/gamepad/BsGamePadWorker;->mGamePadMapper:Landroid/util/ArrayMap;
    invoke-static {v4}, Lcom/android/server/gamepad/BsGamePadWorker;->access$700(Lcom/android/server/gamepad/BsGamePadWorker;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/gamepad/BsGameKeyMap;

    invoke-virtual {v4}, Landroid/gamepad/BsGameKeyMap;->getCenterX()F

    move-result v4

    iget-object v5, p0, Lcom/android/server/gamepad/BsGamePadWorker$1;->this$0:Lcom/android/server/gamepad/BsGamePadWorker;

    .line 137
    # getter for: Lcom/android/server/gamepad/BsGamePadWorker;->mGamePadMapper:Landroid/util/ArrayMap;
    invoke-static {v5}, Lcom/android/server/gamepad/BsGamePadWorker;->access$700(Lcom/android/server/gamepad/BsGamePadWorker;)Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/gamepad/BsGameKeyMap;

    invoke-virtual {v5}, Landroid/gamepad/BsGameKeyMap;->getCenterY()F

    move-result v5

    invoke-direct {v1, v3, v4, v5}, Lcom/android/server/gamepad/BsGamePadWorker$Pos;-><init>(Lcom/android/server/gamepad/BsGamePadWorker;FF)V

    .line 138
    .local v1, "mouseUpPos":Lcom/android/server/gamepad/BsGamePadWorker$Pos;
    invoke-virtual {v1, v0}, Lcom/android/server/gamepad/BsGamePadWorker$Pos;->setTouchId(I)V

    .line 139
    iget-object v3, p0, Lcom/android/server/gamepad/BsGamePadWorker$1;->this$0:Lcom/android/server/gamepad/BsGamePadWorker;

    # invokes: Lcom/android/server/gamepad/BsGamePadWorker;->insertTouch(Lcom/android/server/gamepad/BsGamePadWorker$Pos;)I
    invoke-static {v3, v1}, Lcom/android/server/gamepad/BsGamePadWorker;->access$000(Lcom/android/server/gamepad/BsGamePadWorker;Lcom/android/server/gamepad/BsGamePadWorker$Pos;)I

    move-result v3

    .line 140
    .local v3, "mouseUpActionIndex":I
    iget-object v4, p0, Lcom/android/server/gamepad/BsGamePadWorker$1;->this$0:Lcom/android/server/gamepad/BsGamePadWorker;

    # invokes: Lcom/android/server/gamepad/BsGamePadWorker;->buildMotionEvent(II)Landroid/view/MotionEvent;
    invoke-static {v4, v3, v2}, Lcom/android/server/gamepad/BsGamePadWorker;->access$100(Lcom/android/server/gamepad/BsGamePadWorker;II)Landroid/view/MotionEvent;

    move-result-object v2

    .line 141
    .local v2, "mouseUpEvent":Landroid/view/MotionEvent;
    iget-object v4, p0, Lcom/android/server/gamepad/BsGamePadWorker$1;->this$0:Lcom/android/server/gamepad/BsGamePadWorker;

    # invokes: Lcom/android/server/gamepad/BsGamePadWorker;->fire(Landroid/view/MotionEvent;)V
    invoke-static {v4, v2}, Lcom/android/server/gamepad/BsGamePadWorker;->access$200(Lcom/android/server/gamepad/BsGamePadWorker;Landroid/view/MotionEvent;)V

    .line 142
    iget-object v4, p0, Lcom/android/server/gamepad/BsGamePadWorker$1;->this$0:Lcom/android/server/gamepad/BsGamePadWorker;

    const-wide/16 v5, -0x2001

    # &= operator for: Lcom/android/server/gamepad/BsGamePadWorker;->mGameButtonStatesBitMap:J
    invoke-static {v4, v5, v6}, Lcom/android/server/gamepad/BsGamePadWorker;->access$374(Lcom/android/server/gamepad/BsGamePadWorker;J)J

    .line 143
    .end local v1    # "mouseUpPos":Lcom/android/server/gamepad/BsGamePadWorker$Pos;
    .end local v2    # "mouseUpEvent":Landroid/view/MotionEvent;
    .end local v3    # "mouseUpActionIndex":I
    goto :goto_cd

    .line 126
    .end local v0    # "touchid":I
    :pswitch_5c
    iget-object v0, p0, Lcom/android/server/gamepad/BsGamePadWorker$1;->this$0:Lcom/android/server/gamepad/BsGamePadWorker;

    iget v3, p1, Landroid/os/Message;->arg1:I

    shl-int/2addr v2, v3

    int-to-long v2, v2

    # |= operator for: Lcom/android/server/gamepad/BsGamePadWorker;->mEnableSendMoveBitMap:J
    invoke-static {v0, v2, v3}, Lcom/android/server/gamepad/BsGamePadWorker;->access$578(Lcom/android/server/gamepad/BsGamePadWorker;J)J

    .line 127
    iget-object v0, p0, Lcom/android/server/gamepad/BsGamePadWorker$1;->this$0:Lcom/android/server/gamepad/BsGamePadWorker;

    # getter for: Lcom/android/server/gamepad/BsGamePadWorker;->mJoystickLastPos:[Lcom/android/server/gamepad/BsGamePadWorker$Pos;
    invoke-static {v0}, Lcom/android/server/gamepad/BsGamePadWorker;->access$600(Lcom/android/server/gamepad/BsGamePadWorker;)[Lcom/android/server/gamepad/BsGamePadWorker$Pos;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    aget-object v0, v0, v2

    if-eqz v0, :cond_cd

    .line 128
    iget-object v0, p0, Lcom/android/server/gamepad/BsGamePadWorker$1;->this$0:Lcom/android/server/gamepad/BsGamePadWorker;

    iget-object v2, p0, Lcom/android/server/gamepad/BsGamePadWorker$1;->this$0:Lcom/android/server/gamepad/BsGamePadWorker;

    # getter for: Lcom/android/server/gamepad/BsGamePadWorker;->mJoystickLastPos:[Lcom/android/server/gamepad/BsGamePadWorker$Pos;
    invoke-static {v2}, Lcom/android/server/gamepad/BsGamePadWorker;->access$600(Lcom/android/server/gamepad/BsGamePadWorker;)[Lcom/android/server/gamepad/BsGamePadWorker$Pos;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    aget-object v2, v2, v3

    # invokes: Lcom/android/server/gamepad/BsGamePadWorker;->insertTouch(Lcom/android/server/gamepad/BsGamePadWorker$Pos;)I
    invoke-static {v0, v2}, Lcom/android/server/gamepad/BsGamePadWorker;->access$000(Lcom/android/server/gamepad/BsGamePadWorker;Lcom/android/server/gamepad/BsGamePadWorker$Pos;)I

    move-result v0

    .line 129
    .local v0, "lastActionIndex":I
    iget-object v2, p0, Lcom/android/server/gamepad/BsGamePadWorker$1;->this$0:Lcom/android/server/gamepad/BsGamePadWorker;

    # invokes: Lcom/android/server/gamepad/BsGamePadWorker;->buildMotionEvent(II)Landroid/view/MotionEvent;
    invoke-static {v2, v0, v1}, Lcom/android/server/gamepad/BsGamePadWorker;->access$100(Lcom/android/server/gamepad/BsGamePadWorker;II)Landroid/view/MotionEvent;

    move-result-object v1

    .line 130
    .local v1, "lastEvent":Landroid/view/MotionEvent;
    iget-object v2, p0, Lcom/android/server/gamepad/BsGamePadWorker$1;->this$0:Lcom/android/server/gamepad/BsGamePadWorker;

    # invokes: Lcom/android/server/gamepad/BsGamePadWorker;->fire(Landroid/view/MotionEvent;)V
    invoke-static {v2, v1}, Lcom/android/server/gamepad/BsGamePadWorker;->access$200(Lcom/android/server/gamepad/BsGamePadWorker;Landroid/view/MotionEvent;)V

    .line 131
    .end local v0    # "lastActionIndex":I
    .end local v1    # "lastEvent":Landroid/view/MotionEvent;
    goto :goto_cd

    .line 121
    :pswitch_8d
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 122
    .local v0, "moveActionIndex":I
    iget-object v2, p0, Lcom/android/server/gamepad/BsGamePadWorker$1;->this$0:Lcom/android/server/gamepad/BsGamePadWorker;

    # invokes: Lcom/android/server/gamepad/BsGamePadWorker;->buildMotionEvent(II)Landroid/view/MotionEvent;
    invoke-static {v2, v0, v1}, Lcom/android/server/gamepad/BsGamePadWorker;->access$100(Lcom/android/server/gamepad/BsGamePadWorker;II)Landroid/view/MotionEvent;

    move-result-object v1

    .line 123
    .local v1, "downEvent":Landroid/view/MotionEvent;
    iget-object v2, p0, Lcom/android/server/gamepad/BsGamePadWorker$1;->this$0:Lcom/android/server/gamepad/BsGamePadWorker;

    # invokes: Lcom/android/server/gamepad/BsGamePadWorker;->fire(Landroid/view/MotionEvent;)V
    invoke-static {v2, v1}, Lcom/android/server/gamepad/BsGamePadWorker;->access$200(Lcom/android/server/gamepad/BsGamePadWorker;Landroid/view/MotionEvent;)V

    .line 124
    goto :goto_cd

    .line 111
    .end local v0    # "moveActionIndex":I
    .end local v1    # "downEvent":Landroid/view/MotionEvent;
    :pswitch_9b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/gamepad/BsGamePadWorker$Pos;

    .line 112
    .local v0, "upPos":Lcom/android/server/gamepad/BsGamePadWorker$Pos;
    iget-object v1, p0, Lcom/android/server/gamepad/BsGamePadWorker$1;->this$0:Lcom/android/server/gamepad/BsGamePadWorker;

    # invokes: Lcom/android/server/gamepad/BsGamePadWorker;->insertTouch(Lcom/android/server/gamepad/BsGamePadWorker$Pos;)I
    invoke-static {v1, v0}, Lcom/android/server/gamepad/BsGamePadWorker;->access$000(Lcom/android/server/gamepad/BsGamePadWorker;Lcom/android/server/gamepad/BsGamePadWorker$Pos;)I

    move-result v1

    .line 113
    .local v1, "actionIndex":I
    iget-object v3, p0, Lcom/android/server/gamepad/BsGamePadWorker$1;->this$0:Lcom/android/server/gamepad/BsGamePadWorker;

    # invokes: Lcom/android/server/gamepad/BsGamePadWorker;->buildMotionEvent(II)Landroid/view/MotionEvent;
    invoke-static {v3, v1, v2}, Lcom/android/server/gamepad/BsGamePadWorker;->access$100(Lcom/android/server/gamepad/BsGamePadWorker;II)Landroid/view/MotionEvent;

    move-result-object v3

    .line 114
    .local v3, "event":Landroid/view/MotionEvent;
    iget-object v4, p0, Lcom/android/server/gamepad/BsGamePadWorker$1;->this$0:Lcom/android/server/gamepad/BsGamePadWorker;

    # invokes: Lcom/android/server/gamepad/BsGamePadWorker;->fire(Landroid/view/MotionEvent;)V
    invoke-static {v4, v3}, Lcom/android/server/gamepad/BsGamePadWorker;->access$200(Lcom/android/server/gamepad/BsGamePadWorker;Landroid/view/MotionEvent;)V

    .line 115
    iget-object v4, p0, Lcom/android/server/gamepad/BsGamePadWorker$1;->this$0:Lcom/android/server/gamepad/BsGamePadWorker;

    iget v5, p1, Landroid/os/Message;->arg1:I

    shl-int v5, v2, v5

    not-int v5, v5

    int-to-long v5, v5

    # &= operator for: Lcom/android/server/gamepad/BsGamePadWorker;->mGameButtonStatesBitMap:J
    invoke-static {v4, v5, v6}, Lcom/android/server/gamepad/BsGamePadWorker;->access$374(Lcom/android/server/gamepad/BsGamePadWorker;J)J

    .line 116
    # getter for: Lcom/android/server/gamepad/BsGamePadWorker;->DEBUG_FOR_CHOOSE_MOVE:Z
    invoke-static {}, Lcom/android/server/gamepad/BsGamePadWorker;->access$400()Z

    move-result v4

    if-eqz v4, :cond_cd

    .line 117
    iget-object v4, p0, Lcom/android/server/gamepad/BsGamePadWorker$1;->this$0:Lcom/android/server/gamepad/BsGamePadWorker;

    iget v5, p1, Landroid/os/Message;->arg1:I

    add-int/lit8 v5, v5, -0xa

    shl-int/2addr v2, v5

    not-int v2, v2

    int-to-long v5, v2

    # &= operator for: Lcom/android/server/gamepad/BsGamePadWorker;->mEnableSendMoveBitMap:J
    invoke-static {v4, v5, v6}, Lcom/android/server/gamepad/BsGamePadWorker;->access$574(Lcom/android/server/gamepad/BsGamePadWorker;J)J

    .line 148
    .end local v0    # "upPos":Lcom/android/server/gamepad/BsGamePadWorker$Pos;
    .end local v1    # "actionIndex":I
    .end local v3    # "event":Landroid/view/MotionEvent;
    :cond_cd
    :goto_cd
    return-void

    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_9b
        :pswitch_8d
        :pswitch_5c
        :pswitch_9
    .end packed-switch
.end method
