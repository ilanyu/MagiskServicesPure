.class public Lcom/android/server/am/ActivityStartController;
.super Ljava/lang/Object;
.source "ActivityStartController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityStartController$StartHandler;
    }
.end annotation


# static fields
.field private static final DO_PENDING_ACTIVITY_LAUNCHES_MSG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field private final mFactory:Lcom/android/server/am/ActivityStarter$Factory;

.field private final mHandler:Landroid/os/Handler;

.field private mLastHomeActivityStartRecord:Lcom/android/server/am/ActivityRecord;

.field private mLastHomeActivityStartResult:I

.field private mLastStarter:Lcom/android/server/am/ActivityStarter;

.field private final mPendingActivityLaunches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingRemoteAnimationRegistry:Lcom/android/server/am/PendingRemoteAnimationRegistry;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private final mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field private tmpOutRecord:[Lcom/android/server/am/ActivityRecord;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 7
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    .line 115
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    new-instance v1, Lcom/android/server/am/ActivityStarter$DefaultFactory;

    iget-object v2, p1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    new-instance v3, Lcom/android/server/am/ActivityStartInterceptor;

    iget-object v4, p1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-direct {v3, p1, v4}, Lcom/android/server/am/ActivityStartInterceptor;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;)V

    invoke-direct {v1, p1, v2, v3}, Lcom/android/server/am/ActivityStarter$DefaultFactory;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStartInterceptor;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/am/ActivityStartController;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStarter$Factory;)V

    .line 118
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStarter$Factory;)V
    .registers 6
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "supervisor"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p3, "factory"    # Lcom/android/server/am/ActivityStarter$Factory;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/server/am/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/am/ActivityStartController;->tmpOutRecord:[Lcom/android/server/am/ActivityRecord;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    .line 123
    iput-object p1, p0, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 124
    iput-object p2, p0, Lcom/android/server/am/ActivityStartController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 125
    new-instance v0, Lcom/android/server/am/ActivityStartController$StartHandler;

    iget-object v1, p0, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/ActivityStartController$StartHandler;-><init>(Lcom/android/server/am/ActivityStartController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityStartController;->mHandler:Landroid/os/Handler;

    .line 126
    iput-object p3, p0, Lcom/android/server/am/ActivityStartController;->mFactory:Lcom/android/server/am/ActivityStarter$Factory;

    .line 127
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mFactory:Lcom/android/server/am/ActivityStarter$Factory;

    invoke-interface {v0, p0}, Lcom/android/server/am/ActivityStarter$Factory;->setController(Lcom/android/server/am/ActivityStartController;)V

    .line 128
    new-instance v0, Lcom/android/server/am/PendingRemoteAnimationRegistry;

    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-direct {v0, p1, v1}, Lcom/android/server/am/PendingRemoteAnimationRegistry;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityStartController;->mPendingRemoteAnimationRegistry:Lcom/android/server/am/PendingRemoteAnimationRegistry;

    .line 130
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/ActivityStartController;)Lcom/android/server/am/ActivityManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityStartController;

    .line 63
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method


# virtual methods
.method addPendingActivityLaunch(Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;)V
    .registers 3
    .param p1, "launch"    # Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;

    .line 416
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    return-void
.end method

.method checkTargetUser(IZIILjava/lang/String;)I
    .registers 15
    .param p1, "targetUserId"    # I
    .param p2, "validateIncomingUser"    # Z
    .param p3, "realCallingPid"    # I
    .param p4, "realCallingUid"    # I
    .param p5, "reason"    # Ljava/lang/String;

    .line 239
    if-eqz p2, :cond_12

    .line 240
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v8, 0x0

    move v2, p3

    move v3, p4

    move v4, p1

    move-object v7, p5

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/UserController;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 243
    :cond_12
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0, p1}, Lcom/android/server/am/UserController;->ensureNotSpecialUser(I)V

    .line 244
    return p1
.end method

