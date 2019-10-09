.class Lcom/android/server/wm/DragDropController;
.super Ljava/lang/Object;
.source "DragDropController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DragDropController$DragHandler;
    }
.end annotation


# static fields
.field private static final DRAG_SHADOW_ALPHA_TRANSPARENT:F = 0.7071f

.field private static final DRAG_TIMEOUT_MS:J = 0x1388L

.field static final MSG_ANIMATION_END:I = 0x2

.field static final MSG_DRAG_END_TIMEOUT:I = 0x0

.field static final MSG_TEAR_DOWN_DRAG_AND_DROP_INPUT:I = 0x1


# instance fields
.field private mCallback:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mDragState:Lcom/android/server/wm/DragState;

.field private final mHandler:Landroid/os/Handler;

.field private mService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/Looper;)V
    .registers 5
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/android/server/wm/DragDropController$1;

    invoke-direct {v1, p0}, Lcom/android/server/wm/DragDropController$1;-><init>(Lcom/android/server/wm/DragDropController;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    .line 87
    iput-object p1, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 88
    new-instance v0, Lcom/android/server/wm/DragDropController$DragHandler;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/wm/DragDropController$DragHandler;-><init>(Lcom/android/server/wm/DragDropController;Lcom/android/server/wm/WindowManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/DragDropController;->mHandler:Landroid/os/Handler;

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/DragDropController;)Lcom/android/server/wm/DragState;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/DragDropController;

    .line 46
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    return-object v0
.end method


# virtual methods
.method cancelDragAndDrop(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "dragToken"    # Landroid/os/IBinder;

    .line 249
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v0, p1}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->preCancelDragAndDrop(Landroid/os/IBinder;)V

    .line 251
    :try_start_b
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_5c

    :try_start_10
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 252
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v1, :cond_47

    .line 257
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v1, v1, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    if-ne v1, p1, :cond_38

    .line 264
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/wm/DragState;->mDragResult:Z

    .line 265
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v1}, Lcom/android/server/wm/DragState;->cancelDragLocked()V

    .line 266
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_10 .. :try_end_28} :catchall_56

    :try_start_28
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_5c

    .line 268
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v0}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postCancelDragAndDrop()V

    .line 269
    nop

    .line 270
    return-void

    .line 258
    :cond_38
    :try_start_38
    const-string v1, "WindowManager"

    const-string v2, "cancelDragAndDrop() does not match prepareDrag()"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "cancelDragAndDrop() does not match prepareDrag()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 253
    :cond_47
    const-string v1, "WindowManager"

    const-string v2, "cancelDragAndDrop() without prepareDrag()"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "cancelDragAndDrop() without prepareDrag()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 266
    :catchall_56
    move-exception v1

    monitor-exit v0
    :try_end_58
    .catchall {:try_start_38 .. :try_end_58} :catchall_56

    :try_start_58
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
    :try_end_5c
    .catchall {:try_start_58 .. :try_end_5c} :catchall_5c

    .line 268
    :catchall_5c
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v1}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postCancelDragAndDrop()V

    throw v0
.end method

.method dragDropActiveLocked()Z
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method dragRecipientEntered(Landroid/view/IWindow;)V
    .registers 2
    .param p1, "window"    # Landroid/view/IWindow;

    .line 300
    return-void
.end method

.method dragRecipientExited(Landroid/view/IWindow;)V
    .registers 2
    .param p1, "window"    # Landroid/view/IWindow;

    .line 306
    return-void
.end method

.method getInputWindowHandleLocked()Lcom/android/server/input/InputWindowHandle;
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->getInputWindowHandle()Lcom/android/server/input/InputWindowHandle;

    move-result-object v0

    return-object v0
.end method

