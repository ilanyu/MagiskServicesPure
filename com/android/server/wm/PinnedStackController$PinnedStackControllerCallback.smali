.class Lcom/android/server/wm/PinnedStackController$PinnedStackControllerCallback;
.super Landroid/view/IPinnedStackController$Stub;
.source "PinnedStackController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/PinnedStackController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PinnedStackControllerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/PinnedStackController;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/PinnedStackController;)V
    .registers 2

    .line 126
    iput-object p1, p0, Lcom/android/server/wm/PinnedStackController$PinnedStackControllerCallback;->this$0:Lcom/android/server/wm/PinnedStackController;

    invoke-direct {p0}, Landroid/view/IPinnedStackController$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/PinnedStackController;Lcom/android/server/wm/PinnedStackController$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/wm/PinnedStackController;
    .param p2, "x1"    # Lcom/android/server/wm/PinnedStackController$1;

    .line 126
    invoke-direct {p0, p1}, Lcom/android/server/wm/PinnedStackController$PinnedStackControllerCallback;-><init>(Lcom/android/server/wm/PinnedStackController;)V

    return-void
.end method

.method public static synthetic lambda$setIsMinimized$0(Lcom/android/server/wm/PinnedStackController$PinnedStackControllerCallback;Z)V
    .registers 3
    .param p1, "isMinimized"    # Z

    .line 131
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController$PinnedStackControllerCallback;->this$0:Lcom/android/server/wm/PinnedStackController;

    # setter for: Lcom/android/server/wm/PinnedStackController;->mIsMinimized:Z
    invoke-static {v0, p1}, Lcom/android/server/wm/PinnedStackController;->access$702(Lcom/android/server/wm/PinnedStackController;Z)Z

    .line 132
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController$PinnedStackControllerCallback;->this$0:Lcom/android/server/wm/PinnedStackController;

    # getter for: Lcom/android/server/wm/PinnedStackController;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;
    invoke-static {v0}, Lcom/android/server/wm/PinnedStackController;->access$800(Lcom/android/server/wm/PinnedStackController;)Lcom/android/internal/policy/PipSnapAlgorithm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/PipSnapAlgorithm;->setMinimized(Z)V

    .line 133
    return-void
.end method

.method public static synthetic lambda$setMinEdgeSize$1(Lcom/android/server/wm/PinnedStackController$PinnedStackControllerCallback;I)V
    .registers 4
    .param p1, "minEdgeSize"    # I

    .line 139
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController$PinnedStackControllerCallback;->this$0:Lcom/android/server/wm/PinnedStackController;

    iget-object v1, p0, Lcom/android/server/wm/PinnedStackController$PinnedStackControllerCallback;->this$0:Lcom/android/server/wm/PinnedStackController;

    # getter for: Lcom/android/server/wm/PinnedStackController;->mDefaultMinSize:I
    invoke-static {v1}, Lcom/android/server/wm/PinnedStackController;->access$600(Lcom/android/server/wm/PinnedStackController;)I

    move-result v1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    # setter for: Lcom/android/server/wm/PinnedStackController;->mCurrentMinSize:I
    invoke-static {v0, v1}, Lcom/android/server/wm/PinnedStackController;->access$502(Lcom/android/server/wm/PinnedStackController;I)I

    .line 140
    return-void
.end method


# virtual methods
.method public getDisplayRotation()I
    .registers 3

    .line 145
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController$PinnedStackControllerCallback;->this$0:Lcom/android/server/wm/PinnedStackController;

    # getter for: Lcom/android/server/wm/PinnedStackController;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v0}, Lcom/android/server/wm/PinnedStackController;->access$300(Lcom/android/server/wm/PinnedStackController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 146
    iget-object v1, p0, Lcom/android/server/wm/PinnedStackController$PinnedStackControllerCallback;->this$0:Lcom/android/server/wm/PinnedStackController;

    # getter for: Lcom/android/server/wm/PinnedStackController;->mDisplayInfo:Landroid/view/DisplayInfo;
    invoke-static {v1}, Lcom/android/server/wm/PinnedStackController;->access$400(Lcom/android/server/wm/PinnedStackController;)Landroid/view/DisplayInfo;

    move-result-object v1

    iget v1, v1, Landroid/view/DisplayInfo;->rotation:I

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 147
    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setIsMinimized(Z)V
    .registers 4
    .param p1, "isMinimized"    # Z

    .line 130
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController$PinnedStackControllerCallback;->this$0:Lcom/android/server/wm/PinnedStackController;

    # getter for: Lcom/android/server/wm/PinnedStackController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/wm/PinnedStackController;->access$200(Lcom/android/server/wm/PinnedStackController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/-$$Lambda$PinnedStackController$PinnedStackControllerCallback$0SANOJyiLP67Pkj3NbDS5B-egBU;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/-$$Lambda$PinnedStackController$PinnedStackControllerCallback$0SANOJyiLP67Pkj3NbDS5B-egBU;-><init>(Lcom/android/server/wm/PinnedStackController$PinnedStackControllerCallback;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 134
    return-void
.end method

.method public setMinEdgeSize(I)V
    .registers 4
    .param p1, "minEdgeSize"    # I

    .line 138
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController$PinnedStackControllerCallback;->this$0:Lcom/android/server/wm/PinnedStackController;

    # getter for: Lcom/android/server/wm/PinnedStackController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/wm/PinnedStackController;->access$200(Lcom/android/server/wm/PinnedStackController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/-$$Lambda$PinnedStackController$PinnedStackControllerCallback$MdGjZinCTxKrX3GJTl1CXkAuFro;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/-$$Lambda$PinnedStackController$PinnedStackControllerCallback$MdGjZinCTxKrX3GJTl1CXkAuFro;-><init>(Lcom/android/server/wm/PinnedStackController$PinnedStackControllerCallback;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 141
    return-void
.end method
