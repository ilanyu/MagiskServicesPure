.class Lcom/android/server/am/UserController;
.super Ljava/lang/Object;
.source "UserController.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/UserController$Injector;,
        Lcom/android/server/am/UserController$UserProgressListener;
    }
.end annotation


# static fields
.field static final CONTINUE_USER_SWITCH_MSG:I = 0x14

.field static final FOREGROUND_PROFILE_CHANGED_MSG:I = 0x46

.field static final REPORT_LOCKED_BOOT_COMPLETE_MSG:I = 0x6e

.field static final REPORT_USER_SWITCH_COMPLETE_MSG:I = 0x50

.field static final REPORT_USER_SWITCH_MSG:I = 0xa

.field static final START_PROFILES_MSG:I = 0x28

.field static final START_USER_SWITCH_FG_MSG:I = 0x78

.field static final START_USER_SWITCH_UI_MSG:I = 0x3e8

.field static final SYSTEM_USER_CURRENT_MSG:I = 0x3c

.field static final SYSTEM_USER_START_MSG:I = 0x32

.field static final SYSTEM_USER_UNLOCK_MSG:I = 0x64

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final USER_SWITCH_CALLBACKS_TIMEOUT_MS:I = 0x1388

.field static final USER_SWITCH_CALLBACKS_TIMEOUT_MSG:I = 0x5a

.field static final USER_SWITCH_TIMEOUT_MS:I = 0xbb8

.field static final USER_SWITCH_TIMEOUT_MSG:I = 0x1e


# instance fields
.field private volatile mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentProfileIds:[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private volatile mCurrentUserId:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mInjector:Lcom/android/server/am/UserController$Injector;

.field private final mLock:Ljava/lang/Object;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field mMaxRunningUsers:I

.field private mStartedUserArray:[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mStartedUsers:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/UserState;",
            ">;"
        }
    .end annotation
.end field

.field private mSwitchingFromSystemUserMessage:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mSwitchingToSystemUserMessage:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private volatile mTargetUserId:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mTimeoutUserSwitchCallbacks:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUiHandler:Landroid/os/Handler;

.field private final mUserLru:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserProfileGroupIds:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mUserSwitchObservers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/app/IUserSwitchObserver;",
            ">;"
        }
    .end annotation
.end field

