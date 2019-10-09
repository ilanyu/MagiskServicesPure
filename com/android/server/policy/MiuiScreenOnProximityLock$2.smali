.class Lcom/android/server/policy/MiuiScreenOnProximityLock$2;
.super Landroid/os/Handler;
.source "MiuiScreenOnProximityLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/MiuiScreenOnProximityLock;-><init>(Landroid/content/Context;Lcom/android/server/policy/MiuiKeyguardServiceDelegate;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/MiuiScreenOnProximityLock;


# direct methods
.method constructor <init>(Lcom/android/server/policy/MiuiScreenOnProximityLock;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/policy/MiuiScreenOnProximityLock;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 71
    iput-object p1, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock$2;->this$0:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 74
    iget-object v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock$2;->this$0:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    monitor-enter v0

    .line 75
    :try_start_3
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_36

    goto :goto_31

    .line 86
    :pswitch_9
    iget-object v1, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock$2;->this$0:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    # invokes: Lcom/android/server/policy/MiuiScreenOnProximityLock;->releaseHintWindow(Z)V
    invoke-static {v1, v2}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->access$200(Lcom/android/server/policy/MiuiScreenOnProximityLock;Z)V

    .line 87
    goto :goto_31

    .line 90
    :pswitch_17
    iget-object v1, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock$2;->this$0:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    # invokes: Lcom/android/server/policy/MiuiScreenOnProximityLock;->showHint()V
    invoke-static {v1}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->access$300(Lcom/android/server/policy/MiuiScreenOnProximityLock;)V

    goto :goto_31

    .line 82
    :pswitch_1d
    iget-object v1, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock$2;->this$0:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    # invokes: Lcom/android/server/policy/MiuiScreenOnProximityLock;->prepareHintWindow()V
    invoke-static {v1}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->access$100(Lcom/android/server/policy/MiuiScreenOnProximityLock;)V

    .line 83
    goto :goto_31

    .line 77
    :pswitch_23
    const-string v1, "MiuiScreenOnProximityLock"

    const-string v2, "far from the screen for a certain time, release proximity sensor..."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v1, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock$2;->this$0:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->release(Z)Z

    .line 79
    nop

    .line 93
    :goto_31
    monitor-exit v0

    .line 94
    return-void

    .line 93
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw v1

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_23
        :pswitch_1d
        :pswitch_17
        :pswitch_9
    .end packed-switch
.end method
