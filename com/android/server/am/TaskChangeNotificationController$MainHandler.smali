.class Lcom/android/server/am/TaskChangeNotificationController$MainHandler;
.super Landroid/os/Handler;
.source "TaskChangeNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/TaskChangeNotificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/TaskChangeNotificationController;


# direct methods
.method public constructor <init>(Lcom/android/server/am/TaskChangeNotificationController;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 144
    iput-object p1, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    .line 145
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 146
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 150
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_fc

    goto/16 :goto_fb

    .line 200
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    # getter for: Lcom/android/server/am/TaskChangeNotificationController;->mNotifyActivityLaunchOnSecondaryDisplayFailed:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;
    invoke-static {v1}, Lcom/android/server/am/TaskChangeNotificationController;->access$1700(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    # invokes: Lcom/android/server/am/TaskChangeNotificationController;->forAllRemoteListeners(Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/am/TaskChangeNotificationController;->access$300(Lcom/android/server/am/TaskChangeNotificationController;Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 201
    goto/16 :goto_fb

    .line 182
    :pswitch_14
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    # getter for: Lcom/android/server/am/TaskChangeNotificationController;->mNotifyActivityUnpinned:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;
    invoke-static {v1}, Lcom/android/server/am/TaskChangeNotificationController;->access$1100(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    # invokes: Lcom/android/server/am/TaskChangeNotificationController;->forAllRemoteListeners(Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/am/TaskChangeNotificationController;->access$300(Lcom/android/server/am/TaskChangeNotificationController;Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 183
    goto/16 :goto_fb

    .line 188
    :pswitch_21
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    # getter for: Lcom/android/server/am/TaskChangeNotificationController;->mNotifyPinnedStackAnimationStarted:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;
    invoke-static {v1}, Lcom/android/server/am/TaskChangeNotificationController;->access$1300(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    # invokes: Lcom/android/server/am/TaskChangeNotificationController;->forAllRemoteListeners(Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/am/TaskChangeNotificationController;->access$300(Lcom/android/server/am/TaskChangeNotificationController;Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 189
    goto/16 :goto_fb

    .line 206
    :pswitch_2e
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    # getter for: Lcom/android/server/am/TaskChangeNotificationController;->mNotifyTaskSnapshotChanged:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;
    invoke-static {v1}, Lcom/android/server/am/TaskChangeNotificationController;->access$1900(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    # invokes: Lcom/android/server/am/TaskChangeNotificationController;->forAllRemoteListeners(Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/am/TaskChangeNotificationController;->access$300(Lcom/android/server/am/TaskChangeNotificationController;Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto/16 :goto_fb

    .line 203
    :pswitch_3b
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    # getter for: Lcom/android/server/am/TaskChangeNotificationController;->mNotifyTaskProfileLocked:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;
    invoke-static {v1}, Lcom/android/server/am/TaskChangeNotificationController;->access$1800(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    # invokes: Lcom/android/server/am/TaskChangeNotificationController;->forAllRemoteListeners(Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/am/TaskChangeNotificationController;->access$300(Lcom/android/server/am/TaskChangeNotificationController;Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 204
    goto/16 :goto_fb

    .line 176
    :pswitch_48
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    # getter for: Lcom/android/server/am/TaskChangeNotificationController;->mNotifyTaskRemovalStarted:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;
    invoke-static {v1}, Lcom/android/server/am/TaskChangeNotificationController;->access$900(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    # invokes: Lcom/android/server/am/TaskChangeNotificationController;->forAllRemoteListeners(Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/am/TaskChangeNotificationController;->access$300(Lcom/android/server/am/TaskChangeNotificationController;Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 177
    goto/16 :goto_fb

    .line 173
    :pswitch_55
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    # getter for: Lcom/android/server/am/TaskChangeNotificationController;->mNotifyActivityRequestedOrientationChanged:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;
    invoke-static {v1}, Lcom/android/server/am/TaskChangeNotificationController;->access$800(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    # invokes: Lcom/android/server/am/TaskChangeNotificationController;->forAllRemoteListeners(Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/am/TaskChangeNotificationController;->access$300(Lcom/android/server/am/TaskChangeNotificationController;Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 174
    goto/16 :goto_fb

    .line 170
    :pswitch_62
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    # getter for: Lcom/android/server/am/TaskChangeNotificationController;->mNotifyTaskDescriptionChanged:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;
    invoke-static {v1}, Lcom/android/server/am/TaskChangeNotificationController;->access$700(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    # invokes: Lcom/android/server/am/TaskChangeNotificationController;->forAllRemoteListeners(Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/am/TaskChangeNotificationController;->access$300(Lcom/android/server/am/TaskChangeNotificationController;Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 171
    goto/16 :goto_fb

    .line 167
    :pswitch_6f
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    # getter for: Lcom/android/server/am/TaskChangeNotificationController;->mNotifyTaskMovedToFront:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;
    invoke-static {v1}, Lcom/android/server/am/TaskChangeNotificationController;->access$600(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    # invokes: Lcom/android/server/am/TaskChangeNotificationController;->forAllRemoteListeners(Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/am/TaskChangeNotificationController;->access$300(Lcom/android/server/am/TaskChangeNotificationController;Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 168
    goto/16 :goto_fb

    .line 164
    :pswitch_7c
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    # getter for: Lcom/android/server/am/TaskChangeNotificationController;->mNotifyTaskRemoved:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;
    invoke-static {v1}, Lcom/android/server/am/TaskChangeNotificationController;->access$500(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    # invokes: Lcom/android/server/am/TaskChangeNotificationController;->forAllRemoteListeners(Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/am/TaskChangeNotificationController;->access$300(Lcom/android/server/am/TaskChangeNotificationController;Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 165
    goto/16 :goto_fb

    .line 161
    :pswitch_89
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    # getter for: Lcom/android/server/am/TaskChangeNotificationController;->mNotifyTaskCreated:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;
    invoke-static {v1}, Lcom/android/server/am/TaskChangeNotificationController;->access$400(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    # invokes: Lcom/android/server/am/TaskChangeNotificationController;->forAllRemoteListeners(Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/am/TaskChangeNotificationController;->access$300(Lcom/android/server/am/TaskChangeNotificationController;Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 162
    goto :goto_fb

    .line 197
    :pswitch_95
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    # getter for: Lcom/android/server/am/TaskChangeNotificationController;->mNotifyActivityDismissingDockedStack:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;
    invoke-static {v1}, Lcom/android/server/am/TaskChangeNotificationController;->access$1600(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    # invokes: Lcom/android/server/am/TaskChangeNotificationController;->forAllRemoteListeners(Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/am/TaskChangeNotificationController;->access$300(Lcom/android/server/am/TaskChangeNotificationController;Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 198
    goto :goto_fb

    .line 194
    :pswitch_a1
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    # getter for: Lcom/android/server/am/TaskChangeNotificationController;->mNotifyActivityForcedResizable:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;
    invoke-static {v1}, Lcom/android/server/am/TaskChangeNotificationController;->access$1500(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    # invokes: Lcom/android/server/am/TaskChangeNotificationController;->forAllRemoteListeners(Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/am/TaskChangeNotificationController;->access$300(Lcom/android/server/am/TaskChangeNotificationController;Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 195
    goto :goto_fb

    .line 191
    :pswitch_ad
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    # getter for: Lcom/android/server/am/TaskChangeNotificationController;->mNotifyPinnedStackAnimationEnded:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;
    invoke-static {v1}, Lcom/android/server/am/TaskChangeNotificationController;->access$1400(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    # invokes: Lcom/android/server/am/TaskChangeNotificationController;->forAllRemoteListeners(Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/am/TaskChangeNotificationController;->access$300(Lcom/android/server/am/TaskChangeNotificationController;Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 192
    goto :goto_fb

    .line 185
    :pswitch_b9
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    # getter for: Lcom/android/server/am/TaskChangeNotificationController;->mNotifyPinnedActivityRestartAttempt:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;
    invoke-static {v1}, Lcom/android/server/am/TaskChangeNotificationController;->access$1200(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    # invokes: Lcom/android/server/am/TaskChangeNotificationController;->forAllRemoteListeners(Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/am/TaskChangeNotificationController;->access$300(Lcom/android/server/am/TaskChangeNotificationController;Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 186
    goto :goto_fb

    .line 179
    :pswitch_c5
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    # getter for: Lcom/android/server/am/TaskChangeNotificationController;->mNotifyActivityPinned:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;
    invoke-static {v1}, Lcom/android/server/am/TaskChangeNotificationController;->access$1000(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    # invokes: Lcom/android/server/am/TaskChangeNotificationController;->forAllRemoteListeners(Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/am/TaskChangeNotificationController;->access$300(Lcom/android/server/am/TaskChangeNotificationController;Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 180
    goto :goto_fb

    .line 158
    :pswitch_d1
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    # getter for: Lcom/android/server/am/TaskChangeNotificationController;->mNotifyTaskStackChanged:Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;
    invoke-static {v1}, Lcom/android/server/am/TaskChangeNotificationController;->access$200(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    # invokes: Lcom/android/server/am/TaskChangeNotificationController;->forAllRemoteListeners(Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V
    invoke-static {v0, v1, p1}, Lcom/android/server/am/TaskChangeNotificationController;->access$300(Lcom/android/server/am/TaskChangeNotificationController;Lcom/android/server/am/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 159
    goto :goto_fb

    .line 152
    :pswitch_dd
    iget-object v0, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    # getter for: Lcom/android/server/am/TaskChangeNotificationController;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v0}, Lcom/android/server/am/TaskChangeNotificationController;->access$000(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    monitor-enter v0

    :try_start_e4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 153
    iget-object v1, p0, Lcom/android/server/am/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/am/TaskChangeNotificationController;

    # getter for: Lcom/android/server/am/TaskChangeNotificationController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;
    invoke-static {v1}, Lcom/android/server/am/TaskChangeNotificationController;->access$100(Lcom/android/server/am/TaskChangeNotificationController;)Lcom/android/server/am/ActivityStackSupervisor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->logStackState()V

    .line 154
    monitor-exit v0
    :try_end_f1
    .catchall {:try_start_e4 .. :try_end_f1} :catchall_f5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 155
    goto :goto_fb

    .line 154
    :catchall_f5
    move-exception v1

    :try_start_f6
    monitor-exit v0
    :try_end_f7
    .catchall {:try_start_f6 .. :try_end_f7} :catchall_f5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 209
    :goto_fb
    return-void

    :pswitch_data_fc
    .packed-switch 0x1
        :pswitch_dd
        :pswitch_d1
        :pswitch_c5
        :pswitch_b9
        :pswitch_ad
        :pswitch_a1
        :pswitch_95
        :pswitch_89
        :pswitch_7c
        :pswitch_6f
        :pswitch_62
        :pswitch_55
        :pswitch_48
        :pswitch_3b
        :pswitch_2e
        :pswitch_21
        :pswitch_14
        :pswitch_7
    .end packed-switch
.end method
