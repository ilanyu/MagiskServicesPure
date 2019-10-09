.class final Lcom/android/server/PinnerService$PinnerHandler;
.super Landroid/os/Handler;
.source "PinnerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PinnerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PinnerHandler"
.end annotation


# static fields
.field static final PIN_CAMERA_MSG:I = 0xfa0

.field static final PIN_ONSTART_MSG:I = 0xfa1


# instance fields
.field final synthetic this$0:Lcom/android/server/PinnerService;


# direct methods
.method public constructor <init>(Lcom/android/server/PinnerService;Landroid/os/Looper;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/PinnerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 641
    iput-object p1, p0, Lcom/android/server/PinnerService$PinnerHandler;->this$0:Lcom/android/server/PinnerService;

    .line 642
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 643
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 647
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_18

    .line 662
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_17

    .line 657
    :pswitch_9
    iget-object v0, p0, Lcom/android/server/PinnerService$PinnerHandler;->this$0:Lcom/android/server/PinnerService;

    # invokes: Lcom/android/server/PinnerService;->handlePinOnStart()V
    invoke-static {v0}, Lcom/android/server/PinnerService;->access$600(Lcom/android/server/PinnerService;)V

    .line 659
    goto :goto_17

    .line 651
    :pswitch_f
    iget-object v0, p0, Lcom/android/server/PinnerService$PinnerHandler;->this$0:Lcom/android/server/PinnerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/PinnerService;->handlePinCamera(I)V
    invoke-static {v0, v1}, Lcom/android/server/PinnerService;->access$500(Lcom/android/server/PinnerService;I)V

    .line 653
    nop

    .line 664
    :goto_17
    return-void

    :pswitch_data_18
    .packed-switch 0xfa0
        :pswitch_f
        :pswitch_9
    .end packed-switch
.end method
