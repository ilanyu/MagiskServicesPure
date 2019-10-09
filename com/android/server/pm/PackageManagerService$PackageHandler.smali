.class Lcom/android/server/pm/PackageManagerService$PackageHandler;
.super Landroid/os/Handler;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageHandler"
.end annotation


# instance fields
.field private mBound:Z

.field final mPendingInstalls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/pm/PackageManagerService$HandlerParams;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/Looper;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1456
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 1457
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1430
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    .line 1431
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    .line 1458
    return-void
.end method

.method private connectToService()Z
    .registers 7

    .line 1436
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcom/android/server/pm/PackageManagerService;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 1437
    .local v0, "service":Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1438
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mDefContainerConn:Lcom/android/server/pm/PackageManagerService$DefaultContainerConnection;
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$500(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$DefaultContainerConnection;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v5, 0x1

    invoke-virtual {v2, v0, v3, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    const/16 v3, 0xa

    if-eqz v2, :cond_2a

    .line 1440
    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1441
    iput-boolean v5, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    .line 1442
    return v5

    .line 1444
    :cond_2a
    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1445
    return v1
.end method

.method private disconnectService()V
    .registers 3

    .line 1449
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerService;->access$602(Lcom/android/server/pm/PackageManagerService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;

    .line 1450
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    .line 1451
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1452
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mDefContainerConn:Lcom/android/server/pm/PackageManagerService$DefaultContainerConnection;
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->access$500(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$DefaultContainerConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1453
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1454
    return-void
.end method


# virtual methods
.method doHandleMessage(Landroid/os/Message;)V
    .registers 37
    .param p1, "msg"    # Landroid/os/Message;

    move-object/from16 v1, p0

    .line 1469
    move-object/from16 v2, p1

    iget v0, v2, Landroid/os/Message;->what:I

    const/16 v3, 0xe

    const/4 v4, 0x3

    const/4 v5, -0x1

    const/4 v6, 0x6

    const/16 v7, 0xa

    const/4 v8, 0x1

    const-wide/32 v9, 0x40000

    const/4 v11, 0x0

    packed-switch v0, :pswitch_data_652

    :pswitch_15
    goto/16 :goto_651

    .line 1471
    :pswitch_17
    iget-boolean v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    if-nez v0, :cond_651

    .line 1472
    const-string v0, "earlyBindingMCS"

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    .line 1473
    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    .line 1472
    invoke-static {v9, v10, v0, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1474
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->connectToService()Z

    move-result v0

    if-nez v0, :cond_35

    .line 1475
    const-string v0, "PackageManager"

    const-string v3, "Failed to bind to media container service"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    :cond_35
    const-string v0, "earlyBindingMCS"

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    .line 1478
    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    .line 1477
    invoke-static {v9, v10, v0, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    goto/16 :goto_651

    .line 1921
    :pswitch_44
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mInstantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

    iget-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/pm/InstantAppRequest;

    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-static {v0, v3, v4, v5, v6}, Lcom/android/server/pm/InstantAppResolver;->doInstantAppResolutionPhaseTwo(Landroid/content/Context;Lcom/android/server/pm/InstantAppResolverConnection;Landroid/content/pm/InstantAppRequest;Landroid/content/pm/ActivityInfo;Landroid/os/Handler;)V

    goto/16 :goto_651

    .line 1775
    :pswitch_5d
    invoke-static {v11}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1776
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 1777
    const/16 v0, 0x13

    :try_start_67
    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    .line 1778
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget v4, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v4}, Lcom/android/server/pm/Settings;->writePackageListLPr(I)V

    .line 1779
    monitor-exit v3
    :try_end_74
    .catchall {:try_start_67 .. :try_end_74} :catchall_79

    .line 1780
    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1781
    goto/16 :goto_651

    .line 1779
    :catchall_79
    move-exception v0

    :try_start_7a
    monitor-exit v3
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_79

    throw v0

    .line 1878
    :pswitch_7c
    iget v0, v2, Landroid/os/Message;->arg1:I

    .line 1880
    .local v0, "verificationId":I
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mIntentFilterVerificationStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/IntentFilterVerificationState;

    .line 1882
    .local v3, "state":Lcom/android/server/pm/IntentFilterVerificationState;
    if-nez v3, :cond_a7

    .line 1883
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid IntentFilter verification token "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " received"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    goto/16 :goto_651

    .line 1888
    :cond_a7
    invoke-virtual {v3}, Lcom/android/server/pm/IntentFilterVerificationState;->getUserId()I

    move-result v4

    .line 1894
    .local v4, "userId":I
    iget-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/pm/IntentFilterVerificationResponse;

    .line 1897
    .local v5, "response":Lcom/android/server/pm/IntentFilterVerificationResponse;
    iget v6, v5, Lcom/android/server/pm/IntentFilterVerificationResponse;->callerUid:I

    iget v7, v5, Lcom/android/server/pm/IntentFilterVerificationResponse;->code:I

    invoke-virtual {v3, v6, v7}, Lcom/android/server/pm/IntentFilterVerificationState;->setVerifierResponse(II)Z

    .line 1905
    iget v6, v5, Lcom/android/server/pm/IntentFilterVerificationResponse;->code:I

    .line 1910
    invoke-virtual {v3}, Lcom/android/server/pm/IntentFilterVerificationState;->isVerificationComplete()Z

    move-result v6

    if-eqz v6, :cond_651

    .line 1911
    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mIntentFilterVerifier:Lcom/android/server/pm/PackageManagerService$IntentFilterVerifier;
    invoke-static {v6}, Lcom/android/server/pm/PackageManagerService;->access$1400(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$IntentFilterVerifier;

    move-result-object v6

    invoke-interface {v6, v0}, Lcom/android/server/pm/PackageManagerService$IntentFilterVerifier;->receiveVerificationResponse(I)V

    goto/16 :goto_651

    .line 1872
    .end local v0    # "verificationId":I
    .end local v3    # "state":Lcom/android/server/pm/IntentFilterVerificationState;
    .end local v4    # "userId":I
    .end local v5    # "response":Lcom/android/server/pm/IntentFilterVerificationResponse;
    :pswitch_c9
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;

    .line 1873
    .local v0, "params":Lcom/android/server/pm/PackageManagerService$IFVerificationParams;
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;->userId:I

    iget v5, v0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;->verifierUid:I

    iget-boolean v6, v0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;->replacing:Z

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;->pkg:Landroid/content/pm/PackageParser$Package;

    # invokes: Lcom/android/server/pm/PackageManagerService;->verifyIntentFiltersIfNeeded(IIZLandroid/content/pm/PackageParser$Package;)V
    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/server/pm/PackageManagerService;->access$1300(Lcom/android/server/pm/PackageManagerService;IIZLandroid/content/pm/PackageParser$Package;)V

    .line 1875
    goto/16 :goto_651

    .line 1783
    .end local v0    # "params":Lcom/android/server/pm/PackageManagerService$IFVerificationParams;
    :pswitch_dc
    iget v3, v2, Landroid/os/Message;->arg1:I

    .line 1784
    .local v3, "verificationId":I
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/pm/PackageVerificationState;

    .line 1786
    .local v4, "state":Lcom/android/server/pm/PackageVerificationState;
    if-eqz v4, :cond_651

    invoke-virtual {v4}, Lcom/android/server/pm/PackageVerificationState;->timeoutExtended()Z

    move-result v0

    if-nez v0, :cond_651

    .line 1787
    invoke-virtual {v4}, Lcom/android/server/pm/PackageVerificationState;->getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v7

    .line 1788
    .local v7, "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    iget-object v0, v7, Lcom/android/server/pm/PackageManagerService$InstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedFile:Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v11

    .line 1790
    .local v11, "originUri":Landroid/net/Uri;
    const-string v0, "PackageManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Verification timed out for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1791
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 1793
    const/16 v12, -0x16

    .line 1795
    .local v12, "ret":I
    invoke-virtual {v7}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getUser()Landroid/os/UserHandle;

    move-result-object v13

    .line 1796
    .local v13, "user":Landroid/os/UserHandle;
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->getDefaultVerificationResponse(Landroid/os/UserHandle;)I
    invoke-static {v0, v13}, Lcom/android/server/pm/PackageManagerService;->access$1000(Lcom/android/server/pm/PackageManagerService;Landroid/os/UserHandle;)I

    move-result v0

    if-ne v0, v8, :cond_171

    .line 1798
    const-string v0, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Continuing with installation of "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1799
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v5, 0x2

    invoke-virtual {v4, v0, v5}, Lcom/android/server/pm/PackageVerificationState;->setVerifierResponse(II)Z

    .line 1801
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->broadcastPackageVerified(ILandroid/net/Uri;ILandroid/os/UserHandle;)V
    invoke-static {v0, v3, v11, v8, v13}, Lcom/android/server/pm/PackageManagerService;->access$1100(Lcom/android/server/pm/PackageManagerService;ILandroid/net/Uri;ILandroid/os/UserHandle;)V

    .line 1804
    invoke-virtual {v7}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getStatistic()Lcom/android/server/pm/InstallationStatistic;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 1805
    invoke-virtual {v7}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getStatistic()Lcom/android/server/pm/InstallationStatistic;

    move-result-object v5

    iget-wide v9, v5, Lcom/android/server/pm/InstallationStatistic;->timeBeginAospVerify:J

    sub-long/2addr v14, v9

    iput-wide v14, v0, Lcom/android/server/pm/InstallationStatistic;->timeAospSecurityCheck:J

    .line 1808
    :try_start_15c
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v0

    invoke-virtual {v7, v0, v8}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I

    move-result v0
    :try_end_166
    .catch Landroid/os/RemoteException; {:try_start_15c .. :try_end_166} :catch_168

    move v12, v0

    .line 1811
    :goto_167
    goto :goto_176

    .line 1809
    :catch_168
    move-exception v0

    .line 1810
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "PackageManager"

    const-string v8, "Could not contact the ContainerService"

    invoke-static {v5, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1810
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_167

    .line 1813
    :cond_171
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->broadcastPackageVerified(ILandroid/net/Uri;ILandroid/os/UserHandle;)V
    invoke-static {v0, v3, v11, v5, v13}, Lcom/android/server/pm/PackageManagerService;->access$1100(Lcom/android/server/pm/PackageManagerService;ILandroid/net/Uri;ILandroid/os/UserHandle;)V

    .line 1817
    :goto_176
    const-string/jumbo v0, "verification"

    const-wide/32 v8, 0x40000

    invoke-static {v8, v9, v0, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1820
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->processPendingInstall(Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V
    invoke-static {v0, v7, v12}, Lcom/android/server/pm/PackageManagerService;->access$1200(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V

    .line 1821
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v0, v6}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    .line 1822
    .end local v7    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v11    # "originUri":Landroid/net/Uri;
    .end local v12    # "ret":I
    .end local v13    # "user":Landroid/os/UserHandle;
    goto/16 :goto_651

    .line 1826
    .end local v3    # "verificationId":I
    .end local v4    # "state":Lcom/android/server/pm/PackageVerificationState;
    :pswitch_18d
    iget v3, v2, Landroid/os/Message;->arg1:I

    .line 1828
    .restart local v3    # "verificationId":I
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/pm/PackageVerificationState;

    .line 1829
    .restart local v4    # "state":Lcom/android/server/pm/PackageVerificationState;
    if-nez v4, :cond_1b9

    .line 1830
    const-string v0, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid verification token "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " received"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1831
    goto/16 :goto_651

    .line 1834
    :cond_1b9
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcom/android/server/pm/PackageVerificationResponse;

    .line 1836
    .local v5, "response":Lcom/android/server/pm/PackageVerificationResponse;
    iget v0, v5, Lcom/android/server/pm/PackageVerificationResponse;->callerUid:I

    iget v7, v5, Lcom/android/server/pm/PackageVerificationResponse;->code:I

    invoke-virtual {v4, v0, v7}, Lcom/android/server/pm/PackageVerificationState;->setVerifierResponse(II)Z

    .line 1838
    invoke-virtual {v4}, Lcom/android/server/pm/PackageVerificationState;->isVerificationComplete()Z

    move-result v0

    if-eqz v0, :cond_651

    .line 1839
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 1841
    invoke-virtual {v4}, Lcom/android/server/pm/PackageVerificationState;->getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v7

    .line 1842
    .restart local v7    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    iget-object v0, v7, Lcom/android/server/pm/PackageManagerService$InstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedFile:Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    .line 1844
    .local v9, "originUri":Landroid/net/Uri;
    invoke-virtual {v7}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getStatistic()Lcom/android/server/pm/InstallationStatistic;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 1845
    invoke-virtual {v7}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getStatistic()Lcom/android/server/pm/InstallationStatistic;

    move-result-object v12

    iget-wide v12, v12, Lcom/android/server/pm/InstallationStatistic;->timeBeginAospVerify:J

    sub-long/2addr v10, v12

    iput-wide v10, v0, Lcom/android/server/pm/InstallationStatistic;->timeAospSecurityCheck:J

    .line 1849
    invoke-virtual {v4}, Lcom/android/server/pm/PackageVerificationState;->isInstallAllowed()Z

    move-result v0

    if-eqz v0, :cond_21b

    .line 1850
    const/16 v10, -0x6e

    .line 1851
    .local v10, "ret":I
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget v11, v5, Lcom/android/server/pm/PackageVerificationResponse;->code:I

    .line 1852
    invoke-virtual {v4}, Lcom/android/server/pm/PackageVerificationState;->getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getUser()Landroid/os/UserHandle;

    move-result-object v12

    .line 1851
    # invokes: Lcom/android/server/pm/PackageManagerService;->broadcastPackageVerified(ILandroid/net/Uri;ILandroid/os/UserHandle;)V
    invoke-static {v0, v3, v9, v11, v12}, Lcom/android/server/pm/PackageManagerService;->access$1100(Lcom/android/server/pm/PackageManagerService;ILandroid/net/Uri;ILandroid/os/UserHandle;)V

    .line 1854
    :try_start_206
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v0

    invoke-virtual {v7, v0, v8}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I

    move-result v0
    :try_end_210
    .catch Landroid/os/RemoteException; {:try_start_206 .. :try_end_210} :catch_212

    move v10, v0

    goto :goto_21a

    .line 1855
    :catch_212
    move-exception v0

    .line 1856
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v8, "PackageManager"

    const-string v11, "Could not contact the ContainerService"

    invoke-static {v8, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1857
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_21a
    goto :goto_21d

    .line 1859
    .end local v10    # "ret":I
    :cond_21b
    const/16 v10, -0x16

    .line 1859
    .restart local v10    # "ret":I
    :goto_21d
    move v0, v10

    .line 1862
    .end local v10    # "ret":I
    .local v0, "ret":I
    const-string/jumbo v8, "verification"

    const-wide/32 v10, 0x40000

    invoke-static {v10, v11, v8, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1865
    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->processPendingInstall(Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V
    invoke-static {v8, v7, v0}, Lcom/android/server/pm/PackageManagerService;->access$1200(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V

    .line 1866
    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v8, v6}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    .line 1867
    .end local v0    # "ret":I
    .end local v7    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v9    # "originUri":Landroid/net/Uri;
    goto/16 :goto_651

    .line 1764
    .end local v3    # "verificationId":I
    .end local v4    # "state":Lcom/android/server/pm/PackageVerificationState;
    .end local v5    # "response":Lcom/android/server/pm/PackageVerificationResponse;
    :pswitch_235
    invoke-static {v11}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1765
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v4

    .line 1766
    :try_start_23d
    invoke-virtual {v1, v3}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    .line 1767
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$900(Lcom/android/server/pm/PackageManagerService;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_24a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_262

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1768
    .local v3, "userId":I
    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v5, v3}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 1769
    .end local v3    # "userId":I
    goto :goto_24a

    .line 1770
    :cond_262
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$900(Lcom/android/server/pm/PackageManagerService;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 1771
    monitor-exit v4
    :try_end_26c
    .catchall {:try_start_23d .. :try_end_26c} :catchall_271

    .line 1772
    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1773
    goto/16 :goto_651

    .line 1771
    :catchall_271
    move-exception v0

    :try_start_272
    monitor-exit v4
    :try_end_273
    .catchall {:try_start_272 .. :try_end_273} :catchall_271

    throw v0

    .line 1754
    :pswitch_274
    invoke-static {v11}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1755
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v4

    .line 1756
    const/16 v0, 0xd

    :try_start_27e
    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    .line 1757
    invoke-virtual {v1, v3}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    .line 1758
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0}, Lcom/android/server/pm/Settings;->writeLPr()V

    .line 1759
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Landroid/util/ArraySet;
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$900(Lcom/android/server/pm/PackageManagerService;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 1760
    monitor-exit v4
    :try_end_295
    .catchall {:try_start_27e .. :try_end_295} :catchall_29a

    .line 1761
    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1762
    goto/16 :goto_651

    .line 1760
    :catchall_29a
    move-exception v0

    :try_start_29b
    monitor-exit v4
    :try_end_29c
    .catchall {:try_start_29b .. :try_end_29c} :catchall_29a

    throw v0

    .line 1626
    :pswitch_29d
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService$HandlerParams;

    .line 1627
    .local v0, "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    const-string/jumbo v3, "queueInstall"

    .line 1628
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    .line 1627
    const-wide/32 v5, 0x40000

    invoke-static {v5, v6, v3, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1629
    goto/16 :goto_651

    .line 1588
    .end local v0    # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    :pswitch_2b4
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_651

    .line 1589
    iget-boolean v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    if-eqz v0, :cond_2c3

    .line 1590
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->disconnectService()V

    .line 1592
    :cond_2c3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->connectToService()Z

    move-result v0

    if-nez v0, :cond_651

    .line 1593
    const-string v0, "PackageManager"

    const-string v3, "Failed to bind to media container service"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2d6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageManagerService$HandlerParams;

    .line 1596
    .local v3, "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->serviceError()V

    .line 1597
    const-string/jumbo v4, "queueInstall"

    .line 1598
    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    .line 1597
    const-wide/32 v6, 0x40000

    invoke-static {v6, v7, v4, v5}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1599
    .end local v3    # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    goto :goto_2d6

    .line 1600
    :cond_2f3
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_651

    .line 1700
    :pswitch_2fa
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    iget v3, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService$PostInstallData;

    .line 1701
    .local v0, "data":Lcom/android/server/pm/PackageManagerService$PostInstallData;
    iget v3, v2, Landroid/os/Message;->arg2:I

    if-eqz v3, :cond_30d

    move/from16 v23, v8

    goto :goto_30f

    :cond_30d
    move/from16 v23, v11

    .line 1702
    .local v23, "didRestore":Z
    :goto_30f
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    iget v4, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->delete(I)V

    .line 1704
    if-eqz v0, :cond_3c7

    .line 1705
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PostInstallData;->args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 1706
    .local v3, "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PostInstallData;->res:Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    .line 1708
    .local v4, "parentRes":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    iget v5, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installFlags:I

    and-int/lit16 v5, v5, 0x100

    if-eqz v5, :cond_327

    move/from16 v19, v8

    goto :goto_329

    :cond_327
    move/from16 v19, v11

    .line 1710
    .local v19, "grantPermissions":Z
    :goto_329
    iget v5, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installFlags:I

    and-int/lit16 v5, v5, 0x1000

    if-nez v5, :cond_332

    move/from16 v20, v8

    goto :goto_334

    :cond_332
    move/from16 v20, v11

    .line 1712
    .local v20, "killApp":Z
    :goto_334
    iget v5, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installFlags:I

    const/high16 v6, 0x10000

    and-int/2addr v5, v6

    if-eqz v5, :cond_33e

    move/from16 v21, v8

    goto :goto_340

    :cond_33e
    move/from16 v21, v11

    .line 1714
    .local v21, "virtualPreload":Z
    :goto_340
    iget-object v5, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installGrantPermissions:[Ljava/lang/String;

    .line 1717
    .local v5, "grantedPermissions":[Ljava/lang/String;
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getStatistic()Lcom/android/server/pm/InstallationStatistic;

    move-result-object v6

    iget-object v7, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installerPackageName:Ljava/lang/String;

    iput-object v7, v6, Lcom/android/server/pm/InstallationStatistic;->installerPkg:Ljava/lang/String;

    .line 1718
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getStatistic()Lcom/android/server/pm/InstallationStatistic;

    move-result-object v6

    iget-object v7, v4, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->name:Ljava/lang/String;

    iput-object v7, v6, Lcom/android/server/pm/InstallationStatistic;->pkg:Ljava/lang/String;

    .line 1719
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getStatistic()Lcom/android/server/pm/InstallationStatistic;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iput-wide v7, v6, Lcom/android/server/pm/InstallationStatistic;->timeEndInstall:J

    .line 1720
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getStatistic()Lcom/android/server/pm/InstallationStatistic;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/InstallationStatistic;->dump()V

    .line 1724
    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installerPackageName:Ljava/lang/String;

    iget-object v8, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->observer:Landroid/content/pm/IPackageInstallObserver2;

    iget-object v9, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    .line 1728
    invoke-virtual {v9}, Lcom/android/server/pm/PackageManagerService$OriginInfo;->getLocation()Ljava/lang/String;

    move-result-object v26

    .line 1724
    move-object/from16 v17, v6

    move-object/from16 v18, v4

    move-object/from16 v22, v5

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    # invokes: Lcom/android/server/pm/PackageManagerService;->handlePackagePostInstall(Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;ZZZ[Ljava/lang/String;ZLjava/lang/String;Landroid/content/pm/IPackageInstallObserver2;Ljava/lang/String;)V
    invoke-static/range {v17 .. v26}, Lcom/android/server/pm/PackageManagerService;->access$800(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;ZZZ[Ljava/lang/String;ZLjava/lang/String;Landroid/content/pm/IPackageInstallObserver2;Ljava/lang/String;)V

    .line 1731
    iget-object v6, v4, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->addedChildPackages:Landroid/util/ArrayMap;

    if-eqz v6, :cond_387

    .line 1732
    iget-object v6, v4, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->addedChildPackages:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    goto :goto_388

    :cond_387
    move v6, v11

    .line 1733
    .local v6, "childCount":I
    :goto_388
    nop

    .line 1733
    .local v11, "i":I
    :goto_389
    move v7, v11

    .line 1733
    .end local v11    # "i":I
    .local v7, "i":I
    if-ge v7, v6, :cond_3b8

    .line 1734
    iget-object v8, v4, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->addedChildPackages:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    .line 1735
    .local v8, "childRes":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    iget-object v9, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/16 v30, 0x0

    iget-object v10, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installerPackageName:Ljava/lang/String;

    iget-object v11, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->observer:Landroid/content/pm/IPackageInstallObserver2;

    iget-object v12, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    .line 1739
    invoke-virtual {v12}, Lcom/android/server/pm/PackageManagerService$OriginInfo;->getLocation()Ljava/lang/String;

    move-result-object v33

    .line 1735
    move-object/from16 v24, v9

    move-object/from16 v25, v8

    move/from16 v26, v19

    move/from16 v27, v20

    move/from16 v28, v21

    move-object/from16 v29, v5

    move-object/from16 v31, v10

    move-object/from16 v32, v11

    # invokes: Lcom/android/server/pm/PackageManagerService;->handlePackagePostInstall(Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;ZZZ[Ljava/lang/String;ZLjava/lang/String;Landroid/content/pm/IPackageInstallObserver2;Ljava/lang/String;)V
    invoke-static/range {v24 .. v33}, Lcom/android/server/pm/PackageManagerService;->access$800(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;ZZZ[Ljava/lang/String;ZLjava/lang/String;Landroid/content/pm/IPackageInstallObserver2;Ljava/lang/String;)V

    .line 1733
    .end local v8    # "childRes":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    add-int/lit8 v11, v7, 0x1

    .line 1733
    .end local v7    # "i":I
    .restart local v11    # "i":I
    goto :goto_389

    .line 1743
    .end local v11    # "i":I
    :cond_3b8
    iget-object v7, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->traceMethod:Ljava/lang/String;

    if-eqz v7, :cond_3c6

    .line 1744
    iget-object v7, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->traceMethod:Ljava/lang/String;

    iget v8, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->traceCookie:I

    const-wide/32 v9, 0x40000

    invoke-static {v9, v10, v7, v8}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1747
    .end local v3    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v4    # "parentRes":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    .end local v5    # "grantedPermissions":[Ljava/lang/String;
    .end local v6    # "childCount":I
    .end local v19    # "grantPermissions":Z
    .end local v20    # "killApp":Z
    .end local v21    # "virtualPreload":Z
    :cond_3c6
    goto :goto_3df

    .line 1748
    :cond_3c7
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bogus post-install token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    :goto_3df
    const-string/jumbo v3, "postInstall"

    iget v4, v2, Landroid/os/Message;->arg1:I

    const-wide/32 v5, 0x40000

    invoke-static {v5, v6, v3, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1752
    .end local v0    # "data":Lcom/android/server/pm/PackageManagerService$PostInstallData;
    .end local v23    # "didRestore":Z
    goto/16 :goto_651

    .line 1678
    :pswitch_3ec
    invoke-static {v11}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1679
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 1680
    .local v3, "packageName":Ljava/lang/String;
    iget v6, v2, Landroid/os/Message;->arg1:I

    .line 1681
    .local v6, "userId":I
    iget v0, v2, Landroid/os/Message;->arg2:I

    if-eqz v0, :cond_3fb

    goto :goto_3fc

    :cond_3fb
    move v8, v11

    .line 1682
    .local v8, "andCode":Z
    :goto_3fc
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v9

    .line 1683
    if-ne v6, v5, :cond_420

    .line 1684
    :try_start_403
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    .line 1685
    .local v0, "users":[I
    array-length v4, v0

    :goto_40a
    if-ge v11, v4, :cond_41d

    aget v5, v0, v11

    .line 1686
    .local v5, "user":I
    iget-object v10, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    new-instance v12, Landroid/content/pm/PackageCleanItem;

    invoke-direct {v12, v5, v3, v8}, Landroid/content/pm/PackageCleanItem;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v10, v12}, Lcom/android/server/pm/Settings;->addPackageToCleanLPw(Landroid/content/pm/PackageCleanItem;)V

    .line 1685
    .end local v5    # "user":I
    add-int/lit8 v11, v11, 0x1

    goto :goto_40a

    .line 1689
    .end local v0    # "users":[I
    :cond_41d
    goto :goto_42c

    .line 1693
    :catchall_41e
    move-exception v0

    goto :goto_437

    .line 1690
    :cond_420
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    new-instance v4, Landroid/content/pm/PackageCleanItem;

    invoke-direct {v4, v6, v3, v8}, Landroid/content/pm/PackageCleanItem;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v0, v4}, Lcom/android/server/pm/Settings;->addPackageToCleanLPw(Landroid/content/pm/PackageCleanItem;)V

    .line 1693
    :goto_42c
    monitor-exit v9
    :try_end_42d
    .catchall {:try_start_403 .. :try_end_42d} :catchall_41e

    .line 1694
    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1695
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->startCleaningPackages()V

    .line 1696
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v6    # "userId":I
    .end local v8    # "andCode":Z
    goto/16 :goto_651

    .line 1693
    .restart local v3    # "packageName":Ljava/lang/String;
    .restart local v6    # "userId":I
    .restart local v8    # "andCode":Z
    :goto_437
    :try_start_437
    monitor-exit v9
    :try_end_438
    .catchall {:try_start_437 .. :try_end_438} :catchall_41e

    throw v0

    .line 1609
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v6    # "userId":I
    .end local v8    # "andCode":Z
    :pswitch_439
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_454

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_454

    .line 1610
    iget-boolean v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    if-eqz v0, :cond_651

    .line 1613
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->disconnectService()V

    goto/16 :goto_651

    .line 1615
    :cond_454
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_651

    .line 1619
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_651

    .line 1482
    :pswitch_465
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/PackageManagerService$HandlerParams;

    .line 1483
    .local v0, "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1488
    .local v3, "idx":I
    iget-boolean v5, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    if-nez v5, :cond_4b6

    .line 1489
    const-string v4, "bindingMCS"

    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    .line 1490
    invoke-static {v5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    .line 1489
    const-wide/32 v6, 0x40000

    invoke-static {v6, v7, v4, v5}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1493
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->connectToService()Z

    move-result v4

    if-nez v4, :cond_4af

    .line 1494
    const-string v4, "PackageManager"

    const-string v5, "Failed to bind to media container service"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->serviceError()V

    .line 1496
    const-string v4, "bindingMCS"

    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    .line 1497
    invoke-static {v5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    .line 1496
    const-wide/32 v6, 0x40000

    invoke-static {v6, v7, v4, v5}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1498
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->traceMethod:Ljava/lang/String;

    if-eqz v4, :cond_4ae

    .line 1499
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->traceMethod:Ljava/lang/String;

    iget v5, v0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->traceCookie:I

    invoke-static {v6, v7, v4, v5}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1502
    :cond_4ae
    return-void

    .line 1506
    :cond_4af
    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v4, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_651

    .line 1509
    :cond_4b6
    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v5, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1512
    if-nez v3, :cond_651

    .line 1513
    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_651

    .line 1520
    .end local v0    # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    .end local v3    # "idx":I
    :pswitch_4c6
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_4e3

    .line 1521
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/app/IMediaContainerService;

    # setter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v0, v3}, Lcom/android/server/pm/PackageManagerService;->access$602(Lcom/android/server/pm/PackageManagerService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;

    .line 1522
    const-string v0, "bindingMCS"

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    .line 1523
    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    .line 1522
    const-wide/32 v7, 0x40000

    invoke-static {v7, v8, v0, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1525
    :cond_4e3
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v0

    if-nez v0, :cond_534

    .line 1526
    iget-boolean v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    if-nez v0, :cond_52b

    .line 1529
    const-string v0, "PackageManager"

    const-string v3, "Cannot bind to media container service"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4fc
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_524

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageManagerService$HandlerParams;

    .line 1532
    .local v3, "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->serviceError()V

    .line 1533
    const-string/jumbo v4, "queueInstall"

    .line 1534
    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    .line 1533
    const-wide/32 v6, 0x40000

    invoke-static {v6, v7, v4, v5}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1535
    iget-object v4, v3, Lcom/android/server/pm/PackageManagerService$HandlerParams;->traceMethod:Ljava/lang/String;

    if-eqz v4, :cond_523

    .line 1536
    iget-object v4, v3, Lcom/android/server/pm/PackageManagerService$HandlerParams;->traceMethod:Ljava/lang/String;

    iget v5, v3, Lcom/android/server/pm/PackageManagerService$HandlerParams;->traceCookie:I

    invoke-static {v6, v7, v4, v5}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1539
    .end local v3    # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    :cond_523
    goto :goto_4fc

    .line 1540
    :cond_524
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_651

    .line 1542
    :cond_52b
    const-string v0, "PackageManager"

    const-string v3, "Waiting to connect to media container service"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_651

    .line 1544
    :cond_534
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_594

    .line 1545
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService$HandlerParams;

    .line 1546
    .restart local v0    # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    if-eqz v0, :cond_592

    .line 1547
    const-string/jumbo v3, "queueInstall"

    .line 1548
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    .line 1547
    const-wide/32 v7, 0x40000

    invoke-static {v7, v8, v3, v5}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1549
    const-string/jumbo v3, "startCopy"

    invoke-static {v7, v8, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1550
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->startCopy()Z

    move-result v3

    if-eqz v3, :cond_58c

    .line 1556
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_56c

    .line 1557
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1559
    :cond_56c
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_585

    .line 1560
    iget-boolean v3, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    if-eqz v3, :cond_58c

    .line 1563
    invoke-virtual {v1, v6}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    .line 1564
    invoke-virtual {v1, v6}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 1567
    .local v3, "ubmsg":Landroid/os/Message;
    const-wide/16 v4, 0x2710

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1568
    .end local v3    # "ubmsg":Landroid/os/Message;
    goto :goto_58c

    .line 1575
    :cond_585
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v3, v4}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    .line 1578
    :cond_58c
    :goto_58c
    const-wide/32 v3, 0x40000

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 1580
    .end local v0    # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    :cond_592
    goto/16 :goto_651

    .line 1582
    :cond_594
    const-string v0, "PackageManager"

    const-string v3, "Empty queue"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    goto/16 :goto_651

    .line 1634
    :pswitch_59d
    const/4 v3, 0x0

    .line 1636
    .local v3, "size":I
    invoke-static {v11}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1637
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v4

    .line 1638
    :try_start_5a6
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    if-nez v0, :cond_5ae

    .line 1639
    monitor-exit v4

    return-void

    .line 1641
    :cond_5ae
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->size()I

    move-result v0

    move v3, v0

    .line 1642
    if-gtz v3, :cond_5bb

    .line 1644
    monitor-exit v4

    return-void

    .line 1646
    :cond_5bb
    new-array v0, v3, [Ljava/lang/String;

    .line 1647
    .local v0, "packages":[Ljava/lang/String;
    new-array v6, v3, [Ljava/util/ArrayList;

    .line 1648
    .local v6, "components":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-array v9, v3, [I

    .line 1649
    .local v9, "uids":[I
    const/4 v10, 0x0

    .line 1651
    .local v10, "i":I
    move v12, v10

    move v10, v11

    .line 1651
    .local v10, "n":I
    .local v12, "i":I
    :goto_5c4
    iget-object v13, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    invoke-virtual {v13}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->userIdCount()I

    move-result v13

    if-ge v10, v13, :cond_62b

    .line 1652
    iget-object v13, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    invoke-virtual {v13, v10}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->userIdAt(I)I

    move-result v13

    .line 1653
    .local v13, "packageUserId":I
    iget-object v14, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v14, v14, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    .line 1654
    invoke-virtual {v14, v13}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->packagesForUserId(I)Landroid/util/ArrayMap;

    move-result-object v14

    .line 1655
    invoke-virtual {v14}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 1656
    .local v14, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    :goto_5e6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_626

    if-ge v12, v3, :cond_626

    .line 1657
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 1658
    .local v15, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    aput-object v16, v0, v12

    .line 1659
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    aput-object v16, v6, v12

    .line 1660
    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v5, v5, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 1661
    .local v5, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v5, :cond_61d

    .line 1662
    iget v11, v5, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v13, v11}, Landroid/os/UserHandle;->getUid(II)I

    move-result v11

    goto :goto_61e

    .line 1663
    :cond_61d
    const/4 v11, -0x1

    :goto_61e
    aput v11, v9, v12

    .line 1664
    add-int/lit8 v12, v12, 0x1

    .line 1665
    .end local v5    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v15    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    nop

    .line 1655
    const/4 v5, -0x1

    const/4 v11, 0x0

    goto :goto_5e6

    .line 1651
    .end local v13    # "packageUserId":I
    .end local v14    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    :cond_626
    add-int/lit8 v10, v10, 0x1

    const/4 v5, -0x1

    const/4 v11, 0x0

    goto :goto_5c4

    .line 1667
    .end local v10    # "n":I
    :cond_62b
    move v3, v12

    .line 1668
    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->clear()V

    .line 1669
    .end local v12    # "i":I
    monitor-exit v4
    :try_end_634
    .catchall {:try_start_5a6 .. :try_end_634} :catchall_64e

    move-object v4, v6

    .line 1669
    .end local v6    # "components":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v4, "components":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v5, v9

    .line 1671
    .end local v9    # "uids":[I
    .local v5, "uids":[I
    const/16 v34, 0x0

    .line 1671
    .local v34, "i":I
    :goto_638
    move/from16 v6, v34

    .line 1671
    .end local v34    # "i":I
    .local v6, "i":I
    if-ge v6, v3, :cond_64a

    .line 1672
    iget-object v9, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    aget-object v10, v0, v6

    aget-object v11, v4, v6

    aget v12, v5, v6

    # invokes: Lcom/android/server/pm/PackageManagerService;->sendPackageChangedBroadcast(Ljava/lang/String;ZLjava/util/ArrayList;I)V
    invoke-static {v9, v10, v8, v11, v12}, Lcom/android/server/pm/PackageManagerService;->access$700(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZLjava/util/ArrayList;I)V

    .line 1671
    add-int/lit8 v34, v6, 0x1

    .line 1671
    .end local v6    # "i":I
    .restart local v34    # "i":I
    goto :goto_638

    .line 1674
    .end local v34    # "i":I
    :cond_64a
    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1675
    goto :goto_651

    .line 1669
    .end local v0    # "packages":[Ljava/lang/String;
    .end local v4    # "components":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "uids":[I
    :catchall_64e
    move-exception v0

    :try_start_64f
    monitor-exit v4
    :try_end_650
    .catchall {:try_start_64f .. :try_end_650} :catchall_64e

    throw v0

    .line 1928
    .end local v3    # "size":I
    :cond_651
    :goto_651
    return-void

    :pswitch_data_652
    .packed-switch 0x1
        :pswitch_59d
        :pswitch_15
        :pswitch_4c6
        :pswitch_15
        :pswitch_465
        :pswitch_439
        :pswitch_3ec
        :pswitch_15
        :pswitch_2fa
        :pswitch_2b4
        :pswitch_29d
        :pswitch_15
        :pswitch_274
        :pswitch_235
        :pswitch_18d
        :pswitch_dc
        :pswitch_c9
        :pswitch_7c
        :pswitch_5d
        :pswitch_44
        :pswitch_17
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 1462
    const/16 v0, 0xa

    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->doHandleMessage(Landroid/os/Message;)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_a

    .line 1464
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1465
    nop

    .line 1466
    return-void

    .line 1464
    :catchall_a
    move-exception v1

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    throw v1
.end method
