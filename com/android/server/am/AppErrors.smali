.class Lcom/android/server/am/AppErrors;
.super Ljava/lang/Object;
.source "AppErrors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppErrors$BadProcessInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field private mAppsNotReportingCrashes:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mBadProcesses:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Lcom/android/server/am/AppErrors$BadProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/am/ActivityManagerService;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    .line 95
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;

    .line 105
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->assertRuntimeOverlayThemable()V

    .line 110
    iput-object p2, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 111
    iput-object p1, p0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/AppErrors;)Lcom/android/server/am/ActivityManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/AppErrors;

    .line 78
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method private createAppErrorReportLocked(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/app/ApplicationErrorReport;
    .registers 8
    .param p1, "r"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "timeMillis"    # J
    .param p4, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 657
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 658
    return-object v1

    .line 661
    :cond_6
    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->crashing:Z

    if-nez v0, :cond_13

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    if-nez v0, :cond_13

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->forceCrashReport:Z

    if-nez v0, :cond_13

    .line 662
    return-object v1

    .line 665
    :cond_13
    new-instance v0, Landroid/app/ApplicationErrorReport;

    invoke-direct {v0}, Landroid/app/ApplicationErrorReport;-><init>()V

    .line 666
    .local v0, "report":Landroid/app/ApplicationErrorReport;
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/ApplicationErrorReport;->packageName:Ljava/lang/String;

    .line 667
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ApplicationErrorReport;->installerPackageName:Ljava/lang/String;

    .line 668
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/ApplicationErrorReport;->processName:Ljava/lang/String;

    .line 669
    iput-wide p2, v0, Landroid/app/ApplicationErrorReport;->time:J

    .line 670
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_36

    move v1, v2

    goto :goto_37

    :cond_36
    const/4 v1, 0x0

    :goto_37
    iput-boolean v1, v0, Landroid/app/ApplicationErrorReport;->systemApp:Z

    .line 672
    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->crashing:Z

    if-nez v1, :cond_69

    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->forceCrashReport:Z

    if-eqz v1, :cond_42

    goto :goto_69

    .line 675
    :cond_42
    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    if-eqz v1, :cond_6d

    .line 676
    const/4 v1, 0x2

    iput v1, v0, Landroid/app/ApplicationErrorReport;->type:I

    .line 677
    new-instance v1, Landroid/app/ApplicationErrorReport$AnrInfo;

    invoke-direct {v1}, Landroid/app/ApplicationErrorReport$AnrInfo;-><init>()V

    iput-object v1, v0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    .line 679
    iget-object v1, v0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$ProcessErrorStateInfo;->tag:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/ApplicationErrorReport$AnrInfo;->activity:Ljava/lang/String;

    .line 680
    iget-object v1, v0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/ApplicationErrorReport$AnrInfo;->cause:Ljava/lang/String;

    .line 681
    iget-object v1, v0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$ProcessErrorStateInfo;->longMsg:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/ApplicationErrorReport$AnrInfo;->info:Ljava/lang/String;

    goto :goto_6d

    .line 673
    :cond_69
    :goto_69
    iput v2, v0, Landroid/app/ApplicationErrorReport;->type:I

    .line 674
    iput-object p4, v0, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 684
    :cond_6d
    :goto_6d
    return-object v0
.end method

.method private generateProcessError(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ActivityManager$ProcessErrorStateInfo;
    .registers 9
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "condition"    # I
    .param p3, "activity"    # Ljava/lang/String;
    .param p4, "shortMsg"    # Ljava/lang/String;
    .param p5, "longMsg"    # Ljava/lang/String;
    .param p6, "stackTrace"    # Ljava/lang/String;

    .line 628
    new-instance v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$ProcessErrorStateInfo;-><init>()V

    .line 630
    .local v0, "report":Landroid/app/ActivityManager$ProcessErrorStateInfo;
    iput p2, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->condition:I

    .line 631
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->processName:Ljava/lang/String;

    .line 632
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    iput v1, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->pid:I

    .line 633
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v1, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->uid:I

    .line 634
    iput-object p3, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->tag:Ljava/lang/String;

    .line 635
    iput-object p4, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    .line 636
    iput-object p5, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->longMsg:Ljava/lang/String;

    .line 637
    iput-object p6, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->stackTrace:Ljava/lang/String;

    .line 639
    return-object v0
.end method

.method private handleAppCrashInActivityController(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)Z
    .registers 30
    .param p1, "r"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;
    .param p3, "shortMsg"    # Ljava/lang/String;
    .param p4, "longMsg"    # Ljava/lang/String;
    .param p5, "stackTrace"    # Ljava/lang/String;
    .param p6, "timeMillis"    # J
    .param p8, "callingPid"    # I
    .param p9, "callingUid"    # I

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    .line 550
    iget-object v0, v7, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    const/4 v10, 0x0

    if-nez v0, :cond_e

    .line 551
    return v10

    .line 555
    :cond_e
    const/4 v11, 0x0

    if-eqz v8, :cond_17

    :try_start_11
    iget-object v0, v8, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    goto :goto_18

    .line 580
    :catch_14
    move-exception v0

    goto/16 :goto_c1

    .line 555
    :cond_17
    move-object v0, v11

    .line 556
    .local v0, "name":Ljava/lang/String;
    :goto_18
    if-eqz v8, :cond_1d

    iget v1, v8, Lcom/android/server/am/ProcessRecord;->pid:I

    goto :goto_1f

    :cond_1d
    move/from16 v1, p8

    :goto_1f
    move v6, v1

    .line 557
    .local v6, "pid":I
    if-eqz v8, :cond_27

    iget-object v1, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_29

    :cond_27
    move/from16 v1, p9

    :goto_29
    move v5, v1

    .line 558
    .local v5, "uid":I
    iget-object v1, v7, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v1, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    iget-object v1, v9, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    move-object v13, v0

    move v14, v6

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    move-wide/from16 v17, p6

    move-object/from16 v19, v1

    invoke-interface/range {v12 .. v19}, Landroid/app/IActivityController;->appCrashed(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c0

    .line 560
    const-string v1, "1"

    const-string/jumbo v2, "ro.debuggable"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v12, 0x1

    if-eqz v1, :cond_82

    const-string v1, "Native crash"

    iget-object v2, v9, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    .line 561
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_82

    .line 562
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skip killing native crashed app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") during testing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    move v14, v5

    move v15, v6

    goto :goto_bf

    .line 565
    :cond_82
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Force-killing crashed app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " at watcher\'s request"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    if-eqz v8, :cond_b7

    .line 568
    const/4 v13, 0x0

    move-object v1, v7

    move-object v2, v8

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move v14, v5

    move-object/from16 v5, p5

    .line 568
    .end local v5    # "uid":I
    .local v14, "uid":I
    move v15, v6

    move-object v6, v13

    .line 568
    .end local v6    # "pid":I
    .local v15, "pid":I
    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/AppErrors;->makeAppCrashingLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    move-result v1

    if-nez v1, :cond_bf

    .line 570
    const-string v1, "crash"

    invoke-virtual {v8, v1, v12}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    goto :goto_bf

    .line 574
    .end local v14    # "uid":I
    .end local v15    # "pid":I
    .restart local v5    # "uid":I
    .restart local v6    # "pid":I
    :cond_b7
    move v14, v5

    move v15, v6

    .line 574
    .end local v5    # "uid":I
    .end local v6    # "pid":I
    .restart local v14    # "uid":I
    .restart local v15    # "pid":I
    invoke-static {v15}, Landroid/os/Process;->killProcess(I)V

    .line 575
    invoke-static {v14, v15}, Lcom/android/server/am/ActivityManagerService;->killProcessGroup(II)V
    :try_end_bf
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_bf} :catch_14

    .line 578
    :cond_bf
    :goto_bf
    return v12

    .line 583
    .end local v0    # "name":Ljava/lang/String;
    .end local v14    # "uid":I
    .end local v15    # "pid":I
    :cond_c0
    goto :goto_cd

    .line 580
    :goto_c1
    nop

    .line 581
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, v7, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v11, v1, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    .line 582
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    .line 584
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_cd
    return v10
.end method

.method static isInterestingForBackgroundTraces(Lcom/android/server/am/ProcessRecord;)Z
    .registers 4
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 887
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v1, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_8

    .line 888
    return v2

    .line 900
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->isInterestingToUserLocked()Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_1e

    const-string v0, "com.android.systemui"

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 901
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    :cond_1e
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->hasTopUi:Z

    if-nez v0, :cond_29

    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->hasOverlayUi:Z

    if-eqz v0, :cond_27

    goto :goto_29

    :cond_27
    const/4 v2, 0x0

    nop

    .line 900
    :cond_29
    :goto_29
    return v2
.end method

.method private makeAppCrashingLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z
    .registers 14
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "shortMsg"    # Ljava/lang/String;
    .param p3, "longMsg"    # Ljava/lang/String;
    .param p4, "stackTrace"    # Ljava/lang/String;
    .param p5, "data"    # Lcom/android/server/am/AppErrorDialog$Data;

    .line 589
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->crashing:Z

    .line 590
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/AppErrors;->generateProcessError(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ActivityManager$ProcessErrorStateInfo;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/am/ProcessRecord;->crashingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 592
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppErrors;->startAppProblemLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 593
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->stopFreezingAllLocked()V

    .line 594
    const-string v3, "force-crash"

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/AppErrors;->handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    move-result v0

    return v0
.end method

.method private makeAppNotRespondingLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "activity"    # Ljava/lang/String;
    .param p3, "shortMsg"    # Ljava/lang/String;
    .param p4, "longMsg"    # Ljava/lang/String;

    .line 1179
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    .line 1180
    const/4 v3, 0x2

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/AppErrors;->generateProcessError(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ActivityManager$ProcessErrorStateInfo;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 1183
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppErrors;->startAppProblemLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 1184
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->stopFreezingAllLocked()V

    .line 1185
    return-void
.end method


# virtual methods
.method final appNotResponding(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)V
    .registers 38
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "activity"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "parent"    # Lcom/android/server/am/ActivityRecord;
    .param p4, "aboveSystem"    # Z
    .param p5, "annotation"    # Ljava/lang/String;

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    .line 907
    move-object/from16 v15, p5

    new-instance v0, Ljava/util/ArrayList;

    const/4 v10, 0x5

    invoke-direct {v0, v10}, Ljava/util/ArrayList;-><init>(I)V

    move-object v9, v0

    .line 908
    .local v9, "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/util/SparseArray;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    move-object v8, v0

    .line 910
    .local v8, "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    const/4 v7, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_47

    .line 913
    :try_start_21
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    iget-object v1, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v2, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-interface {v0, v1, v2, v15}, Landroid/app/IActivityController;->appEarlyNotResponding(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 915
    .local v0, "res":I
    if-gez v0, :cond_3a

    iget v1, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v2, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v1, v2, :cond_3a

    .line 916
    const-string v1, "anr"

    invoke-virtual {v12, v1, v6}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_3a} :catch_3b

    .line 921
    .end local v0    # "res":I
    :cond_3a
    goto :goto_47

    .line 918
    :catch_3b
    move-exception v0

    .line 919
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v7, v1, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    .line 920
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    .line 924
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_47
    :goto_47
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 926
    .local v4, "anrTime":J
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    .line 930
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "anr_show_background"

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_61

    move v0, v6

    goto :goto_62

    :cond_61
    move v0, v3

    :goto_62
    move/from16 v16, v0

    .line 935
    .local v16, "showBackground":Z
    iget-object v2, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_67
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 937
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z
    :try_end_6e
    .catchall {:try_start_67 .. :try_end_6e} :catchall_56a

    if-eqz v0, :cond_9f

    .line 938
    :try_start_70
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "During shutdown skipping ANR: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    monitor-exit v2
    :try_end_8f
    .catchall {:try_start_70 .. :try_end_8f} :catchall_93

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1009
    :catchall_93
    move-exception v0

    move/from16 v3, p4

    move-object/from16 v20, v2

    move-wide/from16 v25, v4

    move-object/from16 v21, v8

    move-object v14, v9

    goto/16 :goto_574

    .line 940
    :cond_9f
    :try_start_9f
    iget-boolean v0, v12, Lcom/android/server/am/ProcessRecord;->notResponding:Z
    :try_end_a1
    .catchall {:try_start_9f .. :try_end_a1} :catchall_56a

    if-eqz v0, :cond_c6

    .line 941
    :try_start_a3
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping duplicate ANR: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    monitor-exit v2
    :try_end_c2
    .catchall {:try_start_a3 .. :try_end_c2} :catchall_93

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 943
    :cond_c6
    :try_start_c6
    iget-boolean v0, v12, Lcom/android/server/am/ProcessRecord;->crashing:Z
    :try_end_c8
    .catchall {:try_start_c6 .. :try_end_c8} :catchall_56a

    if-eqz v0, :cond_ed

    .line 944
    :try_start_ca
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Crashing app skipping ANR: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    monitor-exit v2
    :try_end_e9
    .catchall {:try_start_ca .. :try_end_e9} :catchall_93

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 946
    :cond_ed
    :try_start_ed
    iget-boolean v0, v12, Lcom/android/server/am/ProcessRecord;->killedByAm:Z
    :try_end_ef
    .catchall {:try_start_ed .. :try_end_ef} :catchall_56a

    if-eqz v0, :cond_114

    .line 947
    :try_start_f1
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "App already killed by AM skipping ANR: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    monitor-exit v2
    :try_end_110
    .catchall {:try_start_f1 .. :try_end_110} :catchall_93

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 949
    :cond_114
    :try_start_114
    iget-boolean v0, v12, Lcom/android/server/am/ProcessRecord;->killed:Z
    :try_end_116
    .catchall {:try_start_114 .. :try_end_116} :catchall_56a

    if-eqz v0, :cond_13b

    .line 950
    :try_start_118
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping died app ANR: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    monitor-exit v2
    :try_end_137
    .catchall {:try_start_118 .. :try_end_137} :catchall_93

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 955
    :cond_13b
    :try_start_13b
    iget-object v1, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v0, ""
    :try_end_13f
    .catchall {:try_start_13b .. :try_end_13f} :catchall_56a

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v20, v2

    move-object v2, v12

    move-object v3, v13

    move-wide/from16 v22, v4

    move-object v4, v14

    .end local v4    # "anrTime":J
    .local v22, "anrTime":J
    move-object v5, v0

    move v10, v6

    move-object v6, v15

    move-object/from16 v7, v17

    move-object/from16 v25, v8

    move-object/from16 v8, v18

    .line 955
    .end local v8    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .local v25, "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    move-object/from16 v26, v9

    move-object/from16 v9, v19

    .line 955
    .end local v9    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v26, "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :try_start_159
    invoke-static/range {v1 .. v9}, Lcom/android/server/am/ActivityManagerServiceInjector;->finishSilentAnr(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;)Z

    move-result v0
    :try_end_15d
    .catchall {:try_start_159 .. :try_end_15d} :catchall_560

    if-eqz v0, :cond_16f

    .line 957
    :try_start_15f
    monitor-exit v20
    :try_end_160
    .catchall {:try_start_15f .. :try_end_160} :catchall_164

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1009
    :catchall_164
    move-exception v0

    move/from16 v3, p4

    move-object/from16 v21, v25

    move-object/from16 v14, v26

    .line 1009
    .end local v22    # "anrTime":J
    .end local v26    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v14, "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v21, "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .local v25, "anrTime":J
    :goto_16b
    move-wide/from16 v25, v22

    goto/16 :goto_574

    .line 962
    .end local v14    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v21    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .restart local v22    # "anrTime":J
    .local v25, "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .restart local v26    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_16f
    :try_start_16f
    iput-boolean v10, v12, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    .line 965
    const/16 v0, 0x7538

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, v12, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v9, 0x0

    aput-object v2, v1, v9

    iget v2, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v10

    iget-object v2, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const/4 v8, 0x2

    aput-object v2, v1, v8

    iget-object v2, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 966
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v7, 0x3

    aput-object v2, v1, v7

    const/4 v2, 0x4

    aput-object v15, v1, v2

    .line 965
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 969
    iget v0, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_1a3
    .catchall {:try_start_16f .. :try_end_1a3} :catchall_560

    move-object/from16 v3, v26

    :try_start_1a5
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1a8
    .catchall {:try_start_1a5 .. :try_end_1a8} :catchall_557

    .line 972
    .end local v26    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v3, "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez v16, :cond_1b9

    :try_start_1aa
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/AppErrors;->isInterestingForBackgroundTraces(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0
    :try_end_1ae
    .catchall {:try_start_1aa .. :try_end_1ae} :catchall_1b2

    if-nez v0, :cond_1b9

    move v0, v10

    goto :goto_1ba

    .line 1009
    :catchall_1b2
    move-exception v0

    move-object v14, v3

    move-object/from16 v21, v25

    move/from16 v3, p4

    goto :goto_16b

    .line 972
    :cond_1b9
    move v0, v9

    .line 973
    .local v0, "isSilentANR":Z
    :goto_1ba
    if-nez v0, :cond_26c

    .line 974
    :try_start_1bc
    iget v1, v12, Lcom/android/server/am/ProcessRecord;->pid:I
    :try_end_1be
    .catchall {:try_start_1bc .. :try_end_1be} :catchall_262

    .line 975
    .local v1, "parentPid":I
    if-eqz v14, :cond_1cf

    :try_start_1c0
    iget-object v2, v14, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_1cf

    iget-object v2, v14, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v2, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    if-lez v2, :cond_1cf

    .line 976
    iget-object v2, v14, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v2, v2, Lcom/android/server/am/ProcessRecord;->pid:I
    :try_end_1ce
    .catchall {:try_start_1c0 .. :try_end_1ce} :catchall_1b2

    move v1, v2

    .line 978
    :cond_1cf
    :try_start_1cf
    iget v2, v12, Lcom/android/server/am/ProcessRecord;->pid:I
    :try_end_1d1
    .catchall {:try_start_1cf .. :try_end_1d1} :catchall_262

    if-eq v1, v2, :cond_1da

    :try_start_1d3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1da
    .catchall {:try_start_1d3 .. :try_end_1da} :catchall_1b2

    .line 980
    :cond_1da
    :try_start_1da
    sget v2, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    iget v4, v12, Lcom/android/server/am/ProcessRecord;->pid:I
    :try_end_1de
    .catchall {:try_start_1da .. :try_end_1de} :catchall_262

    if-eq v2, v4, :cond_1ed

    :try_start_1e0
    sget v2, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v2, v1, :cond_1ed

    sget v2, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1ed
    .catchall {:try_start_1e0 .. :try_end_1ed} :catchall_1b2

    .line 983
    :cond_1ed
    :try_start_1ed
    const-string/jumbo v2, "persist.sys.traceside"

    invoke-static {v2, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2
    :try_end_1f4
    .catchall {:try_start_1ed .. :try_end_1f4} :catchall_262

    if-ne v2, v10, :cond_1fb

    .line 984
    :try_start_1f6
    iget v2, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v2, v3}, Lcom/android/server/am/ActivityManagerServiceInjector;->addCalledBinderPids(ILjava/util/List;)V
    :try_end_1fb
    .catchall {:try_start_1f6 .. :try_end_1fb} :catchall_1b2

    .line 988
    :cond_1fb
    :try_start_1fb
    iget-object v2, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v10

    .line 988
    .local v2, "i":I
    :goto_204
    if-ltz v2, :cond_26c

    .line 989
    iget-object v4, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 990
    .local v4, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz v4, :cond_257

    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v5, :cond_257

    .line 991
    iget v5, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 992
    .local v5, "pid":I
    if-lez v5, :cond_257

    iget v6, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    if-eq v5, v6, :cond_257

    if-eq v5, v1, :cond_257

    sget v6, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v5, v6, :cond_257

    .line 995
    invoke-static {v4}, Lcom/android/server/am/ProcessPolicyManager;->isNeedTraceProcess(Lcom/android/server/am/ProcessRecord;)Z

    move-result v6
    :try_end_228
    .catchall {:try_start_1fb .. :try_end_228} :catchall_262

    if-eqz v6, :cond_236

    .line 996
    :try_start_22a
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_231
    .catchall {:try_start_22a .. :try_end_231} :catchall_1b2

    .line 988
    :goto_231
    move-object/from16 v27, v3

    move-object/from16 v3, v25

    goto :goto_25b

    .line 998
    :cond_236
    :try_start_236
    iget-boolean v6, v4, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z
    :try_end_238
    .catchall {:try_start_236 .. :try_end_238} :catchall_262

    if-eqz v6, :cond_242

    .line 999
    :try_start_23a
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_241
    .catchall {:try_start_23a .. :try_end_241} :catchall_1b2

    goto :goto_231

    .line 1002
    :cond_242
    :try_start_242
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_244
    .catchall {:try_start_242 .. :try_end_244} :catchall_262

    move-object/from16 v27, v3

    move-object/from16 v3, v25

    :try_start_248
    invoke-virtual {v3, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_24b
    .catchall {:try_start_248 .. :try_end_24b} :catchall_24c

    .line 1002
    .end local v4    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v5    # "pid":I
    .end local v25    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .local v3, "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .local v27, "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    goto :goto_25b

    .line 1009
    .end local v0    # "isSilentANR":Z
    .end local v1    # "parentPid":I
    .end local v2    # "i":I
    :catchall_24c
    move-exception v0

    move-object/from16 v21, v3

    move-wide/from16 v25, v22

    move-object/from16 v14, v27

    move/from16 v3, p4

    goto/16 :goto_574

    .line 988
    .end local v27    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v0    # "isSilentANR":Z
    .restart local v1    # "parentPid":I
    .restart local v2    # "i":I
    .local v3, "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v25    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    :cond_257
    move-object/from16 v27, v3

    move-object/from16 v3, v25

    .line 988
    .end local v25    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .local v3, "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .restart local v27    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_25b
    add-int/lit8 v2, v2, -0x1

    move-object/from16 v25, v3

    move-object/from16 v3, v27

    goto :goto_204

    .line 1009
    .end local v0    # "isSilentANR":Z
    .end local v1    # "parentPid":I
    .end local v2    # "i":I
    .end local v27    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v3, "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v25    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    :catchall_262
    move-exception v0

    move-object v14, v3

    move-object/from16 v21, v25

    move/from16 v3, p4

    move-wide/from16 v25, v22

    .line 1009
    .end local v25    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .local v3, "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .restart local v27    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    goto/16 :goto_574

    .line 1009
    .end local v27    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v0    # "isSilentANR":Z
    .local v3, "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v25    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    :cond_26c
    move-object/from16 v27, v3

    move-object/from16 v3, v25

    .line 1009
    .end local v25    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .local v3, "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .restart local v27    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :try_start_270
    monitor-exit v20
    :try_end_271
    .catchall {:try_start_270 .. :try_end_271} :catchall_54d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    move/from16 v17, v0

    .line 1012
    .end local v0    # "isSilentANR":Z
    .local v17, "isSilentANR":Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v0

    .line 1013
    .local v4, "info":Ljava/lang/StringBuilder;
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1014
    const-string v0, "ANR in "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1015
    if-eqz v13, :cond_29e

    iget-object v0, v13, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    if-eqz v0, :cond_29e

    .line 1016
    const-string v0, " ("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v13, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1018
    :cond_29e
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1019
    const-string v0, "PID: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1020
    if-eqz v15, :cond_2c1

    .line 1021
    const-string v0, "Reason: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1023
    :cond_2c1
    if-eqz v14, :cond_2d4

    if-eq v14, v13, :cond_2d4

    .line 1024
    const-string v0, "Parent: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v14, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1028
    :cond_2d4
    invoke-static {}, Landroid/os/AnrMonitor;->canMonitorAnr()Z

    move-result v0

    if-eqz v0, :cond_326

    .line 1030
    :try_start_2da
    new-instance v6, Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " dump message failed!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1031
    .local v6, "stringBuilder":Ljava/lang/StringBuilder;
    move-object v5, v12

    .line 1032
    .local v5, "dumpApp":Lcom/android/server/am/ProcessRecord;
    new-instance v0, Lcom/android/server/am/AppErrors$1;
    :try_end_2f5
    .catch Ljava/lang/Exception; {:try_start_2da .. :try_end_2f5} :catch_314

    const-wide/16 v18, 0x1f4

    move-object v1, v0

    move-object v2, v11

    move-object/from16 v21, v3

    move-object/from16 v29, v4

    move-object/from16 v28, v27

    move-wide/from16 v3, v18

    .line 1032
    .end local v3    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .end local v4    # "info":Ljava/lang/StringBuilder;
    .end local v27    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v21    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .local v28, "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v29, "info":Ljava/lang/StringBuilder;
    move-object/from16 v7, v29

    move-object v8, v12

    move/from16 v18, v9

    move-object/from16 v9, v28

    move v14, v10

    move-object/from16 v10, v21

    :try_start_30b
    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/AppErrors$1;-><init>(Lcom/android/server/am/AppErrors;JLcom/android/server/am/ProcessRecord;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;Landroid/util/SparseArray;)V

    .line 1051
    .local v0, "thread":Landroid/os/AnrMonitor$TimerThread;
    invoke-virtual {v0}, Landroid/os/AnrMonitor$TimerThread;->startAndWait()V
    :try_end_311
    .catch Ljava/lang/Exception; {:try_start_30b .. :try_end_311} :catch_312

    .line 1054
    .end local v0    # "thread":Landroid/os/AnrMonitor$TimerThread;
    .end local v5    # "dumpApp":Lcom/android/server/am/ProcessRecord;
    .end local v6    # "stringBuilder":Ljava/lang/StringBuilder;
    goto :goto_32f

    .line 1052
    :catch_312
    move-exception v0

    goto :goto_31e

    .line 1052
    .end local v21    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .end local v28    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v29    # "info":Ljava/lang/StringBuilder;
    .restart local v3    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .restart local v4    # "info":Ljava/lang/StringBuilder;
    .restart local v27    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_314
    move-exception v0

    move-object/from16 v21, v3

    move-object/from16 v29, v4

    move/from16 v18, v9

    move v14, v10

    move-object/from16 v28, v27

    .line 1053
    .end local v3    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .end local v4    # "info":Ljava/lang/StringBuilder;
    .end local v27    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v0, "e":Ljava/lang/Exception;
    .restart local v21    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .restart local v28    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v29    # "info":Ljava/lang/StringBuilder;
    :goto_31e
    const-string v1, "ActivityManager"

    const-string v2, "Error happened during saving anr info"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_32f

    .line 1058
    .end local v21    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .end local v28    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v29    # "info":Ljava/lang/StringBuilder;
    .restart local v3    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .restart local v4    # "info":Ljava/lang/StringBuilder;
    .restart local v27    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_326
    move-object/from16 v21, v3

    move-object/from16 v29, v4

    move/from16 v18, v9

    move v14, v10

    move-object/from16 v28, v27

    .line 1058
    .end local v3    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .end local v4    # "info":Ljava/lang/StringBuilder;
    .end local v27    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v21    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .restart local v28    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v29    # "info":Ljava/lang/StringBuilder;
    :goto_32f
    new-instance v0, Lcom/android/internal/os/ProcessCpuTracker;

    invoke-direct {v0, v14}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    move-object v10, v0

    .line 1061
    .local v10, "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    const/4 v0, 0x0

    .line 1062
    .local v0, "nativeProcs":[Ljava/lang/String;
    if-eqz v17, :cond_356

    .line 1063
    move/from16 v1, v18

    .line 1063
    .local v1, "i":I
    :goto_33a
    sget-object v2, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_358

    .line 1064
    sget-object v2, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    aget-object v2, v2, v1

    iget-object v3, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_353

    .line 1065
    new-array v2, v14, [Ljava/lang/String;

    iget-object v3, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    aput-object v3, v2, v18

    move-object v0, v2

    .line 1066
    goto :goto_358

    .line 1063
    :cond_353
    add-int/lit8 v1, v1, 0x1

    goto :goto_33a

    .line 1070
    .end local v1    # "i":I
    :cond_356
    sget-object v0, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    .line 1073
    .end local v0    # "nativeProcs":[Ljava/lang/String;
    .local v9, "nativeProcs":[Ljava/lang/String;
    :cond_358
    :goto_358
    move-object v9, v0

    if-nez v9, :cond_35d

    const/4 v7, 0x0

    goto :goto_361

    :cond_35d
    invoke-static {v9}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v7

    :goto_361
    move-object v8, v7

    .line 1074
    .local v8, "pids":[I
    const/4 v0, 0x0

    .line 1076
    .local v0, "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v8, :cond_37d

    .line 1077
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v8

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v1

    .line 1078
    array-length v1, v8

    move/from16 v2, v18

    :goto_36f
    if-ge v2, v1, :cond_37d

    aget v3, v8, v2

    .line 1079
    .local v3, "i":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1078
    .end local v3    # "i":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_36f

    .line 1084
    :cond_37d
    move-object v7, v0

    .line 1084
    .end local v0    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v7, "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez v17, :cond_38b

    .line 1085
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/Watchdog;->getInterestingHalPids()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1091
    :cond_38b
    nop

    .line 1093
    if-eqz v17, :cond_390

    .line 1094
    const/4 v0, 0x0

    goto :goto_391

    :cond_390
    move-object v0, v10

    :goto_391
    if-eqz v17, :cond_395

    .line 1091
    const/4 v1, 0x0

    goto :goto_397

    :cond_395
    move-object/from16 v1, v21

    :goto_397
    move-object/from16 v6, v28

    invoke-static {v14, v6, v0, v1, v7}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(ZLjava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;Ljava/util/ArrayList;)Ljava/io/File;

    move-result-object v19

    .line 1097
    .end local v28    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v6, "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v19, "tracesFile":Ljava/io/File;
    const/4 v1, 0x0

    .line 1099
    .local v1, "cpuInfo":Ljava/lang/String;
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    .line 1100
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v2

    .line 1101
    :try_start_3a8
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;
    :try_end_3ac
    .catchall {:try_start_3a8 .. :try_end_3ac} :catchall_539

    move-wide/from16 v4, v22

    :try_start_3ae
    invoke-virtual {v0, v4, v5}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(J)Ljava/lang/String;

    move-result-object v0
    :try_end_3b2
    .catchall {:try_start_3ae .. :try_end_3b2} :catchall_528

    .line 1101
    .end local v22    # "anrTime":J
    .local v4, "anrTime":J
    move-object v3, v0

    .line 1102
    .end local v1    # "cpuInfo":Ljava/lang/String;
    .local v3, "cpuInfo":Ljava/lang/String;
    :try_start_3b3
    monitor-exit v2
    :try_end_3b4
    .catchall {:try_start_3b3 .. :try_end_3b4} :catchall_513

    .line 1103
    invoke-virtual {v10}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentLoad()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1104
    .end local v29    # "info":Ljava/lang/StringBuilder;
    .local v2, "info":Ljava/lang/StringBuilder;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1107
    invoke-virtual {v10, v4, v5}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1109
    const-string v0, "ActivityManager"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    if-nez v19, :cond_3d8

    .line 1112
    iget v0, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/Process;->sendSignal(II)V

    .line 1115
    :cond_3d8
    iget v0, v12, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v14, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1116
    if-nez v13, :cond_3e2

    const-string/jumbo v20, "unknown"

    goto :goto_3e6

    :cond_3e2
    iget-object v1, v13, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 1117
    move-object/from16 v20, v1

    :goto_3e6
    iget-object v1, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_3fa

    iget-object v1, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v1

    if-eqz v1, :cond_3f6

    .line 1118
    nop

    .line 1121
    const/16 v22, 0x2

    goto :goto_3fd

    .line 1119
    :cond_3f6
    nop

    .line 1121
    const/16 v22, 0x1

    goto :goto_3fd

    .line 1120
    :cond_3fa
    nop

    .line 1121
    move/from16 v22, v18

    :goto_3fd
    if-eqz v12, :cond_40d

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->isInterestingToUserLocked()Z

    move-result v1

    if-eqz v1, :cond_409

    .line 1122
    nop

    .line 1115
    const/16 v18, 0x2

    goto :goto_40e

    .line 1123
    :cond_409
    nop

    .line 1115
    const/16 v18, 0x1

    goto :goto_40e

    .line 1124
    :cond_40d
    nop

    .line 1115
    :goto_40e
    const/16 v1, 0x4f

    move-object/from16 v30, v2

    move v2, v0

    .line 1115
    .end local v2    # "info":Ljava/lang/StringBuilder;
    .local v30, "info":Ljava/lang/StringBuilder;
    move-object/from16 v23, v3

    move-object v3, v14

    .line 1115
    .end local v3    # "cpuInfo":Ljava/lang/String;
    .local v23, "cpuInfo":Ljava/lang/String;
    move-wide/from16 v25, v4

    move-object/from16 v4, v20

    .line 1115
    .end local v4    # "anrTime":J
    .local v25, "anrTime":J
    move-object v5, v15

    move-object v14, v6

    move/from16 v6, v22

    .line 1115
    .end local v6    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v14    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v22, v7

    move/from16 v7, v18

    .line 1115
    .end local v7    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v22, "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static/range {v1 .. v7}, Landroid/util/StatsLog;->write(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    .line 1125
    iget-object v1, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v2, "anr"

    iget-object v4, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const/4 v0, 0x0

    move-object v3, v12

    move-object v5, v13

    const/4 v7, 0x1

    move-object/from16 v6, p3

    move-object v7, v15

    move-object/from16 v18, v8

    move-object/from16 v8, v23

    .end local v8    # "pids":[I
    .local v18, "pids":[I
    move-object/from16 v24, v9

    move-object/from16 v9, v19

    .line 1125
    .end local v9    # "nativeProcs":[Ljava/lang/String;
    .local v24, "nativeProcs":[Ljava/lang/String;
    move-object/from16 v27, v10

    move-object v10, v0

    .line 1125
    .end local v10    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .local v27, "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/am/ActivityManagerService;->addErrorToDropBox(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    .line 1129
    iget-object v1, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x0

    .line 1130
    move-object/from16 v10, v30

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1129
    .end local v30    # "info":Ljava/lang/StringBuilder;
    .local v10, "info":Ljava/lang/StringBuilder;
    move-object v2, v12

    move-object v3, v13

    move-object/from16 v4, p3

    move-object/from16 v5, v23

    move-object v6, v15

    move-object/from16 v7, v19

    invoke-static/range {v1 .. v9}, Lcom/android/server/am/ActivityManagerServiceInjector;->onANR(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;)V

    .line 1133
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v0, :cond_4a9

    .line 1136
    :try_start_45b
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    iget-object v1, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v2, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 1137
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1136
    invoke-interface {v0, v1, v2, v3}, Landroid/app/IActivityController;->appNotResponding(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    move v1, v0

    .line 1138
    .local v1, "res":I
    if-eqz v1, :cond_498

    .line 1139
    if-gez v1, :cond_47d

    iget v0, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v2, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v0, v2, :cond_47d

    .line 1140
    const-string v0, "anr"
    :try_end_478
    .catch Landroid/os/RemoteException; {:try_start_45b .. :try_end_478} :catch_49a

    const/4 v2, 0x1

    :try_start_479
    invoke-virtual {v12, v0, v2}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    goto :goto_48f

    .line 1142
    :cond_47d
    const/4 v2, 0x1

    iget-object v3, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3
    :try_end_481
    .catch Landroid/os/RemoteException; {:try_start_479 .. :try_end_481} :catch_496

    :try_start_481
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1143
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v0, v12}, Lcom/android/server/am/ActiveServices;->scheduleServiceTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 1144
    monitor-exit v3
    :try_end_48c
    .catchall {:try_start_481 .. :try_end_48c} :catchall_490

    :try_start_48c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_48f
    .catch Landroid/os/RemoteException; {:try_start_48c .. :try_end_48f} :catch_496

    .line 1146
    :goto_48f
    return-void

    .line 1144
    :catchall_490
    move-exception v0

    :try_start_491
    monitor-exit v3
    :try_end_492
    .catchall {:try_start_491 .. :try_end_492} :catchall_490

    :try_start_492
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_496
    .catch Landroid/os/RemoteException; {:try_start_492 .. :try_end_496} :catch_496

    .line 1148
    .end local v1    # "res":I
    :catch_496
    move-exception v0

    goto :goto_49c

    .line 1151
    :cond_498
    const/4 v2, 0x1

    goto :goto_4aa

    .line 1148
    :catch_49a
    move-exception v0

    const/4 v2, 0x1

    .line 1149
    .local v0, "e":Landroid/os/RemoteException;
    :goto_49c
    iget-object v1, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    .line 1150
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    .line 1150
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_4ab

    .line 1154
    :cond_4a9
    const/4 v2, 0x1

    :goto_4aa
    const/4 v3, 0x0

    :goto_4ab
    iget-object v1, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_4ae
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1155
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget-object v4, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v5, v12, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v4, v5}, Lcom/android/server/am/BatteryStatsService;->noteProcessAnr(Ljava/lang/String;I)V

    .line 1157
    if-eqz v17, :cond_4c8

    .line 1158
    const-string v0, "bg anr"

    invoke-virtual {v12, v0, v2}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    .line 1159
    monitor-exit v1
    :try_end_4c4
    .catchall {:try_start_4ae .. :try_end_4c4} :catchall_509

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1163
    :cond_4c8
    nop

    .line 1164
    if-eqz v13, :cond_4cf

    :try_start_4cb
    iget-object v7, v13, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 1165
    move-object v3, v7

    goto :goto_4d0

    .line 1164
    :cond_4cf
    nop

    .line 1165
    :goto_4d0
    if-eqz v15, :cond_4e4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ANR "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4e6

    :cond_4e4
    const-string v0, "ANR"

    .line 1166
    :goto_4e6
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1163
    invoke-direct {v11, v12, v3, v0, v2}, Lcom/android/server/am/AppErrors;->makeAppNotRespondingLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1170
    .local v0, "msg":Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v0, Landroid/os/Message;->what:I

    .line 1171
    new-instance v2, Lcom/android/server/am/AppNotRespondingDialog$Data;
    :try_end_4f6
    .catchall {:try_start_4cb .. :try_end_4f6} :catchall_509

    move/from16 v3, p4

    :try_start_4f8
    invoke-direct {v2, v12, v13, v3}, Lcom/android/server/am/AppNotRespondingDialog$Data;-><init>(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Z)V

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1173
    iget-object v2, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1174
    .end local v0    # "msg":Landroid/os/Message;
    monitor-exit v1
    :try_end_505
    .catchall {:try_start_4f8 .. :try_end_505} :catchall_511

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1175
    return-void

    .line 1174
    :catchall_509
    move-exception v0

    move/from16 v3, p4

    :goto_50c
    :try_start_50c
    monitor-exit v1
    :try_end_50d
    .catchall {:try_start_50c .. :try_end_50d} :catchall_511

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_511
    move-exception v0

    goto :goto_50c

    .line 1102
    .end local v14    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v18    # "pids":[I
    .end local v22    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v23    # "cpuInfo":Ljava/lang/String;
    .end local v24    # "nativeProcs":[Ljava/lang/String;
    .end local v25    # "anrTime":J
    .end local v27    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .restart local v3    # "cpuInfo":Ljava/lang/String;
    .restart local v4    # "anrTime":J
    .restart local v6    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v7    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v8    # "pids":[I
    .restart local v9    # "nativeProcs":[Ljava/lang/String;
    .local v10, "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .restart local v29    # "info":Ljava/lang/StringBuilder;
    :catchall_513
    move-exception v0

    move-object/from16 v23, v3

    move-wide/from16 v25, v4

    move-object v14, v6

    move-object/from16 v22, v7

    move-object/from16 v18, v8

    move-object/from16 v24, v9

    move-object/from16 v27, v10

    move-object/from16 v10, v29

    move/from16 v3, p4

    move-object/from16 v1, v23

    .end local v3    # "cpuInfo":Ljava/lang/String;
    .end local v4    # "anrTime":J
    .end local v6    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v7    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v8    # "pids":[I
    .end local v9    # "nativeProcs":[Ljava/lang/String;
    .end local v29    # "info":Ljava/lang/StringBuilder;
    .local v10, "info":Ljava/lang/StringBuilder;
    .restart local v14    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v18    # "pids":[I
    .restart local v22    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v23    # "cpuInfo":Ljava/lang/String;
    .restart local v24    # "nativeProcs":[Ljava/lang/String;
    .restart local v25    # "anrTime":J
    .restart local v27    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    goto :goto_549

    .line 1102
    .end local v14    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v18    # "pids":[I
    .end local v22    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v23    # "cpuInfo":Ljava/lang/String;
    .end local v24    # "nativeProcs":[Ljava/lang/String;
    .end local v25    # "anrTime":J
    .end local v27    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .local v1, "cpuInfo":Ljava/lang/String;
    .restart local v4    # "anrTime":J
    .restart local v6    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v7    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v8    # "pids":[I
    .restart local v9    # "nativeProcs":[Ljava/lang/String;
    .local v10, "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .restart local v29    # "info":Ljava/lang/StringBuilder;
    :catchall_528
    move-exception v0

    move/from16 v3, p4

    move-wide/from16 v25, v4

    move-object v14, v6

    move-object/from16 v22, v7

    move-object/from16 v18, v8

    move-object/from16 v24, v9

    move-object/from16 v27, v10

    move-object/from16 v10, v29

    .end local v4    # "anrTime":J
    .end local v6    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v7    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v8    # "pids":[I
    .end local v9    # "nativeProcs":[Ljava/lang/String;
    .end local v29    # "info":Ljava/lang/StringBuilder;
    .local v10, "info":Ljava/lang/StringBuilder;
    .restart local v14    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v18    # "pids":[I
    .restart local v22    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v24    # "nativeProcs":[Ljava/lang/String;
    .restart local v25    # "anrTime":J
    .restart local v27    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    goto :goto_549

    .line 1102
    .end local v14    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v18    # "pids":[I
    .end local v24    # "nativeProcs":[Ljava/lang/String;
    .end local v25    # "anrTime":J
    .end local v27    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .restart local v6    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v7    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v8    # "pids":[I
    .restart local v9    # "nativeProcs":[Ljava/lang/String;
    .local v10, "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .local v22, "anrTime":J
    .restart local v29    # "info":Ljava/lang/StringBuilder;
    :catchall_539
    move-exception v0

    move/from16 v3, p4

    move-object v14, v6

    move-object/from16 v18, v8

    move-object/from16 v24, v9

    move-object/from16 v27, v10

    move-wide/from16 v25, v22

    move-object/from16 v10, v29

    move-object/from16 v22, v7

    .end local v6    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v7    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v8    # "pids":[I
    .end local v9    # "nativeProcs":[Ljava/lang/String;
    .end local v29    # "info":Ljava/lang/StringBuilder;
    .local v10, "info":Ljava/lang/StringBuilder;
    .restart local v14    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v18    # "pids":[I
    .local v22, "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v24    # "nativeProcs":[Ljava/lang/String;
    .restart local v25    # "anrTime":J
    .restart local v27    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    :goto_549
    :try_start_549
    monitor-exit v2
    :try_end_54a
    .catchall {:try_start_549 .. :try_end_54a} :catchall_54b

    throw v0

    :catchall_54b
    move-exception v0

    goto :goto_549

    .line 1009
    .end local v1    # "cpuInfo":Ljava/lang/String;
    .end local v10    # "info":Ljava/lang/StringBuilder;
    .end local v14    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v17    # "isSilentANR":Z
    .end local v18    # "pids":[I
    .end local v19    # "tracesFile":Ljava/io/File;
    .end local v21    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .end local v24    # "nativeProcs":[Ljava/lang/String;
    .end local v25    # "anrTime":J
    .local v3, "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .local v22, "anrTime":J
    .local v27, "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_54d
    move-exception v0

    move-object/from16 v21, v3

    move-wide/from16 v25, v22

    move-object/from16 v14, v27

    move/from16 v3, p4

    .line 1009
    .end local v3    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .end local v22    # "anrTime":J
    .end local v27    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v14    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v21    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .restart local v25    # "anrTime":J
    goto :goto_574

    .line 1009
    .end local v14    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v21    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .local v3, "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v22    # "anrTime":J
    .local v25, "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    :catchall_557
    move-exception v0

    move-object v14, v3

    move-object/from16 v21, v25

    move/from16 v3, p4

    move-wide/from16 v25, v22

    .line 1009
    .end local v3    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v22    # "anrTime":J
    .restart local v14    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v21    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .local v25, "anrTime":J
    goto :goto_574

    .line 1009
    .end local v14    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v21    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .restart local v22    # "anrTime":J
    .local v25, "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .restart local v26    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_560
    move-exception v0

    move/from16 v3, p4

    move-object/from16 v21, v25

    move-object/from16 v14, v26

    move-wide/from16 v25, v22

    .line 1009
    .end local v22    # "anrTime":J
    .end local v26    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v14    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v21    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .local v25, "anrTime":J
    goto :goto_574

    .line 1009
    .end local v14    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v21    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .end local v25    # "anrTime":J
    .restart local v4    # "anrTime":J
    .local v8, "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .local v9, "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_56a
    move-exception v0

    move/from16 v3, p4

    move-object/from16 v20, v2

    move-wide/from16 v25, v4

    move-object/from16 v21, v8

    move-object v14, v9

    .line 1009
    .end local v4    # "anrTime":J
    .end local v8    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .end local v9    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v14    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v21    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .restart local v25    # "anrTime":J
    :goto_574
    :try_start_574
    monitor-exit v20
    :try_end_575
    .catchall {:try_start_574 .. :try_end_575} :catchall_579

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_579
    move-exception v0

    goto :goto_574
.end method

.method clearBadProcessLocked(Landroid/content/pm/ApplicationInfo;)V
    .registers 5
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 274
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 275
    return-void
.end method

.method crashApplication(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    .registers 8
    .param p1, "r"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 392
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 393
    .local v0, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 395
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 397
    .local v2, "origId":J
    :try_start_c
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/am/AppErrors;->crashApplicationInner(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;II)V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_14

    .line 399
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 400
    nop

    .line 401
    return-void

    .line 399
    :catchall_14
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method crashApplicationInner(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;II)V
    .registers 42
    .param p1, "r"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    .line 405
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 406
    .local v14, "timeMillis":J
    iget-object v10, v13, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    .line 407
    .local v10, "shortMsg":Ljava/lang/String;
    iget-object v0, v13, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    .line 408
    .local v0, "longMsg":Ljava/lang/String;
    iget-object v9, v13, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    .line 409
    .local v9, "stackTrace":Ljava/lang/String;
    if-eqz v10, :cond_29

    if-eqz v0, :cond_29

    .line 410
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2c

    .line 411
    :cond_29
    if-eqz v10, :cond_2c

    .line 412
    move-object v0, v10

    .line 417
    .end local v0    # "longMsg":Ljava/lang/String;
    .local v16, "longMsg":Ljava/lang/String;
    :cond_2c
    :goto_2c
    move-object/from16 v16, v0

    if-eqz v12, :cond_3b

    iget-boolean v0, v12, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-eqz v0, :cond_3b

    .line 418
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    iget v1, v12, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v0, v1}, Lcom/android/server/RescueParty;->notePersistentAppCrash(Landroid/content/Context;I)V

    .line 421
    :cond_3b
    new-instance v0, Lcom/android/server/am/AppErrorResult;

    invoke-direct {v0}, Lcom/android/server/am/AppErrorResult;-><init>()V

    move-object v7, v0

    .line 423
    .local v7, "result":Lcom/android/server/am/AppErrorResult;
    iget-object v8, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    :try_start_44
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_1e3

    .line 428
    move-object v1, v11

    move-object v2, v12

    move-object v3, v13

    move-object v4, v10

    move-object/from16 v5, v16

    move-object v6, v9

    move-object v13, v7

    move-object/from16 v17, v8

    move-wide v7, v14

    .line 428
    .end local v7    # "result":Lcom/android/server/am/AppErrorResult;
    .local v13, "result":Lcom/android/server/am/AppErrorResult;
    move-object/from16 v18, v9

    move/from16 v9, p3

    .line 428
    .end local v9    # "stackTrace":Ljava/lang/String;
    .local v18, "stackTrace":Ljava/lang/String;
    move-object/from16 v19, v10

    move/from16 v10, p4

    .line 428
    .end local v10    # "shortMsg":Ljava/lang/String;
    .local v19, "shortMsg":Ljava/lang/String;
    :try_start_5a
    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/AppErrors;->handleAppCrashInActivityController(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)Z

    move-result v0
    :try_end_5e
    .catchall {:try_start_5a .. :try_end_5e} :catchall_1de

    if-eqz v0, :cond_6b

    .line 430
    :try_start_60
    monitor-exit v17
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_65

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 465
    :catchall_65
    move-exception v0

    move-object v8, v13

    move-object/from16 v7, p2

    goto/16 :goto_1ec

    .line 437
    :cond_6b
    if-eqz v12, :cond_76

    :try_start_6d
    iget-object v0, v12, Lcom/android/server/am/ProcessRecord;->instr:Lcom/android/server/am/ActiveInstrumentation;

    if-eqz v0, :cond_76

    .line 438
    monitor-exit v17
    :try_end_72
    .catchall {:try_start_6d .. :try_end_72} :catchall_65

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 442
    :cond_76
    if-eqz v12, :cond_83

    .line 443
    :try_start_78
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget-object v1, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v2, v12, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/BatteryStatsService;->noteProcessCrash(Ljava/lang/String;I)V
    :try_end_83
    .catchall {:try_start_78 .. :try_end_83} :catchall_65

    .line 446
    :cond_83
    :try_start_83
    new-instance v0, Lcom/android/server/am/AppErrorDialog$Data;

    invoke-direct {v0}, Lcom/android/server/am/AppErrorDialog$Data;-><init>()V

    .line 447
    .local v0, "data":Lcom/android/server/am/AppErrorDialog$Data;
    iput-object v13, v0, Lcom/android/server/am/AppErrorDialog$Data;->result:Lcom/android/server/am/AppErrorResult;

    .line 448
    iput-object v12, v0, Lcom/android/server/am/AppErrorDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;
    :try_end_8c
    .catchall {:try_start_83 .. :try_end_8c} :catchall_1de

    .line 451
    move-object v8, v13

    move-object/from16 v7, p2

    :try_start_8f
    iput-object v7, v0, Lcom/android/server/am/AppErrorDialog$Data;->crash:Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 455
    .end local v13    # "result":Lcom/android/server/am/AppErrorResult;
    .local v8, "result":Lcom/android/server/am/AppErrorResult;
    if-eqz v12, :cond_1d9

    move-object v1, v11

    move-object v2, v12

    move-object/from16 v3, v19

    move-object/from16 v4, v16

    move-object/from16 v5, v18

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/AppErrors;->makeAppCrashingLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    move-result v1

    if-nez v1, :cond_a4

    goto/16 :goto_1d9

    .line 459
    :cond_a4
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 460
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 462
    iget-object v3, v0, Lcom/android/server/am/AppErrorDialog$Data;->task:Lcom/android/server/am/TaskRecord;

    .line 463
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 464
    iget-object v4, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 465
    .end local v0    # "data":Lcom/android/server/am/AppErrorDialog$Data;
    .end local v1    # "msg":Landroid/os/Message;
    monitor-exit v17
    :try_end_b7
    .catchall {:try_start_8f .. :try_end_b7} :catchall_1f1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 467
    invoke-virtual {v8}, Lcom/android/server/am/AppErrorResult;->get()I

    move-result v0

    .line 469
    .local v0, "res":I
    const/4 v1, 0x0

    .line 470
    .local v1, "appErrorIntent":Landroid/content/Intent;
    iget-object v4, v11, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    const/16 v5, 0x13c

    invoke-static {v4, v5, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 471
    const/4 v4, 0x6

    if-eq v0, v4, :cond_cf

    const/4 v4, 0x7

    if-ne v0, v4, :cond_cd

    goto :goto_cf

    .line 474
    .end local v0    # "res":I
    .local v4, "res":I
    :cond_cd
    :goto_cd
    move v4, v0

    goto :goto_d1

    .line 472
    .end local v4    # "res":I
    .restart local v0    # "res":I
    :cond_cf
    :goto_cf
    const/4 v0, 0x1

    goto :goto_cd

    .line 474
    .end local v0    # "res":I
    .restart local v4    # "res":I
    :goto_d1
    iget-object v5, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    :try_start_d4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 475
    const/4 v0, 0x5

    if-ne v4, v0, :cond_dd

    .line 476
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/AppErrors;->stopReportingCrashesLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 478
    :cond_dd
    const/4 v6, 0x3

    const/4 v9, 0x0

    if-ne v4, v6, :cond_14b

    .line 479
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v10, "crash"

    invoke-virtual {v0, v12, v9, v2, v10}, Lcom/android/server/am/ActivityManagerService;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZLjava/lang/String;)Z
    :try_end_e8
    .catchall {:try_start_d4 .. :try_end_e8} :catchall_1d3

    .line 480
    if-eqz v3, :cond_14b

    .line 482
    :try_start_ea
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v10, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 483
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v13

    .line 482
    invoke-virtual {v0, v10, v13}, Lcom/android/server/am/ActivityManagerService;->startActivityFromRecents(ILandroid/os/Bundle;)I
    :try_end_f9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_ea .. :try_end_f9} :catch_fa
    .catchall {:try_start_ea .. :try_end_f9} :catchall_1d3

    .line 497
    goto :goto_14b

    .line 484
    :catch_fa
    move-exception v0

    .line 487
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_fb
    iget-object v10, v3, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v10, :cond_106

    .line 488
    iget-object v10, v3, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v10

    goto :goto_107

    :cond_106
    const/4 v10, 0x0

    .line 489
    .local v10, "cats":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_107
    if-eqz v10, :cond_14b

    const-string v13, "android.intent.category.LAUNCHER"

    invoke-interface {v10, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_14b

    .line 490
    iget-object v13, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v13}, Lcom/android/server/am/ActivityManagerService;->getActivityStartController()Lcom/android/server/am/ActivityStartController;

    move-result-object v20

    iget v13, v3, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    iget-object v6, v3, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    iget-object v9, v3, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    new-instance v2, Lcom/android/server/am/SafeActivityOptions;

    .line 493
    move-object/from16 v36, v0

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    .line 493
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .local v36, "e":Ljava/lang/IllegalArgumentException;
    invoke-direct {v2, v0}, Lcom/android/server/am/SafeActivityOptions;-><init>(Landroid/app/ActivityOptions;)V

    iget v0, v3, Lcom/android/server/am/TaskRecord;->userId:I

    const/16 v33, 0x0

    const-string v34, "AppErrors"

    const/16 v35, 0x0

    .line 490
    move/from16 v21, v13

    move/from16 v22, p3

    move/from16 v23, p4

    move-object/from16 v24, v6

    move-object/from16 v25, v9

    move-object/from16 v31, v2

    move/from16 v32, v0

    invoke-virtual/range {v20 .. v35}, Lcom/android/server/am/ActivityStartController;->startActivityInPackage(IIILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILcom/android/server/am/SafeActivityOptions;ILcom/android/server/am/TaskRecord;Ljava/lang/String;Z)I

    .line 500
    .end local v10    # "cats":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v36    # "e":Ljava/lang/IllegalArgumentException;
    :cond_14b
    :goto_14b
    const/4 v2, 0x1

    if-ne v4, v2, :cond_168

    .line 506
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, v12}, Lcom/android/server/am/ActivityStackSupervisor;->handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 507
    iget-boolean v0, v12, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-nez v0, :cond_168

    .line 508
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v2, "crash"

    const/4 v6, 0x0

    invoke-virtual {v0, v12, v6, v6, v2}, Lcom/android/server/am/ActivityManagerService;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZLjava/lang/String;)Z

    .line 509
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 517
    :cond_168
    const/16 v0, 0x8

    if-ne v4, v0, :cond_196

    .line 518
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "package:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 520
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 522
    :cond_196
    const/4 v0, 0x2

    if-ne v4, v0, :cond_19b

    .line 525
    const/4 v0, 0x0

    .line 528
    .end local v1    # "appErrorIntent":Landroid/content/Intent;
    .local v0, "appErrorIntent":Landroid/content/Intent;
    move-object v1, v0

    .line 528
    .end local v0    # "appErrorIntent":Landroid/content/Intent;
    .restart local v1    # "appErrorIntent":Landroid/content/Intent;
    :cond_19b
    if-eqz v12, :cond_1b7

    iget-boolean v0, v12, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v0, :cond_1b7

    const/4 v2, 0x3

    if-eq v4, v2, :cond_1b7

    .line 531
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    iget-object v2, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v6, v12, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 532
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 531
    invoke-virtual {v0, v2, v6, v9}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 534
    :cond_1b7
    monitor-exit v5
    :try_end_1b8
    .catchall {:try_start_fb .. :try_end_1b8} :catchall_1d3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 536
    if-eqz v1, :cond_1d2

    .line 538
    :try_start_1bd
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    iget v5, v12, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-direct {v2, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1c9
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1bd .. :try_end_1c9} :catch_1ca

    .line 541
    goto :goto_1d2

    .line 539
    :catch_1ca
    move-exception v0

    .line 540
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "ActivityManager"

    const-string v5, "bug report receiver dissappeared"

    invoke-static {v2, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 543
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_1d2
    :goto_1d2
    return-void

    .line 534
    :catchall_1d3
    move-exception v0

    :try_start_1d4
    monitor-exit v5
    :try_end_1d5
    .catchall {:try_start_1d4 .. :try_end_1d5} :catchall_1d3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 456
    .end local v1    # "appErrorIntent":Landroid/content/Intent;
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    .end local v4    # "res":I
    .local v0, "data":Lcom/android/server/am/AppErrorDialog$Data;
    :cond_1d9
    :goto_1d9
    :try_start_1d9
    monitor-exit v17
    :try_end_1da
    .catchall {:try_start_1d9 .. :try_end_1da} :catchall_1f1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 465
    .end local v0    # "data":Lcom/android/server/am/AppErrorDialog$Data;
    .end local v8    # "result":Lcom/android/server/am/AppErrorResult;
    .restart local v13    # "result":Lcom/android/server/am/AppErrorResult;
    :catchall_1de
    move-exception v0

    move-object v8, v13

    move-object/from16 v7, p2

    .line 465
    .end local v13    # "result":Lcom/android/server/am/AppErrorResult;
    .restart local v8    # "result":Lcom/android/server/am/AppErrorResult;
    goto :goto_1ec

    .line 465
    .end local v8    # "result":Lcom/android/server/am/AppErrorResult;
    .end local v18    # "stackTrace":Ljava/lang/String;
    .end local v19    # "shortMsg":Ljava/lang/String;
    .restart local v7    # "result":Lcom/android/server/am/AppErrorResult;
    .restart local v9    # "stackTrace":Ljava/lang/String;
    .local v10, "shortMsg":Ljava/lang/String;
    :catchall_1e3
    move-exception v0

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    move-object v8, v7

    move-object v7, v13

    .line 465
    .end local v7    # "result":Lcom/android/server/am/AppErrorResult;
    .end local v9    # "stackTrace":Ljava/lang/String;
    .end local v10    # "shortMsg":Ljava/lang/String;
    .restart local v8    # "result":Lcom/android/server/am/AppErrorResult;
    .restart local v18    # "stackTrace":Ljava/lang/String;
    .restart local v19    # "shortMsg":Ljava/lang/String;
    :goto_1ec
    :try_start_1ec
    monitor-exit v17
    :try_end_1ed
    .catchall {:try_start_1ec .. :try_end_1ed} :catchall_1f1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_1f1
    move-exception v0

    goto :goto_1ec
.end method

.method createAppErrorIntentLocked(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/content/Intent;
    .registers 8
    .param p1, "r"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "timeMillis"    # J
    .param p4, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 644
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/AppErrors;->createAppErrorReportLocked(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/app/ApplicationErrorReport;

    move-result-object v0

    .line 645
    .local v0, "report":Landroid/app/ApplicationErrorReport;
    if-nez v0, :cond_8

    .line 646
    const/4 v1, 0x0

    return-object v1

    .line 648
    :cond_8
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.APP_ERROR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 649
    .local v1, "result":Landroid/content/Intent;
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 650
    const-string v2, "android.intent.extra.BUG_REPORT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 651
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 652
    return-object v1
.end method

.method dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZLjava/lang/String;)Z
    .registers 28
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "needSep"    # Z
    .param p4, "dumpPackage"    # Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 184
    move-object/from16 v2, p4

    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a9

    .line 185
    const/4 v3, 0x0

    .line 186
    .local v3, "printed":Z
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 187
    .local v5, "now":J
    iget-object v7, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v7}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v7

    .line 188
    .local v7, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .line 189
    .local v8, "processCount":I
    move/from16 v10, p3

    move v9, v3

    const/4 v3, 0x0

    .end local p3    # "needSep":Z
    .local v3, "ip":I
    .local v9, "printed":Z
    .local v10, "needSep":Z
    :goto_25
    if-ge v3, v8, :cond_ab

    .line 190
    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 191
    .local v11, "pname":Ljava/lang/String;
    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseArray;

    .line 192
    .local v12, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v13

    .line 193
    .local v13, "uidCount":I
    move v14, v9

    const/4 v9, 0x0

    .local v9, "i":I
    .local v14, "printed":Z
    :goto_39
    if-ge v9, v13, :cond_a0

    .line 194
    invoke-virtual {v12, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v15

    .line 195
    .local v15, "puid":I
    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4, v11, v15}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 196
    .local v4, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz v2, :cond_5d

    if-eqz v4, :cond_58

    move-object/from16 v16, v7

    iget-object v7, v4, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    .line 197
    .end local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .local v16, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5f

    .line 198
    goto :goto_5a

    .line 193
    .end local v4    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v15    # "puid":I
    .end local v16    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .restart local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    :cond_58
    move-object/from16 v16, v7

    .end local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .restart local v16    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    :goto_5a
    move/from16 v19, v8

    goto :goto_99

    .line 200
    .end local v16    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .restart local v4    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .restart local v15    # "puid":I
    :cond_5d
    move-object/from16 v16, v7

    .end local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .restart local v16    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    :cond_5f
    if-nez v14, :cond_6e

    .line 201
    if-eqz v10, :cond_66

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 202
    :cond_66
    const/4 v10, 0x1

    .line 203
    const-string v7, "  Time since processes crashed:"

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 204
    const/4 v7, 0x1

    .line 206
    .end local v14    # "printed":Z
    .local v7, "printed":Z
    move v14, v7

    .end local v7    # "printed":Z
    .restart local v14    # "printed":Z
    :cond_6e
    const-string v7, "    Process "

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 207
    const-string v7, " uid "

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(I)V

    .line 208
    const-string v7, ": last crashed "

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v12, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    move/from16 v19, v8

    sub-long v7, v5, v17

    .end local v8    # "processCount":I
    .local v19, "processCount":I
    invoke-static {v7, v8, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 210
    const-string v7, " ago"

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 193
    .end local v4    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v15    # "puid":I
    :goto_99
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v7, v16

    move/from16 v8, v19

    goto :goto_39

    .line 189
    .end local v9    # "i":I
    .end local v11    # "pname":Ljava/lang/String;
    .end local v12    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    .end local v13    # "uidCount":I
    .end local v16    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .end local v19    # "processCount":I
    .local v7, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .restart local v8    # "processCount":I
    :cond_a0
    move-object/from16 v16, v7

    move/from16 v19, v8

    .end local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .end local v8    # "processCount":I
    .restart local v16    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .restart local v19    # "processCount":I
    add-int/lit8 v3, v3, 0x1

    move v9, v14

    goto/16 :goto_25

    .line 215
    .end local v3    # "ip":I
    .end local v5    # "now":J
    .end local v10    # "needSep":Z
    .end local v14    # "printed":Z
    .end local v16    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .end local v19    # "processCount":I
    .restart local p3    # "needSep":Z
    :cond_a9
    move/from16 v10, p3

    .end local p3    # "needSep":Z
    .restart local v10    # "needSep":Z
    :cond_ab
    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1af

    .line 216
    const/4 v3, 0x0

    .line 217
    .local v3, "printed":Z
    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    .line 218
    .local v4, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 219
    .local v5, "processCount":I
    move v6, v3

    const/4 v3, 0x0

    .local v3, "ip":I
    .local v6, "printed":Z
    :goto_c4
    if-ge v3, v5, :cond_1af

    .line 220
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 221
    .local v7, "pname":Ljava/lang/String;
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/SparseArray;

    .line 222
    .local v8, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v9

    .line 223
    .local v9, "uidCount":I
    move v11, v6

    const/4 v6, 0x0

    .local v6, "i":I
    .local v11, "printed":Z
    :goto_d8
    if-ge v6, v9, :cond_1a4

    .line 224
    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    .line 225
    .local v12, "puid":I
    iget-object v13, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v13, v7, v12}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/ProcessRecord;

    .line 226
    .local v13, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz v2, :cond_fb

    if-eqz v13, :cond_f5

    iget-object v14, v13, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    .line 227
    invoke-virtual {v14, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_fb

    .line 228
    nop

    .line 223
    .end local v12    # "puid":I
    .end local v13    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_f5
    move-object/from16 v20, v4

    move/from16 v21, v5

    goto/16 :goto_19a

    .line 230
    .restart local v12    # "puid":I
    .restart local v13    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_fb
    if-nez v11, :cond_109

    .line 231
    if-eqz v10, :cond_102

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 232
    :cond_102
    const/4 v10, 0x1

    .line 233
    const-string v14, "  Bad processes:"

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 234
    const/4 v11, 0x1

    .line 236
    :cond_109
    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/AppErrors$BadProcessInfo;

    .line 237
    .local v14, "info":Lcom/android/server/am/AppErrors$BadProcessInfo;
    const-string v15, "    Bad process "

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 238
    const-string v15, " uid "

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 239
    const-string v15, ": crashed at time "

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v20, v4

    move/from16 v21, v5

    iget-wide v4, v14, Lcom/android/server/am/AppErrors$BadProcessInfo;->time:J

    .end local v4    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .end local v5    # "processCount":I
    .local v20, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .local v21, "processCount":I
    invoke-virtual {v1, v4, v5}, Ljava/io/PrintWriter;->println(J)V

    .line 240
    iget-object v4, v14, Lcom/android/server/am/AppErrors$BadProcessInfo;->shortMsg:Ljava/lang/String;

    if-eqz v4, :cond_13b

    .line 241
    const-string v4, "      Short msg: "

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v14, Lcom/android/server/am/AppErrors$BadProcessInfo;->shortMsg:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 243
    :cond_13b
    iget-object v4, v14, Lcom/android/server/am/AppErrors$BadProcessInfo;->longMsg:Ljava/lang/String;

    if-eqz v4, :cond_149

    .line 244
    const-string v4, "      Long msg: "

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v14, Lcom/android/server/am/AppErrors$BadProcessInfo;->longMsg:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 246
    :cond_149
    iget-object v4, v14, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    if-eqz v4, :cond_19a

    .line 247
    const-string v4, "      Stack:"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 248
    const/4 v4, 0x0

    .line 249
    .local v4, "lastPos":I
    move v5, v4

    const/4 v4, 0x0

    .local v4, "pos":I
    .local v5, "lastPos":I
    :goto_155
    iget-object v15, v14, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v4, v15, :cond_17e

    .line 250
    iget-object v15, v14, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    invoke-virtual {v15, v4}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v0, 0xa

    if-ne v15, v0, :cond_179

    .line 251
    const-string v0, "        "

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 252
    iget-object v0, v14, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    sub-int v15, v4, v5

    invoke-virtual {v1, v0, v5, v15}, Ljava/io/PrintWriter;->write(Ljava/lang/String;II)V

    .line 253
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 254
    add-int/lit8 v0, v4, 0x1

    .line 249
    .end local v5    # "lastPos":I
    .local v0, "lastPos":I
    move v5, v0

    .end local v0    # "lastPos":I
    .restart local v5    # "lastPos":I
    :cond_179
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    goto :goto_155

    .line 257
    .end local v4    # "pos":I
    :cond_17e
    iget-object v0, v14, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v5, v0, :cond_19a

    .line 258
    const-string v0, "        "

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 259
    iget-object v0, v14, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    iget-object v4, v14, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {v1, v0, v5, v4}, Ljava/io/PrintWriter;->write(Ljava/lang/String;II)V

    .line 260
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 223
    .end local v5    # "lastPos":I
    .end local v12    # "puid":I
    .end local v13    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v14    # "info":Lcom/android/server/am/AppErrors$BadProcessInfo;
    :cond_19a
    :goto_19a
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v4, v20

    move/from16 v5, v21

    move-object/from16 v0, p0

    goto/16 :goto_d8

    .line 219
    .end local v6    # "i":I
    .end local v7    # "pname":Ljava/lang/String;
    .end local v8    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .end local v9    # "uidCount":I
    .end local v20    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .end local v21    # "processCount":I
    .local v4, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .local v5, "processCount":I
    :cond_1a4
    move-object/from16 v20, v4

    move/from16 v21, v5

    .end local v4    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .end local v5    # "processCount":I
    .restart local v20    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .restart local v21    # "processCount":I
    add-int/lit8 v3, v3, 0x1

    move v6, v11

    move-object/from16 v0, p0

    goto/16 :goto_c4

    .line 266
    .end local v3    # "ip":I
    .end local v11    # "printed":Z
    .end local v20    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .end local v21    # "processCount":I
    :cond_1af
    return v10
.end method

.method handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z
    .registers 27
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "shortMsg"    # Ljava/lang/String;
    .param p4, "longMsg"    # Ljava/lang/String;
    .param p5, "stackTrace"    # Ljava/lang/String;
    .param p6, "data"    # Lcom/android/server/am/AppErrorDialog$Data;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 689
    move-object/from16 v3, p6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 690
    .local v10, "now":J
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "anr_show_background"

    const/4 v12, 0x0

    invoke-static {v0, v4, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v13, 0x1

    if-eqz v0, :cond_1c

    move v0, v13

    goto :goto_1d

    :cond_1c
    move v0, v12

    :goto_1d
    move v14, v0

    .line 693
    .local v14, "showBackground":Z
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->curProcState:I

    const/4 v4, 0x4

    if-ne v0, v4, :cond_25

    move v0, v13

    goto :goto_26

    :cond_25
    move v0, v12

    :goto_26
    move v15, v0

    .line 698
    .local v15, "procIsBoundForeground":Z
    const/4 v0, 0x0

    .line 700
    .local v0, "tryAgain":Z
    iget-boolean v4, v2, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v4, :cond_4a

    .line 701
    iget-object v4, v1, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v6, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 702
    .local v4, "crashTime":Ljava/lang/Long;
    iget-object v5, v1, Lcom/android/server/am/AppErrors;->mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v7, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 704
    .local v5, "crashTimePersistent":Ljava/lang/Long;
    .local v9, "crashTimePersistent":Ljava/lang/Long;
    :goto_48
    move-object v9, v5

    goto :goto_4d

    .end local v4    # "crashTime":Ljava/lang/Long;
    .end local v5    # "crashTimePersistent":Ljava/lang/Long;
    .end local v9    # "crashTimePersistent":Ljava/lang/Long;
    :cond_4a
    const/4 v4, 0x0

    move-object v5, v4

    goto :goto_48

    .restart local v4    # "crashTime":Ljava/lang/Long;
    .restart local v9    # "crashTimePersistent":Ljava/lang/Long;
    :goto_4d
    move-object v8, v4

    .line 708
    .end local v4    # "crashTime":Ljava/lang/Long;
    .local v8, "crashTime":Ljava/lang/Long;
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    sub-int/2addr v4, v13

    move v7, v0

    .end local v0    # "tryAgain":Z
    .local v4, "i":I
    .local v7, "tryAgain":Z
    :goto_56
    move v0, v4

    .end local v4    # "i":I
    .local v0, "i":I
    const-wide/32 v4, 0xea60

    if-ltz v0, :cond_8f

    .line 711
    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    .line 713
    .local v6, "sr":Lcom/android/server/am/ServiceRecord;
    iget-wide v12, v6, Lcom/android/server/am/ServiceRecord;->restartTime:J

    add-long/2addr v12, v4

    cmp-long v4, v10, v12

    if-lez v4, :cond_6f

    .line 714
    const/4 v4, 0x1

    iput v4, v6, Lcom/android/server/am/ServiceRecord;->crashCount:I

    goto :goto_75

    .line 716
    :cond_6f
    const/4 v4, 0x1

    iget v5, v6, Lcom/android/server/am/ServiceRecord;->crashCount:I

    add-int/2addr v5, v4

    iput v5, v6, Lcom/android/server/am/ServiceRecord;->crashCount:I

    .line 720
    :goto_75
    iget v4, v6, Lcom/android/server/am/ServiceRecord;->crashCount:I

    int-to-long v4, v4

    iget-object v12, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v12, v12, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_MAX_CRASH_RETRY:J

    cmp-long v4, v4, v12

    if-gez v4, :cond_8a

    iget-boolean v4, v6, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-nez v4, :cond_88

    if-eqz v15, :cond_8a

    .line 722
    :cond_88
    const/4 v4, 0x1

    .line 708
    .end local v6    # "sr":Lcom/android/server/am/ServiceRecord;
    .end local v7    # "tryAgain":Z
    .local v4, "tryAgain":Z
    move v7, v4

    .end local v4    # "tryAgain":Z
    .restart local v7    # "tryAgain":Z
    :cond_8a
    add-int/lit8 v4, v0, -0x1

    .end local v0    # "i":I
    .local v4, "i":I
    const/4 v12, 0x0

    const/4 v13, 0x1

    goto :goto_56

    .line 726
    .end local v4    # "i":I
    :cond_8f
    if-eqz v8, :cond_167

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    add-long/2addr v12, v4

    cmp-long v0, v10, v12

    if-gez v0, :cond_167

    .line 729
    const-string v0, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Process "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " has crashed too many times: killing!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    const/16 v0, 0x7550

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Object;

    iget v6, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 732
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v12, 0x0

    aput-object v6, v5, v12

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const/4 v12, 0x1

    aput-object v6, v5, v12

    iget v6, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v12, 0x2

    aput-object v6, v5, v12

    .line 731
    invoke-static {v0, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 733
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 734
    iget-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-nez v0, :cond_155

    .line 739
    const/16 v0, 0x753f

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    aput-object v5, v4, v12

    invoke-static {v0, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 741
    iget-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v0, :cond_136

    .line 744
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v13, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    new-instance v5, Lcom/android/server/am/AppErrors$BadProcessInfo;

    move-object v4, v5

    move/from16 v16, v15

    move-object v15, v5

    move-wide v5, v10

    .end local v15    # "procIsBoundForeground":Z
    .local v16, "procIsBoundForeground":Z
    move-wide/from16 v17, v10

    move v10, v7

    move-object/from16 v7, p3

    .end local v7    # "tryAgain":Z
    .local v10, "tryAgain":Z
    .local v17, "now":J
    move-object v11, v8

    move-object/from16 v8, p4

    .end local v8    # "crashTime":Ljava/lang/Long;
    .local v11, "crashTime":Ljava/lang/Long;
    move-object/from16 v19, v11

    move-object v11, v9

    move-object/from16 v9, p5

    .end local v9    # "crashTimePersistent":Ljava/lang/Long;
    .local v11, "crashTimePersistent":Ljava/lang/Long;
    .local v19, "crashTime":Ljava/lang/Long;
    invoke-direct/range {v4 .. v9}, Lcom/android/server/am/AppErrors$BadProcessInfo;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v12, v13, v15}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 746
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    goto :goto_13e

    .line 748
    .end local v11    # "crashTimePersistent":Ljava/lang/Long;
    .end local v16    # "procIsBoundForeground":Z
    .end local v17    # "now":J
    .end local v19    # "crashTime":Ljava/lang/Long;
    .restart local v7    # "tryAgain":Z
    .restart local v8    # "crashTime":Ljava/lang/Long;
    .restart local v9    # "crashTimePersistent":Ljava/lang/Long;
    .local v10, "now":J
    .restart local v15    # "procIsBoundForeground":Z
    :cond_136
    move-object/from16 v19, v8

    move-wide/from16 v17, v10

    move/from16 v16, v15

    move v10, v7

    move-object v11, v9

    .end local v7    # "tryAgain":Z
    .end local v8    # "crashTime":Ljava/lang/Long;
    .end local v9    # "crashTimePersistent":Ljava/lang/Long;
    .end local v15    # "procIsBoundForeground":Z
    .local v10, "tryAgain":Z
    .restart local v11    # "crashTimePersistent":Ljava/lang/Long;
    .restart local v16    # "procIsBoundForeground":Z
    .restart local v17    # "now":J
    .restart local v19    # "crashTime":Ljava/lang/Long;
    :goto_13e
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/am/ProcessRecord;->bad:Z

    .line 749
    iput-boolean v4, v2, Lcom/android/server/am/ProcessRecord;->removed:Z

    .line 753
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v4, "crash"

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5, v10, v4}, Lcom/android/server/am/ActivityManagerService;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZLjava/lang/String;)Z

    .line 754
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 755
    if-nez v14, :cond_15d

    .line 756
    return v5

    .line 759
    .end local v11    # "crashTimePersistent":Ljava/lang/Long;
    .end local v16    # "procIsBoundForeground":Z
    .end local v17    # "now":J
    .end local v19    # "crashTime":Ljava/lang/Long;
    .restart local v7    # "tryAgain":Z
    .restart local v8    # "crashTime":Ljava/lang/Long;
    .restart local v9    # "crashTimePersistent":Ljava/lang/Long;
    .local v10, "now":J
    .restart local v15    # "procIsBoundForeground":Z
    :cond_155
    move-object/from16 v19, v8

    move-wide/from16 v17, v10

    move/from16 v16, v15

    move v10, v7

    move-object v11, v9

    .end local v7    # "tryAgain":Z
    .end local v8    # "crashTime":Ljava/lang/Long;
    .end local v9    # "crashTimePersistent":Ljava/lang/Long;
    .end local v15    # "procIsBoundForeground":Z
    .local v10, "tryAgain":Z
    .restart local v11    # "crashTimePersistent":Ljava/lang/Long;
    .restart local v16    # "procIsBoundForeground":Z
    .restart local v17    # "now":J
    .restart local v19    # "crashTime":Ljava/lang/Long;
    :cond_15d
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    .line 772
    move-object/from16 v6, p2

    goto :goto_18e

    .line 761
    .end local v11    # "crashTimePersistent":Ljava/lang/Long;
    .end local v16    # "procIsBoundForeground":Z
    .end local v17    # "now":J
    .end local v19    # "crashTime":Ljava/lang/Long;
    .restart local v7    # "tryAgain":Z
    .restart local v8    # "crashTime":Ljava/lang/Long;
    .restart local v9    # "crashTimePersistent":Ljava/lang/Long;
    .local v10, "now":J
    .restart local v15    # "procIsBoundForeground":Z
    :cond_167
    move-object/from16 v19, v8

    move-wide/from16 v17, v10

    move/from16 v16, v15

    move v10, v7

    move-object v11, v9

    .end local v7    # "tryAgain":Z
    .end local v8    # "crashTime":Ljava/lang/Long;
    .end local v9    # "crashTimePersistent":Ljava/lang/Long;
    .end local v15    # "procIsBoundForeground":Z
    .local v10, "tryAgain":Z
    .restart local v11    # "crashTimePersistent":Ljava/lang/Long;
    .restart local v16    # "procIsBoundForeground":Z
    .restart local v17    # "now":J
    .restart local v19    # "crashTime":Ljava/lang/Long;
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 762
    move-object/from16 v6, p2

    invoke-virtual {v0, v2, v6}, Lcom/android/server/am/ActivityStackSupervisor;->finishTopCrashedActivitiesLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 763
    .local v0, "affectedTask":Lcom/android/server/am/TaskRecord;
    if-eqz v3, :cond_17d

    .line 764
    iput-object v0, v3, Lcom/android/server/am/AppErrorDialog$Data;->task:Lcom/android/server/am/TaskRecord;

    .line 766
    :cond_17d
    if-eqz v3, :cond_18e

    if-eqz v11, :cond_18e

    .line 767
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    add-long/2addr v7, v4

    cmp-long v4, v17, v7

    if-gez v4, :cond_18e

    .line 768
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/am/AppErrorDialog$Data;->repeating:Z

    .end local v0    # "affectedTask":Lcom/android/server/am/TaskRecord;
    goto :goto_18f

    .line 772
    :cond_18e
    :goto_18e
    const/4 v4, 0x1

    :goto_18f
    if-eqz v3, :cond_195

    if-eqz v10, :cond_195

    .line 773
    iput-boolean v4, v3, Lcom/android/server/am/AppErrorDialog$Data;->isRestartableForService:Z

    .line 780
    :cond_195
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    .line 781
    .local v4, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    if-ne v2, v0, :cond_1ea

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1ea

    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v5, 0x1

    and-int/2addr v0, v5

    if-nez v0, :cond_1ea

    .line 783
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v5

    .local v0, "activityNdx":I
    :goto_1b4
    move v5, v0

    .end local v0    # "activityNdx":I
    .local v5, "activityNdx":I
    if-ltz v5, :cond_1ea

    .line 784
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/server/am/ActivityRecord;

    .line 785
    .local v7, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v7}, Lcom/android/server/am/ActivityRecord;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_1e7

    .line 786
    const-string v0, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Clearing package preferred activities from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    :try_start_1dc
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v8, v7, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 789
    invoke-interface {v0, v8}, Landroid/content/pm/IPackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V
    :try_end_1e5
    .catch Landroid/os/RemoteException; {:try_start_1dc .. :try_end_1e5} :catch_1e6

    .line 792
    goto :goto_1e7

    .line 790
    :catch_1e6
    move-exception v0

    .line 783
    .end local v7    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1e7
    :goto_1e7
    add-int/lit8 v0, v5, -0x1

    .end local v5    # "activityNdx":I
    .restart local v0    # "activityNdx":I
    goto :goto_1b4

    .line 797
    .end local v0    # "activityNdx":I
    :cond_1ea
    iget-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v0, :cond_20f

    .line 800
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v7, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    move-wide/from16 v8, v17

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .end local v17    # "now":J
    .local v8, "now":J
    invoke-virtual {v0, v5, v7, v12}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 801
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v7, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v0, v5, v7, v12}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_211

    .line 804
    .end local v8    # "now":J
    .restart local v17    # "now":J
    :cond_20f
    move-wide/from16 v8, v17

    .end local v17    # "now":J
    .restart local v8    # "now":J
    :goto_211
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->crashHandler:Ljava/lang/Runnable;

    if-eqz v0, :cond_21e

    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->crashHandler:Ljava/lang/Runnable;

    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 805
    :cond_21e
    const/4 v5, 0x1

    return v5
.end method

.method handleShowAnrUi(Landroid/os/Message;)V
    .registers 28
    .param p1, "msg"    # Landroid/os/Message;

    move-object/from16 v1, p0

    .line 1188
    const/4 v2, 0x0

    .line 1189
    .local v2, "dialogToShow":Landroid/app/Dialog;
    iget-object v3, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_b9

    .line 1190
    move-object/from16 v4, p1

    :try_start_b
    iget-object v0, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/AppNotRespondingDialog$Data;

    .line 1191
    .local v0, "data":Lcom/android/server/am/AppNotRespondingDialog$Data;
    iget-object v5, v0, Lcom/android/server/am/AppNotRespondingDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    .line 1192
    .local v5, "proc":Lcom/android/server/am/ProcessRecord;
    if-nez v5, :cond_1f

    .line 1193
    const-string v6, "ActivityManager"

    const-string v7, "handleShowAnrUi: proc is null"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    monitor-exit v3
    :try_end_1b
    .catchall {:try_start_b .. :try_end_1b} :catchall_b7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1196
    :cond_1f
    :try_start_1f
    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    const/16 v7, 0x13d

    if-eqz v6, :cond_46

    .line 1197
    const-string v6, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "App already has anr dialog: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    iget-object v6, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    const/4 v8, -0x2

    invoke-static {v6, v7, v8}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 1200
    monitor-exit v3
    :try_end_42
    .catchall {:try_start_1f .. :try_end_42} :catchall_b7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1203
    :cond_46
    :try_start_46
    new-instance v6, Landroid/content/Intent;

    const-string v8, "android.intent.action.ANR"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1204
    .local v6, "intent":Landroid/content/Intent;
    iget-object v8, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v8, v8, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-nez v8, :cond_58

    .line 1205
    const/high16 v8, 0x50000000

    invoke-virtual {v6, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1208
    :cond_58
    iget-object v9, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, -0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    sget v23, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v24, 0x3e8

    const/16 v25, 0x0

    move-object v12, v6

    invoke-virtual/range {v9 .. v25}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    .line 1212
    iget-object v8, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "anr_show_background"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_88

    const/4 v10, 0x1

    nop

    :cond_88
    move v8, v10

    .line 1214
    .local v8, "showBackground":Z
    iget-object v9, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityManagerService;->canShowErrorDialogs()Z

    move-result v9

    if-nez v9, :cond_a1

    if-eqz v8, :cond_94

    goto :goto_a1

    .line 1218
    :cond_94
    iget-object v9, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    const/4 v10, -0x1

    invoke-static {v9, v7, v10}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 1221
    iget-object v7, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v9, 0x0

    invoke-virtual {v7, v5, v9}, Lcom/android/server/am/ActivityManagerService;->killAppAtUsersRequest(Lcom/android/server/am/ProcessRecord;Landroid/app/Dialog;)V

    .end local v0    # "data":Lcom/android/server/am/AppNotRespondingDialog$Data;
    .end local v5    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v8    # "showBackground":Z
    goto :goto_ad

    .line 1215
    .restart local v0    # "data":Lcom/android/server/am/AppNotRespondingDialog$Data;
    .restart local v5    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v6    # "intent":Landroid/content/Intent;
    .restart local v8    # "showBackground":Z
    :cond_a1
    :goto_a1
    new-instance v7, Lcom/android/server/am/AppNotRespondingDialog;

    iget-object v9, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-direct {v7, v9, v10, v0}, Lcom/android/server/am/AppNotRespondingDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/AppNotRespondingDialog$Data;)V

    move-object v2, v7

    .line 1216
    iput-object v2, v5, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    .line 1223
    .end local v0    # "data":Lcom/android/server/am/AppNotRespondingDialog$Data;
    .end local v5    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v8    # "showBackground":Z
    :goto_ad
    monitor-exit v3
    :try_end_ae
    .catchall {:try_start_46 .. :try_end_ae} :catchall_b7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1225
    if-eqz v2, :cond_b6

    .line 1226
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 1228
    :cond_b6
    return-void

    .line 1223
    :catchall_b7
    move-exception v0

    goto :goto_bc

    :catchall_b9
    move-exception v0

    move-object/from16 v4, p1

    :goto_bc
    :try_start_bc
    monitor-exit v3
    :try_end_bd
    .catchall {:try_start_bc .. :try_end_bd} :catchall_b7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method handleShowAppErrorUi(Landroid/os/Message;)V
    .registers 21
    .param p1, "msg"    # Landroid/os/Message;

    move-object/from16 v1, p0

    .line 809
    move-object/from16 v2, p1

    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/android/server/am/AppErrorDialog$Data;

    .line 810
    .local v3, "data":Lcom/android/server/am/AppErrorDialog$Data;
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "anr_show_background"

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    move v0, v5

    :goto_1b
    move v6, v0

    .line 813
    .local v6, "showBackground":Z
    const/4 v7, 0x0

    .line 816
    .local v7, "dialogToShow":Lcom/android/server/am/AppErrorDialog;
    iget-object v8, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    :try_start_20
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 817
    iget-object v0, v3, Lcom/android/server/am/AppErrorDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    .line 818
    .local v0, "proc":Lcom/android/server/am/ProcessRecord;
    iget-object v9, v3, Lcom/android/server/am/AppErrorDialog$Data;->result:Lcom/android/server/am/AppErrorResult;

    .line 819
    .local v9, "res":Lcom/android/server/am/AppErrorResult;
    if-nez v0, :cond_35

    .line 820
    const-string v4, "ActivityManager"

    const-string v5, "handleShowAppErrorUi: proc is null"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    monitor-exit v8
    :try_end_31
    .catchall {:try_start_20 .. :try_end_31} :catchall_135

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 823
    :cond_35
    :try_start_35
    iget-object v10, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 824
    .local v10, "packageName":Ljava/lang/String;
    iget v11, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 825
    .local v11, "userId":I
    iget-object v12, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    if-eqz v12, :cond_61

    .line 826
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "App already has crash dialog: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    if-eqz v9, :cond_5c

    .line 828
    sget v4, Lcom/android/server/am/AppErrorDialog;->ALREADY_SHOWING:I

    invoke-virtual {v9, v4}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 830
    :cond_5c
    monitor-exit v8
    :try_end_5d
    .catchall {:try_start_35 .. :try_end_5d} :catchall_135

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 832
    :cond_61
    :try_start_61
    iget v12, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v12}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v12

    const/16 v13, 0x2710

    if-lt v12, v13, :cond_73

    iget v12, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v13, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v12, v13, :cond_73

    const/4 v12, 0x1

    goto :goto_74

    :cond_73
    move v12, v5

    .line 835
    .local v12, "isBackground":Z
    :goto_74
    iget-object v13, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v13}, Lcom/android/server/am/UserController;->getCurrentProfileIds()[I

    move-result-object v13

    array-length v14, v13

    move v15, v12

    move v12, v5

    .line 835
    .end local v12    # "isBackground":Z
    .local v15, "isBackground":Z
    :goto_7f
    if-ge v12, v14, :cond_93

    aget v16, v13, v12

    move/from16 v17, v16

    .line 836
    .local v17, "profileId":I
    move/from16 v4, v17

    if-eq v11, v4, :cond_8c

    .line 836
    .end local v17    # "profileId":I
    .local v4, "profileId":I
    const/16 v16, 0x1

    goto :goto_8e

    :cond_8c
    move/from16 v16, v5

    :goto_8e
    and-int v15, v15, v16

    .line 835
    .end local v4    # "profileId":I
    add-int/lit8 v12, v12, 0x1

    goto :goto_7f

    .line 838
    :cond_93
    if-eqz v15, :cond_be

    if-nez v6, :cond_be

    .line 839
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Skipping crash dialog of "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ": background"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    if-eqz v9, :cond_b9

    .line 841
    sget v4, Lcom/android/server/am/AppErrorDialog;->BACKGROUND_USER:I

    invoke-virtual {v9, v4}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 843
    :cond_b9
    monitor-exit v8
    :try_end_ba
    .catchall {:try_start_61 .. :try_end_ba} :catchall_135

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 845
    :cond_be
    :try_start_be
    iget-object v4, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    .line 846
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v12, "show_first_crash_dialog"

    .line 845
    invoke-static {v4, v12, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_cf

    const/4 v4, 0x1

    goto :goto_d0

    :cond_cf
    move v4, v5

    .line 848
    .local v4, "showFirstCrash":Z
    :goto_d0
    iget-object v12, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    .line 849
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "show_first_crash_dialog_dev_option"

    iget-object v14, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v14, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 852
    invoke-virtual {v14}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v14

    .line 848
    invoke-static {v12, v13, v5, v14}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v12

    if-eqz v12, :cond_e9

    const/4 v12, 0x1

    goto :goto_ea

    :cond_e9
    move v12, v5

    .line 853
    .local v12, "showFirstCrashDevOption":Z
    :goto_ea
    iget-object v13, v1, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    if-eqz v13, :cond_fd

    iget-object v13, v1, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    iget-object v14, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 854
    invoke-virtual {v13, v14}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_fd

    const/16 v18, 0x1

    goto :goto_ff

    :cond_fd
    move/from16 v18, v5

    :goto_ff
    move/from16 v5, v18

    .line 855
    .local v5, "crashSilenced":Z
    iget-object v13, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v13}, Lcom/android/server/am/ActivityManagerService;->canShowErrorDialogs()Z

    move-result v13

    if-nez v13, :cond_10b

    if-eqz v6, :cond_122

    :cond_10b
    if-nez v5, :cond_122

    if-nez v4, :cond_115

    if-nez v12, :cond_115

    iget-boolean v13, v3, Lcom/android/server/am/AppErrorDialog$Data;->repeating:Z

    if-eqz v13, :cond_122

    .line 859
    :cond_115
    iget-object v13, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-static {v13, v3, v14, v0, v9}, Lcom/android/server/am/ActivityManagerServiceInjector;->showMiuiAppCrashDialog(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorDialog$Data;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/AppErrorResult;)V

    .line 860
    iget-object v13, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    check-cast v13, Lcom/android/server/am/AppErrorDialog;

    move-object v7, v13

    goto :goto_129

    .line 865
    :cond_122
    if-eqz v9, :cond_129

    .line 866
    sget v13, Lcom/android/server/am/AppErrorDialog;->CANT_SHOW:I

    invoke-virtual {v9, v13}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 869
    .end local v0    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v4    # "showFirstCrash":Z
    .end local v5    # "crashSilenced":Z
    .end local v9    # "res":Lcom/android/server/am/AppErrorResult;
    .end local v12    # "showFirstCrashDevOption":Z
    .end local v15    # "isBackground":Z
    :cond_129
    :goto_129
    monitor-exit v8
    :try_end_12a
    .catchall {:try_start_be .. :try_end_12a} :catchall_135

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    move-object v0, v10

    .line 869
    .end local v10    # "packageName":Ljava/lang/String;
    .local v0, "packageName":Ljava/lang/String;
    move v4, v11

    .line 871
    .end local v11    # "userId":I
    .local v4, "userId":I
    if-eqz v7, :cond_134

    .line 874
    invoke-virtual {v7}, Lcom/android/server/am/AppErrorDialog;->show()V

    .line 876
    :cond_134
    return-void

    .line 869
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v4    # "userId":I
    :catchall_135
    move-exception v0

    :try_start_136
    monitor-exit v8
    :try_end_137
    .catchall {:try_start_136 .. :try_end_137} :catchall_135

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method isBadProcessLocked(Landroid/content/pm/ApplicationInfo;)Z
    .registers 5
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 270
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method killAppAtUserRequestLocked(Lcom/android/server/am/ProcessRecord;Landroid/app/Dialog;)V
    .registers 12
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "fromDialog"    # Landroid/app/Dialog;

    .line 322
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->crashing:Z

    .line 323
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/am/ProcessRecord;->crashingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 324
    iput-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    .line 325
    iput-object v1, p1, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 326
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    if-ne v0, p2, :cond_10

    .line 327
    iput-object v1, p1, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    .line 329
    :cond_10
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    if-ne v0, p2, :cond_16

    .line 330
    iput-object v1, p1, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    .line 332
    :cond_16
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    if-lez v0, :cond_33

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v1, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v0, v1, :cond_33

    .line 333
    const-string/jumbo v4, "user-terminated"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/AppErrors;->handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    .line 335
    const-string/jumbo v0, "user request after error"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    .line 337
    :cond_33
    return-void
.end method

.method loadAppsNotReportingCrashesFromConfigLocked(Ljava/lang/String;)V
    .registers 4
    .param p1, "appsNotReportingCrashesConfig"    # Ljava/lang/String;

    .line 312
    if-eqz p1, :cond_17

    .line 313
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, "split":[Ljava/lang/String;
    array-length v1, v0

    if-lez v1, :cond_17

    .line 315
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    .line 316
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 319
    .end local v0    # "split":[Ljava/lang/String;
    :cond_17
    return-void
.end method

.method resetProcessCrashTimeLocked(Landroid/content/pm/ApplicationInfo;)V
    .registers 5
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 278
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 279
    return-void
.end method

.method resetProcessCrashTimeLocked(ZII)V
    .registers 11
    .param p1, "resetEntireUser"    # Z
    .param p2, "appId"    # I
    .param p3, "userId"    # I

    .line 282
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    .line 283
    .local v0, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "ip":I
    :goto_c
    if-ltz v1, :cond_51

    .line 284
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 285
    .local v2, "ba":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_1a
    if-ltz v3, :cond_45

    .line 286
    const/4 v4, 0x0

    .line 287
    .local v4, "remove":Z
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 288
    .local v5, "entUid":I
    if-nez p1, :cond_36

    .line 289
    const/4 v6, -0x1

    if-ne p3, v6, :cond_2e

    .line 290
    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    if-ne v6, p2, :cond_3d

    .line 291
    const/4 v4, 0x1

    goto :goto_3d

    .line 294
    :cond_2e
    invoke-static {p3, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v6

    if-ne v5, v6, :cond_3d

    .line 295
    const/4 v4, 0x1

    goto :goto_3d

    .line 298
    :cond_36
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-ne v6, p3, :cond_3d

    .line 299
    const/4 v4, 0x1

    .line 301
    :cond_3d
    :goto_3d
    if-eqz v4, :cond_42

    .line 302
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->removeAt(I)V

    .line 285
    .end local v4    # "remove":Z
    .end local v5    # "entUid":I
    :cond_42
    add-int/lit8 v3, v3, -0x1

    goto :goto_1a

    .line 305
    .end local v3    # "i":I
    :cond_45
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_4e

    .line 306
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 283
    .end local v2    # "ba":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    :cond_4e
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 309
    .end local v1    # "ip":I
    :cond_51
    return-void
.end method

.method scheduleAppCrashLocked(IILjava/lang/String;ILjava/lang/String;)V
    .registers 11
    .param p1, "uid"    # I
    .param p2, "initialPid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .param p5, "message"    # Ljava/lang/String;

    .line 350
    const/4 v0, 0x0

    .line 356
    .local v0, "proc":Lcom/android/server/am/ProcessRecord;
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v1

    .line 357
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    :try_start_7
    iget-object v3, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3a

    .line 358
    iget-object v3, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 359
    .local v3, "p":Lcom/android/server/am/ProcessRecord;
    if-ltz p1, :cond_22

    iget v4, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v4, p1, :cond_22

    .line 360
    goto :goto_37

    .line 362
    :cond_22
    iget v4, v3, Lcom/android/server/am/ProcessRecord;->pid:I

    if-ne v4, p2, :cond_28

    .line 363
    move-object v0, v3

    .line 364
    goto :goto_3a

    .line 366
    :cond_28
    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v4, p3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    if-ltz p4, :cond_36

    iget v4, v3, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v4, p4, :cond_37

    .line 368
    :cond_36
    move-object v0, v3

    .line 357
    .end local v3    # "p":Lcom/android/server/am/ProcessRecord;
    :cond_37
    :goto_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 371
    .end local v2    # "i":I
    :cond_3a
    :goto_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_7 .. :try_end_3b} :catchall_70

    .line 373
    if-nez v0, :cond_6c

    .line 374
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "crashApplication: nothing for uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " initialPid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    return-void

    .line 381
    :cond_6c
    invoke-virtual {v0, p5}, Lcom/android/server/am/ProcessRecord;->scheduleCrash(Ljava/lang/String;)V

    .line 382
    return-void

    .line 371
    :catchall_70
    move-exception v2

    :try_start_71
    monitor-exit v1
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    throw v2
.end method

.method startAppProblemLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 9
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 602
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    .line 604
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getCurrentProfileIds()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_28

    aget v3, v0, v2

    .line 605
    .local v3, "userId":I
    iget v4, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v4, v3, :cond_25

    .line 606
    iget-object v4, p0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v4, v5, v6}, Landroid/app/ApplicationErrorReport;->getErrorReportReceiver(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v4

    iput-object v4, p1, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    .line 604
    .end local v3    # "userId":I
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 610
    :cond_28
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->skipCurrentReceiverLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 611
    return-void
.end method

.method stopReportingCrashesLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 4
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .line 879
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    if-nez v0, :cond_b

    .line 880
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    .line 882
    :cond_b
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 883
    return-void
.end method

.method writeToProto(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;)V
    .registers 37
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "dumpPackage"    # Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 115
    move-object/from16 v2, p4

    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1f

    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 116
    return-void

    .line 119
    :cond_1f
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 120
    .local v3, "token":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 121
    .local v5, "now":J
    const-wide v7, 0x10300000001L

    invoke-virtual {v1, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 123
    iget-object v7, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v7}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v7

    const-wide v12, 0x10900000001L

    const-wide v14, 0x20b00000002L

    const/16 v16, 0x0

    if-nez v7, :cond_107

    .line 124
    iget-object v7, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v7}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v7

    .line 125
    .local v7, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .line 126
    .local v8, "procCount":I
    move/from16 v9, v16

    .local v9, "ip":I
    :goto_53
    if-ge v9, v8, :cond_107

    .line 127
    invoke-virtual {v1, v14, v15}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    .line 128
    .local v10, "ctoken":J
    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v14, v17

    check-cast v14, Ljava/lang/String;

    .line 129
    .local v14, "pname":Ljava/lang/String;
    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/SparseArray;

    .line 130
    .local v15, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    move-wide/from16 v18, v5

    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 132
    .local v5, "uidCount":I
    .local v18, "now":J
    invoke-virtual {v1, v12, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 133
    move/from16 v6, v16

    .local v6, "i":I
    :goto_72
    if-ge v6, v5, :cond_ea

    .line 134
    invoke-virtual {v15, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    .line 135
    .local v12, "puid":I
    iget-object v13, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v13, v14, v12}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/ProcessRecord;

    .line 136
    .local v13, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz v2, :cond_a5

    if-eqz v13, :cond_9a

    move/from16 v20, v5

    iget-object v5, v13, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    .end local v5    # "uidCount":I
    .local v20, "uidCount":I
    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a7

    .line 137
    nop

    .line 133
    move-wide/from16 v25, v3

    move-object/from16 v21, v7

    move/from16 v22, v8

    move-object/from16 v23, v14

    goto :goto_d8

    .end local v12    # "puid":I
    .end local v13    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v20    # "uidCount":I
    .restart local v5    # "uidCount":I
    :cond_9a
    move/from16 v20, v5

    move-wide/from16 v25, v3

    move-object/from16 v21, v7

    move/from16 v22, v8

    move-object/from16 v23, v14

    .end local v5    # "uidCount":I
    .restart local v20    # "uidCount":I
    goto :goto_d8

    .line 139
    .end local v20    # "uidCount":I
    .restart local v5    # "uidCount":I
    .restart local v12    # "puid":I
    .restart local v13    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_a5
    move/from16 v20, v5

    .end local v5    # "uidCount":I
    .restart local v20    # "uidCount":I
    :cond_a7
    move-object/from16 v21, v7

    move/from16 v22, v8

    move-object/from16 v24, v13

    move-object/from16 v23, v14

    const-wide v7, 0x20b00000002L

    invoke-virtual {v1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    .line 140
    .end local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .end local v8    # "procCount":I
    .end local v14    # "pname":Ljava/lang/String;
    .local v13, "etoken":J
    .local v21, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .local v22, "procCount":I
    .local v23, "pname":Ljava/lang/String;
    .local v24, "r":Lcom/android/server/am/ProcessRecord;
    const-wide v7, 0x10500000001L

    invoke-virtual {v1, v7, v8, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 141
    nop

    .line 142
    invoke-virtual {v15, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 141
    move-wide/from16 v25, v3

    const-wide v3, 0x10300000002L

    invoke-virtual {v1, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 143
    .end local v3    # "token":J
    .local v25, "token":J
    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 133
    .end local v12    # "puid":I
    .end local v13    # "etoken":J
    .end local v24    # "r":Lcom/android/server/am/ProcessRecord;
    :goto_d8
    add-int/lit8 v6, v6, 0x1

    move/from16 v5, v20

    move-object/from16 v7, v21

    move/from16 v8, v22

    move-object/from16 v14, v23

    move-wide/from16 v3, v25

    const-wide v12, 0x10900000001L

    goto :goto_72

    .line 145
    .end local v6    # "i":I
    .end local v20    # "uidCount":I
    .end local v21    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .end local v22    # "procCount":I
    .end local v23    # "pname":Ljava/lang/String;
    .end local v25    # "token":J
    .restart local v3    # "token":J
    .restart local v5    # "uidCount":I
    .restart local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .restart local v8    # "procCount":I
    .restart local v14    # "pname":Ljava/lang/String;
    :cond_ea
    move-wide/from16 v25, v3

    move/from16 v20, v5

    move-object/from16 v21, v7

    move/from16 v22, v8

    move-object/from16 v23, v14

    .end local v3    # "token":J
    .end local v5    # "uidCount":I
    .end local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .end local v8    # "procCount":I
    .end local v14    # "pname":Ljava/lang/String;
    .restart local v20    # "uidCount":I
    .restart local v21    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .restart local v22    # "procCount":I
    .restart local v23    # "pname":Ljava/lang/String;
    .restart local v25    # "token":J
    invoke-virtual {v1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 126
    .end local v10    # "ctoken":J
    .end local v15    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    .end local v20    # "uidCount":I
    .end local v23    # "pname":Ljava/lang/String;
    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v5, v18

    const-wide v12, 0x10900000001L

    const-wide v14, 0x20b00000002L

    goto/16 :goto_53

    .line 150
    .end local v9    # "ip":I
    .end local v18    # "now":J
    .end local v21    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .end local v22    # "procCount":I
    .end local v25    # "token":J
    .restart local v3    # "token":J
    .local v5, "now":J
    :cond_107
    move-wide/from16 v25, v3

    move-wide/from16 v18, v5

    .end local v3    # "token":J
    .end local v5    # "now":J
    .restart local v18    # "now":J
    .restart local v25    # "token":J
    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1e2

    .line 151
    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    .line 152
    .local v3, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 153
    .local v4, "processCount":I
    move/from16 v5, v16

    .local v5, "ip":I
    :goto_123
    if-ge v5, v4, :cond_1e2

    .line 154
    const-wide v6, 0x20b00000003L

    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 155
    .local v6, "btoken":J
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 156
    .local v8, "pname":Ljava/lang/String;
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseArray;

    .line 157
    .local v9, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v10

    .line 159
    .local v10, "uidCount":I
    const-wide v11, 0x10900000001L

    invoke-virtual {v1, v11, v12, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 160
    move/from16 v13, v16

    .local v13, "i":I
    :goto_148
    if-ge v13, v10, :cond_1ce

    .line 161
    invoke-virtual {v9, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v14

    .line 162
    .local v14, "puid":I
    iget-object v15, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v15, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v15, v8, v14}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/ProcessRecord;

    .line 163
    .local v15, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz v2, :cond_171

    if-eqz v15, :cond_165

    iget-object v11, v15, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    .line 164
    invoke-virtual {v11, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_171

    .line 165
    nop

    .line 160
    .end local v3    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .end local v8    # "pname":Ljava/lang/String;
    .end local v9    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .end local v14    # "puid":I
    .end local v15    # "r":Lcom/android/server/am/ProcessRecord;
    .local v27, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .local v28, "pname":Ljava/lang/String;
    .local v29, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    :cond_165
    move-object/from16 v27, v3

    move-object/from16 v28, v8

    move-object/from16 v29, v9

    const-wide v14, 0x10300000002L

    goto :goto_1bd

    .line 167
    .end local v27    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .end local v28    # "pname":Ljava/lang/String;
    .end local v29    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .restart local v3    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .restart local v8    # "pname":Ljava/lang/String;
    .restart local v9    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .restart local v14    # "puid":I
    .restart local v15    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_171
    invoke-virtual {v9, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/AppErrors$BadProcessInfo;

    .line 168
    .local v11, "info":Lcom/android/server/am/AppErrors$BadProcessInfo;
    move-object/from16 v27, v3

    move-object/from16 v28, v8

    move-object/from16 v29, v9

    const-wide v2, 0x20b00000002L

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 169
    .end local v3    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .end local v9    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .local v8, "etoken":J
    .restart local v27    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .restart local v28    # "pname":Ljava/lang/String;
    .restart local v29    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    const-wide v2, 0x10500000001L

    invoke-virtual {v1, v2, v3, v14}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 170
    iget-wide v2, v11, Lcom/android/server/am/AppErrors$BadProcessInfo;->time:J

    move/from16 v30, v14

    move-object/from16 v31, v15

    const-wide v14, 0x10300000002L

    invoke-virtual {v1, v14, v15, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 171
    .end local v14    # "puid":I
    .end local v15    # "r":Lcom/android/server/am/ProcessRecord;
    .local v30, "puid":I
    .local v31, "r":Lcom/android/server/am/ProcessRecord;
    const-wide v2, 0x10900000003L

    iget-object v12, v11, Lcom/android/server/am/AppErrors$BadProcessInfo;->shortMsg:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v12}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 172
    const-wide v2, 0x10900000004L

    iget-object v12, v11, Lcom/android/server/am/AppErrors$BadProcessInfo;->longMsg:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v12}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 173
    const-wide v2, 0x10900000005L

    iget-object v12, v11, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v12}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 174
    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 160
    .end local v8    # "etoken":J
    .end local v11    # "info":Lcom/android/server/am/AppErrors$BadProcessInfo;
    .end local v30    # "puid":I
    .end local v31    # "r":Lcom/android/server/am/ProcessRecord;
    :goto_1bd
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v3, v27

    move-object/from16 v8, v28

    move-object/from16 v9, v29

    move-object/from16 v2, p4

    const-wide v11, 0x10900000001L

    goto/16 :goto_148

    .line 176
    .end local v13    # "i":I
    .end local v27    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .end local v28    # "pname":Ljava/lang/String;
    .end local v29    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .restart local v3    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .local v8, "pname":Ljava/lang/String;
    .restart local v9    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    :cond_1ce
    move-object/from16 v27, v3

    move-object/from16 v28, v8

    move-object/from16 v29, v9

    const-wide v14, 0x10300000002L

    .end local v3    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .end local v8    # "pname":Ljava/lang/String;
    .end local v9    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .restart local v27    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .restart local v28    # "pname":Ljava/lang/String;
    .restart local v29    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 153
    .end local v6    # "btoken":J
    .end local v10    # "uidCount":I
    .end local v28    # "pname":Ljava/lang/String;
    .end local v29    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, p4

    goto/16 :goto_123

    .line 180
    .end local v4    # "processCount":I
    .end local v5    # "ip":I
    .end local v27    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    :cond_1e2
    move-wide/from16 v2, v25

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 181
    .end local v25    # "token":J
    .local v2, "token":J
    return-void
.end method
