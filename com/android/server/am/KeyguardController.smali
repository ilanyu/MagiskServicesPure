.class Lcom/android/server/am/KeyguardController;
.super Ljava/lang/Object;
.source "KeyguardController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field private mAodShowing:Z

.field private mBeforeUnoccludeTransit:I

.field private mDismissalRequested:Z

.field private mDismissingKeyguardActivity:Lcom/android/server/am/ActivityRecord;

.field private mKeyguardGoingAway:Z

.field private mKeyguardShowing:Z

.field private mOccluded:Z

.field private mSecondaryDisplayShowing:I

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private mSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

.field private final mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field private mVisibilityTransactionDepth:I

.field private mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;)V
    .registers 4
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "stackSupervisor"    # Lcom/android/server/am/ActivityStackSupervisor;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/KeyguardController;->mSecondaryDisplayShowing:I

    .line 77
    iput-object p1, p0, Lcom/android/server/am/KeyguardController;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 78
    iput-object p2, p0, Lcom/android/server/am/KeyguardController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 79
    return-void
.end method

.method private convertTransitFlags(I)I
    .registers 4
    .param p1, "keyguardGoingAwayFlags"    # I

    .line 210
    const/4 v0, 0x0

    .line 211
    .local v0, "result":I
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_7

    .line 212
    or-int/lit8 v0, v0, 0x1

    .line 214
    :cond_7
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_d

    .line 215
    or-int/lit8 v0, v0, 0x2

    .line 217
    :cond_d
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_13

    .line 218
    or-int/lit8 v0, v0, 0x4

    .line 220
    :cond_13
    return v0
.end method

.method private dismissDockedStackIfNeeded()V
    .registers 4

    .line 374
    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mKeyguardShowing:Z

    if-eqz v0, :cond_23

    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mOccluded:Z

    if-eqz v0, :cond_23

    .line 379
    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 380
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v0, :cond_15

    .line 381
    return-void

    .line 383
    :cond_15
    iget-object v1, p0, Lcom/android/server/am/KeyguardController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, p0, Lcom/android/server/am/KeyguardController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-ne v2, v0, :cond_1f

    const/4 v2, 0x1

    goto :goto_20

    :cond_1f
    const/4 v2, 0x0

    :goto_20
    invoke-virtual {v1, v0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(Lcom/android/server/am/ActivityStack;Z)V

    .line 386
    .end local v0    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_23
    return-void
.end method

.method private failCallback(Lcom/android/internal/policy/IKeyguardDismissCallback;)V
    .registers 5
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardDismissCallback;

    .line 203
    :try_start_0
    invoke-interface {p1}, Lcom/android/internal/policy/IKeyguardDismissCallback;->onDismissError()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 206
    goto :goto_c

    .line 204
    :catch_4
    move-exception v0

    .line 205
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ActivityManager"

    const-string v2, "Failed to call callback"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 207
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method private handleDismissKeyguard()V
    .registers 6

    .line 331
    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mOccluded:Z

    if-nez v0, :cond_3f

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mDismissingKeyguardActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 332
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 333
    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 334
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mDismissalRequested:Z

    .line 338
    iget-boolean v2, p0, Lcom/android/server/am/KeyguardController;->mKeyguardShowing:Z

    if-eqz v2, :cond_3f

    invoke-virtual {p0}, Lcom/android/server/am/KeyguardController;->canDismissKeyguard()Z

    move-result v2

    if-eqz v2, :cond_3f

    iget-object v2, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 339
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getPendingAppTransition()I

    move-result v2

    const/16 v3, 0x17

    if-ne v2, v3, :cond_3f

    .line 340
    iget-object v2, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v3, p0, Lcom/android/server/am/KeyguardController;->mBeforeUnoccludeTransit:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v4, v0}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZIZ)V

    .line 342
    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, v1, v4, v4}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 343
    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 346
    :cond_3f
    return-void
.end method

.method private handleOccludedChanged()V
    .registers 5

    .line 308
    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, p0, Lcom/android/server/am/KeyguardController;->mOccluded:Z

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->onKeyguardOccludedChanged(Z)V

    .line 309
    invoke-virtual {p0}, Lcom/android/server/am/KeyguardController;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 310
    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 312
    :try_start_12
    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Lcom/android/server/am/KeyguardController;->resolveOccludeTransit()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZIZ)V

    .line 314
    invoke-direct {p0}, Lcom/android/server/am/KeyguardController;->updateKeyguardSleepToken()V

    .line 315
    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3, v3}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 316
    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V
    :try_end_2b
    .catchall {:try_start_12 .. :try_end_2b} :catchall_31

    .line 318
    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 319
    goto :goto_38

    .line 318
    :catchall_31
    move-exception v0

    iget-object v1, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0

    .line 321
    :cond_38
    :goto_38
    invoke-direct {p0}, Lcom/android/server/am/KeyguardController;->dismissDockedStackIfNeeded()V

    .line 322
    return-void
