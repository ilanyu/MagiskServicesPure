.class public Lcom/android/server/wm/TaskTapPointerEventListener;
.super Ljava/lang/Object;
.source "TaskTapPointerEventListener.java"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# instance fields
.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public mPerfObj:Landroid/util/BoostFramework;

.field private mPointerIconType:I

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTouchExcludeRegion:Landroid/graphics/Region;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .registers 4
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTouchExcludeRegion:Landroid/graphics/Region;

    .line 42
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    .line 43
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPerfObj:Landroid/util/BoostFramework;

    .line 48
    iput-object p1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 49
    iput-object p2, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 50
    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPerfObj:Landroid/util/BoostFramework;

    if-nez v0, :cond_26

    .line 51
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPerfObj:Landroid/util/BoostFramework;

    .line 53
    :cond_26
    return-void
.end method

.method private getDisplayId()I
    .registers 2

    .line 132
    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    return v0
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .registers 11
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 64
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 65
    .local v0, "action":I
    and-int/lit16 v1, v0, 0xff

    if-eqz v1, :cond_9e

    const/4 v2, 0x7

    if-eq v1, v2, :cond_d

    goto/16 :goto_bc

    .line 80
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 81
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 82
    .local v2, "y":I
    iget-object v3, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/wm/DisplayContent;->findTaskForResizePoint(II)Lcom/android/server/wm/Task;

    move-result-object v3

    .line 83
    .local v3, "task":Lcom/android/server/wm/Task;
    const/4 v4, 0x1

    .line 84
    .local v4, "iconType":I
    if-eqz v3, :cond_79

    .line 85
    iget-object v5, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    .line 86
    iget-object v5, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_79

    iget-object v5, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-nez v5, :cond_79

    .line 87
    iget-object v5, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    const/16 v6, 0x3f6

    const/16 v7, 0x3f8

    const/16 v8, 0x3f9

    if-ge v1, v5, :cond_53

    .line 89
    iget-object v5, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-ge v2, v5, :cond_49

    .line 91
    move v6, v8

    goto :goto_51

    .line 90
    :cond_49
    iget-object v5, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    if-le v2, v5, :cond_51

    .line 91
    move v6, v7

    nop

    :cond_51
    :goto_51
    move v4, v6

    goto :goto_79

    .line 92
    :cond_53
    iget-object v5, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    if-le v1, v5, :cond_6b

    .line 94
    iget-object v5, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-ge v2, v5, :cond_61

    .line 96
    move v6, v7

    goto :goto_69

    .line 95
    :cond_61
    iget-object v5, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    if-le v2, v5, :cond_69

    .line 96
    move v6, v8

    nop

    :cond_69
    :goto_69
    move v4, v6

    goto :goto_79

    .line 97
    :cond_6b
    iget-object v5, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-lt v2, v5, :cond_77

    iget-object v5, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    if-le v2, v5, :cond_79

    .line 98
    :cond_77
    const/16 v4, 0x3f7

    .line 102
    :cond_79
    :goto_79
    iget v5, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    if-eq v5, v4, :cond_bc

    .line 103
    iput v4, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    .line 104
    iget v5, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_94

    .line 106
    iget-object v5, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v6, 0x37

    iget-object v7, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5, v6, v1, v2, v7}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 107
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto :goto_bc

    .line 109
    :cond_94
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v5

    iget v6, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    invoke-virtual {v5, v6}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    .end local v1    # "x":I
    .end local v2    # "y":I
    .end local v3    # "task":Lcom/android/server/wm/Task;
    .end local v4    # "iconType":I
    goto :goto_bc

    .line 67
    :cond_9e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 68
    .restart local v1    # "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 70
    .restart local v2    # "y":I
    monitor-enter p0

    .line 71
    :try_start_a9
    iget-object v3, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-nez v3, :cond_ba

    .line 72
    iget-object v3, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    iget-object v4, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/server/wm/TaskPositioningController;->handleTapOutsideTask(Lcom/android/server/wm/DisplayContent;II)V

    .line 75
    :cond_ba
    monitor-exit p0
    :try_end_bb
    .catchall {:try_start_a9 .. :try_end_bb} :catchall_db

    .line 77
    .end local v1    # "x":I
    .end local v2    # "y":I
    nop

    .line 115
    :cond_bc
    :goto_bc
    sget-boolean v1, Lcom/android/server/am/ActivityManagerService;->mIsPerfLockAcquired:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_c8

    .line 116
    sget-object v1, Lcom/android/server/am/ActivityManagerService;->mPerf:Landroid/util/BoostFramework;

    invoke-virtual {v1}, Landroid/util/BoostFramework;->perfLockRelease()I

    .line 117
    sput-boolean v2, Lcom/android/server/am/ActivityManagerService;->mIsPerfLockAcquired:Z

    .line 119
    :cond_c8
    sget-boolean v1, Lcom/android/server/am/ActivityStackSupervisor;->mPerfSendTapHint:Z

    if-eqz v1, :cond_da

    iget-object v1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPerfObj:Landroid/util/BoostFramework;

    if-eqz v1, :cond_da

    .line 120
    iget-object v1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPerfObj:Landroid/util/BoostFramework;

    const/16 v3, 0x1043

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;)I

    .line 121
    sput-boolean v2, Lcom/android/server/am/ActivityStackSupervisor;->mPerfSendTapHint:Z

    .line 123
    :cond_da
    return-void

    .line 75
    .restart local v1    # "x":I
    .restart local v2    # "y":I
    :catchall_db
    move-exception v3

    :try_start_dc
    monitor-exit p0
    :try_end_dd
    .catchall {:try_start_dc .. :try_end_dd} :catchall_db

    throw v3
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;I)V
    .registers 4
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
    .param p2, "displayId"    # I

    .line 57
    invoke-direct {p0}, Lcom/android/server/wm/TaskTapPointerEventListener;->getDisplayId()I

    move-result v0

    if-ne p2, v0, :cond_9

    .line 58
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskTapPointerEventListener;->onPointerEvent(Landroid/view/MotionEvent;)V

    .line 60
    :cond_9
    return-void
.end method

.method setTouchExcludeRegion(Landroid/graphics/Region;)V
    .registers 3
    .param p1, "newRegion"    # Landroid/graphics/Region;

    .line 126
    monitor-enter p0

    .line 127
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 128
    monitor-exit p0

    .line 129
    return-void

    .line 128
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method
