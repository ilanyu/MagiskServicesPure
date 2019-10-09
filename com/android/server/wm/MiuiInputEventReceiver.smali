.class public Lcom/android/server/wm/MiuiInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "MiuiInputEventReceiver.java"


# direct methods
.method public constructor <init>(Landroid/view/InputChannel;Landroid/os/Looper;)V
    .registers 3
    .param p1, "inputChannel"    # Landroid/view/InputChannel;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 12
    invoke-direct {p0, p1, p2}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 14
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 17
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/MiuiInputEventReceiver;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 18
    return-void
.end method

.method public onInputEvent(Landroid/view/InputEvent;I)V
    .registers 3
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "displayId"    # I

    .line 23
    invoke-super {p0, p1, p2}, Landroid/view/InputEventReceiver;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 24
    return-void
.end method
