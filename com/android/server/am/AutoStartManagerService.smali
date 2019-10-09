.class public Lcom/android/server/am/AutoStartManagerService;
.super Ljava/lang/Object;
.source "AutoStartManagerService.java"


# static fields
.field private static final ACCT_CGROUP_PATH:Ljava/lang/String; = "/acct"

.field private static final ENABLE_SIGSTOP_KILL:Z

.field private static final MEM_CGROUP_PATH:Ljava/lang/String; = "/dev/memcg/apps"

.field private static final MEM_CGROUP_TASKS:Ljava/lang/String; = "/dev/memcg/apps/tasks"

.field private static final TAG:Ljava/lang/String; = "AutoStartManagerService"

.field private static sCgroupRootPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 37
    const-string/jumbo v0, "persist.proc.enable_sigstop"

    .line 38
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmiui/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/AutoStartManagerService;->ENABLE_SIGSTOP_KILL:Z

    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/AutoStartManagerService;->sCgroupRootPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canRestartServiceLocked(Ljava/lang/String;ILcom/android/server/am/ActivityManagerService;)Z
    .registers 7
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "uid"    # I
    .param p2, "service"    # Lcom/android/server/am/ActivityManagerService;

    .line 94
    iget-object v0, p2, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    const/16 v1, 0x2718

    invoke-virtual {v0, v1, p1, p0}, Lcom/android/server/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v0

    .line 95
    .local v0, "mode":I
    if-nez v0, :cond_c

    .line 96
    const/4 v1, 0x1

    return v1

    .line 98
    :cond_c
    const-string v1, "AutoStartManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MIUILOG- Reject RestartService packageName :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " uid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/4 v1, 0x0

    return v1
.end method

.method private static getCgroupRootPath()Ljava/lang/String;
    .registers 2

    .line 164
    sget-object v0, Lcom/android/server/am/AutoStartManagerService;->sCgroupRootPath:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 165
    sget-object v0, Lcom/android/server/am/AutoStartManagerService;->sCgroupRootPath:Ljava/lang/String;

    return-object v0

    .line 169
    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-le v0, v1, :cond_19

    invoke-static {}, Lcom/android/server/am/AutoStartManagerService;->isMemCgroupAvailable()Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_19

    .line 172
    :cond_14
    const-string v0, "/dev/memcg/apps"

    sput-object v0, Lcom/android/server/am/AutoStartManagerService;->sCgroupRootPath:Ljava/lang/String;

    goto :goto_1d

    .line 170
    :cond_19
    :goto_19
    const-string v0, "/acct"

    sput-object v0, Lcom/android/server/am/AutoStartManagerService;->sCgroupRootPath:Ljava/lang/String;

    .line 175
    :goto_1d
    sget-object v0, Lcom/android/server/am/AutoStartManagerService;->sCgroupRootPath:Ljava/lang/String;

    return-object v0
.end method

.method public static isAllowStartService(Landroid/content/Context;Landroid/content/Intent;I)Z
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "userId"    # I

    .line 44
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 46
    .local v2, "packageManager":Landroid/content/pm/IPackageManager;
    const/4 v3, 0x0

    invoke-interface {v2, v1, v3, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 47
    .local v3, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v3, :cond_15

    .line 48
    return v0

    .line 50
    :cond_15
    iget v4, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 51
    .local v4, "uid":I
    invoke-static {p0, p1, p2, v4}, Lcom/android/server/am/AutoStartManagerService;->isAllowStartService(Landroid/content/Context;Landroid/content/Intent;II)Z

    move-result v5
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1b} :catch_1c

    return v5

    .line 52
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "packageManager":Landroid/content/pm/IPackageManager;
    .end local v3    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "uid":I
    :catch_1c
    move-exception v1

    .line 53
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 55
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method

