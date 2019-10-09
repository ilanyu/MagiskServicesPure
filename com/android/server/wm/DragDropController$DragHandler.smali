.class Lcom/android/server/wm/DragDropController$DragHandler;
.super Landroid/os/Handler;
.source "DragDropController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DragDropController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragHandler"
.end annotation


# instance fields
.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field final synthetic this$0:Lcom/android/server/wm/DragDropController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/DragDropController;Lcom/android/server/wm/WindowManagerService;Landroid/os/Looper;)V
    .registers 4
    .param p2, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 341
    iput-object p1, p0, Lcom/android/server/wm/DragDropController$DragHandler;->this$0:Lcom/android/server/wm/DragDropController;

    .line 342
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 343
    iput-object p2, p0, Lcom/android/server/wm/DragDropController$DragHandler;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 344
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 348
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_86

    goto/16 :goto_84

    .line 378
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/wm/DragDropController$DragHandler;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 379
    iget-object v1, p0, Lcom/android/server/wm/DragDropController$DragHandler;->this$0:Lcom/android/server/wm/DragDropController;

    # getter for: Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;
    invoke-static {v1}, Lcom/android/server/wm/DragDropController;->access$000(Lcom/android/server/wm/DragDropController;)Lcom/android/server/wm/DragState;

    move-result-object v1

    if-nez v1, :cond_24

    .line 380
    const-string v1, "WindowManager"

    const-string/jumbo v2, "mDragState unexpectedly became null while plyaing animation"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_32

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 384
    :cond_24
    :try_start_24
    iget-object v1, p0, Lcom/android/server/wm/DragDropController$DragHandler;->this$0:Lcom/android/server/wm/DragDropController;

    # getter for: Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;
    invoke-static {v1}, Lcom/android/server/wm/DragDropController;->access$000(Lcom/android/server/wm/DragDropController;)Lcom/android/server/wm/DragState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DragState;->closeLocked()V

    .line 385
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_32

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_84

    :catchall_32
    move-exception v1

    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 368
    :pswitch_38
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/DragState$InputInterceptor;

    .line 370
    .local v0, "interceptor":Lcom/android/server/wm/DragState$InputInterceptor;
    if-nez v0, :cond_3f

    return-void

    .line 371
    :cond_3f
    iget-object v1, p0, Lcom/android/server/wm/DragDropController$DragHandler;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1

    :try_start_44
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 372
    invoke-virtual {v0}, Lcom/android/server/wm/DragState$InputInterceptor;->tearDown()V

    .line 373
    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_44 .. :try_end_4b} :catchall_4f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 374
    goto :goto_84

    .line 373
    :catchall_4f
    move-exception v2

    :try_start_50
    monitor-exit v1
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 350
    .end local v0    # "interceptor":Lcom/android/server/wm/DragState$InputInterceptor;
    :pswitch_55
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 355
    iget-object v0, p0, Lcom/android/server/wm/DragDropController$DragHandler;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_5c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 357
    iget-object v1, p0, Lcom/android/server/wm/DragDropController$DragHandler;->this$0:Lcom/android/server/wm/DragDropController;

    # getter for: Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;
    invoke-static {v1}, Lcom/android/server/wm/DragDropController;->access$000(Lcom/android/server/wm/DragDropController;)Lcom/android/server/wm/DragState;

    move-result-object v1

    if-eqz v1, :cond_79

    .line 358
    iget-object v1, p0, Lcom/android/server/wm/DragDropController$DragHandler;->this$0:Lcom/android/server/wm/DragDropController;

    # getter for: Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;
    invoke-static {v1}, Lcom/android/server/wm/DragDropController;->access$000(Lcom/android/server/wm/DragDropController;)Lcom/android/server/wm/DragState;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/wm/DragState;->mDragResult:Z

    .line 359
    iget-object v1, p0, Lcom/android/server/wm/DragDropController$DragHandler;->this$0:Lcom/android/server/wm/DragDropController;

    # getter for: Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;
    invoke-static {v1}, Lcom/android/server/wm/DragDropController;->access$000(Lcom/android/server/wm/DragDropController;)Lcom/android/server/wm/DragState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DragState;->endDragLocked()V

    .line 361
    :cond_79
    monitor-exit v0
    :try_end_7a
    .catchall {:try_start_5c .. :try_end_7a} :catchall_7e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 362
    goto :goto_84

    .line 361
    :catchall_7e
    move-exception v1

    :try_start_7f
    monitor-exit v0
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_7e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 389
    :goto_84
    return-void

    nop

    :pswitch_data_86
    .packed-switch 0x0
        :pswitch_55
        :pswitch_38
        :pswitch_7
    .end packed-switch
.end method
