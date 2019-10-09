.class final Lcom/android/server/input/InputManagerService$InputManagerHandler;
.super Landroid/os/Handler;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InputManagerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/input/InputManagerService;Landroid/os/Looper;)V
    .registers 4
    .param p2, "looper"    # Landroid/os/Looper;

    .line 2201
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    .line 2202
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 2203
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 2207
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_50

    goto :goto_4e

    .line 2224
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 2225
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget v1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    int-to-long v3, v3

    const/16 v5, 0x20

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    .line 2226
    .local v1, "whenNanos":J
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 2227
    .local v3, "inTabletMode":Z
    iget-object v4, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    # invokes: Lcom/android/server/input/InputManagerService;->deliverTabletModeChanged(JZ)V
    invoke-static {v4, v1, v2, v3}, Lcom/android/server/input/InputManagerService;->access$800(Lcom/android/server/input/InputManagerService;JZ)V

    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "whenNanos":J
    .end local v3    # "inTabletMode":Z
    goto :goto_4e

    .line 2221
    :pswitch_28
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    # invokes: Lcom/android/server/input/InputManagerService;->reloadDeviceAliases()V
    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->access$200(Lcom/android/server/input/InputManagerService;)V

    .line 2222
    goto :goto_4e

    .line 2218
    :pswitch_2e
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    # invokes: Lcom/android/server/input/InputManagerService;->updateKeyboardLayouts()V
    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->access$100(Lcom/android/server/input/InputManagerService;)V

    .line 2219
    goto :goto_4e

    .line 2215
    :pswitch_34
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    # invokes: Lcom/android/server/input/InputManagerService;->reloadKeyboardLayouts()V
    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->access$700(Lcom/android/server/input/InputManagerService;)V

    .line 2216
    goto :goto_4e

    .line 2212
    :pswitch_3a
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/server/input/InputManagerService;->handleSwitchKeyboardLayout(II)V
    invoke-static {v0, v1, v2}, Lcom/android/server/input/InputManagerService;->access$600(Lcom/android/server/input/InputManagerService;II)V

    .line 2213
    goto :goto_4e

    .line 2209
    :pswitch_44
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Landroid/view/InputDevice;

    # invokes: Lcom/android/server/input/InputManagerService;->deliverInputDevicesChanged([Landroid/view/InputDevice;)V
    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->access$500(Lcom/android/server/input/InputManagerService;[Landroid/view/InputDevice;)V

    .line 2210
    nop

    .line 2230
    :goto_4e
    return-void

    nop

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_44
        :pswitch_3a
        :pswitch_34
        :pswitch_2e
        :pswitch_28
        :pswitch_6
    .end packed-switch
.end method