.method public static isAllowStartService(Landroid/content/Context;Landroid/content/Intent;II)Z
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "userId"    # I
    .param p3, "uid"    # I

    .line 60
    const/4 v0, 0x1

    :try_start_1
    const-string v1, "appops"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 61
    .local v1, "aom":Landroid/app/AppOpsManager;
    if-nez v1, :cond_c

    .line 62
    return v0

    .line 64
    :cond_c
    const/16 v2, 0x2718

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, p3, v3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v2

    .line 65
    .local v2, "mode":I
    if-nez v2, :cond_1d

    .line 66
    return v0

    .line 69
    :cond_1d
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityManagerService;

    .line 70
    .local v3, "ams":Lcom/android/server/am/ActivityManagerService;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    const/16 v5, 0x400

    const/4 v6, 0x0

    invoke-interface {v4, p1, v6, v5, p2}, Landroid/content/pm/IPackageManager;->resolveService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 72
    .local v4, "rInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v4, :cond_33

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    nop

    :cond_33
    move-object v5, v6

    .line 73
    .local v5, "sInfo":Landroid/content/pm/ServiceInfo;
    if-nez v5, :cond_37

    .line 74
    return v0

    .line 76
    :cond_37
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v6, v0

    if-nez v6, :cond_90

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 77
    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Lmiui/content/pm/PreloadedAppPolicy;->isProtectedDataApp(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_4e

    goto :goto_90

    .line 80
    :cond_4e
    monitor-enter v3
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4f} :catch_91

    :try_start_4f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 81
    iget-object v6, v5, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v6, p3, v7}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v6

    .line 82
    .local v6, "processRecord":Lcom/android/server/am/ProcessRecord;
    if-nez v6, :cond_85

    .line 83
    const-string v8, "AutoStartManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MIUILOG- Reject service :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " userId : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " uid : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    monitor-exit v3
    :try_end_81
    .catchall {:try_start_4f .. :try_end_81} :catchall_8a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v7

    .line 86
    .end local v6    # "processRecord":Lcom/android/server/am/ProcessRecord;
    :cond_85
    :try_start_85
    monitor-exit v3
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_8a

    :try_start_86
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_89} :catch_91

    .line 89
    .end local v1    # "aom":Landroid/app/AppOpsManager;
    .end local v2    # "mode":I
    .end local v3    # "ams":Lcom/android/server/am/ActivityManagerService;
    .end local v4    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v5    # "sInfo":Landroid/content/pm/ServiceInfo;
    goto :goto_95

    .line 86
    .restart local v1    # "aom":Landroid/app/AppOpsManager;
    .restart local v2    # "mode":I
    .restart local v3    # "ams":Lcom/android/server/am/ActivityManagerService;
    .restart local v4    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v5    # "sInfo":Landroid/content/pm/ServiceInfo;
    :catchall_8a
    move-exception v6

    :try_start_8b
    monitor-exit v3
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_8a

    :try_start_8c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v6
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_90} :catch_91

    .line 78
    :cond_90
    :goto_90
    return v0

    .line 87
    .end local v1    # "aom":Landroid/app/AppOpsManager;
    .end local v2    # "mode":I
    .end local v3    # "ams":Lcom/android/server/am/ActivityManagerService;
    .end local v4    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v5    # "sInfo":Landroid/content/pm/ServiceInfo;
    :catch_91
    move-exception v1

    .line 88
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 90
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_95
    return v0
.end method

.method private static isMemCgroupAvailable()Z
    .registers 4

    .line 180
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/dev/memcg/apps/tasks"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 181
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_f

    .line 182
    return v2

    .line 184
    :cond_f
    new-instance v1, Ljava/io/File;

    const-string v3, "/dev/memcg/apps"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 185
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1f

    if-eqz v1, :cond_1e

    .line 186
    return v2

    .line 190
    .end local v0    # "file":Ljava/io/File;
    :cond_1e
    goto :goto_23

    .line 188
    :catch_1f
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 191
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_23
    const/4 v0, 0x0

    return v0
.end method

