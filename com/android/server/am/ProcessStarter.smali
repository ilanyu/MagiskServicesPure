.class public Lcom/android/server/am/ProcessStarter;
.super Ljava/lang/Object;
.source "ProcessStarter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;
    }
.end annotation


# static fields
.field static final APP_PROTECTION_TIMEOUT:I = 0x1b7740

.field static final MAX_PROTECT_APP:I = 0x5

.field private static final START_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ProcessStarter"


# instance fields
.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mLastProcessesInfo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mProcessManagerService:Lcom/android/server/am/ProcessManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ProcessManagerService;Lcom/android/server/am/ActivityManagerService;)V
    .registers 4
    .param p1, "pms"    # Lcom/android/server/am/ProcessManagerService;
    .param p2, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessStarter;->mLastProcessesInfo:Landroid/util/SparseArray;

    .line 49
    iput-object p1, p0, Lcom/android/server/am/ProcessStarter;->mProcessManagerService:Lcom/android/server/am/ProcessManagerService;

    .line 50
    iput-object p2, p0, Lcom/android/server/am/ProcessStarter;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 51
    return-void
.end method

.method public static makeHostingTypeFromFlag(I)Ljava/lang/String;
    .registers 2
    .param p0, "flag"    # I

    .line 195
    packed-switch p0, :pswitch_data_10

    .line 203
    const-string/jumbo v0, "unknown"

    goto :goto_d

    .line 200
    :pswitch_7
    const-string v0, "FastRestart"

    .line 201
    .local v0, "type":Ljava/lang/String;
    goto :goto_d

    .line 197
    .end local v0    # "type":Ljava/lang/String;
    :pswitch_a
    const-string v0, "AI"

    .line 198
    .restart local v0    # "type":Ljava/lang/String;
    nop

    .line 203
    :goto_d
    nop

    .line 206
    return-object v0

    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_a
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method addProtectionLocked(Lcom/android/server/am/ProcessRecord;I)V
    .registers 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "flag"    # I

    .line 155
    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    goto :goto_d

    .line 157
    :cond_4
    sget v0, Lmiui/process/ProcessManager;->AI_MAX_ADJ:I

    iput v0, p1, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    .line 158
    const/16 v0, 0xc

    iput v0, p1, Lcom/android/server/am/ProcessRecord;->maxProcState:I

    .line 159
    nop

    .line 163
    :goto_d
    return-void
.end method

