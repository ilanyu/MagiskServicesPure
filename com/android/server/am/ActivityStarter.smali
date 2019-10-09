.class Lcom/android/server/am/ActivityStarter;
.super Ljava/lang/Object;
.source "ActivityStarter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityStarter$Request;,
        Lcom/android/server/am/ActivityStarter$DefaultFactory;,
        Lcom/android/server/am/ActivityStarter$Factory;
    }
.end annotation


# static fields
.field private static final INVALID_LAUNCH_MODE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_CONFIGURATION:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_FOCUS:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_RESULTS:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_USER_LEAVING:Ljava/lang/String; = "ActivityManager"


# instance fields
.field private mAddingToTask:Z

.field private mAvoidMoveToFront:Z

.field private mCallingUid:I

.field private final mController:Lcom/android/server/am/ActivityStartController;

.field private mDoResume:Z

.field private mInTask:Lcom/android/server/am/TaskRecord;

.field private mIntent:Landroid/content/Intent;

.field private mIntentDelivered:Z

.field private final mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

.field private mKeepCurTransition:Z

.field private final mLastStartActivityRecord:[Lcom/android/server/am/ActivityRecord;

.field private mLastStartActivityResult:I

.field private mLastStartActivityTimeMs:J

.field private mLastStartReason:Ljava/lang/String;

.field private mLaunchFlags:I

.field private mLaunchMode:I

.field private mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

.field private mLaunchTaskBehind:Z

.field private mMovedToFront:Z

.field private mNewTaskInfo:Landroid/content/pm/ActivityInfo;

.field private mNewTaskIntent:Landroid/content/Intent;

.field private mNoAnimation:Z

.field private mNotTop:Lcom/android/server/am/ActivityRecord;

.field private mOptions:Landroid/app/ActivityOptions;

.field public mPerf:Landroid/util/BoostFramework;

.field private mPreferredDisplayId:I

.field private mRequest:Lcom/android/server/am/ActivityStarter$Request;

.field private mReuseTask:Lcom/android/server/am/TaskRecord;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private mSourceRecord:Lcom/android/server/am/ActivityRecord;

.field private mSourceStack:Lcom/android/server/am/ActivityStack;

.field private mStartActivity:Lcom/android/server/am/ActivityRecord;

.field private mStartFlags:I

.field private final mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field private mTargetStack:Lcom/android/server/am/ActivityStack;

.field private mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field private mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityStartController;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStartInterceptor;)V
    .registers 7
    .param p1, "controller"    # Lcom/android/server/am/ActivityStartController;
    .param p2, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p3, "supervisor"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p4, "interceptor"    # Lcom/android/server/am/ActivityStartInterceptor;

    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    new-instance v0, Lcom/android/server/am/LaunchParamsController$LaunchParams;

    invoke-direct {v0}, Lcom/android/server/am/LaunchParamsController$LaunchParams;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mPerf:Landroid/util/BoostFramework;

    .line 190
    const/4 v0, 0x1

    new-array v1, v0, [Lcom/android/server/am/ActivityRecord;

    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mLastStartActivityRecord:[Lcom/android/server/am/ActivityRecord;

    .line 203
    new-instance v1, Lcom/android/server/am/ActivityStarter$Request;

    invoke-direct {v1}, Lcom/android/server/am/ActivityStarter$Request;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    .line 422
    iput-object p1, p0, Lcom/android/server/am/ActivityStarter;->mController:Lcom/android/server/am/ActivityStartController;

    .line 423
    iput-object p2, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 424
    iput-object p3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 425
    iput-object p4, p0, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    .line 426
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStarter;->reset(Z)V

    .line 427
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mPerf:Landroid/util/BoostFramework;

    .line 428
    return-void
.end method

.method private addOrReparentStartingActivity(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V
    .registers 5
    .param p1, "parent"    # Lcom/android/server/am/TaskRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .line 2461
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-ne v0, p1, :cond_11

    goto :goto_1d

    .line 2464
    :cond_11
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/am/ActivityRecord;->reparent(Lcom/android/server/am/TaskRecord;ILjava/lang/String;)V

    goto :goto_22

    .line 2462
    :cond_1d
    :goto_1d
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {p1, v0}, Lcom/android/server/am/TaskRecord;->addActivityToTop(Lcom/android/server/am/ActivityRecord;)V

    .line 2466
    :goto_22
    return-void
.end method

.method private adjustLaunchFlagsToDocumentMode(Lcom/android/server/am/ActivityRecord;ZZI)I
    .registers 7
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "launchSingleInstance"    # Z
    .param p3, "launchSingleTask"    # Z
    .param p4, "launchFlags"    # I

    .line 2470
    const/high16 v0, 0x80000

    and-int v1, p4, v0

    if-eqz v1, :cond_16

    if-nez p2, :cond_a

    if-eqz p3, :cond_16

    .line 2473
    :cond_a
    const-string v0, "ActivityManager"

    const-string v1, "Ignoring FLAG_ACTIVITY_NEW_DOCUMENT, launchMode is \"singleInstance\" or \"singleTask\""

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2475
    const v0, -0x8080001

    and-int/2addr p4, v0

    goto :goto_28

    .line 2478
    :cond_16
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    packed-switch v1, :pswitch_data_2a

    goto :goto_28

    .line 2488
    :pswitch_1e
    const v0, -0x8000001

    and-int/2addr p4, v0

    goto :goto_28

    .line 2485
    :pswitch_23
    or-int/2addr p4, v0

    .line 2486
    goto :goto_28

    .line 2482
    :pswitch_25
    or-int/2addr p4, v0

    .line 2483
    goto :goto_28

    .line 2480
    :pswitch_27
    nop

    .line 2492
    :goto_28
    return p4

    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_27
        :pswitch_25
        :pswitch_23
        :pswitch_1e
    .end packed-switch
.end method

.method private canLaunchIntoFocusedStack(Lcom/android/server/am/ActivityRecord;Z)Z
    .registers 9
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "newTask"    # Z

    .line 2556
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 2558
    .local v0, "focusedStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->isActivityTypeAssistant()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_11

    .line 2559
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isActivityTypeAssistant()Z

    move-result v1

    .local v1, "canUseFocusedStack":Z
    goto :goto_38

    .line 2561
    .end local v1    # "canUseFocusedStack":Z
    :cond_11
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v1

    if-eq v1, v3, :cond_36

    packed-switch v1, :pswitch_data_46

    .line 2580
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v1

    if-nez v1, :cond_2a

    iget v1, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    .line 2581
    invoke-virtual {p1, v1}, Lcom/android/server/am/ActivityRecord;->canBeLaunchedOnDisplay(I)Z

    move-result v1

    if-eqz v1, :cond_2a

    move v1, v3

    goto :goto_38

    :cond_2a
    move v1, v2

    goto :goto_38

    .line 2575
    :pswitch_2c
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->supportsFreeform()Z

    move-result v1

    .line 2576
    .restart local v1    # "canUseFocusedStack":Z
    goto :goto_38

    .line 2571
    .end local v1    # "canUseFocusedStack":Z
    :pswitch_31
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->supportsSplitScreenWindowingMode()Z

    move-result v1

    .line 2572
    .restart local v1    # "canUseFocusedStack":Z
    goto :goto_38

    .line 2566
    .end local v1    # "canUseFocusedStack":Z
    :cond_36
    const/4 v1, 0x1

    .line 2567
    .restart local v1    # "canUseFocusedStack":Z
    nop

    .line 2581
    :goto_38
    nop

    .line 2584
    if-eqz v1, :cond_45

    if-nez p2, :cond_45

    iget v4, p0, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    iget v5, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    if-ne v4, v5, :cond_45

    move v2, v3

    nop

    :cond_45
    return v2

    :pswitch_data_46
    .packed-switch 0x3
        :pswitch_31
        :pswitch_31
        :pswitch_2c
    .end packed-switch
.end method

.method private computeLaunchingTaskFlags()V
    .registers 11

    .line 1825
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x3

    const/high16 v4, 0x10000000

    if-nez v0, :cond_e6

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_e6

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_e6

    .line 1826
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1827
    .local v0, "baseIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 1828
    .local v5, "root":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_c8

    .line 1836
    invoke-direct {p0, v3, v1}, Lcom/android/server/am/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v6

    if-eqz v6, :cond_91

    .line 1837
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v7, v7, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_69

    .line 1842
    if-nez v5, :cond_3e

    goto :goto_91

    .line 1843
    :cond_3e
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 1844
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caller with mInTask "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " has root "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " but target is singleInstance/Task"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1838
    :cond_69
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 1839
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to launch singleInstance/Task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " into different task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1851
    :cond_91
    :goto_91
    if-nez v5, :cond_b8

    .line 1852
    const v6, 0x18082000

    .line 1854
    .local v6, "flagsOfInterest":I
    iget v7, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const v8, -0x18082001

    and-int/2addr v7, v8

    .line 1855
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v8

    const v9, 0x18082000

    and-int/2addr v8, v9

    or-int/2addr v7, v8

    iput v7, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    .line 1856
    iget-object v7, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget v8, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1857
    iget-object v7, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    iget-object v8, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v7, v8}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 1858
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    .line 1863
    .end local v6    # "flagsOfInterest":I
    goto :goto_c3

    :cond_b8
    iget v6, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v6, v4

    if-eqz v6, :cond_c1

    .line 1864
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    goto :goto_c3

    .line 1867
    :cond_c1
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    .line 1870
    :goto_c3
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    iput-object v2, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    .line 1871
    .end local v0    # "baseIntent":Landroid/content/Intent;
    .end local v5    # "root":Lcom/android/server/am/ActivityRecord;
    goto :goto_105

    .line 1829
    .restart local v0    # "baseIntent":Landroid/content/Intent;
    .restart local v5    # "root":Lcom/android/server/am/ActivityRecord;
    :cond_c8
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 1830
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launching into task without base intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1872
    .end local v0    # "baseIntent":Landroid/content/Intent;
    .end local v5    # "root":Lcom/android/server/am/ActivityRecord;
    :cond_e6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    .line 1878
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->isResolverActivity()Z

    move-result v0

    if-nez v0, :cond_f7

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    if-eqz v0, :cond_105

    :cond_f7
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_105

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    .line 1879
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_105

    .line 1880
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    .line 1884
    :cond_105
    :goto_105
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    if-nez v0, :cond_14c

    .line 1885
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    if-nez v0, :cond_135

    .line 1888
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v0, v4

    if-nez v0, :cond_14c

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    if-nez v0, :cond_14c

    .line 1889
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startActivity called from non-Activity context; forcing Intent.FLAG_ACTIVITY_NEW_TASK for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1891
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v0, v4

    iput v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    goto :goto_14c

    .line 1893
    :cond_135
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    if-ne v0, v3, :cond_141

    .line 1897
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v0, v4

    iput v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    goto :goto_14c

    .line 1898
    :cond_141
    invoke-direct {p0, v3, v1}, Lcom/android/server/am/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v0

    if-eqz v0, :cond_14c

    .line 1901
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v0, v4

    iput v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    .line 1904
    :cond_14c
    :goto_14c
    return-void
.end method

.method static computeResolveFilterUid(III)I
    .registers 4
    .param p0, "customCallingUid"    # I
    .param p1, "actualCallingUid"    # I
    .param p2, "filterCallingUid"    # I

    .line 1303
    const/16 v0, -0x2710

    if-eq p2, v0, :cond_7

    .line 1304
    nop

    .line 1303
    move v0, p2

    goto :goto_c

    .line 1305
    :cond_7
    if-ltz p0, :cond_b

    .line 1303
    move v0, p0

    goto :goto_c

    :cond_b
    move v0, p1

    :goto_c
    return v0
.end method

.method private computeSourceStack()V
    .registers 6

    .line 1907
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1908
    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    .line 1909
    return-void

    .line 1911
    :cond_8
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_17

    .line 1912
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    .line 1913
    return-void

    .line 1920
    :cond_17
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v2, 0x10000000

    and-int/2addr v0, v2

    if-nez v0, :cond_5a

    .line 1921
    const-string v0, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startActivity called from finishing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "; forcing Intent.FLAG_ACTIVITY_NEW_TASK for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1923
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    .line 1924
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    .line 1930
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 1931
    .local v0, "sourceTask":Lcom/android/server/am/TaskRecord;
    if-eqz v0, :cond_57

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    goto :goto_58

    :cond_57
    move-object v2, v1

    :goto_58
    iput-object v2, p0, Lcom/android/server/am/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    .line 1933
    .end local v0    # "sourceTask":Lcom/android/server/am/TaskRecord;
    :cond_5a
    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    .line 1934
    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    .line 1936
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_66

    .line 1937
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iput-object v1, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 1940
    :cond_66
    return-void
.end method

.method private computeStackFocus(Lcom/android/server/am/ActivityRecord;ZILandroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;
    .registers 12
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "newTask"    # Z
    .param p3, "launchFlags"    # I
    .param p4, "aOptions"    # Landroid/app/ActivityOptions;

    .line 2497
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 2498
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    invoke-direct {p0, p1, p3, v0, p4}, Lcom/android/server/am/ActivityStarter;->getLaunchStack(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/TaskRecord;Landroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 2499
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v1, :cond_b

    .line 2500
    return-object v1

    .line 2503
    :cond_b
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    .line 2504
    .local v2, "currentStack":Lcom/android/server/am/ActivityStack;
    :goto_13
    if-eqz v2, :cond_1a

    .line 2505
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 2514
    return-object v2

    .line 2517
    :cond_1a
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityStarter;->canLaunchIntoFocusedStack(Lcom/android/server/am/ActivityRecord;Z)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 2520
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    return-object v3

    .line 2523
    :cond_25
    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    if-eqz v3, :cond_3b

    .line 2525
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v4, p0, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    invoke-virtual {v3, v4, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getValidLaunchStackOnDisplay(ILcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 2526
    if-nez v1, :cond_3b

    .line 2531
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v4, p0, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    invoke-virtual {v3, p1, v4}, Lcom/android/server/am/ActivityStackSupervisor;->getNextValidLaunchStackLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 2534
    :cond_3b
    if-nez v1, :cond_5f

    .line 2536
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v3

    .line 2537
    .local v3, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v3}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .local v4, "stackNdx":I
    :goto_49
    if-ltz v4, :cond_59

    .line 2538
    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 2539
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v6

    if-nez v6, :cond_56

    .line 2542
    return-object v1

    .line 2537
    :cond_56
    add-int/lit8 v4, v4, -0x1

    goto :goto_49

    .line 2546
    .end local v4    # "stackNdx":I
    :cond_59
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4, p1, p4, v0, v5}, Lcom/android/server/am/ActivityStackSupervisor;->getLaunchStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;Z)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 2550
    .end local v3    # "display":Lcom/android/server/am/ActivityDisplay;
    :cond_5f
    return-object v1
.end method

.method private createLaunchIntent(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)Landroid/content/Intent;
    .registers 27
    .param p1, "auxiliaryResponse"    # Landroid/content/pm/AuxiliaryResolveInfo;
    .param p2, "originalIntent"    # Landroid/content/Intent;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "verificationBundle"    # Landroid/os/Bundle;
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "userId"    # I

    move-object/from16 v7, p1

    .line 943
    if-eqz v7, :cond_1f

    iget-boolean v0, v7, Landroid/content/pm/AuxiliaryResolveInfo;->needsPhaseTwo:Z

    if-eqz v0, :cond_1f

    .line 945
    move-object/from16 v8, p0

    iget-object v0, v8, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    move-object v1, v7

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/content/pm/PackageManagerInternal;->requestInstantAppResolutionPhaseTwo(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)V

    goto :goto_21

    .line 949
    :cond_1f
    move-object/from16 v8, p0

    .line 951
    :goto_21
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/InstantAppResolver;->sanitizeIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v10

    .line 952
    const/4 v0, 0x0

    if-nez v7, :cond_2a

    .line 957
    move-object v11, v0

    goto :goto_2d

    .line 952
    :cond_2a
    iget-object v1, v7, Landroid/content/pm/AuxiliaryResolveInfo;->failureIntent:Landroid/content/Intent;

    .line 957
    move-object v11, v1

    :goto_2d
    if-nez v7, :cond_32

    .line 958
    move-object/from16 v16, v0

    goto :goto_36

    .line 957
    :cond_32
    iget-object v1, v7, Landroid/content/pm/AuxiliaryResolveInfo;->installFailureActivity:Landroid/content/ComponentName;

    .line 958
    move-object/from16 v16, v1

    :goto_36
    if-nez v7, :cond_3b

    move-object/from16 v17, v0

    goto :goto_3f

    :cond_3b
    iget-object v1, v7, Landroid/content/pm/AuxiliaryResolveInfo;->token:Ljava/lang/String;

    move-object/from16 v17, v1

    :goto_3f
    if-eqz v7, :cond_47

    iget-boolean v1, v7, Landroid/content/pm/AuxiliaryResolveInfo;->needsPhaseTwo:Z

    if-eqz v1, :cond_47

    const/4 v1, 0x1

    goto :goto_48

    :cond_47
    const/4 v1, 0x0

    .line 960
    :goto_48
    move/from16 v18, v1

    if-nez v7, :cond_4f

    .line 949
    :goto_4c
    move-object/from16 v19, v0

    goto :goto_52

    .line 960
    :cond_4f
    iget-object v0, v7, Landroid/content/pm/AuxiliaryResolveInfo;->filters:Ljava/util/List;

    goto :goto_4c

    .line 949
    :goto_52
    move-object/from16 v9, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move/from16 v15, p6

    invoke-static/range {v9 .. v19}, Lcom/android/server/pm/InstantAppResolver;->buildEphemeralInstallerIntent(Landroid/content/Intent;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILandroid/content/ComponentName;Ljava/lang/String;ZLjava/util/List;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private deliverNewIntent(Lcom/android/server/am/ActivityRecord;)V
    .registers 5
    .param p1, "activity"    # Lcom/android/server/am/ActivityRecord;

    .line 2266
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mIntentDelivered:Z

    if-eqz v0, :cond_5

    .line 2267
    return-void

    .line 2270
    :cond_5
    const/16 v0, 0x7533

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2271
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mCallingUid:I

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Ljava/lang/String;)V

    .line 2273
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mIntentDelivered:Z

    .line 2274
    return-void
.end method

.method static getExternalResult(I)I
    .registers 2
    .param p0, "result"    # I

    .line 568
    const/16 v0, 0x66

    if-eq p0, v0, :cond_6

    move v0, p0

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private getLaunchStack(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/TaskRecord;Landroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;
    .registers 13
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "launchFlags"    # I
    .param p3, "task"    # Lcom/android/server/am/TaskRecord;
    .param p4, "aOptions"    # Landroid/app/ActivityOptions;

    .line 2592
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_b

    .line 2593
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    return-object v0

    .line 2597
    :cond_b
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-static {v0, v1, p1, p4}, Lcom/android/server/am/ActivityStarterInjector;->modifyLaunchActivityOptionIfNeed(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Landroid/app/ActivityOptions;

    move-result-object p4

    .line 2599
    and-int/lit16 v0, p2, 0x1000

    if-eqz v0, :cond_78

    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    if-eqz v0, :cond_1c

    goto :goto_78

    .line 2611
    :cond_1c
    if-eqz p3, :cond_23

    invoke-virtual {p3}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    goto :goto_27

    :cond_23
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 2613
    .local v0, "parentStack":Lcom/android/server/am/ActivityStack;
    :goto_27
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-eq v0, v1, :cond_2e

    .line 2615
    return-object v0

    .line 2617
    :cond_2e
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-eqz v1, :cond_43

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    if-ne p3, v1, :cond_43

    .line 2620
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    return-object v1

    .line 2623
    :cond_43
    const/4 v1, 0x1

    if-eqz v0, :cond_5e

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->inSplitScreenPrimaryWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 2626
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2, p1, v3, p3}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivityType(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;)I

    move-result v2

    .line 2627
    .local v2, "activityType":I
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4, v2, v1}, Lcom/android/server/am/ActivityDisplay;->getOrCreateStack(IIZ)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    return-object v1

    .line 2633
    .end local v2    # "activityType":I
    :cond_5e
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 2634
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 2635
    .local v2, "dockedStack":Lcom/android/server/am/ActivityStack;
    if-eqz v2, :cond_77

    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)Z

    move-result v3

    if-nez v3, :cond_77

    .line 2637
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, p1, p4, p3, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getLaunchStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;Z)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    return-object v1

    .line 2639
    :cond_77
    return-object v2

    .line 2604
    .end local v0    # "parentStack":Lcom/android/server/am/ActivityStack;
    .end local v2    # "dockedStack":Lcom/android/server/am/ActivityStack;
    :cond_78
    :goto_78
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    if-eqz v0, :cond_80

    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    :goto_7e
    move v7, v0

    goto :goto_82

    :cond_80
    const/4 v0, -0x1

    goto :goto_7e

    .line 2605
    .local v7, "candidateDisplay":I
    :goto_82
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v6, 0x1

    move-object v3, p1

    move-object v4, p4

    move-object v5, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStackSupervisor;->getLaunchStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;ZI)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    return-object v0
.end method

.method private getPreferedDisplayId(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)I
    .registers 9
    .param p1, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "startingActivity"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "options"    # Landroid/app/ActivityOptions;

    .line 1992
    const/4 v0, 0x0

    if-eqz p2, :cond_8

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_8

    .line 1993
    return v0

    .line 1997
    :cond_8
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v1, v1, Lcom/android/server/am/ActivityManagerService;->mVr2dDisplayId:I

    .line 1998
    .local v1, "displayId":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_10

    .line 2002
    return v1

    .line 2007
    :cond_10
    if-eqz p3, :cond_17

    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v3

    goto :goto_18

    :cond_17
    move v3, v2

    .line 2008
    .local v3, "launchDisplayId":I
    :goto_18
    if-eq v3, v2, :cond_1b

    .line 2009
    return v3

    .line 2012
    :cond_1b
    if-eqz p1, :cond_22

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v4

    goto :goto_23

    :cond_22
    move v4, v2

    :goto_23
    move v1, v4

    .line 2014
    if-eq v1, v2, :cond_27

    .line 2015
    return v1

    .line 2017
    :cond_27
    return v0
.end method

.method private getReusableIntentActivity()Lcom/android/server/am/ActivityRecord;
    .registers 10

    .line 1952
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v5, 0x8000000

    and-int/2addr v0, v5

    if-eqz v0, :cond_18

    .line 1954
    :cond_12
    invoke-direct {p0, v2, v1}, Lcom/android/server/am/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    move v0, v4

    goto :goto_1b

    :cond_1a
    move v0, v3

    .line 1958
    .local v0, "putIntoExistingTask":Z
    :goto_1b
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    if-nez v5, :cond_27

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v5, :cond_27

    move v5, v4

    goto :goto_28

    :cond_27
    move v5, v3

    :goto_28
    and-int/2addr v0, v5

    .line 1959
    const/4 v5, 0x0

    .line 1960
    .local v5, "intentActivity":Lcom/android/server/am/ActivityRecord;
    iget-object v6, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v6, :cond_4d

    iget-object v6, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_4d

    .line 1961
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v1

    .line 1962
    .local v1, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v1, :cond_4a

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    goto :goto_4b

    :cond_4a
    const/4 v2, 0x0

    :goto_4b
    move-object v5, v2

    .line 1963
    .end local v1    # "task":Lcom/android/server/am/TaskRecord;
    goto :goto_89

    :cond_4d
    if-eqz v0, :cond_89

    .line 1964
    iget v6, p0, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    if-ne v2, v6, :cond_66

    .line 1967
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 1968
    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->isActivityTypeHome()Z

    move-result v4

    .line 1967
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    goto :goto_89

    .line 1969
    :cond_66
    iget v2, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_7f

    .line 1972
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v6, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v7, v7, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v8, p0, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    if-eq v1, v8, :cond_7a

    move v3, v4

    nop

    :cond_7a
    invoke-virtual {v2, v6, v7, v3}, Lcom/android/server/am/ActivityStackSupervisor;->findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    goto :goto_89

    .line 1976
    :cond_7f
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->findTaskLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 1979
    :cond_89
    :goto_89
    return-object v5
.end method

.method static isDocumentLaunchesIntoExisting(I)Z
    .registers 2
    .param p0, "flags"    # I

    .line 2650
    const/high16 v0, 0x80000

    and-int/2addr v0, p0

    if-eqz v0, :cond_c

    const/high16 v0, 0x8000000

    and-int/2addr v0, p0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private isLaunchModeOneOf(II)Z
    .registers 4
    .param p1, "mode1"    # I
    .param p2, "mode2"    # I

    .line 2646
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    if-eq p1, v0, :cond_b

    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    if-ne p2, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method private onExecutionComplete()V
    .registers 2

    .line 576
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mController:Lcom/android/server/am/ActivityStartController;

    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityStartController;->onExecutionComplete(Lcom/android/server/am/ActivityStarter;)V

    .line 577
    return-void
.end method

.method private resumeTargetStackIfNeeded()V
    .registers 5

    .line 2219
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v0, :cond_f

    .line 2220
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    goto :goto_14

    .line 2222
    :cond_f
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 2224
    :goto_14
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v1, v1, Lcom/android/server/am/ActivityRecord;->userId:I

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->updateUserStackLocked(ILcom/android/server/am/ActivityStack;)V

    .line 2225
    return-void
.end method