.end method

.method private resolveOccludeTransit()I
    .registers 4

    .line 356
    iget v0, p0, Lcom/android/server/am/KeyguardController;->mBeforeUnoccludeTransit:I

    const/16 v1, 0x17

    const/4 v2, -0x1

    if-eq v0, v2, :cond_16

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 357
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getPendingAppTransition()I

    move-result v0

    if-ne v0, v1, :cond_16

    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mOccluded:Z

    if-eqz v0, :cond_16

    .line 362
    iget v0, p0, Lcom/android/server/am/KeyguardController;->mBeforeUnoccludeTransit:I

    return v0

    .line 363
    :cond_16
    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mOccluded:Z

    if-nez v0, :cond_23

    .line 366
    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getPendingAppTransition()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/KeyguardController;->mBeforeUnoccludeTransit:I

    .line 367
    return v1

    .line 369
    :cond_23
    const/16 v0, 0x16

    return v0
.end method

.method private setKeyguardGoingAway(Z)V
    .registers 3
    .param p1, "keyguardGoingAway"    # Z

    .line 197
    iput-boolean p1, p0, Lcom/android/server/am/KeyguardController;->mKeyguardGoingAway:Z

    .line 198
    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->setKeyguardGoingAway(Z)V

    .line 199
    return-void
.end method

.method private updateKeyguardSleepToken()V
    .registers 5

    .line 389
    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_30

    invoke-virtual {p0, v2}, Lcom/android/server/am/KeyguardController;->isKeyguardOrAodShowing(I)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 390
    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v3, "Keyguard"

    invoke-virtual {v0, v3, v2}, Lcom/android/server/am/ActivityManagerService;->acquireSleepToken(Ljava/lang/String;I)Landroid/app/ActivityManagerInternal$SleepToken;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/KeyguardController;->mSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    .line 392
    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    if-eqz v0, :cond_41

    invoke-virtual {p0, v2}, Lcom/android/server/am/KeyguardController;->isKeyguardOrAodShowing(I)Z

    move-result v0

    if-nez v0, :cond_41

    .line 393
    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal$SleepToken;->release()V

    .line 394
    iput-object v1, p0, Lcom/android/server/am/KeyguardController;->mSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    .line 395
    const-string v0, "ActivityManager"

    const-string/jumbo v1, "release sleep token when status change in acquire."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    .line 398
    :cond_30
    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    if-eqz v0, :cond_41

    invoke-virtual {p0, v2}, Lcom/android/server/am/KeyguardController;->isKeyguardOrAodShowing(I)Z

    move-result v0

    if-nez v0, :cond_41

    .line 399
    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal$SleepToken;->release()V

    .line 400
    iput-object v1, p0, Lcom/android/server/am/KeyguardController;->mSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    .line 402
    :cond_41
    :goto_41
    return-void
.end method

