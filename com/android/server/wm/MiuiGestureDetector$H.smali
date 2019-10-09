.class Lcom/android/server/wm/MiuiGestureDetector$H;
.super Landroid/os/Handler;
.source "MiuiGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/MiuiGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "H"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 2
    .param p1, "looper"    # Landroid/os/Looper;

    .line 368
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 369
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 373
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_22

    .line 375
    :cond_6
    # invokes: Lcom/android/server/wm/MiuiGestureDetector;->updateTail()V
    invoke-static {}, Lcom/android/server/wm/MiuiGestureDetector;->access$000()V

    .line 376
    invoke-static {}, Lcom/android/server/wm/MiuiGestureDetector;->isOverSpeed()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 377
    const-wide/16 v2, 0x14

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/wm/MiuiGestureDetector$H;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_22

    .line 378
    :cond_15
    invoke-static {}, Lcom/android/server/wm/MiuiGestureDetector;->shouldGoRecents()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 379
    # getter for: Lcom/android/server/wm/MiuiGestureDetector;->sGestureListener:Lcom/android/server/wm/MiuiGesturePointerEventListener;
    invoke-static {}, Lcom/android/server/wm/MiuiGestureDetector;->access$100()Lcom/android/server/wm/MiuiGesturePointerEventListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->launchRecentsBehind()V

    .line 385
    :cond_22
    :goto_22
    return-void
.end method