.method restoreLastProcessesInfoLocked(I)V
    .registers 8
    .param p1, "flag"    # I

    .line 167
    iget-object v0, p0, Lcom/android/server/am/ProcessStarter;->mLastProcessesInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 168
    .local v0, "lastProcessInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;>;"
    if-eqz v0, :cond_7c

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7c

    .line 169
    const/4 v1, 0x0

    .line 169
    .local v1, "i":I
    :goto_11
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_79

    .line 170
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;

    .line 171
    .local v2, "process":Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;
    iget-object v3, p0, Lcom/android/server/am/ProcessStarter;->mProcessManagerService:Lcom/android/server/am/ProcessManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessManagerService;->getProcessPolicy()Lcom/android/server/am/ProcessPolicy;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;->app:Lcom/android/server/am/ProcessRecord;

    iget v5, v5, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 172
    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ProcessPolicy;->isLockedApplication(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_6a

    .line 173
    const-string v3, "ProcessStarter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "user: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;->app:Lcom/android/server/am/ProcessRecord;

    iget v5, v5, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", packageName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " was Locked."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v3, v2, Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;->app:Lcom/android/server/am/ProcessRecord;

    sget v4, Lmiui/process/ProcessManager;->LOCKED_MAX_ADJ:I

    iput v4, v3, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    .line 176
    iget-object v3, v2, Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;->app:Lcom/android/server/am/ProcessRecord;

    const/16 v4, 0xc

    iput v4, v3, Lcom/android/server/am/ProcessRecord;->maxProcState:I

    goto :goto_76

    .line 179
    :cond_6a
    iget-object v3, v2, Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;->app:Lcom/android/server/am/ProcessRecord;

    iget v4, v2, Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;->maxAdj:I

    iput v4, v3, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    .line 180
    iget-object v3, v2, Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;->app:Lcom/android/server/am/ProcessRecord;

    iget v4, v2, Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;->maxProcState:I

    iput v4, v3, Lcom/android/server/am/ProcessRecord;->maxProcState:I

    .line 169
    .end local v2    # "process":Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;
    :goto_76
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 183
    .end local v1    # "i":I
    :cond_79
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 185
    :cond_7c
    return-void
.end method

.method saveProcessInfoLocked(Lcom/android/server/am/ProcessRecord;I)V
    .registers 6
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "flag"    # I

    .line 141
    new-instance v0, Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;

    invoke-direct {v0}, Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;-><init>()V

    .line 142
    .local v0, "lastProcess":Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;
    iput-object p1, v0, Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;->app:Lcom/android/server/am/ProcessRecord;

    .line 143
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    iput v1, v0, Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;->maxAdj:I

    .line 144
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->maxProcState:I

    iput v1, v0, Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;->maxProcState:I

    .line 145
    iget-object v1, p0, Lcom/android/server/am/ProcessStarter;->mLastProcessesInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 146
    .local v1, "lastProcessList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;>;"
    if-nez v1, :cond_24

    .line 147
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 148
    iget-object v2, p0, Lcom/android/server/am/ProcessStarter;->mLastProcessesInfo:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 150
    :cond_24
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    return-void
.end method

.method startProcessLocked(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/server/am/ProcessRecord;
    .registers 25
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "hostingType"    # Ljava/lang/String;

    move-object/from16 v1, p0

    .line 54
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 55
    .local v2, "callingPid":I
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 56
    move-object/from16 v0, p1

    .line 58
    .end local p2    # "processName":Ljava/lang/String;
    .local v0, "processName":Ljava/lang/String;
    move-object v14, v0

    goto :goto_12

    .line 58
    .end local v0    # "processName":Ljava/lang/String;
    .restart local p2    # "processName":Ljava/lang/String;
    :cond_10
    move-object/from16 v14, p2

    .line 58
    .end local p2    # "processName":Ljava/lang/String;
    .local v14, "processName":Ljava/lang/String;
    :goto_12
    const/4 v15, 0x0

    move-object v3, v15

    .line 60
    .local v3, "info":Landroid/content/pm/ApplicationInfo;
    :try_start_14
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/16 v4, 0x400

    move-object/from16 v13, p1

    move/from16 v12, p3

    invoke-interface {v0, v13, v4, v12}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_22} :catch_b7

    .line 65
    .end local v3    # "info":Landroid/content/pm/ApplicationInfo;
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    nop

    .line 66
    if-eqz v0, :cond_b6

    .line 67
    iget-object v3, v1, Lcom/android/server/am/ProcessStarter;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v14, v4}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lcom/android/server/am/ProcessRecord;

    .line 68
    .local v11, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v11, :cond_72

    .line 69
    iget-boolean v3, v11, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-eqz v3, :cond_55

    .line 70
    const-string v3, "ProcessStarter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "process: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is persistent, skip!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-object v15

    .line 73
    :cond_55
    const-string v3, "ProcessStarter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "process: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " already exits, just protect"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return-object v11

    .line 77
    :cond_72
    iget-object v3, v1, Lcom/android/server/am/ProcessStarter;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 79
    invoke-static {v2}, Lcom/android/server/am/ExtraActivityManagerService;->getProcessNameByPid(I)Ljava/lang/String;

    move-result-object v18

    .line 77
    move-object v4, v14

    move-object v5, v0

    move-object/from16 v8, p4

    move-object/from16 v19, v11

    move/from16 v11, v16

    .line 77
    .end local v11    # "app":Lcom/android/server/am/ProcessRecord;
    .local v19, "app":Lcom/android/server/am/ProcessRecord;
    move/from16 v12, v17

    move-object/from16 v13, v18

    invoke-virtual/range {v3 .. v13}, Lcom/android/server/am/ActivityManagerService;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILjava/lang/String;Landroid/content/ComponentName;ZZZLjava/lang/String;)Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    .line 80
    .local v3, "newApp":Lcom/android/server/am/ProcessRecord;
    if-nez v3, :cond_af

    .line 81
    const-string v4, "ProcessStarter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startProcess :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " failed!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-object v15

    .line 84
    :cond_af
    iget-object v4, v1, Lcom/android/server/am/ProcessStarter;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5, v15}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 85
    return-object v3

    .line 87
    .end local v3    # "newApp":Lcom/android/server/am/ProcessRecord;
    .end local v19    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_b6
    return-object v15

    .line 62
    .end local v0    # "info":Landroid/content/pm/ApplicationInfo;
    .local v3, "info":Landroid/content/pm/ApplicationInfo;
    :catch_b7
    move-exception v0

    .line 63
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "ProcessStarter"

    const-string v5, "error in getApplicationInfo!"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    return-object v15