.method private sendNewTaskResultRequestIfNeeded()V
    .registers 10

    .line 1802
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 1803
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    goto :goto_11

    :cond_10
    move-object v0, v1

    .line 1806
    .local v0, "sourceStack":Lcom/android/server/am/ActivityStack;
    :goto_11
    if-eqz v0, :cond_40

    iget v2, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v3, 0x10000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_40

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v2, v2, Lcom/android/server/am/ActivityRecord;->requestCode:I

    const/16 v3, -0x3e9

    if-eq v2, v3, :cond_40

    .line 1814
    const-string v2, "ActivityManager"

    const-string v3, "Activity is launching as a new task, so cancelling activity result."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1815
    const/4 v3, -0x1

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v6, v2, Lcom/android/server/am/ActivityRecord;->requestCode:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 1818
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iput-object v1, v2, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 1820
    :cond_40
    return-void
.end method

.method private setInitialState(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;ZILcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V
    .registers 26
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "inTask"    # Lcom/android/server/am/TaskRecord;
    .param p4, "doResume"    # Z
    .param p5, "startFlags"    # I
    .param p6, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p7, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p8, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    .line 1688
    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Lcom/android/server/am/ActivityStarter;->reset(Z)V

    .line 1690
    iput-object v8, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 1691
    iget-object v1, v8, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iput-object v1, v0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 1692
    iput-object v9, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 1693
    iget v1, v8, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    iput v1, v0, Lcom/android/server/am/ActivityStarter;->mCallingUid:I

    .line 1694
    move-object/from16 v14, p6

    iput-object v14, v0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    .line 1695
    move-object/from16 v15, p7

    iput-object v15, v0, Lcom/android/server/am/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 1696
    move-object/from16 v7, p8

    iput-object v7, v0, Lcom/android/server/am/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 1698
    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-direct {v0, v1, v2, v9}, Lcom/android/server/am/ActivityStarter;->getPreferedDisplayId(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)I

    move-result v1

    iput v1, v0, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    .line 1700
    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    invoke-virtual {v1}, Lcom/android/server/am/LaunchParamsController$LaunchParams;->reset()V

    .line 1702
    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getLaunchParamsController()Lcom/android/server/am/LaunchParamsController;

    move-result-object v1

    iget-object v6, v0, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    const/4 v3, 0x0

    move-object v2, v10

    move-object v4, v8

    move-object v5, v14

    move-object/from16 v16, v6

    move-object v6, v9

    move-object/from16 v7, v16

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/LaunchParamsController;->calculate(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/LaunchParamsController$LaunchParams;)V

    .line 1705
    iget v1, v8, Lcom/android/server/am/ActivityRecord;->launchMode:I

    iput v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    .line 1707
    iget v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne v2, v1, :cond_57

    move v1, v3

    goto :goto_58

    :cond_57
    move v1, v13

    :goto_58
    iget v4, v0, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    const/4 v5, 0x2

    if-ne v5, v4, :cond_5f

    move v4, v3

    goto :goto_60

    :cond_5f
    move v4, v13

    :goto_60
    iget-object v6, v0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 1709
    invoke-virtual {v6}, Landroid/content/Intent;->getFlags()I

    move-result v6

    .line 1707
    invoke-direct {v0, v8, v1, v4, v6}, Lcom/android/server/am/ActivityStarter;->adjustLaunchFlagsToDocumentMode(Lcom/android/server/am/ActivityRecord;ZZI)I

    move-result v1

    iput v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    .line 1710
    iget-boolean v1, v8, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    const/high16 v4, 0x80000

    if-eqz v1, :cond_7f

    .line 1711
    invoke-direct {v0, v5, v2}, Lcom/android/server/am/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v1

    if-nez v1, :cond_7f

    iget v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_7f

    move v1, v3

    goto :goto_80

    :cond_7f
    move v1, v13

    :goto_80
    iput-boolean v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    .line 1714
    iget-boolean v1, v8, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v1, :cond_8e

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getActivityType()I

    move-result v1

    if-ne v1, v2, :cond_8e

    .line 1715
    iput-boolean v3, v0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    .line 1719
    :cond_8e
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->sendNewTaskResultRequestIfNeeded()V

    .line 1721
    iget v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v1, v4

    const/high16 v2, 0x10000000

    if-eqz v1, :cond_a1

    iget-object v1, v8, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v1, :cond_a1

    .line 1722
    iget v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    .line 1727
    :cond_a1
    iget v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_b7

    .line 1728
    iget-boolean v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    if-nez v1, :cond_b0

    iget-object v1, v8, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    if-ne v1, v5, :cond_b7

    .line 1730
    :cond_b0
    iget v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v2, 0x8000000

    or-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    .line 1736
    :cond_b7
    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v2, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v4, 0x40000

    and-int/2addr v2, v4

    if-nez v2, :cond_c2

    move v2, v3

    goto :goto_c3

    :cond_c2
    move v2, v13

    :goto_c3
    iput-boolean v2, v1, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    .line 1743
    iput-boolean v11, v0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    .line 1744
    if-eqz v11, :cond_cf

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->okToShowLocked()Z

    move-result v1

    if-nez v1, :cond_d3

    .line 1745
    :cond_cf
    iput-boolean v3, v8, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    .line 1746
    iput-boolean v13, v0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    .line 1749
    :cond_d3
    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    const/4 v2, 0x0

    if-eqz v1, :cond_122

    .line 1750
    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_116

    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getTaskOverlay()Z

    move-result v1

    if-eqz v1, :cond_116

    .line 1751
    iput-boolean v3, v8, Lcom/android/server/am/ActivityRecord;->mTaskOverlay:Z

    .line 1752
    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->canTaskOverlayResume()Z

    move-result v1

    if-nez v1, :cond_122

    .line 1753
    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 1754
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v4

    .line 1753
    invoke-virtual {v1, v4}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v1

    .line 1755
    .local v1, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v1, :cond_106

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    goto :goto_107

    :cond_106
    move-object v4, v2

    .line 1756
    .local v4, "top":Lcom/android/server/am/ActivityRecord;
    :goto_107
    if-eqz v4, :cond_115

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v5

    if-nez v5, :cond_115

    .line 1760
    iput-boolean v13, v0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    .line 1761
    iput-boolean v3, v0, Lcom/android/server/am/ActivityStarter;->mAvoidMoveToFront:Z

    .line 1763
    .end local v1    # "task":Lcom/android/server/am/TaskRecord;
    .end local v4    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_115
    goto :goto_122

    .line 1764
    :cond_116
    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getAvoidMoveToFront()Z

    move-result v1

    if-eqz v1, :cond_122

    .line 1765
    iput-boolean v13, v0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    .line 1766
    iput-boolean v3, v0, Lcom/android/server/am/ActivityStarter;->mAvoidMoveToFront:Z

    .line 1770
    :cond_122
    :goto_122
    iget v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v4, 0x1000000

    and-int/2addr v1, v4

    if-eqz v1, :cond_12b

    move-object v1, v8

    goto :goto_12c

    :cond_12b
    move-object v1, v2

    :goto_12c
    iput-object v1, v0, Lcom/android/server/am/ActivityStarter;->mNotTop:Lcom/android/server/am/ActivityRecord;

    .line 1772
    iput-object v10, v0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    .line 1777
    if-eqz v10, :cond_14e

    iget-boolean v1, v10, Lcom/android/server/am/TaskRecord;->inRecents:Z

    if-nez v1, :cond_14e

    .line 1778
    const-string v1, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Starting activity in task not in recents: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1779
    iput-object v2, v0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    .line 1782
    :cond_14e
    iput v12, v0, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    .line 1786
    and-int/lit8 v1, v12, 0x1

    if-eqz v1, :cond_171

    .line 1787
    move-object v1, v14

    .line 1788
    .local v1, "checkedCaller":Lcom/android/server/am/ActivityRecord;
    if-nez v1, :cond_161

    .line 1789
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mNotTop:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 1792
    :cond_161
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v4, v8, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_171

    .line 1794
    iget v2, v0, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    and-int/lit8 v2, v2, -0x2

    iput v2, v0, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    .line 1798
    .end local v1    # "checkedCaller":Lcom/android/server/am/ActivityRecord;
    :cond_171
    iget v1, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-eqz v1, :cond_17a

    move v13, v3

    nop

    :cond_17a
    iput-boolean v13, v0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    .line 1799
    return-void
.end method

.method private setTargetStackAndMoveToFrontIfNeeded(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .registers 23
    .param p1, "intentActivity"    # Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p0

    .line 2027
    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 2028
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 2033
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 2034
    .local v2, "focusStack":Lcom/android/server/am/ActivityStack;
    if-nez v2, :cond_19

    .line 2035
    move-object v4, v3

    goto :goto_1f

    :cond_19
    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mNotTop:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 2037
    .local v4, "curTop":Lcom/android/server/am/ActivityRecord;
    :goto_1f
    if-eqz v4, :cond_26

    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    goto :goto_27

    :cond_26
    move-object v5, v3

    .line 2038
    .local v5, "topTask":Lcom/android/server/am/TaskRecord;
    :goto_27
    const/4 v6, 0x0

    if-eqz v5, :cond_15b

    .line 2039
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v7

    if-ne v5, v7, :cond_36

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v7

    if-eq v5, v7, :cond_15b

    :cond_36
    iget-boolean v7, v0, Lcom/android/server/am/ActivityStarter;->mAvoidMoveToFront:Z

    if-nez v7, :cond_15b

    .line 2041
    iget-object v7, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v7, v7, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v8, 0x400000

    invoke-virtual {v7, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2042
    iget-object v7, v0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    if-eqz v7, :cond_61

    iget-object v7, v0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    if-eqz v7, :cond_15b

    iget-object v7, v0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    .line 2043
    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v8

    if-ne v7, v8, :cond_15b

    .line 2045
    :cond_61
    iget-boolean v7, v0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    if-eqz v7, :cond_72

    iget-object v7, v0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    if-eqz v7, :cond_72

    .line 2046
    iget-object v7, v0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/android/server/am/ActivityRecord;->setTaskToAffiliateWith(Lcom/android/server/am/TaskRecord;)V

    .line 2055
    :cond_72
    iget v7, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const v8, 0x10008000

    and-int/2addr v7, v8

    const/4 v9, 0x1

    if-ne v7, v8, :cond_7d

    move v7, v9

    goto :goto_7e

    :cond_7d
    move v7, v6

    .line 2058
    .local v7, "willClearTask":Z
    :goto_7e
    if-nez v7, :cond_15b

    .line 2059
    iget-object v8, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v10, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    iget-object v11, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 2060
    invoke-virtual {v11}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v11

    iget-object v12, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2059
    invoke-direct {v0, v8, v10, v11, v12}, Lcom/android/server/am/ActivityStarter;->getLaunchStack(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/TaskRecord;Landroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;

    move-result-object v8

    .line 2061
    .local v8, "launchStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v20

    .line 2062
    .local v20, "intentTask":Lcom/android/server/am/TaskRecord;
    if-eqz v8, :cond_143

    iget-object v10, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    if-ne v8, v10, :cond_9c

    goto/16 :goto_143

    .line 2069
    :cond_9c
    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->inSplitScreenWindowingMode()Z

    move-result v10

    if-eqz v10, :cond_df

    .line 2070
    iget v10, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    and-int/lit16 v10, v10, 0x1000

    if-eqz v10, :cond_b9

    .line 2073
    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x1

    const-string/jumbo v19, "launchToSide"

    move-object/from16 v13, v20

    move-object v14, v8

    invoke-virtual/range {v13 .. v19}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;ZIZZLjava/lang/String;)Z

    goto :goto_ca

    .line 2081
    :cond_b9
    iget-object v10, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-boolean v12, v0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    iget-object v13, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v11, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v14, v11, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string v15, "bringToFrontInsteadOfAdjacentLaunch"

    move-object/from16 v11, v20

    invoke-virtual/range {v10 .. v15}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    .line 2085
    :goto_ca
    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v10

    .line 2086
    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/server/am/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/am/ActivityStack;

    move-result-object v10

    if-eq v8, v10, :cond_da

    move v10, v9

    goto :goto_db

    :cond_da
    move v10, v6

    :goto_db
    iput-boolean v10, v0, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    goto/16 :goto_156

    .line 2087
    :cond_df
    iget v10, v8, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    iget-object v11, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget v11, v11, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    if-eq v10, v11, :cond_fc

    .line 2091
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v13

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x1

    const-string/jumbo v19, "reparentToDisplay"

    move-object v14, v8

    invoke-virtual/range {v13 .. v19}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;ZIZZLjava/lang/String;)Z

    .line 2094
    iput-boolean v9, v0, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    goto :goto_156

    .line 2095
    :cond_fc
    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->isActivityTypeHome()Z

    move-result v10

    if-eqz v10, :cond_11f

    iget-object v10, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 2096
    invoke-virtual {v10}, Lcom/android/server/am/ActivityStack;->isActivityTypeHome()Z

    move-result v10

    if-nez v10, :cond_11f

    .line 2101
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v13

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x1

    const-string/jumbo v19, "reparentingHome"

    move-object v14, v8

    invoke-virtual/range {v13 .. v19}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;ZIZZLjava/lang/String;)Z

    .line 2104
    iput-boolean v9, v0, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    goto :goto_156

    .line 2106
    :cond_11f
    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v10

    const/4 v11, 0x5

    if-ne v10, v11, :cond_156

    iget-object v10, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 2107
    invoke-virtual {v10}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v10

    if-eq v10, v11, :cond_156

    .line 2108
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v13

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x1

    const-string/jumbo v19, "reparentingFreeform"

    move-object v14, v8

    invoke-virtual/range {v13 .. v19}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;ZIZZLjava/lang/String;)Z

    .line 2111
    iput-boolean v9, v0, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    goto :goto_156

    .line 2066
    :cond_143
    :goto_143
    iget-object v10, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-boolean v12, v0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    iget-object v13, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v11, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v14, v11, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string v15, "bringingFoundTaskToFront"

    move-object/from16 v11, v20

    invoke-virtual/range {v10 .. v15}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    .line 2068
    iput-boolean v9, v0, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    .line 2114
    :cond_156
    :goto_156
    iput-object v3, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2118
    invoke-virtual {v1, v3, v6, v9}, Lcom/android/server/am/ActivityRecord;->showStartingWindow(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 2125
    .end local v7    # "willClearTask":Z
    .end local v8    # "launchStack":Lcom/android/server/am/ActivityStack;
    .end local v20    # "intentTask":Lcom/android/server/am/TaskRecord;
    :cond_15b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 2126
    iget-boolean v3, v0, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    if-nez v3, :cond_170

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v3, :cond_170

    .line 2129
    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const-string v7, "intentActivityFound"

    invoke-virtual {v3, v7}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 2132
    :cond_170
    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3, v7, v6, v6, v8}, Lcom/android/server/am/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/am/TaskRecord;IILcom/android/server/am/ActivityStack;)V

    .line 2136
    iget v3, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v6, 0x200000

    and-int/2addr v3, v6

    if-eqz v3, :cond_18b

    .line 2137
    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-object v6, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3, v1, v6}, Lcom/android/server/am/ActivityStack;->resetTaskIfNeededLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    return-object v3

    .line 2139
    :cond_18b
    return-object v1
.end method

.method private setTaskFromInTask()I
    .registers 13

    .line 2372
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getLockTaskController()Lcom/android/server/am/LockTaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2373
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted Lock Task Mode violation mStartActivity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2374
    const/16 v0, 0x65

    return v0

    .line 2377
    :cond_29
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 2381
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 2382
    .local v0, "top":Lcom/android/server/am/ActivityRecord;
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_78

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_78

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v4, v4, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v3, v4, :cond_78

    .line 2384
    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v4, 0x20000000

    and-int/2addr v3, v4

    if-nez v3, :cond_5c

    .line 2385
    invoke-direct {p0, v2, v1}, Lcom/android/server/am/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v3

    if-eqz v3, :cond_78

    .line 2386
    :cond_5c
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    iget-boolean v6, p0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    iget-object v7, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v8, v1, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string v9, "inTaskToFront"

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    .line 2388
    iget v1, p0, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_73

    .line 2391
    return v2

    .line 2393
    :cond_73
    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityStarter;->deliverNewIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 2394
    const/4 v1, 0x3

    return v1

    .line 2398
    :cond_78
    iget-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    if-nez v3, :cond_93

    .line 2399
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    iget-boolean v6, p0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    iget-object v7, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v8, v2, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string v9, "inTaskToFront"

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    .line 2403
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v2}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 2404
    return v1

    .line 2407
    :cond_93
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    iget-object v1, v1, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_cb

    .line 2409
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v3, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getLaunchStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;Z)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 2410
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    if-eq v1, v2, :cond_c2

    .line 2411
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    const-string v11, "inTaskToFront"

    move-object v6, v1

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;ZIZZLjava/lang/String;)Z

    .line 2413
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 2416
    :cond_c2
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    iget-object v3, v3, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/ActivityStarter;->updateBounds(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;)V

    .line 2419
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_cb
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    iget-boolean v6, p0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    iget-object v7, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v8, v1, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string v9, "inTaskToFront"

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    .line 2422
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    const-string/jumbo v2, "setTaskFromInTask"

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/ActivityStarter;->addOrReparentStartingActivity(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V

    .line 2426
    const/4 v1, 0x0

    return v1
.end method

.method private setTaskFromIntentActivity(Lcom/android/server/am/ActivityRecord;)V
    .registers 9
    .param p1, "intentActivity"    # Lcom/android/server/am/ActivityRecord;

    .line 2143
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const v1, 0x10008000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1a

    .line 2154
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 2155
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked()V

    .line 2156
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    .line 2157
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v2}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 2158
    .end local v0    # "task":Lcom/android/server/am/TaskRecord;
    goto/16 :goto_d1

    :cond_1a
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-nez v0, :cond_92

    const/4 v0, 0x3

    const/4 v2, 0x2

    .line 2159
    invoke-direct {p0, v0, v2}, Lcom/android/server/am/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v0

    if-eqz v0, :cond_2b

    goto :goto_92

    .line 2183
    :cond_2b
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 2188
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v2, 0x20000000

    and-int/2addr v0, v2

    if-nez v0, :cond_46

    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    if-ne v1, v0, :cond_63

    :cond_46
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    .line 2190
    invoke-virtual {v0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 2191
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v0, :cond_5f

    .line 2192
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 2194
    :cond_5f
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStarter;->deliverNewIntent(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_d1

    .line 2195
    :cond_63
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, v2}, Lcom/android/server/am/TaskRecord;->isSameIntentFilter(Lcom/android/server/am/ActivityRecord;)Z

    move-result v0

    if-nez v0, :cond_d1

    .line 2198
    iput-boolean v1, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    .line 2199
    iput-object p1, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    goto :goto_d1

    .line 2201
    :cond_74
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v2, 0x200000

    and-int/2addr v0, v2

    if-nez v0, :cond_80

    .line 2206
    iput-boolean v1, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    .line 2207
    iput-object p1, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    goto :goto_d1

    .line 2208
    :cond_80
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    if-nez v0, :cond_d1

    .line 2214
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_d1

    .line 2160
    :cond_92
    :goto_92
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 2162
    .local v0, "top":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_d0

    .line 2166
    iput-boolean v1, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    .line 2169
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;)V

    .line 2172
    iput-object p1, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    .line 2173
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    .line 2174
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v2, :cond_d0

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v3

    if-nez v3, :cond_d0

    .line 2177
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    iget-object v6, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/android/server/am/ActivityStarter;->computeStackFocus(Lcom/android/server/am/ActivityRecord;ZILandroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 2179
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-boolean v4, p0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    xor-int/2addr v1, v4

    const-string/jumbo v4, "startActivityUnchecked"

    invoke-virtual {v3, v2, v1, v4}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;ZLjava/lang/String;)V

    .line 2183
    .end local v0    # "top":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    :cond_d0
    nop

    .line 2216
    :cond_d1
    :goto_d1
    return-void
.end method

.method private setTaskFromReuseOrCreateNewTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;)I
    .registers 19
    .param p1, "taskToAffiliate"    # Lcom/android/server/am/TaskRecord;
    .param p2, "topStack"    # Lcom/android/server/am/ActivityStack;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2229
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v3, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    const/4 v5, 0x1

    invoke-direct {v0, v2, v5, v3, v4}, Lcom/android/server/am/ActivityStarter;->computeStackFocus(Lcom/android/server/am/ActivityRecord;ZILandroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 2234
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    if-nez v2, :cond_5f

    .line 2235
    iget-object v6, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v3, v3, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 2236
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getNextTaskIdForUserLocked(I)I

    move-result v7

    .line 2237
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_29

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    .line 2238
    :goto_27
    move-object v8, v2

    goto :goto_2e

    .line 2237
    :cond_29
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    goto :goto_27

    .line 2238
    :goto_2e
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    if-eqz v2, :cond_36

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    :goto_34
    move-object v9, v2

    goto :goto_39

    :cond_36
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    goto :goto_34

    :goto_39
    iget-object v10, v0, Lcom/android/server/am/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v11, v0, Lcom/android/server/am/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    xor-int/lit8 v12, v2, 0x1

    iget-object v13, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v14, v0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iget-object v15, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2235
    invoke-virtual/range {v6 .. v15}, Lcom/android/server/am/ActivityStack;->createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Lcom/android/server/am/TaskRecord;

    move-result-object v2

    .line 2241
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    const-string/jumbo v3, "setTaskFromReuseOrCreateNewTask - mReuseTask"

    invoke-direct {v0, v2, v3}, Lcom/android/server/am/ActivityStarter;->addOrReparentStartingActivity(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V

    .line 2242
    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    iget-object v4, v4, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/ActivityStarter;->updateBounds(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;)V

    .line 2246
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    goto :goto_67

    .line 2247
    :cond_5f
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    const-string/jumbo v3, "setTaskFromReuseOrCreateNewTask"

    invoke-direct {v0, v2, v3}, Lcom/android/server/am/ActivityStarter;->addOrReparentStartingActivity(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V

    .line 2250
    :goto_67
    if-eqz v1, :cond_6e

    .line 2251
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityRecord;->setTaskToAffiliateWith(Lcom/android/server/am/TaskRecord;)V

    .line 2254
    :cond_6e
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getLockTaskController()Lcom/android/server/am/LockTaskController;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z

    move-result v2

    if-eqz v2, :cond_9b

    .line 2255
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted Lock Task Mode violation mStartActivity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2256
    const/16 v2, 0x65

    return v2

    .line 2259
    :cond_9b
    iget-boolean v2, v0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v2, :cond_a7

    .line 2260
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const-string/jumbo v3, "reuseOrNewTask"

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 2262
    :cond_a7
    const/4 v2, 0x0

    return v2
.end method

.method private setTaskFromSourceRecord()I
    .registers 15

    .line 2277
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getLockTaskController()Lcom/android/server/am/LockTaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 2278
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted Lock Task Mode violation mStartActivity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2279
    const/16 v0, 0x65

    return v0

    .line 2281
    :cond_2d
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2283
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    .line 2284
    .local v1, "sourceTask":Lcom/android/server/am/TaskRecord;
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v9

    .line 2289
    .local v9, "sourceStack":Lcom/android/server/am/ActivityStack;
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    if-eqz v2, :cond_4a

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget v2, v2, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    goto :goto_4c

    .line 2290
    :cond_4a
    iget v2, v9, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    :goto_4c
    move v10, v2

    .line 2291
    .local v10, "targetDisplayId":I
    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-ne v2, v1, :cond_60

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 2292
    invoke-virtual {v2, v10}, Lcom/android/server/am/ActivityRecord;->canBeLaunchedOnDisplay(I)Z

    move-result v2

    if-nez v2, :cond_5e

    goto :goto_60

    :cond_5e
    move v2, v12

    goto :goto_61

    :cond_60
    :goto_60
    move v2, v11

    :goto_61
    move v13, v2

    .line 2293
    .local v13, "moveStackAllowed":Z
    if-eqz v13, :cond_9d

    .line 2294
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/server/am/ActivityStarter;->getLaunchStack(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/TaskRecord;Landroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 2298
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    if-nez v2, :cond_8c

    iget v2, v9, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    if-eq v10, v2, :cond_8c

    .line 2300
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v3, v9, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->getValidLaunchStackOnDisplay(ILcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 2303
    :cond_8c
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    if-nez v2, :cond_9d

    .line 2306
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->getNextValidLaunchStackLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 2311
    :cond_9d
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    if-nez v2, :cond_a4

    .line 2312
    iput-object v9, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    goto :goto_b5

    .line 2313
    :cond_a4
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    if-eq v2, v9, :cond_b5

    .line 2314
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string/jumbo v8, "launchToSide"

    move-object v2, v1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/TaskRecord;->reparent(Lcom/android/server/am/ActivityStack;ZIZZLjava/lang/String;)Z

    .line 2318
    :cond_b5
    :goto_b5
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v8

    .line 2319
    .local v8, "topTask":Lcom/android/server/am/TaskRecord;
    if-eq v8, v1, :cond_d3

    iget-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mAvoidMoveToFront:Z

    if-nez v2, :cond_d3

    .line 2320
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-boolean v4, p0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string/jumbo v7, "sourceTaskToFront"

    move-object v3, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    goto :goto_df

    .line 2322
    :cond_d3
    iget-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v2, :cond_df

    .line 2323
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const-string/jumbo v3, "sourceStackToFront"

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 2326
    :cond_df
    :goto_df
    iget-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/16 v5, 0x7533

    if-nez v2, :cond_11a

    iget v2, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v6, 0x4000000

    and-int/2addr v2, v6

    if-eqz v2, :cond_11a

    .line 2329
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v6, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    invoke-virtual {v1, v2, v6}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 2330
    .local v2, "top":Lcom/android/server/am/ActivityRecord;
    iput-boolean v11, p0, Lcom/android/server/am/ActivityStarter;->mKeepCurTransition:Z

    .line 2331
    if-eqz v2, :cond_119

    .line 2332
    iget-object v6, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2333
    invoke-direct {p0, v2}, Lcom/android/server/am/ActivityStarter;->deliverNewIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 2335
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iput-object v4, v5, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 2336
    iget-boolean v4, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v4, :cond_113

    .line 2337
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 2339
    :cond_113
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v4}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 2340
    return v3

    .line 2342
    .end local v2    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_119
    goto :goto_14f

    :cond_11a
    iget-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    if-nez v2, :cond_14f

    iget v2, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v6, 0x20000

    and-int/2addr v2, v6

    if-eqz v2, :cond_14f

    .line 2346
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v2}, Lcom/android/server/am/TaskRecord;->findActivityInHistoryLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 2347
    .restart local v2    # "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_14f

    .line 2348
    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    .line 2349
    .local v6, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v6, v2}, Lcom/android/server/am/TaskRecord;->moveActivityToFrontLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 2350
    iget-object v7, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2, v7}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    .line 2351
    iget-object v7, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-static {v5, v7, v6}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2352
    invoke-direct {p0, v2}, Lcom/android/server/am/ActivityStarter;->deliverNewIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 2353
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iput-object v4, v5, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 2354
    iget-boolean v4, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v4, :cond_14e

    .line 2355
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 2357
    :cond_14e
    return v3

    .line 2363
    .end local v2    # "top":Lcom/android/server/am/ActivityRecord;
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    :cond_14f
    :goto_14f
    const-string/jumbo v2, "setTaskFromSourceRecord"

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/ActivityStarter;->addOrReparentStartingActivity(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V

    .line 2366
    return v12
.end method

.method private setTaskToCurrentTopOrCreateNewTask()V
    .registers 13

    .line 2444
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v1, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/android/server/am/ActivityStarter;->computeStackFocus(Lcom/android/server/am/ActivityRecord;ZILandroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 2445
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v0, :cond_18

    .line 2446
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const-string v1, "addingToTopTask"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 2448
    :cond_18
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 2449
    .local v0, "prev":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_25

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    goto :goto_44

    :cond_25
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v3, v3, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 2450
    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getNextTaskIdForUserLocked(I)I

    move-result v3

    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v10, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iget-object v11, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2449
    invoke-virtual/range {v2 .. v11}, Lcom/android/server/am/ActivityStack;->createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Lcom/android/server/am/TaskRecord;

    move-result-object v1

    .line 2452
    .local v1, "task":Lcom/android/server/am/TaskRecord;
    :goto_44
    const-string/jumbo v2, "setTaskToCurrentTopOrCreateNewTask"

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/ActivityStarter;->addOrReparentStartingActivity(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V

    .line 2453
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityStack;->positionChildWindowContainerAtTop(Lcom/android/server/am/TaskRecord;)V

    .line 2456
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting new activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " in new guessed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 2457
    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2456
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2458
    return-void
.end method

.method private startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ResolveInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILcom/android/server/am/SafeActivityOptions;ZZ[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;Ljava/lang/String;Z)I
    .registers 51
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "ephemeralIntent"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p6, "rInfo"    # Landroid/content/pm/ResolveInfo;
    .param p7, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p8, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p9, "resultTo"    # Landroid/os/IBinder;
    .param p10, "resultWho"    # Ljava/lang/String;
    .param p11, "requestCode"    # I
    .param p12, "callingPid"    # I
    .param p13, "callingUid"    # I
    .param p14, "callingPackage"    # Ljava/lang/String;
    .param p15, "realCallingPid"    # I
    .param p16, "realCallingUid"    # I
    .param p17, "startFlags"    # I
    .param p18, "options"    # Lcom/android/server/am/SafeActivityOptions;
    .param p19, "ignoreTargetSecurity"    # Z
    .param p20, "componentSpecified"    # Z
    .param p21, "outActivity"    # [Lcom/android/server/am/ActivityRecord;
    .param p22, "inTask"    # Lcom/android/server/am/TaskRecord;
    .param p23, "reason"    # Ljava/lang/String;
    .param p24, "allowPendingRemoteAnimationRegistryLookup"    # Z

    move-object/from16 v15, p0

    .line 545
    invoke-static/range {p23 .. p23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_61

    .line 548
    move-object/from16 v14, p23

    iput-object v14, v15, Lcom/android/server/am/ActivityStarter;->mLastStartReason:Ljava/lang/String;

    .line 549
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v15, Lcom/android/server/am/ActivityStarter;->mLastStartActivityTimeMs:J

    .line 550
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mLastStartActivityRecord:[Lcom/android/server/am/ActivityRecord;

    const/4 v1, 0x0

    const/16 v24, 0x0

    aput-object v1, v0, v24

    .line 552
    iget-object v13, v15, Lcom/android/server/am/ActivityStarter;->mLastStartActivityRecord:[Lcom/android/server/am/ActivityRecord;

    move-object v0, v15

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move-object/from16 v21, v13

    move/from16 v13, p13

    move-object/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move-object/from16 v18, p18

    move/from16 v19, p19

    move/from16 v20, p20

    move-object/from16 v22, p22

    move/from16 v23, p24

    invoke-direct/range {v0 .. v23}, Lcom/android/server/am/ActivityStarter;->startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ResolveInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILcom/android/server/am/SafeActivityOptions;ZZ[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;Z)I

    move-result v0

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/ActivityStarter;->mLastStartActivityResult:I

    .line 558
    if-eqz p21, :cond_5a

    .line 560
    iget-object v0, v1, Lcom/android/server/am/ActivityStarter;->mLastStartActivityRecord:[Lcom/android/server/am/ActivityRecord;

    aget-object v0, v0, v24

    aput-object v0, p21, v24

    .line 563
    :cond_5a
    iget v0, v1, Lcom/android/server/am/ActivityStarter;->mLastStartActivityResult:I

    invoke-static {v0}, Lcom/android/server/am/ActivityStarter;->getExternalResult(I)I

    move-result v0

    return v0

    .line 546
    :cond_61
    move-object v1, v15

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Need to specify a reason."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ResolveInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILcom/android/server/am/SafeActivityOptions;ZZ[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;Z)I
    .registers 98
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "ephemeralIntent"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p6, "rInfo"    # Landroid/content/pm/ResolveInfo;
    .param p7, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p8, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p9, "resultTo"    # Landroid/os/IBinder;
    .param p10, "resultWho"    # Ljava/lang/String;
    .param p11, "requestCode"    # I
    .param p12, "callingPid"    # I
    .param p13, "callingUid"    # I
    .param p14, "callingPackage"    # Ljava/lang/String;
    .param p15, "realCallingPid"    # I
    .param p16, "realCallingUid"    # I
    .param p17, "startFlags"    # I
    .param p18, "options"    # Lcom/android/server/am/SafeActivityOptions;
    .param p19, "ignoreTargetSecurity"    # Z
    .param p20, "componentSpecified"    # Z
    .param p21, "outActivity"    # [Lcom/android/server/am/ActivityRecord;
    .param p22, "inTask"    # Lcom/android/server/am/TaskRecord;
    .param p23, "allowPendingRemoteAnimationRegistryLookup"    # Z

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v13, p9

    move/from16 v12, p16

    move/from16 v4, p17

    move-object/from16 v11, p18

    .line 587
    const/4 v0, 0x0

    .line 590
    .local v0, "err":I
    if-eqz v11, :cond_1a

    invoke-virtual/range {p18 .. p18}, Lcom/android/server/am/SafeActivityOptions;->popAppVerificationBundle()Landroid/os/Bundle;

    move-result-object v5

    goto :goto_1b

    :cond_1a
    const/4 v5, 0x0

    .line 592
    .local v5, "verificationBundle":Landroid/os/Bundle;
    :goto_1b
    const/4 v6, 0x0

    .line 593
    .local v6, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v14, :cond_60

    .line 594
    iget-object v7, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7, v14}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v6

    .line 595
    if-eqz v6, :cond_31

    .line 596
    iget v7, v6, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 597
    .end local p12    # "callingPid":I
    .local v7, "callingPid":I
    iget-object v8, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 606
    .end local p13    # "callingUid":I
    .local v8, "callingUid":I
    move-object v9, v6

    move/from16 v31, v7

    move v10, v8

    goto :goto_67

    .line 599
    .end local v7    # "callingPid":I
    .end local v8    # "callingUid":I
    .restart local p12    # "callingPid":I
    .restart local p13    # "callingUid":I
    :cond_31
    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to find app for caller "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " (pid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p12

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ") when starting: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 599
    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    const/16 v0, -0x5e

    goto :goto_62

    .line 606
    :cond_60
    move/from16 v9, p12

    .line 606
    .end local v6    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local p12    # "callingPid":I
    .end local p13    # "callingUid":I
    .local v9, "callerApp":Lcom/android/server/am/ProcessRecord;
    .local v10, "callingUid":I
    .local v31, "callingPid":I
    :goto_62
    move/from16 v10, p13

    move/from16 v31, v9

    move-object v9, v6

    :goto_67
    if-eqz v3, :cond_76

    iget-object v6, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_76

    .line 607
    iget-object v6, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    goto :goto_77

    :cond_76
    const/4 v6, 0x0

    :goto_77
    move v7, v6

    .line 609
    .local v7, "userId":I
    if-nez v0, :cond_aa

    .line 610
    const-string v6, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "START u"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " {"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v51, v5

    const/4 v5, 0x0

    const/4 v14, 0x1

    invoke-virtual {v1, v14, v14, v14, v5}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v12

    .end local v5    # "verificationBundle":Landroid/os/Bundle;
    .local v51, "verificationBundle":Landroid/os/Bundle;
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "} from uid "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ad

    .line 614
    .end local v51    # "verificationBundle":Landroid/os/Bundle;
    .restart local v5    # "verificationBundle":Landroid/os/Bundle;
    :cond_aa
    move-object/from16 v51, v5

    const/4 v5, 0x0

    .line 614
    .end local v5    # "verificationBundle":Landroid/os/Bundle;
    .restart local v51    # "verificationBundle":Landroid/os/Bundle;
    :goto_ad
    const/4 v6, 0x0

    .line 615
    .local v6, "sourceRecord":Lcom/android/server/am/ActivityRecord;
    const/4 v8, 0x0

    .line 616
    .local v8, "resultRecord":Lcom/android/server/am/ActivityRecord;
    const/16 v12, -0x3e9

    if-eqz v13, :cond_e1

    .line 617
    iget-object v14, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v14, v13}, Lcom/android/server/am/ActivityStackSupervisor;->isInAnyStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    .line 620
    if-eqz v6, :cond_e1

    .line 625
    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v14

    if-eqz v14, :cond_d5

    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->inMultiWindowMode()Z

    move-result v14

    if-eqz v14, :cond_d5

    const/4 v14, -0x1

    move/from16 v5, p11

    if-ne v5, v14, :cond_d7

    .line 627
    invoke-static {v1, v3}, Lcom/android/server/am/ActivityStackSupervisorInjector;->isAppLockActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Z

    move-result v14

    if-eqz v14, :cond_d7

    .line 628
    const/16 v5, -0x3e9

    .line 628
    .end local p11    # "requestCode":I
    .local v5, "requestCode":I
    goto :goto_d7

    .line 631
    .end local v5    # "requestCode":I
    .restart local p11    # "requestCode":I
    :cond_d5
    move/from16 v5, p11

    .line 631
    .end local p11    # "requestCode":I
    .restart local v5    # "requestCode":I
    :cond_d7
    :goto_d7
    if-gez v5, :cond_db

    if-ne v5, v12, :cond_e3

    :cond_db
    iget-boolean v14, v6, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v14, :cond_e3

    .line 634
    move-object v8, v6

    goto :goto_e3

    .line 640
    .end local v5    # "requestCode":I
    .restart local p11    # "requestCode":I
    :cond_e1
    move/from16 v5, p11

    .line 640
    .end local v6    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    .end local p11    # "requestCode":I
    .restart local v5    # "requestCode":I
    .local v14, "sourceRecord":Lcom/android/server/am/ActivityRecord;
    :cond_e3
    :goto_e3
    move-object v14, v6

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v50

    .line 642
    .local v50, "launchFlags":I
    const/high16 v6, 0x2000000

    and-int v6, v50, v6

    if-eqz v6, :cond_11d

    if-eqz v14, :cond_11d

    .line 645
    if-ltz v5, :cond_f8

    .line 646
    invoke-static/range {p18 .. p18}, Lcom/android/server/am/SafeActivityOptions;->abort(Lcom/android/server/am/SafeActivityOptions;)V

    .line 647
    const/16 v6, -0x5d

    return v6

    .line 649
    :cond_f8
    iget-object v6, v14, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 650
    .end local v8    # "resultRecord":Lcom/android/server/am/ActivityRecord;
    .local v6, "resultRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v6, :cond_103

    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->isInStackLocked()Z

    move-result v8

    if-nez v8, :cond_103

    .line 651
    const/4 v6, 0x0

    .line 653
    :cond_103
    iget-object v8, v14, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    .line 654
    .end local p10    # "resultWho":Ljava/lang/String;
    .local v8, "resultWho":Ljava/lang/String;
    iget v5, v14, Lcom/android/server/am/ActivityRecord;->requestCode:I

    .line 655
    const/4 v12, 0x0

    iput-object v12, v14, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 656
    if-eqz v6, :cond_10f

    .line 657
    invoke-virtual {v6, v14, v8, v5}, Lcom/android/server/am/ActivityRecord;->removeResultsLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I)V

    .line 659
    :cond_10f
    iget v12, v14, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    if-ne v12, v10, :cond_116

    .line 670
    iget-object v12, v14, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 670
    .end local p14    # "callingPackage":Ljava/lang/String;
    .local v12, "callingPackage":Ljava/lang/String;
    goto :goto_118

    .line 674
    .end local v12    # "callingPackage":Ljava/lang/String;
    .restart local p14    # "callingPackage":Ljava/lang/String;
    :cond_116
    move-object/from16 v12, p14

    .line 674
    .end local v6    # "resultRecord":Lcom/android/server/am/ActivityRecord;
    .end local p14    # "callingPackage":Ljava/lang/String;
    .local v5, "resultRecord":Lcom/android/server/am/ActivityRecord;
    .local v8, "requestCode":I
    .restart local v12    # "callingPackage":Ljava/lang/String;
    .local v30, "resultWho":Ljava/lang/String;
    :goto_118
    move-object/from16 v30, v8

    move v8, v5

    move-object v5, v6

    goto :goto_126

    .line 674
    .end local v12    # "callingPackage":Ljava/lang/String;
    .end local v30    # "resultWho":Ljava/lang/String;
    .local v5, "requestCode":I
    .local v8, "resultRecord":Lcom/android/server/am/ActivityRecord;
    .restart local p10    # "resultWho":Ljava/lang/String;
    .restart local p14    # "callingPackage":Ljava/lang/String;
    :cond_11d
    move-object/from16 v30, p10

    move-object/from16 v12, p14

    move-object/from16 v73, v8

    move v8, v5

    move-object/from16 v5, v73

    .line 674
    .end local p10    # "resultWho":Ljava/lang/String;
    .end local p14    # "callingPackage":Ljava/lang/String;
    .local v5, "resultRecord":Lcom/android/server/am/ActivityRecord;
    .local v8, "requestCode":I
    .restart local v12    # "callingPackage":Ljava/lang/String;
    .restart local v30    # "resultWho":Ljava/lang/String;
    :goto_126
    if-nez v0, :cond_130

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    if-nez v6, :cond_130

    .line 677
    const/16 v0, -0x5b

    .line 680
    :cond_130
    if-nez v0, :cond_136

    if-nez v3, :cond_136

    .line 683
    const/16 v0, -0x5c

    .line 686
    .end local v0    # "err":I
    .local v6, "err":I
    :cond_136
    move v6, v0

    if-nez v6, :cond_194

    if-eqz v14, :cond_194

    .line 687
    invoke-virtual {v14}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_194

    .line 692
    const/high16 v0, 0x10000000

    and-int v0, v50, v0

    if-nez v0, :cond_194

    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v59, v6

    iget-object v6, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .end local v6    # "err":I
    .local v59, "err":I
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v0, v6, :cond_196

    .line 695
    :try_start_157
    const-string v0, "android.intent.category.VOICE"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 696
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 697
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    .line 696
    invoke-interface {v0, v6, v1, v2}, Landroid/content/pm/IPackageManager;->activitySupportsIntent(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_186

    .line 698
    const-string v0, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Activity being started in current voice task does not support voice: "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_182
    .catch Landroid/os/RemoteException; {:try_start_157 .. :try_end_182} :catch_189

    .line 701
    const/16 v0, -0x61

    .line 706
    .end local v59    # "err":I
    .restart local v0    # "err":I
    move v6, v0

    goto :goto_188

    .line 706
    .end local v0    # "err":I
    .restart local v59    # "err":I
    :cond_186
    move/from16 v6, v59

    .line 706
    .end local v59    # "err":I
    .restart local v6    # "err":I
    :goto_188
    goto :goto_198

    .line 703
    .end local v6    # "err":I
    .restart local v59    # "err":I
    :catch_189
    move-exception v0

    .line 704
    .local v0, "e":Landroid/os/RemoteException;
    const-string v6, "ActivityManager"

    const-string v13, "Failure checking voice capabilities"

    invoke-static {v6, v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 705
    const/16 v6, -0x61

    .line 705
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v59    # "err":I
    .restart local v6    # "err":I
    goto :goto_198

    .line 710
    :cond_194
    move/from16 v59, v6

    .line 710
    .end local v6    # "err":I
    .restart local v59    # "err":I
    :cond_196
    move/from16 v6, v59

    .line 710
    .end local v59    # "err":I
    .restart local v6    # "err":I
    :goto_198
    if-nez v6, :cond_1dc

    if-eqz p7, :cond_1dc

    .line 714
    :try_start_19c
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    invoke-interface {v0, v13, v1, v2}, Landroid/content/pm/IPackageManager;->activitySupportsIntent(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1ca

    .line 716
    const-string v0, "ActivityManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1b3
    .catch Landroid/os/RemoteException; {:try_start_19c .. :try_end_1b3} :catch_1cd

    move/from16 v60, v6

    :try_start_1b5
    const-string v6, "Activity being started in new voice task does not support: "

    .line 716
    .end local v6    # "err":I
    .local v60, "err":I
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c4
    .catch Landroid/os/RemoteException; {:try_start_1b5 .. :try_end_1c4} :catch_1c8

    .line 719
    const/16 v0, -0x61

    .line 724
    .end local v60    # "err":I
    .local v0, "err":I
    move v6, v0

    goto :goto_1cc

    .line 721
    .end local v0    # "err":I
    .restart local v60    # "err":I
    :catch_1c8
    move-exception v0

    goto :goto_1d0

    .line 724
    .end local v60    # "err":I
    .restart local v6    # "err":I
    :cond_1ca
    move/from16 v60, v6

    :goto_1cc
    goto :goto_1d9

    .line 721
    :catch_1cd
    move-exception v0

    move/from16 v60, v6

    .line 722
    .end local v6    # "err":I
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v60    # "err":I
    :goto_1d0
    const-string v6, "ActivityManager"

    const-string v13, "Failure checking voice capabilities"

    invoke-static {v6, v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 723
    const/16 v6, -0x61

    .line 727
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1d9
    move/from16 v60, v6

    goto :goto_1de

    .line 727
    .end local v60    # "err":I
    .restart local v6    # "err":I
    :cond_1dc
    move/from16 v60, v6

    .line 727
    .end local v6    # "err":I
    .restart local v60    # "err":I
    :goto_1de
    if-nez v5, :cond_1e3

    const/16 v52, 0x0

    goto :goto_1e9

    :cond_1e3
    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    move-object/from16 v52, v0

    .line 729
    .local v52, "resultStack":Lcom/android/server/am/ActivityStack;
    :goto_1e9
    if-eqz v60, :cond_204

    .line 732
    if-eqz v5, :cond_200

    const/16 v6, -0x3e9

    if-eq v8, v6, :cond_200

    .line 735
    const/16 v53, -0x1

    const/16 v57, 0x0

    const/16 v58, 0x0

    move-object/from16 v54, v5

    move-object/from16 v55, v30

    move/from16 v56, v8

    invoke-virtual/range {v52 .. v58}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 738
    :cond_200
    invoke-static/range {p18 .. p18}, Lcom/android/server/am/SafeActivityOptions;->abort(Lcom/android/server/am/SafeActivityOptions;)V

    .line 739
    return v60

    .line 742
    :cond_204
    new-instance v0, Lcom/android/server/am/ActivityStackSupervisorInjector$OpCheckData;

    invoke-direct {v0}, Lcom/android/server/am/ActivityStackSupervisorInjector$OpCheckData;-><init>()V

    move-object v13, v0

    .line 743
    .local v13, "checker":Lcom/android/server/am/ActivityStackSupervisorInjector$OpCheckData;
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v0, v13, Lcom/android/server/am/ActivityStackSupervisorInjector$OpCheckData;->service:Lcom/android/server/am/ActivityManagerService;

    .line 744
    iput-object v1, v13, Lcom/android/server/am/ActivityStackSupervisorInjector$OpCheckData;->orginalintent:Landroid/content/Intent;

    .line 745
    iput-object v2, v13, Lcom/android/server/am/ActivityStackSupervisorInjector$OpCheckData;->resolvedType:Ljava/lang/String;

    .line 746
    iput v4, v13, Lcom/android/server/am/ActivityStackSupervisorInjector$OpCheckData;->startFlags:I

    .line 747
    iput-object v5, v13, Lcom/android/server/am/ActivityStackSupervisorInjector$OpCheckData;->resultRecord:Lcom/android/server/am/ActivityRecord;

    .line 748
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-object v0, v13, Lcom/android/server/am/ActivityStackSupervisorInjector$OpCheckData;->stackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 749
    iput v7, v13, Lcom/android/server/am/ActivityStackSupervisorInjector$OpCheckData;->userId:I

    .line 751
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    if-eqz p22, :cond_223

    const/16 v25, 0x1

    goto :goto_225

    :cond_223
    const/16 v25, 0x0

    :goto_225
    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v18, v3

    move-object/from16 v19, v30

    move/from16 v20, v8

    move/from16 v21, v31

    move/from16 v22, v10

    move-object/from16 v23, v12

    move/from16 v24, p19

    move-object/from16 v26, v9

    move-object/from16 v27, v5

    move-object/from16 v28, v52

    move-object/from16 v29, v13

    invoke-virtual/range {v16 .. v29}, Lcom/android/server/am/ActivityStackSupervisor;->checkStartAnyActivityPermission(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIILjava/lang/String;ZZLcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityStackSupervisorInjector$OpCheckData;)Z

    move-result v0

    const/4 v6, 0x1

    xor-int/2addr v0, v6

    .line 756
    .local v0, "abort":Z
    iget-object v6, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    iget-object v11, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v61, v14

    const/4 v14, 0x1

    .line 756
    .end local v14    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    .local v61, "sourceRecord":Lcom/android/server/am/ActivityRecord;
    move/from16 v62, v7

    move-object v7, v1

    .line 756
    .end local v7    # "userId":I
    .local v62, "userId":I
    move/from16 v63, v8

    move v8, v10

    .line 756
    .end local v8    # "requestCode":I
    .local v63, "requestCode":I
    move-object/from16 v64, v9

    move/from16 v9, v31

    .line 756
    .end local v9    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .local v64, "callerApp":Lcom/android/server/am/ProcessRecord;
    move/from16 v25, v10

    move-object v10, v2

    .line 756
    .end local v10    # "callingUid":I
    .local v25, "callingUid":I
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/firewall/IntentFirewall;->checkStartActivity(Landroid/content/Intent;IILjava/lang/String;Landroid/content/pm/ApplicationInfo;)Z

    move-result v6

    xor-int/2addr v6, v14

    or-int/2addr v0, v6

    .line 760
    if-nez v0, :cond_273

    iget-object v6, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 761
    move-object v8, v1

    move-object v9, v12

    move/from16 v10, v25

    move-object v11, v3

    invoke-static/range {v6 .. v11}, Lcom/android/server/am/ExtraActivityManagerService;->isAllowedStartActivity(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;Landroid/content/Intent;Ljava/lang/String;ILandroid/content/pm/ActivityInfo;)Z

    move-result v6

    if-nez v6, :cond_273

    .line 762
    const/4 v0, 0x1

    .line 767
    .end local v0    # "abort":Z
    .local v6, "abort":Z
    :cond_273
    move v6, v0

    move-object/from16 v11, p18

    if-eqz v11, :cond_281

    .line 768
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v10, v64

    invoke-virtual {v11, v1, v3, v10, v0}, Lcom/android/server/am/SafeActivityOptions;->getOptions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 768
    .end local v64    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .local v10, "callerApp":Lcom/android/server/am/ProcessRecord;
    goto :goto_284

    .line 769
    .end local v10    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v64    # "callerApp":Lcom/android/server/am/ProcessRecord;
    :cond_281
    move-object/from16 v10, v64

    .line 769
    .end local v64    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v10    # "callerApp":Lcom/android/server/am/ProcessRecord;
    const/4 v0, 0x0

    .line 771
    .local v0, "checkedOptions":Landroid/app/ActivityOptions;
    :goto_284
    iget-object v7, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v7, v0}, Lcom/android/server/am/ActivityStarterInjector;->checkFreeformSupport(Lcom/android/server/am/ActivityManagerService;Landroid/app/ActivityOptions;)V

    .line 772
    if-eqz p23, :cond_299

    .line 773
    iget-object v7, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->getActivityStartController()Lcom/android/server/am/ActivityStartController;

    move-result-object v7

    .line 774
    invoke-virtual {v7}, Lcom/android/server/am/ActivityStartController;->getPendingRemoteAnimationRegistry()Lcom/android/server/am/PendingRemoteAnimationRegistry;

    move-result-object v7

    .line 775
    invoke-virtual {v7, v12, v0}, Lcom/android/server/am/PendingRemoteAnimationRegistry;->overrideOptionsIfNeeded(Ljava/lang/String;Landroid/app/ActivityOptions;)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 777
    .end local v0    # "checkedOptions":Landroid/app/ActivityOptions;
    .local v26, "checkedOptions":Landroid/app/ActivityOptions;
    :cond_299
    move-object/from16 v26, v0

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v0, :cond_2be

    .line 781
    :try_start_2a1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v0

    .line 782
    .local v0, "watchIntent":Landroid/content/Intent;
    iget-object v7, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    iget-object v8, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v7, v0, v8}, Landroid/app/IActivityController;->activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v7
    :try_end_2b1
    .catch Landroid/os/RemoteException; {:try_start_2a1 .. :try_end_2b1} :catch_2b7

    xor-int/2addr v7, v14

    or-int/2addr v6, v7

    .line 786
    .end local v0    # "watchIntent":Landroid/content/Intent;
    nop

    .line 789
    move v0, v6

    const/4 v9, 0x0

    goto :goto_2c0

    .line 784
    :catch_2b7
    move-exception v0

    .line 785
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v7, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v9, 0x0

    iput-object v9, v7, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    .line 785
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_2bf

    .line 789
    :cond_2be
    const/4 v9, 0x0

    :goto_2bf
    move v0, v6

    .line 789
    .end local v6    # "abort":Z
    .local v0, "abort":Z
    :goto_2c0
    iget-object v6, v15, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    move/from16 v7, v62

    move/from16 v8, p15

    move/from16 v9, p16

    move-object/from16 v29, v10

    move v10, v4

    .line 789
    .end local v10    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .local v29, "callerApp":Lcom/android/server/am/ProcessRecord;
    move-object v11, v12

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/am/ActivityStartInterceptor;->setStates(IIIILjava/lang/String;)V

    .line 790
    iget-object v6, v15, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    move-object/from16 v16, v6

    move-object/from16 v17, v1

    move-object/from16 v18, p6

    move-object/from16 v19, v3

    move-object/from16 v20, v2

    move-object/from16 v21, p22

    move/from16 v22, v31

    move/from16 v23, v25

    move-object/from16 v24, v26

    invoke-virtual/range {v16 .. v24}, Lcom/android/server/am/ActivityStartInterceptor;->intercept(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/pm/ActivityInfo;Ljava/lang/String;Lcom/android/server/am/TaskRecord;IILandroid/app/ActivityOptions;)Z

    move-result v6

    if-eqz v6, :cond_30f

    .line 794
    iget-object v6, v15, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget-object v1, v6, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 795
    .end local p2    # "intent":Landroid/content/Intent;
    .local v1, "intent":Landroid/content/Intent;
    iget-object v6, v15, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget-object v6, v6, Lcom/android/server/am/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 796
    .end local p6    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v6, "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v15, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget-object v3, v7, Lcom/android/server/am/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    .line 797
    .end local p5    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v3, "aInfo":Landroid/content/pm/ActivityInfo;
    iget-object v7, v15, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget-object v2, v7, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 798
    .end local p4    # "resolvedType":Ljava/lang/String;
    .local v2, "resolvedType":Ljava/lang/String;
    iget-object v7, v15, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget-object v7, v7, Lcom/android/server/am/ActivityStartInterceptor;->mInTask:Lcom/android/server/am/TaskRecord;

    .line 799
    .end local p22    # "inTask":Lcom/android/server/am/TaskRecord;
    .local v7, "inTask":Lcom/android/server/am/TaskRecord;
    iget-object v8, v15, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget v8, v8, Lcom/android/server/am/ActivityStartInterceptor;->mCallingPid:I

    .line 800
    .end local v31    # "callingPid":I
    .local v8, "callingPid":I
    iget-object v9, v15, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget v10, v9, Lcom/android/server/am/ActivityStartInterceptor;->mCallingUid:I

    .line 801
    .end local v25    # "callingUid":I
    .local v10, "callingUid":I
    iget-object v9, v15, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    iget-object v9, v9, Lcom/android/server/am/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 804
    .end local v26    # "checkedOptions":Landroid/app/ActivityOptions;
    .local v9, "checkedOptions":Landroid/app/ActivityOptions;
    move-object/from16 v49, v7

    move-object v11, v9

    move/from16 v25, v10

    goto :goto_317

    .line 804
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "resolvedType":Ljava/lang/String;
    .end local v3    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v6    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v7    # "inTask":Lcom/android/server/am/TaskRecord;
    .end local v8    # "callingPid":I
    .end local v9    # "checkedOptions":Landroid/app/ActivityOptions;
    .end local v10    # "callingUid":I
    .restart local v25    # "callingUid":I
    .restart local v26    # "checkedOptions":Landroid/app/ActivityOptions;
    .restart local v31    # "callingPid":I
    .restart local p2    # "intent":Landroid/content/Intent;
    .restart local p4    # "resolvedType":Ljava/lang/String;
    .restart local p5    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local p6    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local p22    # "inTask":Lcom/android/server/am/TaskRecord;
    :cond_30f
    move-object/from16 v6, p6

    move-object/from16 v49, p22

    move-object/from16 v11, v26

    move/from16 v8, v31

    .line 804
    .end local v26    # "checkedOptions":Landroid/app/ActivityOptions;
    .end local v31    # "callingPid":I
    .end local p2    # "intent":Landroid/content/Intent;
    .end local p4    # "resolvedType":Ljava/lang/String;
    .end local p5    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local p6    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local p22    # "inTask":Lcom/android/server/am/TaskRecord;
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "resolvedType":Ljava/lang/String;
    .restart local v3    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v6    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v8    # "callingPid":I
    .local v11, "checkedOptions":Landroid/app/ActivityOptions;
    .local v49, "inTask":Lcom/android/server/am/TaskRecord;
    :goto_317
    if-eqz v0, :cond_33b

    .line 807
    if-eqz v5, :cond_333

    move/from16 v10, v63

    const/16 v7, -0x3e9

    if-eq v10, v7, :cond_335

    .line 810
    .end local v63    # "requestCode":I
    .local v10, "requestCode":I
    const/16 v17, -0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v52

    move-object/from16 v18, v5

    move-object/from16 v19, v30

    move/from16 v20, v10

    invoke-virtual/range {v16 .. v22}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    goto :goto_335

    .line 815
    .end local v10    # "requestCode":I
    .restart local v63    # "requestCode":I
    :cond_333
    move/from16 v10, v63

    .line 815
    .end local v63    # "requestCode":I
    .restart local v10    # "requestCode":I
    :cond_335
    :goto_335
    invoke-static {v11}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 816
    const/16 v7, 0x66

    return v7

    .line 819
    .end local v10    # "requestCode":I
    .restart local v63    # "requestCode":I
    :cond_33b
    move/from16 v10, v63

    .line 819
    .end local v63    # "requestCode":I
    .restart local v10    # "requestCode":I
    iget-object v7, v13, Lcom/android/server/am/ActivityStackSupervisorInjector$OpCheckData;->newAInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v7, :cond_34d

    .line 820
    iget-object v6, v13, Lcom/android/server/am/ActivityStackSupervisorInjector$OpCheckData;->newRInfo:Landroid/content/pm/ResolveInfo;

    .line 821
    iget-object v3, v13, Lcom/android/server/am/ActivityStackSupervisorInjector$OpCheckData;->newAInfo:Landroid/content/pm/ActivityInfo;

    .line 822
    iget-object v1, v13, Lcom/android/server/am/ActivityStackSupervisorInjector$OpCheckData;->newIntent:Landroid/content/Intent;

    .line 823
    const/4 v2, 0x0

    .line 824
    move/from16 v7, p16

    .line 825
    .end local v25    # "callingUid":I
    .local v7, "callingUid":I
    move/from16 v8, p15

    goto :goto_34f

    .line 831
    .end local v7    # "callingUid":I
    .restart local v25    # "callingUid":I
    :cond_34d
    move/from16 v7, v25

    .line 831
    .end local v25    # "callingUid":I
    .restart local v7    # "callingUid":I
    :goto_34f
    iget-object v9, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v9, v9, Lcom/android/server/am/ActivityManagerService;->mPermissionReviewRequired:Z

    if-eqz v9, :cond_404

    if-eqz v3, :cond_404

    .line 832
    iget-object v9, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v9

    iget-object v14, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v65, v13

    move/from16 v13, v62

    invoke-virtual {v9, v14, v13}, Landroid/content/pm/PackageManagerInternal;->isPermissionsReviewRequired(Ljava/lang/String;I)Z

    move-result v9

    .end local v62    # "userId":I
    .local v13, "userId":I
    .local v65, "checker":Lcom/android/server/am/ActivityStackSupervisorInjector$OpCheckData;
    if-eqz v9, :cond_3fa

    .line 834
    iget-object v9, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    const/16 v17, 0x2

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v66, v0

    const/4 v14, 0x1

    new-array v0, v14, [Landroid/content/Intent;

    .line 834
    .end local v0    # "abort":Z
    .local v66, "abort":Z
    move/from16 v67, v8

    const/4 v8, 0x0

    aput-object v1, v0, v8

    .line 834
    .end local v8    # "callingPid":I
    .local v67, "callingPid":I
    move-object/from16 v68, v6

    new-array v6, v14, [Ljava/lang/String;

    .line 834
    .end local v6    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v68, "rInfo":Landroid/content/pm/ResolveInfo;
    aput-object v2, v6, v8

    const/high16 v26, 0x50000000

    const/16 v27, 0x0

    move-object/from16 v16, v9

    move-object/from16 v18, v12

    move/from16 v19, v7

    move/from16 v20, v13

    move-object/from16 v24, v0

    move-object/from16 v25, v6

    invoke-virtual/range {v16 .. v27}, Lcom/android/server/am/ActivityManagerService;->getIntentSenderLocked(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v0

    .line 840
    .local v0, "target":Landroid/content/IIntentSender;
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v6

    .line 841
    .local v6, "flags":I
    new-instance v9, Landroid/content/Intent;

    const-string v14, "android.intent.action.REVIEW_PERMISSIONS"

    invoke-direct {v9, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 842
    .local v9, "newIntent":Landroid/content/Intent;
    const/high16 v14, 0x800000

    or-int/2addr v14, v6

    invoke-virtual {v9, v14}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 844
    const-string v14, "android.intent.extra.PACKAGE_NAME"

    iget-object v8, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v14, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 845
    const-string v8, "android.intent.extra.INTENT"

    new-instance v14, Landroid/content/IntentSender;

    invoke-direct {v14, v0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    invoke-virtual {v9, v8, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 848
    if-eqz v5, :cond_3c5

    const/16 v8, -0x3e9

    if-eq v10, v8, :cond_3c5

    .line 851
    const-string v8, "android.intent.extra.RESULT_NEEDED"

    const/4 v14, 0x1

    invoke-virtual {v9, v8, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 853
    :cond_3c5
    move-object v1, v9

    .line 855
    const/4 v2, 0x0

    .line 856
    move/from16 v7, p16

    .line 857
    move/from16 v8, p15

    .line 859
    .end local v67    # "callingPid":I
    .restart local v8    # "callingPid":I
    iget-object v14, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/16 v20, 0x0

    move-object/from16 v69, v0

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    .line 859
    .end local v0    # "target":Landroid/content/IIntentSender;
    .local v69, "target":Landroid/content/IIntentSender;
    iget v0, v0, Lcom/android/server/am/ActivityStarter$Request;->filterCallingUid:I

    .line 860
    move-object/from16 v70, v9

    move/from16 v9, p16

    invoke-static {v7, v9, v0}, Lcom/android/server/am/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v21

    .line 859
    .end local v9    # "newIntent":Landroid/content/Intent;
    .local v70, "newIntent":Landroid/content/Intent;
    move-object/from16 v16, v14

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    move/from16 v19, v13

    invoke-virtual/range {v16 .. v21}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 862
    .end local v68    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v0, "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v14, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move/from16 v71, v8

    const/4 v8, 0x0

    invoke-virtual {v14, v1, v0, v4, v8}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 878
    .end local v6    # "flags":I
    .end local v8    # "callingPid":I
    .end local v69    # "target":Landroid/content/IIntentSender;
    .end local v70    # "newIntent":Landroid/content/Intent;
    .local v71, "callingPid":I
    move-object/from16 v16, v1

    move-object v14, v2

    move-object/from16 v18, v3

    move/from16 v17, v7

    goto :goto_41c

    .line 878
    .end local v66    # "abort":Z
    .end local v71    # "callingPid":I
    .local v0, "abort":Z
    .local v6, "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v8    # "callingPid":I
    :cond_3fa
    move/from16 v9, p16

    move/from16 v66, v0

    move-object/from16 v68, v6

    move/from16 v67, v8

    const/4 v8, 0x0

    .line 878
    .end local v0    # "abort":Z
    .end local v6    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v8    # "callingPid":I
    .restart local v66    # "abort":Z
    .restart local v67    # "callingPid":I
    .restart local v68    # "rInfo":Landroid/content/pm/ResolveInfo;
    goto :goto_411

    .line 878
    .end local v65    # "checker":Lcom/android/server/am/ActivityStackSupervisorInjector$OpCheckData;
    .end local v66    # "abort":Z
    .end local v67    # "callingPid":I
    .end local v68    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v0    # "abort":Z
    .restart local v6    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v8    # "callingPid":I
    .local v13, "checker":Lcom/android/server/am/ActivityStackSupervisorInjector$OpCheckData;
    .restart local v62    # "userId":I
    :cond_404
    move/from16 v9, p16

    move/from16 v66, v0

    move-object/from16 v68, v6

    move/from16 v67, v8

    move-object/from16 v65, v13

    move/from16 v13, v62

    const/4 v8, 0x0

    .line 878
    .end local v0    # "abort":Z
    .end local v6    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v8    # "callingPid":I
    .end local v62    # "userId":I
    .local v13, "userId":I
    .restart local v65    # "checker":Lcom/android/server/am/ActivityStackSupervisorInjector$OpCheckData;
    .restart local v66    # "abort":Z
    .restart local v67    # "callingPid":I
    .restart local v68    # "rInfo":Landroid/content/pm/ResolveInfo;
    :goto_411
    move-object/from16 v16, v1

    move-object v14, v2

    move-object/from16 v18, v3

    move/from16 v17, v7

    move/from16 v71, v67

    move-object/from16 v0, v68

    .line 878
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "resolvedType":Ljava/lang/String;
    .end local v3    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v7    # "callingUid":I
    .end local v67    # "callingPid":I
    .end local v68    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v0, "rInfo":Landroid/content/pm/ResolveInfo;
    .local v14, "resolvedType":Ljava/lang/String;
    .local v16, "intent":Landroid/content/Intent;
    .local v17, "callingUid":I
    .local v18, "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v71    # "callingPid":I
    :goto_41c
    if-eqz v0, :cond_448

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->auxiliaryInfo:Landroid/content/pm/AuxiliaryResolveInfo;

    if-eqz v1, :cond_448

    .line 879
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->auxiliaryInfo:Landroid/content/pm/AuxiliaryResolveInfo;

    move-object v1, v15

    move-object/from16 v3, p3

    move v7, v4

    move-object v4, v12

    move-object v6, v14

    move v8, v7

    move v7, v13

    move-object/from16 v19, v5

    move-object/from16 v5, v51

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/ActivityStarter;->createLaunchIntent(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 881
    .end local v16    # "intent":Landroid/content/Intent;
    .end local v51    # "verificationBundle":Landroid/os/Bundle;
    .restart local v1    # "intent":Landroid/content/Intent;
    .local v5, "verificationBundle":Landroid/os/Bundle;
    .local v19, "resultRecord":Lcom/android/server/am/ActivityRecord;
    const/4 v2, 0x0

    .line 882
    .end local v14    # "resolvedType":Ljava/lang/String;
    .restart local v2    # "resolvedType":Ljava/lang/String;
    move v3, v9

    .line 883
    .end local v17    # "callingUid":I
    .local v3, "callingUid":I
    move/from16 v4, p15

    .line 885
    .end local v71    # "callingPid":I
    .local v4, "callingPid":I
    iget-object v6, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v7, 0x0

    invoke-virtual {v6, v1, v0, v8, v7}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    .line 888
    .end local v18    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v6, "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v16, v1

    move/from16 v17, v3

    move/from16 v71, v4

    move-object/from16 v18, v6

    goto :goto_44e

    .line 888
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "resolvedType":Ljava/lang/String;
    .end local v3    # "callingUid":I
    .end local v4    # "callingPid":I
    .end local v6    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v19    # "resultRecord":Lcom/android/server/am/ActivityRecord;
    .local v5, "resultRecord":Lcom/android/server/am/ActivityRecord;
    .restart local v14    # "resolvedType":Ljava/lang/String;
    .restart local v16    # "intent":Landroid/content/Intent;
    .restart local v17    # "callingUid":I
    .restart local v18    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v51    # "verificationBundle":Landroid/os/Bundle;
    .restart local v71    # "callingPid":I
    :cond_448
    move v8, v4

    move-object/from16 v19, v5

    move-object/from16 v5, v51

    .line 888
    .end local v51    # "verificationBundle":Landroid/os/Bundle;
    .local v5, "verificationBundle":Landroid/os/Bundle;
    .restart local v19    # "resultRecord":Lcom/android/server/am/ActivityRecord;
    move-object v2, v14

    .line 888
    .end local v14    # "resolvedType":Ljava/lang/String;
    .restart local v2    # "resolvedType":Ljava/lang/String;
    :goto_44e
    new-instance v1, Lcom/android/server/am/ActivityRecord;

    iget-object v3, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 889
    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v40

    if-eqz p7, :cond_45d

    const/16 v45, 0x1

    goto :goto_45f

    :cond_45d
    const/16 v45, 0x0

    :goto_45f
    iget-object v4, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v31, v1

    move-object/from16 v32, v3

    move-object/from16 v33, v29

    move/from16 v34, v71

    move/from16 v35, v17

    move-object/from16 v36, v12

    move-object/from16 v37, v16

    move-object/from16 v38, v2

    move-object/from16 v39, v18

    move-object/from16 v41, v19

    move-object/from16 v42, v30

    move/from16 v43, v10

    move/from16 v44, p20

    move-object/from16 v46, v4

    move-object/from16 v47, v11

    move-object/from16 v48, v61

    invoke-direct/range {v31 .. v48}, Lcom/android/server/am/ActivityRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;IILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IZZLcom/android/server/am/ActivityStackSupervisor;Landroid/app/ActivityOptions;Lcom/android/server/am/ActivityRecord;)V

    .line 892
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz p21, :cond_48a

    .line 893
    const/4 v3, 0x0

    aput-object v1, p21, v3

    goto :goto_48b

    .line 896
    :cond_48a
    const/4 v3, 0x0

    :goto_48b
    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-nez v4, :cond_498

    if-eqz v61, :cond_498

    .line 899
    move-object/from16 v4, v61

    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 899
    .end local v61    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    .local v4, "sourceRecord":Lcom/android/server/am/ActivityRecord;
    iput-object v6, v1, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    goto :goto_49a

    .line 902
    .end local v4    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    .restart local v61    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    :cond_498
    move-object/from16 v4, v61

    .line 902
    .end local v61    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    .restart local v4    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    :goto_49a
    iget-object v6, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v14, v6, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 906
    .local v14, "stack":Lcom/android/server/am/ActivityStack;
    if-nez p7, :cond_4f4

    invoke-virtual {v14}, Lcom/android/server/am/ActivityStack;->getResumedActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    if-eqz v6, :cond_4bb

    .line 907
    invoke-virtual {v14}, Lcom/android/server/am/ActivityStack;->getResumedActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v6, v9, :cond_4b3

    goto :goto_4bb

    .line 919
    :cond_4b3
    move-object/from16 v72, v0

    move/from16 v21, v10

    move-object v3, v11

    move-object/from16 v20, v12

    goto :goto_4fb

    .line 908
    :cond_4bb
    :goto_4bb
    iget-object v6, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v20, "Activity start"

    move/from16 v7, v71

    move/from16 v8, v17

    move/from16 v9, p15

    move/from16 v21, v10

    move/from16 v10, p16

    .line 908
    .end local v10    # "requestCode":I
    .local v21, "requestCode":I
    move-object v3, v11

    move-object/from16 v11, v20

    .line 908
    .end local v11    # "checkedOptions":Landroid/app/ActivityOptions;
    .local v3, "checkedOptions":Landroid/app/ActivityOptions;
    move-object/from16 v20, v12

    move-object/from16 v12, v16

    .line 908
    .end local v12    # "callingPackage":Ljava/lang/String;
    .local v20, "callingPackage":Ljava/lang/String;
    invoke-virtual/range {v6 .. v12}, Lcom/android/server/am/ActivityManagerService;->checkAppSwitchAllowedLocked(IIIILjava/lang/String;Landroid/content/Intent;)Z

    move-result v6

    if-nez v6, :cond_4f1

    .line 912
    iget-object v12, v15, Lcom/android/server/am/ActivityStarter;->mController:Lcom/android/server/am/ActivityStartController;

    new-instance v11, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;

    move-object v6, v11

    move-object v7, v1

    move-object v8, v4

    move/from16 v9, p17

    move-object v10, v14

    move-object/from16 v72, v0

    move-object v0, v11

    move-object/from16 v11, v29

    .line 912
    .end local v0    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v72, "rInfo":Landroid/content/pm/ResolveInfo;
    invoke-direct/range {v6 .. v11}, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;-><init>(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/ActivityStack;Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v12, v0}, Lcom/android/server/am/ActivityStartController;->addPendingActivityLaunch(Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;)V

    .line 914
    invoke-static {v3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 915
    const/16 v0, 0x64

    return v0

    .line 919
    .end local v72    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v0    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_4f1
    move-object/from16 v72, v0

    .line 919
    .end local v0    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v72    # "rInfo":Landroid/content/pm/ResolveInfo;
    goto :goto_4fb

    .line 919
    .end local v3    # "checkedOptions":Landroid/app/ActivityOptions;
    .end local v20    # "callingPackage":Ljava/lang/String;
    .end local v21    # "requestCode":I
    .end local v72    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v0    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v10    # "requestCode":I
    .restart local v11    # "checkedOptions":Landroid/app/ActivityOptions;
    .restart local v12    # "callingPackage":Ljava/lang/String;
    :cond_4f4
    move-object/from16 v72, v0

    move/from16 v21, v10

    move-object v3, v11

    move-object/from16 v20, v12

    .line 919
    .end local v0    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v10    # "requestCode":I
    .end local v11    # "checkedOptions":Landroid/app/ActivityOptions;
    .end local v12    # "callingPackage":Ljava/lang/String;
    .restart local v3    # "checkedOptions":Landroid/app/ActivityOptions;
    .restart local v20    # "callingPackage":Ljava/lang/String;
    .restart local v21    # "requestCode":I
    .restart local v72    # "rInfo":Landroid/content/pm/ResolveInfo;
    :goto_4fb
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mDidAppSwitch:Z

    if-eqz v0, :cond_508

    .line 925
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    const-wide/16 v6, 0x0

    iput-wide v6, v0, Lcom/android/server/am/ActivityManagerService;->mAppSwitchesAllowedTime:J

    goto :goto_50d

    .line 927
    :cond_508
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x1

    iput-boolean v6, v0, Lcom/android/server/am/ActivityManagerService;->mDidAppSwitch:Z

    .line 930
    :goto_50d
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mController:Lcom/android/server/am/ActivityStartController;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/android/server/am/ActivityStartController;->doPendingActivityLaunches(Z)V

    .line 932
    const/4 v12, 0x1

    move-object v6, v15

    move-object v7, v1

    move-object v8, v4

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p17

    move/from16 v22, v13

    move-object/from16 v23, v65

    move-object v13, v3

    .line 932
    .end local v13    # "userId":I
    .end local v65    # "checker":Lcom/android/server/am/ActivityStackSupervisorInjector$OpCheckData;
    .local v22, "userId":I
    .local v23, "checker":Lcom/android/server/am/ActivityStackSupervisorInjector$OpCheckData;
    move-object v0, v14

    move-object/from16 v14, v49

    .line 932
    .end local v14    # "stack":Lcom/android/server/am/ActivityStack;
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v15, p21

    invoke-direct/range {v6 .. v15}, Lcom/android/server/am/ActivityStarter;->startActivity(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;[Lcom/android/server/am/ActivityRecord;)I

    move-result v6

    return v6
.end method

.method private startActivity(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;[Lcom/android/server/am/ActivityRecord;)I
    .registers 22
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p4, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p5, "startFlags"    # I
    .param p6, "doResume"    # Z
    .param p7, "options"    # Landroid/app/ActivityOptions;
    .param p8, "inTask"    # Lcom/android/server/am/TaskRecord;
    .param p9, "outActivity"    # [Lcom/android/server/am/ActivityRecord;

    move-object v1, p0

    move-object v2, p1

    .line 1313
    iget-object v0, v1, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mCastActivity:Lcom/android/server/am/ActivityRecord;

    const/4 v3, 0x0

    if-eqz v0, :cond_32

    iget-object v0, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_32

    iget-object v0, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mCastActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 1314
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1315
    iget-object v0, v1, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mCastActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 1316
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    const-string v5, "exitCastMode"

    invoke-virtual {v4, v5, v0}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;Lcom/android/server/am/TaskRecord;)V

    .line 1317
    iget-object v4, v1, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->resumeCastActivity()V

    .line 1318
    return v3

    .line 1320
    .end local v0    # "task":Lcom/android/server/am/TaskRecord;
    :cond_32
    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/ActivityStarterInjector;->getLastFrame(Ljava/lang/String;)Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_40

    .line 1321
    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityRecord;->setLastFrame(Z)V

    .line 1324
    :cond_40
    const/16 v0, -0x60

    move v5, v0

    .line 1326
    .local v5, "result":I
    :try_start_43
    iget-object v0, v1, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 1328
    iget-object v0, v1, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 1329
    .local v0, "topStack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_55

    .line 1330
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    goto :goto_56

    :cond_55
    const/4 v6, 0x0

    .line 1331
    .local v6, "lastActivity":Lcom/android/server/am/ActivityRecord;
    :goto_56
    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->isActivityTypeHome()Z

    move-result v7

    .line 1332
    .local v7, "isGoHome":Z
    if-eqz v6, :cond_63

    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->isActivityTypeHome()Z

    move-result v8

    if-eqz v8, :cond_63

    goto :goto_64

    :cond_63
    move v4, v3

    :goto_64
    move v3, v4

    .line 1334
    .local v3, "isFromHome":Z
    invoke-direct/range {p0 .. p9}, Lcom/android/server/am/ActivityStarter;->startActivityUnchecked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;[Lcom/android/server/am/ActivityRecord;)I

    move-result v4

    move v5, v4

    .line 1337
    if-eqz v7, :cond_7b

    if-nez v3, :cond_7b

    .line 1338
    if-ltz v5, :cond_75

    .line 1339
    iget-object v4, v1, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivityStackSupervisor;->updateMiuiAnimationInfo(Lcom/android/server/am/ActivityRecord;)V

    .line 1341
    :cond_75
    iget-object v4, v1, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivityStackSupervisor;->setIsMultiWindowMode(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_84

    .line 1342
    :cond_7b
    if-eqz v3, :cond_84

    if-nez v7, :cond_84

    .line 1343
    iget-object v4, v1, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4, v2}, Lcom/android/server/am/ActivityStackSupervisor;->setIsMultiWindowMode(Lcom/android/server/am/ActivityRecord;)V
    :try_end_84
    .catchall {:try_start_43 .. :try_end_84} :catchall_ac

    .line 1350
    .end local v0    # "topStack":Lcom/android/server/am/ActivityStack;
    .end local v3    # "isFromHome":Z
    .end local v6    # "lastActivity":Lcom/android/server/am/ActivityRecord;
    .end local v7    # "isGoHome":Z
    :cond_84
    :goto_84
    iget-object v0, v1, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 1351
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    invoke-static {v5}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v3

    if-nez v3, :cond_9e

    if-eqz v0, :cond_9e

    .line 1352
    iget-object v7, v1, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string/jumbo v10, "startActivity"

    const/4 v11, 0x1

    move-object v6, v0

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 1355
    :cond_9e
    iget-object v3, v1, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 1356
    .end local v0    # "stack":Lcom/android/server/am/ActivityStack;
    nop

    .line 1358
    iget-object v0, v1, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1, v2, v5, v0}, Lcom/android/server/am/ActivityStarter;->postStartActivityProcessing(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/ActivityStack;)V

    .line 1360
    return v5

    .line 1350
    :catchall_ac
    move-exception v0

    iget-object v3, v1, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 1351
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    invoke-static {v5}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v4

    if-nez v4, :cond_c7

    if-eqz v3, :cond_c7

    .line 1352
    iget-object v7, v1, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x1

    const-string/jumbo v10, "startActivity"

    move-object v6, v3

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 1355
    :cond_c7
    iget-object v4, v1, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 1356
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    throw v0
.end method

.method private startActivityMayWait(Landroid/app/IApplicationThread;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/app/WaitResult;Landroid/content/res/Configuration;Lcom/android/server/am/SafeActivityOptions;ZILcom/android/server/am/TaskRecord;Ljava/lang/String;Z)I
    .registers 74
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p7, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p8, "resultTo"    # Landroid/os/IBinder;
    .param p9, "resultWho"    # Ljava/lang/String;
    .param p10, "requestCode"    # I
    .param p11, "startFlags"    # I
    .param p12, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p13, "outResult"    # Landroid/app/WaitResult;
    .param p14, "globalConfig"    # Landroid/content/res/Configuration;
    .param p15, "options"    # Lcom/android/server/am/SafeActivityOptions;
    .param p16, "ignoreTargetSecurity"    # Z
    .param p17, "userId"    # I
    .param p18, "inTask"    # Lcom/android/server/am/TaskRecord;
    .param p19, "reason"    # Ljava/lang/String;
    .param p20, "allowPendingRemoteAnimationRegistryLookup"    # Z

    move-object/from16 v15, p0

    move-object/from16 v1, p1

    move-object/from16 v0, p4

    move-object/from16 v14, p12

    move-object/from16 v3, p13

    move-object/from16 v2, p14

    move/from16 v13, p17

    .line 1035
    if-eqz v0, :cond_1f

    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v4

    if-nez v4, :cond_17

    goto :goto_1f

    .line 1036
    :cond_17
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "File descriptors passed in Intent"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1038
    :cond_1f
    :goto_1f
    iget-object v4, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/am/ActivityMetricsLogger;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/ActivityMetricsLogger;->notifyActivityLaunching()V

    .line 1039
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_30

    const/4 v4, 0x1

    goto :goto_31

    :cond_30
    const/4 v4, 0x0

    :goto_31
    move v5, v4

    .line 1041
    .local v5, "componentSpecified":Z
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v29

    .line 1042
    .local v29, "realCallingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 1045
    .local v10, "realCallingUid":I
    if-ltz p2, :cond_40

    .line 1046
    const/4 v6, -0x1

    .line 1051
    .local v6, "callingPid":I
    move/from16 v9, p2

    goto :goto_4a

    .line 1047
    .end local v6    # "callingPid":I
    :cond_40
    if-nez v1, :cond_47

    .line 1048
    move/from16 v6, v29

    .line 1049
    .restart local v6    # "callingPid":I
    move v4, v10

    .line 1051
    .end local p2    # "callingUid":I
    .local v4, "callingUid":I
    .local v9, "callingUid":I
    :goto_45
    move v9, v4

    goto :goto_4a

    .line 1051
    .end local v4    # "callingUid":I
    .end local v6    # "callingPid":I
    .end local v9    # "callingUid":I
    .restart local p2    # "callingUid":I
    :cond_47
    const/4 v6, -0x1

    move v4, v6

    goto :goto_45

    .line 1051
    .end local p2    # "callingUid":I
    .restart local v6    # "callingPid":I
    .restart local v9    # "callingUid":I
    :goto_4a
    move v8, v6

    .line 1055
    .end local v6    # "callingPid":I
    .local v8, "callingPid":I
    move-object/from16 v7, p3

    invoke-static {v0, v7}, Lcom/android/server/am/ExtraActivityManagerService;->hookStartActivity(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1059
    .end local p4    # "intent":Landroid/content/Intent;
    .local v0, "intent":Landroid/content/Intent;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1061
    .local v4, "ephemeralIntent":Landroid/content/Intent;
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1062
    .end local v0    # "intent":Landroid/content/Intent;
    .local v6, "intent":Landroid/content/Intent;
    const/4 v0, 0x0

    if-eqz v5, :cond_9c

    const-string v11, "android.intent.action.VIEW"

    .line 1063
    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_70

    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    if-eqz v11, :cond_9c

    :cond_70
    const-string v11, "android.intent.action.INSTALL_INSTANT_APP_PACKAGE"

    .line 1064
    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9c

    const-string v11, "android.intent.action.RESOLVE_INSTANT_APP_PACKAGE"

    .line 1065
    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9c

    iget-object v11, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1066
    invoke-virtual {v11}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v11

    .line 1067
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManagerInternal;->isInstantAppInstallerComponent(Landroid/content/ComponentName;)Z

    move-result v11

    if-eqz v11, :cond_9c

    .line 1071
    invoke-virtual {v6, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1072
    const/4 v5, 0x0

    .line 1075
    .end local v5    # "componentSpecified":Z
    .local v32, "componentSpecified":Z
    :cond_9c
    move/from16 v32, v5

    iget-object v5, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v11, 0x0

    iget-object v12, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v12, v12, Lcom/android/server/am/ActivityStarter$Request;->filterCallingUid:I

    .line 1077
    invoke-static {v9, v10, v12}, Lcom/android/server/am/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v12

    .line 1075
    move-object/from16 v33, v6

    .line 1075
    .end local v6    # "intent":Landroid/content/Intent;
    .local v33, "intent":Landroid/content/Intent;
    move-object/from16 v7, p5

    move v3, v8

    move v8, v13

    .line 1075
    .end local v8    # "callingPid":I
    .local v3, "callingPid":I
    move-object/from16 v35, v4

    move v4, v9

    move v9, v11

    .line 1075
    .end local v9    # "callingUid":I
    .local v4, "callingUid":I
    .local v35, "ephemeralIntent":Landroid/content/Intent;
    move v11, v10

    move v10, v12

    .line 1075
    .end local v10    # "realCallingUid":I
    .local v11, "realCallingUid":I
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v12

    .line 1079
    .local v12, "rInfo":Landroid/content/pm/ResolveInfo;
    if-nez v12, :cond_129

    .line 1080
    iget-object v5, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5, v13}, Lcom/android/server/am/ActivityStackSupervisor;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v10

    .line 1081
    .local v10, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v10, :cond_129

    invoke-virtual {v10}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_129

    .line 1085
    iget-object v5, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v9

    .line 1086
    .local v9, "userManager":Landroid/os/UserManager;
    const/4 v5, 0x0

    .line 1087
    .local v5, "profileLockedAndParentUnlockingOrUnlocked":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    move-wide v7, v6

    .line 1089
    .local v7, "token":J
    :try_start_d7
    invoke-virtual {v9, v13}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v6
    :try_end_db
    .catchall {:try_start_d7 .. :try_end_db} :catchall_11c

    .line 1090
    .local v6, "parent":Landroid/content/pm/UserInfo;
    if-eqz v6, :cond_f5

    :try_start_dd
    iget v0, v6, Landroid/content/pm/UserInfo;->id:I

    .line 1091
    invoke-virtual {v9, v0}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    if-eqz v0, :cond_f5

    .line 1092
    invoke-virtual {v9, v13}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v0
    :try_end_e9
    .catchall {:try_start_dd .. :try_end_e9} :catchall_ed

    if-nez v0, :cond_f5

    const/4 v0, 0x1

    goto :goto_f6

    .line 1094
    .end local v6    # "parent":Landroid/content/pm/UserInfo;
    :catchall_ed
    move-exception v0

    move-wide/from16 v36, v7

    move-object/from16 v18, v9

    move-object/from16 v16, v10

    goto :goto_123

    .line 1092
    .restart local v6    # "parent":Landroid/content/pm/UserInfo;
    :cond_f5
    const/4 v0, 0x0

    .line 1094
    .end local v5    # "profileLockedAndParentUnlockingOrUnlocked":Z
    .end local v6    # "parent":Landroid/content/pm/UserInfo;
    .local v0, "profileLockedAndParentUnlockingOrUnlocked":Z
    :goto_f6
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1095
    nop

    .line 1096
    if-eqz v0, :cond_129

    .line 1097
    iget-object v5, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/high16 v16, 0xc0000

    iget-object v6, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v6, v6, Lcom/android/server/am/ActivityStarter$Request;->filterCallingUid:I

    .line 1100
    invoke-static {v4, v11, v6}, Lcom/android/server/am/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v17

    .line 1097
    move-object/from16 v6, v33

    move-wide/from16 v36, v7

    move-object/from16 v7, p5

    .line 1097
    .end local v7    # "token":J
    .local v36, "token":J
    move v8, v13

    move-object/from16 v18, v9

    move/from16 v9, v16

    .line 1097
    .end local v9    # "userManager":Landroid/os/UserManager;
    .local v18, "userManager":Landroid/os/UserManager;
    move-object/from16 v16, v10

    move/from16 v10, v17

    .line 1097
    .end local v10    # "userInfo":Landroid/content/pm/UserInfo;
    .local v16, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v12

    .line 1097
    .end local v0    # "profileLockedAndParentUnlockingOrUnlocked":Z
    .end local v16    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v18    # "userManager":Landroid/os/UserManager;
    .end local v36    # "token":J
    goto :goto_129

    .line 1094
    .restart local v5    # "profileLockedAndParentUnlockingOrUnlocked":Z
    .restart local v7    # "token":J
    .restart local v9    # "userManager":Landroid/os/UserManager;
    .restart local v10    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_11c
    move-exception v0

    move-wide/from16 v36, v7

    move-object/from16 v18, v9

    move-object/from16 v16, v10

    .line 1094
    .end local v7    # "token":J
    .end local v9    # "userManager":Landroid/os/UserManager;
    .end local v10    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v16    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v18    # "userManager":Landroid/os/UserManager;
    .restart local v36    # "token":J
    :goto_123
    move-wide/from16 v6, v36

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1094
    .end local v36    # "token":J
    .local v6, "token":J
    throw v0

    .line 1106
    .end local v5    # "profileLockedAndParentUnlockingOrUnlocked":Z
    .end local v6    # "token":J
    .end local v16    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v18    # "userManager":Landroid/os/UserManager;
    :cond_129
    :goto_129
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move/from16 v10, p11

    move-object/from16 v9, v33

    invoke-virtual {v0, v9, v12, v10, v14}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 1109
    .end local v33    # "intent":Landroid/content/Intent;
    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    .local v9, "intent":Landroid/content/Intent;
    if-nez v0, :cond_13c

    .line 1110
    const-string v5, "ActivityManager"

    const-string v6, "aInfo is null"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    :cond_13c
    invoke-virtual {v9}, Landroid/content/Intent;->getMiuiFlags()I

    move-result v8

    .line 1113
    .local v8, "miuiFlags":I
    invoke-static {}, Lcom/android/server/am/ActivityStackSupervisorInjector;->isXSpaceActive()Z

    move-result v5

    if-eqz v5, :cond_17f

    .line 1114
    iget-object v5, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    if-eqz p8, :cond_14f

    const/16 v16, 0x1

    goto :goto_151

    :cond_14f
    const/16 v16, 0x0

    :goto_151
    move-object v6, v0

    move-object v7, v9

    move/from16 v38, v3

    move v3, v8

    move/from16 v8, v16

    .end local v8    # "miuiFlags":I
    .local v3, "miuiFlags":I
    .local v38, "callingPid":I
    move-object/from16 v16, v9

    move/from16 v9, p10

    .line 1114
    .end local v9    # "intent":Landroid/content/Intent;
    .local v16, "intent":Landroid/content/Intent;
    move v10, v13

    move/from16 v39, v11

    move-object/from16 v11, p3

    .line 1114
    .end local v11    # "realCallingUid":I
    .local v39, "realCallingUid":I
    invoke-static/range {v5 .. v11}, Lcom/android/server/am/ActivityStackSupervisorInjector;->checkXSpaceControl(Landroid/content/Context;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;ZIILjava/lang/String;)Landroid/content/Intent;

    move-result-object v16

    .line 1115
    iget-object v7, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object v5, v0

    move-object/from16 v6, v16

    move-object v8, v14

    move-object/from16 v9, p5

    move/from16 v10, p11

    move v11, v13

    move-object/from16 v40, v0

    move-object/from16 v30, v12

    const/4 v0, 0x1

    move-object/from16 v12, p3

    .end local v0    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v12    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v30, "rInfo":Landroid/content/pm/ResolveInfo;
    .local v40, "aInfo":Landroid/content/pm/ActivityInfo;
    invoke-static/range {v5 .. v12}, Lcom/android/server/am/ActivityStackSupervisorInjector;->resolveXSpaceIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Lcom/android/server/am/ActivityStackSupervisor;Landroid/app/ProfilerInfo;Ljava/lang/String;IILjava/lang/String;)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    .line 1117
    .end local v40    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v5, "aInfo":Landroid/content/pm/ActivityInfo;
    move-object v12, v5

    move-object/from16 v31, v16

    goto :goto_18f

    .line 1117
    .end local v5    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v16    # "intent":Landroid/content/Intent;
    .end local v30    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v38    # "callingPid":I
    .end local v39    # "realCallingUid":I
    .restart local v0    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v3, "callingPid":I
    .restart local v8    # "miuiFlags":I
    .restart local v9    # "intent":Landroid/content/Intent;
    .restart local v11    # "realCallingUid":I
    .restart local v12    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_17f
    move-object/from16 v40, v0

    move/from16 v38, v3

    move v3, v8

    move-object/from16 v16, v9

    move/from16 v39, v11

    move-object/from16 v30, v12

    const/4 v0, 0x1

    move-object/from16 v31, v16

    move-object/from16 v12, v40

    .end local v0    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v8    # "miuiFlags":I
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v11    # "realCallingUid":I
    .local v3, "miuiFlags":I
    .local v12, "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v30    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v31, "intent":Landroid/content/Intent;
    .restart local v38    # "callingPid":I
    .restart local v39    # "realCallingUid":I
    :goto_18f
    iget-object v5, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v6, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v11, v7, Lcom/android/server/am/ActivityManagerService;->mSystemReady:Z

    move-object v7, v1

    move-object v8, v12

    move-object/from16 v9, v31

    move v10, v13

    move-object/from16 v41, v12

    move-object/from16 v12, p3

    .end local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v41, "aInfo":Landroid/content/pm/ActivityInfo;
    invoke-static/range {v5 .. v12}, Lcom/android/server/am/ExtraActivityManagerService;->checkRunningCompatibility(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Landroid/app/IApplicationThread;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;IZLjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1aa

    .line 1119
    const/4 v0, 0x5

    return v0

    .line 1121
    :cond_1aa
    iget-object v5, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v6, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    if-eqz p8, :cond_1b5

    .line 1123
    move/from16 v22, v0

    goto :goto_1b8

    .line 1121
    :cond_1b5
    nop

    .line 1123
    const/16 v22, 0x0

    :goto_1b8
    if-nez p15, :cond_1bd

    .line 1121
    const/16 v28, 0x0

    goto :goto_1c3

    .line 1123
    :cond_1bd
    invoke-virtual/range {p15 .. p15}, Lcom/android/server/am/SafeActivityOptions;->getActivityOptionsBundle()Landroid/os/Bundle;

    move-result-object v7

    .line 1121
    move-object/from16 v28, v7

    :goto_1c3
    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move-object/from16 v18, v1

    move-object/from16 v19, v41

    move-object/from16 v20, v31

    move-object/from16 v21, p5

    move/from16 v23, p10

    move/from16 v24, p16

    move/from16 v25, v13

    move/from16 v26, v4

    move-object/from16 v27, p3

    invoke-static/range {v16 .. v28}, Lcom/android/server/am/ExtraActivityManagerService;->checkStartActivityPermission(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Landroid/app/IApplicationThread;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Ljava/lang/String;ZIZIILjava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v11

    .line 1124
    .end local v31    # "intent":Landroid/content/Intent;
    .local v11, "intent":Landroid/content/Intent;
    iget-object v5, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v6, v41

    invoke-static {v6, v11, v5, v14, v13}, Lcom/android/server/am/ExtraActivityManagerService;->resolveCheckIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Lcom/android/server/am/ActivityStackSupervisor;Landroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v12

    .line 1126
    .end local v41    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    iget-object v9, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v10, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v11

    move-object v6, v12

    move-object/from16 v7, p15

    move-object v8, v1

    invoke-static/range {v5 .. v10}, Lcom/android/server/am/ExtraActivityManagerService;->requestSplashScreen(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/am/SafeActivityOptions;Landroid/app/IApplicationThread;Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityManagerService;)Landroid/content/Intent;

    move-result-object v5

    .line 1127
    .end local v11    # "intent":Landroid/content/Intent;
    .local v5, "intent":Landroid/content/Intent;
    iget-object v6, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 1128
    invoke-static {v12, v5, v6, v14, v13}, Lcom/android/server/am/ExtraActivityManagerService;->resolveSplashIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Lcom/android/server/am/ActivityStackSupervisor;Landroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v11

    .line 1130
    .end local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v11, "aInfo":Landroid/content/pm/ActivityInfo;
    invoke-virtual {v5, v3}, Landroid/content/Intent;->setMiuiFlags(I)Landroid/content/Intent;

    .line 1132
    iget-object v12, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v12

    :try_start_1fe
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1133
    iget-object v6, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v6, v6, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;
    :try_end_205
    .catchall {:try_start_1fe .. :try_end_205} :catchall_603

    move-object v10, v6

    .line 1134
    .local v10, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v2, :cond_22f

    :try_start_208
    iget-object v6, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1135
    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v6
    :try_end_212
    .catchall {:try_start_208 .. :try_end_212} :catchall_216

    if-eqz v6, :cond_22f

    move v6, v0

    goto :goto_230

    .line 1288
    .end local v10    # "stack":Lcom/android/server/am/ActivityStack;
    :catchall_216
    move-exception v0

    move-object/from16 v45, p5

    move-object/from16 v44, v1

    move-object v8, v2

    move/from16 v34, v3

    move/from16 v28, v4

    move-object v6, v15

    move-object/from16 v4, v35

    move/from16 v3, v38

    move/from16 v27, v39

    move-object/from16 v9, p13

    move-object/from16 v38, v12

    move-object/from16 v12, v30

    goto/16 :goto_61b

    .line 1135
    .restart local v10    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_22f
    const/4 v6, 0x0

    :goto_230
    :try_start_230
    iput-boolean v6, v10, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    .line 1139
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6
    :try_end_236
    .catchall {:try_start_230 .. :try_end_236} :catchall_603

    move-wide v8, v6

    .line 1141
    .local v8, "origId":J
    const/4 v7, 0x2

    if-eqz v11, :cond_4ab

    :try_start_23a
    iget-object v6, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/2addr v6, v7

    if-eqz v6, :cond_4ab

    iget-object v6, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v6, v6, Lcom/android/server/am/ActivityManagerService;->mHasHeavyWeightFeature:Z

    if-eqz v6, :cond_4ab

    .line 1147
    iget-object v6, v11, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v7, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4ab

    .line 1148
    iget-object v6, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    move-object v7, v6

    .line 1149
    .local v7, "heavy":Lcom/android/server/am/ProcessRecord;
    if-eqz v7, :cond_4ab

    iget-object v6, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v0, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_262
    .catchall {:try_start_23a .. :try_end_262} :catchall_490

    if-ne v6, v0, :cond_27b

    :try_start_264
    iget-object v0, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v6, v11, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 1150
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_26c
    .catchall {:try_start_264 .. :try_end_26c} :catchall_216

    if-nez v0, :cond_26f

    goto :goto_27b

    .line 1208
    .end local v7    # "heavy":Lcom/android/server/am/ProcessRecord;
    :cond_26f
    move/from16 v43, v3

    move-wide/from16 v49, v8

    move-object/from16 v51, v10

    move/from16 v3, v38

    move/from16 v27, v39

    goto/16 :goto_4b5

    .line 1151
    .restart local v7    # "heavy":Lcom/android/server/am/ProcessRecord;
    :cond_27b
    :goto_27b
    move v0, v4

    .line 1152
    .local v0, "appCallingUid":I
    if-eqz v1, :cond_31a

    .line 1153
    :try_start_27e
    iget-object v6, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6, v1}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v6
    :try_end_284
    .catchall {:try_start_27e .. :try_end_284} :catchall_2ff

    .line 1154
    .local v6, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v6, :cond_294

    .line 1155
    move/from16 v42, v0

    :try_start_288
    iget-object v0, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 1155
    .end local v0    # "appCallingUid":I
    .local v42, "appCallingUid":I
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_28c
    .catchall {:try_start_288 .. :try_end_28c} :catchall_216

    .line 1165
    .end local v42    # "appCallingUid":I
    .restart local v0    # "appCallingUid":I
    move/from16 v42, v0

    move/from16 v43, v3

    move/from16 v3, v38

    goto/16 :goto_320

    .line 1157
    :cond_294
    move/from16 v42, v0

    .line 1157
    .end local v0    # "appCallingUid":I
    .restart local v42    # "appCallingUid":I
    :try_start_296
    const-string v0, "ActivityManager"
    :try_end_298
    .catchall {:try_start_296 .. :try_end_298} :catchall_2ff

    :try_start_298
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_29d
    .catchall {:try_start_298 .. :try_end_29d} :catchall_2e8

    move/from16 v43, v3

    :try_start_29f
    const-string v3, "Unable to find app for caller "

    .line 1157
    .end local v3    # "miuiFlags":I
    .local v43, "miuiFlags":I
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " (pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2ac
    .catchall {:try_start_29f .. :try_end_2ac} :catchall_2ce

    move/from16 v3, v38

    :try_start_2ae
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v38    # "callingPid":I
    .local v3, "callingPid":I
    const-string v1, ") when starting: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1159
    invoke-virtual {v5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1157
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    invoke-static/range {p15 .. p15}, Lcom/android/server/am/SafeActivityOptions;->abort(Lcom/android/server/am/SafeActivityOptions;)V

    .line 1161
    const/16 v0, -0x5e

    monitor-exit v12
    :try_end_2ca
    .catchall {:try_start_2ae .. :try_end_2ca} :catchall_358

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v0

    .line 1288
    .end local v3    # "callingPid":I
    .end local v6    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v7    # "heavy":Lcom/android/server/am/ProcessRecord;
    .end local v8    # "origId":J
    .end local v10    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v42    # "appCallingUid":I
    .restart local v38    # "callingPid":I
    :catchall_2ce
    move-exception v0

    move/from16 v3, v38

    move-object/from16 v45, p5

    move/from16 v28, v4

    move-object/from16 v38, v12

    move-object v6, v15

    move-object/from16 v12, v30

    move-object/from16 v4, v35

    move/from16 v27, v39

    move/from16 v34, v43

    move-object/from16 v8, p14

    move-object/from16 v9, p13

    move-object/from16 v44, p1

    .end local v38    # "callingPid":I
    .restart local v3    # "callingPid":I
    goto/16 :goto_61b

    .line 1288
    .end local v43    # "miuiFlags":I
    .local v3, "miuiFlags":I
    .restart local v38    # "callingPid":I
    :catchall_2e8
    move-exception v0

    move/from16 v43, v3

    move/from16 v3, v38

    move-object/from16 v45, p5

    move/from16 v28, v4

    move-object/from16 v38, v12

    move-object v6, v15

    move-object/from16 v12, v30

    move-object/from16 v4, v35

    move/from16 v27, v39

    move/from16 v34, v43

    move-object/from16 v8, p14

    goto :goto_314

    :catchall_2ff
    move-exception v0

    move/from16 v43, v3

    move/from16 v3, v38

    move-object/from16 v45, p5

    move-object v8, v2

    move/from16 v28, v4

    move-object/from16 v38, v12

    move-object v6, v15

    move-object/from16 v12, v30

    move-object/from16 v4, v35

    move/from16 v27, v39

    move/from16 v34, v43

    .end local v30    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v35    # "ephemeralIntent":Landroid/content/Intent;
    .end local v39    # "realCallingUid":I
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p5    # "resolvedType":Ljava/lang/String;
    .local v4, "ephemeralIntent":Landroid/content/Intent;
    .local v12, "rInfo":Landroid/content/pm/ResolveInfo;
    .local v27, "realCallingUid":I
    .local v28, "callingUid":I
    .local v34, "miuiFlags":I
    .local v44, "caller":Landroid/app/IApplicationThread;
    .local v45, "resolvedType":Ljava/lang/String;
    :goto_314
    move-object/from16 v9, p13

    move-object/from16 v44, p1

    .line 1288
    .end local v38    # "callingPid":I
    .local v3, "callingPid":I
    .restart local v43    # "miuiFlags":I
    goto/16 :goto_61b

    .line 1165
    .end local v12    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v27    # "realCallingUid":I
    .end local v28    # "callingUid":I
    .end local v34    # "miuiFlags":I
    .end local v43    # "miuiFlags":I
    .end local v44    # "caller":Landroid/app/IApplicationThread;
    .end local v45    # "resolvedType":Ljava/lang/String;
    .restart local v0    # "appCallingUid":I
    .local v3, "miuiFlags":I
    .local v4, "callingUid":I
    .restart local v7    # "heavy":Lcom/android/server/am/ProcessRecord;
    .restart local v8    # "origId":J
    .restart local v10    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v30    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v35    # "ephemeralIntent":Landroid/content/Intent;
    .restart local v38    # "callingPid":I
    .restart local v39    # "realCallingUid":I
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p5    # "resolvedType":Ljava/lang/String;
    :cond_31a
    move/from16 v42, v0

    move/from16 v43, v3

    move/from16 v3, v38

    .line 1165
    .end local v0    # "appCallingUid":I
    .end local v38    # "callingPid":I
    .local v3, "callingPid":I
    .restart local v42    # "appCallingUid":I
    .restart local v43    # "miuiFlags":I
    :goto_320
    :try_start_320
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    const/16 v17, 0x2

    const-string v18, "android"

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/content/Intent;

    const/4 v6, 0x0

    aput-object v5, v2, v6

    new-array v6, v1, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object p5, v6, v16

    const/high16 v26, 0x50000000

    const/16 v27, 0x0

    move-object/from16 v16, v0

    move/from16 v19, v42

    move/from16 v20, v13

    move-object/from16 v24, v2

    move-object/from16 v25, v6

    invoke-virtual/range {v16 .. v27}, Lcom/android/server/am/ActivityManagerService;->getIntentSenderLocked(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v0

    .line 1171
    .local v0, "target":Landroid/content/IIntentSender;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V
    :try_end_34f
    .catchall {:try_start_320 .. :try_end_34f} :catchall_478

    .line 1172
    .local v2, "newIntent":Landroid/content/Intent;
    if-ltz p10, :cond_370

    .line 1174
    :try_start_351
    const-string v6, "has_result"

    const/4 v1, 0x1

    invoke-virtual {v2, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_357
    .catchall {:try_start_351 .. :try_end_357} :catchall_358

    goto :goto_370

    .line 1288
    .end local v0    # "target":Landroid/content/IIntentSender;
    .end local v2    # "newIntent":Landroid/content/Intent;
    .end local v7    # "heavy":Lcom/android/server/am/ProcessRecord;
    .end local v8    # "origId":J
    .end local v10    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v42    # "appCallingUid":I
    :catchall_358
    move-exception v0

    move-object/from16 v45, p5

    move/from16 v28, v4

    move-object/from16 v38, v12

    move-object v6, v15

    move-object/from16 v12, v30

    move-object/from16 v4, v35

    move/from16 v27, v39

    move/from16 v34, v43

    move-object/from16 v8, p14

    move-object/from16 v9, p13

    move-object/from16 v44, p1

    goto/16 :goto_61b

    .line 1176
    .restart local v0    # "target":Landroid/content/IIntentSender;
    .restart local v2    # "newIntent":Landroid/content/Intent;
    .restart local v7    # "heavy":Lcom/android/server/am/ProcessRecord;
    .restart local v8    # "origId":J
    .restart local v10    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v42    # "appCallingUid":I
    :cond_370
    :goto_370
    :try_start_370
    const-string v1, "intent"

    new-instance v6, Landroid/content/IntentSender;

    invoke-direct {v6, v0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    invoke-virtual {v2, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1178
    iget-object v1, v7, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1
    :try_end_380
    .catchall {:try_start_370 .. :try_end_380} :catchall_478

    if-lez v1, :cond_3a0

    .line 1179
    :try_start_382
    iget-object v1, v7, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 1180
    .local v1, "hist":Lcom/android/server/am/ActivityRecord;
    const-string v6, "cur_app"

    move-object/from16 v46, v0

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 1180
    .end local v0    # "target":Landroid/content/IIntentSender;
    .local v46, "target":Landroid/content/IIntentSender;
    invoke-virtual {v2, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1182
    const-string v0, "cur_task"

    .line 1183
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 1182
    invoke-virtual {v2, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_39f
    .catchall {:try_start_382 .. :try_end_39f} :catchall_358

    .line 1182
    .end local v1    # "hist":Lcom/android/server/am/ActivityRecord;
    goto :goto_3a2

    .line 1185
    .end local v46    # "target":Landroid/content/IIntentSender;
    .restart local v0    # "target":Landroid/content/IIntentSender;
    :cond_3a0
    move-object/from16 v46, v0

    .line 1185
    .end local v0    # "target":Landroid/content/IIntentSender;
    .restart local v46    # "target":Landroid/content/IIntentSender;
    :goto_3a2
    :try_start_3a2
    const-string/jumbo v0, "new_app"

    iget-object v1, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1187
    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1188
    const-string v0, "android"

    const-class v1, Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    .line 1189
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1188
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_3bc
    .catchall {:try_start_3a2 .. :try_end_3bc} :catchall_478

    .line 1190
    const/4 v1, 0x0

    move-object v6, v2

    .line 1191
    .end local v5    # "intent":Landroid/content/Intent;
    .local v6, "intent":Landroid/content/Intent;
    const/16 v16, 0x0

    .line 1192
    .end local p5    # "resolvedType":Ljava/lang/String;
    .local v16, "resolvedType":Ljava/lang/String;
    const/16 v17, 0x0

    .line 1193
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .local v17, "caller":Landroid/app/IApplicationThread;
    :try_start_3c2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    move v4, v0

    .line 1194
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    move v3, v0

    .line 1195
    const/16 v32, 0x1

    .line 1196
    iget-object v5, v15, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v0, 0x0

    const/16 v18, 0x0

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v1, v1, Lcom/android/server/am/ActivityStarter$Request;->filterCallingUid:I
    :try_end_3d7
    .catchall {:try_start_3c2 .. :try_end_3d7} :catchall_460

    .line 1197
    move-wide/from16 v47, v8

    move/from16 v9, v39

    :try_start_3db
    invoke-static {v4, v9, v1}, Lcom/android/server/am/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v1
    :try_end_3df
    .catchall {:try_start_3db .. :try_end_3df} :catchall_447

    .line 1196
    .end local v8    # "origId":J
    .end local v39    # "realCallingUid":I
    .local v9, "realCallingUid":I
    .local v47, "origId":J
    move-object/from16 v19, v7

    const/4 v8, 0x2

    move-object v7, v0

    .line 1196
    .end local v7    # "heavy":Lcom/android/server/am/ProcessRecord;
    .local v19, "heavy":Lcom/android/server/am/ProcessRecord;
    move-wide/from16 v49, v47

    move v8, v13

    .line 1196
    .end local v47    # "origId":J
    .local v49, "origId":J
    move/from16 v27, v9

    move/from16 v9, v18

    .line 1196
    .end local v9    # "realCallingUid":I
    .restart local v27    # "realCallingUid":I
    move-object/from16 v51, v10

    move v10, v1

    .line 1196
    .end local v10    # "stack":Lcom/android/server/am/ActivityStack;
    .local v51, "stack":Lcom/android/server/am/ActivityStack;
    :try_start_3ed
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v0
    :try_end_3f1
    .catchall {:try_start_3ed .. :try_end_3f1} :catchall_432

    move-object v1, v0

    .line 1199
    .end local v30    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v1, "rInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_40d

    :try_start_3f4
    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_40e

    .line 1288
    .end local v2    # "newIntent":Landroid/content/Intent;
    .end local v19    # "heavy":Lcom/android/server/am/ProcessRecord;
    .end local v42    # "appCallingUid":I
    .end local v46    # "target":Landroid/content/IIntentSender;
    .end local v49    # "origId":J
    .end local v51    # "stack":Lcom/android/server/am/ActivityStack;
    :catchall_3f7
    move-exception v0

    move/from16 v28, v4

    move-object v5, v6

    move-object/from16 v38, v12

    move-object v6, v15

    move-object/from16 v45, v16

    move-object/from16 v44, v17

    move-object/from16 v4, v35

    move/from16 v34, v43

    move-object/from16 v8, p14

    move-object/from16 v9, p13

    move-object v12, v1

    goto/16 :goto_61b

    .line 1199
    .restart local v2    # "newIntent":Landroid/content/Intent;
    .restart local v19    # "heavy":Lcom/android/server/am/ProcessRecord;
    .restart local v42    # "appCallingUid":I
    .restart local v46    # "target":Landroid/content/IIntentSender;
    .restart local v49    # "origId":J
    .restart local v51    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_40d
    const/4 v0, 0x0

    :goto_40e
    move-object v11, v0

    .line 1200
    if-eqz v11, :cond_420

    .line 1201
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v11, v13}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0
    :try_end_417
    .catchall {:try_start_3f4 .. :try_end_417} :catchall_3f7

    .line 1208
    .end local v2    # "newIntent":Landroid/content/Intent;
    .end local v11    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v19    # "heavy":Lcom/android/server/am/ProcessRecord;
    .end local v42    # "appCallingUid":I
    .end local v46    # "target":Landroid/content/IIntentSender;
    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v31, v0

    move/from16 v36, v3

    move/from16 v28, v4

    move-object/from16 v30, v6

    goto :goto_428

    .line 1208
    .end local v0    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v11    # "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_420
    move/from16 v36, v3

    move/from16 v28, v4

    move-object/from16 v30, v6

    move-object/from16 v31, v11

    .line 1208
    .end local v1    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v3    # "callingPid":I
    .end local v4    # "callingUid":I
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v11    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v16    # "resolvedType":Ljava/lang/String;
    .end local v17    # "caller":Landroid/app/IApplicationThread;
    .restart local v28    # "callingUid":I
    .local v30, "intent":Landroid/content/Intent;
    .local v31, "aInfo":Landroid/content/pm/ActivityInfo;
    .local v32, "rInfo":Landroid/content/pm/ResolveInfo;
    .local v36, "callingPid":I
    .local v37, "componentSpecified":Z
    .restart local v44    # "caller":Landroid/app/IApplicationThread;
    .restart local v45    # "resolvedType":Ljava/lang/String;
    :goto_428
    move-object/from16 v45, v16

    move-object/from16 v44, v17

    move/from16 v37, v32

    move-object/from16 v32, v1

    goto/16 :goto_4c5

    .line 1288
    .end local v28    # "callingUid":I
    .end local v31    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v36    # "callingPid":I
    .end local v37    # "componentSpecified":Z
    .end local v44    # "caller":Landroid/app/IApplicationThread;
    .end local v45    # "resolvedType":Ljava/lang/String;
    .end local v49    # "origId":J
    .end local v51    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v3    # "callingPid":I
    .restart local v4    # "callingUid":I
    .restart local v6    # "intent":Landroid/content/Intent;
    .restart local v11    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v16    # "resolvedType":Ljava/lang/String;
    .restart local v17    # "caller":Landroid/app/IApplicationThread;
    .local v30, "rInfo":Landroid/content/pm/ResolveInfo;
    .local v32, "componentSpecified":Z
    :catchall_432
    move-exception v0

    move/from16 v28, v4

    move-object v5, v6

    move-object/from16 v38, v12

    move-object v6, v15

    move-object/from16 v45, v16

    move-object/from16 v44, v17

    move-object/from16 v12, v30

    move-object/from16 v4, v35

    move/from16 v34, v43

    move-object/from16 v8, p14

    goto/16 :goto_550

    .end local v27    # "realCallingUid":I
    .restart local v9    # "realCallingUid":I
    :catchall_447
    move-exception v0

    move/from16 v27, v9

    move/from16 v28, v4

    move-object v5, v6

    move-object/from16 v38, v12

    move-object v6, v15

    move-object/from16 v45, v16

    move-object/from16 v44, v17

    move-object/from16 v12, v30

    move-object/from16 v4, v35

    move/from16 v34, v43

    move-object/from16 v8, p14

    move-object/from16 v9, p13

    .end local v9    # "realCallingUid":I
    .restart local v27    # "realCallingUid":I
    goto/16 :goto_61b

    .line 1288
    .end local v27    # "realCallingUid":I
    .restart local v39    # "realCallingUid":I
    :catchall_460
    move-exception v0

    move/from16 v27, v39

    move/from16 v28, v4

    move-object v5, v6

    move-object/from16 v38, v12

    move-object v6, v15

    move-object/from16 v45, v16

    move-object/from16 v44, v17

    move-object/from16 v12, v30

    move-object/from16 v4, v35

    move/from16 v34, v43

    move-object/from16 v8, p14

    move-object/from16 v9, p13

    goto :goto_48e

    .end local v6    # "intent":Landroid/content/Intent;
    .end local v16    # "resolvedType":Ljava/lang/String;
    .end local v17    # "caller":Landroid/app/IApplicationThread;
    .restart local v5    # "intent":Landroid/content/Intent;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p5    # "resolvedType":Ljava/lang/String;
    :catchall_478
    move-exception v0

    move/from16 v27, v39

    move-object/from16 v45, p5

    move/from16 v28, v4

    move-object/from16 v38, v12

    move-object v6, v15

    move-object/from16 v12, v30

    move-object/from16 v4, v35

    move/from16 v34, v43

    move-object/from16 v8, p14

    move-object/from16 v9, p13

    move-object/from16 v44, p1

    .end local v30    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v35    # "ephemeralIntent":Landroid/content/Intent;
    .end local v39    # "realCallingUid":I
    .end local v43    # "miuiFlags":I
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p5    # "resolvedType":Ljava/lang/String;
    .local v4, "ephemeralIntent":Landroid/content/Intent;
    .restart local v12    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v27    # "realCallingUid":I
    .restart local v28    # "callingUid":I
    .restart local v34    # "miuiFlags":I
    .restart local v44    # "caller":Landroid/app/IApplicationThread;
    .restart local v45    # "resolvedType":Ljava/lang/String;
    :goto_48e
    goto/16 :goto_61b

    .line 1288
    .end local v12    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v27    # "realCallingUid":I
    .end local v28    # "callingUid":I
    .end local v34    # "miuiFlags":I
    .end local v44    # "caller":Landroid/app/IApplicationThread;
    .end local v45    # "resolvedType":Ljava/lang/String;
    .local v3, "miuiFlags":I
    .local v4, "callingUid":I
    .restart local v30    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v35    # "ephemeralIntent":Landroid/content/Intent;
    .restart local v38    # "callingPid":I
    .restart local v39    # "realCallingUid":I
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p5    # "resolvedType":Ljava/lang/String;
    :catchall_490
    move-exception v0

    move/from16 v43, v3

    move/from16 v3, v38

    move/from16 v27, v39

    move-object/from16 v45, p5

    move-object v8, v2

    move/from16 v28, v4

    move-object/from16 v38, v12

    move-object v6, v15

    move-object/from16 v12, v30

    move-object/from16 v4, v35

    move/from16 v34, v43

    move-object/from16 v9, p13

    move-object/from16 v44, p1

    .end local v38    # "callingPid":I
    .end local v39    # "realCallingUid":I
    .local v3, "callingPid":I
    .restart local v27    # "realCallingUid":I
    .restart local v43    # "miuiFlags":I
    goto/16 :goto_61b

    .line 1208
    .end local v27    # "realCallingUid":I
    .end local v43    # "miuiFlags":I
    .local v3, "miuiFlags":I
    .restart local v8    # "origId":J
    .restart local v10    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v38    # "callingPid":I
    .restart local v39    # "realCallingUid":I
    :cond_4ab
    move/from16 v43, v3

    move-wide/from16 v49, v8

    move-object/from16 v51, v10

    move/from16 v3, v38

    move/from16 v27, v39

    .line 1208
    .end local v8    # "origId":J
    .end local v10    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v38    # "callingPid":I
    .end local v39    # "realCallingUid":I
    .local v3, "callingPid":I
    .restart local v27    # "realCallingUid":I
    .restart local v43    # "miuiFlags":I
    .restart local v49    # "origId":J
    .restart local v51    # "stack":Lcom/android/server/am/ActivityStack;
    :goto_4b5
    move-object/from16 v45, p5

    move/from16 v36, v3

    move/from16 v28, v4

    move-object/from16 v31, v11

    move/from16 v37, v32

    move-object/from16 v44, p1

    move-object/from16 v32, v30

    move-object/from16 v30, v5

    .end local v3    # "callingPid":I
    .end local v4    # "callingUid":I
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v11    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p5    # "resolvedType":Ljava/lang/String;
    .restart local v28    # "callingUid":I
    .local v30, "intent":Landroid/content/Intent;
    .restart local v31    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v32, "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v36    # "callingPid":I
    .restart local v37    # "componentSpecified":Z
    .restart local v44    # "caller":Landroid/app/IApplicationThread;
    .restart local v45    # "resolvedType":Ljava/lang/String;
    :goto_4c5
    move-object/from16 v5, v51

    move-object/from16 v6, v44

    move/from16 v7, v28

    move-object/from16 v8, p3

    move-object/from16 v9, v30

    move-object/from16 v10, v31

    move-object/from16 v11, p8

    move-object/from16 v38, v12

    move/from16 v12, p10

    move/from16 v13, p17

    :try_start_4d9
    invoke-static/range {v5 .. v13}, Lcom/android/server/am/ActivityStackSupervisorInjector;->updateInfoBeforeRealStartActivity(Lcom/android/server/am/ActivityStack;Landroid/app/IApplicationThread;ILjava/lang/String;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;II)V

    .line 1213
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/server/am/ActivityRecord;
    :try_end_4df
    .catchall {:try_start_4d9 .. :try_end_4df} :catchall_5ee

    move-object/from16 v39, v0

    .line 1214
    .local v39, "outRecord":[Lcom/android/server/am/ActivityRecord;
    const/4 v4, 0x0

    move-object v1, v15

    move-object/from16 v13, p14

    move-object/from16 v2, v44

    move/from16 v34, v43

    move-object/from16 v12, p13

    move-object/from16 v3, v30

    .line 1214
    .end local v43    # "miuiFlags":I
    .restart local v34    # "miuiFlags":I
    move-object/from16 v5, v45

    move-object/from16 v6, v31

    move-object/from16 v7, v32

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, v36

    move/from16 v14, v28

    move-object/from16 v15, p3

    move/from16 v16, v29

    move/from16 v17, v27

    move/from16 v18, p11

    move-object/from16 v19, p15

    move/from16 v20, p16

    move/from16 v21, v37

    move-object/from16 v22, v39

    move-object/from16 v23, p18

    move-object/from16 v24, p19

    move/from16 v25, p20

    move-object/from16 v4, v35

    :try_start_519
    invoke-direct/range {v1 .. v25}, Lcom/android/server/am/ActivityStarter;->startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ResolveInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILcom/android/server/am/SafeActivityOptions;ZZ[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;Ljava/lang/String;Z)I

    move-result v0

    .end local v35    # "ephemeralIntent":Landroid/content/Intent;
    .local v4, "ephemeralIntent":Landroid/content/Intent;
    move v1, v0

    .line 1220
    .local v1, "res":I
    move-wide/from16 v2, v49

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1222
    .end local v49    # "origId":J
    .local v2, "origId":J
    move-object/from16 v5, v51

    iget-boolean v0, v5, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z
    :try_end_527
    .catchall {:try_start_519 .. :try_end_527} :catchall_5dc

    .line 1222
    .end local v51    # "stack":Lcom/android/server/am/ActivityStack;
    .local v5, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_554

    .line 1227
    move-object/from16 v6, p0

    :try_start_52b
    iget-object v0, v6, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v7, "android.permission.CHANGE_CONFIGURATION"

    const-string/jumbo v8, "updateConfiguration()"

    invoke-virtual {v0, v7, v8}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    const/4 v7, 0x0

    iput-boolean v7, v5, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    .line 1232
    iget-object v0, v6, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;
    :try_end_53a
    .catchall {:try_start_52b .. :try_end_53a} :catchall_543

    move-object/from16 v8, p14

    const/4 v9, 0x0

    :try_start_53d
    invoke-virtual {v0, v8, v9, v7}, Lcom/android/server/am/ActivityManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;Z)Z
    :try_end_540
    .catchall {:try_start_53d .. :try_end_540} :catchall_541

    goto :goto_559

    .line 1288
    .end local v1    # "res":I
    .end local v2    # "origId":J
    .end local v5    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v39    # "outRecord":[Lcom/android/server/am/ActivityRecord;
    :catchall_541
    move-exception v0

    goto :goto_546

    :catchall_543
    move-exception v0

    move-object/from16 v8, p14

    .line 1288
    .end local v30    # "intent":Landroid/content/Intent;
    .end local v31    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v36    # "callingPid":I
    .end local v37    # "componentSpecified":Z
    .restart local v3    # "callingPid":I
    .local v5, "intent":Landroid/content/Intent;
    .restart local v11    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v12    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v32, "componentSpecified":Z
    :goto_546
    move-object/from16 v5, v30

    move-object/from16 v11, v31

    move-object/from16 v12, v32

    move/from16 v3, v36

    move/from16 v32, v37

    :goto_550
    move-object/from16 v9, p13

    goto/16 :goto_61b

    .line 1235
    .end local v3    # "callingPid":I
    .end local v11    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v12    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v1    # "res":I
    .restart local v2    # "origId":J
    .local v5, "stack":Lcom/android/server/am/ActivityStack;
    .restart local v30    # "intent":Landroid/content/Intent;
    .restart local v31    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v32, "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v36    # "callingPid":I
    .restart local v37    # "componentSpecified":Z
    .restart local v39    # "outRecord":[Lcom/android/server/am/ActivityRecord;
    :cond_554
    move-object/from16 v6, p0

    const/4 v7, 0x0

    move-object/from16 v8, p14

    :goto_559
    move-object/from16 v9, p13

    if-eqz v9, :cond_5cc

    .line 1236
    :try_start_55d
    iput v1, v9, Landroid/app/WaitResult;->result:I

    .line 1238
    aget-object v0, v39, v7

    move-object v10, v0

    .line 1240
    .local v10, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_5a9

    const-wide/16 v11, 0x0

    packed-switch v1, :pswitch_data_622

    .line 1240
    .end local v10    # "r":Lcom/android/server/am/ActivityRecord;
    goto :goto_5cc

    .line 1256
    .restart local v10    # "r":Lcom/android/server/am/ActivityRecord;
    :pswitch_56a
    iput-boolean v7, v9, Landroid/app/WaitResult;->timeout:Z

    .line 1257
    iget-object v0, v10, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iput-object v0, v9, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    .line 1258
    iput-wide v11, v9, Landroid/app/WaitResult;->totalTime:J

    .line 1259
    iput-wide v11, v9, Landroid/app/WaitResult;->thisTime:J

    .line 1260
    goto :goto_5cc

    .line 1265
    :pswitch_575
    iget-boolean v0, v10, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v0, :cond_58c

    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v10, v0}, Lcom/android/server/am/ActivityRecord;->isState(Lcom/android/server/am/ActivityStack$ActivityState;)Z

    move-result v0

    if-eqz v0, :cond_58c

    .line 1266
    iput-boolean v7, v9, Landroid/app/WaitResult;->timeout:Z

    .line 1267
    iget-object v0, v10, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iput-object v0, v9, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    .line 1268
    iput-wide v11, v9, Landroid/app/WaitResult;->totalTime:J

    .line 1269
    iput-wide v11, v9, Landroid/app/WaitResult;->thisTime:J

    goto :goto_5cc

    .line 1271
    :cond_58c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    iput-wide v11, v9, Landroid/app/WaitResult;->thisTime:J

    .line 1272
    iget-object v0, v6, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v11, v10, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v11, v9}, Lcom/android/server/am/ActivityStackSupervisor;->waitActivityVisible(Landroid/content/ComponentName;Landroid/app/WaitResult;)V
    :try_end_599
    .catchall {:try_start_55d .. :try_end_599} :catchall_5ca

    .line 1276
    :cond_599
    :try_start_599
    iget-object v0, v6, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_59e
    .catch Ljava/lang/InterruptedException; {:try_start_599 .. :try_end_59e} :catch_59f
    .catchall {:try_start_599 .. :try_end_59e} :catchall_5ca

    .line 1278
    goto :goto_5a0

    .line 1277
    :catch_59f
    move-exception v0

    .line 1279
    :goto_5a0
    :try_start_5a0
    iget-boolean v0, v9, Landroid/app/WaitResult;->timeout:Z

    if-nez v0, :cond_5cc

    iget-object v0, v9, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    if-eqz v0, :cond_599

    .line 1279
    .end local v10    # "r":Lcom/android/server/am/ActivityRecord;
    goto :goto_5cc

    .line 1242
    .restart local v10    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_5a9
    iget-object v0, v6, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5b0
    .catchall {:try_start_5a0 .. :try_end_5b0} :catchall_5ca

    .line 1245
    :cond_5b0
    :try_start_5b0
    iget-object v0, v6, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_5b5
    .catch Ljava/lang/InterruptedException; {:try_start_5b0 .. :try_end_5b5} :catch_5b6
    .catchall {:try_start_5b0 .. :try_end_5b5} :catchall_5ca

    .line 1247
    goto :goto_5b7

    .line 1246
    :catch_5b6
    move-exception v0

    .line 1248
    :goto_5b7
    :try_start_5b7
    iget v0, v9, Landroid/app/WaitResult;->result:I

    const/4 v11, 0x2

    if-eq v0, v11, :cond_5c4

    iget-boolean v0, v9, Landroid/app/WaitResult;->timeout:Z

    if-nez v0, :cond_5c4

    iget-object v0, v9, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    if-eqz v0, :cond_5b0

    .line 1250
    :cond_5c4
    iget v0, v9, Landroid/app/WaitResult;->result:I

    if-ne v0, v11, :cond_5cc

    .line 1251
    const/4 v1, 0x2

    goto :goto_5cc

    .line 1288
    .end local v1    # "res":I
    .end local v2    # "origId":J
    .end local v5    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v10    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v39    # "outRecord":[Lcom/android/server/am/ActivityRecord;
    :catchall_5ca
    move-exception v0

    goto :goto_5e3

    .line 1286
    .restart local v1    # "res":I
    .restart local v2    # "origId":J
    .restart local v5    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v39    # "outRecord":[Lcom/android/server/am/ActivityRecord;
    :cond_5cc
    :goto_5cc
    iget-object v0, v6, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/am/ActivityMetricsLogger;

    move-result-object v0

    aget-object v7, v39, v7

    invoke-virtual {v0, v1, v7}, Lcom/android/server/am/ActivityMetricsLogger;->notifyActivityLaunched(ILcom/android/server/am/ActivityRecord;)V

    .line 1287
    monitor-exit v38
    :try_end_5d8
    .catchall {:try_start_5b7 .. :try_end_5d8} :catchall_5ca

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 1288
    .end local v1    # "res":I
    .end local v2    # "origId":J
    .end local v5    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v39    # "outRecord":[Lcom/android/server/am/ActivityRecord;
    :catchall_5dc
    move-exception v0

    move-object/from16 v6, p0

    move-object/from16 v8, p14

    move-object/from16 v9, p13

    .line 1288
    .end local v30    # "intent":Landroid/content/Intent;
    .end local v31    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v36    # "callingPid":I
    .end local v37    # "componentSpecified":Z
    .restart local v3    # "callingPid":I
    .local v5, "intent":Landroid/content/Intent;
    .restart local v11    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v12    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v32, "componentSpecified":Z
    :goto_5e3
    move-object/from16 v5, v30

    move-object/from16 v11, v31

    move-object/from16 v12, v32

    move/from16 v3, v36

    move/from16 v32, v37

    goto :goto_61b

    .line 1288
    .end local v3    # "callingPid":I
    .end local v4    # "ephemeralIntent":Landroid/content/Intent;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v11    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v12    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v34    # "miuiFlags":I
    .restart local v30    # "intent":Landroid/content/Intent;
    .restart local v31    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v32, "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v35    # "ephemeralIntent":Landroid/content/Intent;
    .restart local v36    # "callingPid":I
    .restart local v37    # "componentSpecified":Z
    .restart local v43    # "miuiFlags":I
    :catchall_5ee
    move-exception v0

    move-object v6, v15

    move-object/from16 v4, v35

    move/from16 v34, v43

    move-object/from16 v8, p14

    move-object/from16 v9, p13

    move-object/from16 v5, v30

    move-object/from16 v11, v31

    move-object/from16 v12, v32

    move/from16 v3, v36

    move/from16 v32, v37

    .end local v35    # "ephemeralIntent":Landroid/content/Intent;
    .end local v43    # "miuiFlags":I
    .restart local v4    # "ephemeralIntent":Landroid/content/Intent;
    .restart local v34    # "miuiFlags":I
    goto :goto_61b

    .line 1288
    .end local v27    # "realCallingUid":I
    .end local v28    # "callingUid":I
    .end local v31    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v34    # "miuiFlags":I
    .end local v36    # "callingPid":I
    .end local v37    # "componentSpecified":Z
    .end local v44    # "caller":Landroid/app/IApplicationThread;
    .end local v45    # "resolvedType":Ljava/lang/String;
    .local v3, "miuiFlags":I
    .local v4, "callingUid":I
    .restart local v5    # "intent":Landroid/content/Intent;
    .restart local v11    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v30, "rInfo":Landroid/content/pm/ResolveInfo;
    .local v32, "componentSpecified":Z
    .restart local v35    # "ephemeralIntent":Landroid/content/Intent;
    .restart local v38    # "callingPid":I
    .local v39, "realCallingUid":I
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p5    # "resolvedType":Ljava/lang/String;
    :catchall_603
    move-exception v0

    move-object v8, v2

    move/from16 v34, v3

    move v1, v4

    move-object v6, v15

    move-object/from16 v4, v35

    move/from16 v3, v38

    move/from16 v27, v39

    move-object/from16 v9, p13

    move-object/from16 v38, v12

    move-object/from16 v45, p5

    move/from16 v28, v1

    move-object/from16 v12, v30

    move-object/from16 v44, p1

    .end local v30    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v35    # "ephemeralIntent":Landroid/content/Intent;
    .end local v38    # "callingPid":I
    .end local v39    # "realCallingUid":I
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p5    # "resolvedType":Ljava/lang/String;
    .local v3, "callingPid":I
    .local v4, "ephemeralIntent":Landroid/content/Intent;
    .restart local v12    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v27    # "realCallingUid":I
    .restart local v28    # "callingUid":I
    .restart local v34    # "miuiFlags":I
    .restart local v44    # "caller":Landroid/app/IApplicationThread;
    .restart local v45    # "resolvedType":Ljava/lang/String;
    :goto_61b
    :try_start_61b
    monitor-exit v38
    :try_end_61c
    .catchall {:try_start_61b .. :try_end_61c} :catchall_620

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_620
    move-exception v0

    goto :goto_61b

    :pswitch_data_622
    .packed-switch 0x2
        :pswitch_575
        :pswitch_56a
    .end packed-switch
.end method

.method private startActivityUnchecked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;[Lcom/android/server/am/ActivityRecord;)I
    .registers 38
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p4, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p5, "startFlags"    # I
    .param p6, "doResume"    # Z
    .param p7, "options"    # Landroid/app/ActivityOptions;
    .param p8, "inTask"    # Lcom/android/server/am/TaskRecord;
    .param p9, "outActivity"    # [Lcom/android/server/am/ActivityRecord;

    move-object/from16 v9, p0

    .line 1369
    move-object/from16 v10, p9

    move-object v0, v9

    move-object/from16 v1, p1

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move/from16 v4, p6

    move/from16 v5, p5

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/ActivityStarter;->setInitialState(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;ZILcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V

    .line 1372
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->computeLaunchingTaskFlags()V

    .line 1374
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->computeSourceStack()V

    .line 1376
    iget-object v0, v9, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget v1, v9, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1378
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->getReusableIntentActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1380
    .local v0, "reusedActivity":Lcom/android/server/am/ActivityRecord;
    const/4 v1, 0x0

    .line 1381
    .local v1, "preferredWindowingMode":I
    const/4 v2, 0x0

    .line 1382
    .local v2, "preferredLaunchDisplayId":I
    iget-object v3, v9, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v3, :cond_3b

    .line 1383
    iget-object v3, v9, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v1

    .line 1384
    iget-object v3, v9, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v2

    .line 1389
    :cond_3b
    iget-object v3, v9, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    invoke-virtual {v3}, Lcom/android/server/am/LaunchParamsController$LaunchParams;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5b

    .line 1390
    iget-object v3, v9, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    invoke-virtual {v3}, Lcom/android/server/am/LaunchParamsController$LaunchParams;->hasPreferredDisplay()Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 1391
    iget-object v3, v9, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    iget v2, v3, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    .line 1394
    :cond_4f
    iget-object v3, v9, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    invoke-virtual {v3}, Lcom/android/server/am/LaunchParamsController$LaunchParams;->hasWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 1395
    iget-object v3, v9, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    iget v1, v3, Lcom/android/server/am/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 1399
    :cond_5b
    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v0, :cond_146

    .line 1403
    iget-object v8, v9, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityManagerService;->getLockTaskController()Lcom/android/server/am/LockTaskController;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v11

    iget v12, v9, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const v13, 0x10008000

    and-int/2addr v12, v13

    if-ne v12, v13, :cond_76

    move v12, v6

    goto :goto_77

    :cond_76
    move v12, v7

    :goto_77
    invoke-virtual {v8, v11, v12}, Lcom/android/server/am/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;Z)Z

    move-result v8

    if-eqz v8, :cond_88

    .line 1406
    const-string v3, "ActivityManager"

    const-string/jumbo v4, "startActivityUnchecked: Attempt to violate Lock Task Mode"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    const/16 v3, 0x65

    return v3

    .line 1412
    :cond_88
    iget v8, v9, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v11, 0x4200000

    and-int/2addr v8, v11

    if-ne v8, v11, :cond_95

    iget v8, v9, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    if-nez v8, :cond_95

    move v8, v6

    goto :goto_96

    :cond_95
    move v8, v7

    .line 1420
    .local v8, "clearTopAndResetStandardLaunchMode":Z
    :goto_96
    iget-object v11, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v11}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v11

    if-nez v11, :cond_a9

    if-nez v8, :cond_a9

    .line 1421
    iget-object v11, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;)V

    .line 1424
    :cond_a9
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v11

    iget-object v11, v11, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-nez v11, :cond_ba

    .line 1427
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v11

    iget-object v12, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v11, v12}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 1433
    :cond_ba
    iget v11, v9, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v12, 0x4000000

    and-int/2addr v11, v12

    if-nez v11, :cond_cf

    iget v11, v9, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    .line 1434
    invoke-static {v11}, Lcom/android/server/am/ActivityStarter;->isDocumentLaunchesIntoExisting(I)Z

    move-result v11

    if-nez v11, :cond_cf

    .line 1435
    invoke-direct {v9, v3, v4}, Lcom/android/server/am/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v11

    if-eqz v11, :cond_f6

    .line 1436
    :cond_cf
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v11

    .line 1441
    .local v11, "task":Lcom/android/server/am/TaskRecord;
    iget-object v12, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v13, v9, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    invoke-virtual {v11, v12, v13}, Lcom/android/server/am/TaskRecord;->performClearTaskForReuseLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    .line 1448
    .local v12, "top":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v13

    if-nez v13, :cond_e4

    .line 1449
    invoke-virtual {v0, v11}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;)V

    .line 1452
    :cond_e4
    if-eqz v12, :cond_f6

    .line 1453
    iget-boolean v13, v12, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v13, :cond_f3

    .line 1456
    invoke-virtual {v12}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v13

    iget-object v14, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v13, v14}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 1458
    :cond_f3
    invoke-direct {v9, v12}, Lcom/android/server/am/ActivityStarter;->deliverNewIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 1462
    .end local v11    # "task":Lcom/android/server/am/TaskRecord;
    .end local v12    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_f6
    iget-object v11, v9, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v11, v7, v0}, Lcom/android/server/am/ActivityStackSupervisor;->sendPowerHintForLaunchStartIfNeeded(ZLcom/android/server/am/ActivityRecord;)V

    .line 1464
    invoke-direct {v9, v0}, Lcom/android/server/am/ActivityStarter;->setTargetStackAndMoveToFrontIfNeeded(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1467
    if-eqz v0, :cond_108

    .line 1468
    move-object/from16 v11, p1

    iget-object v12, v11, Lcom/android/server/am/ActivityRecord;->realComponentName:Ljava/lang/String;

    iput-object v12, v0, Lcom/android/server/am/ActivityRecord;->realComponentName:Ljava/lang/String;

    goto :goto_10a

    .line 1473
    :cond_108
    move-object/from16 v11, p1

    :goto_10a
    if-eqz v10, :cond_112

    array-length v12, v10

    if-lez v12, :cond_112

    aget-object v12, v10, v7

    goto :goto_113

    :cond_112
    move-object v12, v5

    .line 1477
    .local v12, "outResult":Lcom/android/server/am/ActivityRecord;
    :goto_113
    if-eqz v12, :cond_11f

    iget-boolean v13, v12, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v13, :cond_11d

    iget-boolean v13, v12, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    if-eqz v13, :cond_11f

    .line 1478
    :cond_11d
    aput-object v0, v10, v7

    .line 1481
    :cond_11f
    iget v13, v9, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    and-int/2addr v13, v6

    if-eqz v13, :cond_128

    .line 1485
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->resumeTargetStackIfNeeded()V

    .line 1486
    return v6

    .line 1489
    :cond_128
    if-eqz v0, :cond_148

    .line 1490
    invoke-direct {v9, v0}, Lcom/android/server/am/ActivityStarter;->setTaskFromIntentActivity(Lcom/android/server/am/ActivityRecord;)V

    .line 1492
    iget-boolean v13, v9, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    if-nez v13, :cond_148

    iget-object v13, v9, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    if-nez v13, :cond_148

    .line 1496
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->resumeTargetStackIfNeeded()V

    .line 1497
    if-eqz v10, :cond_13f

    array-length v5, v10

    if-lez v5, :cond_13f

    .line 1498
    aput-object v0, v10, v7

    .line 1501
    :cond_13f
    iget-boolean v5, v9, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    if-eqz v5, :cond_144

    goto :goto_145

    :cond_144
    move v4, v3

    :goto_145
    return v4

    .line 1506
    .end local v8    # "clearTopAndResetStandardLaunchMode":Z
    .end local v12    # "outResult":Lcom/android/server/am/ActivityRecord;
    :cond_146
    move-object/from16 v11, p1

    :cond_148
    iget-object v8, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v8, v8, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    if-nez v8, :cond_187

    .line 1507
    iget-object v3, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_15d

    .line 1508
    iget-object v3, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v5

    nop

    :cond_15d
    move-object v3, v5

    .line 1511
    .local v3, "sourceStack":Lcom/android/server/am/ActivityStack;
    if-eqz v3, :cond_17f

    iget-object v4, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v4, v4, Lcom/android/server/am/ActivityRecord;->requestCode:I

    const/16 v5, -0x3e9

    if-eq v4, v5, :cond_17f

    .line 1514
    const/4 v13, -0x1

    iget-object v4, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v14, v4, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v15, v4, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    iget-object v4, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v4, v4, Lcom/android/server/am/ActivityRecord;->requestCode:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v12, v3

    move/from16 v16, v4

    invoke-virtual/range {v12 .. v18}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 1518
    :cond_17f
    iget-object v4, v9, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v4}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 1519
    const/16 v4, -0x5c

    return v4

    .line 1524
    .end local v3    # "sourceStack":Lcom/android/server/am/ActivityStack;
    :cond_187
    iget-object v8, v9, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v8, v8, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 1525
    .local v8, "topStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v18

    .line 1526
    .local v18, "topFocused":Lcom/android/server/am/ActivityRecord;
    iget-object v12, v9, Lcom/android/server/am/ActivityStarter;->mNotTop:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v8, v12}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v15

    .line 1527
    .local v15, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v15, :cond_1ca

    iget-object v12, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v12, v12, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v12, :cond_1ca

    iget-object v12, v15, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v13, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v13, v13, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    .line 1528
    invoke-virtual {v12, v13}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1ca

    iget v12, v15, Lcom/android/server/am/ActivityRecord;->userId:I

    iget-object v13, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v13, v13, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v12, v13, :cond_1ca

    iget-object v12, v15, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v12, :cond_1ca

    iget-object v12, v15, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v12, :cond_1ca

    iget v12, v9, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v13, 0x20000000

    and-int/2addr v12, v13

    if-nez v12, :cond_1c8

    .line 1532
    invoke-direct {v9, v6, v4}, Lcom/android/server/am/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v12

    if-eqz v12, :cond_1ca

    :cond_1c8
    move v12, v6

    goto :goto_1cb

    :cond_1ca
    move v12, v7

    :goto_1cb
    move/from16 v19, v12

    .line 1533
    .local v19, "dontStart":Z
    if-eqz v19, :cond_1f2

    .line 1535
    iput-object v5, v8, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1536
    iget-boolean v4, v9, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v4, :cond_1da

    .line 1537
    iget-object v4, v9, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 1539
    :cond_1da
    iget-object v4, v9, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v4}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 1540
    iget v4, v9, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    and-int/2addr v4, v6

    if-eqz v4, :cond_1e5

    .line 1543
    return v6

    .line 1546
    :cond_1e5
    invoke-direct {v9, v15}, Lcom/android/server/am/ActivityStarter;->deliverNewIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 1550
    iget-object v4, v9, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v15}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    invoke-virtual {v4, v5, v1, v2, v8}, Lcom/android/server/am/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/am/TaskRecord;IILcom/android/server/am/ActivityStack;)V

    .line 1553
    return v3

    .line 1556
    :cond_1f2
    const/4 v3, 0x0

    .line 1557
    .local v3, "newTask":Z
    iget-boolean v12, v9, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    if-eqz v12, :cond_202

    iget-object v12, v9, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    if-eqz v12, :cond_202

    .line 1558
    iget-object v12, v9, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v12}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v12

    goto :goto_203

    :cond_202
    move-object v12, v5

    :goto_203
    move-object v14, v12

    .line 1561
    .local v14, "taskToAffiliate":Lcom/android/server/am/TaskRecord;
    const/4 v12, 0x0

    .line 1562
    .local v12, "result":I
    iget-object v13, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v13, v13, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v13, :cond_235

    iget-object v13, v9, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    if-nez v13, :cond_235

    iget-boolean v13, v9, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    if-nez v13, :cond_235

    iget v13, v9, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const/high16 v16, 0x10000000

    and-int v13, v13, v16

    if-eqz v13, :cond_235

    .line 1564
    const/4 v3, 0x1

    .line 1565
    iget-object v13, v9, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    .line 1566
    .local v13, "packageName":Ljava/lang/String;
    iget-object v5, v9, Lcom/android/server/am/ActivityStarter;->mPerf:Landroid/util/BoostFramework;

    if-eqz v5, :cond_230

    .line 1567
    iget-object v5, v9, Lcom/android/server/am/ActivityStarter;->mPerf:Landroid/util/BoostFramework;

    const/16 v7, 0x1081

    const/4 v4, -0x1

    invoke-virtual {v5, v7, v13, v4, v6}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 1570
    :cond_230
    invoke-direct {v9, v14, v8}, Lcom/android/server/am/ActivityStarter;->setTaskFromReuseOrCreateNewTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;)I

    move-result v12

    .line 1571
    .end local v13    # "packageName":Ljava/lang/String;
    goto :goto_23d

    :cond_235
    iget-object v4, v9, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    if-eqz v4, :cond_240

    .line 1572
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->setTaskFromSourceRecord()I

    move-result v12

    .line 1580
    .end local v12    # "result":I
    .local v3, "result":I
    .local v4, "newTask":Z
    :goto_23d
    move v4, v3

    move v3, v12

    goto :goto_24d

    .line 1573
    .end local v4    # "newTask":Z
    .local v3, "newTask":Z
    .restart local v12    # "result":I
    :cond_240
    iget-object v4, v9, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    if-eqz v4, :cond_249

    .line 1574
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->setTaskFromInTask()I

    move-result v12

    goto :goto_23d

    .line 1578
    :cond_249
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->setTaskToCurrentTopOrCreateNewTask()V

    goto :goto_23d

    .line 1580
    .end local v12    # "result":I
    .local v3, "result":I
    .restart local v4    # "newTask":Z
    :goto_24d
    if-eqz v3, :cond_250

    .line 1581
    return v3

    .line 1584
    :cond_250
    iget-object v5, v9, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v7, v9, Lcom/android/server/am/ActivityStarter;->mCallingUid:I

    iget-object v12, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v12, v12, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v13, v9, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v6, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 1585
    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v25

    iget-object v6, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v6, v6, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 1584
    move-object/from16 v21, v5

    move/from16 v22, v7

    move-object/from16 v23, v12

    move-object/from16 v24, v13

    move/from16 v26, v6

    invoke-virtual/range {v21 .. v26}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;I)V

    .line 1586
    iget-object v5, v9, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v6, v6, Lcom/android/server/am/ActivityRecord;->userId:I

    iget-object v7, v9, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v12, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v12, v12, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v13, v9, Lcom/android/server/am/ActivityStarter;->mCallingUid:I

    .line 1587
    invoke-static {v13}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v13

    .line 1586
    invoke-virtual {v5, v6, v7, v12, v13}, Lcom/android/server/am/ActivityManagerService;->grantEphemeralAccessLocked(ILandroid/content/Intent;II)V

    .line 1588
    if-eqz v4, :cond_2ac

    .line 1589
    const/16 v5, 0x7534

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v7, v7, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v12, 0x0

    aput-object v7, v6, v12

    iget-object v7, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 1590
    invoke-virtual {v7}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v7

    iget v7, v7, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v12, 0x1

    aput-object v7, v6, v12

    .line 1589
    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1592
    :cond_2ac
    const/16 v5, 0x7535

    iget-object v6, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v7, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 1593
    invoke-virtual {v7}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v7

    .line 1592
    invoke-static {v5, v6, v7}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 1594
    iget-object v5, v9, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1596
    iget-object v5, v9, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v6, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v6}, Lcom/android/server/am/ActivityStackSupervisor;->sendPowerHintForLaunchStartIfNeeded(ZLcom/android/server/am/ActivityRecord;)V

    .line 1598
    iget-object v12, v9, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-object v13, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-boolean v5, v9, Lcom/android/server/am/ActivityStarter;->mKeepCurTransition:Z

    iget-object v6, v9, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    move-object v7, v14

    move-object/from16 v14, v18

    .line 1598
    .end local v14    # "taskToAffiliate":Lcom/android/server/am/TaskRecord;
    .local v7, "taskToAffiliate":Lcom/android/server/am/TaskRecord;
    move-object/from16 v20, v15

    move v15, v4

    .line 1598
    .end local v15    # "top":Lcom/android/server/am/ActivityRecord;
    .local v20, "top":Lcom/android/server/am/ActivityRecord;
    move/from16 v16, v5

    move-object/from16 v17, v6

    invoke-virtual/range {v12 .. v17}, Lcom/android/server/am/ActivityStack;->startActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ZZLandroid/app/ActivityOptions;)V

    .line 1600
    iget-boolean v5, v9, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    if-eqz v5, :cond_331

    .line 1601
    iget-object v5, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 1602
    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 1603
    .local v5, "topTaskActivity":Lcom/android/server/am/ActivityRecord;
    iget-object v6, v9, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->isFocusable()Z

    move-result v6

    if-eqz v6, :cond_322

    if-eqz v5, :cond_2fc

    iget-boolean v6, v5, Lcom/android/server/am/ActivityRecord;->mTaskOverlay:Z

    if-eqz v6, :cond_2fc

    iget-object v6, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    if-eq v6, v5, :cond_2fc

    goto :goto_322

    .line 1622
    :cond_2fc
    iget-object v6, v9, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->isFocusable()Z

    move-result v6

    if-eqz v6, :cond_316

    iget-object v6, v9, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v12, v9, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v6, v12}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v6

    if-nez v6, :cond_316

    .line 1623
    iget-object v6, v9, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const-string/jumbo v12, "startActivityUnchecked"

    invoke-virtual {v6, v12}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 1625
    :cond_316
    iget-object v6, v9, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v12, v9, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iget-object v13, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v14, v9, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v6, v12, v13, v14}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    .line 1625
    .end local v5    # "topTaskActivity":Lcom/android/server/am/ActivityRecord;
    goto :goto_330

    .line 1612
    .restart local v5    # "topTaskActivity":Lcom/android/server/am/ActivityRecord;
    :cond_322
    :goto_322
    iget-object v6, v9, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v6, v13, v12, v12}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 1615
    iget-object v6, v9, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 1628
    .end local v5    # "topTaskActivity":Lcom/android/server/am/ActivityRecord;
    :goto_330
    goto :goto_342

    :cond_331
    iget-object v5, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v5, :cond_342

    .line 1629
    iget-object v5, v9, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v5, v5, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    iget-object v6, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/am/RecentTasks;->add(Lcom/android/server/am/TaskRecord;)V

    .line 1631
    :cond_342
    :goto_342
    iget-object v5, v9, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v6, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget v6, v6, Lcom/android/server/am/ActivityRecord;->userId:I

    iget-object v12, v9, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v5, v6, v12}, Lcom/android/server/am/ActivityStackSupervisor;->updateUserStackLocked(ILcom/android/server/am/ActivityStack;)V

    .line 1633
    iget-object v5, v9, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v6, v9, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    iget-object v12, v9, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v5, v6, v1, v2, v12}, Lcom/android/server/am/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/am/TaskRecord;IILcom/android/server/am/ActivityStack;)V

    .line 1636
    const/4 v5, 0x0

    return v5
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 2817
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2818
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2819
    const-string/jumbo v0, "mCurrentUser="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2820
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2821
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2822
    const-string/jumbo v0, "mLastStartReason="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2823
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mLastStartReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2824
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2825
    const-string/jumbo v0, "mLastStartActivityTimeMs="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2826
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/server/am/ActivityStarter;->mLastStartActivityTimeMs:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2827
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2828
    const-string/jumbo v0, "mLastStartActivityResult="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2829
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLastStartActivityResult:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2830
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mLastStartActivityRecord:[Lcom/android/server/am/ActivityRecord;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 2831
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_7c

    .line 2832
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2833
    const-string/jumbo v2, "mLastStartActivityRecord:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2834
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/android/server/am/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2836
    :cond_7c
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_9f

    .line 2837
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2838
    const-string/jumbo v2, "mStartActivity:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2839
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/android/server/am/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2841
    :cond_9f
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    if-eqz v2, :cond_b1

    .line 2842
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2843
    const-string/jumbo v2, "mIntent="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2844
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2846
    :cond_b1
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v2, :cond_c3

    .line 2847
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2848
    const-string/jumbo v2, "mOptions="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2849
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2851
    :cond_c3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2852
    const-string/jumbo v2, "mLaunchSingleTop="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2853
    iget v2, p0, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    const/4 v3, 0x1

    if-ne v3, v2, :cond_d3

    move v2, v3

    goto :goto_d4

    :cond_d3
    move v2, v1

    :goto_d4
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 2854
    const-string v2, " mLaunchSingleInstance="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2855
    const/4 v2, 0x3

    iget v4, p0, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    if-ne v2, v4, :cond_e3

    move v2, v3

    goto :goto_e4

    :cond_e3
    move v2, v1

    :goto_e4
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 2856
    const-string v2, " mLaunchSingleTask="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2857
    const/4 v2, 0x2

    iget v4, p0, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    if-ne v2, v4, :cond_f3

    move v1, v3

    nop

    :cond_f3
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 2858
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2859
    const-string/jumbo v1, "mLaunchFlags=0x"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2860
    iget v1, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2861
    const-string v1, " mDoResume="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2862
    iget-boolean v1, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 2863
    const-string v1, " mAddingToTask="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2864
    iget-boolean v1, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 2865
    return-void
.end method

.method execute()I
    .registers 41

    .line 493
    move-object/from16 v15, p0

    :try_start_2
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStarter$Request;->mayWait:Z

    if-eqz v0, :cond_78

    .line 494
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v3, v0, Lcom/android/server/am/ActivityStarter$Request;->callingUid:I

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter$Request;->intent:Landroid/content/Intent;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v6, v0, Lcom/android/server/am/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v7, v0, Lcom/android/server/am/ActivityStarter$Request;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v8, v0, Lcom/android/server/am/ActivityStarter$Request;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v9, v0, Lcom/android/server/am/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v10, v0, Lcom/android/server/am/ActivityStarter$Request;->resultWho:Ljava/lang/String;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v11, v0, Lcom/android/server/am/ActivityStarter$Request;->requestCode:I

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v12, v0, Lcom/android/server/am/ActivityStarter$Request;->startFlags:I

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v13, v0, Lcom/android/server/am/ActivityStarter$Request;->profilerInfo:Landroid/app/ProfilerInfo;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v14, v0, Lcom/android/server/am/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/am/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/am/ActivityStarter$Request;->activityOptions:Lcom/android/server/am/SafeActivityOptions;

    move-object/from16 v26, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityStarter$Request;->ignoreTargetSecurity:Z

    move/from16 v27, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v1, v1, Lcom/android/server/am/ActivityStarter$Request;->userId:I

    move/from16 v28, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/am/ActivityStarter$Request;->inTask:Lcom/android/server/am/TaskRecord;

    move-object/from16 v29, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/am/ActivityStarter$Request;->reason:Ljava/lang/String;

    move-object/from16 v30, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityStarter$Request;->allowPendingRemoteAnimationRegistryLookup:Z

    move/from16 v21, v1

    move-object/from16 v16, v26

    move/from16 v17, v27

    move/from16 v18, v28

    move-object/from16 v19, v29

    move-object/from16 v20, v30

    move-object v1, v15

    move-object v15, v0

    invoke-direct/range {v1 .. v21}, Lcom/android/server/am/ActivityStarter;->startActivityMayWait(Landroid/app/IApplicationThread;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/app/WaitResult;Landroid/content/res/Configuration;Lcom/android/server/am/SafeActivityOptions;ZILcom/android/server/am/TaskRecord;Ljava/lang/String;Z)I

    move-result v0
    :try_end_74
    .catchall {:try_start_2 .. :try_end_74} :catchall_10a

    .line 514
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->onExecutionComplete()V

    .line 494
    return v0

    .line 503
    :cond_78
    move-object/from16 v15, p0

    :try_start_7a
    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v2, v0, Lcom/android/server/am/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v3, v0, Lcom/android/server/am/ActivityStarter$Request;->intent:Landroid/content/Intent;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v4, v0, Lcom/android/server/am/ActivityStarter$Request;->ephemeralIntent:Landroid/content/Intent;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v5, v0, Lcom/android/server/am/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v6, v0, Lcom/android/server/am/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v7, v0, Lcom/android/server/am/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v8, v0, Lcom/android/server/am/ActivityStarter$Request;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v9, v0, Lcom/android/server/am/ActivityStarter$Request;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v10, v0, Lcom/android/server/am/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v11, v0, Lcom/android/server/am/ActivityStarter$Request;->resultWho:Ljava/lang/String;

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v12, v0, Lcom/android/server/am/ActivityStarter$Request;->requestCode:I

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v13, v0, Lcom/android/server/am/ActivityStarter$Request;->callingPid:I

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v14, v0, Lcom/android/server/am/ActivityStarter$Request;->callingUid:I

    iget-object v0, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/am/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v1, v1, Lcom/android/server/am/ActivityStarter$Request;->realCallingPid:I

    move/from16 v31, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v1, v1, Lcom/android/server/am/ActivityStarter$Request;->realCallingUid:I

    move/from16 v32, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget v1, v1, Lcom/android/server/am/ActivityStarter$Request;->startFlags:I

    move/from16 v33, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/am/ActivityStarter$Request;->activityOptions:Lcom/android/server/am/SafeActivityOptions;

    move-object/from16 v34, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityStarter$Request;->ignoreTargetSecurity:Z

    move/from16 v35, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityStarter$Request;->componentSpecified:Z

    move/from16 v36, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/am/ActivityStarter$Request;->outActivity:[Lcom/android/server/am/ActivityRecord;

    move-object/from16 v37, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/am/ActivityStarter$Request;->inTask:Lcom/android/server/am/TaskRecord;

    move-object/from16 v38, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/am/ActivityStarter$Request;->reason:Ljava/lang/String;

    move-object/from16 v39, v1

    iget-object v1, v15, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityStarter$Request;->allowPendingRemoteAnimationRegistryLookup:Z

    move/from16 v25, v1

    move/from16 v16, v31

    move/from16 v17, v32

    move/from16 v18, v33

    move-object/from16 v19, v34

    move/from16 v20, v35

    move/from16 v21, v36

    move-object/from16 v22, v37

    move-object/from16 v23, v38

    move-object/from16 v24, v39

    move-object v1, v15

    move-object v15, v0

    invoke-direct/range {v1 .. v25}, Lcom/android/server/am/ActivityStarter;->startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ResolveInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILcom/android/server/am/SafeActivityOptions;ZZ[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;Ljava/lang/String;Z)I

    move-result v0
    :try_end_106
    .catchall {:try_start_7a .. :try_end_106} :catchall_10a

    .line 514
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->onExecutionComplete()V

    .line 503
    return v0

    .line 514
    :catchall_10a
    move-exception v0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->onExecutionComplete()V

    throw v0
.end method

.method getIntent()Landroid/content/Intent;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2661
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/am/ActivityStarter$Request;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method getStartActivity()Lcom/android/server/am/ActivityRecord;
    .registers 2

    .line 476
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    return-object v0
.end method

.method postStartActivityProcessing(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/ActivityStack;)V
    .registers 14
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "result"    # I
    .param p3, "targetStack"    # Lcom/android/server/am/ActivityStack;

    .line 964
    invoke-static {p2}, Landroid/app/ActivityManager;->isStartResultFatalError(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 965
    return-void

    .line 973
    :cond_7
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ActivityStackSupervisor;->reportWaitingActivityLaunchedIfNeeded(Lcom/android/server/am/ActivityRecord;I)V

    .line 975
    const/4 v0, 0x0

    .line 976
    .local v0, "startedActivityStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 977
    .local v1, "currentStack":Lcom/android/server/am/ActivityStack;
    if-eqz v1, :cond_15

    .line 978
    move-object v0, v1

    goto :goto_1a

    .line 979
    :cond_15
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    if-eqz v2, :cond_1a

    .line 980
    move-object v0, p3

    .line 983
    :cond_1a
    :goto_1a
    if-nez v0, :cond_1d

    .line 984
    return-void

    .line 987
    :cond_1d
    const v2, 0x10008000

    .line 988
    .local v2, "clearTaskFlags":I
    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    const v4, 0x10008000

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_2e

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    if-eqz v3, :cond_2e

    const/4 v3, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v3, 0x0

    .line 990
    .local v3, "clearedTask":Z
    :goto_2f
    const/4 v4, 0x2

    if-eq p2, v4, :cond_37

    const/4 v4, 0x3

    if-eq p2, v4, :cond_37

    if-eqz v3, :cond_97

    .line 994
    :cond_37
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v4

    packed-switch v4, :pswitch_data_98

    goto :goto_97

    .line 1000
    :pswitch_3f
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    .line 1001
    .local v4, "homeStack":Lcom/android/server/am/ActivityStack;
    if-eqz v4, :cond_97

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)Z

    move-result v6

    if-eqz v6, :cond_97

    .line 1003
    if-eqz v4, :cond_53

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    nop

    .line 1004
    .local v5, "topR":Lcom/android/server/am/ActivityRecord;
    :cond_53
    if-eqz v5, :cond_5a

    iget-boolean v6, v5, Lcom/android/server/am/ActivityRecord;->mIsDummyVisible:Z

    if-eqz v6, :cond_5a

    .line 1005
    return-void

    .line 1009
    :cond_5a
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v6

    .line 1010
    .local v6, "display":Lcom/android/server/am/ActivityDisplay;
    const/4 v7, 0x4

    .line 1011
    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/am/ActivityStack;

    move-result-object v7

    .line 1012
    .local v7, "topSecondaryStack":Lcom/android/server/am/ActivityStack;
    if-eqz v7, :cond_87

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->isActivityTypeHome()Z

    move-result v8

    if-nez v8, :cond_87

    .line 1013
    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->isActivityTypeRecents()Z

    move-result v8

    if-nez v8, :cond_87

    .line 1014
    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    if-eqz v8, :cond_87

    .line 1015
    iget-object v8, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v9

    iget v9, v9, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v8, v9}, Lcom/android/server/am/ActivityManagerService;->setFocusedTask(I)V

    .line 1016
    return-void

    .line 1019
    :cond_87
    iget-object v8, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowManagerService;->showRecentApps()V

    .end local v4    # "homeStack":Lcom/android/server/am/ActivityStack;
    .end local v5    # "topR":Lcom/android/server/am/ActivityRecord;
    .end local v6    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v7    # "topSecondaryStack":Lcom/android/server/am/ActivityStack;
    goto :goto_97

    .line 996
    :pswitch_8f
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-virtual {v4, v3}, Lcom/android/server/am/TaskChangeNotificationController;->notifyPinnedActivityRestartAttempt(Z)V

    .line 998
    nop

    .line 1024
    :cond_97
    :goto_97
    return-void

    :pswitch_data_98
    .packed-switch 0x2
        :pswitch_8f
        :pswitch_3f
    .end packed-switch
.end method

.method relatedToPackage(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 480
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mLastStartActivityRecord:[Lcom/android/server/am/ActivityRecord;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mLastStartActivityRecord:[Lcom/android/server/am/ActivityRecord;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 481
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    :cond_13
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 482
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    :cond_21
    const/4 v1, 0x1

    nop

    .line 480
    :cond_23
    return v1
.end method

.method reset(Z)V
    .registers 6
    .param p1, "clearRequest"    # Z

    .line 1644
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 1645
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 1646
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/am/ActivityStarter;->mCallingUid:I

    .line 1647
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 1649
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    .line 1650
    iput v2, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    .line 1651
    iput v1, p0, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    .line 1653
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    invoke-virtual {v3}, Lcom/android/server/am/LaunchParamsController$LaunchParams;->reset()V

    .line 1655
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mNotTop:Lcom/android/server/am/ActivityRecord;

    .line 1656
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    .line 1657
    iput v2, p0, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    .line 1658
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    .line 1659
    iput v1, p0, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    .line 1661
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    .line 1662
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    .line 1663
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    .line 1665
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    .line 1666
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    .line 1667
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    .line 1669
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 1670
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    .line 1671
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    .line 1672
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mKeepCurTransition:Z

    .line 1673
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mAvoidMoveToFront:Z

    .line 1675
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 1676
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 1678
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mIntentDelivered:Z

    .line 1680
    if-eqz p1, :cond_43

    .line 1681
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStarter$Request;->reset()V

    .line 1683
    :cond_43
    return-void
.end method

.method set(Lcom/android/server/am/ActivityStarter;)V
    .registers 4
    .param p1, "starter"    # Lcom/android/server/am/ActivityStarter;

    .line 436
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    .line 437
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 438
    iget v0, p1, Lcom/android/server/am/ActivityStarter;->mCallingUid:I

    iput v0, p0, Lcom/android/server/am/ActivityStarter;->mCallingUid:I

    .line 439
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 441
    iget-boolean v0, p1, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    .line 442
    iget v0, p1, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    iput v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    .line 443
    iget v0, p1, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    iput v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchMode:I

    .line 445
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    iget-object v1, p1, Lcom/android/server/am/ActivityStarter;->mLaunchParams:Lcom/android/server/am/LaunchParamsController$LaunchParams;

    invoke-virtual {v0, v1}, Lcom/android/server/am/LaunchParamsController$LaunchParams;->set(Lcom/android/server/am/LaunchParamsController$LaunchParams;)V

    .line 447
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter;->mNotTop:Lcom/android/server/am/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mNotTop:Lcom/android/server/am/ActivityRecord;

    .line 448
    iget-boolean v0, p1, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    .line 449
    iget v0, p1, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    iput v0, p0, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    .line 450
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    .line 451
    iget v0, p1, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    iput v0, p0, Lcom/android/server/am/ActivityStarter;->mPreferredDisplayId:I

    .line 453
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    .line 454
    iget-boolean v0, p1, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    .line 455
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    .line 457
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    .line 458
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    .line 459
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    .line 461
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    .line 462
    iget-boolean v0, p1, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    .line 463
    iget-boolean v0, p1, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    .line 464
    iget-boolean v0, p1, Lcom/android/server/am/ActivityStarter;->mKeepCurTransition:Z

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mKeepCurTransition:Z

    .line 465
    iget-boolean v0, p1, Lcom/android/server/am/ActivityStarter;->mAvoidMoveToFront:Z

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mAvoidMoveToFront:Z

    .line 467
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 468
    iget-object v0, p1, Lcom/android/server/am/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 470
    iget-boolean v0, p1, Lcom/android/server/am/ActivityStarter;->mIntentDelivered:Z

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mIntentDelivered:Z

    .line 472
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iget-object v1, p1, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStarter$Request;->set(Lcom/android/server/am/ActivityStarter$Request;)V

    .line 473
    return-void
.end method

.method setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityStarter;
    .registers 3
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .line 2686
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2687
    return-object p0
.end method

.method setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/am/ActivityStarter;
    .registers 3
    .param p1, "bOptions"    # Landroid/os/Bundle;

    .line 2756
    invoke-static {p1}, Lcom/android/server/am/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/am/SafeActivityOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStarter;->setActivityOptions(Lcom/android/server/am/SafeActivityOptions;)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    return-object v0
.end method

.method setActivityOptions(Lcom/android/server/am/SafeActivityOptions;)Lcom/android/server/am/ActivityStarter;
    .registers 3
    .param p1, "options"    # Lcom/android/server/am/SafeActivityOptions;

    .line 2751
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->activityOptions:Lcom/android/server/am/SafeActivityOptions;

    .line 2752
    return-object p0
.end method

.method setAllowPendingRemoteAnimationRegistryLookup(Z)Lcom/android/server/am/ActivityStarter;
    .registers 3
    .param p1, "allowLookup"    # Z

    .line 2812
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-boolean p1, v0, Lcom/android/server/am/ActivityStarter$Request;->allowPendingRemoteAnimationRegistryLookup:Z

    .line 2813
    return-object p0
.end method

.method setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/am/ActivityStarter;
    .registers 3
    .param p1, "caller"    # Landroid/app/IApplicationThread;

    .line 2670
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    .line 2671
    return-object p0
.end method

.method setCallingPackage(Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;
    .registers 3
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 2731
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 2732
    return-object p0
.end method

.method setCallingPid(I)Lcom/android/server/am/ActivityStarter;
    .registers 3
    .param p1, "pid"    # I

    .line 2721
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/am/ActivityStarter$Request;->callingPid:I

    .line 2722
    return-object p0
.end method

.method setCallingUid(I)Lcom/android/server/am/ActivityStarter;
    .registers 3
    .param p1, "uid"    # I

    .line 2726
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/am/ActivityStarter$Request;->callingUid:I

    .line 2727
    return-object p0
.end method

.method setComponentSpecified(Z)Lcom/android/server/am/ActivityStarter;
    .registers 3
    .param p1, "componentSpecified"    # Z

    .line 2770
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-boolean p1, v0, Lcom/android/server/am/ActivityStarter$Request;->componentSpecified:Z

    .line 2771
    return-object p0
.end method

.method setEphemeralIntent(Landroid/content/Intent;)Lcom/android/server/am/ActivityStarter;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 2675
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->ephemeralIntent:Landroid/content/Intent;

    .line 2676
    return-object p0
.end method

.method setFilterCallingUid(I)Lcom/android/server/am/ActivityStarter;
    .registers 3
    .param p1, "filterCallingUid"    # I

    .line 2765
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/am/ActivityStarter$Request;->filterCallingUid:I

    .line 2766
    return-object p0
.end method

.method setGlobalConfiguration(Landroid/content/res/Configuration;)Lcom/android/server/am/ActivityStarter;
    .registers 3
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 2795
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;

    .line 2796
    return-object p0
.end method

.method setIgnoreTargetSecurity(Z)Lcom/android/server/am/ActivityStarter;
    .registers 3
    .param p1, "ignoreTargetSecurity"    # Z

    .line 2760
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-boolean p1, v0, Lcom/android/server/am/ActivityStarter$Request;->ignoreTargetSecurity:Z

    .line 2761
    return-object p0
.end method

.method setInTask(Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/ActivityStarter;
    .registers 3
    .param p1, "inTask"    # Lcom/android/server/am/TaskRecord;

    .line 2780
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->inTask:Lcom/android/server/am/TaskRecord;

    .line 2781
    return-object p0
.end method

.method setIntent(Landroid/content/Intent;)Lcom/android/server/am/ActivityStarter;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 2655
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 2656
    return-object p0
.end method

.method setMayWait(I)Lcom/android/server/am/ActivityStarter;
    .registers 4
    .param p1, "userId"    # I

    .line 2805
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/am/ActivityStarter$Request;->mayWait:Z

    .line 2806
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/am/ActivityStarter$Request;->userId:I

    .line 2808
    return-object p0
.end method

.method setOutActivity([Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStarter;
    .registers 3
    .param p1, "outActivity"    # [Lcom/android/server/am/ActivityRecord;

    .line 2775
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->outActivity:[Lcom/android/server/am/ActivityRecord;

    .line 2776
    return-object p0
.end method

.method setProfilerInfo(Landroid/app/ProfilerInfo;)Lcom/android/server/am/ActivityStarter;
    .registers 3
    .param p1, "info"    # Landroid/app/ProfilerInfo;

    .line 2790
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->profilerInfo:Landroid/app/ProfilerInfo;

    .line 2791
    return-object p0
.end method

.method setRealCallingPid(I)Lcom/android/server/am/ActivityStarter;
    .registers 3
    .param p1, "pid"    # I

    .line 2736
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/am/ActivityStarter$Request;->realCallingPid:I

    .line 2737
    return-object p0
.end method

.method setRealCallingUid(I)Lcom/android/server/am/ActivityStarter;
    .registers 3
    .param p1, "uid"    # I

    .line 2741
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/am/ActivityStarter$Request;->realCallingUid:I

    .line 2742
    return-object p0
.end method

.method setReason(Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;
    .registers 3
    .param p1, "reason"    # Ljava/lang/String;

    .line 2665
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->reason:Ljava/lang/String;

    .line 2666
    return-object p0
.end method

.method setRequestCode(I)Lcom/android/server/am/ActivityStarter;
    .registers 3
    .param p1, "requestCode"    # I

    .line 2716
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/am/ActivityStarter$Request;->requestCode:I

    .line 2717
    return-object p0
.end method

.method setResolveInfo(Landroid/content/pm/ResolveInfo;)Lcom/android/server/am/ActivityStarter;
    .registers 3
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .line 2691
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 2692
    return-object p0
.end method

.method setResolvedType(Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;
    .registers 3
    .param p1, "type"    # Ljava/lang/String;

    .line 2681
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    .line 2682
    return-object p0
.end method

.method setResultTo(Landroid/os/IBinder;)Lcom/android/server/am/ActivityStarter;
    .registers 3
    .param p1, "resultTo"    # Landroid/os/IBinder;

    .line 2706
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    .line 2707
    return-object p0
.end method

.method setResultWho(Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;
    .registers 3
    .param p1, "resultWho"    # Ljava/lang/String;

    .line 2711
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->resultWho:Ljava/lang/String;

    .line 2712
    return-object p0
.end method

.method setStartFlags(I)Lcom/android/server/am/ActivityStarter;
    .registers 3
    .param p1, "startFlags"    # I

    .line 2746
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/am/ActivityStarter$Request;->startFlags:I

    .line 2747
    return-object p0
.end method

.method setUserId(I)Lcom/android/server/am/ActivityStarter;
    .registers 3
    .param p1, "userId"    # I

    .line 2800
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/am/ActivityStarter$Request;->userId:I

    .line 2801
    return-object p0
.end method

.method setVoiceInteractor(Lcom/android/internal/app/IVoiceInteractor;)Lcom/android/server/am/ActivityStarter;
    .registers 3
    .param p1, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;

    .line 2701
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 2702
    return-object p0
.end method

.method setVoiceSession(Landroid/service/voice/IVoiceInteractionSession;)Lcom/android/server/am/ActivityStarter;
    .registers 3
    .param p1, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;

    .line 2696
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 2697
    return-object p0
.end method

.method setWaitResult(Landroid/app/WaitResult;)Lcom/android/server/am/ActivityStarter;
    .registers 3
    .param p1, "result"    # Landroid/app/WaitResult;

    .line 2785
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mRequest:Lcom/android/server/am/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/am/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    .line 2786
    return-object p0
.end method

.method startResolvedActivity(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;[Lcom/android/server/am/ActivityRecord;)I
    .registers 11
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p4, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p5, "startFlags"    # I
    .param p6, "doResume"    # Z
    .param p7, "options"    # Landroid/app/ActivityOptions;
    .param p8, "inTask"    # Lcom/android/server/am/TaskRecord;
    .param p9, "outActivity"    # [Lcom/android/server/am/ActivityRecord;

    .line 529
    :try_start_0
    invoke-direct/range {p0 .. p9}, Lcom/android/server/am/ActivityStarter;->startActivity(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;[Lcom/android/server/am/ActivityRecord;)I

    move-result v0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_8

    .line 532
    invoke-direct {p0}, Lcom/android/server/am/ActivityStarter;->onExecutionComplete()V

    .line 529
    return v0

    .line 532
    :catchall_8
    move-exception v0

    invoke-direct {p0}, Lcom/android/server/am/ActivityStarter;->onExecutionComplete()V

    throw v0
.end method

.method updateBounds(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;)V
    .registers 12
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2431
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2432
    return-void

    .line 2435
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 2436
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_20

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->resizeStackWithLaunchBounds()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 2437
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v3, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, -0x1

    move-object v4, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ActivityManagerService;->resizeStack(ILandroid/graphics/Rect;ZZZI)V

    goto :goto_23

    .line 2439
    :cond_20
    invoke-virtual {p1, p2}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    .line 2441
    :goto_23
    return-void
.end method