.method private visibilitiesUpdated()V
    .registers 11

    .line 262
    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mOccluded:Z

    .line 263
    .local v0, "lastOccluded":Z
    iget-object v1, p0, Lcom/android/server/am/KeyguardController;->mDismissingKeyguardActivity:Lcom/android/server/am/ActivityRecord;

    .line 264
    .local v1, "lastDismissingKeyguardActivity":Lcom/android/server/am/ActivityRecord;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/KeyguardController;->mOccluded:Z

    .line 265
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/am/KeyguardController;->mDismissingKeyguardActivity:Lcom/android/server/am/ActivityRecord;

    .line 267
    iget-object v3, p0, Lcom/android/server/am/KeyguardController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .local v3, "displayNdx":I
    :goto_12
    if-ltz v3, :cond_66

    .line 268
    iget-object v5, p0, Lcom/android/server/am/KeyguardController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getChildAt(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v5

    .line 269
    .local v5, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v5}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v6

    sub-int/2addr v6, v4

    .local v6, "stackNdx":I
    :goto_1f
    if-ltz v6, :cond_63

    .line 270
    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v7

    .line 274
    .local v7, "stack":Lcom/android/server/am/ActivityStack;
    iget v8, v5, Lcom/android/server/am/ActivityDisplay;->mDisplayId:I

    if-nez v8, :cond_50

    iget-object v8, p0, Lcom/android/server/am/KeyguardController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 275
    invoke-virtual {v8, v7}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v8

    if-eqz v8, :cond_50

    .line 279
    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->getTopDismissingKeyguardActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    .line 280
    .local v8, "topDismissing":Lcom/android/server/am/ActivityRecord;
    nop

    .line 281
    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->topActivityOccludesKeyguard()Z

    move-result v9

    if-nez v9, :cond_4d

    if-eqz v8, :cond_4b

    .line 283
    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v9

    if-ne v9, v8, :cond_4b

    .line 284
    invoke-virtual {p0, v4, v2}, Lcom/android/server/am/KeyguardController;->canShowWhileOccluded(ZZ)Z

    move-result v9

    if-eqz v9, :cond_4b

    goto :goto_4d

    :cond_4b
    move v9, v2

    goto :goto_4e

    :cond_4d
    :goto_4d
    move v9, v4

    :goto_4e
    iput-boolean v9, p0, Lcom/android/server/am/KeyguardController;->mOccluded:Z

    .line 289
    .end local v8    # "topDismissing":Lcom/android/server/am/ActivityRecord;
    :cond_50
    iget-object v8, p0, Lcom/android/server/am/KeyguardController;->mDismissingKeyguardActivity:Lcom/android/server/am/ActivityRecord;

    if-nez v8, :cond_60

    .line 290
    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->getTopDismissingKeyguardActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    if-eqz v8, :cond_60

    .line 291
    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->getTopDismissingKeyguardActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/am/KeyguardController;->mDismissingKeyguardActivity:Lcom/android/server/am/ActivityRecord;

    .line 269
    .end local v7    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_60
    add-int/lit8 v6, v6, -0x1

    goto :goto_1f

    .line 267
    .end local v5    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v6    # "stackNdx":I
    :cond_63
    add-int/lit8 v3, v3, -0x1

    goto :goto_12

    .line 295
    .end local v3    # "displayNdx":I
    :cond_66
    iget-boolean v2, p0, Lcom/android/server/am/KeyguardController;->mOccluded:Z

    iget-object v3, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->isShowingDream()Z

    move-result v3

    or-int/2addr v2, v3

    iput-boolean v2, p0, Lcom/android/server/am/KeyguardController;->mOccluded:Z

    .line 296
    iget-boolean v2, p0, Lcom/android/server/am/KeyguardController;->mOccluded:Z

    if-eq v2, v0, :cond_78

    .line 297
    invoke-direct {p0}, Lcom/android/server/am/KeyguardController;->handleOccludedChanged()V

    .line 299
    :cond_78
    iget-object v2, p0, Lcom/android/server/am/KeyguardController;->mDismissingKeyguardActivity:Lcom/android/server/am/ActivityRecord;

    if-eq v2, v1, :cond_7f

    .line 300
    invoke-direct {p0}, Lcom/android/server/am/KeyguardController;->handleDismissKeyguard()V

    .line 302
    :cond_7f
    return-void
.end method


# virtual methods
.method beginActivityVisibilityUpdate()V
    .registers 2

    .line 227
    iget v0, p0, Lcom/android/server/am/KeyguardController;->mVisibilityTransactionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/KeyguardController;->mVisibilityTransactionDepth:I

    .line 228
    return-void
.end method

