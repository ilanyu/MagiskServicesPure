.class Lcom/android/server/am/RecentsAnimation;
.super Ljava/lang/Object;
.source "RecentsAnimation.java"

# interfaces
.implements Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;
.implements Lcom/android/server/am/ActivityDisplay$OnStackOrderChangedListener;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActivityStartController:Lcom/android/server/am/ActivityStartController;

.field private mAssistDataRequester:Lcom/android/server/am/AssistDataRequester;

.field private final mCallingPid:I

.field private final mDefaultDisplay:Lcom/android/server/am/ActivityDisplay;

.field private mRestoreTargetBehindStack:Lcom/android/server/am/ActivityStack;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private final mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field private mTargetActivityType:I

.field private final mUserController:Lcom/android/server/am/UserController;

.field private final mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 54
    const-class v0, Lcom/android/server/am/RecentsAnimation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/RecentsAnimation;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStartController;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/am/UserController;I)V
    .registers 8
    .param p1, "am"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "stackSupervisor"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p3, "activityStartController"    # Lcom/android/server/am/ActivityStartController;
    .param p4, "wm"    # Lcom/android/server/wm/WindowManagerService;
    .param p5, "userController"    # Lcom/android/server/am/UserController;
    .param p6, "callingPid"    # I

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/android/server/am/RecentsAnimation;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 75
    iput-object p2, p0, Lcom/android/server/am/RecentsAnimation;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 76
    invoke-virtual {p2}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/am/ActivityDisplay;

    .line 77
    iput-object p3, p0, Lcom/android/server/am/RecentsAnimation;->mActivityStartController:Lcom/android/server/am/ActivityStartController;

    .line 78
    iput-object p4, p0, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 79
    iput-object p5, p0, Lcom/android/server/am/RecentsAnimation;->mUserController:Lcom/android/server/am/UserController;

    .line 80
    iput p6, p0, Lcom/android/server/am/RecentsAnimation;->mCallingPid:I

    .line 81
    return-void
.end method