.end method

.method public startProcesses(Ljava/util/List;IZII)I
    .registers 24
    .param p2, "startProcessCount"    # I
    .param p3, "ignoreMemory"    # Z
    .param p4, "userId"    # I
    .param p5, "flag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiui/process/PreloadProcessData;",
            ">;IZII)I"
        }
    .end annotation

    .line 93
    .local p1, "dataList":Ljava/util/List;, "Ljava/util/List<Lmiui/process/PreloadProcessData;>;"
    move-object/from16 v1, p0

    move/from16 v2, p2

    .line 93
    move/from16 v3, p5

    iget-object v4, v1, Lcom/android/server/am/ProcessStarter;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_9
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 94
    const/4 v0, 0x0

    .line 95
    .local v0, "mColdStartCount":I
    const/4 v5, 0x0

    .line 96
    .local v5, "protectCount":I
    invoke-virtual {v1, v3}, Lcom/android/server/am/ProcessStarter;->restoreLastProcessesInfoLocked(I)V

    .line 97
    iget-object v6, v1, Lcom/android/server/am/ProcessStarter;->mProcessManagerService:Lcom/android/server/am/ProcessManagerService;

    iget-object v6, v6, Lcom/android/server/am/ProcessManagerService;->mHandler:Lcom/android/server/am/ProcessManagerService$MainHandler;

    invoke-virtual {v6, v3}, Lcom/android/server/am/ProcessManagerService$MainHandler;->removeMessages(I)V

    .line 98
    move v7, v5

    move v5, v0

    const/4 v0, 0x0

    .line 98
    .local v0, "i":I
    .local v5, "mColdStartCount":I
    .local v7, "protectCount":I
    :goto_1b
    move v8, v0

    .line 98
    .end local v0    # "i":I
    .local v8, "i":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0
    :try_end_20
    .catchall {:try_start_9 .. :try_end_20} :catchall_dc

    if-ge v8, v0, :cond_d3

    .line 99
    if-lt v5, v2, :cond_26

    .line 100
    goto/16 :goto_d3

    .line 102
    :cond_26
    move-object/from16 v9, p1

    :try_start_28
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/process/PreloadProcessData;

    move-object v10, v0

    .line 103
    .local v10, "data":Lmiui/process/PreloadProcessData;
    if-eqz v10, :cond_ca

    invoke-virtual {v10}, Lmiui/process/PreloadProcessData;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ca

    .line 104
    invoke-virtual {v10}, Lmiui/process/PreloadProcessData;->getPackageName()Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    .line 105
    .local v11, "process":Ljava/lang/String;
    nop

    .line 106
    invoke-static/range {p5 .. p5}, Lcom/android/server/am/ProcessStarter;->makeHostingTypeFromFlag(I)Ljava/lang/String;

    move-result-object v0
    :try_end_45
    .catchall {:try_start_28 .. :try_end_45} :catchall_d1

    .line 105
    move/from16 v12, p4

    :try_start_47
    invoke-virtual {v1, v11, v11, v12, v0}, Lcom/android/server/am/ProcessStarter;->startProcessLocked(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    move-object v13, v0

    .line 107
    .local v13, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v13, :cond_c7

    .line 108
    invoke-virtual {v1, v13, v3}, Lcom/android/server/am/ProcessStarter;->saveProcessInfoLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 109
    invoke-virtual {v1, v13, v3}, Lcom/android/server/am/ProcessStarter;->addProtectionLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 110
    add-int/lit8 v7, v7, 0x1

    .line 112
    const/4 v0, 0x5

    if-lt v7, v0, :cond_71

    .line 113
    const-string v0, "ProcessStarter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "preload and protect processes max limit is: 5, while now count is: "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    goto :goto_d7

    .line 117
    :cond_71
    iget-object v0, v1, Lcom/android/server/am/ProcessStarter;->mProcessManagerService:Lcom/android/server/am/ProcessManagerService;

    iget-object v0, v0, Lcom/android/server/am/ProcessManagerService;->mHandler:Lcom/android/server/am/ProcessManagerService$MainHandler;

    const-wide/32 v14, 0x1b7740

    invoke-virtual {v0, v3, v14, v15}, Lcom/android/server/am/ProcessManagerService$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 119
    invoke-virtual {v10}, Lmiui/process/PreloadProcessData;->startActivity()Z

    move-result v0

    if-eqz v0, :cond_c7

    invoke-virtual {v10}, Lmiui/process/PreloadProcessData;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_c7

    .line 120
    invoke-virtual {v10}, Lmiui/process/PreloadProcessData;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v14, 0x4

    invoke-virtual {v0, v14}, Landroid/content/Intent;->addMiuiFlags(I)Landroid/content/Intent;
    :try_end_8f
    .catchall {:try_start_47 .. :try_end_8f} :catchall_e6

    .line 123
    :try_start_8f
    const-class v0, Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v14, "startActivityInMiuiAiMode"

    const/4 v15, 0x1

    new-array v6, v15, [Ljava/lang/Object;

    .line 124
    invoke-virtual {v10}, Lmiui/process/PreloadProcessData;->getIntent()Landroid/content/Intent;

    move-result-object v17
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_9b} :catch_c0
    .catchall {:try_start_8f .. :try_end_9b} :catchall_e6

    const/16 v16, 0x0

    :try_start_9d
    aput-object v17, v6, v16
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_9f} :catch_be
    .catchall {:try_start_9d .. :try_end_9f} :catchall_e6

    .line 123
    :try_start_9f
    invoke-static {v0, v14, v6}, Lmiui/util/ReflectionUtils;->findMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 125
    .local v0, "method":Ljava/lang/reflect/Method;
    iget-object v6, v1, Lcom/android/server/am/ProcessStarter;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    new-array v14, v15, [Ljava/lang/Object;

    invoke-virtual {v10}, Lmiui/process/PreloadProcessData;->getIntent()Landroid/content/Intent;

    move-result-object v15
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_ab} :catch_c0
    .catchall {:try_start_9f .. :try_end_ab} :catchall_e6

    const/16 v16, 0x0

    :try_start_ad
    aput-object v15, v14, v16

    invoke-virtual {v0, v6, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_b9} :catch_be
    .catchall {:try_start_ad .. :try_end_b9} :catchall_e6

    if-nez v6, :cond_bd

    .line 126
    add-int/lit8 v5, v5, 0x1

    .line 130
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :cond_bd
    goto :goto_cd

    .line 128
    :catch_be
    move-exception v0

    goto :goto_c3

    :catch_c0
    move-exception v0

    const/16 v16, 0x0

    .line 129
    .local v0, "e":Ljava/lang/Exception;
    :goto_c3
    :try_start_c3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 129
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v10    # "data":Lmiui/process/PreloadProcessData;
    .end local v11    # "process":Ljava/lang/String;
    .end local v13    # "app":Lcom/android/server/am/ProcessRecord;
    goto :goto_cd

    .line 98
    :cond_c7
    :goto_c7
    const/16 v16, 0x0

    goto :goto_cd

    :cond_ca
    move/from16 v12, p4

    goto :goto_c7

    :goto_cd
    add-int/lit8 v0, v8, 0x1

    .line 98
    .end local v8    # "i":I
    .local v0, "i":I
    goto/16 :goto_1b

    .line 136
    .end local v0    # "i":I
    .end local v5    # "mColdStartCount":I
    .end local v7    # "protectCount":I
    :catchall_d1
    move-exception v0

    goto :goto_df

    .line 135
    .restart local v5    # "mColdStartCount":I
    .restart local v7    # "protectCount":I
    :cond_d3
    :goto_d3
    move-object/from16 v9, p1

    move/from16 v12, p4

    :goto_d7
    monitor-exit v4
    :try_end_d8
    .catchall {:try_start_c3 .. :try_end_d8} :catchall_e6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v5

    .line 136
    .end local v5    # "mColdStartCount":I
    .end local v7    # "protectCount":I
    :catchall_dc
    move-exception v0

    move-object/from16 v9, p1

    :goto_df
    move/from16 v12, p4

    :goto_e1
    :try_start_e1
    monitor-exit v4
    :try_end_e2
    .catchall {:try_start_e1 .. :try_end_e2} :catchall_e6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_e6
    move-exception v0

    goto :goto_e1
.end method
