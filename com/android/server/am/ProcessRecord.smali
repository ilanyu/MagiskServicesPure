.class final Lcom/android/server/am/ProcessRecord;
.super Ljava/lang/Object;
.source "ProcessRecord.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field final activities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field adjSeq:I

.field adjSource:Ljava/lang/Object;

.field adjSourceProcState:I

.field adjTarget:Ljava/lang/Object;

.field adjType:Ljava/lang/String;

.field adjTypeCode:I

.field anrDialog:Landroid/app/Dialog;

.field bad:Z

.field baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

.field binderCpuTimeLastCheck:J

.field boostBeginTime:J

.field cached:Z

.field callerPackage:Ljava/lang/String;

.field compat:Landroid/content/res/CompatibilityInfo;

.field completedAdjSeq:I

.field final conProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ContentProviderConnection;",
            ">;"
        }
    .end annotation
.end field

.field final connections:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/ConnectionRecord;",
            ">;"
        }
    .end annotation
.end field

.field containsCycle:Z

.field crashDialog:Landroid/app/Dialog;

.field crashHandler:Ljava/lang/Runnable;

.field crashing:Z

.field crashingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

.field curAdj:I

.field curCpuTime:J

.field curProcBatteryStats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

.field curProcState:I

.field curRawAdj:I

.field final curReceivers:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;"
        }
    .end annotation
.end field

.field curSchedGroup:I

.field deathRecipient:Landroid/os/IBinder$DeathRecipient;

.field debugging:Z

.field empty:Z

.field enableBoost:Z

.field errorReportReceiver:Landroid/content/ComponentName;

.field execServicesFg:Z

.field final executingServices:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field fgInteractionTime:J

.field forceCrashReport:Z

.field forcingToImportant:Ljava/lang/Object;

.field foregroundActivities:Z

.field foregroundServices:Z

.field gids:[I

.field hasAboveClient:Z

.field hasClientActivities:Z

.field hasOverlayUi:Z

.field hasShownUi:Z

.field hasStartedServices:Z

.field hasTopUi:Z

.field hostingNameStr:Ljava/lang/String;

.field hostingType:Ljava/lang/String;

.field public inFullBackup:Z

.field final info:Landroid/content/pm/ApplicationInfo;

.field initialIdlePss:J

.field instr:Lcom/android/server/am/ActiveInstrumentation;

.field instructionSet:Ljava/lang/String;

.field interactionEventTime:J

.field final isolated:Z

.field isolatedEntryPoint:Ljava/lang/String;

.field isolatedEntryPointArgs:[Ljava/lang/String;

.field killed:Z

.field killedByAm:Z

.field lastActivityTime:J

.field lastCachedPss:J

.field lastCachedSwapPss:J

.field lastCheckedCpuTime:J

.field lastCpuTime:J

.field lastLowMemory:J

.field lastProviderTime:J

.field lastPss:J

.field lastPssTime:J

.field lastRequestedGc:J

.field lastStateTime:J

.field lastSwapPss:J

.field lruSeq:I

.field private final mBatteryStats:Lcom/android/internal/os/BatteryStatsImpl;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field maxAdj:I

.field maxProcState:I

.field nextPssTime:J

.field notCachedSinceIdle:Z

.field notResponding:Z

.field notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

.field pendingStart:Z

.field pendingUiClean:Z

.field persistent:Z

.field pid:I

.field pkgDeps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final pkgList:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;",
            ">;"
        }
    .end annotation
.end field

.field procCpuTimeLastCheck:J

.field procStatFile:Ljava/lang/String;

.field procStateChanged:Z

.field final procStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

.field final processName:Ljava/lang/String;

.field pssProcState:I

.field pssStatType:I

.field final pubProviders:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;"
        }
    .end annotation
.end field

.field final receivers:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/ReceiverList;",
            ">;"
        }
    .end annotation
.end field

.field final recentTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation
.end field

.field removed:Z

.field renderThreadTid:I

.field repForegroundActivities:Z

.field repProcState:I

.field reportLowMemory:Z

.field reportedInteraction:Z

.field requiredAbi:Ljava/lang/String;

.field runningRemoteAnimation:Z

.field savedPriority:I

.field seInfo:Ljava/lang/String;

.field serviceHighRam:Z

.field serviceb:Z

.field final services:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field setAdj:I

.field setProcState:I

.field setRawAdj:I

.field setSchedGroup:I

.field shortStringName:Ljava/lang/String;

.field startSeq:J

.field startTime:J

.field startUid:I

.field starting:Z

.field stringName:Ljava/lang/String;

.field systemNoUi:Z

.field thread:Landroid/app/IApplicationThread;

.field treatLikeActivity:Z

.field trimMemoryLevel:I

.field final uid:I

.field uidRecord:Lcom/android/server/am/UidRecord;

.field unlocked:Z

.field final userId:I

.field usingWrapper:Z

.field verifiedAdj:I

.field vrThreadTid:I

.field waitDialog:Landroid/app/Dialog;

.field waitedForDebugger:Z

.field waitingToKill:Ljava/lang/String;

.field waitingToUse:Z

.field whenUnimportant:J