.method canDismissKeyguard()Z
    .registers 2

    .line 352
    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isKeyguardTrusted()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isKeyguardSecure()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method canShowActivityWhileKeyguardShowing(Lcom/android/server/am/ActivityRecord;Z)Z
    .registers 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "dismissKeyguard"    # Z

    .line 250
    if-eqz p2, :cond_16

    invoke-virtual {p0}, Lcom/android/server/am/KeyguardController;->canDismissKeyguard()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mAodShowing:Z

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mDismissalRequested:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mDismissingKeyguardActivity:Lcom/android/server/am/ActivityRecord;

    if-eq p1, v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method canShowWhileOccluded(ZZ)Z
    .registers 4
    .param p1, "dismissKeyguard"    # Z
    .param p2, "showWhenLocked"    # Z

    .line 258
    if-nez p2, :cond_f

    if-eqz p1, :cond_d

    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isKeyguardSecure()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method dismissKeyguard(Landroid/os/IBinder;Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "callback"    # Lcom/android/internal/policy/IKeyguardDismissCallback;
    .param p3, "message"    # Ljava/lang/CharSequence;

    .line 180
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 181
    .local v0, "activityRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_3a

    iget-boolean v1, v0, Lcom/android/server/am/ActivityRecord;->visibleIgnoringKeyguard:Z

    if-nez v1, :cond_b

    goto :goto_3a

    .line 185
    :cond_b
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity requesting to dismiss Keyguard: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTurnScreenOnFlag()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->isTopRunningActivity()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 190
    iget-object v1, p0, Lcom/android/server/am/KeyguardController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const-string v2, "dismissKeyguard"

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->wakeUp(Ljava/lang/String;)V

    .line 193
    :cond_34
    iget-object v1, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p2, p3}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 194
    return-void

    .line 182
    :cond_3a
    :goto_3a
    invoke-direct {p0, p2}, Lcom/android/server/am/KeyguardController;->failCallback(Lcom/android/internal/policy/IKeyguardDismissCallback;)V

    .line 183
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "KeyguardController:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mKeyguardShowing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/KeyguardController;->mKeyguardShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mAodShowing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/KeyguardController;->mAodShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mKeyguardGoingAway="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/KeyguardController;->mKeyguardGoingAway:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mOccluded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/KeyguardController;->mOccluded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mDismissingKeyguardActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/KeyguardController;->mDismissingKeyguardActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mDismissalRequested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/KeyguardController;->mDismissalRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mVisibilityTransactionDepth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/KeyguardController;->mVisibilityTransactionDepth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 413
    return-void
.end method

.method endActivityVisibilityUpdate()V
    .registers 2

    .line 235
    iget v0, p0, Lcom/android/server/am/KeyguardController;->mVisibilityTransactionDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/KeyguardController;->mVisibilityTransactionDepth:I

    .line 236
    iget v0, p0, Lcom/android/server/am/KeyguardController;->mVisibilityTransactionDepth:I

    if-nez v0, :cond_d

    .line 237
    invoke-direct {p0}, Lcom/android/server/am/KeyguardController;->visibilitiesUpdated()V

    .line 239
    :cond_d
    return-void
.end method

.method isKeyguardGoingAway()Z
    .registers 2

    .line 115
    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mKeyguardGoingAway:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mKeyguardShowing:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method isKeyguardLocked()Z
    .registers 2

    .line 107
    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mKeyguardShowing:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mKeyguardGoingAway:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method isKeyguardOrAodShowing(I)Z
    .registers 3
    .param p1, "displayId"    # I

    .line 90
    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mKeyguardShowing:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mAodShowing:Z

    if-eqz v0, :cond_19

    :cond_8
    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mKeyguardGoingAway:Z

    if-nez v0, :cond_19

    if-nez p1, :cond_13

    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mOccluded:Z

    if-nez v0, :cond_19

    goto :goto_17

    :cond_13
    iget v0, p0, Lcom/android/server/am/KeyguardController;->mSecondaryDisplayShowing:I

    if-ne p1, v0, :cond_19

    :goto_17
    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    return v0
.end method

.method isKeyguardShowing(I)Z
    .registers 3
    .param p1, "displayId"    # I

    .line 99
    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mKeyguardShowing:Z

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mKeyguardGoingAway:Z

    if-nez v0, :cond_15

    if-nez p1, :cond_f

    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mOccluded:Z

    if-nez v0, :cond_15

    goto :goto_13

    :cond_f
    iget v0, p0, Lcom/android/server/am/KeyguardController;->mSecondaryDisplayShowing:I

    if-ne p1, v0, :cond_15

    :goto_13
    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return v0
.end method

