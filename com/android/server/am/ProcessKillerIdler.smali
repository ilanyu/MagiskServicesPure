.class public Lcom/android/server/am/ProcessKillerIdler;
.super Landroid/app/job/JobService;
.source "ProcessKillerIdler.java"


# static fields
.field static final APP_MEM_THRESHOLD:J = 0x12cL

.field static final BACKUP_APP_MEM_THRESHOLD:J = 0x64L

.field static final BACKUP_MEM_THRESHOLD:J = 0x3e8L

.field static final CHECK_FREE_MEM_TIME:J = 0x1499700L

.field private static PROCESS_KILL_JOB_ID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ProcessKillerIdler"

.field static final blackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static cm:Landroid/content/ComponentName;


# instance fields
.field private mAm:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 19
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "android"

    const-class v2, Lcom/android/server/am/ProcessKillerIdler;

    .line 20
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/ProcessKillerIdler;->cm:Landroid/content/ComponentName;

    .line 22
    const/16 v0, 0x64

    sput v0, Lcom/android/server/am/ProcessKillerIdler;->PROCESS_KILL_JOB_ID:I

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/ProcessKillerIdler;->blackList:Ljava/util/ArrayList;

    .line 37
    sget-object v0, Lcom/android/server/am/ProcessKillerIdler;->blackList:Ljava/util/ArrayList;

    const-string v1, "com.tencent.mm"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v0, Lcom/android/server/am/ProcessKillerIdler;->blackList:Ljava/util/ArrayList;

    const-string v1, "com.tencent.mobileqq"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 41
    nop

    .line 42
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerService;

    iput-object v0, p0, Lcom/android/server/am/ProcessKillerIdler;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 41
    return-void
.end method

