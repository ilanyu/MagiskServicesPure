.class public Lcom/android/server/am/LockTaskController;
.super Ljava/lang/Object;
.source "LockTaskController.java"


# static fields
.field private static final LOCK_TASK_TAG:Ljava/lang/String; = "Lock-to-App"

.field private static final STATUS_BAR_FLAG_MAP_LOCKED:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field static final STATUS_BAR_MASK_LOCKED:I = 0x3a60000
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final STATUS_BAR_MASK_PINNED:I = 0x29f0000
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_LOCKTASK:Ljava/lang/String; = "ActivityManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mLockTaskFeatures:Landroid/util/SparseIntArray;

.field private mLockTaskModeState:I

.field private final mLockTaskModeTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mLockTaskPackages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field mTelecomManager:Landroid/telecom/TelecomManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mToken:Landroid/os/IBinder;

.field mWindowManager:Lcom/android/server/wm/WindowManagerService;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 104
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/am/LockTaskController;->STATUS_BAR_FLAG_MAP_LOCKED:Landroid/util/SparseArray;

    .line 106
    sget-object v0, Lcom/android/server/am/LockTaskController;->STATUS_BAR_FLAG_MAP_LOCKED:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    .line 107
    const/high16 v2, 0x800000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 106
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 109
    sget-object v0, Lcom/android/server/am/LockTaskController;->STATUS_BAR_FLAG_MAP_LOCKED:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    .line 110
    const/high16 v2, 0x60000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 112
    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 109
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 114
    sget-object v0, Lcom/android/server/am/LockTaskController;->STATUS_BAR_FLAG_MAP_LOCKED:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    .line 115
    const/high16 v2, 0x200000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 114
    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 117
    sget-object v0, Lcom/android/server/am/LockTaskController;->STATUS_BAR_FLAG_MAP_LOCKED:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    .line 118
    const/high16 v2, 0x1000000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 117
    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 120
    sget-object v0, Lcom/android/server/am/LockTaskController;->STATUS_BAR_FLAG_MAP_LOCKED:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    .line 121
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 122
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 120
    const/16 v2, 0x10

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 123
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityStackSupervisor;Landroid/os/Handler;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "supervisor"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/LockTaskController;->mToken:Landroid/os/IBinder;

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    .line 163
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskPackages:Landroid/util/SparseArray;

    .line 168
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskFeatures:Landroid/util/SparseIntArray;

    .line 175
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeState:I

    .line 184
    iput-object p1, p0, Lcom/android/server/am/LockTaskController;->mContext:Landroid/content/Context;

    .line 185
    iput-object p2, p0, Lcom/android/server/am/LockTaskController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 186
    iput-object p3, p0, Lcom/android/server/am/LockTaskController;->mHandler:Landroid/os/Handler;

    .line 187
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/LockTaskController;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/LockTaskController;

    .line 86
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/LockTaskController;)Landroid/os/IBinder;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/LockTaskController;

    .line 86
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method private getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;
    .registers 3

    .line 848
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_1c

    .line 849
    const-string v0, "device_policy"

    .line 850
    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 849
    invoke-static {v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/LockTaskController;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    .line 851
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_1c

    .line 852
    const-string v0, "ActivityManager"

    const-string/jumbo v1, "warning: no DEVICE_POLICY_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    :cond_1c
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    return-object v0
.end method

.method private getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;
    .registers 3

    .line 860
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v0, :cond_c

    .line 862
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 864
    :cond_c
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method private getLockTaskFeaturesForUser(I)I
    .registers 4
    .param p1, "userId"    # I

    .line 829
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskFeatures:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method private getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .registers 3

    .line 835
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_1d

    .line 836
    const-string/jumbo v0, "statusbar"

    .line 837
    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 836
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/LockTaskController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 838
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_1d

    .line 839
    const-string v0, "StatusBarManager"

    const-string/jumbo v1, "warning: no STATUS_BAR_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    :cond_1d
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-object v0
.end method

.method private getTelecomManager()Landroid/telecom/TelecomManager;
    .registers 3

    .line 869
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mTelecomManager:Landroid/telecom/TelecomManager;

    if-nez v0, :cond_f

    .line 871
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telecom/TelecomManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0

    .line 873
    :cond_f
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mTelecomManager:Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method private isEmergencyCallTask(Lcom/android/server/am/TaskRecord;)Z
    .registers 8
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .line 330
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 331
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 332
    return v1

    .line 336
    :cond_6
    sget-object v2, Landroid/telecom/TelecomManager;->EMERGENCY_DIALER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_14

    .line 337
    return v3

    .line 341
    :cond_14
    const-string v2, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 342
    return v3

    .line 346
    :cond_21
    invoke-direct {p0}, Lcom/android/server/am/LockTaskController;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v2

    .line 347
    .local v2, "tm":Landroid/telecom/TelecomManager;
    if-eqz v2, :cond_2c

    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->getSystemDialerPackage()Ljava/lang/String;

    move-result-object v4

    goto :goto_2d

    :cond_2c
    const/4 v4, 0x0

    .line 348
    .local v4, "dialerPackage":Ljava/lang/String;
    :goto_2d
    if-eqz v4, :cond_3e

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 349
    return v3

    .line 352
    :cond_3e
    return v1
.end method

.method private isKeyguardAllowed(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 325
    invoke-direct {p0, p1}, Lcom/android/server/am/LockTaskController;->getLockTaskFeaturesForUser(I)I

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

.method private isLockTaskModeViolationInternal(Lcom/android/server/am/TaskRecord;Z)Z
    .registers 5
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "isNewClearTask"    # Z

    .line 301
    invoke-virtual {p0, p1}, Lcom/android/server/am/LockTaskController;->isTaskLocked(Lcom/android/server/am/TaskRecord;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    if-nez p2, :cond_a

    .line 303
    return v1

    .line 307
    :cond_a
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isActivityTypeRecents()Z

    move-result v0

    if-eqz v0, :cond_19

    iget v0, p1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-direct {p0, v0}, Lcom/android/server/am/LockTaskController;->isRecentsAllowed(I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 308
    return v1

    .line 312
    :cond_19
    iget v0, p1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-direct {p0, v0}, Lcom/android/server/am/LockTaskController;->isKeyguardAllowed(I)Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-direct {p0, p1}, Lcom/android/server/am/LockTaskController;->isEmergencyCallTask(Lcom/android/server/am/TaskRecord;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 313
    return v1

    .line 316
    :cond_28
    invoke-virtual {p0, p1}, Lcom/android/server/am/LockTaskController;->isTaskWhitelisted(Lcom/android/server/am/TaskRecord;)Z

    move-result v0

    if-nez v0, :cond_38

    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_38

    const/4 v1, 0x1

    nop

    :cond_38
    return v1
.end method

.method private isRecentsAllowed(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 320
    invoke-direct {p0, p1}, Lcom/android/server/am/LockTaskController;->getLockTaskFeaturesForUser(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private isRootTask(Lcom/android/server/am/TaskRecord;)Z
    .registers 3
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .line 219
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static synthetic lambda$removeLockedTask$0(Lcom/android/server/am/LockTaskController;Lcom/android/server/am/TaskRecord;)V
    .registers 3
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .line 464
    iget v0, p1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-direct {p0, v0}, Lcom/android/server/am/LockTaskController;->performStopLockTask(I)V

    return-void
.end method

.method public static synthetic lambda$setLockTaskMode$1(Lcom/android/server/am/LockTaskController;Landroid/content/Intent;Lcom/android/server/am/TaskRecord;I)V
    .registers 6
    .param p1, "taskIntent"    # Landroid/content/Intent;
    .param p2, "task"    # Lcom/android/server/am/TaskRecord;
    .param p3, "lockTaskModeState"    # I

    .line 562
    nop

    .line 563
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget v1, p2, Lcom/android/server/am/TaskRecord;->userId:I

    .line 562
    invoke-direct {p0, v0, v1, p3}, Lcom/android/server/am/LockTaskController;->performStartLockTask(Ljava/lang/String;II)V

    return-void
.end method

.method public static synthetic lambda$updateLockTaskFeatures$2(Lcom/android/server/am/LockTaskController;I)V
    .registers 4
    .param p1, "userId"    # I

    .line 692
    iget v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 693
    iget v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeState:I

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/LockTaskController;->setStatusBarState(II)V

    .line 694
    iget v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeState:I

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/LockTaskController;->setKeyguardState(II)V

    .line 696
    :cond_f
    return-void
.end method

.method private lockKeyguardIfNeeded()V
    .registers 3

    .line 780
    invoke-direct {p0}, Lcom/android/server/am/LockTaskController;->shouldLockKeyguard()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 781
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->lockNow(Landroid/os/Bundle;)V

    .line 782
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 783
    invoke-direct {p0}, Lcom/android/server/am/LockTaskController;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->requireCredentialEntry(I)V

    .line 785
    :cond_19
    return-void
.end method

.method private lockTaskModeToString()Ljava/lang/String;
    .registers 3

    .line 892
    iget v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeState:I

    packed-switch v0, :pswitch_data_24

    .line 899
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 896
    :pswitch_1a
    const-string v0, "PINNED"

    return-object v0

    .line 894
    :pswitch_1d
    const-string v0, "LOCKED"

    return-object v0

    .line 898
    :pswitch_20
    const-string v0, "NONE"

    return-object v0

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
    .end packed-switch
.end method

.method private performStartLockTask(Ljava/lang/String;II)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "lockTaskModeState"    # I

    .line 593
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p3, v0, :cond_e

    .line 594
    :try_start_4
    invoke-direct {p0}, Lcom/android/server/am/LockTaskController;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService;->showPinningEnterExitToast(Z)V

    goto :goto_e

    .line 603
    :catch_c
    move-exception v0

    goto :goto_2a

    .line 596
    :cond_e
    :goto_e
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p3}, Lcom/android/server/wm/WindowManagerService;->onLockTaskStateChanged(I)V

    .line 597
    iput p3, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeState:I

    .line 598
    invoke-direct {p0, p3, p2}, Lcom/android/server/am/LockTaskController;->setStatusBarState(II)V

    .line 599
    invoke-direct {p0, p3, p2}, Lcom/android/server/am/LockTaskController;->setKeyguardState(II)V

    .line 600
    invoke-direct {p0}, Lcom/android/server/am/LockTaskController;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 601
    invoke-direct {p0}, Lcom/android/server/am/LockTaskController;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    invoke-interface {v0, v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->notifyLockTaskModeChanged(ZLjava/lang/String;I)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_28} :catch_c

    .line 605
    :cond_28
    nop

    .line 606
    return-void

    .line 603
    :goto_2a
    nop

    .line 604
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private performStopLockTask(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 472
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, v0, p1}, Lcom/android/server/am/LockTaskController;->setStatusBarState(II)V

    .line 473
    invoke-direct {p0, v0, p1}, Lcom/android/server/am/LockTaskController;->setKeyguardState(II)V

    .line 474
    iget v1, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_f

    .line 475
    invoke-direct {p0}, Lcom/android/server/am/LockTaskController;->lockKeyguardIfNeeded()V

    .line 477
    :cond_f
    invoke-direct {p0}, Lcom/android/server/am/LockTaskController;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 478
    invoke-direct {p0}, Lcom/android/server/am/LockTaskController;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v0, v3, p1}, Landroid/app/admin/IDevicePolicyManager;->notifyLockTaskModeChanged(ZLjava/lang/String;I)V

    .line 480
    :cond_1d
    iget v1, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeState:I

    if-ne v1, v2, :cond_28

    .line 481
    invoke-direct {p0}, Lcom/android/server/am/LockTaskController;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/internal/statusbar/IStatusBarService;->showPinningEnterExitToast(Z)V

    .line 483
    :cond_28
    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerService;->onLockTaskStateChanged(I)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_2d} :catch_33
    .catchall {:try_start_1 .. :try_end_2d} :catchall_31

    .line 487
    iput v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeState:I

    .line 488
    nop

    .line 489
    return-void

    .line 487
    :catchall_31
    move-exception v1

    goto :goto_3a

    .line 484
    :catch_33
    move-exception v1

    .line 485
    .local v1, "ex":Landroid/os/RemoteException;
    :try_start_34
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_3a
    .catchall {:try_start_34 .. :try_end_3a} :catchall_31

    .line 487
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_3a
    iput v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeState:I

    throw v1
.end method

.method private removeLockedTask(Lcom/android/server/am/TaskRecord;)V
    .registers 4
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .line 457
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 458
    return-void

    .line 461
    :cond_9
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 464
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/-$$Lambda$LockTaskController$CFBSOJhWPyFwVT85DSWkAEj1wF0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/-$$Lambda$LockTaskController$CFBSOJhWPyFwVT85DSWkAEj1wF0;-><init>(Lcom/android/server/am/LockTaskController;Lcom/android/server/am/TaskRecord;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 466
    :cond_1b
    return-void
.end method

.method private setKeyguardState(II)V
    .registers 6
    .param p1, "lockTaskModeState"    # I
    .param p2, "userId"    # I

    .line 738
    if-nez p1, :cond_a

    .line 739
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->reenableKeyguard(Landroid/os/IBinder;)V

    goto :goto_4a

    .line 741
    :cond_a
    const/4 v0, 0x1

    if-ne p1, v0, :cond_41

    .line 742
    invoke-direct {p0, p2}, Lcom/android/server/am/LockTaskController;->isKeyguardAllowed(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 743
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->reenableKeyguard(Landroid/os/IBinder;)V

    goto :goto_4a

    .line 747
    :cond_1b
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isKeyguardSecure()Z

    move-result v0

    if-nez v0, :cond_37

    .line 748
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    new-instance v1, Lcom/android/server/am/LockTaskController$1;

    invoke-direct {v1, p0}, Lcom/android/server/am/LockTaskController$1;-><init>(Lcom/android/server/am/LockTaskController;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    goto :goto_4a

    .line 766
    :cond_37
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mToken:Landroid/os/IBinder;

    const-string v2, "Lock-to-App"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;)V

    goto :goto_4a

    .line 771
    :cond_41
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mToken:Landroid/os/IBinder;

    const-string v2, "Lock-to-App"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 773
    :goto_4a
    return-void
.end method

.method private setLockTaskMode(Lcom/android/server/am/TaskRecord;ILjava/lang/String;Z)V
    .registers 13
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "lockTaskModeState"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "andResume"    # Z

    .line 548
    iget v0, p1, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    if-nez v0, :cond_5

    .line 551
    return-void

    .line 553
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/am/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 554
    const-string v0, "ActivityManager"

    const-string/jumbo v1, "setLockTaskMode: Attempt to start an unauthorized lock task."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    return-void

    .line 558
    :cond_14
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 559
    .local v0, "taskIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_33

    if-eqz v0, :cond_33

    .line 560
    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    iget v2, p1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v1, p2, v2}, Lcom/android/server/am/RecentTasks;->onLockTaskModeStateChanged(II)V

    .line 562
    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/-$$Lambda$LockTaskController$utz-CwgPkuGXoN5jp5hMoe4EpuQ;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/android/server/am/-$$Lambda$LockTaskController$utz-CwgPkuGXoN5jp5hMoe4EpuQ;-><init>(Lcom/android/server/am/LockTaskController;Landroid/content/Intent;Lcom/android/server/am/TaskRecord;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 570
    :cond_33
    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_40

    .line 571
    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 574
    :cond_40
    iget v1, p1, Lcom/android/server/am/TaskRecord;->mLockTaskUid:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_49

    .line 575
    iget v1, p1, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    iput v1, p1, Lcom/android/server/am/TaskRecord;->mLockTaskUid:I

    .line 578
    :cond_49
    if-eqz p4, :cond_66

    .line 579
    iget-object v2, p0, Lcom/android/server/am/LockTaskController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz p2, :cond_54

    const/4 v1, 0x1

    :goto_52
    move v7, v1

    goto :goto_56

    :cond_54
    const/4 v1, 0x0

    goto :goto_52

    :goto_56
    move-object v3, p1

    move-object v6, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStackSupervisor;->findTaskToMoveToFront(Lcom/android/server/am/TaskRecord;ILandroid/app/ActivityOptions;Ljava/lang/String;Z)V

    .line 581
    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 582
    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    goto :goto_75

    .line 583
    :cond_66
    if-eqz p2, :cond_75

    .line 584
    iget-object v2, p0, Lcom/android/server/am/LockTaskController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 585
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v6

    const/4 v7, 0x1

    .line 584
    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/am/TaskRecord;IILcom/android/server/am/ActivityStack;Z)V

    .line 587
    :cond_75
    :goto_75
    return-void
.end method

.method private setStatusBarState(II)V
    .registers 9
    .param p1, "lockTaskModeState"    # I
    .param p2, "userId"    # I

    .line 705
    invoke-direct {p0}, Lcom/android/server/am/LockTaskController;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 706
    .local v0, "statusBar":Lcom/android/internal/statusbar/IStatusBarService;
    if-nez v0, :cond_e

    .line 707
    const-string v1, "ActivityManager"

    const-string v2, "Can\'t find StatusBarService"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    return-void

    .line 712
    :cond_e
    const/4 v1, 0x0

    .line 713
    .local v1, "flags1":I
    const/4 v2, 0x0

    .line 715
    .local v2, "flags2":I
    const/4 v3, 0x2

    if-ne p1, v3, :cond_16

    .line 716
    const/high16 v1, 0x29f0000

    goto :goto_31

    .line 718
    :cond_16
    const/4 v3, 0x1

    if-ne p1, v3, :cond_31

    .line 719
    invoke-direct {p0, p2}, Lcom/android/server/am/LockTaskController;->getLockTaskFeaturesForUser(I)I

    move-result v3

    .line 720
    .local v3, "lockTaskFeatures":I
    invoke-virtual {p0, v3}, Lcom/android/server/am/LockTaskController;->getStatusBarDisableFlags(I)Landroid/util/Pair;

    move-result-object v4

    .line 721
    .local v4, "statusBarFlags":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 722
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 726
    .end local v3    # "lockTaskFeatures":I
    .end local v4    # "statusBarFlags":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_31
    :goto_31
    :try_start_31
    iget-object v3, p0, Lcom/android/server/am/LockTaskController;->mToken:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/server/am/LockTaskController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 727
    iget-object v3, p0, Lcom/android/server/am/LockTaskController;->mToken:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/server/am/LockTaskController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService;->disable2(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_47} :catch_48

    .line 730
    goto :goto_50

    .line 728
    :catch_48
    move-exception v3

    .line 729
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "ActivityManager"

    const-string v5, "Failed to set status bar flags"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 731
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_50
    return-void
.end method

.method private shouldLockKeyguard()Z
    .registers 8

    .line 791
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x2

    :try_start_3
    iget-object v3, p0, Lcom/android/server/am/LockTaskController;->mContext:Landroid/content/Context;

    .line 792
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "lock_to_app_exit_locked"

    .line 791
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3
    :try_end_10
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3 .. :try_end_10} :catch_15

    if-eqz v3, :cond_14

    move v0, v1

    nop

    :cond_14
    return v0

    .line 794
    :catch_15
    move-exception v3

    .line 796
    .local v3, "e":Landroid/provider/Settings$SettingNotFoundException;
    const v4, 0x534e4554

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "127605586"

    aput-object v6, v5, v0

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    const/4 v0, 0x2

    const-string v1, ""

    aput-object v1, v5, v0

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 797
    invoke-direct {p0}, Lcom/android/server/am/LockTaskController;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method activityBlockedFromFinish(Lcom/android/server/am/ActivityRecord;)Z
    .registers 5
    .param p1, "activity"    # Lcom/android/server/am/ActivityRecord;

    .line 227
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 228
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-ne p1, v1, :cond_27

    .line 229
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-ne p1, v1, :cond_27

    iget v1, v0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_27

    .line 231
    invoke-direct {p0, v0}, Lcom/android/server/am/LockTaskController;->isRootTask(Lcom/android/server/am/TaskRecord;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 232
    const-string v1, "ActivityManager"

    const-string v2, "Not finishing task in lock task mode"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-virtual {p0}, Lcom/android/server/am/LockTaskController;->showLockTaskToast()V

    .line 234
    const/4 v1, 0x1

    return v1

    .line 236
    :cond_27
    const/4 v1, 0x0

    return v1
.end method

.method canMoveTaskToBack(Lcom/android/server/am/TaskRecord;)Z
    .registers 3
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .line 245
    invoke-direct {p0, p1}, Lcom/android/server/am/LockTaskController;->isRootTask(Lcom/android/server/am/TaskRecord;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 246
    invoke-virtual {p0}, Lcom/android/server/am/LockTaskController;->showLockTaskToast()V

    .line 247
    const/4 v0, 0x0

    return v0

    .line 249
    :cond_b
    const/4 v0, 0x1

    return v0
.end method

.method clearLockedTask(Lcom/android/server/am/TaskRecord;)V
    .registers 4
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .line 434
    if-eqz p1, :cond_41

    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_41

    .line 436
    :cond_b
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_2c

    .line 439
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "taskNdx":I
    :goto_1c
    if-lez v0, :cond_2c

    .line 440
    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    invoke-virtual {p0, v1}, Lcom/android/server/am/LockTaskController;->clearLockedTask(Lcom/android/server/am/TaskRecord;)V

    .line 439
    add-int/lit8 v0, v0, -0x1

    goto :goto_1c

    .line 444
    .end local v0    # "taskNdx":I
    :cond_2c
    invoke-direct {p0, p1}, Lcom/android/server/am/LockTaskController;->removeLockedTask(Lcom/android/server/am/TaskRecord;)V

    .line 445
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 446
    return-void

    .line 448
    :cond_38
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked()V

    .line 449
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 450
    return-void

    .line 434
    :cond_41
    :goto_41
    return-void
.end method

.method clearLockedTasks(Ljava/lang/String;)V
    .registers 4
    .param p1, "reason"    # Ljava/lang/String;

    .line 419
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 420
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    invoke-virtual {p0, v0}, Lcom/android/server/am/LockTaskController;->clearLockedTask(Lcom/android/server/am/TaskRecord;)V

    .line 422
    :cond_14
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 877
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "LockTaskController"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 878
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 879
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mLockTaskModeState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/am/LockTaskController;->lockTaskModeToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 880
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mLockTaskModeTasks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 881
    const/4 v0, 0x0

    move v1, v0

    .line 881
    .local v1, "i":I
    :goto_58
    iget-object v2, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_88

    .line 882
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 881
    add-int/lit8 v1, v1, 0x1

    goto :goto_58

    .line 884
    .end local v1    # "i":I
    :cond_88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mLockTaskPackages (userId:packages)="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 885
    nop

    .line 885
    .local v0, "i":I
    :goto_9e
    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mLockTaskPackages:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_da

    .line 886
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/LockTaskController;->mLockTaskPackages:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/LockTaskController;->mLockTaskPackages:Landroid/util/SparseArray;

    .line 887
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 886
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 885
    add-int/lit8 v0, v0, 0x1

    goto :goto_9e

    .line 889
    .end local v0    # "i":I
    :cond_da
    return-void
.end method

.method getLockTaskModeState()I
    .registers 2

    .line 203
    iget v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeState:I

    return v0
.end method

.method getRootTask()Lcom/android/server/am/TaskRecord;
    .registers 3

    .line 292
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 293
    const/4 v0, 0x0

    return-object v0

    .line 295
    :cond_a
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    return-object v0
.end method

.method getStatusBarDisableFlags(I)Landroid/util/Pair;
    .registers 7
    .param p1, "lockTaskFlags"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 811
    const/high16 v0, 0x3ff0000

    .line 812
    .local v0, "flags1":I
    const/16 v1, 0x1f

    .line 813
    .local v1, "flags2":I
    sget-object v2, Lcom/android/server/am/LockTaskController;->STATUS_BAR_FLAG_MAP_LOCKED:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_c
    if-ltz v2, :cond_36

    .line 814
    sget-object v3, Lcom/android/server/am/LockTaskController;->STATUS_BAR_FLAG_MAP_LOCKED:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 815
    .local v3, "statusBarFlags":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    sget-object v4, Lcom/android/server/am/LockTaskController;->STATUS_BAR_FLAG_MAP_LOCKED:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    and-int/2addr v4, p1

    if-eqz v4, :cond_33

    .line 816
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    not-int v4, v4

    and-int/2addr v0, v4

    .line 817
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    not-int v4, v4

    and-int/2addr v1, v4

    .line 813
    .end local v3    # "statusBarFlags":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_33
    add-int/lit8 v2, v2, -0x1

    goto :goto_c

    .line 821
    .end local v2    # "i":I
    :cond_36
    const/high16 v2, 0x3a60000

    and-int/2addr v0, v2

    .line 822
    new-instance v2, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z
    .registers 3
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .line 273
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;Z)Z

    move-result v0

    return v0
.end method

.method isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;Z)Z
    .registers 4
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "isNewClearTask"    # Z

    .line 281
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/LockTaskController;->isLockTaskModeViolationInternal(Lcom/android/server/am/TaskRecord;Z)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 282
    invoke-virtual {p0}, Lcom/android/server/am/LockTaskController;->showLockTaskToast()V

    .line 283
    const/4 v0, 0x1

    return v0

    .line 285
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method isPackageWhitelisted(ILjava/lang/String;)Z
    .registers 9
    .param p1, "userId"    # I
    .param p2, "pkg"    # Ljava/lang/String;

    .line 661
    const/4 v0, 0x0

    if-nez p2, :cond_4

    .line 662
    return v0

    .line 665
    :cond_4
    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mLockTaskPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 666
    .local v1, "whitelist":[Ljava/lang/String;
    if-nez v1, :cond_f

    .line 667
    return v0

    .line 669
    :cond_f
    array-length v2, v1

    move v3, v0

    :goto_11
    if-ge v3, v2, :cond_20

    aget-object v4, v1, v3

    .line 670
    .local v4, "whitelistedPkg":Ljava/lang/String;
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 671
    const/4 v0, 0x1

    return v0

    .line 669
    .end local v4    # "whitelistedPkg":Ljava/lang/String;
    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 674
    :cond_20
    return v0
.end method

.method isTaskLocked(Lcom/android/server/am/TaskRecord;)Z
    .registers 3
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isTaskWhitelisted(Lcom/android/server/am/TaskRecord;)Z
    .registers 3
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .line 257
    iget v0, p1, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    packed-switch v0, :pswitch_data_a

    .line 265
    const/4 v0, 0x0

    return v0

    .line 261
    :pswitch_7
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_a
    .packed-switch 0x2
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2
    .param p1, "windowManager"    # Lcom/android/server/wm/WindowManagerService;

    .line 194
    iput-object p1, p0, Lcom/android/server/am/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 195
    return-void
.end method

.method showLockTaskToast()V
    .registers 4

    .line 496
    iget v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_15

    .line 498
    :try_start_5
    invoke-direct {p0}, Lcom/android/server/am/LockTaskController;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->showPinningEscapeToast()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_c} :catch_d

    .line 501
    goto :goto_15

    .line 499
    :catch_d
    move-exception v0

    .line 500
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ActivityManager"

    const-string v2, "Failed to send pinning escape toast"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 503
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    :goto_15
    return-void
.end method

.method startLockTaskMode(Lcom/android/server/am/TaskRecord;ZI)V
    .registers 7
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "isSystemCaller"    # Z
    .param p3, "callingUid"    # I

    .line 518
    const/4 v0, 0x1

    if-nez p2, :cond_19

    .line 519
    iput p3, p1, Lcom/android/server/am/TaskRecord;->mLockTaskUid:I

    .line 520
    iget v1, p1, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    if-ne v1, v0, :cond_19

    .line 524
    const-class v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 526
    .local v0, "statusBarManager":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_18

    .line 527
    iget v1, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-interface {v0, v1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->showScreenPinningRequest(I)V

    .line 529
    :cond_18
    return-void

    .line 536
    .end local v0    # "statusBarManager":Lcom/android/server/statusbar/StatusBarManagerInternal;
    :cond_19
    if-eqz p2, :cond_1d

    const/4 v1, 0x2

    goto :goto_1e

    :cond_1d
    move v1, v0

    :goto_1e
    const-string/jumbo v2, "startLockTask"

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/android/server/am/LockTaskController;->setLockTaskMode(Lcom/android/server/am/TaskRecord;ILjava/lang/String;Z)V

    .line 538
    return-void
.end method

.method stopLockTaskMode(Lcom/android/server/am/TaskRecord;ZI)V
    .registers 7
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "isSystemCaller"    # Z
    .param p3, "callingUid"    # I

    .line 375
    iget v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeState:I

    if-nez v0, :cond_5

    .line 376
    return-void

    .line 379
    :cond_5
    if-eqz p2, :cond_1e

    .line 380
    iget v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    .line 381
    const-string/jumbo v0, "stopAppPinning"

    invoke-virtual {p0, v0}, Lcom/android/server/am/LockTaskController;->clearLockedTasks(Ljava/lang/String;)V

    goto :goto_5b

    .line 383
    :cond_13
    const-string v0, "ActivityManager"

    const-string v1, "Attempted to stop LockTask with isSystemCaller=true"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-virtual {p0}, Lcom/android/server/am/LockTaskController;->showLockTaskToast()V

    goto :goto_5b

    .line 389
    :cond_1e
    if-eqz p1, :cond_5c

    .line 400
    iget v0, p1, Lcom/android/server/am/TaskRecord;->mLockTaskUid:I

    if-eq p3, v0, :cond_58

    iget v0, p1, Lcom/android/server/am/TaskRecord;->mLockTaskUid:I

    if-nez v0, :cond_2d

    iget v0, p1, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    if-ne p3, v0, :cond_2d

    goto :goto_58

    .line 402
    :cond_2d
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid uid, expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/am/TaskRecord;->mLockTaskUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " callingUid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " effectiveUid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 407
    :cond_58
    :goto_58
    invoke-virtual {p0, p1}, Lcom/android/server/am/LockTaskController;->clearLockedTask(Lcom/android/server/am/TaskRecord;)V

    .line 409
    :goto_5b
    return-void

    .line 390
    :cond_5c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "can\'t stop LockTask for null task"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method updateLockTaskFeatures(II)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "flags"    # I

    .line 684
    invoke-direct {p0, p1}, Lcom/android/server/am/LockTaskController;->getLockTaskFeaturesForUser(I)I

    move-result v0

    .line 685
    .local v0, "oldFlags":I
    if-ne p2, v0, :cond_7

    .line 686
    return-void

    .line 689
    :cond_7
    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mLockTaskFeatures:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 690
    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2b

    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    iget v1, v1, Lcom/android/server/am/TaskRecord;->userId:I

    if-ne p1, v1, :cond_2b

    .line 691
    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/-$$Lambda$LockTaskController$HCwwKEV1_Hy1M3bHXdwhoMEXmJM;

    invoke-direct {v2, p0, p1}, Lcom/android/server/am/-$$Lambda$LockTaskController$HCwwKEV1_Hy1M3bHXdwhoMEXmJM;-><init>(Lcom/android/server/am/LockTaskController;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 698
    :cond_2b
    return-void
.end method

.method updateLockTaskPackages(I[Ljava/lang/String;)V
    .registers 12
    .param p1, "userId"    # I
    .param p2, "packages"    # [Ljava/lang/String;

    .line 615
    iget-object v0, p0, Lcom/android/server/am/LockTaskController;->mLockTaskPackages:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 617
    const/4 v0, 0x0

    .line 618
    .local v0, "taskChanged":Z
    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 618
    .local v1, "taskNdx":I
    :goto_e
    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ltz v1, :cond_4c

    .line 619
    iget-object v5, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    .line 620
    .local v5, "lockedTask":Lcom/android/server/am/TaskRecord;
    iget v6, v5, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    const/4 v7, 0x3

    if-eq v6, v4, :cond_26

    iget v6, v5, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    if-ne v6, v7, :cond_24

    goto :goto_26

    :cond_24
    move v6, v3

    goto :goto_27

    :cond_26
    :goto_26
    move v6, v2

    .line 622
    .local v6, "wasWhitelisted":Z
    :goto_27
    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->setLockTaskAuth()V

    .line 623
    iget v8, v5, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    if-eq v8, v4, :cond_34

    iget v4, v5, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    if-ne v4, v7, :cond_33

    goto :goto_34

    :cond_33
    goto :goto_35

    :cond_34
    :goto_34
    move v3, v2

    .line 626
    .local v3, "isWhitelisted":Z
    :goto_35
    iget v4, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeState:I

    if-ne v4, v2, :cond_49

    iget v4, v5, Lcom/android/server/am/TaskRecord;->userId:I

    if-ne v4, p1, :cond_49

    if-eqz v6, :cond_49

    if-eqz v3, :cond_42

    .line 629
    goto :goto_49

    .line 635
    :cond_42
    invoke-direct {p0, v5}, Lcom/android/server/am/LockTaskController;->removeLockedTask(Lcom/android/server/am/TaskRecord;)V

    .line 636
    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked()V

    .line 637
    const/4 v0, 0x1

    .line 618
    .end local v3    # "isWhitelisted":Z
    .end local v5    # "lockedTask":Lcom/android/server/am/TaskRecord;
    .end local v6    # "wasWhitelisted":Z
    :cond_49
    :goto_49
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 640
    .end local v1    # "taskNdx":I
    :cond_4c
    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v2

    .line 640
    .local v1, "displayNdx":I
    :goto_53
    if-ltz v1, :cond_61

    .line 641
    iget-object v5, p0, Lcom/android/server/am/LockTaskController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getChildAt(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/ActivityDisplay;->onLockTaskPackagesUpdated()V

    .line 640
    add-int/lit8 v1, v1, -0x1

    goto :goto_53

    .line 644
    .end local v1    # "displayNdx":I
    :cond_61
    iget-object v1, p0, Lcom/android/server/am/LockTaskController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 645
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_6e

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    goto :goto_6f

    :cond_6e
    const/4 v5, 0x0

    .line 646
    .local v5, "task":Lcom/android/server/am/TaskRecord;
    :goto_6f
    iget-object v6, p0, Lcom/android/server/am/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_84

    if-eqz v5, :cond_84

    iget v6, v5, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    if-ne v6, v4, :cond_84

    .line 651
    const-string/jumbo v4, "package updated"

    invoke-direct {p0, v5, v2, v4, v3}, Lcom/android/server/am/LockTaskController;->setLockTaskMode(Lcom/android/server/am/TaskRecord;ILjava/lang/String;Z)V

    .line 652
    const/4 v0, 0x1

    .line 655
    :cond_84
    if-eqz v0, :cond_8b

    .line 656
    iget-object v2, p0, Lcom/android/server/am/LockTaskController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 658
    :cond_8b
    return-void
.end method
