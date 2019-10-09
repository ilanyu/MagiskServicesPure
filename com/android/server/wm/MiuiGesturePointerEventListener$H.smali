.class Lcom/android/server/wm/MiuiGesturePointerEventListener$H;
.super Landroid/os/Handler;
.source "MiuiGesturePointerEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/MiuiGesturePointerEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/MiuiGesturePointerEventListener;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 402
    iput-object p1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$H;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    .line 403
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 404
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/MiuiGesturePointerEventListener;Landroid/os/Looper;Lcom/android/server/wm/MiuiGesturePointerEventListener$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/android/server/wm/MiuiGesturePointerEventListener;
    .param p2, "x1"    # Landroid/os/Looper;
    .param p3, "x2"    # Lcom/android/server/wm/MiuiGesturePointerEventListener$1;

    .line 401
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/MiuiGesturePointerEventListener$H;-><init>(Lcom/android/server/wm/MiuiGesturePointerEventListener;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 408
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 409
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 410
    .local v1, "x":F
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 411
    .local v2, "y":F
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 412
    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3, v1, v2}, Lcom/android/server/wm/FullScreenEventReporter;->startActionEventTrace(IFF)V

    .line 413
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_3a

    goto :goto_34

    .line 421
    :pswitch_22
    iget-object v3, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$H;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    # invokes: Lcom/android/server/wm/MiuiGesturePointerEventListener;->onActionUp(FF)V
    invoke-static {v3, v1, v2}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->access$300(Lcom/android/server/wm/MiuiGesturePointerEventListener;FF)V

    .line 422
    goto :goto_34

    .line 418
    :pswitch_28
    iget-object v3, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$H;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    # invokes: Lcom/android/server/wm/MiuiGesturePointerEventListener;->onActionMove(FF)V
    invoke-static {v3, v1, v2}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->access$200(Lcom/android/server/wm/MiuiGesturePointerEventListener;FF)V

    .line 419
    goto :goto_34

    .line 415
    :pswitch_2e
    iget-object v3, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$H;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    # invokes: Lcom/android/server/wm/MiuiGesturePointerEventListener;->onActionDown(FF)V
    invoke-static {v3, v1, v2}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->access$100(Lcom/android/server/wm/MiuiGesturePointerEventListener;FF)V

    .line 416
    nop

    .line 426
    :goto_34
    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3, v1, v2}, Lcom/android/server/wm/FullScreenEventReporter;->endActionEventTrace(IFF)V

    .line 427
    return-void

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_28
        :pswitch_22
    .end packed-switch
.end method
