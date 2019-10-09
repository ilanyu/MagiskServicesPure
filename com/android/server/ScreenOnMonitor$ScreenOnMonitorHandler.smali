.class Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;
.super Landroid/os/Handler;
.source "ScreenOnMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ScreenOnMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScreenOnMonitorHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ScreenOnMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/ScreenOnMonitor;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/ScreenOnMonitor;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 208
    iput-object p1, p0, Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;->this$0:Lcom/android/server/ScreenOnMonitor;

    .line 209
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 210
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 215
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_3c

    goto :goto_3b

    .line 229
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;->this$0:Lcom/android/server/ScreenOnMonitor;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/ScreenOnMonitor;->handleReport(Z)V
    invoke-static {v0, v1}, Lcom/android/server/ScreenOnMonitor;->access$400(Lcom/android/server/ScreenOnMonitor;Z)V

    goto :goto_3b

    .line 226
    :pswitch_d
    iget-object v0, p0, Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;->this$0:Lcom/android/server/ScreenOnMonitor;

    # invokes: Lcom/android/server/ScreenOnMonitor;->handleScreenOnTimeout()V
    invoke-static {v0}, Lcom/android/server/ScreenOnMonitor;->access$300(Lcom/android/server/ScreenOnMonitor;)V

    .line 227
    goto :goto_3b

    .line 223
    :pswitch_13
    iget-object v0, p0, Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;->this$0:Lcom/android/server/ScreenOnMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    # invokes: Lcom/android/server/ScreenOnMonitor;->handleRecordTime(IJ)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/ScreenOnMonitor;->access$200(Lcom/android/server/ScreenOnMonitor;IJ)V

    .line 224
    goto :goto_3b

    .line 220
    :pswitch_23
    iget-object v0, p0, Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;->this$0:Lcom/android/server/ScreenOnMonitor;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    # invokes: Lcom/android/server/ScreenOnMonitor;->handleStopMonitor(Z)V
    invoke-static {v0, v1}, Lcom/android/server/ScreenOnMonitor;->access$100(Lcom/android/server/ScreenOnMonitor;Z)V

    .line 221
    goto :goto_3b

    .line 217
    :pswitch_31
    iget-object v0, p0, Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;->this$0:Lcom/android/server/ScreenOnMonitor;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    # invokes: Lcom/android/server/ScreenOnMonitor;->handleStartMonitor(Lcom/android/internal/os/SomeArgs;)V
    invoke-static {v0, v1}, Lcom/android/server/ScreenOnMonitor;->access$000(Lcom/android/server/ScreenOnMonitor;Lcom/android/internal/os/SomeArgs;)V

    .line 218
    nop

    .line 232
    :goto_3b
    return-void

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_31
        :pswitch_23
        :pswitch_13
        :pswitch_d
        :pswitch_6
    .end packed-switch
.end method
