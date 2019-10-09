.class Lcom/android/server/am/ActivityStackInjector;
.super Ljava/lang/Object;
.source "ActivityStackInjector.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityStackInjector"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static addSysAppForegroundTime(Lcom/android/server/am/ActivityRecord;Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Proc;J)V
    .registers 6
    .param p0, "record"    # Lcom/android/server/am/ActivityRecord;
    .param p1, "sps"    # Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Proc;
    .param p2, "diff"    # J

    .line 290
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_f

    if-eqz p1, :cond_f

    .line 291
    invoke-virtual {p1, p2, p3}, Lcom/android/internal/os/UidAppBatteryStatsImpl$UidPackage$Proc;->addForegroundTimeLocked(J)V

    .line 293
    :cond_f
    return-void
.end method

.method static findMatchTask(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;)Z
    .registers 9
    .param p0, "target"    # Lcom/android/server/am/ActivityRecord;
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityRecord;",
            "Lcom/android/server/am/TaskRecord;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/TaskRecord;",
            ">;)Z"
        }
    .end annotation

    .line 230
    .local p2, "taskHistory":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    const/4 v0, 0x0

    if-eqz p0, :cond_41

    if-eqz p1, :cond_41

    .line 231
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 232
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    invoke-static {p0, v1}, Lcom/android/server/am/MiuiMultiTaskManager;->checkMultiTaskAffinity(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Z

    move-result v2

    if-nez v2, :cond_10

    return v0

    .line 233
    :cond_10
    move v2, v0

    .line 235
    .local v2, "needCheck":Z
    const/4 v3, 0x1

    if-eqz v1, :cond_27

    :try_start_14
    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v4, :cond_27

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const-string/jumbo v5, "miui_launch_app_in_one_task_group"

    .line 236
    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_21} :catch_25

    if-eqz v4, :cond_27

    move v4, v3

    goto :goto_28

    .line 237
    :catch_25
    move-exception v4

    goto :goto_2a

    .line 236
    :cond_27
    move v4, v0

    :goto_28
    move v2, v4

    .line 239
    nop

    .line 240
    :goto_2a
    if-eqz v2, :cond_41

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 241
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_41

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    .line 242
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 243
    return v3

    .line 246
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "needCheck":Z
    :cond_41
    return v0
.end method

