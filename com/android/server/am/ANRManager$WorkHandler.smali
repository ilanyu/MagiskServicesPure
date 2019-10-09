.class Lcom/android/server/am/ANRManager$WorkHandler;
.super Landroid/os/Handler;
.source "ANRManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ANRManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WorkHandler"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 4
    .param p1, "looper"    # Landroid/os/Looper;

    .line 66
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 67
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 71
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_26

    goto :goto_24

    .line 82
    :pswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0}, Lcom/android/server/am/ANRManager;->onInputTimeoutHalf(I)V

    .line 83
    goto :goto_24

    .line 79
    :pswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    invoke-static {v0}, Lcom/android/server/am/ANRManager;->onProviderTimeoutHalf(Lcom/android/server/am/ProcessRecord;)V

    .line 80
    goto :goto_24

    .line 76
    :pswitch_14
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/BroadcastQueue;

    invoke-static {v0}, Lcom/android/server/am/ANRManager;->onBroadcastTimeoutHalf(Lcom/android/server/am/BroadcastQueue;)V

    .line 77
    goto :goto_24

    .line 73
    :pswitch_1c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    invoke-static {v0}, Lcom/android/server/am/ANRManager;->onServiceTimeoutHalf(Lcom/android/server/am/ProcessRecord;)V

    .line 74
    nop

    .line 87
    :goto_24
    return-void

    nop

    :pswitch_data_26
    .packed-switch 0x3f3
        :pswitch_1c
        :pswitch_14
        :pswitch_c
        :pswitch_6
    .end packed-switch
.end method