.method keyguardGoingAway(I)V
    .registers 9
    .param p1, "flags"    # I

    .line 153
    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mKeyguardShowing:Z

    if-nez v0, :cond_5

    .line 154
    return-void

    .line 156
    :cond_5
    const-string/jumbo v0, "keyguardGoingAway"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 159
    const/4 v0, 0x1

    :try_start_13
    invoke-direct {p0, v0}, Lcom/android/server/am/KeyguardController;->setKeyguardGoingAway(Z)V

    .line 160
    iget-object v3, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v4, 0x14

    .line 161
    invoke-direct {p0, p1}, Lcom/android/server/am/KeyguardController;->convertTransitFlags(I)I

    move-result v5

    .line 160
    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5, v6}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZIZ)V

    .line 163
    invoke-direct {p0}, Lcom/android/server/am/KeyguardController;->updateKeyguardSleepToken()V

    .line 166
    iget-object v3, p0, Lcom/android/server/am/KeyguardController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 167
    iget-object v3, p0, Lcom/android/server/am/KeyguardController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v6, v6}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 168
    iget-object v3, p0, Lcom/android/server/am/KeyguardController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityStackSupervisor;->addStartingWindowsForVisibleActivities(Z)V

    .line 169
    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V
    :try_end_3a
    .catchall {:try_start_13 .. :try_end_3a} :catchall_4d

    .line 171
    const-string/jumbo v0, "keyguardGoingAway: surfaceLayout"

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 173
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 175
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 176
    nop

    .line 177
    return-void

    .line 171
    :catchall_4d
    move-exception v0

    const-string/jumbo v3, "keyguardGoingAway: surfaceLayout"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 172
    iget-object v3, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 173
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 175
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method setKeyguardShown(ZZI)V
    .registers 8
    .param p1, "keyguardShowing"    # Z
    .param p2, "aodShowing"    # Z
    .param p3, "secondaryDisplayShowing"    # I

    .line 123
    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mKeyguardShowing:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_d

    iget-boolean v0, p0, Lcom/android/server/am/KeyguardController;->mAodShowing:Z

    if-eq p2, v0, :cond_b

    goto :goto_d

    :cond_b
    move v0, v2

    goto :goto_e

    :cond_d
    :goto_d
    move v0, v1

    .line 125
    .local v0, "showingChanged":Z
    :goto_e
    iget-boolean v3, p0, Lcom/android/server/am/KeyguardController;->mKeyguardGoingAway:Z

    if-eqz v3, :cond_15

    if-eqz p1, :cond_15

    goto :goto_16

    :cond_15
    move v1, v2

    :goto_16
    or-int/2addr v0, v1

    .line 126
    if-nez v0, :cond_1e

    iget v1, p0, Lcom/android/server/am/KeyguardController;->mSecondaryDisplayShowing:I

    if-ne p3, v1, :cond_1e

    .line 127
    return-void

    .line 129
    :cond_1e
    iput-boolean p1, p0, Lcom/android/server/am/KeyguardController;->mKeyguardShowing:Z

    .line 130
    iput-boolean p2, p0, Lcom/android/server/am/KeyguardController;->mAodShowing:Z

    .line 131
    iput p3, p0, Lcom/android/server/am/KeyguardController;->mSecondaryDisplayShowing:I

    .line 132
    iget-object v1, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/WindowManagerService;->setAodShowing(Z)V

    .line 133
    if-eqz v0, :cond_3e

    .line 134
    invoke-direct {p0}, Lcom/android/server/am/KeyguardController;->dismissDockedStackIfNeeded()V

    .line 135
    invoke-direct {p0, v2}, Lcom/android/server/am/KeyguardController;->setKeyguardGoingAway(Z)V

    .line 136
    iget-object v1, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 137
    invoke-virtual {p0, v2}, Lcom/android/server/am/KeyguardController;->isKeyguardOrAodShowing(I)Z

    move-result v3

    .line 136
    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowManagerService;->setKeyguardOrAodShowingOnDefaultDisplay(Z)V

    .line 138
    if-eqz p1, :cond_3e

    .line 139
    iput-boolean v2, p0, Lcom/android/server/am/KeyguardController;->mDismissalRequested:Z

    .line 142
    :cond_3e
    iget-object v1, p0, Lcom/android/server/am/KeyguardController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v2}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 143
    invoke-direct {p0}, Lcom/android/server/am/KeyguardController;->updateKeyguardSleepToken()V

    .line 144
    return-void
.end method

.method setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2
    .param p1, "windowManager"    # Lcom/android/server/wm/WindowManagerService;

    .line 82
    iput-object p1, p0, Lcom/android/server/am/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 83
    return-void
.end method

.method writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 416
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 417
    .local v0, "token":J
    iget-boolean v2, p0, Lcom/android/server/am/KeyguardController;->mKeyguardShowing:Z

    const-wide v3, 0x10800000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 418
    iget-boolean v2, p0, Lcom/android/server/am/KeyguardController;->mOccluded:Z

    const-wide v3, 0x10800000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 419
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 420
    return-void
.end method