.method handleMotionEvent(ZFF)V
    .registers 6
    .param p1, "keepHandling"    # Z
    .param p2, "newX"    # F
    .param p3, "newY"    # F

    .line 280
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 281
    invoke-virtual {p0}, Lcom/android/server/wm/DragDropController;->dragDropActiveLocked()Z

    move-result v1

    if-nez v1, :cond_13

    .line 285
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 288
    :cond_13
    if-eqz p1, :cond_1b

    .line 289
    :try_start_15
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v1, p2, p3}, Lcom/android/server/wm/DragState;->notifyMoveLocked(FF)V

    goto :goto_20

    .line 291
    :cond_1b
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v1, p2, p3}, Lcom/android/server/wm/DragState;->notifyDropLocked(FF)V

    .line 293
    :goto_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_15 .. :try_end_21} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 294
    return-void

    .line 293
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method onDragStateClosedLocked(Lcom/android/server/wm/DragState;)V
    .registers 4
    .param p1, "dragState"    # Lcom/android/server/wm/DragState;

    .line 328
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eq v0, p1, :cond_c

    .line 329
    const-string v0, "WindowManager"

    const-string v1, "Unknown drag state is closed"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    return-void

    .line 332
    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    .line 333
    return-void
.end method

.method performDrag(Landroid/view/SurfaceSession;IILandroid/view/IWindow;ILandroid/view/SurfaceControl;IFFFFLandroid/content/ClipData;)Landroid/os/IBinder;
    .registers 37
    .param p1, "session"    # Landroid/view/SurfaceSession;
    .param p2, "callerPid"    # I
    .param p3, "callerUid"    # I
    .param p4, "window"    # Landroid/view/IWindow;
    .param p5, "flags"    # I
    .param p6, "surface"    # Landroid/view/SurfaceControl;
    .param p7, "touchSource"    # I
    .param p8, "touchX"    # F
    .param p9, "touchY"    # F
    .param p10, "thumbCenterX"    # F
    .param p11, "thumbCenterY"    # F
    .param p12, "data"    # Landroid/content/ClipData;

    move-object/from16 v8, p0

    move-object/from16 v6, p4

    move/from16 v5, p8

    move/from16 v3, p9

    move/from16 v2, p10

    move/from16 v1, p11

    .line 103
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    move-object v4, v0

    .line 104
    .local v4, "dragToken":Landroid/os/IBinder;
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    move-object v10, v6

    move-object v11, v4

    move/from16 v12, p7

    move v13, v5

    move v14, v3

    move v15, v2

    move/from16 v16, v1

    move-object/from16 v17, p12

    invoke-interface/range {v9 .. v17}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->prePerformDrag(Landroid/view/IWindow;Landroid/os/IBinder;IFFFFLandroid/content/ClipData;)Z

    move-result v0

    move v9, v0

    .line 107
    .local v9, "callbackResult":Z
    :try_start_2b
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v10
    :try_end_30
    .catchall {:try_start_2b .. :try_end_30} :catchall_290

    :try_start_30
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_260

    .line 109
    const/4 v0, 0x0

    if-nez v9, :cond_7f

    .line 110
    :try_start_36
    const-string v7, "WindowManager"

    const-string v11, "IDragDropCallback rejects the performDrag request"

    invoke-static {v7, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_72

    .line 111
    nop

    .line 190
    if-eqz p6, :cond_51

    .line 191
    :try_start_40
    invoke-virtual/range {p6 .. p6}, Landroid/view/SurfaceControl;->release()V

    goto :goto_51

    .line 197
    :catchall_44
    move-exception v0

    move/from16 v13, p5

    move-object/from16 v18, p6

    move v15, v3

    move v6, v5

    move/from16 v19, v9

    move-object v9, v4

    move v4, v1

    goto/16 :goto_287

    .line 193
    :cond_51
    :goto_51
    iget-object v7, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v7, :cond_62

    iget-object v7, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v7}, Lcom/android/server/wm/DragState;->isInProgress()Z

    move-result v7

    if-nez v7, :cond_62

    .line 194
    iget-object v7, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v7}, Lcom/android/server/wm/DragState;->closeLocked()V

    :cond_62
    monitor-exit v10
    :try_end_63
    .catchall {:try_start_40 .. :try_end_63} :catchall_44

    .line 200
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v7, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v7}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postPerformDrag()V

    .line 111
    return-object v0

    .line 190
    :catchall_72
    move-exception v0

    move/from16 v13, p5

    move v15, v3

    move v6, v5

    move/from16 v19, v9

    move-object v9, v4

    move v4, v1

    .end local v4    # "dragToken":Landroid/os/IBinder;
    .end local p6    # "surface":Landroid/view/SurfaceControl;
    .local v1, "surface":Landroid/view/SurfaceControl;
    .local v9, "dragToken":Landroid/os/IBinder;
    .local v19, "callbackResult":Z
    :goto_7b
    move-object/from16 v1, p6

    goto/16 :goto_26b

    .line 114
    .end local v1    # "surface":Landroid/view/SurfaceControl;
    .end local v19    # "callbackResult":Z
    .restart local v4    # "dragToken":Landroid/os/IBinder;
    .local v9, "callbackResult":Z
    .restart local p6    # "surface":Landroid/view/SurfaceControl;
    :cond_7f
    :try_start_7f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DragDropController;->dragDropActiveLocked()Z

    move-result v7
    :try_end_83
    .catchall {:try_start_7f .. :try_end_83} :catchall_260

    if-eqz v7, :cond_b3

    .line 115
    :try_start_85
    const-string v7, "WindowManager"

    const-string v11, "Drag already in progress"

    invoke-static {v7, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8c
    .catchall {:try_start_85 .. :try_end_8c} :catchall_72

    .line 116
    nop

    .line 190
    if-eqz p6, :cond_92

    .line 191
    :try_start_8f
    invoke-virtual/range {p6 .. p6}, Landroid/view/SurfaceControl;->release()V

    .line 193
    :cond_92
    iget-object v7, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v7, :cond_a3

    iget-object v7, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v7}, Lcom/android/server/wm/DragState;->isInProgress()Z

    move-result v7

    if-nez v7, :cond_a3

    .line 194
    iget-object v7, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v7}, Lcom/android/server/wm/DragState;->closeLocked()V

    :cond_a3
    monitor-exit v10
    :try_end_a4
    .catchall {:try_start_8f .. :try_end_a4} :catchall_44

    .line 200
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v7, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v7}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postPerformDrag()V

    .line 116
    return-object v0

    .line 119
    :cond_b3
    :try_start_b3
    iget-object v7, v8, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v11, 0x0

    invoke-virtual {v7, v0, v6, v11}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v7
    :try_end_ba
    .catchall {:try_start_b3 .. :try_end_ba} :catchall_260

    move-object v11, v7

    .line 121
    .local v11, "callingWin":Lcom/android/server/wm/WindowState;
    if-nez v11, :cond_fa

    .line 122
    :try_start_bd
    const-string v7, "WindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Bad requesting window "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d3
    .catchall {:try_start_bd .. :try_end_d3} :catchall_72

    .line 123
    nop

    .line 190
    if-eqz p6, :cond_d9

    .line 191
    :try_start_d6
    invoke-virtual/range {p6 .. p6}, Landroid/view/SurfaceControl;->release()V

    .line 193
    :cond_d9
    iget-object v7, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v7, :cond_ea

    iget-object v7, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v7}, Lcom/android/server/wm/DragState;->isInProgress()Z

    move-result v7

    if-nez v7, :cond_ea

    .line 194
    iget-object v7, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v7}, Lcom/android/server/wm/DragState;->closeLocked()V

    :cond_ea
    monitor-exit v10
    :try_end_eb
    .catchall {:try_start_d6 .. :try_end_eb} :catchall_44

    .line 200
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v7, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v7}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postPerformDrag()V

    .line 123
    return-object v0

    .line 138
    :cond_fa
    :try_start_fa
    invoke-virtual {v11}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v7
    :try_end_fe
    .catchall {:try_start_fa .. :try_end_fe} :catchall_260

    move-object v12, v7

    .line 139
    .local v12, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v12, :cond_12f

    .line 140
    :try_start_101
    const-string v7, "WindowManager"

    const-string v13, "display content is null"

    invoke-static {v7, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_108
    .catchall {:try_start_101 .. :try_end_108} :catchall_72

    .line 141
    nop

    .line 190
    if-eqz p6, :cond_10e

    .line 191
    :try_start_10b
    invoke-virtual/range {p6 .. p6}, Landroid/view/SurfaceControl;->release()V

    .line 193
    :cond_10e
    iget-object v7, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v7, :cond_11f

    iget-object v7, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v7}, Lcom/android/server/wm/DragState;->isInProgress()Z

    move-result v7

    if-nez v7, :cond_11f

    .line 194
    iget-object v7, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v7}, Lcom/android/server/wm/DragState;->closeLocked()V

    :cond_11f
    monitor-exit v10
    :try_end_120
    .catchall {:try_start_10b .. :try_end_120} :catchall_44

    .line 200
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v7, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v7}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postPerformDrag()V

    .line 141
    return-object v0

    .line 144
    :cond_12f
    move/from16 v13, p5

    and-int/lit16 v7, v13, 0x200

    if-nez v7, :cond_139

    .line 145
    const v7, 0x3f350481    # 0.7071f

    goto :goto_13b

    :cond_139
    const/high16 v7, 0x3f800000    # 1.0f

    :goto_13b
    move v14, v7

    .line 146
    .local v14, "alpha":F
    :try_start_13c
    invoke-interface/range {p4 .. p4}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 147
    .local v7, "winBinder":Landroid/os/IBinder;
    new-instance v15, Landroid/os/Binder;

    invoke-direct {v15}, Landroid/os/Binder;-><init>()V
    :try_end_145
    .catchall {:try_start_13c .. :try_end_145} :catchall_25e

    move/from16 v19, v9

    move-object v9, v4

    move-object v4, v15

    .line 148
    .local v4, "token":Landroid/os/IBinder;
    .local v9, "dragToken":Landroid/os/IBinder;
    .restart local v19    # "callbackResult":Z
    :try_start_149
    new-instance v15, Lcom/android/server/wm/DragState;

    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;
    :try_end_14d
    .catchall {:try_start_149 .. :try_end_14d} :catchall_258

    move-object v1, v15

    move-object v2, v0

    move-object v3, v8

    move-object/from16 v5, p6

    move v6, v13

    :try_start_153
    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/DragState;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DragDropController;Landroid/os/IBinder;Landroid/view/SurfaceControl;ILandroid/os/IBinder;)V

    iput-object v15, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;
    :try_end_158
    .catchall {:try_start_153 .. :try_end_158} :catchall_24f

    .line 149
    const/4 v1, 0x0

    .line 150
    .end local p6    # "surface":Landroid/view/SurfaceControl;
    .restart local v1    # "surface":Landroid/view/SurfaceControl;
    :try_start_159
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    move/from16 v2, p2

    iput v2, v0, Lcom/android/server/wm/DragState;->mPid:I

    .line 151
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    move/from16 v3, p3

    iput v3, v0, Lcom/android/server/wm/DragState;->mUid:I

    .line 152
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iput v14, v0, Lcom/android/server/wm/DragState;->mOriginalAlpha:F

    .line 153
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iput-object v9, v0, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    .line 155
    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v0

    .line 156
    .local v0, "display":Landroid/view/Display;
    iget-object v5, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    iget-object v6, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v15, v8, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v15, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v2, v11, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    invoke-interface {v5, v6, v0, v15, v2}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->registerInputChannel(Lcom/android/server/wm/DragState;Landroid/view/Display;Lcom/android/server/input/InputManagerService;Landroid/view/InputChannel;)Z

    move-result v2

    if-nez v2, :cond_1c2

    .line 159
    const-string v2, "WindowManager"

    const-string v5, "Unable to transfer touch focus"

    invoke-static {v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18e
    .catchall {:try_start_159 .. :try_end_18e} :catchall_247

    .line 160
    nop

    .line 190
    if-eqz v1, :cond_1a0

    .line 191
    :try_start_191
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->release()V

    goto :goto_1a0

    .line 197
    .end local v0    # "display":Landroid/view/Display;
    .end local v4    # "token":Landroid/os/IBinder;
    .end local v7    # "winBinder":Landroid/os/IBinder;
    .end local v11    # "callingWin":Lcom/android/server/wm/WindowState;
    .end local v12    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v14    # "alpha":F
    :catchall_195
    move-exception v0

    move-object/from16 v18, v1

    move/from16 v4, p11

    move/from16 v6, p8

    move/from16 v15, p9

    goto/16 :goto_287

    .line 193
    .restart local v0    # "display":Landroid/view/Display;
    .restart local v4    # "token":Landroid/os/IBinder;
    .restart local v7    # "winBinder":Landroid/os/IBinder;
    .restart local v11    # "callingWin":Lcom/android/server/wm/WindowState;
    .restart local v12    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v14    # "alpha":F
    :cond_1a0
    :goto_1a0
    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v2, :cond_1b1

    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v2}, Lcom/android/server/wm/DragState;->isInProgress()Z

    move-result v2

    if-nez v2, :cond_1b1

    .line 194
    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v2}, Lcom/android/server/wm/DragState;->closeLocked()V

    :cond_1b1
    monitor-exit v10
    :try_end_1b2
    .catchall {:try_start_191 .. :try_end_1b2} :catchall_195

    .line 200
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v2}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postPerformDrag()V

    .line 160
    const/4 v2, 0x0

    return-object v2

    .line 163
    :cond_1c2
    :try_start_1c2
    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iput-object v12, v2, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 164
    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    move-object/from16 v5, p12

    iput-object v5, v2, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    .line 165
    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;
    :try_end_1ce
    .catchall {:try_start_1c2 .. :try_end_1ce} :catchall_247

    move/from16 v6, p8

    move/from16 v15, p9

    :try_start_1d2
    invoke-virtual {v2, v6, v15}, Lcom/android/server/wm/DragState;->broadcastDragStartedLocked(FF)V

    .line 166
    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    move/from16 v3, p7

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DragState;->overridePointerIconLocked(I)V

    .line 168
    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    move/from16 v3, p10

    iput v3, v2, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    .line 169
    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;
    :try_end_1e4
    .catchall {:try_start_1d2 .. :try_end_1e4} :catchall_243

    move-object/from16 v20, v4

    move/from16 v4, p11

    :try_start_1e8
    iput v4, v2, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    .line 172
    .end local v4    # "token":Landroid/os/IBinder;
    .local v20, "token":Landroid/os/IBinder;
    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v2, v2, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 175
    .local v2, "surfaceControl":Landroid/view/SurfaceControl;
    nop

    .line 176
    invoke-virtual {v11}, Lcom/android/server/wm/WindowState;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v16

    move-object/from16 v21, v16

    .line 177
    .local v21, "transaction":Landroid/view/SurfaceControl$Transaction;
    move-object/from16 v22, v0

    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    .end local v0    # "display":Landroid/view/Display;
    .local v22, "display":Landroid/view/Display;
    iget v0, v0, Lcom/android/server/wm/DragState;->mOriginalAlpha:F

    move-object/from16 v5, v21

    invoke-virtual {v5, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 178
    .end local v21    # "transaction":Landroid/view/SurfaceControl$Transaction;
    .local v5, "transaction":Landroid/view/SurfaceControl$Transaction;
    sub-float v0, v6, v3

    sub-float v3, v15, v4

    invoke-virtual {v5, v2, v0, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 180
    invoke-virtual {v5, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 181
    invoke-virtual {v12, v5, v2}, Lcom/android/server/wm/DisplayContent;->reparentToOverlay(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 182
    invoke-virtual {v11}, Lcom/android/server/wm/WindowState;->scheduleAnimation()V

    .line 188
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0, v6, v15}, Lcom/android/server/wm/DragState;->notifyLocationLocked(FF)V
    :try_end_215
    .catchall {:try_start_1e8 .. :try_end_215} :catchall_241

    .line 190
    .end local v2    # "surfaceControl":Landroid/view/SurfaceControl;
    .end local v5    # "transaction":Landroid/view/SurfaceControl$Transaction;
    .end local v7    # "winBinder":Landroid/os/IBinder;
    .end local v11    # "callingWin":Lcom/android/server/wm/WindowState;
    .end local v12    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v14    # "alpha":F
    .end local v20    # "token":Landroid/os/IBinder;
    .end local v22    # "display":Landroid/view/Display;
    if-eqz v1, :cond_21a

    .line 191
    :try_start_217
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->release()V

    .line 193
    :cond_21a
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v0, :cond_22b

    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_22b

    .line 194
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->closeLocked()V

    .line 197
    :cond_22b
    monitor-exit v10
    :try_end_22c
    .catchall {:try_start_217 .. :try_end_22c} :catchall_271

    :try_start_22c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_22f
    .catchall {:try_start_22c .. :try_end_22f} :catchall_23c

    .line 198
    nop

    .line 200
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v0}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postPerformDrag()V

    .line 198
    return-object v9

    .line 200
    :catchall_23c
    move-exception v0

    move-object/from16 v18, v1

    goto/16 :goto_29b

    .line 190
    :catchall_241
    move-exception v0

    goto :goto_26b

    :catchall_243
    move-exception v0

    move/from16 v4, p11

    goto :goto_26b

    :catchall_247
    move-exception v0

    move/from16 v4, p11

    move/from16 v6, p8

    move/from16 v15, p9

    goto :goto_26b

    .end local v1    # "surface":Landroid/view/SurfaceControl;
    .restart local p6    # "surface":Landroid/view/SurfaceControl;
    :catchall_24f
    move-exception v0

    move/from16 v4, p11

    move/from16 v6, p8

    move/from16 v15, p9

    goto/16 :goto_7b

    :catchall_258
    move-exception v0

    move v4, v1

    move v15, v3

    move v6, v5

    goto/16 :goto_7b

    .end local v19    # "callbackResult":Z
    .local v4, "dragToken":Landroid/os/IBinder;
    .local v9, "callbackResult":Z
    :catchall_25e
    move-exception v0

    goto :goto_263

    :catchall_260
    move-exception v0

    move/from16 v13, p5

    .end local p6    # "surface":Landroid/view/SurfaceControl;
    .restart local v1    # "surface":Landroid/view/SurfaceControl;
    :goto_263
    move v15, v3

    move v6, v5

    move/from16 v19, v9

    move-object v9, v4

    move v4, v1

    move-object/from16 v1, p6

    .end local v4    # "dragToken":Landroid/os/IBinder;
    .local v9, "dragToken":Landroid/os/IBinder;
    .restart local v19    # "callbackResult":Z
    :goto_26b
    if-eqz v1, :cond_275

    .line 191
    :try_start_26d
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->release()V

    goto :goto_275

    .line 197
    :catchall_271
    move-exception v0

    move-object/from16 v18, v1

    goto :goto_287

    .line 193
    :cond_275
    :goto_275
    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v2, :cond_286

    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v2}, Lcom/android/server/wm/DragState;->isInProgress()Z

    move-result v2

    if-nez v2, :cond_286

    .line 194
    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v2}, Lcom/android/server/wm/DragState;->closeLocked()V

    :cond_286
    throw v0
    :try_end_287
    .catchall {:try_start_26d .. :try_end_287} :catchall_271

    .line 197
    .end local v1    # "surface":Landroid/view/SurfaceControl;
    .local v18, "surface":Landroid/view/SurfaceControl;
    :goto_287
    :try_start_287
    monitor-exit v10
    :try_end_288
    .catchall {:try_start_287 .. :try_end_288} :catchall_28e

    :try_start_288
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_28c
    .catchall {:try_start_288 .. :try_end_28c} :catchall_28c

    .line 200
    :catchall_28c
    move-exception v0

    goto :goto_29b

    .line 197
    :catchall_28e
    move-exception v0

    goto :goto_287

    .line 200
    .end local v18    # "surface":Landroid/view/SurfaceControl;
    .end local v19    # "callbackResult":Z
    .restart local v4    # "dragToken":Landroid/os/IBinder;
    .local v9, "callbackResult":Z
    .restart local p6    # "surface":Landroid/view/SurfaceControl;
    :catchall_290
    move-exception v0

    move/from16 v13, p5

    move v15, v3

    move v6, v5

    move/from16 v19, v9

    move-object v9, v4

    move v4, v1

    move-object/from16 v18, p6

    .end local v4    # "dragToken":Landroid/os/IBinder;
    .end local p6    # "surface":Landroid/view/SurfaceControl;
    .local v9, "dragToken":Landroid/os/IBinder;
    .restart local v18    # "surface":Landroid/view/SurfaceControl;
    .restart local v19    # "callbackResult":Z
    :goto_29b
    iget-object v1, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v1}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postPerformDrag()V

    throw v0