.method public static schedule(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 99
    const-string/jumbo v0, "jobscheduler"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 101
    .local v0, "jobScheduler":Landroid/app/job/JobScheduler;
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    sget v2, Lcom/android/server/am/ProcessKillerIdler;->PROCESS_KILL_JOB_ID:I

    sget-object v3, Lcom/android/server/am/ProcessKillerIdler;->cm:Landroid/content/ComponentName;

    invoke-direct {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 102
    .local v1, "builder":Landroid/app/job/JobInfo$Builder;
    const-wide/32 v2, 0x1499700

    invoke-virtual {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 103
    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 104
    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 21
    .param p1, "params"    # Landroid/app/job/JobParameters;

    move-object/from16 v1, p0

    .line 46
    const-string v0, "ProcessKillerIdler"

    const-string v2, "ProcessKillerIdler onStartJob"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v2, v1, Lcom/android/server/am/ProcessKillerIdler;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 48
    iget-object v0, v1, Lcom/android/server/am/ProcessKillerIdler;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/16 v3, 0x12c

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lcom/android/server/am/ProcessUtils;->getProcessListByAdj(Lcom/android/server/am/ActivityManagerService;ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 50
    .local v0, "procs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ProcessRecord;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 51
    .local v3, "N":I
    const-wide/16 v4, 0x0

    .line 52
    .local v4, "totalBackupProcsMem":J
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v6, "backupProcs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    move-wide v8, v4

    const/4 v4, 0x0

    .line 54
    .local v4, "i":I
    .local v8, "totalBackupProcsMem":J
    :goto_25
    const/4 v5, 0x1

    const-wide/16 v10, 0x400

    if-ge v4, v3, :cond_90

    .line 55
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ProcessRecord;

    .line 56
    .local v12, "app":Lcom/android/server/am/ProcessRecord;
    sget-object v13, Lcom/android/server/am/ProcessKillerIdler;->blackList:Ljava/util/ArrayList;

    iget-object v14, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7a

    iget-wide v13, v12, Lcom/android/server/am/ProcessRecord;->lastPss:J

    div-long/2addr v13, v10

    const-wide/16 v15, 0x12c

    cmp-long v13, v13, v15

    if-lez v13, :cond_7a

    .line 59
    const-string v13, "ProcessKillerIdler"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "killing process "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " pid "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v12, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " size "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v17, v8

    iget-wide v7, v12, Lcom/android/server/am/ProcessRecord;->lastPss:J

    .end local v8    # "totalBackupProcsMem":J
    .local v17, "totalBackupProcsMem":J
    div-long/2addr v7, v10

    invoke-virtual {v14, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v13, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const-string/jumbo v7, "low mem kill"

    invoke-virtual {v12, v7, v5}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    .line 63
    goto :goto_8b

    .line 66
    .end local v17    # "totalBackupProcsMem":J
    .restart local v8    # "totalBackupProcsMem":J
    :cond_7a
    move-wide/from16 v17, v8

    .line 66
    .end local v8    # "totalBackupProcsMem":J
    .restart local v17    # "totalBackupProcsMem":J
    iget v5, v12, Lcom/android/server/am/ProcessRecord;->setAdj:I

    const/16 v7, 0x190

    if-ne v5, v7, :cond_8b

    .line 67
    iget-wide v7, v12, Lcom/android/server/am/ProcessRecord;->lastPss:J

    add-long v7, v17, v7

    .line 68
    .end local v17    # "totalBackupProcsMem":J
    .local v7, "totalBackupProcsMem":J
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .end local v12    # "app":Lcom/android/server/am/ProcessRecord;
    move-wide v8, v7

    goto :goto_8d

    .line 54
    .end local v7    # "totalBackupProcsMem":J
    .restart local v17    # "totalBackupProcsMem":J
    :cond_8b
    :goto_8b
    move-wide/from16 v8, v17

    .line 54
    .end local v17    # "totalBackupProcsMem":J
    .restart local v8    # "totalBackupProcsMem":J
    :goto_8d
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 73
    .end local v4    # "i":I
    :cond_90
    move-wide/from16 v17, v8

    .line 73
    .end local v8    # "totalBackupProcsMem":J
    .restart local v17    # "totalBackupProcsMem":J
    div-long v8, v17, v10

    const-wide/16 v12, 0x3e8

    cmp-long v4, v8, v12

    if-ltz v4, :cond_ec

    .line 74
    const/4 v4, 0x0

    .line 74
    .restart local v4    # "i":I
    :goto_9b
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_ec

    .line 75
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    .line 76
    .local v7, "app":Lcom/android/server/am/ProcessRecord;
    iget-wide v8, v7, Lcom/android/server/am/ProcessRecord;->lastPss:J

    div-long/2addr v8, v10

    const-wide/16 v12, 0x64

    cmp-long v8, v8, v12

    if-lez v8, :cond_e9

    .line 78
    const-string v8, "ProcessKillerIdler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "killing process "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " pid "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v7, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " size "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v7, Lcom/android/server/am/ProcessRecord;->lastPss:J

    div-long/2addr v12, v10

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, " reason: backup procs\' totalMem is too big, need to kill big mem proc"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const-string/jumbo v8, "low mem kill"

    invoke-virtual {v7, v8, v5}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    .line 74
    .end local v7    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_e9
    add-int/lit8 v4, v4, 0x1

    goto :goto_9b

    .line 85
    .end local v0    # "procs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ProcessRecord;>;"
    .end local v3    # "N":I
    .end local v4    # "i":I
    .end local v6    # "backupProcs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .end local v17    # "totalBackupProcsMem":J
    :cond_ec
    monitor-exit v2
    :try_end_ed
    .catchall {:try_start_c .. :try_end_ed} :catchall_fa

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 87
    move-object/from16 v3, p1

    const/4 v0, 0x0

    invoke-virtual {v1, v3, v0}, Lcom/android/server/am/ProcessKillerIdler;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 88
    invoke-static/range {p0 .. p0}, Lcom/android/server/am/ProcessKillerIdler;->schedule(Landroid/content/Context;)V

    .line 89
    return v0

    .line 85
    :catchall_fa
    move-exception v0

    move-object/from16 v3, p1

    :goto_fd
    :try_start_fd
    monitor-exit v2
    :try_end_fe
    .catchall {:try_start_fd .. :try_end_fe} :catchall_102

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_102
    move-exception v0

    goto :goto_fd
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 4
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 94
    const-string v0, "ProcessKillerIdler"

    const-string v1, "ProcessKillerIdler onStopJob"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/4 v0, 0x0

    return v0
.end method
