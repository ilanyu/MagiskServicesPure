.class final Lcom/android/server/wm/StackWindowController$H;
.super Landroid/os/Handler;
.source "StackWindowController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/StackWindowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "H"
.end annotation


# static fields
.field static final REQUEST_RESIZE:I


# instance fields
.field private final mController:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/wm/StackWindowController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/wm/StackWindowController;",
            ">;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    .line 410
    .local p1, "controller":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/wm/StackWindowController;>;"
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 411
    iput-object p1, p0, Lcom/android/server/wm/StackWindowController$H;->mController:Ljava/lang/ref/WeakReference;

    .line 412
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 416
    iget-object v0, p0, Lcom/android/server/wm/StackWindowController$H;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/StackWindowController;

    .line 417
    .local v0, "controller":Lcom/android/server/wm/StackWindowController;
    if-eqz v0, :cond_f

    .line 418
    iget-object v1, v0, Lcom/android/server/wm/StackWindowController;->mListener:Lcom/android/server/wm/WindowContainerListener;

    check-cast v1, Lcom/android/server/wm/StackWindowListener;

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    .line 419
    .local v1, "listener":Lcom/android/server/wm/StackWindowListener;
    :goto_10
    if-nez v1, :cond_13

    .line 420
    return-void

    .line 422
    :cond_13
    iget v2, p1, Landroid/os/Message;->what:I

    if-eqz v2, :cond_18

    goto :goto_1f

    .line 424
    :cond_18
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Rect;

    invoke-interface {v1, v2}, Lcom/android/server/wm/StackWindowListener;->requestResize(Landroid/graphics/Rect;)V

    .line 427
    :goto_1f
    return-void
.end method