.end method

.method registerCallback(Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;)V
    .registers 3
    .param p1, "callback"    # Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    .line 82
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 84
    return-void
.end method

.method reportDropResult(Landroid/view/IWindow;Z)V
    .registers 9
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "consumed"    # Z

    .line 205
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 210
    .local v0, "token":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v1, p1, p2}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->preReportDropResult(Landroid/view/IWindow;Z)V

    .line 212
    :try_start_f
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v1
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_b0

    :try_start_14
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 213
    iget-object v2, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-nez v2, :cond_32

    .line 216
    const-string v2, "WindowManager"

    const-string v3, "Drop result given but no drag in progress"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_14 .. :try_end_23} :catchall_aa

    .line 240
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v1}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postReportDropResult()V

    .line 217
    return-void

    .line 220
    :cond_32
    :try_start_32
    iget-object v2, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v2, v2, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    if-ne v2, v0, :cond_8b

    .line 229
    iget-object v2, p0, Lcom/android/server/wm/DragDropController;->mHandler:Landroid/os/Handler;

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 230
    iget-object v2, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1, v4}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 231
    .local v2, "callingWin":Lcom/android/server/wm/WindowState;
    if-nez v2, :cond_71

    .line 232
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad result-reporting window "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    monitor-exit v1
    :try_end_62
    .catchall {:try_start_32 .. :try_end_62} :catchall_aa

    .line 240
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v1}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postReportDropResult()V

    .line 233
    return-void

    .line 236
    :cond_71
    :try_start_71
    iget-object v3, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iput-boolean p2, v3, Lcom/android/server/wm/DragState;->mDragResult:Z

    .line 237
    iget-object v3, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v3}, Lcom/android/server/wm/DragState;->endDragLocked()V

    .line 238
    .end local v2    # "callingWin":Lcom/android/server/wm/WindowState;
    monitor-exit v1
    :try_end_7b
    .catchall {:try_start_71 .. :try_end_7b} :catchall_aa

    :try_start_7b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_7e
    .catchall {:try_start_7b .. :try_end_7e} :catchall_b0

    .line 240
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v1}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postReportDropResult()V

    .line 241
    nop

    .line 242
    return-void

    .line 222
    :cond_8b
    :try_start_8b
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid drop-result claim by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "reportDropResult() by non-recipient"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 238
    :catchall_aa
    move-exception v2

    monitor-exit v1
    :try_end_ac
    .catchall {:try_start_8b .. :try_end_ac} :catchall_aa

    :try_start_ac
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
    :try_end_b0
    .catchall {:try_start_ac .. :try_end_b0} :catchall_b0

    .line 240
    :catchall_b0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v2}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postReportDropResult()V

    throw v1
.end method

.method sendDragStartedIfNeededLocked(Lcom/android/server/wm/WindowState;)V
    .registers 3
    .param p1, "window"    # Lcom/android/server/wm/WindowState;

    .line 92
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DragState;->sendDragStartedIfNeededLocked(Lcom/android/server/wm/WindowState;)V

    .line 93
    return-void
.end method

.method sendHandlerMessage(ILjava/lang/Object;)V
    .registers 4
    .param p1, "what"    # I
    .param p2, "arg"    # Ljava/lang/Object;

    .line 312
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 313
    return-void
.end method

.method sendTimeoutMessage(ILjava/lang/Object;)V
    .registers 7
    .param p1, "what"    # I
    .param p2, "arg"    # Ljava/lang/Object;

    .line 319
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 320
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 321
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 322
    return-void
.end method
