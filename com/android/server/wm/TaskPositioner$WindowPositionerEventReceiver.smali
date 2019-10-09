.class final Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;
.super Landroid/view/BatchedInputEventReceiver;
.source "TaskPositioner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskPositioner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WindowPositionerEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/TaskPositioner;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/TaskPositioner;Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V
    .registers 5
    .param p2, "inputChannel"    # Landroid/view/InputChannel;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "choreographer"    # Landroid/view/Choreographer;

    .line 130
    iput-object p1, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    .line 131
    invoke-direct {p0, p2, p3, p4}, Landroid/view/BatchedInputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V

    .line 132
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;I)V
    .registers 13
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "displayId"    # I

    .line 136
    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_143

    .line 137
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_e

    goto/16 :goto_143

    .line 140
    :cond_e
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    .line 141
    .local v0, "motionEvent":Landroid/view/MotionEvent;
    const/4 v1, 0x0

    .line 144
    .local v1, "handled":Z
    :try_start_12
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z
    invoke-static {v2}, Lcom/android/server/wm/TaskPositioner;->access$000(Lcom/android/server/wm/TaskPositioner;)Z

    move-result v2
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_18} :catch_132
    .catchall {:try_start_12 .. :try_end_18} :catchall_130

    if-eqz v2, :cond_1f

    .line 148
    const/4 v1, 0x1

    .line 220
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 149
    return-void

    .line 152
    :cond_1f
    :try_start_1f
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    .line 153
    .local v2, "newX":F
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    .line 154
    .local v3, "newY":F
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    packed-switch v4, :pswitch_data_146

    goto/16 :goto_b9

    .line 193
    :pswitch_31
    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # setter for: Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z
    invoke-static {v4, v5}, Lcom/android/server/wm/TaskPositioner;->access$002(Lcom/android/server/wm/TaskPositioner;Z)Z

    goto/16 :goto_b9

    .line 165
    :pswitch_38
    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->access$100(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v4
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_41} :catch_132
    .catchall {:try_start_1f .. :try_end_41} :catchall_130

    :try_start_41
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 166
    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # invokes: Lcom/android/server/wm/TaskPositioner;->notifyMoveLocked(FF)Z
    invoke-static {v7, v2, v3}, Lcom/android/server/wm/TaskPositioner;->access$200(Lcom/android/server/wm/TaskPositioner;FF)Z

    move-result v7

    # setter for: Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z
    invoke-static {v6, v7}, Lcom/android/server/wm/TaskPositioner;->access$002(Lcom/android/server/wm/TaskPositioner;Z)Z

    .line 167
    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;
    invoke-static {v6}, Lcom/android/server/wm/TaskPositioner;->access$400(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/Task;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;
    invoke-static {v7}, Lcom/android/server/wm/TaskPositioner;->access$300(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    .line 168
    monitor-exit v4
    :try_end_5f
    .catchall {:try_start_41 .. :try_end_5f} :catchall_9b

    :try_start_5f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 169
    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->access$300(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/android/server/wm/TaskPositioner;->access$500(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b9

    .line 170
    const-string/jumbo v4, "wm.TaskPositioner.resizeTask"

    const-wide/16 v6, 0x20

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_7c} :catch_132
    .catchall {:try_start_5f .. :try_end_7c} :catchall_130

    .line 173
    :try_start_7c
    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->access$100(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v8, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    .line 174
    # getter for: Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;
    invoke-static {v8}, Lcom/android/server/wm/TaskPositioner;->access$400(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/Task;

    move-result-object v8

    iget v8, v8, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v9, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;
    invoke-static {v9}, Lcom/android/server/wm/TaskPositioner;->access$500(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v9

    .line 173
    invoke-interface {v4, v8, v9, v5}, Landroid/app/IActivityManager;->resizeTask(ILandroid/graphics/Rect;I)V
    :try_end_95
    .catch Landroid/os/RemoteException; {:try_start_7c .. :try_end_95} :catch_96
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_95} :catch_132
    .catchall {:try_start_7c .. :try_end_95} :catchall_130

    .line 176
    goto :goto_97

    .line 175
    :catch_96
    move-exception v4

    .line 177
    :goto_97
    :try_start_97
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_9a} :catch_132
    .catchall {:try_start_97 .. :try_end_9a} :catchall_130

    goto :goto_b9

    .line 168
    :catchall_9b
    move-exception v5

    :try_start_9c
    monitor-exit v4
    :try_end_9d
    .catchall {:try_start_9c .. :try_end_9d} :catchall_9b

    :try_start_9d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v5

    .line 185
    :pswitch_a1
    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->access$100(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/android/server/wm/TaskPositioner;->access$500(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/MiuiMultiWindowUtils;->saveFreeFormWindowPosition(Landroid/content/Context;Landroid/graphics/Rect;)V

    .line 186
    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # setter for: Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z
    invoke-static {v4, v5}, Lcom/android/server/wm/TaskPositioner;->access$002(Lcom/android/server/wm/TaskPositioner;Z)Z

    .line 187
    goto :goto_b9

    .line 159
    :pswitch_b8
    nop

    .line 197
    :cond_b9
    :goto_b9
    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z
    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->access$000(Lcom/android/server/wm/TaskPositioner;)Z

    move-result v4

    if-eqz v4, :cond_12e

    .line 198
    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mResizing:Z
    invoke-static {v4}, Lcom/android/server/wm/TaskPositioner;->access$600(Lcom/android/server/wm/TaskPositioner;)Z

    move-result v4

    .line 199
    .local v4, "wasResizing":Z
    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v5}, Lcom/android/server/wm/TaskPositioner;->access$100(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v5
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_d0} :catch_132
    .catchall {:try_start_9d .. :try_end_d0} :catchall_130

    :try_start_d0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 200
    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # invokes: Lcom/android/server/wm/TaskPositioner;->endDragLocked()V
    invoke-static {v6}, Lcom/android/server/wm/TaskPositioner;->access$700(Lcom/android/server/wm/TaskPositioner;)V

    .line 201
    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;
    invoke-static {v6}, Lcom/android/server/wm/TaskPositioner;->access$400(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/Task;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;
    invoke-static {v7}, Lcom/android/server/wm/TaskPositioner;->access$300(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    .line 202
    monitor-exit v5
    :try_end_e8
    .catchall {:try_start_d0 .. :try_end_e8} :catchall_128

    :try_start_e8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_eb
    .catch Ljava/lang/Exception; {:try_start_e8 .. :try_end_eb} :catch_132
    .catchall {:try_start_e8 .. :try_end_eb} :catchall_130

    .line 204
    if-eqz v4, :cond_11c

    :try_start_ed
    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/android/server/wm/TaskPositioner;->access$300(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/android/server/wm/TaskPositioner;->access$500(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11c

    .line 207
    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v5}, Lcom/android/server/wm/TaskPositioner;->access$100(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    .line 208
    # getter for: Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;
    invoke-static {v6}, Lcom/android/server/wm/TaskPositioner;->access$400(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/Task;

    move-result-object v6

    iget v6, v6, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;
    invoke-static {v7}, Lcom/android/server/wm/TaskPositioner;->access$500(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v7

    const/4 v8, 0x3

    .line 207
    invoke-interface {v5, v6, v7, v8}, Landroid/app/IActivityManager;->resizeTask(ILandroid/graphics/Rect;I)V
    :try_end_119
    .catch Landroid/os/RemoteException; {:try_start_ed .. :try_end_119} :catch_11a
    .catch Ljava/lang/Exception; {:try_start_ed .. :try_end_119} :catch_132
    .catchall {:try_start_ed .. :try_end_119} :catchall_130

    goto :goto_11c

    .line 210
    :catch_11a
    move-exception v5

    nop

    .line 214
    :cond_11c
    :goto_11c
    :try_start_11c
    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    # getter for: Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v5}, Lcom/android/server/wm/TaskPositioner;->access$100(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    invoke-virtual {v5}, Lcom/android/server/wm/TaskPositioningController;->finishTaskPositioning()V
    :try_end_127
    .catch Ljava/lang/Exception; {:try_start_11c .. :try_end_127} :catch_132
    .catchall {:try_start_11c .. :try_end_127} :catchall_130

    .line 214
    .end local v4    # "wasResizing":Z
    goto :goto_12e

    .line 202
    .restart local v4    # "wasResizing":Z
    :catchall_128
    move-exception v6

    :try_start_129
    monitor-exit v5
    :try_end_12a
    .catchall {:try_start_129 .. :try_end_12a} :catchall_128

    :try_start_12a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v6
    :try_end_12e
    .catch Ljava/lang/Exception; {:try_start_12a .. :try_end_12e} :catch_132
    .catchall {:try_start_12a .. :try_end_12e} :catchall_130

    .line 216
    .end local v4    # "wasResizing":Z
    :cond_12e
    :goto_12e
    const/4 v1, 0x1

    .line 216
    .end local v2    # "newX":F
    .end local v3    # "newY":F
    goto :goto_13a

    .line 220
    :catchall_130
    move-exception v2

    goto :goto_13f

    .line 217
    :catch_132
    move-exception v2

    .line 218
    .local v2, "e":Ljava/lang/Exception;
    :try_start_133
    const-string v3, "WindowManager"

    const-string v4, "Exception caught by drag handleMotion"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13a
    .catchall {:try_start_133 .. :try_end_13a} :catchall_130

    .line 220
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_13a
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 221
    nop

    .line 222
    return-void

    .line 220
    :goto_13f
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v2

    .line 138
    .end local v0    # "motionEvent":Landroid/view/MotionEvent;
    .end local v1    # "handled":Z
    :cond_143
    :goto_143
    return-void

    nop

    nop

    :pswitch_data_146
    .packed-switch 0x0
        :pswitch_b8
        :pswitch_a1
        :pswitch_38
        :pswitch_31
    .end packed-switch
.end method