.field whitelistManager:Z


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/internal/os/BatteryStatsImpl;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)V
    .registers 13
    .param p1, "_service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "_batteryStats"    # Lcom/android/internal/os/BatteryStatsImpl;
    .param p3, "_info"    # Landroid/content/pm/ApplicationInfo;
    .param p4, "_processName"    # Ljava/lang/String;
    .param p5, "_uid"    # I

    .line 526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    .line 70
    new-instance v0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    invoke-direct {v0}, Lcom/android/server/am/ProcessList$ProcStateMemTracker;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->procStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    .line 106
    const/16 v0, 0x13

    iput v0, p0, Lcom/android/server/am/ProcessRecord;->curProcState:I

    .line 107
    iput v0, p0, Lcom/android/server/am/ProcessRecord;->repProcState:I

    .line 108
    iput v0, p0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    .line 109
    iput v0, p0, Lcom/android/server/am/ProcessRecord;->pssProcState:I

    .line 162
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ProcessRecord;->curReceivers:Landroid/util/ArraySet;

    .line 186
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    .line 188
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ProcessRecord;->recentTasks:Ljava/util/ArrayList;

    .line 190
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    .line 192
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    .line 194
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    .line 196
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ProcessRecord;->receivers:Landroid/util/ArraySet;

    .line 198
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    .line 200
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    .line 527
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 528
    iput-object p2, p0, Lcom/android/server/am/ProcessRecord;->mBatteryStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 529
    iput-object p3, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 530
    iget v1, p3, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v2, 0x0

    if-eq v1, p5, :cond_67

    const/4 v1, 0x1

    goto :goto_68

    :cond_67
    move v1, v2

    :goto_68
    iput-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->isolated:Z

    .line 531
    iput p5, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 532
    invoke-static {p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 533
    iput-object p4, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 534
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    iget-object v3, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v4, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    iget-wide v5, p3, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    invoke-direct {v4, v5, v6}, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;-><init>(J)V

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    const/16 v1, 0x3e9

    iput v1, p0, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    .line 537
    iput v0, p0, Lcom/android/server/am/ProcessRecord;->maxProcState:I

    .line 538
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/am/ProcessRecord;->setRawAdj:I

    iput v0, p0, Lcom/android/server/am/ProcessRecord;->curRawAdj:I

    .line 539
    iput v0, p0, Lcom/android/server/am/ProcessRecord;->verifiedAdj:I

    iput v0, p0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    iput v0, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    .line 540
    iput-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    .line 541
    iput-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->removed:Z

    .line 542
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ProcessRecord;->nextPssTime:J

    iput-wide v0, p0, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    iput-wide v0, p0, Lcom/android/server/am/ProcessRecord;->lastStateTime:J

    .line 543
    return-void
.end method


# virtual methods
.method public addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z
    .registers 13
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "versionCode"    # J
    .param p4, "tracker"    # Lcom/android/server/am/ProcessStatsService;

    .line 848
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 849
    new-instance v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    invoke-direct {v0, p2, p3}, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;-><init>(J)V

    .line 851
    .local v0, "holder":Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    if-eqz v1, :cond_2f

    .line 852
    iget v4, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object v2, p4

    move-object v3, p1

    move-wide v5, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ProcessStatsService;->getProcessStateLocked(Ljava/lang/String;IJLjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    .line 854
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v1, v2, :cond_34

    .line 856
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v1}, Lcom/android/internal/app/procstats/ProcessState;->makeActive()V

    goto :goto_34

    .line 859
    :cond_2f
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 861
    :cond_34
    :goto_34
    const/4 v1, 0x1

    return v1

    .line 863
    .end local v0    # "holder":Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    :cond_36
    const/4 v0, 0x0

    return v0
.end method

.method public clearRecentTasks()V
    .registers 3

    .line 623
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->recentTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 624
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->recentTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->clearRootProcess()V

    .line 623
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 626
    .end local v0    # "i":I
    :cond_18
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->recentTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 627
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 13
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 268
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 270
    .local v0, "nowUptime":J
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "user #"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 271
    const-string v2, " uid="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 272
    iget v2, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v2, v3, :cond_30

    .line 273
    const-string v2, " ISOLATED uid="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 275
    :cond_30
    const-string v2, " gids={"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 276
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->gids:[I

    const/4 v3, 0x0

    if-eqz v2, :cond_51

    .line 277
    move v2, v3

    .line 277
    .local v2, "gi":I
    :goto_3b
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->gids:[I

    array-length v4, v4

    if-ge v2, v4, :cond_51

    .line 278
    if-eqz v2, :cond_47

    const-string v4, ", "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 279
    :cond_47
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->gids:[I

    aget v4, v4, v2

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 277
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    .line 283
    .end local v2    # "gi":I
    :cond_51
    const-string/jumbo v2, "}"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "requiredAbi="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->requiredAbi:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 285
    const-string v2, " instructionSet="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->instructionSet:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 286
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    if-eqz v2, :cond_84

    .line 287
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "class="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 289
    :cond_84
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v2, :cond_9a

    .line 290
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "manageSpaceActivityName="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 291
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 293
    :cond_9a
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "dir="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 294
    const-string v2, " publicDir="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 295
    const-string v2, " data="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "packageList={"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 297
    move v2, v3

    .line 297
    .local v2, "i":I
    :goto_cb
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v2, v4, :cond_e8

    .line 298
    if-lez v2, :cond_da

    const-string v4, ", "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 299
    :cond_da
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 297
    add-int/lit8 v2, v2, 0x1

    goto :goto_cb

    .line 301
    .end local v2    # "i":I
    :cond_e8
    const-string/jumbo v2, "}"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 302
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->pkgDeps:Landroid/util/ArraySet;

    if-eqz v2, :cond_11f

    .line 303
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "packageDependencies={"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 304
    move v2, v3

    .line 304
    .restart local v2    # "i":I
    :goto_fc
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->pkgDeps:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v2, v4, :cond_119

    .line 305
    if-lez v2, :cond_10b

    const-string v4, ", "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 306
    :cond_10b
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->pkgDeps:Landroid/util/ArraySet;

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 304
    add-int/lit8 v2, v2, 0x1

    goto :goto_fc

    .line 308
    .end local v2    # "i":I
    :cond_119
    const-string/jumbo v2, "}"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 310
    :cond_11f
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "compat="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->compat:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 311
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->instr:Lcom/android/server/am/ActiveInstrumentation;

    if-eqz v2, :cond_13d

    .line 312
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "instr="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->instr:Lcom/android/server/am/ActiveInstrumentation;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 314
    :cond_13d
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "thread="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 315
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "pid="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " starting="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 316
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->starting:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 317
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "lastActivityTime="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 318
    iget-wide v4, p0, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    invoke-static {v4, v5, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 319
    const-string v2, " lastPssTime="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 320
    iget-wide v4, p0, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    invoke-static {v4, v5, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 321
    const-string v2, " pssStatType="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->pssStatType:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 322
    const-string v2, " nextPssTime="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 323
    iget-wide v4, p0, Lcom/android/server/am/ProcessRecord;->nextPssTime:J

    invoke-static {v4, v5, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 324
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 325
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "adjSeq="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->adjSeq:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 326
    const-string v2, " lruSeq="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->lruSeq:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 327
    const-string v2, " lastPss="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/android/server/am/ProcessRecord;->lastPss:J

    const-wide/16 v6, 0x400

    mul-long/2addr v4, v6

    invoke-static {p1, v4, v5}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 328
    const-string v2, " lastSwapPss="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/android/server/am/ProcessRecord;->lastSwapPss:J

    mul-long/2addr v4, v6

    invoke-static {p1, v4, v5}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 329
    const-string v2, " lastCachedPss="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/android/server/am/ProcessRecord;->lastCachedPss:J

    mul-long/2addr v4, v6

    invoke-static {p1, v4, v5}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 330
    const-string v2, " lastCachedSwapPss="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/android/server/am/ProcessRecord;->lastCachedSwapPss:J

    mul-long/2addr v4, v6

    invoke-static {p1, v4, v5}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 331
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 332
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "procStateMemTracker: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 333
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->procStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->dumpLine(Ljava/io/PrintWriter;)V

    .line 334
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "cached="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->cached:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 335
    const-string v2, " empty="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->empty:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 336
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->serviceb:Z

    if-eqz v2, :cond_21b

    .line 337
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "serviceb="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->serviceb:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 338
    const-string v2, " serviceHighRam="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->serviceHighRam:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 340
    :cond_21b
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->notCachedSinceIdle:Z

    if-eqz v2, :cond_237

    .line 341
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "notCachedSinceIdle="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->notCachedSinceIdle:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 342
    const-string v2, " initialIdlePss="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/android/server/am/ProcessRecord;->initialIdlePss:J

    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->println(J)V

    .line 344
    :cond_237
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "oom: max="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 346
    const-string v2, " procState: max="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->maxProcState:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 347
    const-string v2, " curRaw="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->curRawAdj:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 348
    const-string v2, " setRaw="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->setRawAdj:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 349
    const-string v2, " cur="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 350
    const-string v2, " set="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 351
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "curSchedGroup="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->curSchedGroup:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 352
    const-string v2, " setSchedGroup="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 353
    const-string v2, " systemNoUi="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->systemNoUi:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 354
    const-string v2, " trimMemoryLevel="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->trimMemoryLevel:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 355
    iget v2, p0, Lcom/android/server/am/ProcessRecord;->vrThreadTid:I

    if-eqz v2, :cond_2b4

    .line 356
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "vrThreadTid="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->vrThreadTid:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 358
    :cond_2b4
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "curProcState="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->curProcState:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 359
    const-string v2, " repProcState="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->repProcState:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 360
    const-string v2, " pssProcState="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->pssProcState:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 361
    const-string v2, " setProcState="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 362
    const-string v2, " lastStateTime="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 363
    iget-wide v4, p0, Lcom/android/server/am/ProcessRecord;->lastStateTime:J

    invoke-static {v4, v5, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 364
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 365
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    if-nez v2, :cond_2fc

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z

    if-nez v2, :cond_2fc

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->hasAboveClient:Z

    if-nez v2, :cond_2fc

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    if-eqz v2, :cond_327

    .line 366
    :cond_2fc
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "hasShownUi="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 367
    const-string v2, " pendingUiClean="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 368
    const-string v2, " hasAboveClient="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->hasAboveClient:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 369
    const-string v2, " treatLikeActivity="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 371
    :cond_327
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->hasTopUi:Z

    if-nez v2, :cond_333

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->hasOverlayUi:Z

    if-nez v2, :cond_333

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->runningRemoteAnimation:Z

    if-eqz v2, :cond_354

    .line 372
    :cond_333
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "hasTopUi="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->hasTopUi:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 373
    const-string v2, " hasOverlayUi="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->hasOverlayUi:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 374
    const-string v2, " runningRemoteAnimation="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->runningRemoteAnimation:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 376
    :cond_354
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->foregroundServices:Z

    if-nez v2, :cond_35c

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->forcingToImportant:Ljava/lang/Object;

    if-eqz v2, :cond_373

    .line 377
    :cond_35c
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "foregroundServices="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->foregroundServices:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 378
    const-string v2, " forcingToImportant="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->forcingToImportant:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 380
    :cond_373
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->reportedInteraction:Z

    const-wide/16 v4, 0x0

    if-nez v2, :cond_37f

    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->fgInteractionTime:J

    cmp-long v2, v6, v4

    if-eqz v2, :cond_3b8

    .line 381
    :cond_37f
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "reportedInteraction="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 382
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->reportedInteraction:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 383
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->interactionEventTime:J

    cmp-long v2, v6, v4

    if-eqz v2, :cond_3a1

    .line 384
    const-string v2, " time="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 385
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->interactionEventTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 387
    :cond_3a1
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->fgInteractionTime:J

    cmp-long v2, v6, v4

    if-eqz v2, :cond_3b5

    .line 388
    const-string v2, " fgInteractionTime="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 389
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->fgInteractionTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 391
    :cond_3b5
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 393
    :cond_3b8
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-nez v2, :cond_3c0

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->removed:Z

    if-eqz v2, :cond_3d8

    .line 394
    :cond_3c0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "persistent="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 395
    const-string v2, " removed="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->removed:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 397
    :cond_3d8
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->hasClientActivities:Z

    if-nez v2, :cond_3e4

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->foregroundActivities:Z

    if-nez v2, :cond_3e4

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->repForegroundActivities:Z

    if-eqz v2, :cond_40a

    .line 398
    :cond_3e4
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "hasClientActivities="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->hasClientActivities:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 399
    const-string v2, " foregroundActivities="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->foregroundActivities:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 400
    const-string v2, " (rep="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->repForegroundActivities:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, ")"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 402
    :cond_40a
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastProviderTime:J

    cmp-long v2, v6, v4

    if-lez v2, :cond_421

    .line 403
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "lastProviderTime="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 404
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastProviderTime:J

    invoke-static {v6, v7, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 405
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 407
    :cond_421
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->hasStartedServices:Z

    if-eqz v2, :cond_432

    .line 408
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "hasStartedServices="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->hasStartedServices:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 410
    :cond_432
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->pendingStart:Z

    if-eqz v2, :cond_444

    .line 411
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "pendingStart="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->pendingStart:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 413
    :cond_444
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "startSeq="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->startSeq:J

    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->println(J)V

    .line 414
    iget v2, p0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/16 v6, 0x9

    if-le v2, v6, :cond_487

    .line 415
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "lastCpuTime="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastCpuTime:J

    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    .line 416
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastCpuTime:J

    cmp-long v2, v6, v4

    if-lez v2, :cond_479

    .line 417
    const-string v2, " timeUsed="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 418
    iget-wide v4, p0, Lcom/android/server/am/ProcessRecord;->curCpuTime:J

    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastCpuTime:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 420
    :cond_479
    const-string v2, " whenUnimportant="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 421
    iget-wide v4, p0, Lcom/android/server/am/ProcessRecord;->whenUnimportant:J

    sub-long/2addr v4, v0

    invoke-static {v4, v5, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 422
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 424
    :cond_487
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "lastRequestedGc="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 425
    iget-wide v4, p0, Lcom/android/server/am/ProcessRecord;->lastRequestedGc:J

    invoke-static {v4, v5, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 426
    const-string v2, " lastLowMemory="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 427
    iget-wide v4, p0, Lcom/android/server/am/ProcessRecord;->lastLowMemory:J

    invoke-static {v4, v5, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 428
    const-string v2, " reportLowMemory="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->reportLowMemory:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 429
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->killed:Z

    if-nez v2, :cond_4b5

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v2, :cond_4b5

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->waitingToKill:Ljava/lang/String;

    if-eqz v2, :cond_4d7

    .line 430
    :cond_4b5
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "killed="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->killed:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 431
    const-string v2, " killedByAm="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 432
    const-string v2, " waitingToKill="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->waitingToKill:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 434
    :cond_4d7
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->debugging:Z

    if-nez v2, :cond_4ef

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->crashing:Z

    if-nez v2, :cond_4ef

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    if-nez v2, :cond_4ef

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    if-nez v2, :cond_4ef

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    if-nez v2, :cond_4ef

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->bad:Z

    if-eqz v2, :cond_543

    .line 436
    :cond_4ef
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "debugging="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->debugging:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 437
    const-string v2, " crashing="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->crashing:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 438
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 439
    const-string v2, " notResponding="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 440
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 441
    const-string v2, " bad="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->bad:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 444
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    if-eqz v2, :cond_540

    .line 445
    const-string v2, " errorReportReceiver="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 446
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 448
    :cond_540
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 450
    :cond_543
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->whitelistManager:Z

    if-eqz v2, :cond_555

    .line 451
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "whitelistManager="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->whitelistManager:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 453
    :cond_555
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->isolatedEntryPoint:Ljava/lang/String;

    if-nez v2, :cond_55d

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->isolatedEntryPointArgs:[Ljava/lang/String;

    if-eqz v2, :cond_57d

    .line 454
    :cond_55d
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "isolatedEntryPoint="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->isolatedEntryPoint:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 455
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "isolatedEntryPointArgs="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 456
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->isolatedEntryPointArgs:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 460
    :cond_57d
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->callerPackage:Ljava/lang/String;

    if-eqz v2, :cond_58e

    .line 461
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "callerPackage="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 463
    :cond_58e
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->waitingToUse:Z

    if-eqz v2, :cond_5a0

    .line 464
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "waitingToUse="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->waitingToUse:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 467
    :cond_5a0
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5cd

    .line 468
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Activities:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 469
    move v2, v3

    .line 469
    .restart local v2    # "i":I
    :goto_5b1
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_5cd

    .line 470
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  - "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 469
    add-int/lit8 v2, v2, 0x1

    goto :goto_5b1

    .line 473
    .end local v2    # "i":I
    :cond_5cd
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->recentTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5fa

    .line 474
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Recent Tasks:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 475
    move v2, v3

    .line 475
    .restart local v2    # "i":I
    :goto_5de
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->recentTasks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_5fa

    .line 476
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  - "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->recentTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 475
    add-int/lit8 v2, v2, 0x1

    goto :goto_5de

    .line 479
    .end local v2    # "i":I
    :cond_5fa
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-lez v2, :cond_627

    .line 480
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Services:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 481
    move v2, v3

    .line 481
    .restart local v2    # "i":I
    :goto_60b
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v2, v4, :cond_627

    .line 482
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  - "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 481
    add-int/lit8 v2, v2, 0x1

    goto :goto_60b

    .line 485
    .end local v2    # "i":I
    :cond_627
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-lez v2, :cond_65e

    .line 486
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Executing Services (fg="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 487
    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, ")"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 488
    move v2, v3

    .line 488
    .restart local v2    # "i":I
    :goto_642
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v2, v4, :cond_65e

    .line 489
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  - "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->executingServices:Landroid/util/ArraySet;

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 488
    add-int/lit8 v2, v2, 0x1

    goto :goto_642

    .line 492
    .end local v2    # "i":I
    :cond_65e
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-lez v2, :cond_68b

    .line 493
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Connections:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 494
    move v2, v3

    .line 494
    .restart local v2    # "i":I
    :goto_66f
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v2, v4, :cond_68b

    .line 495
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  - "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 494
    add-int/lit8 v2, v2, 0x1

    goto :goto_66f

    .line 498
    .end local v2    # "i":I
    :cond_68b
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-lez v2, :cond_6cb

    .line 499
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Published Providers:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 500
    move v2, v3

    .line 500
    .restart local v2    # "i":I
    :goto_69c
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v2, v4, :cond_6cb

    .line 501
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  - "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 502
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "    -> "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 500
    add-int/lit8 v2, v2, 0x1

    goto :goto_69c

    .line 505
    .end local v2    # "i":I
    :cond_6cb
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6fe

    .line 506
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Connected Providers:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 507
    move v2, v3

    .line 507
    .restart local v2    # "i":I
    :goto_6dc
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_6fe

    .line 508
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  - "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ContentProviderConnection;

    invoke-virtual {v4}, Lcom/android/server/am/ContentProviderConnection;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 507
    add-int/lit8 v2, v2, 0x1

    goto :goto_6dc

    .line 511
    .end local v2    # "i":I
    :cond_6fe
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->curReceivers:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_72b

    .line 512
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Current Receivers:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 513
    move v2, v3

    .line 513
    .restart local v2    # "i":I
    :goto_70f
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->curReceivers:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v2, v4, :cond_72b

    .line 514
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  - "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->curReceivers:Landroid/util/ArraySet;

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 513
    add-int/lit8 v2, v2, 0x1

    goto :goto_70f

    .line 517
    .end local v2    # "i":I
    :cond_72b
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->receivers:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-lez v2, :cond_759

    .line 518
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Receivers:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 519
    nop

    .line 519
    .local v3, "i":I
    :goto_73c
    move v2, v3

    .line 519
    .end local v3    # "i":I
    .restart local v2    # "i":I
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->receivers:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_759

    .line 520
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  - "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->receivers:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 519
    add-int/lit8 v3, v2, 0x1

    .line 519
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_73c

    .line 523
    .end local v3    # "i":I
    :cond_759
    return-void
.end method

.method public forceProcessStateUpTo(I)V
    .registers 3
    .param p1, "newState"    # I

    .line 876
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->repProcState:I

    if-le v0, p1, :cond_8

    .line 877
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->repProcState:I

    iput p1, p0, Lcom/android/server/am/ProcessRecord;->curProcState:I

    .line 879
    :cond_8
    return-void
.end method

.method public getPackageList()[Ljava/lang/String;
    .registers 5

    .line 916
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 917
    .local v0, "size":I
    if-nez v0, :cond_a

    .line 918
    const/4 v1, 0x0

    return-object v1

    .line 920
    :cond_a
    new-array v1, v0, [Ljava/lang/String;

    .line 921
    .local v1, "list":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_22

    .line 922
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    .line 921
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 924
    .end local v2    # "i":I
    :cond_22
    return-object v1
.end method

.method public getRenderThreadTid()I
    .registers 2

    .line 264
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I

    return v0
.end method

.method public getSetAdjWithServices()I
    .registers 3

    .line 867
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    const/16 v1, 0x384

    if-lt v0, v1, :cond_d

    .line 868
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->hasStartedServices:Z

    if-eqz v0, :cond_d

    .line 869
    const/16 v0, 0x320

    return v0

    .line 872
    :cond_d
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    return v0
.end method

.method public isInterestingToUserLocked()Z
    .registers 8

    .line 634
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 635
    .local v0, "size":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_8
    const/4 v3, 0x1

    if-ge v2, v0, :cond_1d

    .line 636
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 637
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->isInterestingToUserLocked()Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 638
    return v3

    .line 635
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 642
    .end local v2    # "i":I
    :cond_1d
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    .line 643
    .local v2, "servicesSize":I
    move v4, v1

    .local v4, "i":I
    :goto_24
    if-ge v4, v2, :cond_38

    .line 644
    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ServiceRecord;

    .line 647
    .local v5, "r":Lcom/android/server/am/ServiceRecord;
    if-eqz v5, :cond_35

    iget-boolean v6, v5, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v6, :cond_35

    .line 648
    return v3

    .line 643
    .end local v5    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_35
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    .line 651
    .end local v4    # "i":I
    :cond_38
    return v1
.end method

.method kill(Ljava/lang/String;Z)V
    .registers 13
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "noisy"    # Z

    .line 726
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v0, :cond_a5

    .line 727
    const-string/jumbo v0, "kill"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 728
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    .line 729
    .local v0, "ux_perf":Landroid/util/BoostFramework;
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    if-eqz v3, :cond_53

    if-nez p2, :cond_21

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v4, v4, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    if-ne v3, v4, :cond_53

    .line 730
    :cond_21
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Killing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " (adj "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 730
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->reportUidInfoMessageLocked(Ljava/lang/String;Ljava/lang/String;I)V

    .line 734
    :cond_53
    iget v3, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lez v3, :cond_92

    .line 736
    invoke-static {p0, p1}, Lcom/android/server/am/ProcessRecordInjector;->reportKillProcessEvent(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 737
    const/16 v3, 0x7547

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    iget v8, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v6

    iget v8, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    const/4 v8, 0x2

    iget-object v9, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget v9, p0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    aput-object p1, v7, v4

    invoke-static {v3, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 738
    iget v3, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v3}, Landroid/os/Process;->killProcessQuiet(I)V

    .line 739
    iget v3, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v7, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v3, v7}, Lcom/android/server/am/ActivityManagerService;->killProcessGroup(II)V

    goto :goto_94

    .line 741
    :cond_92
    iput-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->pendingStart:Z

    .line 743
    :goto_94
    iget-boolean v3, p0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-nez v3, :cond_9c

    .line 744
    iput-boolean v5, p0, Lcom/android/server/am/ProcessRecord;->killed:Z

    .line 745
    iput-boolean v5, p0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    .line 747
    :cond_9c
    nop

    .line 748
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v4, v6, v3, v6}, Landroid/util/BoostFramework;->perfUXEngine_events(IILjava/lang/String;I)I

    .line 750
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 752
    .end local v0    # "ux_perf":Landroid/util/BoostFramework;
    :cond_a5
    return-void
.end method

.method public makeActive(Landroid/app/IApplicationThread;Lcom/android/server/am/ProcessStatsService;)V
    .registers 14
    .param p1, "_thread"    # Landroid/app/IApplicationThread;
    .param p2, "tracker"    # Lcom/android/server/am/ProcessStatsService;

    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "app_uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",app_pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",oom_adj="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",setAdj="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",hasShownUi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",cached="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->cached:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",fA="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->foregroundActivities:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",fS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->foregroundServices:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",systemNoUi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->systemNoUi:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",curSchedGroup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->curSchedGroup:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",curProcState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->curProcState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",setProcState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",killed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->killed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",killedByAm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",debugging="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->debugging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 564
    .local v0, "seempStr":Ljava/lang/String;
    const/16 v1, 0x182

    invoke-static {v1, v0}, Landroid/util/SeempLog;->record_str(ILjava/lang/String;)I

    .line 565
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v1, :cond_11a

    .line 566
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    .line 567
    .local v1, "origBase":Lcom/android/internal/app/procstats/ProcessState;
    if-eqz v1, :cond_be

    .line 568
    const/4 v3, -0x1

    .line 569
    invoke-virtual {p2}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    .line 568
    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/app/procstats/ProcessState;->setState(IIJLandroid/util/ArrayMap;)V

    .line 570
    invoke-virtual {v1}, Lcom/android/internal/app/procstats/ProcessState;->makeInactive()V

    .line 572
    :cond_be
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-wide v6, v2, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v8, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object v3, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ProcessStatsService;->getProcessStateLocked(Ljava/lang/String;IJLjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    .line 574
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v2}, Lcom/android/internal/app/procstats/ProcessState;->makeActive()V

    .line 575
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d7
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_11a

    .line 576
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    .line 577
    .local v3, "holder":Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    iget-object v4, v3, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    if-eqz v4, :cond_f4

    iget-object v4, v3, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v4, v1, :cond_f4

    .line 578
    iget-object v4, v3, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->makeInactive()V

    .line 580
    :cond_f4
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    iget v7, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-wide v8, v4, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v10, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object v5, p2

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/am/ProcessStatsService;->getProcessStateLocked(Ljava/lang/String;IJLjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    .line 582
    iget-object v4, v3, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v4, v5, :cond_117

    .line 583
    iget-object v4, v3, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->makeActive()V

    .line 575
    .end local v3    # "holder":Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    :cond_117
    add-int/lit8 v2, v2, 0x1

    goto :goto_d7

    .line 587
    .end local v1    # "origBase":Lcom/android/internal/app/procstats/ProcessState;
    .end local v2    # "i":I
    :cond_11a
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    .line 588
    return-void
.end method

.method public makeAdjReason()Ljava/lang/String;
    .registers 3

    .line 819
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    if-eqz v0, :cond_9

    goto :goto_b

    .line 841
    :cond_9
    const/4 v0, 0x0

    return-object v0

    .line 820
    :cond_b
    :goto_b
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 821
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 822
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    instance-of v1, v1, Landroid/content/ComponentName;

    if-eqz v1, :cond_29

    .line 823
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    check-cast v1, Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3d

    .line 824
    :cond_29
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    if-eqz v1, :cond_37

    .line 825
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3d

    .line 827
    :cond_37
    const-string/jumbo v1, "{null}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 829
    :goto_3d
    const-string v1, "<="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_5f

    .line 831
    const-string v1, "Proc{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_73

    .line 834
    :cond_5f
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    if-eqz v1, :cond_6d

    .line 835
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_73

    .line 837
    :cond_6d
    const-string/jumbo v1, "{null}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    :goto_73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public makeInactive(Lcom/android/server/am/ProcessStatsService;)V
    .registers 11
    .param p1, "tracker"    # Lcom/android/server/am/ProcessStatsService;

    .line 591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "app_uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",app_pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",oom_adj="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",setAdj="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",hasShownUi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",cached="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->cached:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",fA="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->foregroundActivities:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",fS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->foregroundServices:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",systemNoUi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->systemNoUi:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",curSchedGroup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->curSchedGroup:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",curProcState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->curProcState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",setProcState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",killed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->killed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",killedByAm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",debugging="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->debugging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 602
    .local v0, "seempStr":Ljava/lang/String;
    const/16 v1, 0x183

    invoke-static {v1, v0}, Landroid/util/SeempLog;->record_str(ILjava/lang/String;)I

    .line 603
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    .line 604
    iget-object v8, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    .line 605
    .local v8, "origBase":Lcom/android/internal/app/procstats/ProcessState;
    if-eqz v8, :cond_e4

    .line 606
    if-eqz v8, :cond_bf

    .line 607
    const/4 v3, -0x1

    .line 608
    invoke-virtual {p1}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    .line 607
    move-object v2, v8

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/app/procstats/ProcessState;->setState(IIJLandroid/util/ArrayMap;)V

    .line 609
    invoke-virtual {v8}, Lcom/android/internal/app/procstats/ProcessState;->makeInactive()V

    .line 611
    :cond_bf
    iput-object v1, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    .line 612
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c2
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_e4

    .line 613
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    .line 614
    .local v3, "holder":Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    iget-object v4, v3, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    if-eqz v4, :cond_df

    iget-object v4, v3, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v4, v8, :cond_df

    .line 615
    iget-object v4, v3, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->makeInactive()V

    .line 617
    :cond_df
    iput-object v1, v3, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    .line 612
    .end local v3    # "holder":Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    add-int/lit8 v2, v2, 0x1

    goto :goto_c2

    .line 620
    .end local v2    # "i":I
    :cond_e4
    return-void
.end method

.method modifyRawOomAdj(I)I
    .registers 3
    .param p1, "adj"    # I

    .line 681
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->hasAboveClient:Z

    if-eqz v0, :cond_22

    .line 687
    if-gez p1, :cond_7

    goto :goto_22

    .line 689
    :cond_7
    const/16 v0, 0x64

    if-ge p1, v0, :cond_e

    .line 690
    const/16 p1, 0x64

    goto :goto_22

    .line 691
    :cond_e
    const/16 v0, 0xc8

    if-ge p1, v0, :cond_15

    .line 692
    const/16 p1, 0xc8

    goto :goto_22

    .line 693
    :cond_15
    const/16 v0, 0x384

    if-ge p1, v0, :cond_1c

    .line 694
    const/16 p1, 0x384

    goto :goto_22

    .line 695
    :cond_1c
    const/16 v0, 0x38a

    if-ge p1, v0, :cond_22

    .line 696
    add-int/lit8 p1, p1, 0x1

    .line 699
    :cond_22
    :goto_22
    return p1
.end method

.method public resetPackageList(Lcom/android/server/am/ProcessStatsService;)V
    .registers 13
    .param p1, "tracker"    # Lcom/android/server/am/ProcessStatsService;

    .line 885
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 886
    .local v0, "N":I
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    const/4 v2, 0x1

    if-eqz v1, :cond_6d

    .line 887
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 888
    .local v9, "now":J
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    const/4 v4, -0x1

    .line 889
    invoke-virtual {p1}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v5

    iget-object v8, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    .line 888
    move-wide v6, v9

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/app/procstats/ProcessState;->setState(IIJLandroid/util/ArrayMap;)V

    .line 890
    if-eq v0, v2, :cond_6c

    .line 891
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1f
    if-ge v1, v0, :cond_3b

    .line 892
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    .line 893
    .local v2, "holder":Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    iget-object v3, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    if-eqz v3, :cond_38

    iget-object v3, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v3, v4, :cond_38

    .line 894
    iget-object v3, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v3}, Lcom/android/internal/app/procstats/ProcessState;->makeInactive()V

    .line 891
    .end local v2    # "holder":Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 898
    .end local v1    # "i":I
    :cond_3b
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 899
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-wide v5, v1, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ProcessStatsService;->getProcessStateLocked(Ljava/lang/String;IJLjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v1

    .line 901
    .local v1, "ps":Lcom/android/internal/app/procstats/ProcessState;
    new-instance v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-wide v3, v3, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    invoke-direct {v2, v3, v4}, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;-><init>(J)V

    .line 903
    .restart local v2    # "holder":Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    iput-object v1, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    .line 904
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v1, v3, :cond_6c

    .line 906
    invoke-virtual {v1}, Lcom/android/internal/app/procstats/ProcessState;->makeActive()V

    .line 909
    .end local v1    # "ps":Lcom/android/internal/app/procstats/ProcessState;
    .end local v2    # "holder":Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    .end local v9    # "now":J
    :cond_6c
    goto :goto_86

    :cond_6d
    if-eq v0, v2, :cond_86

    .line 910
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 911
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v3, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-wide v4, v4, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    invoke-direct {v3, v4, v5}, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;-><init>(J)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 913
    :cond_86
    :goto_86
    return-void
.end method

.method scheduleCrash(Ljava/lang/String;)V
    .registers 7
    .param p1, "message"    # Ljava/lang/String;

    .line 705
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v0, :cond_49

    .line 706
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_49

    .line 707
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_19

    .line 708
    const-string v0, "ActivityManager"

    const-string/jumbo v1, "scheduleCrash: trying to crash system process!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    return-void

    .line 711
    :cond_19
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 713
    .local v0, "ident":J
    :try_start_1d
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v2, p1}, Landroid/app/IApplicationThread;->scheduleCrash(Ljava/lang/String;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_22} :catch_28
    .catchall {:try_start_1d .. :try_end_22} :catchall_26

    .line 719
    :goto_22
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 720
    goto :goto_49

    .line 719
    :catchall_26
    move-exception v2

    goto :goto_45

    .line 714
    :catch_28
    move-exception v2

    .line 717
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_29
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "scheduleCrash for \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V
    :try_end_44
    .catchall {:try_start_29 .. :try_end_44} :catchall_26

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_22

    .line 719
    :goto_45
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 723
    .end local v0    # "ident":J
    :cond_49
    :goto_49
    return-void
.end method

.method public setPid(I)V
    .registers 3
    .param p1, "_pid"    # I

    .line 546
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 547
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->procStatFile:Ljava/lang/String;

    .line 548
    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->shortStringName:Ljava/lang/String;

    .line 549
    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->stringName:Ljava/lang/String;

    .line 550
    return-void
.end method

.method setStartParams(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 7
    .param p1, "startUid"    # I
    .param p2, "hostingType"    # Ljava/lang/String;
    .param p3, "hostingNameStr"    # Ljava/lang/String;
    .param p4, "seInfo"    # Ljava/lang/String;
    .param p5, "startTime"    # J

    .line 253
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->startUid:I

    .line 254
    iput-object p2, p0, Lcom/android/server/am/ProcessRecord;->hostingType:Ljava/lang/String;

    .line 255
    iput-object p3, p0, Lcom/android/server/am/ProcessRecord;->hostingNameStr:Ljava/lang/String;

    .line 256
    iput-object p4, p0, Lcom/android/server/am/ProcessRecord;->seInfo:Ljava/lang/String;

    .line 257
    iput-wide p5, p0, Lcom/android/server/am/ProcessRecord;->startTime:J

    .line 258
    return-void
.end method

.method public stopFreezingAllLocked()V
    .registers 4

    .line 655
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 656
    .local v0, "i":I
    :goto_6
    if-lez v0, :cond_17

    .line 657
    add-int/lit8 v0, v0, -0x1

    .line 658
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    goto :goto_6

    .line 660
    :cond_17
    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .registers 3

    .line 772
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->shortStringName:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 773
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->shortStringName:Ljava/lang/String;

    return-object v0

    .line 775
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 776
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessRecord;->toShortString(Ljava/lang/StringBuilder;)V

    .line 777
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ProcessRecord;->shortStringName:Ljava/lang/String;

    return-object v1
.end method

.method toShortString(Ljava/lang/StringBuilder;)V
    .registers 5
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 781
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 782
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 783
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 784
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 785
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_22

    .line 786
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_63

    .line 788
    :cond_22
    const/16 v0, 0x75

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 789
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 790
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 791
    .local v0, "appId":I
    if-lt v0, v1, :cond_41

    .line 792
    const/16 v1, 0x61

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 793
    add-int/lit16 v1, v0, -0x2710

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_49

    .line 795
    :cond_41
    const/16 v1, 0x73

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 796
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 798
    :goto_49
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v1, v2, :cond_63

    .line 799
    const/16 v1, 0x69

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 800
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const v2, 0x182b8

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 803
    .end local v0    # "appId":I
    :cond_63
    :goto_63
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 806
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->stringName:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 807
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->stringName:Ljava/lang/String;

    return-object v0

    .line 809
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 810
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "ProcessRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 811
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 812
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 813
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessRecord;->toShortString(Ljava/lang/StringBuilder;)V

    .line 814
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 815
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ProcessRecord;->stringName:Ljava/lang/String;

    return-object v1
.end method

.method public unlinkDeathRecipient()V
    .registers 4

    .line 663
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_14

    .line 664
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v0}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 666
    :cond_14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 667
    return-void
.end method

.method updateHasAboveClientLocked()V
    .registers 5

    .line 670
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->hasAboveClient:Z

    .line 671
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_b
    if-ltz v0, :cond_21

    .line 672
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ConnectionRecord;

    .line 673
    .local v2, "cr":Lcom/android/server/am/ConnectionRecord;
    iget v3, v2, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_1e

    .line 674
    iput-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->hasAboveClient:Z

    .line 675
    goto :goto_21

    .line 671
    .end local v2    # "cr":Lcom/android/server/am/ConnectionRecord;
    :cond_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 678
    .end local v0    # "i":I
    :cond_21
    :goto_21
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 755
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 756
    .local v0, "token":J
    iget v2, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 757
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-wide v3, 0x10900000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 758
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v3, 0x2710

    if-ge v2, v3, :cond_2b

    .line 759
    const-wide v2, 0x10500000003L

    iget v4, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_5b

    .line 761
    :cond_2b
    const-wide v2, 0x10500000004L

    iget v4, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 762
    const-wide v2, 0x10500000005L

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 763
    iget v2, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v2, v3, :cond_5b

    .line 764
    const-wide v2, 0x10500000006L

    iget v4, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 767
    :cond_5b
    :goto_5b
    const-wide v2, 0x10800000007L

    iget-boolean v4, p0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 768
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 769
    return-void
.end method