.field mUserSwitchUiEnabled:Z


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 3
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    .line 247
    new-instance v0, Lcom/android/server/am/UserController$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/am/UserController$Injector;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    invoke-direct {p0, v0}, Lcom/android/server/am/UserController;-><init>(Lcom/android/server/am/UserController$Injector;)V

    .line 248
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/UserController$Injector;)V
    .registers 7
    .param p1, "injector"    # Lcom/android/server/am/UserController$Injector;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    .line 176
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    .line 180
    const/16 v1, -0x2710

    iput v1, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    .line 186
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    .line 192
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    .line 198
    const/4 v1, 0x1

    new-array v2, v1, [I

    aput v0, v2, v0

    iput-object v2, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    .line 203
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    .line 209
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    .line 215
    new-instance v2, Landroid/os/RemoteCallbackList;

    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    .line 218
    iput-boolean v1, p0, Lcom/android/server/am/UserController;->mUserSwitchUiEnabled:Z

    .line 252
    iput-object p1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 253
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1, p0}, Lcom/android/server/am/UserController$Injector;->getHandler(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 254
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1, p0}, Lcom/android/server/am/UserController$Injector;->getUiHandler(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/UserController;->mUiHandler:Landroid/os/Handler;

    .line 256
    new-instance v1, Lcom/android/server/am/UserState;

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-direct {v1, v2}, Lcom/android/server/am/UserState;-><init>(Landroid/os/UserHandle;)V

    .line 257
    .local v1, "uss":Lcom/android/server/am/UserState;
    iget-object v2, v1, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    new-instance v3, Lcom/android/server/am/UserController$UserProgressListener;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/server/am/UserController$UserProgressListener;-><init>(Lcom/android/server/am/UserController$1;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/util/ProgressReporter;->addListener(Landroid/os/IProgressListener;)V

    .line 258
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 259
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/UserController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 261
    invoke-direct {p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLU()V

    .line 262
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/UserController;)Lcom/android/server/am/UserController$Injector;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/UserController;

    .line 128
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/UserController;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/UserController;

    .line 128
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/UserController;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/UserController;

    .line 128
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/am/UserController;)Landroid/util/ArraySet;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/UserController;

    .line 128
    iget-object v0, p0, Lcom/android/server/am/UserController;->mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    return-object v0
.end method

.method private dispatchForegroundProfileChanged(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 1300
    iget-object v0, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1301
    .local v0, "observerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_19

    .line 1303
    :try_start_9
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/app/IUserSwitchObserver;

    invoke-interface {v2, p1}, Landroid/app/IUserSwitchObserver;->onForegroundProfileSwitch(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_15

    .line 1306
    goto :goto_16

    .line 1304
    :catch_15
    move-exception v2

    .line 1301
    :goto_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1308
    .end local v1    # "i":I
    :cond_19
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1309
    return-void
.end method

.method private dispatchLockedBootComplete(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 1325
    iget-object v0, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1326
    .local v0, "observerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_19

    .line 1328
    :try_start_9
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/app/IUserSwitchObserver;

    invoke-interface {v2, p1}, Landroid/app/IUserSwitchObserver;->onLockedBootComplete(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_15

    .line 1331
    goto :goto_16

    .line 1329
    :catch_15
    move-exception v2

    .line 1326
    :goto_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1333
    .end local v1    # "i":I
    :cond_19
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1334
    return-void
.end method

.method private finishUserBoot(Lcom/android/server/am/UserState;)V
    .registers 3
    .param p1, "uss"    # Lcom/android/server/am/UserState;

    .line 321
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/UserController;->finishUserBoot(Lcom/android/server/am/UserState;Landroid/content/IIntentReceiver;)V

    .line 322
    return-void
.end method

.method private finishUserBoot(Lcom/android/server/am/UserState;Landroid/content/IIntentReceiver;)V
    .registers 22
    .param p1, "uss"    # Lcom/android/server/am/UserState;
    .param p2, "resultTo"    # Landroid/content/IIntentReceiver;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 325
    iget-object v0, v2, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v15

    .line 327
    .local v15, "userId":I
    const-string v0, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Finishing user boot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v3, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 330
    :try_start_23
    iget-object v0, v1, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0
    :try_end_29
    .catchall {:try_start_23 .. :try_end_29} :catchall_151

    if-eq v0, v2, :cond_31

    .line 331
    :try_start_2b
    monitor-exit v3
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2d

    return-void

    .line 333
    :catchall_2d
    move-exception v0

    move v4, v15

    goto/16 :goto_153

    :cond_31
    :try_start_31
    monitor-exit v3
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_151

    .line 339
    const/4 v0, 0x1

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Lcom/android/server/am/UserState;->setState(II)Z

    move-result v0

    if-eqz v0, :cond_c8

    .line 340
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v0

    iget v4, v2, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v0, v15, v4}, Landroid/os/UserManagerInternal;->setUserState(II)V

    .line 342
    if-nez v15, :cond_86

    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 343
    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->isRuntimeRestarted()Z

    move-result v0

    if-nez v0, :cond_86

    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->isFirstBootOrUpgrade()Z

    move-result v0

    if-nez v0, :cond_86

    .line 344
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v0, v4

    .line 345
    .local v0, "uptimeSeconds":I
    iget-object v4, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "framework_locked_boot_completed"

    invoke-static {v4, v5, v0}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 347
    const/16 v4, 0x78

    .line 348
    .local v4, "MAX_UPTIME_SECONDS":I
    const/16 v5, 0x78

    if-le v0, v5, :cond_86

    .line 349
    const-string v5, "SystemServerTiming"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "finishUserBoot took too long. uptimeSeconds="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    .end local v0    # "uptimeSeconds":I
    .end local v4    # "MAX_UPTIME_SECONDS":I
    :cond_86
    iget-object v0, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    iget-object v4, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x6e

    invoke-virtual {v4, v5, v15, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 356
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.LOCKED_BOOT_COMPLETED"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 357
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.extra.user_handle"

    invoke-virtual {v0, v3, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 358
    const/high16 v3, 0x9000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 360
    iget-object v3, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v4, "android.permission.RECEIVE_BOOT_COMPLETED"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v10

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    sget v16, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v17, 0x3e8

    move-object v4, v0

    move-object/from16 v6, p2

    move/from16 v18, v15

    move/from16 v15, v16

    .end local v15    # "userId":I
    .local v18, "userId":I
    move/from16 v16, v17

    move/from16 v17, v18

    invoke-virtual/range {v3 .. v17}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_ca

    .line 369
    .end local v18    # "userId":I
    .restart local v15    # "userId":I
    :cond_c8
    move/from16 v18, v15

    .end local v15    # "userId":I
    .restart local v18    # "userId":I
    :goto_ca
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    move/from16 v4, v18

    invoke-virtual {v0, v4}, Lcom/android/server/pm/UserManagerService;->isManagedProfile(I)Z

    move-result v0

    .end local v18    # "userId":I
    .local v4, "userId":I
    if-nez v0, :cond_e3

    .line 370
    invoke-static {v4}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v0

    if-eqz v0, :cond_df

    goto :goto_e3

    .line 384
    :cond_df
    invoke-direct {v1, v4}, Lcom/android/server/am/UserController;->maybeUnlockUser(I)Z

    goto :goto_150

    .line 372
    :cond_e3
    :goto_e3
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 373
    .local v0, "parent":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_121

    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    const/4 v5, 0x4

    .line 374
    invoke-virtual {v1, v3, v5}, Lcom/android/server/am/UserController;->isUserRunning(II)Z

    move-result v3

    if-eqz v3, :cond_121

    .line 375
    const-string v3, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "User "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " (parent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "): attempting unlock because parent is unlocked"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    invoke-direct {v1, v4}, Lcom/android/server/am/UserController;->maybeUnlockUser(I)Z

    goto :goto_14f

    .line 379
    :cond_121
    if-nez v0, :cond_126

    const-string v3, "<null>"

    goto :goto_12c

    :cond_126
    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 380
    .local v3, "parentId":Ljava/lang/String;
    :goto_12c
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "User "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " (parent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "): delaying unlock because parent is locked"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    .end local v0    # "parent":Landroid/content/pm/UserInfo;
    .end local v3    # "parentId":Ljava/lang/String;
    :goto_14f
    nop

    .line 386
    :goto_150
    return-void

    .line 333
    .end local v4    # "userId":I
    .restart local v15    # "userId":I
    :catchall_151
    move-exception v0

    move v4, v15

    .end local v15    # "userId":I
    .restart local v4    # "userId":I
    :goto_153
    :try_start_153
    monitor-exit v3
    :try_end_154
    .catchall {:try_start_153 .. :try_end_154} :catchall_155

    throw v0

    :catchall_155
    move-exception v0

    goto :goto_153
.end method

.method private finishUserUnlockedCompleted(Lcom/android/server/am/UserState;)V
    .registers 23
    .param p1, "uss"    # Lcom/android/server/am/UserState;

    move-object/from16 v1, p0

    .line 511
    move-object/from16 v2, p1

    iget-object v0, v2, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v15

    .line 512
    .local v15, "userId":I
    iget-object v3, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 514
    :try_start_d
    iget-object v0, v1, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    iget-object v4, v2, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_12f

    if-eq v0, v2, :cond_22

    :try_start_1b
    monitor-exit v3
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1d

    return-void

    .line 515
    :catchall_1d
    move-exception v0

    move/from16 v18, v15

    goto/16 :goto_132

    :cond_22
    :try_start_22
    monitor-exit v3
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_12f

    .line 516
    invoke-virtual {v1, v15}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v14

    .line 517
    .local v14, "userInfo":Landroid/content/pm/UserInfo;
    if-nez v14, :cond_2a

    .line 518
    return-void

    .line 521
    :cond_2a
    invoke-static {v15}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_31

    return-void

    .line 524
    :cond_31
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/android/server/pm/UserManagerService;->onUserLoggedIn(I)V

    .line 528
    :try_start_3a
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->isUpgrade()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 529
    iget-object v0, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    sget-object v3, Lcom/android/server/am/-$$Lambda$UserController$tKjcIAJNtIbCu7iATLwTO-CScHo;->INSTANCE:Lcom/android/server/am/-$$Lambda$UserController$tKjcIAJNtIbCu7iATLwTO-CScHo;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_4b} :catch_4c

    .line 535
    :cond_4b
    goto :goto_50

    .line 533
    :catch_4c
    move-exception v0

    .line 534
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 540
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_50
    :try_start_50
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->isUpgrade()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 541
    iget-object v0, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    sget-object v3, Lcom/android/server/am/-$$Lambda$UserController$k8ApLcQKGJQpqZmC58PDXNdaMjM;->INSTANCE:Lcom/android/server/am/-$$Lambda$UserController$k8ApLcQKGJQpqZmC58PDXNdaMjM;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_61} :catch_62

    .line 547
    :cond_61
    goto :goto_66

    .line 545
    :catch_62
    move-exception v0

    .line 546
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 550
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_66
    invoke-virtual {v14}, Landroid/content/pm/UserInfo;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_b6

    .line 551
    if-eqz v15, :cond_b6

    .line 552
    const-string v0, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Initializing user #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.USER_INITIALIZE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 554
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v3, 0x11000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 556
    iget-object v3, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v5, 0x0

    new-instance v6, Lcom/android/server/am/UserController$1;

    invoke-direct {v6, v1, v14}, Lcom/android/server/am/UserController$1;-><init>(Lcom/android/server/am/UserController;Landroid/content/pm/UserInfo;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/16 v16, 0x0

    sget v17, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v18, 0x3e8

    move-object v4, v0

    move-object/from16 v19, v14

    move/from16 v14, v16

    .end local v14    # "userInfo":Landroid/content/pm/UserInfo;
    .local v19, "userInfo":Landroid/content/pm/UserInfo;
    move/from16 v20, v15

    move/from16 v15, v17

    .end local v15    # "userId":I
    .local v20, "userId":I
    move/from16 v16, v18

    move/from16 v17, v20

    invoke-virtual/range {v3 .. v17}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_ba

    .line 570
    .end local v19    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v20    # "userId":I
    .restart local v14    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v15    # "userId":I
    :cond_b6
    move-object/from16 v19, v14

    move/from16 v20, v15

    .end local v14    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v15    # "userId":I
    .restart local v19    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v20    # "userId":I
    :goto_ba
    const-string v0, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending BOOT_COMPLETE user #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v15, v20

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v20    # "userId":I
    .restart local v15    # "userId":I
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    if-nez v15, :cond_f7

    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 573
    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->isRuntimeRestarted()Z

    move-result v0

    if-nez v0, :cond_f7

    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->isFirstBootOrUpgrade()Z

    move-result v0

    if-nez v0, :cond_f7

    .line 574
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int v0, v3

    .line 575
    .local v0, "uptimeSeconds":I
    iget-object v3, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/UserController$Injector;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "framework_boot_completed"

    invoke-static {v3, v4, v0}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 578
    .end local v0    # "uptimeSeconds":I
    :cond_f7
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 579
    .local v0, "bootIntent":Landroid/content/Intent;
    const-string v3, "android.intent.extra.user_handle"

    invoke-virtual {v0, v3, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 580
    const/high16 v3, 0x9000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 582
    iget-object v3, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v5, 0x0

    new-instance v6, Lcom/android/server/am/UserController$2;

    invoke-direct {v6, v1, v15}, Lcom/android/server/am/UserController$2;-><init>(Lcom/android/server/am/UserController;I)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v4, "android.permission.RECEIVE_BOOT_COMPLETED"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v10

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    sget v16, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v17, 0x3e8

    move-object v4, v0

    move/from16 v18, v15

    move/from16 v15, v16

    .end local v15    # "userId":I
    .local v18, "userId":I
    move/from16 v16, v17

    move/from16 v17, v18

    invoke-virtual/range {v3 .. v17}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    .line 592
    return-void

    .line 515
    .end local v0    # "bootIntent":Landroid/content/Intent;
    .end local v18    # "userId":I
    .end local v19    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v15    # "userId":I
    :catchall_12f
    move-exception v0

    move/from16 v18, v15

    .end local v15    # "userId":I
    .restart local v18    # "userId":I
    :goto_132
    :try_start_132
    monitor-exit v3
    :try_end_133
    .catchall {:try_start_132 .. :try_end_133} :catchall_134

    throw v0

    :catchall_134
    move-exception v0

    goto :goto_132
.end method

.method private finishUserUnlocking(Lcom/android/server/am/UserState;)V
    .registers 7
    .param p1, "uss"    # Lcom/android/server/am/UserState;

    .line 393
    iget-object v0, p1, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 395
    .local v0, "userId":I
    invoke-static {v0}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v1

    if-nez v1, :cond_d

    return-void

    .line 396
    :cond_d
    iget-object v1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 398
    :try_start_10
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_44

    iget v2, p1, Lcom/android/server/am/UserState;->state:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1e

    goto :goto_44

    .line 401
    :cond_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_10 .. :try_end_1f} :catchall_46

    .line 402
    iget-object v1, p1, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    invoke-virtual {v1}, Lcom/android/internal/util/ProgressReporter;->start()V

    .line 405
    iget-object v1, p1, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 406
    invoke-virtual {v3}, Lcom/android/server/am/UserController$Injector;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x104007e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 405
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/ProgressReporter;->setProgress(ILjava/lang/CharSequence;)V

    .line 409
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/am/-$$Lambda$UserController$o6oQFjGYYIfx-I94cSakTLPLt6s;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/server/am/-$$Lambda$UserController$o6oQFjGYYIfx-I94cSakTLPLt6s;-><init>(Lcom/android/server/am/UserController;ILcom/android/server/am/UserState;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 430
    return-void

    .line 399
    :cond_44
    :goto_44
    :try_start_44
    monitor-exit v1

    return-void

    .line 401
    :catchall_46
    move-exception v2

    monitor-exit v1
    :try_end_48
    .catchall {:try_start_44 .. :try_end_48} :catchall_46

    throw v2
.end method

.method private forceStopUser(ILjava/lang/String;)V
    .registers 23
    .param p1, "userId"    # I
    .param p2, "reason"    # Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 842
    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    move-object/from16 v3, p2

    invoke-virtual {v2, v1, v3}, Lcom/android/server/am/UserController$Injector;->activityManagerForceStopPackage(ILjava/lang/String;)V

    .line 843
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.USER_STOPPED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 844
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v4, 0x50000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 846
    const-string v4, "android.intent.extra.user_handle"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 847
    iget-object v5, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    sget v17, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x3e8

    const/16 v19, -0x1

    move-object v6, v2

    invoke-virtual/range {v5 .. v19}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    .line 850
    return-void
.end method

.method private getStorageManager()Landroid/os/storage/IStorageManager;
    .registers 2

    .line 914
    const-string/jumbo v0, "mount"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v0

    return-object v0
.end method

.method private getSwitchingFromSystemUserMessage()Ljava/lang/String;
    .registers 3

    .line 1946
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1947
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/UserController;->mSwitchingFromSystemUserMessage:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 1948
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private getSwitchingToSystemUserMessage()Ljava/lang/String;
    .registers 3

    .line 1952
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1953
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/UserController;->mSwitchingToSystemUserMessage:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 1954
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private getUsersToStopLU(I)[I
    .registers 13
    .param p1, "userId"    # I

    .line 819
    iget-object v0, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 820
    .local v0, "startedUsersSize":I
    new-instance v1, Landroid/util/IntArray;

    invoke-direct {v1}, Landroid/util/IntArray;-><init>()V

    .line 821
    .local v1, "userIds":Landroid/util/IntArray;
    invoke-virtual {v1, p1}, Landroid/util/IntArray;->add(I)V

    .line 822
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    const/16 v3, -0x2710

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 823
    .local v2, "userGroupId":I
    const/4 v4, 0x0

    move v5, v4

    .local v5, "i":I
    :goto_18
    if-ge v5, v0, :cond_45

    .line 824
    iget-object v6, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/UserState;

    .line 825
    .local v6, "uss":Lcom/android/server/am/UserState;
    iget-object v7, v6, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    .line 827
    .local v7, "startedUserId":I
    iget-object v8, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v7, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v8

    .line 829
    .local v8, "startedUserGroupId":I
    const/4 v9, 0x1

    if-eq v2, v3, :cond_35

    if-ne v2, v8, :cond_35

    move v10, v9

    goto :goto_36

    :cond_35
    move v10, v4

    .line 832
    .local v10, "sameGroup":Z
    :goto_36
    if-ne v7, p1, :cond_39

    goto :goto_3a

    :cond_39
    move v9, v4

    .line 833
    .local v9, "sameUserId":Z
    :goto_3a
    if-eqz v10, :cond_42

    if-eqz v9, :cond_3f

    .line 834
    goto :goto_42

    .line 836
    :cond_3f
    invoke-virtual {v1, v7}, Landroid/util/IntArray;->add(I)V

    .line 823
    .end local v6    # "uss":Lcom/android/server/am/UserState;
    .end local v7    # "startedUserId":I
    .end local v8    # "startedUserGroupId":I
    .end local v9    # "sameUserId":Z
    .end local v10    # "sameGroup":Z
    :cond_42
    :goto_42
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 838
    .end local v5    # "i":I
    :cond_45
    invoke-virtual {v1}, Landroid/util/IntArray;->toArray()[I

    move-result-object v3

    return-object v3
.end method

.method private isCallingOnHandlerThread()Z
    .registers 3

    .line 1145
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private isCurrentUserLU(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 1802
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentOrTargetUserIdLU()I

    move-result v0

    if-ne p1, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static synthetic lambda$finishUserStopped$6(Lcom/android/server/am/UserController;I)V
    .registers 5
    .param p1, "userId"    # I

    .line 799
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 800
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 801
    const-string v1, "ActivityManager"

    const-string v2, "User was restarted, skipping key eviction"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    monitor-exit v0

    return-void

    .line 804
    :cond_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_24

    .line 806
    :try_start_15
    invoke-direct {p0}, Lcom/android/server/am/UserController;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/storage/IStorageManager;->lockUserKey(I)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1c} :catch_1e

    .line 809
    nop

    .line 810
    return-void

    .line 807
    :catch_1e
    move-exception v0

    .line 808
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 804
    .end local v0    # "re":Landroid/os/RemoteException;
    :catchall_24
    move-exception v1

    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public static synthetic lambda$finishUserUnlocked$1(Lcom/android/server/am/UserController;Lcom/android/server/am/UserState;)V
    .registers 2
    .param p1, "uss"    # Lcom/android/server/am/UserState;

    .line 504
    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->finishUserUnlockedCompleted(Lcom/android/server/am/UserState;)V

    return-void
.end method

.method static synthetic lambda$finishUserUnlockedCompleted$2()V
    .registers 0

    .line 530
    invoke-static {}, Lcom/android/server/am/ActivityManagerServiceInjector;->otaPreload()V

    .line 531
    return-void
.end method

.method static synthetic lambda$finishUserUnlockedCompleted$3()V
    .registers 0

    .line 542
    invoke-static {}, Lcom/android/server/am/ActivityManagerServiceInjector;->otaPreload()V

    .line 543
    return-void
.end method

.method public static synthetic lambda$finishUserUnlocking$0(Lcom/android/server/am/UserController;ILcom/android/server/am/UserState;)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "uss"    # Lcom/android/server/am/UserState;

    .line 410
    invoke-static {p1}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_e

    .line 411
    const-string v0, "ActivityManager"

    const-string v1, "User key got locked unexpectedly, leaving user locked."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    return-void

    .line 414
    :cond_e
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService;->onBeforeUnlockUser(I)V

    .line 415
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 417
    const/4 v1, 0x1

    const/4 v2, 0x2

    :try_start_1c
    invoke-virtual {p2, v1, v2}, Lcom/android/server/am/UserState;->setState(II)Z

    move-result v1

    if-nez v1, :cond_24

    .line 418
    monitor-exit v0

    return-void

    .line 420
    :cond_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_1c .. :try_end_25} :catchall_44

    .line 421
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v0

    iget v1, p2, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v0, p1, v1}, Landroid/os/UserManagerInternal;->setUserState(II)V

    .line 423
    iget-object v0, p2, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/android/internal/util/ProgressReporter;->setProgress(I)V

    .line 427
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 428
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 429
    return-void

    .line 420
    :catchall_44
    move-exception v1

    :try_start_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw v1
.end method

.method public static synthetic lambda$handleMessage$9(Lcom/android/server/am/UserController;I)V
    .registers 3
    .param p1, "userId"    # I

    .line 2054
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0, p1}, Lcom/android/server/am/UserController$Injector;->loadUserRecents(I)V

    .line 2055
    return-void
.end method

.method public static synthetic lambda$scheduleStartProfiles$7(Lcom/android/server/am/UserController;)V
    .registers 5

    .line 884
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_17

    .line 885
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 888
    :cond_17
    return-void
.end method

.method public static synthetic lambda$startUser$8(Lcom/android/server/am/UserController;IZLandroid/os/IProgressListener;)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "foreground"    # Z
    .param p3, "unlockListener"    # Landroid/os/IProgressListener;

    .line 1012
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/UserController;->startUser(IZLandroid/os/IProgressListener;)Z

    return-void
.end method

.method static synthetic lambda$stopSingleUserLU$4(Landroid/app/IStopUserCallback;I)V
    .registers 3
    .param p0, "callback"    # Landroid/app/IStopUserCallback;
    .param p1, "userId"    # I

    .line 670
    :try_start_0
    invoke-interface {p0, p1}, Landroid/app/IStopUserCallback;->userStopped(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 672
    goto :goto_5

    .line 671
    :catch_4
    move-exception v0

    .line 673
    :goto_5
    return-void
.end method

.method public static synthetic lambda$stopSingleUserLU$5(Lcom/android/server/am/UserController;ILcom/android/server/am/UserState;)V
    .registers 22
    .param p1, "userId"    # I
    .param p2, "uss"    # Lcom/android/server/am/UserState;

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 693
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.USER_STOPPING"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 694
    .local v2, "stoppingIntent":Landroid/content/Intent;
    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 695
    const-string v3, "android.intent.extra.user_handle"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 696
    const-string v3, "android.intent.extra.SHUTDOWN_USERSPACE_ONLY"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 698
    new-instance v7, Lcom/android/server/am/UserController$4;

    move-object/from16 v3, p2

    invoke-direct {v7, v0, v1, v3}, Lcom/android/server/am/UserController$4;-><init>(Lcom/android/server/am/UserController;ILcom/android/server/am/UserState;)V

    .line 707
    .local v7, "stoppingReceiver":Landroid/content/IIntentReceiver;
    iget-object v4, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4, v1}, Lcom/android/server/am/UserController$Injector;->clearBroadcastQueueForUser(I)V

    .line 709
    iget-object v4, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string v5, "android.permission.INTERACT_ACROSS_USERS"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v11

    sget v16, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v17, 0x3e8

    const/16 v18, -0x1

    move-object v5, v2

    invoke-virtual/range {v4 .. v18}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    .line 713
    return-void
.end method

.method private maybeUnlockUser(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 1185
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, v0}, Lcom/android/server/am/UserController;->unlockUserCleared(I[B[BLandroid/os/IProgressListener;)Z

    move-result v0

    return v0
.end method

.method private moveUserToForeground(Lcom/android/server/am/UserState;II)V
    .registers 7
    .param p1, "uss"    # Lcom/android/server/am/UserState;
    .param p2, "oldUserId"    # I
    .param p3, "newUserId"    # I

    .line 1447
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0, p3, p1}, Lcom/android/server/am/UserController$Injector;->stackSupervisorSwitchUser(ILcom/android/server/am/UserState;)Z

    move-result v0

    .line 1448
    .local v0, "homeInFront":Z
    if-eqz v0, :cond_11

    .line 1449
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string/jumbo v2, "moveUserToForeground"

    invoke-virtual {v1, p3, v2}, Lcom/android/server/am/UserController$Injector;->startHomeActivity(ILjava/lang/String;)V

    goto :goto_16

    .line 1451
    :cond_11
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->stackSupervisorResumeFocusedStackTopActivity()V

    .line 1453
    :goto_16
    invoke-static {p3}, Lcom/android/server/am/EventLogTags;->writeAmSwitchUser(I)V

    .line 1454
    invoke-virtual {p0, p2, p3}, Lcom/android/server/am/UserController;->sendUserSwitchBroadcasts(II)V

    .line 1455
    return-void
.end method

.method private static notifyFinished(ILandroid/os/IProgressListener;)V
    .registers 3
    .param p0, "userId"    # I
    .param p1, "listener"    # Landroid/os/IProgressListener;

    .line 1189
    if-nez p1, :cond_3

    return-void

    .line 1191
    :cond_3
    const/4 v0, 0x0

    :try_start_4
    invoke-interface {p1, p0, v0}, Landroid/os/IProgressListener;->onFinished(ILandroid/os/Bundle;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 1193
    goto :goto_9

    .line 1192
    :catch_8
    move-exception v0

    .line 1194
    :goto_9
    return-void
.end method

.method private showUserSwitchDialog(Landroid/util/Pair;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Landroid/content/pm/UserInfo;",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    .line 1295
    .local p1, "fromToUserPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;>;"
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/content/pm/UserInfo;

    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1296
    invoke-direct {p0}, Lcom/android/server/am/UserController;->getSwitchingFromSystemUserMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/server/am/UserController;->getSwitchingToSystemUserMessage()Ljava/lang/String;

    move-result-object v4

    .line 1295
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/am/UserController$Injector;->showUserSwitchingDialog(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    return-void
.end method

.method private stopBackgroundUsersIfEnforced(I)V
    .registers 6
    .param p1, "oldUserId"    # I

    .line 1338
    if-nez p1, :cond_3

    .line 1339
    return-void

    .line 1342
    :cond_3
    const-string/jumbo v0, "no_run_in_background"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/UserController;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    .line 1344
    .local v0, "disallowRunInBg":Z
    if-nez v0, :cond_d

    .line 1345
    return-void

    .line 1347
    :cond_d
    iget-object v1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1350
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_12
    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/am/UserController;->stopUsersLU(IZLandroid/app/IStopUserCallback;)I

    .line 1351
    monitor-exit v1

    .line 1352
    return-void

    .line 1351
    :catchall_17
    move-exception v2

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_17

    throw v2
.end method

.method private stopGuestOrEphemeralUserIfBackground(I)V
    .registers 6
    .param p1, "oldUserId"    # I

    .line 857
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 858
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UserState;

    .line 859
    .local v1, "oldUss":Lcom/android/server/am/UserState;
    if-eqz p1, :cond_4d

    iget v2, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    if-eq p1, v2, :cond_4d

    if-eqz v1, :cond_4d

    iget v2, v1, Lcom/android/server/am/UserState;->state:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_4d

    iget v2, v1, Lcom/android/server/am/UserState;->state:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1e

    goto :goto_4d

    .line 864
    .end local v1    # "oldUss":Lcom/android/server/am/UserState;
    :cond_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_4f

    .line 866
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 867
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 868
    const-class v0, Landroid/os/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManagerInternal;

    invoke-virtual {v0, p1}, Landroid/os/UserManagerInternal;->onEphemeralUserStop(I)V

    .line 870
    :cond_34
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v0

    if-nez v0, :cond_40

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 872
    :cond_40
    iget-object v2, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 873
    const/4 v0, 0x1

    const/4 v3, 0x0

    :try_start_45
    invoke-direct {p0, p1, v0, v3}, Lcom/android/server/am/UserController;->stopUsersLU(IZLandroid/app/IStopUserCallback;)I

    .line 874
    monitor-exit v2

    .line 876
    :cond_49
    return-void

    .line 874
    :catchall_4a
    move-exception v0

    monitor-exit v2
    :try_end_4c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_4a

    throw v0

    .line 862
    .local v1, "oldUss":Lcom/android/server/am/UserState;
    :cond_4d
    :goto_4d
    :try_start_4d
    monitor-exit v0

    return-void

    .line 864
    .end local v1    # "oldUss":Lcom/android/server/am/UserState;
    :catchall_4f
    move-exception v1

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_4d .. :try_end_51} :catchall_4f

    throw v1
.end method

.method private stopSingleUserLU(ILandroid/app/IStopUserCallback;)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "callback"    # Landroid/app/IStopUserCallback;

    .line 663
    iget-object v0, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/UserState;

    .line 664
    .local v0, "uss":Lcom/android/server/am/UserState;
    if-nez v0, :cond_17

    .line 667
    if-eqz p2, :cond_16

    .line 668
    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/-$$Lambda$UserController$QAvDazb_bK3Biqbrt7rtbU_i_EQ;

    invoke-direct {v2, p2, p1}, Lcom/android/server/am/-$$Lambda$UserController$QAvDazb_bK3Biqbrt7rtbU_i_EQ;-><init>(Landroid/app/IStopUserCallback;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 675
    :cond_16
    return-void

    .line 678
    :cond_17
    if-eqz p2, :cond_1e

    .line 679
    iget-object v1, v0, Lcom/android/server/am/UserState;->mStopCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 682
    :cond_1e
    iget v1, v0, Lcom/android/server/am/UserState;->state:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_43

    iget v1, v0, Lcom/android/server/am/UserState;->state:I

    const/4 v3, 0x5

    if-eq v1, v3, :cond_43

    .line 684
    invoke-virtual {v0, v2}, Lcom/android/server/am/UserState;->setState(I)V

    .line 685
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v1

    iget v2, v0, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v1, p1, v2}, Landroid/os/UserManagerInternal;->setUserState(II)V

    .line 686
    invoke-direct {p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLU()V

    .line 689
    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/-$$Lambda$UserController$fU2mcMYCcCOsyUuGHKIUB-nSo1Y;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/am/-$$Lambda$UserController$fU2mcMYCcCOsyUuGHKIUB-nSo1Y;-><init>(Lcom/android/server/am/UserController;ILcom/android/server/am/UserState;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 715
    :cond_43
    return-void
.end method

.method private stopUsersLU(IZLandroid/app/IStopUserCallback;)I
    .registers 11
    .param p1, "userId"    # I
    .param p2, "force"    # Z
    .param p3, "callback"    # Landroid/app/IStopUserCallback;

    .line 631
    if-nez p1, :cond_4

    .line 632
    const/4 v0, -0x3

    return v0

    .line 634
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->isCurrentUserLU(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 635
    const/4 v0, -0x2

    return v0

    .line 637
    :cond_c
    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->getUsersToStopLU(I)[I

    move-result-object v0

    .line 639
    .local v0, "usersToStop":[I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_12
    array-length v3, v0

    if-ge v2, v3, :cond_46

    .line 640
    aget v3, v0, v2

    .line 641
    .local v3, "relatedUserId":I
    if-eqz v3, :cond_23

    invoke-direct {p0, v3}, Lcom/android/server/am/UserController;->isCurrentUserLU(I)Z

    move-result v4

    if-eqz v4, :cond_20

    goto :goto_23

    .line 639
    .end local v3    # "relatedUserId":I
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 645
    .restart local v3    # "relatedUserId":I
    :cond_23
    :goto_23
    if-eqz p2, :cond_44

    .line 646
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Force stop user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ". Related users will not be stopped"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    invoke-direct {p0, p1, p3}, Lcom/android/server/am/UserController;->stopSingleUserLU(ILandroid/app/IStopUserCallback;)V

    .line 649
    return v1

    .line 651
    :cond_44
    const/4 v1, -0x4

    return v1

    .line 655
    .end local v2    # "i":I
    .end local v3    # "relatedUserId":I
    :cond_46
    array-length v2, v0

    move v3, v1

    :goto_48
    if-ge v3, v2, :cond_57

    aget v4, v0, v3

    .line 656
    .local v4, "userIdToStop":I
    if-ne v4, p1, :cond_50

    move-object v5, p3

    goto :goto_51

    :cond_50
    const/4 v5, 0x0

    :goto_51
    invoke-direct {p0, v4, v5}, Lcom/android/server/am/UserController;->stopSingleUserLU(ILandroid/app/IStopUserCallback;)V

    .line 655
    .end local v4    # "userIdToStop":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_48

    .line 658
    :cond_57
    return v1
.end method

.method private timeoutUserSwitch(Lcom/android/server/am/UserState;II)V
    .registers 9
    .param p1, "uss"    # Lcom/android/server/am/UserState;
    .param p2, "oldUserId"    # I
    .param p3, "newUserId"    # I

    .line 1355
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1356
    :try_start_3
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User switch timeout: from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    iget-object v1, p0, Lcom/android/server/am/UserController;->mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    iput-object v1, p0, Lcom/android/server/am/UserController;->mTimeoutUserSwitchCallbacks:Landroid/util/ArraySet;

    .line 1358
    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x5a

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1359
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/UserController;->sendContinueUserSwitchLU(Lcom/android/server/am/UserState;II)V

    .line 1361
    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1363
    monitor-exit v0

    .line 1364
    return-void

    .line 1363
    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_3e

    throw v1
.end method

.method private timeoutUserSwitchCallbacks(II)V
    .registers 7
    .param p1, "oldUserId"    # I
    .param p2, "newUserId"    # I

    .line 1367
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1368
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/UserController;->mTimeoutUserSwitchCallbacks:Landroid/util/ArraySet;

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/android/server/am/UserController;->mTimeoutUserSwitchCallbacks:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3a

    .line 1369
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User switch timeout: from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ". Observers that didn\'t respond: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/UserController;->mTimeoutUserSwitchCallbacks:Landroid/util/ArraySet;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/UserController;->mTimeoutUserSwitchCallbacks:Landroid/util/ArraySet;

    .line 1373
    :cond_3a
    monitor-exit v0

    .line 1374
    return-void

    .line 1373
    :catchall_3c
    move-exception v1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method private unlockUserCleared(I[B[BLandroid/os/IProgressListener;)Z
    .registers 15
    .param p1, "userId"    # I
    .param p2, "token"    # [B
    .param p3, "secret"    # [B
    .param p4, "listener"    # Landroid/os/IProgressListener;

    .line 1199
    invoke-static {p1}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_31

    .line 1200
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1201
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    invoke-direct {p0}, Lcom/android/server/am/UserController;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v2

    .line 1204
    .local v2, "storageManager":Landroid/os/storage/IStorageManager;
    :try_start_f
    iget v3, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-interface {v2, p1, v3, p2, p3}, Landroid/os/storage/IStorageManager;->unlockUserKey(II[B[B)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_15
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_14} :catch_15

    .line 1210
    goto :goto_31

    .line 1205
    :catch_15
    move-exception v3

    .line 1206
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to unlock: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    return v1

    .line 1212
    .end local v0    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v2    # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_31
    :goto_31
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1214
    :try_start_34
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/UserState;

    .line 1215
    .local v2, "uss":Lcom/android/server/am/UserState;
    const/4 v3, 0x1

    if-eqz v2, :cond_4b

    .line 1216
    iget-object v4, v2, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    invoke-virtual {v4, p4}, Lcom/android/internal/util/ProgressReporter;->addListener(Landroid/os/IProgressListener;)V

    .line 1217
    if-eqz p2, :cond_48

    move v4, v3

    goto :goto_49

    :cond_48
    move v4, v1

    :goto_49
    iput-boolean v4, v2, Lcom/android/server/am/UserState;->tokenProvided:Z

    .line 1219
    :cond_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_34 .. :try_end_4c} :catchall_b6

    .line 1221
    if-nez v2, :cond_52

    .line 1222
    invoke-static {p1, p4}, Lcom/android/server/am/UserController;->notifyFinished(ILandroid/os/IProgressListener;)V

    .line 1223
    return v1

    .line 1226
    :cond_52
    invoke-direct {p0, v2}, Lcom/android/server/am/UserController;->finishUserUnlocking(Lcom/android/server/am/UserState;)V

    .line 1233
    iget-object v4, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1234
    :try_start_58
    iget-object v0, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 1235
    .local v0, "userIds":[I
    move v5, v1

    .local v5, "i":I
    :goto_61
    array-length v6, v0

    if-ge v5, v6, :cond_6f

    .line 1236
    iget-object v6, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    aput v6, v0, v5

    .line 1235
    add-int/lit8 v5, v5, 0x1

    goto :goto_61

    .line 1238
    .end local v5    # "i":I
    :cond_6f
    monitor-exit v4
    :try_end_70
    .catchall {:try_start_58 .. :try_end_70} :catchall_b3

    .line 1239
    array-length v4, v0

    :goto_71
    if-ge v1, v4, :cond_b2

    aget v5, v0, v1

    .line 1240
    .local v5, "testUserId":I
    iget-object v6, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v6}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    .line 1241
    .local v6, "parent":Landroid/content/pm/UserInfo;
    if-eqz v6, :cond_af

    iget v7, v6, Landroid/content/pm/UserInfo;->id:I

    if-ne v7, p1, :cond_af

    if-eq v5, p1, :cond_af

    .line 1242
    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "User "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " (parent "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "): attempting unlock because parent was just unlocked"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    invoke-direct {p0, v5}, Lcom/android/server/am/UserController;->maybeUnlockUser(I)Z

    .line 1239
    .end local v5    # "testUserId":I
    .end local v6    # "parent":Landroid/content/pm/UserInfo;
    :cond_af
    add-int/lit8 v1, v1, 0x1

    goto :goto_71

    .line 1248
    :cond_b2
    return v3

    .line 1238
    .end local v0    # "userIds":[I
    :catchall_b3
    move-exception v0

    :try_start_b4
    monitor-exit v4
    :try_end_b5
    .catchall {:try_start_b4 .. :try_end_b5} :catchall_b3

    throw v0

    .line 1219
    .end local v2    # "uss":Lcom/android/server/am/UserState;
    :catchall_b6
    move-exception v1

    :try_start_b7
    monitor-exit v0
    :try_end_b8
    .catchall {:try_start_b7 .. :try_end_b8} :catchall_b6

    throw v1
.end method

.method private updateCurrentProfileIds()V
    .registers 10

    .line 1681
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v0

    .line 1683
    .local v0, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 1684
    .local v1, "currentProfileIds":[I
    move v3, v2

    .local v3, "i":I
    :goto_16
    array-length v4, v1

    if-ge v3, v4, :cond_26

    .line 1685
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    aput v4, v1, v3

    .line 1684
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 1687
    .end local v3    # "i":I
    :cond_26
    iget-object v3, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    .line 1688
    .local v3, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v4, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1689
    :try_start_33
    iput-object v1, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    .line 1691
    iget-object v5, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->clear()V

    .line 1692
    nop

    .local v2, "i":I
    :goto_3b
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_59

    .line 1693
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 1694
    .local v5, "user":Landroid/content/pm/UserInfo;
    iget v6, v5, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v7, -0x2710

    if-eq v6, v7, :cond_56

    .line 1695
    iget-object v6, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    iget v8, v5, Landroid/content/pm/UserInfo;->profileGroupId:I

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 1692
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    :cond_56
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    .line 1698
    .end local v2    # "i":I
    :cond_59
    monitor-exit v4

    .line 1699
    return-void

    .line 1698
    :catchall_5b
    move-exception v2

    monitor-exit v4
    :try_end_5d
    .catchall {:try_start_33 .. :try_end_5d} :catchall_5b

    throw v2
.end method

.method private updateStartedUserArrayLU()V
    .registers 9

    .line 1638
    const/4 v0, 0x0

    .line 1639
    .local v0, "num":I
    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    .local v0, "i":I
    .local v2, "num":I
    :goto_4
    iget-object v3, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v4, 0x5

    const/4 v5, 0x4

    if-ge v0, v3, :cond_23

    .line 1640
    iget-object v3, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UserState;

    .line 1642
    .local v3, "uss":Lcom/android/server/am/UserState;
    iget v6, v3, Lcom/android/server/am/UserState;->state:I

    if-eq v6, v5, :cond_20

    iget v5, v3, Lcom/android/server/am/UserState;->state:I

    if-eq v5, v4, :cond_20

    .line 1644
    add-int/lit8 v2, v2, 0x1

    .line 1639
    .end local v3    # "uss":Lcom/android/server/am/UserState;
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1647
    .end local v0    # "i":I
    :cond_23
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    .line 1648
    const/4 v0, 0x0

    .line 1649
    .end local v2    # "num":I
    .local v0, "num":I
    nop

    .local v1, "i":I
    :goto_29
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_51

    .line 1650
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/UserState;

    .line 1651
    .local v2, "uss":Lcom/android/server/am/UserState;
    iget v3, v2, Lcom/android/server/am/UserState;->state:I

    if-eq v3, v5, :cond_4e

    iget v3, v2, Lcom/android/server/am/UserState;->state:I

    if-eq v3, v4, :cond_4e

    .line 1653
    iget-object v3, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    add-int/lit8 v6, v0, 0x1

    .local v6, "num":I
    iget-object v7, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    aput v7, v3, v0

    .line 1649
    .end local v0    # "num":I
    .end local v2    # "uss":Lcom/android/server/am/UserState;
    move v0, v6

    .end local v6    # "num":I
    .restart local v0    # "num":I
    :cond_4e
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 1656
    .end local v1    # "i":I
    :cond_51
    return-void
.end method


# virtual methods
.method canStartMoreUsers()Z
    .registers 4

    .line 315
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 316
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getRunningUsersLU()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/android/server/am/UserController;->mMaxRunningUsers:I

    if-ge v1, v2, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    monitor-exit v0

    return v1

    .line 317
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method continueUserSwitch(Lcom/android/server/am/UserState;II)V
    .registers 8
    .param p1, "uss"    # Lcom/android/server/am/UserState;
    .param p2, "oldUserId"    # I
    .param p3, "newUserId"    # I

    .line 1434
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Continue user switch oldUser #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", newUser #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    iget-boolean v0, p0, Lcom/android/server/am/UserController;->mUserSwitchUiEnabled:Z

    if-eqz v0, :cond_2b

    .line 1436
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->stopFreezingScreen()V

    .line 1438
    :cond_2b
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/am/UserState;->switching:Z

    .line 1439
    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1440
    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2, p3, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1442
    invoke-direct {p0, p2}, Lcom/android/server/am/UserController;->stopGuestOrEphemeralUserIfBackground(I)V

    .line 1443
    invoke-direct {p0, p2}, Lcom/android/server/am/UserController;->stopBackgroundUsersIfEnforced(I)V

    .line 1444
    return-void
.end method

.method dispatchUserSwitch(Lcom/android/server/am/UserState;II)V
    .registers 24
    .param p1, "uss"    # Lcom/android/server/am/UserState;
    .param p2, "oldUserId"    # I
    .param p3, "newUserId"    # I

    move-object/from16 v11, p0

    .line 1377
    move/from16 v12, p3

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dispatch onUserSwitching oldUser #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, p2

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " newUser #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    iget-object v0, v11, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v14

    .line 1379
    .local v14, "observerCount":I
    if-lez v14, :cond_b1

    .line 1380
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object v15, v0

    .line 1381
    .local v15, "curWaitingUserSwitchCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v1, v11, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1382
    const/4 v0, 0x1

    move-object/from16 v10, p1

    :try_start_38
    iput-boolean v0, v10, Lcom/android/server/am/UserState;->switching:Z

    .line 1383
    iput-object v15, v11, Lcom/android/server/am/UserController;->mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    .line 1384
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_38 .. :try_end_3d} :catchall_aa

    .line 1385
    new-instance v7, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v7, v14}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 1386
    .local v7, "waitingCallbacksCount":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    .line 1387
    .local v16, "dispatchStartedTime":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_47
    move v9, v0

    .end local v0    # "i":I
    .local v9, "i":I
    if-ge v9, v14, :cond_a7

    .line 1390
    :try_start_4a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v11, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v9}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 1391
    .local v8, "name":Ljava/lang/String;
    iget-object v1, v11, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6d
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_6d} :catch_9c

    .line 1392
    :try_start_6d
    invoke-virtual {v15, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1393
    monitor-exit v1
    :try_end_71
    .catchall {:try_start_6d .. :try_end_71} :catchall_90

    .line 1394
    :try_start_71
    new-instance v0, Lcom/android/server/am/UserController$7;
    :try_end_73
    .catch Landroid/os/RemoteException; {:try_start_71 .. :try_end_73} :catch_9c

    move-object v1, v0

    move-object v2, v11

    move-wide/from16 v3, v16

    move-object v5, v8

    move-object v6, v15

    move-object/from16 v18, v8

    move-object v8, v10

    .end local v8    # "name":Ljava/lang/String;
    .local v18, "name":Ljava/lang/String;
    move/from16 v19, v14

    move v14, v9

    move v9, v13

    .end local v9    # "i":I
    .local v14, "i":I
    .local v19, "observerCount":I
    move v10, v12

    :try_start_81
    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/UserController$7;-><init>(Lcom/android/server/am/UserController;JLjava/lang/String;Landroid/util/ArraySet;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/android/server/am/UserState;II)V

    .line 1414
    .local v0, "callback":Landroid/os/IRemoteCallback;
    iget-object v1, v11, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v14}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/app/IUserSwitchObserver;

    invoke-interface {v1, v12, v0}, Landroid/app/IUserSwitchObserver;->onUserSwitching(ILandroid/os/IRemoteCallback;)V
    :try_end_8f
    .catch Landroid/os/RemoteException; {:try_start_81 .. :try_end_8f} :catch_98

    .line 1416
    .end local v0    # "callback":Landroid/os/IRemoteCallback;
    .end local v18    # "name":Ljava/lang/String;
    goto :goto_a0

    .line 1393
    .end local v19    # "observerCount":I
    .restart local v8    # "name":Ljava/lang/String;
    .restart local v9    # "i":I
    .local v14, "observerCount":I
    :catchall_90
    move-exception v0

    move-object/from16 v18, v8

    move/from16 v19, v14

    move v14, v9

    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "i":I
    .local v14, "i":I
    .restart local v18    # "name":Ljava/lang/String;
    .restart local v19    # "observerCount":I
    :goto_96
    :try_start_96
    monitor-exit v1
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_9a

    :try_start_97
    throw v0
    :try_end_98
    .catch Landroid/os/RemoteException; {:try_start_97 .. :try_end_98} :catch_98

    .line 1415
    .end local v18    # "name":Ljava/lang/String;
    :catch_98
    move-exception v0

    goto :goto_a0

    .line 1393
    .restart local v18    # "name":Ljava/lang/String;
    :catchall_9a
    move-exception v0

    goto :goto_96

    .line 1415
    .end local v18    # "name":Ljava/lang/String;
    .end local v19    # "observerCount":I
    .restart local v9    # "i":I
    .local v14, "observerCount":I
    :catch_9c
    move-exception v0

    move/from16 v19, v14

    move v14, v9

    .line 1387
    .end local v9    # "i":I
    .local v14, "i":I
    .restart local v19    # "observerCount":I
    :goto_a0
    add-int/lit8 v0, v14, 0x1

    .end local v14    # "i":I
    .local v0, "i":I
    move-object/from16 v10, p1

    move/from16 v14, v19

    goto :goto_47

    .line 1418
    .end local v0    # "i":I
    .end local v7    # "waitingCallbacksCount":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v15    # "curWaitingUserSwitchCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v16    # "dispatchStartedTime":J
    .end local v19    # "observerCount":I
    .local v14, "observerCount":I
    :cond_a7
    move/from16 v19, v14

    .end local v14    # "observerCount":I
    .restart local v19    # "observerCount":I
    goto :goto_ba

    .line 1384
    .end local v19    # "observerCount":I
    .restart local v14    # "observerCount":I
    .restart local v15    # "curWaitingUserSwitchCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_aa
    move-exception v0

    move/from16 v19, v14

    .end local v14    # "observerCount":I
    .restart local v19    # "observerCount":I
    :goto_ad
    :try_start_ad
    monitor-exit v1
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_af

    throw v0

    :catchall_af
    move-exception v0

    goto :goto_ad

    .line 1419
    .end local v15    # "curWaitingUserSwitchCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v19    # "observerCount":I
    .restart local v14    # "observerCount":I
    :cond_b1
    move/from16 v19, v14

    .end local v14    # "observerCount":I
    .restart local v19    # "observerCount":I
    iget-object v1, v11, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1420
    :try_start_b6
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/am/UserController;->sendContinueUserSwitchLU(Lcom/android/server/am/UserState;II)V

    .line 1421
    monitor-exit v1
    :try_end_ba
    .catchall {:try_start_b6 .. :try_end_ba} :catchall_c0

    .line 1423
    :goto_ba
    iget-object v0, v11, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1424
    return-void

    .line 1421
    :catchall_c0
    move-exception v0

    :try_start_c1
    monitor-exit v1
    :try_end_c2
    .catchall {:try_start_c1 .. :try_end_c2} :catchall_c0

    throw v0
.end method

.method dispatchUserSwitchComplete(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 1313
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->setSwitchingUser(Z)V

    .line 1314
    iget-object v0, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1315
    .local v0, "observerCount":I
    nop

    .local v1, "i":I
    :goto_11
    if-ge v1, v0, :cond_23

    .line 1317
    :try_start_13
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/app/IUserSwitchObserver;

    invoke-interface {v2, p1}, Landroid/app/IUserSwitchObserver;->onUserSwitchComplete(I)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1e} :catch_1f

    .line 1319
    goto :goto_20

    .line 1318
    :catch_1f
    move-exception v2

    .line 1315
    :goto_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 1321
    .end local v1    # "i":I
    :cond_23
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1322
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Z)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpAll"    # Z

    .line 1988
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1989
    :try_start_3
    const-string v1, "  mStartedUsers:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1990
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_a
    iget-object v3, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_35

    .line 1991
    iget-object v3, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UserState;

    .line 1992
    .local v3, "uss":Lcom/android/server/am/UserState;
    const-string v4, "    User #"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1993
    iget-object v4, v3, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 1994
    const-string v4, ": "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1995
    const-string v4, ""

    invoke-virtual {v3, v4, p1}, Lcom/android/server/am/UserState;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1990
    .end local v3    # "uss":Lcom/android/server/am/UserState;
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1997
    .end local v2    # "i":I
    :cond_35
    const-string v2, "  mStartedUserArray: ["

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1998
    move v2, v1

    .restart local v2    # "i":I
    :goto_3b
    iget-object v3, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    array-length v3, v3

    if-ge v2, v3, :cond_51

    .line 1999
    if-lez v2, :cond_47

    .line 2000
    const-string v3, ", "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2001
    :cond_47
    iget-object v3, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    aget v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1998
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    .line 2003
    .end local v2    # "i":I
    :cond_51
    const-string v2, "]"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2004
    const-string v2, "  mUserLru: ["

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2005
    move v2, v1

    .restart local v2    # "i":I
    :goto_5c
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_77

    .line 2006
    if-lez v2, :cond_6b

    .line 2007
    const-string v3, ", "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2008
    :cond_6b
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2005
    add-int/lit8 v2, v2, 0x1

    goto :goto_5c

    .line 2010
    .end local v2    # "i":I
    :cond_77
    const-string v2, "]"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2011
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-lez v2, :cond_b1

    .line 2012
    const-string v2, "  mUserProfileGroupIds:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2013
    nop

    .local v1, "i":I
    :goto_8a
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_b1

    .line 2014
    const-string v2, "    User #"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2015
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2016
    const-string v2, " -> profile #"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2017
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 2013
    add-int/lit8 v1, v1, 0x1

    goto :goto_8a

    .line 2020
    .end local v1    # "i":I
    :cond_b1
    monitor-exit v0

    .line 2021
    return-void

    .line 2020
    :catchall_b3
    move-exception v1

    monitor-exit v0
    :try_end_b5
    .catchall {:try_start_3 .. :try_end_b5} :catchall_b3

    throw v1
.end method

.method enforceShellRestriction(Ljava/lang/String;I)V
    .registers 6
    .param p1, "restriction"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .line 1837
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_28

    .line 1838
    if-ltz p2, :cond_11

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/UserController;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_28

    .line 1839
    :cond_11
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shell does not have permission to access user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1843
    :cond_28
    :goto_28
    return-void
.end method

.method ensureNotSpecialUser(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 1598
    if-ltz p1, :cond_3

    .line 1599
    return-void

    .line 1601
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call does not support special user #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method exists(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 1833
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    return v0
.end method

.method expandUserId(I)[I
    .registers 4
    .param p1, "userId"    # I

    .line 1825
    const/4 v0, -0x1

    if-eq p1, v0, :cond_a

    .line 1826
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    return-object v0

    .line 1828
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getUsers()[I

    move-result-object v0

    return-object v0
.end method

.method finishUserStopped(Lcom/android/server/am/UserState;)V
    .registers 8
    .param p1, "uss"    # Lcom/android/server/am/UserState;

    .line 755
    iget-object v0, p1, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 758
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 759
    :try_start_9
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/android/server/am/UserState;->mStopCallbacks:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 760
    .local v2, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IStopUserCallback;>;"
    iget-object v3, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_31

    iget v3, p1, Lcom/android/server/am/UserState;->state:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1e

    goto :goto_31

    .line 763
    :cond_1e
    const/4 v3, 0x1

    .line 765
    .local v3, "stopped":Z
    iget-object v4, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 766
    iget-object v4, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 767
    invoke-direct {p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLU()V

    goto :goto_32

    .line 761
    .end local v3    # "stopped":Z
    :cond_31
    :goto_31
    const/4 v3, 0x0

    .line 769
    .restart local v3    # "stopped":Z
    :goto_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_9 .. :try_end_33} :catchall_98

    move v1, v3

    .line 771
    .end local v3    # "stopped":Z
    .local v1, "stopped":Z
    if-eqz v1, :cond_49

    .line 772
    iget-object v3, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/UserManagerInternal;->removeUserState(I)V

    .line 773
    iget-object v3, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v3, v0}, Lcom/android/server/am/UserController$Injector;->activityManagerOnUserStopped(I)V

    .line 776
    const-string v3, "finish user"

    invoke-direct {p0, v0, v3}, Lcom/android/server/am/UserController;->forceStopUser(ILjava/lang/String;)V

    .line 779
    :cond_49
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_6c

    .line 781
    if-eqz v1, :cond_5e

    :try_start_52
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/IStopUserCallback;

    invoke-interface {v4, v0}, Landroid/app/IStopUserCallback;->userStopped(I)V

    goto :goto_67

    .line 783
    :catch_5c
    move-exception v4

    goto :goto_68

    .line 782
    :cond_5e
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/IStopUserCallback;

    invoke-interface {v4, v0}, Landroid/app/IStopUserCallback;->userStopAborted(I)V
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_67} :catch_5c

    .line 784
    :goto_67
    goto :goto_69

    .line 783
    :goto_68
    nop

    .line 779
    :goto_69
    add-int/lit8 v3, v3, 0x1

    goto :goto_4a

    .line 787
    .end local v3    # "i":I
    :cond_6c
    if-eqz v1, :cond_97

    .line 788
    iget-object v3, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v3, v0}, Lcom/android/server/am/UserController$Injector;->systemServiceManagerCleanupUser(I)V

    .line 789
    iget-object v3, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v3, v0}, Lcom/android/server/am/UserController$Injector;->stackSupervisorRemoveUser(I)V

    .line 791
    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v3

    if-eqz v3, :cond_8b

    .line 792
    iget-object v3, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/server/pm/UserManagerService;->removeUserEvenWhenDisallowed(I)Z

    .line 798
    :cond_8b
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/server/am/-$$Lambda$UserController$EAj99ZaKMuuapLMhoSyECDn9QNM;

    invoke-direct {v4, p0, v0}, Lcom/android/server/am/-$$Lambda$UserController$EAj99ZaKMuuapLMhoSyECDn9QNM;-><init>(Lcom/android/server/am/UserController;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 812
    :cond_97
    return-void

    .line 769
    .end local v1    # "stopped":Z
    .end local v2    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IStopUserCallback;>;"
    :catchall_98
    move-exception v2

    :try_start_99
    monitor-exit v1
    :try_end_9a
    .catchall {:try_start_99 .. :try_end_9a} :catchall_98

    throw v2
.end method

.method finishUserStopping(ILcom/android/server/am/UserState;)V
    .registers 20
    .param p1, "userId"    # I
    .param p2, "uss"    # Lcom/android/server/am/UserState;

    move-object/from16 v1, p0

    move/from16 v15, p1

    .line 719
    move-object/from16 v14, p2

    new-instance v3, Landroid/content/Intent;

    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 721
    .local v3, "shutdownIntent":Landroid/content/Intent;
    new-instance v5, Lcom/android/server/am/UserController$5;

    invoke-direct {v5, v1, v14}, Lcom/android/server/am/UserController$5;-><init>(Lcom/android/server/am/UserController;Lcom/android/server/am/UserState;)V

    .line 734
    .local v5, "shutdownReceiver":Landroid/content/IIntentReceiver;
    iget-object v2, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 735
    :try_start_15
    iget v0, v14, Lcom/android/server/am/UserState;->state:I

    const/4 v4, 0x4

    if-eq v0, v4, :cond_1c

    .line 737
    monitor-exit v2

    return-void

    .line 739
    :cond_1c
    const/4 v0, 0x5

    invoke-virtual {v14, v0}, Lcom/android/server/am/UserState;->setState(I)V

    .line 740
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_15 .. :try_end_21} :catchall_58

    .line 741
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v0

    iget v2, v14, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v0, v15, v2}, Landroid/os/UserManagerInternal;->setUserState(II)V

    .line 743
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/16 v2, 0x4007

    .line 745
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 743
    invoke-virtual {v0, v2, v4, v15}, Lcom/android/server/am/UserController$Injector;->batteryStatsServiceNoteEvent(ILjava/lang/String;I)V

    .line 746
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getSystemServiceManager()Lcom/android/server/SystemServiceManager;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/android/server/SystemServiceManager;->stopUser(I)V

    .line 748
    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    sget v0, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v16, 0x3e8

    move v14, v0

    move/from16 v15, v16

    move/from16 v16, p1

    invoke-virtual/range {v2 .. v16}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    .line 752
    return-void

    .line 740
    :catchall_58
    move-exception v0

    :try_start_59
    monitor-exit v2
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    throw v0
.end method

.method finishUserSwitch(Lcom/android/server/am/UserState;)V
    .registers 4
    .param p1, "uss"    # Lcom/android/server/am/UserState;

    .line 265
    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->finishUserBoot(Lcom/android/server/am/UserState;)V

    .line 266
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->startProfiles()V

    .line 267
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 268
    :try_start_9
    iget v1, p0, Lcom/android/server/am/UserController;->mMaxRunningUsers:I

    invoke-virtual {p0, v1}, Lcom/android/server/am/UserController;->stopRunningUsersLU(I)V

    .line 269
    monitor-exit v0

    .line 270
    return-void

    .line 269
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_10

    throw v1
.end method

.method finishUserUnlocked(Lcom/android/server/am/UserState;)V
    .registers 36
    .param p1, "uss"    # Lcom/android/server/am/UserState;

    move-object/from16 v1, p0

    .line 437
    move-object/from16 v2, p1

    iget-object v0, v2, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v15

    .line 439
    .local v15, "userId":I
    invoke-static {v15}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 440
    :cond_11
    iget-object v3, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 442
    :try_start_14
    iget-object v0, v1, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    iget-object v4, v2, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0
    :try_end_20
    .catchall {:try_start_14 .. :try_end_20} :catchall_115

    if-eq v0, v2, :cond_28

    :try_start_22
    monitor-exit v3
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_24

    return-void

    .line 448
    :catchall_24
    move-exception v0

    move v4, v15

    goto/16 :goto_117

    .line 445
    :cond_28
    const/4 v0, 0x2

    const/4 v4, 0x3

    :try_start_2a
    invoke-virtual {v2, v0, v4}, Lcom/android/server/am/UserState;->setState(II)Z

    move-result v0
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_115

    if-nez v0, :cond_32

    .line 446
    :try_start_30
    monitor-exit v3
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_24

    return-void

    .line 448
    :cond_32
    :try_start_32
    monitor-exit v3
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_115

    .line 449
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v0

    iget v3, v2, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v0, v15, v3}, Landroid/os/UserManagerInternal;->setUserState(II)V

    .line 450
    iget-object v0, v2, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    invoke-virtual {v0}, Lcom/android/internal/util/ProgressReporter;->finish()V

    .line 454
    if-nez v15, :cond_58

    .line 455
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/high16 v3, 0x40000

    invoke-virtual {v0, v3}, Lcom/android/server/am/UserController$Injector;->startPersistentApps(I)V

    .line 457
    invoke-static {}, Lcom/android/server/am/ActivityManagerServiceInjector;->reportBootEvent()V

    .line 458
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerServiceInjector;->finishBooting(Lcom/android/server/am/ActivityManagerService;)V

    .line 461
    :cond_58
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0, v15}, Lcom/android/server/am/UserController$Injector;->installEncryptionUnawareProviders(I)V

    .line 464
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 465
    .local v0, "unlockedIntent":Landroid/content/Intent;
    const-string v3, "android.intent.extra.user_handle"

    invoke-virtual {v0, v3, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 466
    const/high16 v14, 0x50000000

    invoke-virtual {v0, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 468
    iget-object v3, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    sget v17, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v18, 0x3e8

    move-object v4, v0

    move/from16 v14, v16

    move/from16 v19, v15

    move/from16 v15, v17

    .end local v15    # "userId":I
    .local v19, "userId":I
    move/from16 v16, v18

    move/from16 v17, v19

    invoke-virtual/range {v3 .. v17}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    .line 472
    move/from16 v4, v19

    invoke-virtual {v1, v4}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .end local v19    # "userId":I
    .local v4, "userId":I
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_df

    .line 473
    iget-object v3, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 474
    .local v3, "parent":Landroid/content/pm/UserInfo;
    if-eqz v3, :cond_df

    .line 475
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MANAGED_PROFILE_UNLOCKED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 477
    .local v5, "profileUnlockedIntent":Landroid/content/Intent;
    const-string v6, "android.intent.extra.USER"

    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 478
    const/high16 v6, 0x50000000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 481
    iget-object v6, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, -0x1

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    sget v31, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v32, 0x3e8

    iget v7, v3, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v19, v6

    move-object/from16 v20, v5

    move/from16 v33, v7

    invoke-virtual/range {v19 .. v33}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    .line 491
    .end local v3    # "parent":Landroid/content/pm/UserInfo;
    .end local v5    # "profileUnlockedIntent":Landroid/content/Intent;
    :cond_df
    invoke-virtual {v1, v4}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 492
    .local v3, "info":Landroid/content/pm/UserInfo;
    iget-object v5, v3, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    sget-object v6, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_111

    .line 497
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_104

    .line 498
    iget-boolean v5, v2, Lcom/android/server/am/UserState;->tokenProvided:Z

    if-eqz v5, :cond_102

    iget-object v5, v1, Lcom/android/server/am/UserController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 499
    invoke-virtual {v5, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v5

    if-nez v5, :cond_101

    goto :goto_102

    :cond_101
    goto :goto_103

    :cond_102
    :goto_102
    const/4 v6, 0x1

    .local v6, "quiet":Z
    :goto_103
    goto :goto_105

    .line 501
    .end local v6    # "quiet":Z
    :cond_104
    nop

    .restart local v6    # "quiet":Z
    :goto_105
    move v5, v6

    .line 503
    .end local v6    # "quiet":Z
    .local v5, "quiet":Z
    iget-object v6, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    new-instance v7, Lcom/android/server/am/-$$Lambda$UserController$d0zeElfogOIugnQQLWhCzumk53k;

    invoke-direct {v7, v1, v2}, Lcom/android/server/am/-$$Lambda$UserController$d0zeElfogOIugnQQLWhCzumk53k;-><init>(Lcom/android/server/am/UserController;Lcom/android/server/am/UserState;)V

    invoke-virtual {v6, v4, v5, v7}, Lcom/android/server/am/UserController$Injector;->sendPreBootBroadcast(IZLjava/lang/Runnable;)V

    .line 505
    .end local v5    # "quiet":Z
    goto :goto_114

    .line 506
    :cond_111
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/UserController;->finishUserUnlockedCompleted(Lcom/android/server/am/UserState;)V

    .line 508
    :goto_114
    return-void

    .line 448
    .end local v0    # "unlockedIntent":Landroid/content/Intent;
    .end local v3    # "info":Landroid/content/pm/UserInfo;
    .end local v4    # "userId":I
    .restart local v15    # "userId":I
    :catchall_115
    move-exception v0

    move v4, v15

    .end local v15    # "userId":I
    .restart local v4    # "userId":I
    :goto_117
    :try_start_117
    monitor-exit v3
    :try_end_118
    .catchall {:try_start_117 .. :try_end_118} :catchall_119

    throw v0

    :catchall_119
    move-exception v0

    goto :goto_117
.end method

.method getCurrentOrTargetUserId()I
    .registers 4

    .line 1781
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1782
    :try_start_3
    iget v1, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_c

    iget v1, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    goto :goto_e

    :cond_c
    iget v1, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    :goto_e
    monitor-exit v0

    return v1

    .line 1783
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method getCurrentOrTargetUserIdLU()I
    .registers 3

    .line 1787
    iget v0, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_9

    iget v0, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    goto :goto_b

    :cond_9
    iget v0, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    :goto_b
    return v0
.end method

.method getCurrentProfileIds()[I
    .registers 3

    .line 1893
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1894
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    monitor-exit v0

    return-object v1

    .line 1895
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method getCurrentUser()Landroid/content/pm/UserInfo;
    .registers 3

    .line 1754
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController$Injector;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 1756
    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController$Injector;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    goto :goto_4b

    .line 1758
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: getCurrentUser() from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1759
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1760
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " requires "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1762
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1767
    .end local v0    # "msg":Ljava/lang/String;
    :cond_4b
    :goto_4b
    iget v0, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_58

    .line 1768
    iget v0, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0

    .line 1770
    :cond_58
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1771
    :try_start_5b
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentUserLU()Landroid/content/pm/UserInfo;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1772
    :catchall_61
    move-exception v1

    monitor-exit v0
    :try_end_63
    .catchall {:try_start_5b .. :try_end_63} :catchall_61

    throw v1
.end method

.method getCurrentUserId()I
    .registers 3

    .line 1796
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1797
    :try_start_3
    iget v1, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    monitor-exit v0

    return v1

    .line 1798
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method getCurrentUserIdLU()I
    .registers 2

    .line 1792
    iget v0, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    return v0
.end method

.method getCurrentUserLU()Landroid/content/pm/UserInfo;
    .registers 3

    .line 1776
    iget v0, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_9

    iget v0, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    goto :goto_b

    :cond_9
    iget v0, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    .line 1777
    .local v0, "userId":I
    :goto_b
    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    return-object v1
.end method

.method getProfileIds(I)Ljava/util/Set;
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1850
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1851
    .local v0, "userIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v1

    .line 1853
    .local v1, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 1854
    .local v3, "user":Landroid/content/pm/UserInfo;
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1855
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    goto :goto_14

    .line 1856
    :cond_2a
    return-object v0
.end method

.method getRunningUsersLU()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 273
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 274
    .local v0, "runningUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 275
    .local v2, "userId":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UserState;

    .line 276
    .local v3, "uss":Lcom/android/server/am/UserState;
    if-nez v3, :cond_26

    .line 278
    goto :goto_b

    .line 280
    :cond_26
    iget v4, v3, Lcom/android/server/am/UserState;->state:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_b

    iget v4, v3, Lcom/android/server/am/UserState;->state:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_31

    .line 283
    goto :goto_b

    .line 285
    :cond_31
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_42

    .line 287
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/content/pm/UserInfo;->isSystemOnly(I)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 288
    goto :goto_b

    .line 291
    :cond_42
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    .end local v2    # "userId":Ljava/lang/Integer;
    .end local v3    # "uss":Lcom/android/server/am/UserState;
    goto :goto_b

    .line 293
    :cond_46
    return-object v0
.end method

.method getStartedUserArray()[I
    .registers 3

    .line 1702
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1703
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    monitor-exit v0

    return-object v1

    .line 1704
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method getStartedUserState(I)Lcom/android/server/am/UserState;
    .registers 4
    .param p1, "userId"    # I

    .line 1628
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1629
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UserState;

    monitor-exit v0

    return-object v1

    .line 1630
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method getUserIds()[I
    .registers 2

    .line 1815
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    return-object v0
.end method

.method getUserInfo(I)Landroid/content/pm/UserInfo;
    .registers 3
    .param p1, "userId"    # I

    .line 1811
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method getUsers()[I
    .registers 4

    .line 1806
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    .line 1807
    .local v0, "ums":Lcom/android/server/pm/UserManagerService;
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v1

    goto :goto_13

    :cond_d
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    :goto_13
    return-object v1
.end method

.method handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I
    .registers 22
    .param p1, "callingPid"    # I
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I
    .param p4, "allowAll"    # Z
    .param p5, "allowMode"    # I
    .param p6, "name"    # Ljava/lang/String;
    .param p7, "callerPackage"    # Ljava/lang/String;

    move-object v0, p0

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p5

    .line 1508
    move-object/from16 v10, p7

    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    .line 1509
    .local v11, "callingUserId":I
    if-ne v11, v8, :cond_10

    .line 1510
    return v8

    .line 1519
    :cond_10
    invoke-virtual {v0, v8}, Lcom/android/server/am/UserController;->unsafeConvertIncomingUser(I)I

    move-result v12

    .line 1521
    .local v12, "targetUserId":I
    if-eqz v7, :cond_68

    const/16 v1, 0x3e8

    if-eq v7, v1, :cond_68

    .line 1523
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1, v7}, Lcom/android/server/am/UserController$Injector;->isCallerRecents(I)Z

    move-result v1

    const/4 v13, 0x2

    if-eqz v1, :cond_31

    .line 1524
    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v1

    if-ne v11, v1, :cond_31

    .line 1525
    invoke-virtual {v0, v11, v12}, Lcom/android/server/am/UserController;->isSameProfileGroup(II)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 1528
    const/4 v1, 0x1

    goto :goto_40

    .line 1529
    :cond_31
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const/4 v5, -0x1

    const/4 v6, 0x1

    move v3, p1

    move v4, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/UserController$Injector;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v1

    if-nez v1, :cond_41

    .line 1532
    const/4 v1, 0x1

    .line 1532
    .local v1, "allow":Z
    :goto_40
    goto :goto_61

    .line 1533
    .end local v1    # "allow":Z
    :cond_41
    if-ne v9, v13, :cond_45

    .line 1535
    const/4 v1, 0x0

    goto :goto_40

    .line 1536
    :cond_45
    iget-object v1, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    const/4 v5, -0x1

    const/4 v6, 0x1

    move v3, p1

    move v4, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/UserController$Injector;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v1

    if-eqz v1, :cond_55

    .line 1539
    const/4 v1, 0x0

    goto :goto_40

    .line 1540
    :cond_55
    if-nez v9, :cond_59

    .line 1542
    const/4 v1, 0x1

    goto :goto_40

    .line 1543
    :cond_59
    const/4 v1, 0x1

    if-ne v9, v1, :cond_bf

    .line 1546
    invoke-virtual {v0, v11, v12}, Lcom/android/server/am/UserController;->isSameProfileGroup(II)Z

    move-result v1

    goto :goto_40

    .line 1548
    .restart local v1    # "allow":Z
    :goto_61
    nop

    .line 1550
    if-nez v1, :cond_68

    .line 1551
    const/4 v2, -0x3

    if-ne v8, v2, :cond_6b

    .line 1554
    move v12, v11

    .line 1579
    .end local v1    # "allow":Z
    :cond_68
    move-object/from16 v3, p6

    goto :goto_d8

    .line 1556
    .restart local v1    # "allow":Z
    :cond_6b
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x80

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1557
    .local v2, "builder":Ljava/lang/StringBuilder;
    const-string v3, "Permission Denial: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1558
    move-object/from16 v3, p6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1559
    if-eqz v10, :cond_86

    .line 1560
    const-string v4, " from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1561
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1563
    :cond_86
    const-string v4, " asks to run as user "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1564
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1565
    const-string v4, " but is calling from user "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1566
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1567
    const-string v4, "; this requires "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1568
    const-string v4, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1569
    if-eq v9, v13, :cond_b0

    .line 1570
    const-string v4, " or "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1571
    const-string v4, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1573
    :cond_b0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1574
    .local v4, "msg":Ljava/lang/String;
    const-string v5, "ActivityManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    new-instance v5, Ljava/lang/SecurityException;

    invoke-direct {v5, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1548
    .end local v1    # "allow":Z
    .end local v2    # "builder":Ljava/lang/StringBuilder;
    .end local v4    # "msg":Ljava/lang/String;
    :cond_bf
    move-object/from16 v3, p6

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown mode: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1579
    :goto_d8
    if-nez p4, :cond_dd

    .line 1580
    invoke-virtual {v0, v12}, Lcom/android/server/am/UserController;->ensureNotSpecialUser(I)V

    .line 1583
    :cond_dd
    const/16 v2, 0x7d0

    if-ne v7, v2, :cond_111

    if-ltz v12, :cond_111

    .line 1584
    const-string/jumbo v2, "no_debugging_features"

    invoke-virtual {v0, v2, v12}, Lcom/android/server/am/UserController;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_ed

    goto :goto_111

    .line 1585
    :cond_ed
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Shell does not have permission to access user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\n "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x3

    .line 1586
    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1589
    :cond_111
    :goto_111
    return v12
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 2024
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_c6

    goto/16 :goto_c3

    .line 2078
    :sswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    invoke-direct {p0, v0}, Lcom/android/server/am/UserController;->showUserSwitchDialog(Landroid/util/Pair;)V

    goto/16 :goto_c3

    .line 2026
    :sswitch_10
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->startUserInForeground(I)V

    .line 2027
    goto/16 :goto_c3

    .line 2075
    :sswitch_17
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/server/am/UserController;->dispatchLockedBootComplete(I)V

    .line 2076
    goto/16 :goto_c3

    .line 2050
    :sswitch_1e
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 2051
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getSystemServiceManager()Lcom/android/server/SystemServiceManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/SystemServiceManager;->unlockUser(I)V

    .line 2053
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/am/-$$Lambda$UserController$avTAix2Aub5zSKSBBofMYY2qXyk;

    invoke-direct {v2, p0, v0}, Lcom/android/server/am/-$$Lambda$UserController$avTAix2Aub5zSKSBBofMYY2qXyk;-><init>(Lcom/android/server/am/UserController;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2056
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/UserState;

    invoke-virtual {p0, v1}, Lcom/android/server/am/UserController;->finishUserUnlocked(Lcom/android/server/am/UserState;)V

    .line 2057
    goto/16 :goto_c3

    .line 2038
    .end local v0    # "userId":I
    :sswitch_3e
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/UserController;->timeoutUserSwitchCallbacks(II)V

    .line 2039
    goto/16 :goto_c3

    .line 2072
    :sswitch_47
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->dispatchUserSwitchComplete(I)V

    .line 2073
    goto/16 :goto_c3

    .line 2069
    :sswitch_4e
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/server/am/UserController;->dispatchForegroundProfileChanged(I)V

    .line 2070
    goto :goto_c3

    .line 2059
    :sswitch_54
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/16 v1, 0x4008

    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 2061
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 2059
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/UserController$Injector;->batteryStatsServiceNoteEvent(ILjava/lang/String;I)V

    .line 2062
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const v1, 0x8008

    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 2064
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 2062
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/UserController$Injector;->batteryStatsServiceNoteEvent(ILjava/lang/String;I)V

    .line 2066
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getSystemServiceManager()Lcom/android/server/SystemServiceManager;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->switchUser(I)V

    .line 2067
    goto :goto_c3

    .line 2044
    :sswitch_7f
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const v1, 0x8007

    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 2046
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 2044
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/UserController$Injector;->batteryStatsServiceNoteEvent(ILjava/lang/String;I)V

    .line 2047
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getSystemServiceManager()Lcom/android/server/SystemServiceManager;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startUser(I)V

    .line 2048
    goto :goto_c3

    .line 2041
    :sswitch_9b
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->startProfiles()V

    .line 2042
    goto :goto_c3

    .line 2035
    :sswitch_9f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/UserState;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/am/UserController;->timeoutUserSwitch(Lcom/android/server/am/UserState;II)V

    .line 2036
    goto :goto_c3

    .line 2032
    :sswitch_ab
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/UserState;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/UserController;->continueUserSwitch(Lcom/android/server/am/UserState;II)V

    .line 2033
    goto :goto_c3

    .line 2029
    :sswitch_b7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/UserState;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/UserController;->dispatchUserSwitch(Lcom/android/server/am/UserState;II)V

    .line 2030
    nop

    .line 2081
    :goto_c3
    const/4 v0, 0x0

    return v0

    nop

    :sswitch_data_c6
    .sparse-switch
        0xa -> :sswitch_b7
        0x14 -> :sswitch_ab
        0x1e -> :sswitch_9f
        0x28 -> :sswitch_9b
        0x32 -> :sswitch_7f
        0x3c -> :sswitch_54
        0x46 -> :sswitch_4e
        0x50 -> :sswitch_47
        0x5a -> :sswitch_3e
        0x64 -> :sswitch_1e
        0x6e -> :sswitch_17
        0x78 -> :sswitch_10
        0x3e8 -> :sswitch_7
    .end sparse-switch
.end method

.method hasStartedUserState(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 1634
    iget-object v0, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method hasUserRestriction(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "restriction"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1846
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method isCurrentProfile(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 1887
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1888
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1889
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method isLockScreenDisabled(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 1930
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    return v0
.end method

.method isSameProfileGroup(II)Z
    .registers 8
    .param p1, "callingUserId"    # I
    .param p2, "targetUserId"    # I

    .line 1860
    const/4 v0, 0x1

    if-ne p1, p2, :cond_4

    .line 1861
    return v0

    .line 1863
    :cond_4
    iget-object v1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1864
    :try_start_7
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    const/16 v3, -0x2710

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 1866
    .local v2, "callingProfile":I
    iget-object v4, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    .line 1868
    .local v4, "targetProfile":I
    if-eq v2, v3, :cond_1a

    if-ne v2, v4, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    monitor-exit v1

    return v0

    .line 1870
    .end local v2    # "callingProfile":I
    .end local v4    # "targetProfile":I
    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method isUserOrItsParentRunning(I)Z
    .registers 6
    .param p1, "userId"    # I

    .line 1874
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1875
    const/4 v1, 0x0

    :try_start_4
    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/UserController;->isUserRunning(II)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1876
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 1878
    :cond_d
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    const/16 v3, -0x2710

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 1879
    .local v2, "parentUserId":I
    if-ne v2, v3, :cond_19

    .line 1880
    monitor-exit v0

    return v1

    .line 1882
    :cond_19
    invoke-virtual {p0, v2, v1}, Lcom/android/server/am/UserController;->isUserRunning(II)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1883
    .end local v2    # "parentUserId":I
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method isUserRunning(II)Z
    .registers 8
    .param p1, "userId"    # I
    .param p2, "flags"    # I

    .line 1708
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->getStartedUserState(I)Lcom/android/server/am/UserState;

    move-result-object v0

    .line 1709
    .local v0, "state":Lcom/android/server/am/UserState;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1710
    return v1

    .line 1712
    :cond_8
    and-int/lit8 v2, p2, 0x1

    const/4 v3, 0x1

    if-eqz v2, :cond_e

    .line 1713
    return v3

    .line 1715
    :cond_e
    and-int/lit8 v2, p2, 0x2

    if-eqz v2, :cond_19

    .line 1716
    iget v2, v0, Lcom/android/server/am/UserState;->state:I

    packed-switch v2, :pswitch_data_46

    .line 1721
    return v1

    .line 1719
    :pswitch_18
    return v3

    .line 1724
    :cond_19
    and-int/lit8 v2, p2, 0x8

    if-eqz v2, :cond_29

    .line 1725
    iget v2, v0, Lcom/android/server/am/UserState;->state:I

    packed-switch v2, :pswitch_data_4e

    .line 1734
    return v1

    .line 1732
    :pswitch_23
    invoke-static {p1}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v1

    return v1

    .line 1728
    :pswitch_28
    return v3

    .line 1737
    :cond_29
    and-int/lit8 v2, p2, 0x4

    if-eqz v2, :cond_39

    .line 1738
    iget v2, v0, Lcom/android/server/am/UserState;->state:I

    packed-switch v2, :pswitch_data_5a

    .line 1746
    return v1

    .line 1744
    :pswitch_33
    invoke-static {p1}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v1

    return v1

    .line 1740
    :pswitch_38
    return v3

    .line 1750
    :cond_39
    iget v2, v0, Lcom/android/server/am/UserState;->state:I

    const/4 v4, 0x4

    if-eq v2, v4, :cond_45

    iget v2, v0, Lcom/android/server/am/UserState;->state:I

    const/4 v4, 0x5

    if-eq v2, v4, :cond_45

    move v1, v3

    nop

    :cond_45
    return v1

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_18
        :pswitch_18
    .end packed-switch

    :pswitch_data_4e
    .packed-switch 0x2
        :pswitch_28
        :pswitch_28
        :pswitch_23
        :pswitch_23
    .end packed-switch

    :pswitch_data_5a
    .packed-switch 0x3
        :pswitch_38
        :pswitch_33
        :pswitch_33
    .end packed-switch
.end method

.method onSystemReady()V
    .registers 2

    .line 1671
    invoke-direct {p0}, Lcom/android/server/am/UserController;->updateCurrentProfileIds()V

    .line 1672
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->reportCurWakefulnessUsageEvent()V

    .line 1673
    return-void
.end method

.method onUserRemoved(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 1899
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1900
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    .line 1901
    .local v1, "size":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_b
    if-ltz v2, :cond_25

    .line 1902
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    if-eq v3, p1, :cond_1d

    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    .line 1903
    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    if-ne v3, p1, :cond_22

    .line 1904
    :cond_1d
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 1901
    :cond_22
    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    .line 1908
    .end local v2    # "i":I
    :cond_25
    iget-object v2, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    invoke-static {v2, p1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    .line 1909
    .end local v1    # "size":I
    monitor-exit v0

    .line 1910
    return-void

    .line 1909
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    .registers 5
    .param p1, "observer"    # Landroid/app/IUserSwitchObserver;
    .param p2, "name"    # Ljava/lang/String;

    .line 1605
    const-string v0, "Observer name cannot be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1606
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController$Injector;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    .line 1615
    iget-object v0, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 1616
    return-void

    .line 1608
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: registerUserSwitchObserver() from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1609
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1610
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " requires "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1612
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method restartUser(IZ)I
    .registers 5
    .param p1, "userId"    # I
    .param p2, "foreground"    # Z

    .line 595
    new-instance v0, Lcom/android/server/am/UserController$3;

    invoke-direct {v0, p0, p2}, Lcom/android/server/am/UserController$3;-><init>(Lcom/android/server/am/UserController;Z)V

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/am/UserController;->stopUser(IZLandroid/app/IStopUserCallback;)I

    move-result v0

    return v0
.end method

.method scheduleStartProfiles()V
    .registers 3

    .line 883
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/-$$Lambda$UserController$G0WJmqt4X_QG30fRlvXobn18mrE;

    invoke-direct {v1, p0}, Lcom/android/server/am/-$$Lambda$UserController$G0WJmqt4X_QG30fRlvXobn18mrE;-><init>(Lcom/android/server/am/UserController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 889
    return-void
.end method

.method sendBootCompleted(Landroid/content/IIntentReceiver;)V
    .registers 5
    .param p1, "resultTo"    # Landroid/content/IIntentReceiver;

    .line 1661
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1662
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v1

    .line 1663
    .local v1, "startedUsers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/UserState;>;"
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1e

    .line 1664
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1d

    .line 1665
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/UserState;

    .line 1666
    .local v2, "uss":Lcom/android/server/am/UserState;
    invoke-direct {p0, v2, p1}, Lcom/android/server/am/UserController;->finishUserBoot(Lcom/android/server/am/UserState;Landroid/content/IIntentReceiver;)V

    .line 1664
    .end local v2    # "uss":Lcom/android/server/am/UserState;
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 1668
    .end local v0    # "i":I
    :cond_1d
    return-void

    .line 1663
    .end local v1    # "startedUsers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/UserState;>;"
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v1
.end method

.method sendContinueUserSwitchLU(Lcom/android/server/am/UserState;II)V
    .registers 7
    .param p1, "uss"    # Lcom/android/server/am/UserState;
    .param p2, "oldUserId"    # I
    .param p3, "newUserId"    # I

    .line 1427
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/UserController;->mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    .line 1428
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1429
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x14

    invoke-virtual {v1, v2, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1431
    return-void
.end method

.method sendForegroundProfileChanged(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 1619
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x46

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1620
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1621
    return-void
.end method

.method sendUserSwitchBroadcasts(II)V
    .registers 30
    .param p1, "oldUserId"    # I
    .param p2, "newUserId"    # I

    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 1458
    move/from16 v3, p2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1461
    .local v4, "ident":J
    const/high16 v0, 0x50000000

    const/4 v6, 0x0

    if-ltz v2, :cond_72

    .line 1463
    :try_start_f
    iget-object v7, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v7}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v7

    invoke-virtual {v7, v2, v6}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v7

    .line 1464
    .local v7, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    .line 1465
    .local v8, "count":I
    move v9, v6

    .local v9, "i":I
    :goto_1e
    if-ge v9, v8, :cond_72

    .line 1466
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/UserInfo;

    iget v10, v10, Landroid/content/pm/UserInfo;->id:I

    .line 1467
    .local v10, "profileUserId":I
    new-instance v11, Landroid/content/Intent;

    const-string v12, "android.intent.action.USER_BACKGROUND"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v15, v11

    .line 1468
    .local v15, "intent":Landroid/content/Intent;
    invoke-virtual {v15, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1470
    const-string v11, "android.intent.extra.user_handle"

    invoke-virtual {v15, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1471
    iget-object v11, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, -0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    sget v24, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v25, 0x3e8

    move-object v12, v15

    move-object/from16 v26, v15

    move/from16 v15, v16

    .end local v15    # "intent":Landroid/content/Intent;
    .local v26, "intent":Landroid/content/Intent;
    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move/from16 v19, v20

    move-object/from16 v20, v21

    move/from16 v21, v22

    move/from16 v22, v23

    move/from16 v23, v24

    move/from16 v24, v25

    move/from16 v25, v10

    invoke-virtual/range {v11 .. v25}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    .line 1465
    .end local v10    # "profileUserId":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_1e

    .line 1501
    .end local v7    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v8    # "count":I
    .end local v9    # "i":I
    .end local v26    # "intent":Landroid/content/Intent;
    :catchall_6f
    move-exception v0

    goto/16 :goto_101

    .line 1476
    :cond_72
    if-ltz v3, :cond_105

    .line 1478
    iget-object v7, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v7}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v7

    invoke-virtual {v7, v3, v6}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v7

    .line 1479
    .restart local v7    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    .line 1480
    .restart local v8    # "count":I
    nop

    .local v6, "i":I
    :goto_83
    if-ge v6, v8, :cond_d1

    .line 1481
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/UserInfo;

    iget v9, v9, Landroid/content/pm/UserInfo;->id:I

    .line 1482
    .local v9, "profileUserId":I
    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.intent.action.USER_FOREGROUND"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v15, v10

    .line 1483
    .restart local v15    # "intent":Landroid/content/Intent;
    invoke-virtual {v15, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1485
    const-string v10, "android.intent.extra.user_handle"

    invoke-virtual {v15, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1486
    iget-object v10, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, -0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    sget v23, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v24, 0x3e8

    move-object v11, v15

    move-object/from16 v25, v15

    move-object/from16 v15, v16

    .end local v15    # "intent":Landroid/content/Intent;
    .local v25, "intent":Landroid/content/Intent;
    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move/from16 v18, v19

    move-object/from16 v19, v20

    move/from16 v20, v21

    move/from16 v21, v22

    move/from16 v22, v23

    move/from16 v23, v24

    move/from16 v24, v9

    invoke-virtual/range {v10 .. v24}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    .line 1480
    .end local v9    # "profileUserId":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_83

    .line 1490
    .end local v6    # "i":I
    .end local v25    # "intent":Landroid/content/Intent;
    :cond_d1
    new-instance v6, Landroid/content/Intent;

    const-string v9, "android.intent.action.USER_SWITCHED"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1491
    .local v6, "intent":Landroid/content/Intent;
    invoke-virtual {v6, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1493
    const-string v0, "android.intent.extra.user_handle"

    invoke-virtual {v6, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1494
    iget-object v10, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-string v0, "android.permission.MANAGE_USERS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v17

    const/16 v18, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    sget v22, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v23, 0x3e8

    const/16 v24, -0x1

    move-object v11, v6

    invoke-virtual/range {v10 .. v24}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I
    :try_end_100
    .catchall {:try_start_f .. :try_end_100} :catchall_6f

    .end local v6    # "intent":Landroid/content/Intent;
    .end local v7    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v8    # "count":I
    goto :goto_105

    .line 1501
    :goto_101
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_105
    :goto_105
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1502
    nop

    .line 1503
    return-void
.end method

.method setSwitchingFromSystemUserMessage(Ljava/lang/String;)V
    .registers 4
    .param p1, "switchingFromSystemUserMessage"    # Ljava/lang/String;

    .line 1934
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1935
    :try_start_3
    iput-object p1, p0, Lcom/android/server/am/UserController;->mSwitchingFromSystemUserMessage:Ljava/lang/String;

    .line 1936
    monitor-exit v0

    .line 1937
    return-void

    .line 1936
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method setSwitchingToSystemUserMessage(Ljava/lang/String;)V
    .registers 4
    .param p1, "switchingToSystemUserMessage"    # Ljava/lang/String;

    .line 1940
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1941
    :try_start_3
    iput-object p1, p0, Lcom/android/server/am/UserController;->mSwitchingToSystemUserMessage:Ljava/lang/String;

    .line 1942
    monitor-exit v0

    .line 1943
    return-void

    .line 1942
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method protected shouldConfirmCredentials(I)Z
    .registers 5
    .param p1, "userId"    # I

    .line 1917
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1918
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    .line 1919
    monitor-exit v0

    return v2

    .line 1921
    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_2d

    .line 1922
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-nez v0, :cond_18

    .line 1923
    return v2

    .line 1925
    :cond_18
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    .line 1926
    .local v0, "km":Landroid/app/KeyguardManager;
    invoke-virtual {v0, p1}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-virtual {v0, p1}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v1

    if-eqz v1, :cond_2c

    const/4 v2, 0x1

    nop

    :cond_2c
    return v2

    .line 1921
    .end local v0    # "km":Landroid/app/KeyguardManager;
    :catchall_2d
    move-exception v1

    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method startProfiles()V
    .registers 9

    .line 892
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v0

    .line 894
    .local v0, "currentUserId":I
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v1

    .line 896
    .local v1, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 897
    .local v3, "profilesToStart":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 898
    .local v5, "user":Landroid/content/pm/UserInfo;
    iget v6, v5, Landroid/content/pm/UserInfo;->flags:I

    const/16 v7, 0x10

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_3e

    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    iget v7, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    if-eq v6, v7, :cond_3e

    .line 899
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result v6

    if-nez v6, :cond_3e

    .line 900
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 902
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    :cond_3e
    goto :goto_1c

    .line 903
    :cond_3f
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 904
    .local v4, "profilesToStartSize":I
    move v5, v2

    .line 905
    .local v5, "i":I
    :goto_44
    if-ge v5, v4, :cond_5a

    iget v6, p0, Lcom/android/server/am/UserController;->mMaxRunningUsers:I

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_5a

    .line 906
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v6, v2}, Lcom/android/server/am/UserController;->startUser(IZ)Z

    .line 905
    add-int/lit8 v5, v5, 0x1

    goto :goto_44

    .line 908
    :cond_5a
    if-ge v5, v4, :cond_63

    .line 909
    const-string v2, "ActivityManager"

    const-string v6, "More profiles than MAX_RUNNING_USERS"

    invoke-static {v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    :cond_63
    return-void
.end method

.method startUser(IZ)Z
    .registers 4
    .param p1, "userId"    # I
    .param p2, "foreground"    # Z

    .line 917
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/UserController;->startUser(IZLandroid/os/IProgressListener;)Z

    move-result v0

    return v0
.end method

.method startUser(IZLandroid/os/IProgressListener;)Z
    .registers 49
    .param p1, "userId"    # I
    .param p2, "foreground"    # Z
    .param p3, "unlockListener"    # Landroid/os/IProgressListener;

    move-object/from16 v1, p0

    move/from16 v15, p1

    move/from16 v14, p2

    .line 955
    move-object/from16 v13, p3

    move v4, v15

    .line 956
    .local v4, "userIdOrig":I
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v2}, Lcom/android/server/am/UserController$Injector;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_357

    .line 966
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting userid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " fg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    move-wide v11, v2

    .line 970
    .local v11, "ident":J
    :try_start_36
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v0
    :try_end_3a
    .catchall {:try_start_36 .. :try_end_3a} :catchall_34e

    move v10, v0

    .line 971
    .local v10, "oldUserId":I
    const/4 v0, 0x1

    if-ne v10, v15, :cond_43

    .line 972
    nop

    .line 1138
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 972
    return v0

    .line 975
    :cond_43
    if-eqz v14, :cond_55

    .line 976
    :try_start_45
    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string/jumbo v3, "startUser"

    invoke-virtual {v2, v3}, Lcom/android/server/am/UserController$Injector;->clearAllLockedTasks(Ljava/lang/String;)V
    :try_end_4d
    .catchall {:try_start_45 .. :try_end_4d} :catchall_4e

    goto :goto_55

    .line 1138
    .end local v10    # "oldUserId":I
    :catchall_4e
    move-exception v0

    move-wide v9, v11

    move/from16 v22, v14

    move v6, v15

    goto/16 :goto_353

    .line 979
    .restart local v10    # "oldUserId":I
    :cond_55
    :goto_55
    :try_start_55
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2
    :try_end_59
    .catchall {:try_start_55 .. :try_end_59} :catchall_34e

    move-object v9, v2

    .line 980
    .local v9, "userInfo":Landroid/content/pm/UserInfo;
    const/4 v8, 0x0

    if-nez v9, :cond_78

    .line 981
    :try_start_5d
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No user info for user #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73
    .catchall {:try_start_5d .. :try_end_73} :catchall_4e

    .line 982
    nop

    .line 1138
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 982
    return v8

    .line 984
    :cond_78
    if-eqz v14, :cond_a0

    :try_start_7a
    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_a0

    .line 985
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot switch to User #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": not a full user"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9b
    .catchall {:try_start_7a .. :try_end_9b} :catchall_4e

    .line 986
    nop

    .line 1138
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 986
    return v8

    .line 989
    :cond_a0
    if-eqz v14, :cond_b5

    :try_start_a2
    iget-boolean v2, v1, Lcom/android/server/am/UserController;->mUserSwitchUiEnabled:Z

    if-eqz v2, :cond_b5

    .line 990
    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    const v3, 0x10a0088

    const v5, 0x10a0087

    invoke-virtual {v2, v3, v5}, Lcom/android/server/wm/WindowManagerService;->startFreezingScreen(II)V
    :try_end_b5
    .catchall {:try_start_a2 .. :try_end_b5} :catchall_4e

    .line 994
    :cond_b5
    const/4 v2, 0x0

    .line 995
    .local v2, "needStart":Z
    const/4 v3, 0x0

    .line 1000
    .local v3, "updateUmState":Z
    :try_start_b7
    iget-object v5, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_ba
    .catchall {:try_start_b7 .. :try_end_ba} :catchall_34e

    .line 1001
    :try_start_ba
    iget-object v6, v1, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v6, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/UserState;
    :try_end_c2
    .catchall {:try_start_ba .. :try_end_c2} :catchall_340

    .line 1002
    .local v6, "uss":Lcom/android/server/am/UserState;
    if-nez v6, :cond_f2

    .line 1003
    :try_start_c4
    new-instance v8, Lcom/android/server/am/UserState;

    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/android/server/am/UserState;-><init>(Landroid/os/UserHandle;)V

    move-object v6, v8

    .line 1004
    iget-object v0, v6, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    new-instance v8, Lcom/android/server/am/UserController$UserProgressListener;

    const/4 v7, 0x0

    invoke-direct {v8, v7}, Lcom/android/server/am/UserController$UserProgressListener;-><init>(Lcom/android/server/am/UserController$1;)V

    invoke-virtual {v0, v8}, Lcom/android/internal/util/ProgressReporter;->addListener(Landroid/os/IProgressListener;)V

    .line 1005
    iget-object v0, v1, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, v15, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1006
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLU()V
    :try_end_e1
    .catchall {:try_start_c4 .. :try_end_e1} :catchall_e8

    .line 1007
    const/4 v0, 0x1

    .line 1008
    .end local v2    # "needStart":Z
    .local v0, "needStart":Z
    const/4 v3, 0x1

    .line 1015
    move v8, v0

    move/from16 v21, v3

    const/4 v7, 0x5

    goto :goto_12b

    .line 1018
    .end local v0    # "needStart":Z
    .end local v6    # "uss":Lcom/android/server/am/UserState;
    .restart local v2    # "needStart":Z
    :catchall_e8
    move-exception v0

    .line 1018
    .end local v10    # "oldUserId":I
    .end local v11    # "ident":J
    .local v7, "oldUserId":I
    .local v9, "ident":J
    .local v27, "userInfo":Landroid/content/pm/UserInfo;
    move-object/from16 v27, v9

    move v7, v10

    move-wide v9, v11

    move/from16 v22, v14

    move v6, v15

    goto/16 :goto_348

    .line 1009
    .end local v7    # "oldUserId":I
    .end local v27    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v6    # "uss":Lcom/android/server/am/UserState;
    .local v9, "userInfo":Landroid/content/pm/UserInfo;
    .restart local v10    # "oldUserId":I
    .restart local v11    # "ident":J
    :cond_f2
    :try_start_f2
    iget v0, v6, Lcom/android/server/am/UserState;->state:I
    :try_end_f4
    .catchall {:try_start_f2 .. :try_end_f4} :catchall_340

    const/4 v7, 0x5

    if-ne v0, v7, :cond_128

    :try_start_f7
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->isCallingOnHandlerThread()Z

    move-result v0

    if-nez v0, :cond_128

    .line 1010
    const-string v0, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "User #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " is shutting down - will start after full stop"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    iget-object v0, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/am/-$$Lambda$UserController$QOnwyVAoixnII6oArWHXXxl2_mo;

    invoke-direct {v7, v1, v15, v14, v13}, Lcom/android/server/am/-$$Lambda$UserController$QOnwyVAoixnII6oArWHXXxl2_mo;-><init>(Lcom/android/server/am/UserController;IZLandroid/os/IProgressListener;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1013
    monitor-exit v5
    :try_end_123
    .catchall {:try_start_f7 .. :try_end_123} :catchall_e8

    .line 1138
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1013
    const/4 v0, 0x1

    return v0

    .line 1015
    :cond_128
    move v8, v2

    move/from16 v21, v3

    .line 1015
    .end local v2    # "needStart":Z
    .end local v3    # "updateUmState":Z
    .local v8, "needStart":Z
    .local v21, "updateUmState":Z
    :goto_12b
    :try_start_12b
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1016
    .local v0, "userIdInt":Ljava/lang/Integer;
    iget-object v2, v1, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1017
    iget-object v2, v1, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1018
    .end local v0    # "userIdInt":Ljava/lang/Integer;
    monitor-exit v5
    :try_end_13a
    .catchall {:try_start_12b .. :try_end_13a} :catchall_334

    .line 1019
    if-eqz v13, :cond_141

    .line 1020
    :try_start_13c
    iget-object v0, v6, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    invoke-virtual {v0, v13}, Lcom/android/internal/util/ProgressReporter;->addListener(Landroid/os/IProgressListener;)V

    .line 1022
    :cond_141
    if-eqz v21, :cond_14e

    .line 1023
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v0

    iget v2, v6, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v0, v15, v2}, Landroid/os/UserManagerInternal;->setUserState(II)V

    .line 1025
    :cond_14e
    if-eqz v14, :cond_1ad

    .line 1027
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Lcom/android/server/am/UserController$Injector;->reportGlobalUsageEventLocked(I)V

    .line 1028
    iget-object v2, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_15a
    .catchall {:try_start_13c .. :try_end_15a} :catchall_4e

    .line 1029
    :try_start_15a
    iput v15, v1, Lcom/android/server/am/UserController;->mCurrentUserId:I

    .line 1030
    const/16 v0, -0x2710

    iput v0, v1, Lcom/android/server/am/UserController;->mTargetUserId:I

    .line 1031
    monitor-exit v2
    :try_end_161
    .catchall {:try_start_15a .. :try_end_161} :catchall_1a7

    .line 1032
    :try_start_161
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->updateUserConfiguration()V

    .line 1033
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateCurrentProfileIds()V

    .line 1036
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->reportCurWakefulnessUsageEvent()V

    .line 1039
    iget-boolean v0, v1, Lcom/android/server/am/UserController;->mUserSwitchUiEnabled:Z

    if-eqz v0, :cond_197

    .line 1040
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService;->setSwitchingUser(Z)V

    .line 1042
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    .line 1043
    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/UserController;->getCurrentProfileIds()[I

    move-result-object v16

    .line 1042
    move v3, v15

    move v5, v10

    move-object v13, v6

    move-object v6, v0

    .line 1042
    .end local v6    # "uss":Lcom/android/server/am/UserState;
    .local v13, "uss":Lcom/android/server/am/UserState;
    move v0, v7

    move-object/from16 v7, v16

    invoke-static/range {v2 .. v7}, Lcom/android/server/am/ActivityManagerServiceInjector;->handleWindowManagerAndUserLru(Landroid/content/Context;IIILcom/android/server/wm/WindowManagerService;[I)V

    goto :goto_1d3

    .line 1045
    .end local v13    # "uss":Lcom/android/server/am/UserState;
    .restart local v6    # "uss":Lcom/android/server/am/UserState;
    :cond_197
    move-object v13, v6

    move v0, v7

    .line 1045
    .end local v6    # "uss":Lcom/android/server/am/UserState;
    .restart local v13    # "uss":Lcom/android/server/am/UserState;
    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/UserController;->getCurrentProfileIds()[I

    move-result-object v3

    invoke-virtual {v2, v15, v3}, Lcom/android/server/wm/WindowManagerService;->setCurrentUser(I[I)V
    :try_end_1a6
    .catchall {:try_start_161 .. :try_end_1a6} :catchall_4e

    goto :goto_1d3

    .line 1031
    .end local v13    # "uss":Lcom/android/server/am/UserState;
    .restart local v6    # "uss":Lcom/android/server/am/UserState;
    :catchall_1a7
    move-exception v0

    move-object v13, v6

    .line 1031
    .end local v6    # "uss":Lcom/android/server/am/UserState;
    .restart local v13    # "uss":Lcom/android/server/am/UserState;
    :goto_1a9
    :try_start_1a9
    monitor-exit v2
    :try_end_1aa
    .catchall {:try_start_1a9 .. :try_end_1aa} :catchall_1ab

    :try_start_1aa
    throw v0
    :try_end_1ab
    .catchall {:try_start_1aa .. :try_end_1ab} :catchall_4e

    :catchall_1ab
    move-exception v0

    goto :goto_1a9

    .line 1049
    .end local v13    # "uss":Lcom/android/server/am/UserState;
    .restart local v6    # "uss":Lcom/android/server/am/UserState;
    :cond_1ad
    move-object v13, v6

    move v0, v7

    .line 1049
    .end local v6    # "uss":Lcom/android/server/am/UserState;
    .restart local v13    # "uss":Lcom/android/server/am/UserState;
    :try_start_1af
    iget v2, v1, Lcom/android/server/am/UserController;->mCurrentUserId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1050
    .local v2, "currentUserIdInt":Ljava/lang/Integer;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateCurrentProfileIds()V

    .line 1051
    iget-object v3, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/UserController;->getCurrentProfileIds()[I

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/wm/WindowManagerService;->setCurrentProfileIds([I)V

    .line 1052
    iget-object v3, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1c8
    .catchall {:try_start_1af .. :try_end_1c8} :catchall_34e

    .line 1053
    :try_start_1c8
    iget-object v5, v1, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1054
    iget-object v5, v1, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1055
    monitor-exit v3
    :try_end_1d3
    .catchall {:try_start_1c8 .. :try_end_1d3} :catchall_327

    .line 1060
    .end local v2    # "currentUserIdInt":Ljava/lang/Integer;
    :goto_1d3
    :try_start_1d3
    iget v2, v13, Lcom/android/server/am/UserState;->state:I
    :try_end_1d5
    .catchall {:try_start_1d3 .. :try_end_1d5} :catchall_34e

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1f4

    .line 1064
    :try_start_1d8
    iget v0, v13, Lcom/android/server/am/UserState;->lastState:I

    invoke-virtual {v13, v0}, Lcom/android/server/am/UserState;->setState(I)V

    .line 1065
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v0

    iget v2, v13, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v0, v15, v2}, Landroid/os/UserManagerInternal;->setUserState(II)V

    .line 1066
    iget-object v2, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1eb
    .catchall {:try_start_1d8 .. :try_end_1eb} :catchall_4e

    .line 1067
    :try_start_1eb
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLU()V

    .line 1068
    monitor-exit v2

    .line 1069
    const/4 v8, 0x1

    goto :goto_213

    .line 1068
    :catchall_1f1
    move-exception v0

    monitor-exit v2
    :try_end_1f3
    .catchall {:try_start_1eb .. :try_end_1f3} :catchall_1f1

    :try_start_1f3
    throw v0
    :try_end_1f4
    .catchall {:try_start_1f3 .. :try_end_1f4} :catchall_4e

    .line 1070
    :cond_1f4
    :try_start_1f4
    iget v2, v13, Lcom/android/server/am/UserState;->state:I
    :try_end_1f6
    .catchall {:try_start_1f4 .. :try_end_1f6} :catchall_34e

    if-ne v2, v0, :cond_213

    .line 1073
    const/4 v0, 0x0

    :try_start_1f9
    invoke-virtual {v13, v0}, Lcom/android/server/am/UserState;->setState(I)V

    .line 1074
    iget-object v0, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v0

    iget v2, v13, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v0, v15, v2}, Landroid/os/UserManagerInternal;->setUserState(II)V

    .line 1075
    iget-object v2, v1, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_20a
    .catchall {:try_start_1f9 .. :try_end_20a} :catchall_4e

    .line 1076
    :try_start_20a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLU()V

    .line 1077
    monitor-exit v2

    .line 1078
    const/4 v8, 0x1

    goto :goto_213

    .line 1077
    :catchall_210
    move-exception v0

    monitor-exit v2
    :try_end_212
    .catchall {:try_start_20a .. :try_end_212} :catchall_210

    :try_start_212
    throw v0
    :try_end_213
    .catchall {:try_start_212 .. :try_end_213} :catchall_4e

    .line 1081
    .end local v8    # "needStart":Z
    .local v0, "needStart":Z
    :cond_213
    :goto_213
    move v0, v8

    :try_start_214
    iget v2, v13, Lcom/android/server/am/UserState;->state:I
    :try_end_216
    .catchall {:try_start_214 .. :try_end_216} :catchall_34e

    if-nez v2, :cond_22f

    .line 1084
    :try_start_218
    iget-object v2, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/android/server/pm/UserManagerService;->onBeforeStartUser(I)V

    .line 1089
    iget-object v2, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    iget-object v3, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x32

    .line 1090
    const/4 v6, 0x0

    invoke-virtual {v3, v5, v15, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 1089
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1093
    :cond_22f
    if-eqz v14, :cond_264

    .line 1094
    iget-object v2, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    iget-object v3, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x3c

    invoke-virtual {v3, v5, v15, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1096
    iget-object v2, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1097
    iget-object v2, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x1e

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1098
    iget-object v2, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    iget-object v6, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v3, v10, v15, v13}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1100
    iget-object v2, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    iget-object v3, v1, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5, v10, v15, v13}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v5, 0xbb8

    invoke-virtual {v2, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_264
    .catchall {:try_start_218 .. :try_end_264} :catchall_4e

    .line 1104
    :cond_264
    if-eqz v0, :cond_2bd

    .line 1106
    :try_start_266
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.USER_STARTED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1107
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x50000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1109
    const-string v3, "android.intent.extra.user_handle"

    invoke-virtual {v2, v3, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1110
    iget-object v5, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, -0x1

    const/16 v20, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    sget v25, Lcom/android/server/am/ActivityManagerService;->MY_PID:I
    :try_end_28c
    .catchall {:try_start_266 .. :try_end_28c} :catchall_2b5

    const/16 v26, 0x3e8

    move-object v6, v2

    move-object/from16 v27, v9

    move v9, v3

    .end local v9    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v27    # "userInfo":Landroid/content/pm/UserInfo;
    move v3, v10

    move-object/from16 v10, v16

    .line 1110
    .end local v10    # "oldUserId":I
    .local v3, "oldUserId":I
    move-wide/from16 v28, v11

    move-object/from16 v11, v17

    .line 1110
    .end local v11    # "ident":J
    .local v28, "ident":J
    move-object/from16 v12, v18

    move-object/from16 v30, v13

    move/from16 v13, v19

    .line 1110
    .end local v13    # "uss":Lcom/android/server/am/UserState;
    .local v30, "uss":Lcom/android/server/am/UserState;
    move/from16 v22, v14

    move-object/from16 v14, v20

    move/from16 v15, v23

    move/from16 v16, v24

    move/from16 v17, v25

    move/from16 v18, v26

    move/from16 v19, p1

    :try_start_2ad
    invoke-virtual/range {v5 .. v19}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I
    :try_end_2b0
    .catchall {:try_start_2ad .. :try_end_2b0} :catchall_2b1

    .end local v2    # "intent":Landroid/content/Intent;
    goto :goto_2c6

    .line 1138
    .end local v0    # "needStart":Z
    .end local v3    # "oldUserId":I
    .end local v21    # "updateUmState":Z
    .end local v27    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v30    # "uss":Lcom/android/server/am/UserState;
    :catchall_2b1
    move-exception v0

    move/from16 v6, p1

    goto :goto_2d1

    .line 1138
    .end local v28    # "ident":J
    .restart local v11    # "ident":J
    :catchall_2b5
    move-exception v0

    move/from16 v22, v14

    move/from16 v6, p1

    move-wide v9, v11

    .line 1138
    .end local v11    # "ident":J
    .restart local v28    # "ident":J
    goto/16 :goto_353

    .line 1115
    .end local v28    # "ident":J
    .restart local v0    # "needStart":Z
    .restart local v9    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v10    # "oldUserId":I
    .restart local v11    # "ident":J
    .restart local v13    # "uss":Lcom/android/server/am/UserState;
    .restart local v21    # "updateUmState":Z
    :cond_2bd
    move-object/from16 v27, v9

    move v3, v10

    move-wide/from16 v28, v11

    move-object/from16 v30, v13

    move/from16 v22, v14

    .line 1115
    .end local v9    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v10    # "oldUserId":I
    .end local v11    # "ident":J
    .end local v13    # "uss":Lcom/android/server/am/UserState;
    .restart local v3    # "oldUserId":I
    .restart local v27    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v28    # "ident":J
    .restart local v30    # "uss":Lcom/android/server/am/UserState;
    :goto_2c6
    if-eqz v22, :cond_2d5

    .line 1116
    move/from16 v6, p1

    move-object/from16 v5, v30

    :try_start_2cc
    invoke-direct {v1, v5, v3, v6}, Lcom/android/server/am/UserController;->moveUserToForeground(Lcom/android/server/am/UserState;II)V
    :try_end_2cf
    .catchall {:try_start_2cc .. :try_end_2cf} :catchall_2d0

    .line 1116
    .end local v30    # "uss":Lcom/android/server/am/UserState;
    .local v5, "uss":Lcom/android/server/am/UserState;
    goto :goto_2dc

    .line 1138
    .end local v0    # "needStart":Z
    .end local v3    # "oldUserId":I
    .end local v5    # "uss":Lcom/android/server/am/UserState;
    .end local v21    # "updateUmState":Z
    .end local v27    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_2d0
    move-exception v0

    .line 1138
    .end local v28    # "ident":J
    .local v9, "ident":J
    :goto_2d1
    move-wide/from16 v9, v28

    goto/16 :goto_353

    .line 1118
    .end local v9    # "ident":J
    .restart local v0    # "needStart":Z
    .restart local v3    # "oldUserId":I
    .restart local v21    # "updateUmState":Z
    .restart local v27    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v28    # "ident":J
    .restart local v30    # "uss":Lcom/android/server/am/UserState;
    :cond_2d5
    move/from16 v6, p1

    move-object/from16 v5, v30

    .line 1118
    .end local v30    # "uss":Lcom/android/server/am/UserState;
    .restart local v5    # "uss":Lcom/android/server/am/UserState;
    :try_start_2d9
    invoke-direct {v1, v5}, Lcom/android/server/am/UserController;->finishUserBoot(Lcom/android/server/am/UserState;)V
    :try_end_2dc
    .catchall {:try_start_2d9 .. :try_end_2dc} :catchall_323

    .line 1121
    :goto_2dc
    if-eqz v0, :cond_31b

    .line 1122
    :try_start_2de
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.USER_STARTING"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1123
    .restart local v2    # "intent":Landroid/content/Intent;
    const/high16 v7, 0x40000000    # 2.0f

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1124
    const-string v7, "android.intent.extra.user_handle"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1125
    iget-object v7, v1, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/16 v32, 0x0

    new-instance v8, Lcom/android/server/am/UserController$6;

    invoke-direct {v8, v1}, Lcom/android/server/am/UserController$6;-><init>(Lcom/android/server/am/UserController;)V

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const-string v9, "android.permission.INTERACT_ACROSS_USERS"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v37

    const/16 v38, -0x1

    const/16 v39, 0x0

    const/16 v40, 0x1

    const/16 v41, 0x0

    sget v42, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v43, 0x3e8

    const/16 v44, -0x1

    move-object/from16 v30, v7

    move-object/from16 v31, v2

    move-object/from16 v33, v8

    invoke-virtual/range {v30 .. v44}, Lcom/android/server/am/UserController$Injector;->broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I
    :try_end_31b
    .catchall {:try_start_2de .. :try_end_31b} :catchall_2d0

    .line 1138
    .end local v0    # "needStart":Z
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "oldUserId":I
    .end local v5    # "uss":Lcom/android/server/am/UserState;
    .end local v21    # "updateUmState":Z
    .end local v27    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_31b
    move-wide/from16 v9, v28

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1139
    .end local v28    # "ident":J
    .restart local v9    # "ident":J
    nop

    .line 1141
    const/4 v0, 0x1

    return v0

    .line 1138
    .end local v9    # "ident":J
    .restart local v28    # "ident":J
    :catchall_323
    move-exception v0

    move-wide/from16 v9, v28

    .line 1138
    .end local v28    # "ident":J
    .restart local v9    # "ident":J
    goto :goto_353

    .line 1055
    .local v2, "currentUserIdInt":Ljava/lang/Integer;
    .restart local v8    # "needStart":Z
    .local v9, "userInfo":Landroid/content/pm/UserInfo;
    .restart local v10    # "oldUserId":I
    .restart local v11    # "ident":J
    .restart local v13    # "uss":Lcom/android/server/am/UserState;
    .restart local v21    # "updateUmState":Z
    :catchall_327
    move-exception v0

    move-object/from16 v27, v9

    move v7, v10

    move-wide v9, v11

    move-object v5, v13

    move/from16 v22, v14

    move v6, v15

    .line 1055
    .end local v10    # "oldUserId":I
    .end local v11    # "ident":J
    .end local v13    # "uss":Lcom/android/server/am/UserState;
    .restart local v5    # "uss":Lcom/android/server/am/UserState;
    .restart local v7    # "oldUserId":I
    .local v9, "ident":J
    .restart local v27    # "userInfo":Landroid/content/pm/UserInfo;
    :goto_330
    :try_start_330
    monitor-exit v3
    :try_end_331
    .catchall {:try_start_330 .. :try_end_331} :catchall_332

    :try_start_331
    throw v0
    :try_end_332
    .catchall {:try_start_331 .. :try_end_332} :catchall_34a

    :catchall_332
    move-exception v0

    goto :goto_330

    .line 1018
    .end local v2    # "currentUserIdInt":Ljava/lang/Integer;
    .end local v5    # "uss":Lcom/android/server/am/UserState;
    .end local v7    # "oldUserId":I
    .end local v27    # "userInfo":Landroid/content/pm/UserInfo;
    .local v9, "userInfo":Landroid/content/pm/UserInfo;
    .restart local v10    # "oldUserId":I
    .restart local v11    # "ident":J
    :catchall_334
    move-exception v0

    move-object/from16 v27, v9

    move v7, v10

    move-wide v9, v11

    move/from16 v22, v14

    move v6, v15

    move v2, v8

    move/from16 v3, v21

    goto :goto_348

    .line 1018
    .end local v8    # "needStart":Z
    .end local v21    # "updateUmState":Z
    .local v2, "needStart":Z
    .local v3, "updateUmState":Z
    :catchall_340
    move-exception v0

    move-object/from16 v27, v9

    move v7, v10

    move-wide v9, v11

    move/from16 v22, v14

    move v6, v15

    .line 1018
    .end local v10    # "oldUserId":I
    .end local v11    # "ident":J
    .restart local v7    # "oldUserId":I
    .local v9, "ident":J
    .restart local v27    # "userInfo":Landroid/content/pm/UserInfo;
    :goto_348
    :try_start_348
    monitor-exit v5
    :try_end_349
    .catchall {:try_start_348 .. :try_end_349} :catchall_34c

    :try_start_349
    throw v0
    :try_end_34a
    .catchall {:try_start_349 .. :try_end_34a} :catchall_34a

    .line 1138
    .end local v2    # "needStart":Z
    .end local v3    # "updateUmState":Z
    .end local v7    # "oldUserId":I
    .end local v27    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_34a
    move-exception v0

    goto :goto_353

    .line 1018
    .restart local v2    # "needStart":Z
    .restart local v3    # "updateUmState":Z
    .restart local v7    # "oldUserId":I
    .restart local v27    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_34c
    move-exception v0

    goto :goto_348

    .line 1138
    .end local v2    # "needStart":Z
    .end local v3    # "updateUmState":Z
    .end local v7    # "oldUserId":I
    .end local v9    # "ident":J
    .end local v27    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v11    # "ident":J
    :catchall_34e
    move-exception v0

    move-wide v9, v11

    move/from16 v22, v14

    move v6, v15

    .line 1138
    .end local v11    # "ident":J
    .restart local v9    # "ident":J
    :goto_353
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 958
    .end local v9    # "ident":J
    :cond_357
    move/from16 v22, v14

    move v6, v15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: switchUser() from pid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 959
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 960
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " requires "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 962
    .local v0, "msg":Ljava/lang/String;
    const-string v2, "ActivityManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method startUserInForeground(I)V
    .registers 5
    .param p1, "targetUserId"    # I

    .line 1152
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/UserController;->startUser(IZ)Z

    move-result v0

    .line 1153
    .local v0, "success":Z
    if-nez v0, :cond_11

    .line 1154
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->setSwitchingUser(Z)V

    .line 1156
    :cond_11
    return-void
.end method

.method stopRunningUsersLU(I)V
    .registers 8
    .param p1, "maxRunningUsers"    # I

    .line 297
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getRunningUsersLU()Ljava/util/List;

    move-result-object v0

    .line 298
    .local v0, "currentlyRunning":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 299
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, p1, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 300
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 301
    .local v2, "userId":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    if-ne v3, v4, :cond_29

    .line 303
    goto :goto_8

    .line 305
    :cond_29
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/am/UserController;->stopUsersLU(IZLandroid/app/IStopUserCallback;)I

    move-result v3

    if-nez v3, :cond_38

    .line 306
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 308
    .end local v2    # "userId":Ljava/lang/Integer;
    :cond_38
    goto :goto_8

    .line 309
    :cond_39
    return-void
.end method

.method stopUser(IZLandroid/app/IStopUserCallback;)I
    .registers 7
    .param p1, "userId"    # I
    .param p2, "force"    # Z
    .param p3, "callback"    # Landroid/app/IStopUserCallback;

    .line 608
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController$Injector;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_37

    .line 617
    if-ltz p1, :cond_20

    if-eqz p1, :cond_20

    .line 620
    const-string/jumbo v0, "no_debugging_features"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/UserController;->enforceShellRestriction(Ljava/lang/String;I)V

    .line 621
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 622
    :try_start_17
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/UserController;->stopUsersLU(IZLandroid/app/IStopUserCallback;)I

    move-result v1

    monitor-exit v0

    return v1

    .line 623
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_1d

    throw v1

    .line 618
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t stop system user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 610
    :cond_37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: switchUser() from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " requires "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 614
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method switchUser(I)Z
    .registers 9
    .param p1, "targetUserId"    # I

    .line 1252
    const-string/jumbo v0, "no_debugging_features"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/UserController;->enforceShellRestriction(Ljava/lang/String;I)V

    .line 1253
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v0

    .line 1254
    .local v0, "currentUserId":I
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1255
    .local v1, "targetUserInfo":Landroid/content/pm/UserInfo;
    const/4 v2, 0x1

    if-ne p1, v0, :cond_2e

    .line 1256
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "user #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is already the current user"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    return v2

    .line 1259
    :cond_2e
    const/4 v3, 0x0

    if-nez v1, :cond_48

    .line 1260
    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No user info for user #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    return v3

    .line 1263
    :cond_48
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    move-result v4

    if-nez v4, :cond_6a

    .line 1264
    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot switch to User #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": not supported"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    return v3

    .line 1267
    :cond_6a
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_8c

    .line 1268
    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot switch to User #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": not a full user"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    return v3

    .line 1271
    :cond_8c
    iget-object v4, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1272
    :try_start_8f
    iput p1, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    .line 1273
    monitor-exit v4
    :try_end_92
    .catchall {:try_start_8f .. :try_end_92} :catchall_d3

    .line 1274
    iget-boolean v4, p0, Lcom/android/server/am/UserController;->mUserSwitchUiEnabled:Z

    if-eqz v4, :cond_c0

    .line 1275
    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 1276
    .local v3, "currentUserInfo":Landroid/content/pm/UserInfo;
    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1277
    .local v4, "userNames":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;>;"
    iget-object v5, p0, Lcom/android/server/am/UserController;->mUiHandler:Landroid/os/Handler;

    const/16 v6, 0x3e8

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1281
    iget-object v5, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v5}, Lcom/android/server/am/UserController$Injector;->getService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/UserController;->mUiHandler:Landroid/os/Handler;

    invoke-static {v5, p1, v6}, Lcom/android/server/am/ActivityManagerServiceInjector;->showSwitchingDialog(Lcom/android/server/am/ActivityManagerService;ILandroid/os/Handler;)Z

    move-result v5

    if-nez v5, :cond_bf

    .line 1282
    iget-object v5, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v5}, Lcom/android/server/am/UserController$Injector;->getService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v5, p1, v2}, Lcom/android/server/am/UserController;->startUser(IZ)Z

    .line 1285
    .end local v3    # "currentUserInfo":Landroid/content/pm/UserInfo;
    .end local v4    # "userNames":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;>;"
    :cond_bf
    goto :goto_d2

    .line 1286
    :cond_c0
    iget-object v4, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x78

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1287
    iget-object v4, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v5, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1290
    :goto_d2
    return v2

    .line 1273
    :catchall_d3
    move-exception v2

    :try_start_d4
    monitor-exit v4
    :try_end_d5
    .catchall {:try_start_d4 .. :try_end_d5} :catchall_d3

    throw v2
.end method

.method unlockUser(I[B[BLandroid/os/IProgressListener;)Z
    .registers 8
    .param p1, "userId"    # I
    .param p2, "token"    # [B
    .param p3, "secret"    # [B
    .param p4, "listener"    # Landroid/os/IProgressListener;

    .line 1159
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController$Injector;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1b

    .line 1169
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1171
    .local v0, "binderToken":J
    :try_start_e
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/UserController;->unlockUserCleared(I[B[BLandroid/os/IProgressListener;)Z

    move-result v2
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_16

    .line 1173
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1171
    return v2

    .line 1173
    :catchall_16
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1161
    .end local v0    # "binderToken":J
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: unlockUser() from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1162
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1163
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " requires "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1165
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    .registers 3
    .param p1, "observer"    # Landroid/app/IUserSwitchObserver;

    .line 1624
    iget-object v0, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1625
    return-void
.end method

.method unsafeConvertIncomingUser(I)I
    .registers 3
    .param p1, "userId"    # I

    .line 1593
    const/4 v0, -0x2

    if-eq p1, v0, :cond_9

    const/4 v0, -0x3

    if-ne p1, v0, :cond_7

    goto :goto_9

    :cond_7
    move v0, p1

    goto :goto_d

    .line 1594
    :cond_9
    :goto_9
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v0

    .line 1593
    :goto_d
    return v0
.end method

.method writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 15
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 1958
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1959
    :try_start_3
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 1960
    .local v1, "token":J
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_9
    iget-object v5, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    const-wide v6, 0x10500000001L

    if-ge v4, v5, :cond_3e

    .line 1961
    iget-object v5, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/UserState;

    .line 1962
    .local v5, "uss":Lcom/android/server/am/UserState;
    const-wide v8, 0x20b00000001L

    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 1963
    .local v8, "uToken":J
    iget-object v10, v5, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v10}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    invoke-virtual {p1, v6, v7, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1964
    const-wide v6, 0x10b00000002L

    invoke-virtual {v5, p1, v6, v7}, Lcom/android/server/am/UserState;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1965
    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1960
    .end local v5    # "uss":Lcom/android/server/am/UserState;
    .end local v8    # "uToken":J
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 1967
    .end local v4    # "i":I
    :cond_3e
    move v4, v3

    .restart local v4    # "i":I
    :goto_3f
    iget-object v5, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    array-length v5, v5

    if-ge v4, v5, :cond_53

    .line 1968
    const-wide v8, 0x20500000002L

    iget-object v5, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    aget v5, v5, v4

    invoke-virtual {p1, v8, v9, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1967
    add-int/lit8 v4, v4, 0x1

    goto :goto_3f

    .line 1970
    .end local v4    # "i":I
    :cond_53
    move v4, v3

    .restart local v4    # "i":I
    :goto_54
    iget-object v5, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_73

    .line 1971
    const-wide v8, 0x20500000003L

    iget-object v5, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p1, v8, v9, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1970
    add-int/lit8 v4, v4, 0x1

    goto :goto_54

    .line 1973
    .end local v4    # "i":I
    :cond_73
    iget-object v4, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-lez v4, :cond_aa

    .line 1974
    nop

    .local v3, "i":I
    :goto_7c
    iget-object v4, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_aa

    .line 1975
    const-wide v4, 0x20b00000004L

    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 1976
    .local v4, "uToken":J
    iget-object v8, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    .line 1977
    invoke-virtual {v8, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    .line 1976
    invoke-virtual {p1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1978
    const-wide v8, 0x10500000002L

    iget-object v10, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIds:Landroid/util/SparseIntArray;

    .line 1979
    invoke-virtual {v10, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v10

    .line 1978
    invoke-virtual {p1, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1980
    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1974
    .end local v4    # "uToken":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_7c

    .line 1983
    .end local v3    # "i":I
    :cond_aa
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1984
    .end local v1    # "token":J
    monitor-exit v0

    .line 1985
    return-void

    .line 1984
    :catchall_af
    move-exception v1

    monitor-exit v0
    :try_end_b1
    .catchall {:try_start_3 .. :try_end_b1} :catchall_af

    throw v1
.end method