.method static getStartingWindowLabel(Lcom/android/server/am/ActivityRecord;Landroid/content/Context;)Ljava/lang/CharSequence;
    .registers 8
    .param p0, "record"    # Lcom/android/server/am/ActivityRecord;
    .param p1, "context"    # Landroid/content/Context;

    .line 87
    const-string v0, "getStartingWindowLabel"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, "label":Ljava/lang/CharSequence;
    invoke-static {p0, p1}, Lcom/android/server/am/ActivityStackInjector;->isStartingWindowSupported(Lcom/android/server/am/ActivityRecord;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 91
    :try_start_e
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 93
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, ":android:show_fragment_args"

    .line 94
    invoke-virtual {v3, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 95
    .local v4, "bundle":Landroid/os/Bundle;
    if-eqz v4, :cond_24

    .line 96
    const-string v5, ":miui:starting_window_label"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    move-object v0, v5

    .line 97
    :cond_24
    if-nez v0, :cond_2d

    .line 98
    const-string v5, ":miui:starting_window_label"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_2c} :catch_2e

    move-object v0, v5

    .line 103
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "bundle":Landroid/os/Bundle;
    :cond_2d
    goto :goto_31

    .line 100
    :catch_2e
    move-exception v3

    .line 102
    .local v3, "e":Ljava/lang/Exception;
    const-string v0, ""

    .line 105
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_31
    :goto_31
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 106
    return-object v0
.end method

.method static getStartingWindowLabelRes(Lcom/android/server/am/ActivityRecord;Landroid/content/Context;)I
    .registers 8
    .param p0, "record"    # Lcom/android/server/am/ActivityRecord;
    .param p1, "context"    # Landroid/content/Context;

    .line 70
    const-string v0, "getStartingWindowLabelRes"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, "res":I
    invoke-static {p0, p1}, Lcom/android/server/am/ActivityStackInjector;->isStartingWindowSupported(Lcom/android/server/am/ActivityRecord;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 74
    :try_start_e
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 76
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, ":android:show_fragment_title"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1c} :catch_1e

    move v0, v4

    .line 80
    .end local v3    # "intent":Landroid/content/Intent;
    goto :goto_1f

    .line 78
    :catch_1e
    move-exception v3

    .line 82
    :cond_1f
    :goto_1f
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 83
    return v0
.end method

.method static ignoreWallpaper(Lcom/android/server/am/ActivityRecord;)Z
    .registers 3
    .param p0, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 275
    if-eqz p0, :cond_b

    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getActivityType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method static isAllowCross(II)Z
    .registers 3
    .param p0, "userId"    # I
    .param p1, "targetUserId"    # I

    .line 261
    const/16 v0, 0x3e7

    if-nez p0, :cond_6

    if-eq p1, v0, :cond_a

    :cond_6
    if-nez p1, :cond_c

    if-ne p0, v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method static isAllowDontWaitForPause(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityManagerService;)Z
    .registers 7
    .param p0, "prev"    # Lcom/android/server/am/ActivityRecord;
    .param p1, "next"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "service"    # Lcom/android/server/am/ActivityManagerService;

    .line 251
    const/4 v0, 0x0

    if-eqz p2, :cond_26

    if-eqz p1, :cond_26

    const-string v1, "com.miui.home"

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 252
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 253
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v3, 0x1

    invoke-virtual {p2, v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    .line 255
    .local v1, "appProcess":Lcom/android/server/am/ProcessRecord;
    if-eqz v1, :cond_24

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v2, :cond_23

    goto :goto_24

    :cond_23
    goto :goto_25

    :cond_24
    :goto_24
    move v0, v3

    :goto_25
    return v0

    .line 257
    .end local v1    # "appProcess":Lcom/android/server/am/ProcessRecord;
    :cond_26
    return v0
.end method

.method static isCurrentUser(I)Z
    .registers 2
    .param p0, "userId"    # I

    .line 271
    invoke-static {}, Lmiui/securityspace/CrossUserUtils;->getCurrentUserId()I

    move-result v0

    if-ne p0, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method static isDefaultHome(Ljava/lang/String;I)Z
    .registers 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .line 279
    invoke-static {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getDefaultHome(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static isMiuiHome(Lcom/android/server/am/ActivityRecord;)Z
    .registers 3
    .param p0, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 266
    if-eqz p0, :cond_2e

    const-string v0, "com.miui.home"

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "com.mi.android.globallauncher"

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    :cond_1e
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const-string v1, "android.intent.category.HOME"

    .line 267
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const/4 v0, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v0, 0x0

    .line 266
    :goto_2f
    return v0
.end method

.method static isStartingWindowSupported(Lcom/android/server/am/ActivityRecord;Landroid/content/Context;)Z
    .registers 9
    .param p0, "record"    # Lcom/android/server/am/ActivityRecord;
    .param p1, "context"    # Landroid/content/Context;

    .line 47
    const-string/jumbo v0, "isStartingWindowSupported"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 48
    const/4 v0, 0x0

    .line 49
    .local v0, "ret":Z
    const/4 v3, 0x0

    if-eqz p1, :cond_2a

    .line 51
    :try_start_c
    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    new-instance v5, Landroid/os/UserHandle;

    iget v6, p0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, v4, v3, v5}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v4

    move-object p1, v4

    .line 53
    if-eqz p1, :cond_28

    .line 54
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->getRealTheme()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/content/Context;->setTheme(I)V

    .line 55
    invoke-static {p1}, Lmiui/os/Environment;->isUsingMiui(Landroid/content/Context;)Z

    move-result v4
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_27} :catch_29

    move v0, v4

    .line 59
    :cond_28
    goto :goto_2a

    .line 57
    :catch_29
    move-exception v4

    .line 61
    :cond_2a
    :goto_2a
    if-eqz v0, :cond_38

    .line 62
    sget v4, Lmiui/R$attr;->windowDisablePreview:I

    .line 63
    invoke-static {p1, v4, v3}, Lmiui/util/AttributeResolver;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_37

    move v3, v5

    nop

    :cond_37
    move v0, v3

    .line 65
    :cond_38
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 66
    return v0
.end method

.method private static isTaskAlive(Lcom/android/server/am/TaskRecord;)Z
    .registers 5
    .param p0, "tr"    # Lcom/android/server/am/TaskRecord;

    .line 186
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_a

    .line 187
    const/4 v0, 0x1

    return v0

    .line 189
    :cond_a
    const/4 v0, 0x0

    .line 190
    .local v0, "isAlive":Z
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 191
    .local v2, "activity":Lcom/android/server/am/ActivityRecord;
    iget-boolean v3, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v3, :cond_23

    .line 192
    const/4 v0, 0x1

    .line 193
    goto :goto_24

    .line 195
    .end local v2    # "activity":Lcom/android/server/am/ActivityRecord;
    :cond_23
    goto :goto_11

    .line 196
    :cond_24
    :goto_24
    return v0
.end method

.method static killProcessesForRelMemory(Lcom/android/server/am/ActivityManagerService;J)Z
    .registers 14
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "needRelSize"    # J

    .line 132
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_53

    .line 136
    const/4 v0, 0x0

    .line 137
    .local v0, "killed":Z
    const-wide/16 v1, 0x0

    .line 138
    .local v1, "relSize":J
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v3

    .line 139
    :try_start_e
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 140
    .local v4, "size":I
    const/4 v5, 0x0

    .line 140
    .local v5, "i":I
    :goto_15
    if-ge v5, v4, :cond_4e

    .line 141
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 142
    .local v6, "pid":I
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    .line 143
    .local v7, "proc":Lcom/android/server/am/ProcessRecord;
    if-nez v7, :cond_28

    .line 143
    .end local v6    # "pid":I
    .end local v7    # "proc":Lcom/android/server/am/ProcessRecord;
    goto :goto_4b

    .line 145
    .restart local v6    # "pid":I
    .restart local v7    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_28
    iget v8, v7, Lcom/android/server/am/ProcessRecord;->setAdj:I

    .line 146
    .local v8, "adj":I
    const/16 v9, 0x320

    if-le v8, v9, :cond_4b

    iget-boolean v9, v7, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v9, :cond_4b

    const-string v9, "com.android.camera"

    iget-object v10, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4b

    .line 147
    const-string v9, "Release memory"

    const/4 v10, 0x1

    invoke-virtual {v7, v9, v10}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    .line 148
    const/4 v0, 0x1

    .line 149
    iget-wide v9, v7, Lcom/android/server/am/ProcessRecord;->lastPss:J

    add-long/2addr v1, v9

    .line 150
    cmp-long v9, v1, p1

    if-lez v9, :cond_4b

    .line 151
    goto :goto_4e

    .line 140
    .end local v6    # "pid":I
    .end local v7    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v8    # "adj":I
    :cond_4b
    :goto_4b
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 158
    .end local v4    # "size":I
    .end local v5    # "i":I
    :cond_4e
    :goto_4e
    monitor-exit v3

    .line 159
    return v0

    .line 158
    :catchall_50
    move-exception v4

    monitor-exit v3
    :try_end_52
    .catchall {:try_start_e .. :try_end_52} :catchall_50

    throw v4

    .line 133
    .end local v0    # "killed":Z
    .end local v1    # "relSize":J
    :cond_53
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "killProcessesForRelMemory() only available to system"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static moveTaskIfNeed(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;)Z
    .registers 9
    .param p0, "topTask"    # Lcom/android/server/am/TaskRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/TaskRecord;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/TaskRecord;",
            ">;)Z"
        }
    .end annotation

    .line 200
    .local p1, "taskHistory":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 201
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    invoke-static {v0}, Lcom/android/server/am/MiuiMultiTaskManager;->isMultiTaskSupport(Lcom/android/server/am/ActivityRecord;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    return v2

    .line 202
    :cond_c
    const/4 v1, 0x0

    move-object v3, v1

    .line 204
    .local v3, "returnTo":Ljava/lang/Object;
    if-eqz v0, :cond_20

    :try_start_10
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v4, :cond_20

    .line 205
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const-string/jumbo v4, "miui_task_return_to_target"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1d} :catch_1e

    goto :goto_20

    .line 207
    :catch_1e
    move-exception v1

    goto :goto_22

    .line 206
    :cond_20
    :goto_20
    move-object v3, v1

    .line 209
    nop

    .line 211
    :goto_22
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 212
    .local v1, "topIndex":I
    if-eqz v3, :cond_43

    if-lez v1, :cond_43

    .line 213
    add-int/lit8 v4, v1, -0x1

    .line 213
    .local v4, "taskNdx":I
    :goto_2c
    if-ltz v4, :cond_43

    .line 214
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    .line 215
    .local v5, "tr":Lcom/android/server/am/TaskRecord;
    if-eqz v5, :cond_40

    iget-object v6, v5, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_40

    .line 222
    const/4 v2, 0x1

    return v2

    .line 213
    .end local v5    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_40
    add-int/lit8 v4, v4, -0x1

    goto :goto_2c

    .line 226
    .end local v4    # "taskNdx":I
    :cond_43
    return v2
.end method

.method static onWindowingModeChanged(Lcom/android/server/am/ActivityStack;II)V
    .registers 4
    .param p0, "stack"    # Lcom/android/server/am/ActivityStack;
    .param p1, "fromMode"    # I
    .param p2, "toMode"    # I

    .line 283
    if-eqz p0, :cond_f

    const/4 v0, 0x5

    if-ne p1, v0, :cond_f

    const/4 v0, 0x1

    if-ne p2, v0, :cond_f

    .line 285
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerServiceInjector;->onFreeFormToFullScreen(Lcom/android/server/am/ActivityRecord;)V

    .line 287
    :cond_f
    return-void
.end method

.method static releaseMemoryIfNeeded(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityRecord;)V
    .registers 11
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "next"    # Lcom/android/server/am/ActivityRecord;

    .line 118
    if-eqz p1, :cond_3f

    const-string v0, "com.android.camera"

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 119
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 120
    .local v0, "info":Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerService;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 121
    iget-wide v1, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/16 v3, 0x400

    div-long/2addr v1, v3

    .line 122
    .local v1, "currentMem":J
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e0059

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 123
    .local v3, "warningValue":I
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e0087

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 124
    .local v4, "releaseMemoryLimit":I
    int-to-long v5, v3

    cmp-long v5, v1, v5

    if-gtz v5, :cond_3f

    .line 125
    int-to-long v5, v3

    sub-long/2addr v5, v1

    int-to-long v7, v4

    add-long/2addr v5, v7

    .line 126
    .local v5, "needRelSize":J
    invoke-static {p0, v5, v6}, Lcom/android/server/am/ActivityStackInjector;->killProcessesForRelMemory(Lcom/android/server/am/ActivityManagerService;J)Z

    .line 129
    .end local v0    # "info":Landroid/app/ActivityManager$MemoryInfo;
    .end local v1    # "currentMem":J
    .end local v3    # "warningValue":I
    .end local v4    # "releaseMemoryLimit":I
    .end local v5    # "needRelSize":J
    :cond_3f
    return-void
.end method

.method static startProcBackgroud(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;)Z
    .registers 4
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, "start":Z
    const-string v1, "com.android.camera"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 112
    const/4 v0, 0x1

    .line 114
    :cond_a
    return v0
.end method

.method private static taskAbove(Lcom/android/server/am/ActivityStack;Ljava/util/ArrayList;Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/TaskRecord;
    .registers 5
    .param p0, "thiz"    # Lcom/android/server/am/ActivityStack;
    .param p2, "tr"    # Lcom/android/server/am/TaskRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityStack;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Lcom/android/server/am/TaskRecord;",
            ")",
            "Lcom/android/server/am/TaskRecord;"
        }
    .end annotation

    .line 177
    .local p1, "taskHistory":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 178
    .local v0, "trIndex":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_15

    .line 179
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    return-object v1

    .line 181
    :cond_15
    const/4 v1, 0x0

    return-object v1
.end method

.method private static transferOnTopOfHomeForMoveTask(Lcom/android/server/am/ActivityStack;Ljava/util/ArrayList;Lcom/android/server/am/TaskRecord;)V
    .registers 3
    .param p0, "thiz"    # Lcom/android/server/am/ActivityStack;
    .param p2, "tr"    # Lcom/android/server/am/TaskRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityStack;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Lcom/android/server/am/TaskRecord;",
            ")V"
        }
    .end annotation

    .line 174
    .local p1, "taskHistory":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    return-void
.end method

.method public static transferOnTopOfHomeForMoveTaskToFrontLocked(Lcom/android/server/am/ActivityStack;Ljava/util/ArrayList;Lcom/android/server/am/TaskRecord;)V
    .registers 3
    .param p0, "thiz"    # Lcom/android/server/am/ActivityStack;
    .param p2, "tr"    # Lcom/android/server/am/TaskRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityStack;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Lcom/android/server/am/TaskRecord;",
            ")V"
        }
    .end annotation

    .line 43
    .local p1, "taskHistory":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-static {p0, p1, p2}, Lcom/android/server/am/ActivityStackInjector;->transferOnTopOfHomeForMoveTask(Lcom/android/server/am/ActivityStack;Ljava/util/ArrayList;Lcom/android/server/am/TaskRecord;)V

    .line 44
    return-void
.end method