.method static sendSignalToProcessLocked(IILjava/lang/String;IIZ)V
    .registers 14
    .param p0, "uid"    # I
    .param p1, "pid"    # I
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "setAdj"    # I
    .param p4, "signal"    # I
    .param p5, "needKill"    # Z

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/am/AutoStartManagerService;->getCgroupRootPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/uid_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/pid_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/cgroup.procs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "fileName":Ljava/lang/String;
    const/4 v1, 0x0

    move-object v2, v1

    .line 139
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_27
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v3

    .line 140
    nop

    .line 141
    .local v1, "line":Ljava/lang/String;
    :goto_38
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    if-eqz v3, :cond_9e

    .line 142
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 143
    .local v3, "processId":I
    if-lez v3, :cond_91

    .line 146
    const-string v4, "AutoStartManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "prepare force stop p:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " s: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-static {v3, p4}, Landroid/os/Process;->sendSignal(II)V

    .line 148
    if-eqz p5, :cond_91

    .line 149
    const/16 v4, 0x7547

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object p2, v5, v6

    const/4 v6, 0x3

    .line 150
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "Kill Again"

    aput-object v7, v5, v6

    .line 149
    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 151
    invoke-static {p1}, Landroid/os/Process;->killProcessQuiet(I)V
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_91} :catch_9d
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_91} :catch_94
    .catchall {:try_start_27 .. :try_end_91} :catchall_92

    .line 154
    .end local v3    # "processId":I
    :cond_91
    goto :goto_38

    .line 159
    .end local v1    # "line":Ljava/lang/String;
    :catchall_92
    move-exception v1

    goto :goto_99

    .line 156
    :catch_94
    move-exception v1

    .line 157
    .local v1, "e":Ljava/lang/Exception;
    :try_start_95
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_98
    .catchall {:try_start_95 .. :try_end_98} :catchall_92

    .line 157
    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_9e

    .line 159
    :goto_99
    invoke-static {v2}, Lmiui/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1

    .line 155
    :catch_9d
    move-exception v1

    .line 159
    :cond_9e
    :goto_9e
    invoke-static {v2}, Lmiui/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 160
    nop

    .line 161
    return-void
.end method

.method public static signalStopProcessesLocked(Ljava/util/ArrayList;ZLjava/lang/String;ILcom/android/server/am/ActivityManagerService;)V
    .registers 14
    .param p1, "allowRestart"    # Z
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;Z",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/server/am/ActivityManagerService;",
            ")V"
        }
    .end annotation

    .line 105
    .local p0, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    sget-boolean v0, Lcom/android/server/am/AutoStartManagerService;->ENABLE_SIGSTOP_KILL:Z

    if-eqz v0, :cond_40

    if-eqz p1, :cond_d

    .line 106
    invoke-static {p2, p3, p4}, Lcom/android/server/am/AutoStartManagerService;->canRestartServiceLocked(Ljava/lang/String;ILcom/android/server/am/ActivityManagerService;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_40

    .line 110
    :cond_d
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 111
    .local v0, "N":I
    const/4 v1, 0x0

    .line 112
    .local v1, "proc":Lcom/android/server/am/ProcessRecord;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    if-ge v2, v0, :cond_2d

    .line 113
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 114
    iget v3, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v4, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v6, v1, Lcom/android/server/am/ProcessRecord;->setAdj:I

    const/16 v7, 0x13

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/android/server/am/AutoStartManagerService;->sendSignalToProcessLocked(IILjava/lang/String;IIZ)V

    .line 112
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 119
    .end local v2    # "i":I
    :cond_2d
    invoke-virtual {p0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 120
    .local v2, "tmpProcs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    sget-object v3, Lcom/android/server/am/ActivityManagerService;->sKillHandler:Lcom/android/server/am/ActivityManagerService$KillHandler;

    new-instance v4, Lcom/android/server/am/AutoStartManagerService$1;

    invoke-direct {v4, p4, v2}, Lcom/android/server/am/AutoStartManagerService$1;-><init>(Lcom/android/server/am/ActivityManagerService;Ljava/util/ArrayList;)V

    const-wide/16 v5, 0x1f4

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/am/ActivityManagerService$KillHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 133
    return-void

    .line 107
    .end local v0    # "N":I
    .end local v1    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v2    # "tmpProcs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :cond_40
    :goto_40
    return-void
.end method
