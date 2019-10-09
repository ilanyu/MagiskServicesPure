.class public Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SecurityPolicy"
.end annotation


# static fields
.field public static final INVALID_WINDOW_ID:I = -0x1

.field private static final KEEP_SOURCE_EVENT_TYPES:I = 0x43b9bf


# instance fields
.field public mA11yWindowInfoById:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mAccessibilityFocusNodeId:J

.field public mAccessibilityFocusedWindowId:I

.field public mActiveWindowId:I

.field public mFocusedWindowId:I

.field private mTouchInteractionInProgress:Z

.field public mWindowInfoById:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/WindowInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mWindows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 2935
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2956
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mA11yWindowInfoById:Landroid/util/SparseArray;

    .line 2957
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindowInfoById:Landroid/util/SparseArray;

    .line 2959
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    .line 2960
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mFocusedWindowId:I

    .line 2961
    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    .line 2962
    const-wide/32 v0, 0x7fffffff

    iput-wide v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusNodeId:J

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    .param p1, "x1"    # I

    .line 2935
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->getBindInstantServiceAllowed(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;IZ)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 2935
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->setBindInstantServiceAllowed(IZ)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;)Landroid/view/accessibility/AccessibilityWindowInfo;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    .line 2935
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->getPictureInPictureWindow()Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    .param p1, "x1"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 2935
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canDispatchAccessibilityEventLocked(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 2935
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;I)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    .param p1, "x1"    # I

    .line 2935
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveProfileParentLocked(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;I)Landroid/view/WindowInfo;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    .param p1, "x1"    # I

    .line 2935
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->findWindowInfoById(I)Landroid/view/WindowInfo;

    move-result-object v0

    return-object v0
.end method

