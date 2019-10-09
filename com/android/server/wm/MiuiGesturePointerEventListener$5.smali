.class Lcom/android/server/wm/MiuiGesturePointerEventListener$5;
.super Landroid/view/InputEventReceiver;
.source "MiuiGesturePointerEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/MiuiGesturePointerEventListener;->registerInputConsumer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;


# direct methods
.method constructor <init>(Lcom/android/server/wm/MiuiGesturePointerEventListener;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/wm/MiuiGesturePointerEventListener;
    .param p2, "x0"    # Landroid/view/InputChannel;
    .param p3, "x1"    # Landroid/os/Looper;

    .line 1337
    iput-object p1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$5;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;I)V
    .registers 3
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "displayId"    # I

    .line 1341
    invoke-super {p0, p1, p2}, Landroid/view/InputEventReceiver;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 1342
    return-void
.end method
