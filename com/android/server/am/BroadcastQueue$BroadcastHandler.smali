.class final Lcom/android/server/am/BroadcastQueue$BroadcastHandler;
.super Landroid/os/Handler;
.source "BroadcastQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BroadcastQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "BroadcastHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/BroadcastQueue;


# direct methods
.method public constructor <init>(Lcom/android/server/am/BroadcastQueue;Landroid/os/Looper;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/am/BroadcastQueue;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 167
    iput-object p1, p0, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->this$0:Lcom/android/server/am/BroadcastQueue;

    .line 168
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 169
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 173
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_26

    goto :goto_25

    .line 180
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->this$0:Lcom/android/server/am/BroadcastQueue;

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 181
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->this$0:Lcom/android/server/am/BroadcastQueue;

    invoke-virtual {v2, v1}, Lcom/android/server/am/BroadcastQueue;->broadcastTimeoutLocked(Z)V

    .line 182
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_19

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_25

    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 177
    :pswitch_1f
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->this$0:Lcom/android/server/am/BroadcastQueue;

    invoke-virtual {v0, v1}, Lcom/android/server/am/BroadcastQueue;->processNextBroadcast(Z)V

    .line 178
    nop

    .line 185
    :goto_25
    return-void

    :pswitch_data_26
    .packed-switch 0xc8
        :pswitch_1f
        :pswitch_7
    .end packed-switch
.end method