.method private box(I)Ljava/util/function/IntSupplier;
    .registers 3
    .param p1, "value"    # I

    .line 3392
    invoke-static {p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainSupplier(I)Lcom/android/internal/util/function/pooled/PooledSupplier$OfInt;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledSupplier$OfInt;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledSupplier$OfInt;

    move-result-object v0

    return-object v0
.end method

.method private canDispatchAccessibilityEventLocked(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 2967
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    .line 2968
    .local v0, "eventType":I
    sparse-switch v0, :sswitch_data_12

    .line 2995
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->isRetrievalAllowingWindowLocked(I)Z

    move-result v1

    return v1

    .line 2988
    :sswitch_10
    const/4 v1, 0x1

    return v1

    :sswitch_data_12
    .sparse-switch
        0x20 -> :sswitch_10
        0x40 -> :sswitch_10
        0x80 -> :sswitch_10
        0x100 -> :sswitch_10
        0x200 -> :sswitch_10
        0x400 -> :sswitch_10
        0x4000 -> :sswitch_10
        0x40000 -> :sswitch_10
        0x80000 -> :sswitch_10
        0x100000 -> :sswitch_10
        0x200000 -> :sswitch_10
        0x400000 -> :sswitch_10
        0x1000000 -> :sswitch_10
    .end sparse-switch
.end method

.method private enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "function"    # Ljava/lang/String;

    .line 3600
    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->OWN_PROCESS_ID:I
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4000()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    if-ne v0, v1, :cond_b

    .line 3601
    return-void

    .line 3603
    :cond_b
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3608
    return-void

    .line 3604
    :cond_12
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You do not have "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " required to call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3606
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private findWindowInfoById(I)Landroid/view/WindowInfo;
    .registers 3
    .param p1, "windowId"    # I

    .line 3583
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowInfo;

    return-object v0
.end method

.method private getBindInstantServiceAllowed(I)Z
    .registers 5
    .param p1, "userId"    # I

    .line 3076
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1700(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_BIND_INSTANT_SERVICE"

    const-string v2, "getBindInstantServiceAllowed"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3079
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3400(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 3080
    .local v0, "state":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    if-eqz v0, :cond_21

    iget-boolean v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBindInstantServiceAllowed:Z

    if-eqz v1, :cond_21

    const/4 v1, 0x1

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :goto_22
    return v1
.end method

.method private getFocusedWindowId()I
    .registers 4

    .line 3615
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2700(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerInternal;->getFocusedWindowToken()Landroid/os/IBinder;

    move-result-object v0

    .line 3616
    .local v0, "token":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$200(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3617
    :try_start_11
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->findWindowIdLocked(Landroid/os/IBinder;)I
    invoke-static {v2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2400(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/IBinder;)I

    move-result v2

    monitor-exit v1

    return v2

    .line 3618
    :catchall_19
    move-exception v2

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_19

    throw v2
.end method

.method private getPictureInPictureWindow()Landroid/view/accessibility/AccessibilityWindowInfo;
    .registers 5

    .line 3587
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    if-eqz v0, :cond_1f

    .line 3588
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 3589
    .local v0, "windowCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v0, :cond_1f

    .line 3590
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 3591
    .local v2, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->isInPictureInPictureMode()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 3592
    return-object v2

    .line 3589
    .end local v2    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 3596
    .end local v0    # "windowCount":I
    .end local v1    # "i":I
    :cond_1f
    const/4 v0, 0x0

    return-object v0
.end method

.method private hasPermission(Ljava/lang/String;)Z
    .registers 3
    .param p1, "permission"    # Ljava/lang/String;

    .line 3611
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1700(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private isRetrievalAllowingWindowLocked(I)Z
    .registers 6
    .param p1, "windowId"    # I

    .line 3546
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_a

    .line 3547
    return v1

    .line 3549
    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v2, 0x7d0

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1a

    .line 3550
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->isShellAllowedToRetrieveWindowLocked(I)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 3551
    return v3

    .line 3554
    :cond_1a
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    if-ne p1, v0, :cond_1f

    .line 3555
    return v1

    .line 3557
    :cond_1f
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->findA11yWindowInfoById(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v0

    if-eqz v0, :cond_26

    goto :goto_27

    :cond_26
    move v1, v3

    :goto_27
    return v1
.end method

.method private isShellAllowedToRetrieveWindowLocked(I)Z
    .registers 9
    .param p1, "windowId"    # I

    .line 3561
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3563
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->findWindowTokenLocked(I)Landroid/os/IBinder;
    invoke-static {v2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3900(Lcom/android/server/accessibility/AccessibilityManagerService;I)Landroid/os/IBinder;

    move-result-object v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_3c

    .line 3564
    .local v2, "windowToken":Landroid/os/IBinder;
    const/4 v3, 0x0

    if-nez v2, :cond_12

    .line 3565
    nop

    .line 3574
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3565
    return v3

    .line 3567
    :cond_12
    :try_start_12
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2700(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/wm/WindowManagerInternal;->getWindowOwnerUserId(Landroid/os/IBinder;)I

    move-result v4
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_3c

    .line 3568
    .local v4, "userId":I
    const/16 v5, -0x2710

    if-ne v4, v5, :cond_25

    .line 3569
    nop

    .line 3574
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3569
    return v3

    .line 3571
    :cond_25
    :try_start_25
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mUserManager:Landroid/os/UserManager;
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3800(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/os/UserManager;

    move-result-object v3

    const-string/jumbo v5, "no_debugging_features"

    .line 3572
    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    .line 3571
    invoke-virtual {v3, v5, v6}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v3
    :try_end_36
    .catchall {:try_start_25 .. :try_end_36} :catchall_3c

    .line 3574
    xor-int/lit8 v3, v3, 0x1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3571
    return v3

    .line 3574
    .end local v2    # "windowToken":Landroid/os/IBinder;
    .end local v4    # "userId":I
    :catchall_3c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private isValidPackageForUid(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 3001
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3003
    .local v0, "token":J
    const/4 v2, 0x0

    :try_start_5
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3200(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 3004
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 3003
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v3
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_13} :catch_20
    .catchall {:try_start_5 .. :try_end_13} :catchall_1b

    if-ne p2, v3, :cond_17

    const/4 v2, 0x1

    nop

    .line 3008
    :cond_17
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3003
    return v2

    .line 3008
    :catchall_1b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 3005
    :catch_20
    move-exception v3

    .line 3006
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    nop

    .line 3008
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3006
    return v2
.end method

.method private resolveProfileParentLocked(I)I
    .registers 6
    .param p1, "userId"    # I

    .line 3487
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$300(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v0

    if-eq p1, v0, :cond_2d

    .line 3488
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3490
    .local v0, "identity":J
    :try_start_c
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mUserManager:Landroid/os/UserManager;
    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3800(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 3491
    .local v2, "parent":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_24

    .line 3492
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_28

    .line 3495
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3492
    return v3

    .line 3495
    .end local v2    # "parent":Landroid/content/pm/UserInfo;
    :cond_24
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3496
    goto :goto_2d

    .line 3495
    :catchall_28
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 3498
    .end local v0    # "identity":J
    :cond_2d
    :goto_2d
    return p1
.end method

.method private sendEventsForChangedWindowsLocked(Ljava/util/List;Landroid/util/SparseArray;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;)V"
        }
    .end annotation

    .line 3210
    .local p1, "oldWindows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    .local p2, "oldWindowsById":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3212
    .local v0, "events":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityEvent;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 3213
    .local v1, "oldWindowsCount":I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_b
    if-ge v3, v1, :cond_2f

    .line 3214
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 3215
    .local v4, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mA11yWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2c

    .line 3216
    nop

    .line 3217
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v5

    const/4 v6, 0x2

    .line 3216
    invoke-static {v5, v6}, Landroid/view/accessibility/AccessibilityEvent;->obtainWindowsChangedEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3213
    .end local v4    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 3222
    .end local v3    # "i":I
    :cond_2f
    const/4 v3, 0x0

    .line 3223
    .local v3, "oldWindowIndex":I
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 3224
    .local v4, "newWindowCount":I
    move v5, v2

    .local v5, "i":I
    :goto_37
    if-ge v5, v4, :cond_70

    .line 3225
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 3226
    .local v6, "newWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v7

    invoke-virtual {p2, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 3227
    .local v7, "oldWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    if-nez v7, :cond_5b

    .line 3228
    nop

    .line 3229
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v8

    .line 3228
    const/4 v9, 0x1

    invoke-static {v8, v9}, Landroid/view/accessibility/AccessibilityEvent;->obtainWindowsChangedEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6d

    .line 3231
    :cond_5b
    invoke-virtual {v6, v7}, Landroid/view/accessibility/AccessibilityWindowInfo;->differenceFrom(Landroid/view/accessibility/AccessibilityWindowInfo;)I

    move-result v8

    .line 3232
    .local v8, "changes":I
    if-eqz v8, :cond_6d

    .line 3233
    nop

    .line 3234
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v9

    .line 3233
    invoke-static {v9, v8}, Landroid/view/accessibility/AccessibilityEvent;->obtainWindowsChangedEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3224
    .end local v6    # "newWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v7    # "oldWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v8    # "changes":I
    :cond_6d
    :goto_6d
    add-int/lit8 v5, v5, 0x1

    goto :goto_37

    .line 3239
    .end local v5    # "i":I
    :cond_70
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .line 3240
    .local v5, "numEvents":I
    nop

    .local v2, "i":I
    :goto_75
    if-ge v2, v5, :cond_8b

    .line 3241
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/accessibility/AccessibilityEvent;

    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I
    invoke-static {v8}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$300(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v8

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->sendAccessibilityEventLocked(Landroid/view/accessibility/AccessibilityEvent;I)V
    invoke-static {v6, v7, v8}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3700(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 3240
    add-int/lit8 v2, v2, 0x1

    goto :goto_75

    .line 3243
    .end local v2    # "i":I
    :cond_8b
    return-void
.end method

.method private setAccessibilityFocusedWindowLocked(I)V
    .registers 10
    .param p1, "windowId"    # I

    .line 3429
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    if-eq v0, p1, :cond_4f

    .line 3430
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    .line 3431
    const/16 v2, 0x80

    invoke-static {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->obtainWindowsChangedEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 3434
    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$300(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v3

    .line 3430
    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->sendAccessibilityEventLocked(Landroid/view/accessibility/AccessibilityEvent;I)V
    invoke-static {v0, v1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3700(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 3436
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    .line 3437
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    if-eqz v0, :cond_4f

    .line 3438
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 3439
    .local v0, "windowCount":I
    const/4 v1, 0x0

    move v3, v1

    .local v3, "i":I
    :goto_25
    if-ge v3, v0, :cond_4f

    .line 3440
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 3441
    .local v4, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v5

    if-ne v5, p1, :cond_49

    .line 3442
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityWindowInfo;->setAccessibilityFocused(Z)V

    .line 3443
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 3444
    invoke-static {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->obtainWindowsChangedEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 3446
    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I
    invoke-static {v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$300(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v7

    .line 3443
    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->sendAccessibilityEventLocked(Landroid/view/accessibility/AccessibilityEvent;I)V
    invoke-static {v5, v6, v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3700(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/view/accessibility/AccessibilityEvent;I)V

    goto :goto_4c

    .line 3449
    :cond_49
    invoke-virtual {v4, v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->setAccessibilityFocused(Z)V

    .line 3439
    .end local v4    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :goto_4c
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 3454
    .end local v0    # "windowCount":I
    .end local v3    # "i":I
    :cond_4f
    return-void
.end method

.method private setActiveWindowLocked(I)V
    .registers 10
    .param p1, "windowId"    # I

    .line 3403
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    if-eq v0, p1, :cond_4f

    .line 3404
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    .line 3405
    const/16 v2, 0x20

    invoke-static {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->obtainWindowsChangedEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 3407
    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$300(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v3

    .line 3404
    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->sendAccessibilityEventLocked(Landroid/view/accessibility/AccessibilityEvent;I)V
    invoke-static {v0, v1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3700(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 3409
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    .line 3410
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    if-eqz v0, :cond_4f

    .line 3411
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 3412
    .local v0, "windowCount":I
    const/4 v1, 0x0

    move v3, v1

    .local v3, "i":I
    :goto_25
    if-ge v3, v0, :cond_4f

    .line 3413
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 3414
    .local v4, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v5

    if-ne v5, p1, :cond_49

    .line 3415
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityWindowInfo;->setActive(Z)V

    .line 3416
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 3417
    invoke-static {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->obtainWindowsChangedEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 3419
    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I
    invoke-static {v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$300(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v7

    .line 3416
    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->sendAccessibilityEventLocked(Landroid/view/accessibility/AccessibilityEvent;I)V
    invoke-static {v5, v6, v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3700(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/view/accessibility/AccessibilityEvent;I)V

    goto :goto_4c

    .line 3421
    :cond_49
    invoke-virtual {v4, v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->setActive(Z)V

    .line 3412
    .end local v4    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :goto_4c
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 3426
    .end local v0    # "windowCount":I
    .end local v3    # "i":I
    :cond_4f
    return-void
.end method

.method private setBindInstantServiceAllowed(IZ)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "allowed"    # Z

    .line 3084
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1700(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_BIND_INSTANT_SERVICE"

    const-string/jumbo v2, "setBindInstantServiceAllowed"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3087
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3400(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 3088
    .local v0, "state":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    if-nez v0, :cond_30

    .line 3089
    if-nez p2, :cond_1f

    .line 3090
    return-void

    .line 3092
    :cond_1f
    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v1, v2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;I)V

    move-object v0, v1

    .line 3093
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3400(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3095
    :cond_30
    iget-boolean v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBindInstantServiceAllowed:Z

    if-eq v1, p2, :cond_3b

    .line 3096
    iput-boolean p2, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBindInstantServiceAllowed:Z

    .line 3097
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    invoke-static {v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$600(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 3099
    :cond_3b
    return-void
.end method


# virtual methods
.method public canCaptureFingerprintGestures(Lcom/android/server/accessibility/AccessibilityServiceConnection;)Z
    .registers 3
    .param p1, "service"    # Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 3482
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getCapabilities()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public canControlMagnification(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z
    .registers 3
    .param p1, "service"    # Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    .line 3472
    invoke-virtual {p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getCapabilities()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public canGetAccessibilityNodeInfoLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)Z
    .registers 4
    .param p1, "service"    # Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
    .param p2, "windowId"    # I

    .line 3458
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canRetrieveWindowContentLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3459
    invoke-direct {p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->isRetrievalAllowingWindowLocked(I)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 3458
    :goto_f
    return v0
.end method

.method public canPerformGestures(Lcom/android/server/accessibility/AccessibilityServiceConnection;)Z
    .registers 3
    .param p1, "service"    # Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 3477
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getCapabilities()I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public canRetrieveWindowContentLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z
    .registers 4
    .param p1, "service"    # Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    .line 3467
    invoke-virtual {p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getCapabilities()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1
.end method

.method public canRetrieveWindowsLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z
    .registers 3
    .param p1, "service"    # Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    .line 3463
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canRetrieveWindowContentLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRetrieveInteractiveWindows:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public clearWindowsLocked()V
    .registers 4

    .line 3102
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 3103
    .local v0, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInfo;>;"
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    .line 3104
    .local v1, "activeWindowId":I
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->updateWindowsLocked(Ljava/util/List;)V

    .line 3105
    iput v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    .line 3106
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    .line 3107
    return-void
.end method

.method public computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z
    .registers 10
    .param p1, "windowId"    # I
    .param p2, "outRegion"    # Landroid/graphics/Region;

    .line 3247
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    if-nez v0, :cond_6

    .line 3248
    const/4 v0, 0x0

    return v0

    .line 3255
    :cond_6
    const/4 v0, 0x0

    .line 3256
    .local v0, "windowInteractiveRegion":Landroid/graphics/Region;
    const/4 v1, 0x0

    .line 3258
    .local v1, "windowInteractiveRegionChanged":Z
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 3259
    .local v2, "windowCount":I
    add-int/lit8 v3, v2, -0x1

    .local v3, "i":I
    :goto_10
    if-ltz v3, :cond_4c

    .line 3260
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 3261
    .local v4, "currentWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    if-nez v0, :cond_30

    .line 3262
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v5

    if-ne v5, p1, :cond_49

    .line 3263
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2900(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/graphics/Rect;

    move-result-object v5

    .line 3264
    .local v5, "currentWindowBounds":Landroid/graphics/Rect;
    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 3265
    invoke-virtual {p2, v5}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 3266
    move-object v0, p2

    .line 3267
    goto :goto_49

    .line 3269
    .end local v5    # "currentWindowBounds":Landroid/graphics/Rect;
    :cond_30
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->getType()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_49

    .line 3271
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2900(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/graphics/Rect;

    move-result-object v5

    .line 3272
    .restart local v5    # "currentWindowBounds":Landroid/graphics/Rect;
    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 3273
    sget-object v6, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    move-result v6

    if-eqz v6, :cond_49

    .line 3274
    const/4 v1, 0x1

    .line 3259
    .end local v4    # "currentWindow":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v5    # "currentWindowBounds":Landroid/graphics/Rect;
    :cond_49
    :goto_49
    add-int/lit8 v3, v3, -0x1

    goto :goto_10

    .line 3279
    .end local v3    # "i":I
    :cond_4c
    return v1
.end method

.method computeValidReportedPackages(ILjava/lang/String;I)[Ljava/lang/String;
    .registers 12
    .param p1, "callingUid"    # I
    .param p2, "targetPackage"    # Ljava/lang/String;
    .param p3, "targetUid"    # I

    .line 3050
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_b

    .line 3052
    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object v0

    .line 3055
    :cond_b
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 3057
    .local v0, "uidPackages":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->getAppWidgetManager()Landroid/appwidget/AppWidgetManagerInternal;
    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3300(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/appwidget/AppWidgetManagerInternal;

    move-result-object v2

    .line 3058
    .local v2, "appWidgetManager":Landroid/appwidget/AppWidgetManagerInternal;
    if-eqz v2, :cond_47

    .line 3059
    nop

    .line 3060
    invoke-virtual {v2, p3}, Landroid/appwidget/AppWidgetManagerInternal;->getHostedWidgetPackages(I)Landroid/util/ArraySet;

    move-result-object v3

    .line 3061
    .local v3, "widgetPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v3, :cond_47

    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_47

    .line 3062
    array-length v4, v0

    .line 3063
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v5

    add-int/2addr v4, v5

    new-array v4, v4, [Ljava/lang/String;

    .line 3064
    .local v4, "validPackages":[Ljava/lang/String;
    array-length v5, v0

    invoke-static {v0, v1, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3065
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v5

    .line 3066
    .local v5, "widgetPackageCount":I
    nop

    .local v1, "i":I
    :goto_37
    if-ge v1, v5, :cond_46

    .line 3067
    array-length v6, v0

    add-int/2addr v6, v1

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v4, v6

    .line 3066
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    .line 3069
    .end local v1    # "i":I
    :cond_46
    return-object v4

    .line 3072
    .end local v3    # "widgetPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v4    # "validPackages":[Ljava/lang/String;
    .end local v5    # "widgetPackageCount":I
    :cond_47
    return-object v0
.end method

.method public findA11yWindowInfoById(I)Landroid/view/accessibility/AccessibilityWindowInfo;
    .registers 3
    .param p1, "windowId"    # I

    .line 3579
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mA11yWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    return-object v0
.end method

.method public getActiveWindowId()I
    .registers 3

    .line 3396
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mTouchInteractionInProgress:Z

    if-nez v0, :cond_f

    .line 3397
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->getFocusedWindowId()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    .line 3399
    :cond_f
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    return v0
.end method

.method public isCallerInteractingAcrossUsers(I)Z
    .registers 5
    .param p1, "userId"    # I

    .line 3537
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3538
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-eq v1, v2, :cond_1b

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_1b

    const/4 v1, -0x2

    if-eq p1, v1, :cond_1b

    const/4 v1, -0x3

    if-ne p1, v1, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v1, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v1, 0x1

    :goto_1c
    return v1
.end method

.method public onTouchInteractionEnd()V
    .registers 7

    .line 3364
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$200(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3365
    const/4 v1, 0x0

    :try_start_8
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mTouchInteractionInProgress:Z

    .line 3374
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2300(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v1

    iget v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    .line 3375
    .local v1, "oldActiveWindow":I
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mFocusedWindowId:I

    invoke-direct {p0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->setActiveWindowLocked(I)V

    .line 3381
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2300(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v2

    iget v2, v2, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    if-eq v1, v2, :cond_44

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    if-ne v2, v1, :cond_44

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 3383
    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$400(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mAccessibilityFocusOnlyInActiveWindow:Z

    if-eqz v2, :cond_44

    .line 3384
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;
    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2600(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    move-result-object v2

    sget-object v3, Lcom/android/server/accessibility/-$$Lambda$X-d4PICw0vnPU2BuBjOCbMMfcgU;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$X-d4PICw0vnPU2BuBjOCbMMfcgU;

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 3386
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->box(I)Ljava/util/function/IntSupplier;

    move-result-object v5

    .line 3384
    invoke-static {v3, v4, v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3388
    .end local v1    # "oldActiveWindow":I
    :cond_44
    monitor-exit v0

    .line 3389
    return-void

    .line 3388
    :catchall_46
    move-exception v1

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_8 .. :try_end_48} :catchall_46

    throw v1
.end method

.method public onTouchInteractionStart()V
    .registers 3

    .line 3358
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$200(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3359
    const/4 v1, 0x1

    :try_start_8
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mTouchInteractionInProgress:Z

    .line 3360
    monitor-exit v0

    .line 3361
    return-void

    .line 3360
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public resolveCallingUserIdEnforcingPermissionsLocked(I)I
    .registers 8
    .param p1, "userId"    # I

    .line 3502
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3503
    .local v0, "callingUid":I
    const/4 v1, -0x3

    const/4 v2, -0x2

    if-eqz v0, :cond_7c

    const/16 v3, 0x3e8

    if-eq v0, v3, :cond_7c

    const/16 v3, 0x7d0

    if-ne v0, v3, :cond_11

    goto :goto_7c

    .line 3512
    :cond_11
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 3513
    .local v3, "callingUserId":I
    if-ne v3, p1, :cond_1c

    .line 3514
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveProfileParentLocked(I)I

    move-result v1

    return v1

    .line 3516
    :cond_1c
    invoke-direct {p0, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveProfileParentLocked(I)I

    move-result v4

    .line 3517
    .local v4, "callingUserParentId":I
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I
    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$300(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v5

    if-ne v4, v5, :cond_33

    if-eq p1, v2, :cond_2c

    if-ne p1, v1, :cond_33

    .line 3520
    :cond_2c
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$300(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v1

    return v1

    .line 3522
    :cond_33
    const-string v5, "android.permission.INTERACT_ACROSS_USERS"

    invoke-direct {p0, v5}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->hasPermission(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_68

    const-string v5, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 3523
    invoke-direct {p0, v5}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->hasPermission(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_44

    goto :goto_68

    .line 3524
    :cond_44
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Call from user "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " as user "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " without permission INTERACT_ACROSS_USERS or INTERACT_ACROSS_USERS_FULL not allowed."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3528
    :cond_68
    :goto_68
    if-eq p1, v2, :cond_75

    if-ne p1, v1, :cond_6d

    goto :goto_75

    .line 3532
    :cond_6d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Calling user can be changed to only UserHandle.USER_CURRENT or UserHandle.USER_CURRENT_OR_SELF."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3530
    :cond_75
    :goto_75
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$300(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v1

    return v1

    .line 3506
    .end local v3    # "callingUserId":I
    .end local v4    # "callingUserParentId":I
    :cond_7c
    :goto_7c
    if-eq p1, v2, :cond_86

    if-ne p1, v1, :cond_81

    goto :goto_86

    .line 3510
    :cond_81
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveProfileParentLocked(I)I

    move-result v1

    return v1

    .line 3508
    :cond_86
    :goto_86
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$300(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v1

    return v1
.end method

.method resolveValidReportedPackageLocked(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .registers 10
    .param p1, "packageName"    # Ljava/lang/CharSequence;
    .param p2, "appId"    # I
    .param p3, "userId"    # I

    .line 3014
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 3015
    return-object v0

    .line 3018
    :cond_4
    const/16 v1, 0x3e8

    if-ne p2, v1, :cond_d

    .line 3019
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3022
    :cond_d
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3023
    .local v1, "packageNameStr":Ljava/lang/String;
    invoke-static {p3, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    .line 3024
    .local v2, "resolvedUid":I
    invoke-direct {p0, v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->isValidPackageForUid(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 3025
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3028
    :cond_20
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->getAppWidgetManager()Landroid/appwidget/AppWidgetManagerInternal;
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3300(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/appwidget/AppWidgetManagerInternal;

    move-result-object v3

    .line 3029
    .local v3, "appWidgetManager":Landroid/appwidget/AppWidgetManagerInternal;
    if-eqz v3, :cond_37

    .line 3030
    invoke-virtual {v3, v2}, Landroid/appwidget/AppWidgetManagerInternal;->getHostedWidgetPackages(I)Landroid/util/ArraySet;

    move-result-object v4

    .line 3029
    invoke-static {v4, v1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 3031
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3034
    :cond_37
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3200(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 3035
    .local v4, "packageNames":[Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_48

    .line 3036
    return-object v0

    .line 3045
    :cond_48
    const/4 v0, 0x0

    aget-object v0, v4, v0

    return-object v0
.end method

.method public updateActiveAndAccessibilityFocusedWindowLocked(IJII)V
    .registers 12
    .param p1, "windowId"    # I
    .param p2, "nodeId"    # J
    .param p4, "eventType"    # I
    .param p5, "eventAction"    # I

    .line 3298
    const/16 v0, 0x20

    if-eq p4, v0, :cond_84

    const/16 v0, 0x80

    if-eq p4, v0, :cond_6d

    const v0, 0x8000

    if-eq p4, v0, :cond_3b

    const/high16 v0, 0x10000

    if-eq p4, v0, :cond_13

    goto/16 :goto_a1

    .line 3340
    :cond_13
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$200(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3341
    :try_start_1a
    iget-wide v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusNodeId:J

    cmp-long v1, v1, p2

    const-wide/32 v2, 0x7fffffff

    if-nez v1, :cond_25

    .line 3342
    iput-wide v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusNodeId:J

    .line 3346
    :cond_25
    iget-wide v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusNodeId:J

    cmp-long v1, v4, v2

    if-nez v1, :cond_36

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    if-ne v1, p1, :cond_36

    const/16 v1, 0x40

    if-eq p5, v1, :cond_36

    .line 3350
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    .line 3352
    :cond_36
    monitor-exit v0

    goto :goto_a1

    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_1a .. :try_end_3a} :catchall_38

    throw v1

    .line 3327
    :cond_3b
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$200(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3328
    :try_start_42
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    if-eq v1, p1, :cond_68

    .line 3329
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2600(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    move-result-object v1

    sget-object v2, Lcom/android/server/accessibility/-$$Lambda$X-d4PICw0vnPU2BuBjOCbMMfcgU;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$X-d4PICw0vnPU2BuBjOCbMMfcgU;

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    .line 3332
    invoke-direct {p0, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->box(I)Ljava/util/function/IntSupplier;

    move-result-object v4

    .line 3329
    invoke-static {v2, v3, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3333
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2300(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v1

    invoke-direct {v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->setAccessibilityFocusedWindowLocked(I)V

    .line 3334
    iput-wide p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusNodeId:J

    .line 3336
    :cond_68
    monitor-exit v0

    .line 3337
    goto :goto_a1

    .line 3336
    :catchall_6a
    move-exception v1

    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_42 .. :try_end_6c} :catchall_6a

    throw v1

    .line 3319
    :cond_6d
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$200(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3320
    :try_start_74
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mTouchInteractionInProgress:Z

    if-eqz v1, :cond_7f

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    if-eq v1, p1, :cond_7f

    .line 3321
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->setActiveWindowLocked(I)V

    .line 3323
    :cond_7f
    monitor-exit v0

    .line 3324
    goto :goto_a1

    .line 3323
    :catchall_81
    move-exception v1

    monitor-exit v0
    :try_end_83
    .catchall {:try_start_74 .. :try_end_83} :catchall_81

    throw v1

    .line 3306
    :cond_84
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$200(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3307
    :try_start_8b
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowsForAccessibilityCallback:Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3500(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;

    move-result-object v1

    if-nez v1, :cond_9f

    .line 3308
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->getFocusedWindowId()I

    move-result v1

    iput v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mFocusedWindowId:I

    .line 3309
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mFocusedWindowId:I

    if-ne p1, v1, :cond_9f

    .line 3310
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    .line 3313
    :cond_9f
    monitor-exit v0

    .line 3314
    nop

    .line 3355
    :goto_a1
    return-void

    .line 3313
    :catchall_a2
    move-exception v1

    monitor-exit v0
    :try_end_a4
    .catchall {:try_start_8b .. :try_end_a4} :catchall_a2

    throw v1
.end method

.method public updateEventSourceLocked(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 3283
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const v1, 0x43b9bf

    and-int/2addr v0, v1

    if-nez v0, :cond_10

    .line 3284
    const/4 v0, 0x0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    .line 3286
    :cond_10
    return-void
.end method

.method public updateWindowsLocked(Ljava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/WindowInfo;",
            ">;)V"
        }
    .end annotation

    .line 3110
    .local p1, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInfo;>;"
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    if-nez v0, :cond_b

    .line 3111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    .line 3114
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3115
    .local v0, "oldWindowList":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mA11yWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v1

    .line 3117
    .local v1, "oldWindowsById":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 3118
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mA11yWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 3120
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_24
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_3a

    .line 3121
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowInfo;

    invoke-virtual {v4}, Landroid/view/WindowInfo;->recycle()V

    .line 3120
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 3123
    .end local v3    # "i":I
    :cond_3a
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 3125
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mFocusedWindowId:I

    .line 3126
    iget-boolean v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mTouchInteractionInProgress:Z

    if-nez v4, :cond_48

    .line 3127
    iput v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    .line 3135
    :cond_48
    const/4 v4, 0x1

    .line 3137
    .local v4, "activeWindowGone":Z
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .line 3141
    .local v5, "windowCount":I
    iget v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    const/4 v7, 0x1

    if-eq v6, v3, :cond_54

    move v3, v7

    goto :goto_55

    :cond_54
    move v3, v2

    .line 3143
    .local v3, "shouldClearAccessibilityFocus":Z
    :goto_55
    if-lez v5, :cond_e8

    .line 3144
    move v6, v4

    move v4, v2

    .local v4, "i":I
    .local v6, "activeWindowGone":Z
    :goto_59
    if-ge v4, v5, :cond_b2

    .line 3145
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowInfo;

    .line 3147
    .local v8, "windowInfo":Landroid/view/WindowInfo;
    iget-object v9, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowsForAccessibilityCallback:Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;
    invoke-static {v9}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3500(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;

    move-result-object v9

    if-eqz v9, :cond_74

    .line 3148
    iget-object v9, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowsForAccessibilityCallback:Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;
    invoke-static {v9}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$3500(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;

    move-result-object v9

    .line 3149
    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->populateReportedWindowLocked(Landroid/view/WindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-static {v9, v8}, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;->access$3600(Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;Landroid/view/WindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v9

    .local v9, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    goto :goto_75

    .line 3151
    .end local v9    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_74
    const/4 v9, 0x0

    .line 3153
    .restart local v9    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :goto_75
    if-eqz v9, :cond_af

    .line 3156
    add-int/lit8 v10, v5, -0x1

    invoke-virtual {v9}, Landroid/view/accessibility/AccessibilityWindowInfo;->getLayer()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {v9, v10}, Landroid/view/accessibility/AccessibilityWindowInfo;->setLayer(I)V

    .line 3158
    invoke-virtual {v9}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v10

    .line 3159
    .local v10, "windowId":I
    invoke-virtual {v9}, Landroid/view/accessibility/AccessibilityWindowInfo;->isFocused()Z

    move-result v11

    if-eqz v11, :cond_9c

    .line 3160
    iput v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mFocusedWindowId:I

    .line 3161
    iget-boolean v11, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mTouchInteractionInProgress:Z

    if-nez v11, :cond_97

    .line 3162
    iput v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    .line 3163
    invoke-virtual {v9, v7}, Landroid/view/accessibility/AccessibilityWindowInfo;->setActive(Z)V

    goto :goto_9c

    .line 3164
    :cond_97
    iget v11, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    if-ne v10, v11, :cond_9c

    .line 3165
    const/4 v6, 0x0

    .line 3168
    :cond_9c
    :goto_9c
    iget-object v11, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3169
    iget-object v11, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mA11yWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v11, v10, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3170
    iget-object v11, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-static {v8}, Landroid/view/WindowInfo;->obtain(Landroid/view/WindowInfo;)Landroid/view/WindowInfo;

    move-result-object v12

    invoke-virtual {v11, v10, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3144
    .end local v8    # "windowInfo":Landroid/view/WindowInfo;
    .end local v9    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v10    # "windowId":I
    :cond_af
    add-int/lit8 v4, v4, 0x1

    goto :goto_59

    .line 3174
    .end local v4    # "i":I
    :cond_b2
    iget-boolean v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mTouchInteractionInProgress:Z

    if-eqz v4, :cond_bc

    if-eqz v6, :cond_bc

    .line 3175
    iget v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mFocusedWindowId:I

    iput v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    .line 3180
    :cond_bc
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 3181
    .local v4, "accessibilityWindowCount":I
    nop

    .local v2, "i":I
    :goto_c3
    if-ge v2, v4, :cond_e7

    .line 3182
    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 3183
    .local v8, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v9

    iget v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    if-ne v9, v10, :cond_d8

    .line 3184
    invoke-virtual {v8, v7}, Landroid/view/accessibility/AccessibilityWindowInfo;->setActive(Z)V

    .line 3186
    :cond_d8
    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v9

    iget v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    if-ne v9, v10, :cond_e4

    .line 3187
    invoke-virtual {v8, v7}, Landroid/view/accessibility/AccessibilityWindowInfo;->setAccessibilityFocused(Z)V

    .line 3188
    const/4 v3, 0x0

    .line 3181
    .end local v8    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_e4
    add-int/lit8 v2, v2, 0x1

    goto :goto_c3

    .line 3193
    .end local v2    # "i":I
    .end local v4    # "accessibilityWindowCount":I
    :cond_e7
    move v4, v6

    .end local v6    # "activeWindowGone":Z
    .local v4, "activeWindowGone":Z
    :cond_e8
    invoke-direct {p0, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->sendEventsForChangedWindowsLocked(Ljava/util/List;Landroid/util/SparseArray;)V

    .line 3195
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 3196
    .local v2, "oldWindowCount":I
    add-int/lit8 v6, v2, -0x1

    .local v6, "i":I
    :goto_f1
    if-ltz v6, :cond_ff

    .line 3197
    invoke-interface {v0, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityWindowInfo;->recycle()V

    .line 3196
    add-int/lit8 v6, v6, -0x1

    goto :goto_f1

    .line 3200
    .end local v6    # "i":I
    :cond_ff
    if-eqz v3, :cond_118

    .line 3201
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;
    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2600(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    move-result-object v6

    sget-object v7, Lcom/android/server/accessibility/-$$Lambda$X-d4PICw0vnPU2BuBjOCbMMfcgU;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$X-d4PICw0vnPU2BuBjOCbMMfcgU;

    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget v9, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    .line 3204
    invoke-direct {p0, v9}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->box(I)Ljava/util/function/IntSupplier;

    move-result-object v9

    .line 3201
    invoke-static {v7, v8, v9}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3206
    :cond_118
    return-void
.end method