.method private finishAnimation(I)V
    .registers 6
    .param p1, "reorderMode"    # I
        .annotation build Lcom/android/server/wm/RecentsAnimationController$ReorderMode;
        .end annotation
    .end param

    .line 213
    iget-object v0, p0, Lcom/android/server/am/RecentsAnimation;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 219
    iget-object v1, p0, Lcom/android/server/am/RecentsAnimation;->mAssistDataRequester:Lcom/android/server/am/AssistDataRequester;

    if-eqz v1, :cond_12

    .line 220
    iget-object v1, p0, Lcom/android/server/am/RecentsAnimation;->mAssistDataRequester:Lcom/android/server/am/AssistDataRequester;

    invoke-virtual {v1}, Lcom/android/server/am/AssistDataRequester;->cancel()V

    .line 221
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/RecentsAnimation;->mAssistDataRequester:Lcom/android/server/am/AssistDataRequester;

    .line 225
    :cond_12
    iget-object v1, p0, Lcom/android/server/am/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/am/ActivityDisplay;

    invoke-virtual {v1, p0}, Lcom/android/server/am/ActivityDisplay;->unregisterStackOrderChangedListener(Lcom/android/server/am/ActivityDisplay$OnStackOrderChangedListener;)V

    .line 227
    iget-object v1, p0, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v1

    if-nez v1, :cond_24

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_42

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 231
    :cond_24
    if-eqz p1, :cond_2b

    .line 232
    :try_start_26
    iget-object v1, p0, Lcom/android/server/am/RecentsAnimation;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->sendPowerHintForLaunchEndIfNeeded()V

    .line 235
    :cond_2b
    iget-object v1, p0, Lcom/android/server/am/RecentsAnimation;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v2, p0, Lcom/android/server/am/RecentsAnimation;->mCallingPid:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->setRunningRemoteAnimation(IZ)V

    .line 237
    iget-object v1, p0, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    new-instance v2, Lcom/android/server/am/-$$Lambda$RecentsAnimation$Zj0-OCbCxGCeVS-UKZSU82iNyXc;

    invoke-direct {v2, p0, p1}, Lcom/android/server/am/-$$Lambda$RecentsAnimation$Zj0-OCbCxGCeVS-UKZSU82iNyXc;-><init>(Lcom/android/server/am/RecentsAnimation;I)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->inSurfaceTransaction(Ljava/lang/Runnable;)V

    .line 311
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_26 .. :try_end_3e} :catchall_42

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 312
    return-void

    .line 311
    :catchall_42
    move-exception v1

    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private getTargetActivity(Lcom/android/server/am/ActivityStack;Landroid/content/ComponentName;)Lcom/android/server/am/ActivityRecord;
    .registers 6
    .param p1, "targetStack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "component"    # Landroid/content/ComponentName;

    .line 362
    if-nez p1, :cond_4

    .line 363
    const/4 v0, 0x0

    return-object v0

    .line 366
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_a
    if-ltz v0, :cond_28

    .line 367
    invoke-virtual {p1, v0}, Lcom/android/server/am/ActivityStack;->getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 368
    .local v1, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 369
    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    return-object v2

    .line 366
    .end local v1    # "task":Lcom/android/server/am/TaskRecord;
    :cond_25
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 372
    .end local v0    # "i":I
    :cond_28
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method private getTopNonAlwaysOnTopStack()Lcom/android/server/am/ActivityStack;
    .registers 4

    .line 347
    iget-object v0, p0, Lcom/android/server/am/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/am/ActivityDisplay;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1f

    .line 348
    iget-object v1, p0, Lcom/android/server/am/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/am/ActivityDisplay;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 349
    .local v1, "s":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->isAlwaysOnTop()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 350
    nop

    .line 347
    .end local v1    # "s":Lcom/android/server/am/ActivityStack;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 352
    .restart local v1    # "s":Lcom/android/server/am/ActivityStack;
    :cond_1e
    return-object v1

    .line 354
    .end local v0    # "i":I
    .end local v1    # "s":Lcom/android/server/am/ActivityStack;
    :cond_1f
    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic lambda$finishAnimation$0(Lcom/android/server/am/RecentsAnimation;I)V
    .registers 11
    .param p1, "reorderMode"    # I

    .line 238
    const-string v0, "RecentsAnimation#onAnimationFinished_inSurfaceTransaction"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 242
    :try_start_c
    iget-object v0, p0, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->cleanupRecentsAnimation(I)V

    .line 244
    iget-object v0, p0, Lcom/android/server/am/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/am/ActivityDisplay;

    iget v3, p0, Lcom/android/server/am/RecentsAnimation;->mTargetActivityType:I

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Lcom/android/server/am/ActivityDisplay;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 246
    .local v0, "targetStack":Lcom/android/server/am/ActivityStack;
    const/4 v3, 0x0

    if-eqz v0, :cond_22

    .line 247
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_21} :catch_7b
    .catchall {:try_start_c .. :try_end_21} :catchall_79

    goto :goto_23

    .line 248
    :cond_22
    move-object v5, v3

    .line 252
    .local v5, "targetActivity":Lcom/android/server/am/ActivityRecord;
    :goto_23
    if-nez v5, :cond_2e

    .line 307
    iget-object v3, p0, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 308
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 253
    return-void

    .line 257
    :cond_2e
    :try_start_2e
    iput-boolean v4, v5, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    .line 259
    const/4 v6, 0x1

    if-ne p1, v6, :cond_40

    .line 261
    iget-object v7, p0, Lcom/android/server/am/RecentsAnimation;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v7, v7, Lcom/android/server/am/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    const-string v7, "RecentsAnimation.onAnimationFinished()"

    invoke-virtual {v0, v7}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    goto :goto_4d

    .line 270
    :cond_40
    const/4 v7, 0x2

    if-ne p1, v7, :cond_70

    .line 272
    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v7

    .line 273
    .local v7, "display":Lcom/android/server/am/ActivityDisplay;
    iget-object v8, p0, Lcom/android/server/am/RecentsAnimation;->mRestoreTargetBehindStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v7, v0, v8}, Lcom/android/server/am/ActivityDisplay;->moveStackBehindStack(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityStack;)V

    .line 284
    .end local v7    # "display":Lcom/android/server/am/ActivityDisplay;
    nop

    .line 290
    :goto_4d
    iget-object v7, p0, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7, v4, v4}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 291
    iget-object v7, p0, Lcom/android/server/am/RecentsAnimation;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v7, v3, v4, v4}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 292
    iget-object v3, p0, Lcom/android/server/am/RecentsAnimation;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 296
    iget-object v3, p0, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 302
    iget-object v3, p0, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, v6}, Lcom/android/server/wm/WindowManagerService;->checkSplitScreenMinimizedChanged(Z)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_66} :catch_7b
    .catchall {:try_start_2e .. :try_end_66} :catchall_79

    .line 307
    .end local v0    # "targetStack":Lcom/android/server/am/ActivityStack;
    .end local v5    # "targetActivity":Lcom/android/server/am/ActivityRecord;
    iget-object v0, p0, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 308
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 309
    nop

    .line 310
    return-void

    .line 307
    .restart local v0    # "targetStack":Lcom/android/server/am/ActivityStack;
    .restart local v5    # "targetActivity":Lcom/android/server/am/ActivityRecord;
    :cond_70
    iget-object v3, p0, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 308
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 287
    return-void

    .line 307
    .end local v0    # "targetStack":Lcom/android/server/am/ActivityStack;
    .end local v5    # "targetActivity":Lcom/android/server/am/ActivityRecord;
    :catchall_79
    move-exception v0

    goto :goto_84

    .line 303
    :catch_7b
    move-exception v0

    .line 304
    .local v0, "e":Ljava/lang/Exception;
    :try_start_7c
    sget-object v3, Lcom/android/server/am/RecentsAnimation;->TAG:Ljava/lang/String;

    const-string v4, "Failed to clean up recents activity"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 305
    throw v0
    :try_end_84
    .catchall {:try_start_7c .. :try_end_84} :catchall_79

    .line 307
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_84
    iget-object v3, p0, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 308
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public static synthetic lambda$onAnimationFinished$1(Lcom/android/server/am/RecentsAnimation;I)V
    .registers 2
    .param p1, "reorderMode"    # I

    .line 320
    invoke-direct {p0, p1}, Lcom/android/server/am/RecentsAnimation;->finishAnimation(I)V

    return-void