.method clearPendingActivityLaunches(Ljava/lang/String;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .line 420
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 422
    .local v0, "pendingLaunches":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "palNdx":I
    :goto_8
    if-ltz v1, :cond_26

    .line 423
    iget-object v2, p0, Lcom/android/server/am/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;

    .line 424
    .local v2, "pal":Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    iget-object v3, v2, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->r:Lcom/android/server/am/ActivityRecord;

    .line 425
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_23

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 426
    iget-object v4, p0, Lcom/android/server/am/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 422
    .end local v2    # "pal":Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_23
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 429
    .end local v1    # "palNdx":I
    :cond_26
    iget-object v1, p0, Lcom/android/server/am/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v0, :cond_30

    const/4 v1, 0x1

    goto :goto_31

    :cond_30
    const/4 v1, 0x0

    :goto_31
    return v1
.end method

.method doPendingActivityLaunches(Z)V
    .registers 14
    .param p1, "doResume"    # Z

    .line 400
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_54

    .line 401
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;

    .line 402
    .local v0, "pal":Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    if-eqz p1, :cond_1d

    iget-object v2, p0, Lcom/android/server/am/ActivityStartController;->mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v1, 0x1

    nop

    :cond_1d
    move v8, v1

    .line 403
    .local v8, "resume":Z
    const/4 v1, 0x0

    const-string/jumbo v2, "pendingActivityLaunch"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v2

    .line 406
    .local v2, "starter":Lcom/android/server/am/ActivityStarter;
    :try_start_26
    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->r:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->sourceRecord:Lcom/android/server/am/ActivityRecord;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, v0, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->startFlags:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v2 .. v11}, Lcom/android/server/am/ActivityStarter;->startResolvedActivity(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;[Lcom/android/server/am/ActivityRecord;)I
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_34} :catch_35

    .line 411
    goto :goto_53

    .line 408
    :catch_35
    move-exception v1

    .line 409
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception during pending activity launch pal="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 410
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->sendErrorResult(Ljava/lang/String;)V

    .line 412
    .end local v0    # "pal":Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "starter":Lcom/android/server/am/ActivityStarter;
    .end local v8    # "resume":Z
    :goto_53
    goto :goto_0

    .line 413
    :cond_54
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpPackage"    # Ljava/lang/String;

    .line 442
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 443
    const-string/jumbo v0, "mLastHomeActivityStartResult="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 444
    iget v0, p0, Lcom/android/server/am/ActivityStartController;->mLastHomeActivityStartResult:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 446
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mLastHomeActivityStartRecord:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_31

    .line 447
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 448
    const-string/jumbo v0, "mLastHomeActivityStartRecord:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 449
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mLastHomeActivityStartRecord:Lcom/android/server/am/ActivityRecord;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 452
    :cond_31
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_37

    move v2, v1

    goto :goto_38

    :cond_37
    move v2, v0

    .line 454
    .local v2, "dumpPackagePresent":Z
    :goto_38
    iget-object v3, p0, Lcom/android/server/am/ActivityStartController;->mLastStarter:Lcom/android/server/am/ActivityStarter;

    if-eqz v3, :cond_75

    .line 455
    if-eqz v2, :cond_56

    iget-object v3, p0, Lcom/android/server/am/ActivityStartController;->mLastStarter:Lcom/android/server/am/ActivityStarter;

    .line 456
    invoke-virtual {v3, p3}, Lcom/android/server/am/ActivityStarter;->relatedToPackage(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_56

    iget-object v3, p0, Lcom/android/server/am/ActivityStartController;->mLastHomeActivityStartRecord:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_55

    iget-object v3, p0, Lcom/android/server/am/ActivityStartController;->mLastHomeActivityStartRecord:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 458
    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_55

    goto :goto_56

    :cond_55
    goto :goto_57

    :cond_56
    :goto_56
    move v0, v1

    .line 460
    .local v0, "dump":Z
    :goto_57
    if-eqz v0, :cond_75

    .line 461
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 462
    iget-object v1, p0, Lcom/android/server/am/ActivityStartController;->mLastStarter:Lcom/android/server/am/ActivityStarter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Lcom/android/server/am/ActivityStarter;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 464
    if-eqz v2, :cond_75

    .line 465
    return-void

    .line 470
    .end local v0    # "dump":Z
    :cond_75
    if-eqz v2, :cond_7f

    .line 471
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 472
    const-string v0, "(nothing)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 474
    :cond_7f
    return-void
.end method

.method getPendingRemoteAnimationRegistry()Lcom/android/server/am/PendingRemoteAnimationRegistry;
    .registers 2

    .line 438
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mPendingRemoteAnimationRegistry:Lcom/android/server/am/PendingRemoteAnimationRegistry;

    return-object v0
.end method

.method obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "reason"    # Ljava/lang/String;

    .line 138
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mFactory:Lcom/android/server/am/ActivityStarter$Factory;

    invoke-interface {v0}, Lcom/android/server/am/ActivityStarter$Factory;->obtain()Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStarter;->setIntent(Landroid/content/Intent;)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/am/ActivityStarter;->setReason(Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    return-object v0
.end method

.method onExecutionComplete(Lcom/android/server/am/ActivityStarter;)V
    .registers 3
    .param p1, "starter"    # Lcom/android/server/am/ActivityStarter;

    .line 142
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mLastStarter:Lcom/android/server/am/ActivityStarter;

    if-nez v0, :cond_c

    .line 143
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mFactory:Lcom/android/server/am/ActivityStarter$Factory;

    invoke-interface {v0}, Lcom/android/server/am/ActivityStarter$Factory;->obtain()Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStartController;->mLastStarter:Lcom/android/server/am/ActivityStarter;

    .line 146
    :cond_c
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mLastStarter:Lcom/android/server/am/ActivityStarter;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStarter;->set(Lcom/android/server/am/ActivityStarter;)V

    .line 147
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mFactory:Lcom/android/server/am/ActivityStarter$Factory;

    invoke-interface {v0, p1}, Lcom/android/server/am/ActivityStarter$Factory;->recycle(Lcom/android/server/am/ActivityStarter;)V

    .line 148
    return-void
.end method

.method postStartActivityProcessingForLastStarter(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/ActivityStack;)V
    .registers 5
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "result"    # I
    .param p3, "targetStack"    # Lcom/android/server/am/ActivityStack;

    .line 156
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mLastStarter:Lcom/android/server/am/ActivityStarter;

    if-nez v0, :cond_5

    .line 157
    return-void

    .line 160
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mLastStarter:Lcom/android/server/am/ActivityStarter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/ActivityStarter;->postStartActivityProcessing(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/ActivityStack;)V

    .line 161
    return-void
.end method

.method registerRemoteAnimationForNextActivityStart(Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "adapter"    # Landroid/view/RemoteAnimationAdapter;

    .line 434
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mPendingRemoteAnimationRegistry:Lcom/android/server/am/PendingRemoteAnimationRegistry;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/PendingRemoteAnimationRegistry;->addPendingAnimation(Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;)V

    .line 435
    return-void
.end method

.method schedulePendingActivityLaunches(J)V
    .registers 5
    .param p1, "delayMs"    # J

    .line 394
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 395
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 396
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/ActivityStartController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 397
    return-void
.end method

.method startActivities(Landroid/app/IApplicationThread;ILjava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/am/SafeActivityOptions;ILjava/lang/String;)I
    .registers 43
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "intents"    # [Landroid/content/Intent;
    .param p5, "resolvedTypes"    # [Ljava/lang/String;
    .param p6, "resultTo"    # Landroid/os/IBinder;
    .param p7, "options"    # Lcom/android/server/am/SafeActivityOptions;
    .param p8, "userId"    # I
    .param p9, "reason"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    .line 299
    if-eqz v3, :cond_186

    .line 302
    if-eqz v4, :cond_17b

    .line 305
    array-length v0, v3

    array-length v5, v4

    if-ne v0, v5, :cond_171

    .line 309
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 310
    .local v5, "realCallingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 313
    .local v6, "realCallingUid":I
    const/4 v0, -0x1

    if-ltz p2, :cond_1f

    .line 314
    const/4 v8, -0x1

    .line 319
    .local v8, "callingPid":I
    move/from16 v7, p2

    goto :goto_26

    .line 315
    .end local v8    # "callingPid":I
    :cond_1f
    if-nez v2, :cond_24

    .line 316
    move v8, v5

    .line 317
    .restart local v8    # "callingPid":I
    move v7, v6

    .line 317
    .end local p2    # "callingUid":I
    .local v7, "callingUid":I
    goto :goto_26

    .line 319
    .end local v7    # "callingUid":I
    .end local v8    # "callingPid":I
    .restart local p2    # "callingUid":I
    :cond_24
    move v7, v0

    .line 319
    .end local p2    # "callingUid":I
    .restart local v7    # "callingUid":I
    move v8, v0

    .line 321
    .restart local v8    # "callingPid":I
    :goto_26
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 323
    .local v9, "origId":J
    :try_start_2a
    iget-object v11, v1, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_167

    :try_start_2d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 324
    const/4 v12, 0x1

    new-array v13, v12, [Lcom/android/server/am/ActivityRecord;
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_158

    .line 325
    .local v13, "outActivity":[Lcom/android/server/am/ActivityRecord;
    move-object/from16 v14, p6

    const/4 v15, 0x0

    .line 325
    .end local p6    # "resultTo":Landroid/os/IBinder;
    .local v14, "resultTo":Landroid/os/IBinder;
    .local v15, "i":I
    :goto_36
    :try_start_36
    array-length v0, v3

    if-ge v15, v0, :cond_146

    .line 326
    aget-object v0, v3, v15
    :try_end_3b
    .catchall {:try_start_36 .. :try_end_3b} :catchall_153

    .line 327
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_44

    .line 328
    nop

    .line 325
    move-wide v2, v9

    move-object v1, v13

    move-object/from16 v13, p9

    goto/16 :goto_130

    .line 332
    :cond_44
    if-eqz v0, :cond_66

    :try_start_46
    invoke-virtual {v0}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v18

    if-nez v18, :cond_4f

    .line 336
    move-wide/from16 v19, v9

    goto :goto_68

    .line 333
    :cond_4f
    new-instance v12, Ljava/lang/IllegalArgumentException;
    :try_end_51
    .catchall {:try_start_46 .. :try_end_51} :catchall_60

    move-wide/from16 v19, v9

    :try_start_53
    const-string v9, "File descriptors passed in Intent"

    .line 333
    .end local v9    # "origId":J
    .local v19, "origId":J
    invoke-direct {v12, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_59
    .catchall {:try_start_53 .. :try_end_59} :catchall_59

    .line 385
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v13    # "outActivity":[Lcom/android/server/am/ActivityRecord;
    .end local v15    # "i":I
    :catchall_59
    move-exception v0

    move-object/from16 v13, p9

    move-wide/from16 v2, v19

    goto/16 :goto_15e

    .line 385
    .end local v19    # "origId":J
    .restart local v9    # "origId":J
    :catchall_60
    move-exception v0

    move-object/from16 v13, p9

    move-wide v2, v9

    .line 385
    .end local v9    # "origId":J
    .restart local v19    # "origId":J
    goto/16 :goto_15e

    .line 336
    .end local v19    # "origId":J
    .restart local v0    # "intent":Landroid/content/Intent;
    .restart local v9    # "origId":J
    .restart local v13    # "outActivity":[Lcom/android/server/am/ActivityRecord;
    .restart local v15    # "i":I
    :cond_66
    move-wide/from16 v19, v9

    .line 336
    .end local v9    # "origId":J
    .restart local v19    # "origId":J
    :goto_68
    :try_start_68
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    if-eqz v9, :cond_70

    move v9, v12

    goto :goto_71

    :cond_70
    const/4 v9, 0x0

    .line 339
    .local v9, "componentSpecified":Z
    :goto_71
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v0, v10

    .line 342
    iget-object v10, v1, Lcom/android/server/am/ActivityStartController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    aget-object v23, v4, v15

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v12, -0x2710

    .line 343
    invoke-static {v7, v6, v12}, Lcom/android/server/am/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v27

    .line 342
    move-object/from16 v21, v10

    move-object/from16 v22, v0

    move/from16 v26, p8

    invoke-virtual/range {v21 .. v27}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;II)Landroid/content/pm/ActivityInfo;

    move-result-object v10

    .line 346
    .local v10, "aInfo":Landroid/content/pm/ActivityInfo;
    iget-object v12, v1, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v28, v13

    move/from16 v13, p8

    invoke-virtual {v12, v10, v13}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v12
    :try_end_99
    .catchall {:try_start_68 .. :try_end_99} :catchall_140

    .line 346
    .end local v13    # "outActivity":[Lcom/android/server/am/ActivityRecord;
    .local v28, "outActivity":[Lcom/android/server/am/ActivityRecord;
    move-object v10, v12

    .line 348
    if-eqz v10, :cond_ad

    :try_start_9c
    iget-object v12, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v12, v12, 0x2

    if-nez v12, :cond_a5

    goto :goto_ad

    .line 351
    :cond_a5
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "FLAG_CANT_SAVE_STATE not supported here"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_ad
    .catchall {:try_start_9c .. :try_end_ad} :catchall_59

    .line 355
    :cond_ad
    :goto_ad
    :try_start_ad
    array-length v12, v3
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_140

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    if-ne v15, v12, :cond_b4

    move v12, v13

    goto :goto_b5

    :cond_b4
    const/4 v12, 0x0

    .line 356
    .local v12, "top":Z
    :goto_b5
    const/16 v18, 0x0

    if-eqz v12, :cond_bd

    .line 357
    nop

    .line 358
    move-object/from16 v21, p7

    goto :goto_bf

    :cond_bd
    move-object/from16 v21, v18

    :goto_bf
    move-object/from16 v29, v21

    .line 359
    .local v29, "checkedOptions":Lcom/android/server/am/SafeActivityOptions;
    move-object/from16 v13, p9

    :try_start_c3
    invoke-virtual {v1, v0, v13}, Lcom/android/server/am/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v3

    .line 360
    invoke-virtual {v3, v2}, Lcom/android/server/am/ActivityStarter;->setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/am/ActivityStarter;

    move-result-object v3

    move-object/from16 v30, v0

    aget-object v0, v4, v15

    .line 361
    .end local v0    # "intent":Landroid/content/Intent;
    .local v30, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    .line 362
    invoke-virtual {v0, v10}, Lcom/android/server/am/ActivityStarter;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    .line 363
    invoke-virtual {v0, v14}, Lcom/android/server/am/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    .line 364
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStarter;->setRequestCode(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    .line 365
    invoke-virtual {v0, v8}, Lcom/android/server/am/ActivityStarter;->setCallingPid(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    .line 366
    invoke-virtual {v0, v7}, Lcom/android/server/am/ActivityStarter;->setCallingUid(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    .line 367
    move-object/from16 v3, p3

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    .line 368
    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityStarter;->setRealCallingPid(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    .line 369
    invoke-virtual {v0, v6}, Lcom/android/server/am/ActivityStarter;->setRealCallingUid(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    .line 370
    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStarter;->setActivityOptions(Lcom/android/server/am/SafeActivityOptions;)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    .line 371
    .end local v29    # "checkedOptions":Lcom/android/server/am/SafeActivityOptions;
    .local v1, "checkedOptions":Lcom/android/server/am/SafeActivityOptions;
    invoke-virtual {v0, v9}, Lcom/android/server/am/ActivityStarter;->setComponentSpecified(Z)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    .line 372
    move-object/from16 v31, v1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStarter;->setOutActivity([Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    .line 376
    .end local v28    # "outActivity":[Lcom/android/server/am/ActivityRecord;
    .local v1, "outActivity":[Lcom/android/server/am/ActivityRecord;
    .local v31, "checkedOptions":Lcom/android/server/am/SafeActivityOptions;
    invoke-virtual {v0, v12}, Lcom/android/server/am/ActivityStarter;->setAllowPendingRemoteAnimationRegistryLookup(Z)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    .line 377
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStarter;->execute()I

    move-result v0

    .line 379
    .local v0, "res":I
    if-gez v0, :cond_11c

    .line 380
    monitor-exit v11
    :try_end_113
    .catchall {:try_start_c3 .. :try_end_113} :catchall_13e

    .line 387
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    move-wide/from16 v2, v19

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 380
    .end local v19    # "origId":J
    .local v2, "origId":J
    return v0

    .line 383
    .end local v2    # "origId":J
    .restart local v19    # "origId":J
    :cond_11c
    move-wide/from16 v2, v19

    .line 383
    .end local v19    # "origId":J
    .restart local v2    # "origId":J
    const/16 v16, 0x0

    :try_start_120
    aget-object v17, v1, v16

    if-eqz v17, :cond_12b

    move/from16 v32, v0

    aget-object v0, v1, v16

    .line 383
    .end local v0    # "res":I
    .local v32, "res":I
    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    goto :goto_12f

    .line 383
    .end local v32    # "res":I
    .restart local v0    # "res":I
    :cond_12b
    move/from16 v32, v0

    .line 383
    .end local v0    # "res":I
    .restart local v32    # "res":I
    move-object/from16 v0, v18

    :goto_12f
    move-object v14, v0

    .line 325
    .end local v9    # "componentSpecified":Z
    .end local v10    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v12    # "top":Z
    .end local v30    # "intent":Landroid/content/Intent;
    .end local v31    # "checkedOptions":Lcom/android/server/am/SafeActivityOptions;
    .end local v32    # "res":I
    :goto_130
    add-int/lit8 v15, v15, 0x1

    move-object v13, v1

    move-wide v9, v2

    const/4 v0, -0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    const/4 v12, 0x1

    goto/16 :goto_36

    .line 385
    .end local v1    # "outActivity":[Lcom/android/server/am/ActivityRecord;
    .end local v2    # "origId":J
    .end local v15    # "i":I
    .restart local v19    # "origId":J
    :catchall_13e
    move-exception v0

    goto :goto_143

    :catchall_140
    move-exception v0

    move-object/from16 v13, p9

    :goto_143
    move-wide/from16 v2, v19

    .line 385
    .end local v19    # "origId":J
    .restart local v2    # "origId":J
    goto :goto_15e

    .line 385
    .end local v2    # "origId":J
    .local v9, "origId":J
    :cond_146
    move-object/from16 v13, p9

    move-wide v2, v9

    .line 385
    .end local v9    # "origId":J
    .restart local v2    # "origId":J
    monitor-exit v11
    :try_end_14a
    .catchall {:try_start_120 .. :try_end_14a} :catchall_165

    :try_start_14a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_14d
    .catchall {:try_start_14a .. :try_end_14d} :catchall_163

    .line 387
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 388
    nop

    .line 390
    const/4 v0, 0x0

    return v0

    .line 385
    .end local v2    # "origId":J
    .restart local v9    # "origId":J
    :catchall_153
    move-exception v0

    move-object/from16 v13, p9

    move-wide v2, v9

    goto :goto_15e

    .line 385
    .end local v14    # "resultTo":Landroid/os/IBinder;
    .restart local p6    # "resultTo":Landroid/os/IBinder;
    :catchall_158
    move-exception v0

    move-object/from16 v13, p9

    move-wide v2, v9

    move-object/from16 v14, p6

    .line 385
    .end local v9    # "origId":J
    .end local p6    # "resultTo":Landroid/os/IBinder;
    .restart local v2    # "origId":J
    .restart local v14    # "resultTo":Landroid/os/IBinder;
    :goto_15e
    :try_start_15e
    monitor-exit v11
    :try_end_15f
    .catchall {:try_start_15e .. :try_end_15f} :catchall_165

    :try_start_15f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_163
    .catchall {:try_start_15f .. :try_end_163} :catchall_163

    .line 387
    :catchall_163
    move-exception v0

    goto :goto_16d

    .line 385
    :catchall_165
    move-exception v0

    goto :goto_15e

    .line 387
    .end local v2    # "origId":J
    .end local v14    # "resultTo":Landroid/os/IBinder;
    .restart local v9    # "origId":J
    .restart local p6    # "resultTo":Landroid/os/IBinder;
    :catchall_167
    move-exception v0

    move-object/from16 v13, p9

    move-wide v2, v9

    move-object/from16 v14, p6

    .line 387
    .end local v9    # "origId":J
    .end local p6    # "resultTo":Landroid/os/IBinder;
    .restart local v2    # "origId":J
    .restart local v14    # "resultTo":Landroid/os/IBinder;
    :goto_16d
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 306
    .end local v2    # "origId":J
    .end local v5    # "realCallingPid":I
    .end local v6    # "realCallingUid":I
    .end local v7    # "callingUid":I
    .end local v8    # "callingPid":I
    .end local v14    # "resultTo":Landroid/os/IBinder;
    .restart local p2    # "callingUid":I
    .restart local p6    # "resultTo":Landroid/os/IBinder;
    :cond_171
    move-object/from16 v13, p9

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "intents are length different than resolvedTypes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_17b
    move-object/from16 v13, p9

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "resolvedTypes is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 300
    :cond_186
    move-object/from16 v13, p9

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "intents is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final startActivitiesInPackage(ILjava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/am/SafeActivityOptions;IZ)I
    .registers 26
    .param p1, "uid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "intents"    # [Landroid/content/Intent;
    .param p4, "resolvedTypes"    # [Ljava/lang/String;
    .param p5, "resultTo"    # Landroid/os/IBinder;
    .param p6, "options"    # Lcom/android/server/am/SafeActivityOptions;
    .param p7, "userId"    # I
    .param p8, "validateIncomingUser"    # Z

    .line 286
    const-string/jumbo v0, "startActivityInPackage"

    .line 288
    .local v0, "reason":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 289
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const-string/jumbo v6, "startActivityInPackage"

    .line 288
    move-object/from16 v1, p0

    move/from16 v2, p7

    move/from16 v3, p8

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityStartController;->checkTargetUser(IZIILjava/lang/String;)I

    move-result v1

    .line 292
    .end local p7    # "userId":I
    .local v1, "userId":I
    const-string/jumbo v16, "startActivityInPackage"

    const/4 v8, 0x0

    move-object/from16 v7, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    move v15, v1

    invoke-virtual/range {v7 .. v16}, Lcom/android/server/am/ActivityStartController;->startActivities(Landroid/app/IApplicationThread;ILjava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/am/SafeActivityOptions;ILjava/lang/String;)I

    move-result v2

    return v2
.end method

.method final startActivityInPackage(IIILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILcom/android/server/am/SafeActivityOptions;ILcom/android/server/am/TaskRecord;Ljava/lang/String;Z)I
    .registers 32
    .param p1, "uid"    # I
    .param p2, "realCallingPid"    # I
    .param p3, "realCallingUid"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "resolvedType"    # Ljava/lang/String;
    .param p7, "resultTo"    # Landroid/os/IBinder;
    .param p8, "resultWho"    # Ljava/lang/String;
    .param p9, "requestCode"    # I
    .param p10, "startFlags"    # I
    .param p11, "options"    # Lcom/android/server/am/SafeActivityOptions;
    .param p12, "userId"    # I
    .param p13, "inTask"    # Lcom/android/server/am/TaskRecord;
    .param p14, "reason"    # Ljava/lang/String;
    .param p15, "validateIncomingUser"    # Z

    .line 253
    move-object/from16 v0, p0

    move/from16 v1, p12

    move/from16 v2, p15

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p14

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStartController;->checkTargetUser(IZIILjava/lang/String;)I

    move-result v0

    .line 257
    .end local p12    # "userId":I
    .local v0, "userId":I
    move-object/from16 v1, p0

    move-object/from16 v2, p5

    move-object/from16 v3, p14

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v4

    .line 258
    move/from16 v5, p1

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityStarter;->setCallingUid(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v4

    .line 259
    move/from16 v6, p2

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivityStarter;->setRealCallingPid(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v4

    .line 260
    move/from16 v7, p3

    invoke-virtual {v4, v7}, Lcom/android/server/am/ActivityStarter;->setRealCallingUid(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v4

    .line 261
    move-object/from16 v8, p4

    invoke-virtual {v4, v8}, Lcom/android/server/am/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v4

    .line 262
    move-object/from16 v9, p6

    invoke-virtual {v4, v9}, Lcom/android/server/am/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v4

    .line 263
    move-object/from16 v10, p7

    invoke-virtual {v4, v10}, Lcom/android/server/am/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/am/ActivityStarter;

    move-result-object v4

    .line 264
    move-object/from16 v11, p8

    invoke-virtual {v4, v11}, Lcom/android/server/am/ActivityStarter;->setResultWho(Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v4

    .line 265
    move/from16 v12, p9

    invoke-virtual {v4, v12}, Lcom/android/server/am/ActivityStarter;->setRequestCode(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v4

    .line 266
    move/from16 v13, p10

    invoke-virtual {v4, v13}, Lcom/android/server/am/ActivityStarter;->setStartFlags(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v4

    .line 267
    move-object/from16 v14, p11

    invoke-virtual {v4, v14}, Lcom/android/server/am/ActivityStarter;->setActivityOptions(Lcom/android/server/am/SafeActivityOptions;)Lcom/android/server/am/ActivityStarter;

    move-result-object v4

    .line 268
    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityStarter;->setMayWait(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v4

    .line 269
    move-object/from16 v15, p13

    invoke-virtual {v4, v15}, Lcom/android/server/am/ActivityStarter;->setInTask(Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/ActivityStarter;

    move-result-object v4

    .line 270
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStarter;->execute()I

    move-result v4

    .line 257
    return v4
.end method

.method startHomeActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "reason"    # Ljava/lang/String;

    .line 164
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p3}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackTaskToTop(Ljava/lang/String;)Z

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startHomeActivity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityStartController;->tmpOutRecord:[Lcom/android/server/am/ActivityRecord;

    .line 167
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStarter;->setOutActivity([Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    .line 168
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStarter;->setCallingUid(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    .line 169
    invoke-virtual {v0, p2}, Lcom/android/server/am/ActivityStarter;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    .line 170
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStarter;->execute()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityStartController;->mLastHomeActivityStartResult:I

    .line 171
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->tmpOutRecord:[Lcom/android/server/am/ActivityRecord;

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/server/am/ActivityStartController;->mLastHomeActivityStartRecord:Lcom/android/server/am/ActivityRecord;

    .line 172
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->inResumeTopActivity:Z

    if-eqz v0, :cond_41

    .line 176
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleResumeTopActivities()V

    .line 178
    :cond_41
    return-void
.end method

.method startSetupActivity()V
    .registers 11

    .line 185
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getCheckedForSetup()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 186
    return-void

    .line 192
    :cond_9
    iget-object v0, p0, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 193
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v1, v1, Lcom/android/server/am/ActivityManagerService;->mFactoryTest:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_a8

    const-string v1, "device_provisioned"

    .line 194
    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_a8

    .line 196
    iget-object v1, p0, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->setCheckedForSetup(Z)V

    .line 199
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.UPGRADE_SETUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 200
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/am/ActivityStartController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 201
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const v4, 0x100480

    invoke-virtual {v2, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 204
    .local v2, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a8

    .line 205
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 206
    .local v4, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_59

    .line 207
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "android.SETUP_VERSION"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_5a

    .line 208
    :cond_59
    const/4 v5, 0x0

    .line 209
    .local v5, "vers":Ljava/lang/String;
    :goto_5a
    if-nez v5, :cond_70

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v6, :cond_70

    .line 210
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v7, "android.SETUP_VERSION"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 213
    :cond_70
    const-string/jumbo v6, "last_setup_shown"

    invoke-static {v0, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 215
    .local v6, "lastVers":Ljava/lang/String;
    if-eqz v5, :cond_a8

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a8

    .line 216
    const/high16 v7, 0x10000000

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 217
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 219
    const-string/jumbo v7, "startSetupActivity"

    invoke-virtual {p0, v1, v7}, Lcom/android/server/am/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v7

    .line 220
    invoke-virtual {v7, v3}, Lcom/android/server/am/ActivityStarter;->setCallingUid(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v3

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 221
    invoke-virtual {v3, v7}, Lcom/android/server/am/ActivityStarter;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityStarter;

    move-result-object v3

    .line 222
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStarter;->execute()I

    .line 226
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v5    # "vers":Ljava/lang/String;
    .end local v6    # "lastVers":Ljava/lang/String;
    :cond_a8
    return-void
.end method
