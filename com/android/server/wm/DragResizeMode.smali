.class Lcom/android/server/wm/DragResizeMode;
.super Ljava/lang/Object;
.source "DragResizeMode.java"


# static fields
.field static final DRAG_RESIZE_MODE_DOCKED_DIVIDER:I = 0x1

.field static final DRAG_RESIZE_MODE_FREEFORM:I


# direct methods
.method constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isModeAllowedForStack(Lcom/android/server/wm/TaskStack;I)Z
    .registers 5
    .param p0, "stack"    # Lcom/android/server/wm/TaskStack;
    .param p1, "mode"    # I

    .line 39
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_14

    .line 45
    return v0

    .line 43
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->inSplitScreenWindowingMode()Z

    move-result v0

    return v0

    .line 41
    :pswitch_a
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_13

    const/4 v0, 0x1

    nop

    :cond_13
    return v0

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_a
        :pswitch_5
    .end packed-switch
.end method