.end method

.method private notifyAnimationCancelBeforeStart(Landroid/view/IRecentsAnimationRunner;)V
    .registers 5
    .param p1, "recentsAnimationRunner"    # Landroid/view/IRecentsAnimationRunner;

    .line 337
    :try_start_0
    invoke-interface {p1}, Landroid/view/IRecentsAnimationRunner;->onAnimationCanceled()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 340
    goto :goto_c

    .line 338
    :catch_4
    move-exception v0

    .line 339
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/am/RecentsAnimation;->TAG:Ljava/lang/String;

    const-string v2, "Failed to cancel recents animation before start"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 341
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method


# virtual methods
.method public onAnimationFinished(IZ)V
    .registers 5
    .param p1, "reorderMode"    # I
        .annotation build Lcom/android/server/wm/RecentsAnimationController$ReorderMode;
        .end annotation
    .end param
    .param p2, "runSychronously"    # Z

    .line 317
    if-eqz p2, :cond_6

    .line 318
    invoke-direct {p0, p1}, Lcom/android/server/am/RecentsAnimation;->finishAnimation(I)V

    goto :goto_12

    .line 320
    :cond_6
    iget-object v0, p0, Lcom/android/server/am/RecentsAnimation;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v1, Lcom/android/server/am/-$$Lambda$RecentsAnimation$1UHkVDWv9CBej8qt8TWQICpmP60;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/-$$Lambda$RecentsAnimation$1UHkVDWv9CBej8qt8TWQICpmP60;-><init>(Lcom/android/server/am/RecentsAnimation;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 322
    :goto_12
    return-void
.end method

.method public onStackOrderChanged()V
    .registers 4

    .line 328
    iget-object v0, p0, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v1, "stackOrderChanged"

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/WindowManagerService;->cancelRecentsAnimationSynchronously(ILjava/lang/String;)V

    .line 330
    return-void
.end method

.method startRecentsActivity(Landroid/content/Intent;Landroid/view/IRecentsAnimationRunner;Landroid/content/ComponentName;ILandroid/app/IAssistDataReceiver;)V
    .registers 34
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "recentsAnimationRunner"    # Landroid/view/IRecentsAnimationRunner;
    .param p3, "recentsComponent"    # Landroid/content/ComponentName;
    .param p4, "recentsUid"    # I
    .param p5, "assistDataReceiver"    # Landroid/app/IAssistDataReceiver;

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    .line 88
    move-object/from16 v13, p5

    const-string v0, "RecentsAnimation#startRecentsActivity"

    const-wide/16 v14, 0x40

    invoke-static {v14, v15, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 90
    iget-object v0, v10, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->canStartRecentsAnimation()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 91
    invoke-direct {v10, v12}, Lcom/android/server/am/RecentsAnimation;->notifyAnimationCancelBeforeStart(Landroid/view/IRecentsAnimationRunner;)V

    .line 94
    return-void

    .line 98
    :cond_1b
    nop

    .line 99
    nop

    .line 98
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 99
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    move-object/from16 v8, p3

    invoke-virtual {v8, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 100
    const/4 v0, 0x3

    goto :goto_34

    .line 101
    :cond_31
    move-object/from16 v8, p3

    :cond_33
    const/4 v0, 0x2

    :goto_34
    iput v0, v10, Lcom/android/server/am/RecentsAnimation;->mTargetActivityType:I

    .line 102
    iget-object v0, v10, Lcom/android/server/am/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/am/ActivityDisplay;

    iget v1, v10, Lcom/android/server/am/RecentsAnimation;->mTargetActivityType:I

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v1}, Lcom/android/server/am/ActivityDisplay;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 104
    .local v4, "targetStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {v10, v4, v0}, Lcom/android/server/am/RecentsAnimation;->getTargetActivity(Lcom/android/server/am/ActivityStack;Landroid/content/ComponentName;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 105
    .local v3, "targetActivity":Lcom/android/server/am/ActivityRecord;
    const/4 v0, 0x1

    if-eqz v3, :cond_4c

    move v1, v0

    goto :goto_4d

    :cond_4c
    move v1, v7

    :goto_4d
    move/from16 v16, v1

    .line 106
    .local v16, "hasExistingActivity":Z
    if-eqz v16, :cond_63

    .line 107
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v1

    .line 108
    .local v1, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v1, v4}, Lcom/android/server/am/ActivityDisplay;->getStackAbove(Lcom/android/server/am/ActivityStack;)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    iput-object v2, v10, Lcom/android/server/am/RecentsAnimation;->mRestoreTargetBehindStack:Lcom/android/server/am/ActivityStack;

    .line 109
    iget-object v2, v10, Lcom/android/server/am/RecentsAnimation;->mRestoreTargetBehindStack:Lcom/android/server/am/ActivityStack;

    if-nez v2, :cond_63

    .line 110
    invoke-direct {v10, v12}, Lcom/android/server/am/RecentsAnimation;->notifyAnimationCancelBeforeStart(Landroid/view/IRecentsAnimationRunner;)V

    .line 112
    return-void

    .line 118
    .end local v1    # "display":Lcom/android/server/am/ActivityDisplay;
    :cond_63
    if-eqz v3, :cond_69

    iget-boolean v1, v3, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v1, :cond_6e

    .line 119
    :cond_69
    iget-object v1, v10, Lcom/android/server/am/RecentsAnimation;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, v0, v3}, Lcom/android/server/am/ActivityStackSupervisor;->sendPowerHintForLaunchStartIfNeeded(ZLcom/android/server/am/ActivityRecord;)V

    .line 123
    :cond_6e
    iget-object v1, v10, Lcom/android/server/am/RecentsAnimation;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/am/ActivityMetricsLogger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityMetricsLogger;->notifyActivityLaunching()V

    .line 125
    iget-object v1, v10, Lcom/android/server/am/RecentsAnimation;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v2, v10, Lcom/android/server/am/RecentsAnimation;->mCallingPid:I

    invoke-virtual {v1, v2, v0}, Lcom/android/server/am/ActivityManagerService;->setRunningRemoteAnimation(IZ)V

    .line 127
    iget-object v1, v10, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 130
    if-eqz v13, :cond_e9

    .line 131
    :try_start_85
    iget-object v1, v10, Lcom/android/server/am/RecentsAnimation;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v2, "appops"

    .line 132
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/app/AppOpsManager;

    .line 133
    .local v5, "appOpsManager":Landroid/app/AppOpsManager;
    new-instance v6, Lcom/android/server/am/AssistDataReceiverProxy;

    .line 134
    invoke-virtual/range {p3 .. p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v13, v1}, Lcom/android/server/am/AssistDataReceiverProxy;-><init>(Landroid/app/IAssistDataReceiver;Ljava/lang/String;)V

    .line 135
    .local v6, "proxy":Lcom/android/server/am/AssistDataReceiverProxy;
    new-instance v2, Lcom/android/server/am/AssistDataRequester;

    iget-object v1, v10, Lcom/android/server/am/RecentsAnimation;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v7, v10, Lcom/android/server/am/RecentsAnimation;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v10, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_a5} :catch_e2
    .catchall {:try_start_85 .. :try_end_a5} :catchall_db

    const/16 v17, 0x31

    const/16 v18, -0x1

    move-object/from16 v19, v1

    move-object v1, v2

    move-object v14, v2

    move-object/from16 v2, v19

    move-object v15, v3

    move-object v3, v7

    .end local v3    # "targetActivity":Lcom/android/server/am/ActivityRecord;
    .local v15, "targetActivity":Lcom/android/server/am/ActivityRecord;
    move-object v7, v4

    move-object v4, v9

    .line 135
    .end local v4    # "targetStack":Lcom/android/server/am/ActivityStack;
    .local v7, "targetStack":Lcom/android/server/am/ActivityStack;
    move-object v9, v7

    move-object v7, v10

    .line 135
    .end local v7    # "targetStack":Lcom/android/server/am/ActivityStack;
    .local v9, "targetStack":Lcom/android/server/am/ActivityStack;
    move/from16 v8, v17

    move-object v13, v9

    move/from16 v9, v18

    .line 135
    .end local v9    # "targetStack":Lcom/android/server/am/ActivityStack;
    .local v13, "targetStack":Lcom/android/server/am/ActivityStack;
    :try_start_ba
    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/AssistDataRequester;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/view/IWindowManager;Landroid/app/AppOpsManager;Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;Ljava/lang/Object;II)V

    iput-object v14, v10, Lcom/android/server/am/RecentsAnimation;->mAssistDataRequester:Lcom/android/server/am/AssistDataRequester;

    .line 137
    iget-object v1, v10, Lcom/android/server/am/RecentsAnimation;->mAssistDataRequester:Lcom/android/server/am/AssistDataRequester;

    iget-object v2, v10, Lcom/android/server/am/RecentsAnimation;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getTopVisibleActivities()Ljava/util/List;

    move-result-object v21

    const/16 v22, 0x1

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, 0x0

    .line 140
    invoke-virtual/range {p3 .. p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v27

    .line 137
    move-object/from16 v20, v1

    move/from16 v26, p4

    invoke-virtual/range {v20 .. v27}, Lcom/android/server/am/AssistDataRequester;->requestAssistData(Ljava/util/List;ZZZZILjava/lang/String;)V

    .line 137
    .end local v5    # "appOpsManager":Landroid/app/AppOpsManager;
    .end local v6    # "proxy":Lcom/android/server/am/AssistDataReceiverProxy;
    goto :goto_eb

    .line 207
    .end local v13    # "targetStack":Lcom/android/server/am/ActivityStack;
    .end local v15    # "targetActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v3    # "targetActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v4    # "targetStack":Lcom/android/server/am/ActivityStack;
    :catchall_db
    move-exception v0

    move-object v15, v3

    move-object v13, v4

    move/from16 v7, p4

    .line 207
    .end local v3    # "targetActivity":Lcom/android/server/am/ActivityRecord;
    .end local v4    # "targetStack":Lcom/android/server/am/ActivityStack;
    .restart local v13    # "targetStack":Lcom/android/server/am/ActivityStack;
    .restart local v15    # "targetActivity":Lcom/android/server/am/ActivityRecord;
    goto/16 :goto_1be

    .line 203
    .end local v13    # "targetStack":Lcom/android/server/am/ActivityStack;
    .end local v15    # "targetActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v3    # "targetActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v4    # "targetStack":Lcom/android/server/am/ActivityStack;
    :catch_e2
    move-exception v0

    move-object v15, v3

    move-object v13, v4

    move/from16 v7, p4

    .line 203
    .end local v3    # "targetActivity":Lcom/android/server/am/ActivityRecord;
    .end local v4    # "targetStack":Lcom/android/server/am/ActivityStack;
    .restart local v13    # "targetStack":Lcom/android/server/am/ActivityStack;
    .restart local v15    # "targetActivity":Lcom/android/server/am/ActivityRecord;
    goto/16 :goto_1b4

    .line 143
    .end local v13    # "targetStack":Lcom/android/server/am/ActivityStack;
    .end local v15    # "targetActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v3    # "targetActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v4    # "targetStack":Lcom/android/server/am/ActivityStack;
    :cond_e9
    move-object v15, v3

    move-object v13, v4

    .line 143
    .end local v3    # "targetActivity":Lcom/android/server/am/ActivityRecord;
    .end local v4    # "targetStack":Lcom/android/server/am/ActivityStack;
    .restart local v13    # "targetStack":Lcom/android/server/am/ActivityStack;
    .restart local v15    # "targetActivity":Lcom/android/server/am/ActivityRecord;
    :goto_eb
    if-eqz v16, :cond_115

    .line 145
    iget-object v1, v10, Lcom/android/server/am/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/am/ActivityDisplay;

    invoke-virtual {v1, v13}, Lcom/android/server/am/ActivityDisplay;->moveStackBehindBottomMostVisibleStack(Lcom/android/server/am/ActivityStack;)V

    .line 152
    invoke-virtual {v13}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    invoke-virtual {v15}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    if-eq v1, v2, :cond_106

    .line 153
    invoke-virtual {v15}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    const-string/jumbo v2, "startRecentsActivity"

    invoke-virtual {v13, v1, v0, v2}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;ZLjava/lang/String;)V

    .line 183
    :cond_106
    move/from16 v7, p4

    const/4 v8, 0x0

    goto :goto_16f

    .line 207
    :catchall_10a
    move-exception v0

    move/from16 v7, p4

    goto/16 :goto_1be

    .line 203
    :catch_10f
    move-exception v0

    move/from16 v7, p4

    .line 203
    .end local v15    # "targetActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v3    # "targetActivity":Lcom/android/server/am/ActivityRecord;
    :goto_112
    move-object v3, v15

    goto/16 :goto_1b4

    .line 158
    .end local v3    # "targetActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v15    # "targetActivity":Lcom/android/server/am/ActivityRecord;
    :cond_115
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    .line 159
    .local v1, "options":Landroid/app/ActivityOptions;
    iget v2, v10, Lcom/android/server/am/RecentsAnimation;->mTargetActivityType:I

    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setLaunchActivityType(I)V

    .line 160
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->setAvoidMoveToFront()V

    .line 161
    const/high16 v2, 0x10010000

    invoke-virtual {v11, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 163
    iget-object v2, v10, Lcom/android/server/am/RecentsAnimation;->mActivityStartController:Lcom/android/server/am/ActivityStartController;

    const-string/jumbo v3, "startRecentsActivity_noTargetActivity"

    .line 164
    invoke-virtual {v2, v11, v3}, Lcom/android/server/am/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v2
    :try_end_12f
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_12f} :catch_10f
    .catchall {:try_start_ba .. :try_end_12f} :catchall_10a

    .line 165
    move/from16 v7, p4

    :try_start_131
    invoke-virtual {v2, v7}, Lcom/android/server/am/ActivityStarter;->setCallingUid(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    .line 166
    invoke-virtual/range {p3 .. p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    .line 167
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/am/SafeActivityOptions;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStarter;->setActivityOptions(Lcom/android/server/am/SafeActivityOptions;)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    iget-object v3, v10, Lcom/android/server/am/RecentsAnimation;->mUserController:Lcom/android/server/am/UserController;

    .line 168
    invoke-virtual {v3}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStarter;->setMayWait(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    .line 169
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStarter;->execute()I

    .line 170
    iget-object v2, v10, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v8, 0x0

    invoke-virtual {v2, v8, v8}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 171
    iget-object v2, v10, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 173
    iget-object v2, v10, Lcom/android/server/am/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/am/ActivityDisplay;

    iget v3, v10, Lcom/android/server/am/RecentsAnimation;->mTargetActivityType:I

    invoke-virtual {v2, v8, v3}, Lcom/android/server/am/ActivityDisplay;->getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 174
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    move-object v1, v2

    .line 183
    .end local v15    # "targetActivity":Lcom/android/server/am/ActivityRecord;
    .local v1, "targetActivity":Lcom/android/server/am/ActivityRecord;
    move-object v15, v1

    .line 183
    .end local v1    # "targetActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v15    # "targetActivity":Lcom/android/server/am/ActivityRecord;
    :goto_16f
    iput-boolean v0, v15, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    .line 188
    iget-object v1, v10, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v2, "startRecentsActivity"

    const/4 v9, 0x2

    invoke-virtual {v1, v9, v2}, Lcom/android/server/wm/WindowManagerService;->cancelRecentsAnimationSynchronously(ILjava/lang/String;)V

    .line 190
    iget-object v1, v10, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v2, v10, Lcom/android/server/am/RecentsAnimation;->mTargetActivityType:I

    iget-object v3, v10, Lcom/android/server/am/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/am/ActivityDisplay;

    iget v5, v3, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    iget-object v3, v10, Lcom/android/server/am/RecentsAnimation;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    .line 192
    invoke-virtual {v3}, Lcom/android/server/am/RecentTasks;->getRecentTaskIds()Landroid/util/SparseBooleanArray;

    move-result-object v6

    .line 190
    move-object v3, v12

    move-object v4, v10

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowManagerService;->initializeRecentsAnimation(ILandroid/view/IRecentsAnimationRunner;Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;ILandroid/util/SparseBooleanArray;)V

    .line 196
    iget-object v1, v10, Lcom/android/server/am/RecentsAnimation;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v8, v0}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 198
    iget-object v0, v10, Lcom/android/server/am/RecentsAnimation;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/am/ActivityMetricsLogger;

    move-result-object v0

    invoke-virtual {v0, v9, v15}, Lcom/android/server/am/ActivityMetricsLogger;->notifyActivityLaunched(ILcom/android/server/am/ActivityRecord;)V

    .line 202
    iget-object v0, v10, Lcom/android/server/am/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/am/ActivityDisplay;

    invoke-virtual {v0, v10}, Lcom/android/server/am/ActivityDisplay;->registerStackOrderChangedListener(Lcom/android/server/am/ActivityDisplay$OnStackOrderChangedListener;)V
    :try_end_1a3
    .catch Ljava/lang/Exception; {:try_start_131 .. :try_end_1a3} :catch_1b1
    .catchall {:try_start_131 .. :try_end_1a3} :catchall_1af

    .line 207
    iget-object v0, v10, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 208
    const-wide/16 v1, 0x40

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 209
    nop

    .line 210
    return-void

    .line 207
    :catchall_1af
    move-exception v0

    goto :goto_1be

    .line 203
    :catch_1b1
    move-exception v0

    goto/16 :goto_112

    .line 204
    .end local v15    # "targetActivity":Lcom/android/server/am/ActivityRecord;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v3    # "targetActivity":Lcom/android/server/am/ActivityRecord;
    :goto_1b4
    :try_start_1b4
    sget-object v1, Lcom/android/server/am/RecentsAnimation;->TAG:Ljava/lang/String;

    const-string v2, "Failed to start recents activity"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 205
    throw v0
    :try_end_1bc
    .catchall {:try_start_1b4 .. :try_end_1bc} :catchall_1bc

    .line 207
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1bc
    move-exception v0

    move-object v15, v3

    .line 207
    .end local v3    # "targetActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v15    # "targetActivity":Lcom/android/server/am/ActivityRecord;
    :goto_1be
    iget-object v1, v10, Lcom/android/server/am/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 208
    const-wide/16 v1, 0x40

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method
