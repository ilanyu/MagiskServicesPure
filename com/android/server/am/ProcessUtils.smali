.class public Lcom/android/server/am/ProcessUtils;
.super Ljava/lang/Object;
.source "ProcessUtils.java"


# static fields
.field public static final FREEFORM_WORKSPACE_STACK_ID:I = 0x2

.field public static final FULLSCREEN_WORKSPACE_STACK_ID:I = 0x1

.field private static final LOW_MEMORY_RATE:I = 0xa

.field public static final PRIORITY_HEAVY:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIORITY_PERCEPTIBLE:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIORITY_UNKNOW:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIORITY_VISIBLE:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ProcessManager"

.field private static sTtsEngines:Landroid/speech/tts/TtsEngines;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 52
    new-instance v0, Landroid/util/Pair;

    .line 53
    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lcom/android/server/am/ProcessUtils;->PRIORITY_VISIBLE:Landroid/util/Pair;

    .line 54
    new-instance v0, Landroid/util/Pair;

    .line 55
    const/16 v1, 0xc8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lcom/android/server/am/ProcessUtils;->PRIORITY_PERCEPTIBLE:Landroid/util/Pair;

    .line 56
    new-instance v0, Landroid/util/Pair;

    .line 57
    const/16 v1, 0x190

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lcom/android/server/am/ProcessUtils;->PRIORITY_HEAVY:Landroid/util/Pair;

    .line 58
    new-instance v0, Landroid/util/Pair;

    .line 59
    const/16 v1, 0x3e9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lcom/android/server/am/ProcessUtils;->PRIORITY_UNKNOW:Landroid/util/Pair;

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActiveTtsEngine(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 135
    const/4 v0, 0x0

    .line 136
    .local v0, "ttsEngine":Ljava/lang/String;
    const-string v1, "accessibility"

    .line 137
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    .line 138
    .local v1, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    if-eqz v1, :cond_28

    .line 139
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 140
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 141
    sget-object v2, Lcom/android/server/am/ProcessUtils;->sTtsEngines:Landroid/speech/tts/TtsEngines;

    if-nez v2, :cond_22

    .line 142
    new-instance v2, Landroid/speech/tts/TtsEngines;

    invoke-direct {v2, p0}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/android/server/am/ProcessUtils;->sTtsEngines:Landroid/speech/tts/TtsEngines;

    .line 144
    :cond_22
    sget-object v2, Lcom/android/server/am/ProcessUtils;->sTtsEngines:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v2}, Landroid/speech/tts/TtsEngines;->getDefaultEngine()Ljava/lang/String;

    move-result-object v0

    .line 146
    :cond_28
    return-object v0
.end method

.method public static getActiveWallpaperPackage(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 121
    const/4 v0, 0x0

    .line 122
    .local v0, "wallpaperPkg":Ljava/lang/String;
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v1

    .line 123
    .local v1, "wInfo":Landroid/app/WallpaperInfo;
    if-eqz v1, :cond_f

    .line 124
    invoke-virtual {v1}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 126
    :cond_f
    return-object v0
.end method

.method public static getDefaultInputMethod(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_input_method"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "inputMethodId":Ljava/lang/String;
    const/4 v1, 0x0

    .line 106
    .local v1, "inputMethodPkg":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 107
    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 108
    .local v2, "endIndex":I
    if-lez v2, :cond_1e

    .line 109
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 112
    .end local v2    # "endIndex":I
    :cond_1e
    return-object v1
.end method

.method public static getMultiWindowForegroundAppInfoLocked(Lcom/android/server/am/ActivityManagerService;)Landroid/content/pm/ApplicationInfo;
    .registers 4
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .line 452
    const/4 v0, 0x0

    .line 453
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-static {p0}, Lcom/android/server/am/ProcessUtils;->getMultiWindowStackLocked(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 454
    .local v1, "multiWindowStack":Lcom/android/server/am/ActivityStack;
    if-eqz v1, :cond_f

    .line 455
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 456
    .local v2, "multiWindowActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_f

    .line 457
    iget-object v0, v2, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 460
    .end local v2    # "multiWindowActivity":Lcom/android/server/am/ActivityRecord;
    :cond_f
    return-object v0
.end method

.method private static getMultiWindowStackLocked(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/ActivityStack;
    .registers 7
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .line 210
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getChildCount()I

    move-result v0

    .line 211
    .local v0, "numDisplays":I
    const/4 v1, 0x0

    .local v1, "displayNdx":I
    :goto_7
    if-ge v1, v0, :cond_28

    .line 212
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getChildAt(I)Lcom/android/server/am/ActivityDisplay;

    move-result-object v2

    .line 213
    .local v2, "display":Lcom/android/server/am/ActivityDisplay;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityDisplay;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "stackNdx":I
    :goto_15
    if-ltz v3, :cond_25

    .line 214
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityDisplay;->getChildAt(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 215
    .local v4, "stack":Lcom/android/server/am/ActivityStack;
    invoke-static {v4}, Lcom/android/server/am/ProcessUtils;->isMultiWindowStackLocked(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 216
    return-object v4

    .line 213
    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_22
    add-int/lit8 v3, v3, -0x1

    goto :goto_15

    .line 211
    .end local v2    # "display":Lcom/android/server/am/ActivityDisplay;
    .end local v3    # "stackNdx":I
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 220
    .end local v1    # "displayNdx":I
    :cond_28
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getPerceptibleRecentAppList(Lcom/android/server/am/ActivityManagerService;)Ljava/util/Map;
    .registers 7
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityManagerService;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 172
    const/4 v0, 0x0

    .line 174
    .local v0, "taskPackageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 175
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v0, v1

    .line 178
    invoke-static {p0}, Lcom/android/server/am/ProcessUtils;->getMultiWindowStackLocked(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 179
    .local v1, "dockedStack":Lcom/android/server/am/ActivityStack;
    if-eqz v1, :cond_2c

    .line 180
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 181
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_2c

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 182
    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    iget v3, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2c
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->getRecentTasks()Lcom/android/server/am/RecentTasks;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/RecentTasks;->getRawTasks()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_38
    :goto_38
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_70

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 188
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v3, :cond_38

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    if-nez v4, :cond_4d

    .line 189
    goto :goto_38

    .line 192
    :cond_4d
    invoke-static {v3}, Lcom/android/server/am/ProcessUtils;->getTaskPackageNameLocked(Lcom/android/server/am/TaskRecord;)Ljava/lang/String;

    move-result-object v4

    .line 193
    .local v4, "taskPackageName":Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/am/ProcessUtils;->isTaskInMultiWindowStackLocked(Lcom/android/server/am/TaskRecord;)Z

    move-result v5

    if-nez v5, :cond_38

    .line 194
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_38

    const-string v5, "com.android.systemui"

    .line 195
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_66

    .line 196
    goto :goto_38

    .line 199
    :cond_66
    iget v2, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    nop

    .line 202
    .end local v1    # "dockedStack":Lcom/android/server/am/ActivityStack;
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    .end local v4    # "taskPackageName":Ljava/lang/String;
    :cond_70
    monitor-exit p0
    :try_end_71
    .catchall {:try_start_2 .. :try_end_71} :catchall_97

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 204
    const-string v1, "ProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPerceptibleRecentAppList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    return-object v0

    .line 202
    :catchall_97
    move-exception v1

    :try_start_98
    monitor-exit p0
    :try_end_99
    .catchall {:try_start_98 .. :try_end_99} :catchall_97

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public static getPidsForProc(Lcom/android/server/am/ActivityManagerService;Ljava/util/List;)[I
    .registers 7
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityManagerService;",
            "Ljava/util/List<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)[I"
        }
    .end annotation

    .line 529
    .local p1, "procs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ProcessRecord;>;"
    const/4 v0, 0x0

    .line 530
    .local v0, "pids":[I
    monitor-enter p0

    :try_start_2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 531
    if-eqz p1, :cond_2a

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 532
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 533
    .local v1, "size":I
    new-array v2, v1, [I

    move-object v0, v2

    .line 534
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    if-ge v2, v1, :cond_2a

    .line 535
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 536
    .local v3, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v3, :cond_27

    iget v4, v3, Lcom/android/server/am/ProcessRecord;->pid:I

    if-eqz v4, :cond_27

    .line 537
    iget v4, v3, Lcom/android/server/am/ProcessRecord;->pid:I

    aput v4, v0, v2

    .line 534
    .end local v3    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 541
    .end local v1    # "size":I
    .end local v2    # "i":I
    :cond_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2 .. :try_end_2b} :catchall_2f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 542
    return-object v0

    .line 541
    :catchall_2f
    move-exception v1

    :try_start_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public static getProcTotalPss(I)I
    .registers 3
    .param p0, "pid"    # I

    .line 523
    new-instance v0, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v0}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 524
    .local v0, "info":Landroid/os/Debug$MemoryInfo;
    invoke-static {p0, v0}, Landroid/os/Debug;->getMemoryInfo(ILandroid/os/Debug$MemoryInfo;)V

    .line 525
    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v1

    return v1
.end method

.method public static getProcessListByAdj(Lcom/android/server/am/ActivityManagerService;ILjava/util/List;)Ljava/util/List;
    .registers 12
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "minOomAdj"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityManagerService;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation

    .line 496
    .local p2, "whiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 497
    .local v0, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    monitor-enter p0

    :try_start_6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 498
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 499
    .local v1, "NP":I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "ip":I
    :goto_15
    if-ge v3, v1, :cond_54

    .line 500
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 501
    .local v4, "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 502
    .local v5, "NA":I
    move v6, v2

    .local v6, "ia":I
    :goto_28
    if-ge v6, v5, :cond_51

    .line 503
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    .line 504
    .local v7, "app":Lcom/android/server/am/ProcessRecord;
    iget-boolean v8, v7, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-nez v8, :cond_4e

    if-eqz p2, :cond_3f

    iget-object v8, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-interface {p2, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3f

    .line 506
    goto :goto_4e

    .line 508
    :cond_3f
    iget-boolean v8, v7, Lcom/android/server/am/ProcessRecord;->removed:Z

    if-eqz v8, :cond_47

    .line 509
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4e

    .line 510
    :cond_47
    iget v8, v7, Lcom/android/server/am/ProcessRecord;->setAdj:I

    if-lt v8, p1, :cond_4e

    .line 511
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    .end local v7    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_4e
    :goto_4e
    add-int/lit8 v6, v6, 0x1

    goto :goto_28

    .line 499
    .end local v4    # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .end local v5    # "NA":I
    .end local v6    # "ia":I
    :cond_51
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 515
    .end local v1    # "NP":I
    .end local v3    # "ip":I
    :cond_54
    monitor-exit p0
    :try_end_55
    .catchall {:try_start_6 .. :try_end_55} :catchall_59

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 516
    return-object v0

    .line 515
    :catchall_59
    move-exception v1

    :try_start_5a
    monitor-exit p0
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private static getTaskPackageNameLocked(Lcom/android/server/am/TaskRecord;)Ljava/lang/String;
    .registers 3
    .param p0, "task"    # Lcom/android/server/am/TaskRecord;

    .line 238
    const/4 v0, 0x0

    .line 239
    .local v0, "packageName":Ljava/lang/String;
    if-eqz p0, :cond_1f

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 240
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 241
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 243
    :cond_1f
    return-object v0
.end method

.method public static getTaskTopApp(ILcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/ProcessRecord;
    .registers 4
    .param p0, "taskId"    # I
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .line 247
    monitor-enter p1

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 248
    invoke-virtual {p1}, Lcom/android/server/am/ActivityManagerService;->getRecentTasks()Lcom/android/server/am/RecentTasks;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/am/RecentTasks;->getTask(I)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 249
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    invoke-static {v0}, Lcom/android/server/am/ProcessUtils;->getTaskTopAppLocked(Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    monitor-exit p1
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_15

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 250
    .end local v0    # "task":Lcom/android/server/am/TaskRecord;
    :catchall_15
    move-exception v0

    :try_start_16
    monitor-exit p1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method private static getTaskTopAppLocked(Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/ProcessRecord;
    .registers 3
    .param p0, "task"    # Lcom/android/server/am/TaskRecord;

    .line 254
    const/4 v0, 0x0

    .line 255
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz p0, :cond_b

    .line 256
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 257
    .local v1, "topActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_b

    .line 258
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 261
    .end local v1    # "topActivity":Lcom/android/server/am/ActivityRecord;
    :cond_b
    return-object v0
.end method

.method private static getTaskTopAppProcessName(Lcom/android/server/am/TaskRecord;)Ljava/lang/String;
    .registers 4
    .param p0, "task"    # Lcom/android/server/am/TaskRecord;

    .line 277
    if-nez p0, :cond_4

    .line 278
    const/4 v0, 0x0

    return-object v0

    .line 280
    :cond_4
    const/4 v0, 0x0

    .line 281
    .local v0, "processName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 282
    .local v1, "topActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_11

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_11

    .line 283
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    .line 285
    :cond_11
    return-object v0
.end method

.method private static getTaskTopAppUid(Lcom/android/server/am/TaskRecord;)I
    .registers 4
    .param p0, "task"    # Lcom/android/server/am/TaskRecord;

    .line 265
    const/4 v0, -0x1

    .line 266
    .local v0, "uid":I
    if-nez p0, :cond_4

    .line 267
    return v0

    .line 269
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 270
    .local v1, "topActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_12

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_12

    .line 271
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 273
    :cond_12
    return v0
.end method

.method public static getTopRunningPidLocked(Lcom/android/server/am/ActivityManagerService;)I
    .registers 3
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .line 467
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 468
    .local v0, "record":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_11

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_11

    .line 469
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    return v1

    .line 471
    :cond_11
    const/4 v1, 0x0

    return v1
.end method

.method public static getTotalPss([I)I
    .registers 4
    .param p0, "pids"    # [I

    .line 546
    const/4 v0, 0x0

    if-eqz p0, :cond_1a

    array-length v1, p0

    if-lez v1, :cond_1a

    .line 547
    const/4 v1, 0x0

    .line 548
    .local v1, "totalPss":I
    nop

    .local v0, "i":I
    :goto_8
    array-length v2, p0

    if-ge v0, v2, :cond_19

    aget v2, p0, v0

    if-eqz v2, :cond_19

    .line 549
    aget v2, p0, v0

    invoke-static {v2}, Lcom/android/server/am/ProcessUtils;->getProcTotalPss(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 548
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 551
    .end local v0    # "i":I
    :cond_19
    return v1

    .line 553
    .end local v1    # "totalPss":I
    :cond_1a
    return v0
.end method

.method protected static isHomeProcess(Lcom/android/server/am/ProcessRecord;)Z
    .registers 3
    .param p0, "pr"    # Lcom/android/server/am/ProcessRecord;

    .line 487
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerService;

    .line 488
    .local v0, "ams":Lcom/android/server/am/ActivityManagerService;
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_10

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    if-ne p0, v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method public static isLowMemory()Z
    .registers 6

    .line 166
    invoke-static {}, Landroid/os/Process;->getFreeMemory()J

    move-result-wide v0

    .line 167
    .local v0, "freeMemory":J
    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v2

    .line 168
    .local v2, "totalMemory":J
    const-wide/16 v4, 0xa

    mul-long/2addr v4, v0

    cmp-long v4, v4, v2

    if-gez v4, :cond_11

    const/4 v4, 0x1

    goto :goto_12

    :cond_11
    const/4 v4, 0x0

    :goto_12
    return v4
.end method

.method private static isMultiWindowStackLocked(Lcom/android/server/am/ActivityStack;)Z
    .registers 3
    .param p0, "stack"    # Lcom/android/server/am/ActivityStack;

    .line 234
    if-eqz p0, :cond_b

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

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

.method public static isPhoneWorking()Z
    .registers 5

    .line 62
    const/4 v0, 0x1

    .line 63
    .local v0, "isWorking":Z
    const-string/jumbo v1, "ro.radio.noril"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 64
    .local v1, "mWifiOnly":Z
    if-eqz v1, :cond_c

    .line 65
    return v2

    .line 69
    :cond_c
    :try_start_c
    const-string/jumbo v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 70
    .local v2, "phone":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_24

    .line 71
    const-string/jumbo v3, "system"

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephony;->isIdle(Ljava/lang/String;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    move v0, v3

    goto :goto_2c

    .line 73
    :cond_24
    const-string v3, "ProcessManager"

    const-string/jumbo v4, "phone service is Null !"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_2c} :catch_2d

    .line 77
    .end local v2    # "phone":Lcom/android/internal/telephony/ITelephony;
    :goto_2c
    goto :goto_36

    .line 75
    :catch_2d
    move-exception v2

    .line 76
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "ProcessManager"

    const-string/jumbo v4, "phone.isIdle() failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_36
    return v0
.end method

.method public static isProcessHasActivityInOtherTaskLocked(Lcom/android/server/am/ProcessRecord;I)Z
    .registers 6
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p1, "curTaskId"    # I

    .line 151
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2b

    .line 152
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    .line 153
    .local v2, "otherTask":Lcom/android/server/am/TaskRecord;
    if-eqz v2, :cond_28

    iget v3, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq p1, v3, :cond_28

    iget-boolean v3, v2, Lcom/android/server/am/TaskRecord;->inRecents:Z

    if-eqz v3, :cond_28

    .line 155
    invoke-static {v2}, Lcom/android/server/am/ProcessUtils;->isTaskVisibleInRecents(Lcom/android/server/am/TaskRecord;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 156
    const/4 v0, 0x1

    return v0

    .line 151
    .end local v2    # "otherTask":Lcom/android/server/am/TaskRecord;
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 159
    .end local v1    # "i":I
    :cond_2b
    return v0
.end method

.method public static isRemoveTaskDisabled(ILjava/lang/String;Lcom/android/server/am/ActivityManagerService;)Z
    .registers 5
    .param p0, "taskId"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .line 289
    monitor-enter p2

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 290
    invoke-virtual {p2}, Lcom/android/server/am/ActivityManagerService;->getRecentTasks()Lcom/android/server/am/RecentTasks;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/am/RecentTasks;->getTask(I)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 292
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    invoke-static {v0, p1}, Lcom/android/server/am/ProcessUtils;->isRemoveTaskDisabledLocked(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)Z

    move-result v1

    monitor-exit p2
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_15

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 293
    .end local v0    # "task":Lcom/android/server/am/TaskRecord;
    :catchall_15
    move-exception v0

    :try_start_16
    monitor-exit p2
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method private static isRemoveTaskDisabledLocked(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)Z
    .registers 3
    .param p0, "task"    # Lcom/android/server/am/TaskRecord;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 297
    if-eqz p0, :cond_b

    .line 298
    invoke-static {p0}, Lcom/android/server/am/ProcessUtils;->getTaskTopAppProcessName(Lcom/android/server/am/TaskRecord;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    .line 300
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method private static isTaskInMultiWindowStackLocked(Lcom/android/server/am/TaskRecord;)Z
    .registers 5
    .param p0, "task"    # Lcom/android/server/am/TaskRecord;

    .line 224
    const/4 v0, 0x0

    if-eqz p0, :cond_13

    .line 225
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 226
    .local v1, "topActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_13

    .line 227
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getWindowingMode()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_12

    const/4 v0, 0x1

    nop

    :cond_12
    return v0

    .line 230
    .end local v1    # "topActivity":Lcom/android/server/am/ActivityRecord;
    :cond_13
    return v0
.end method

.method private static isTaskVisibleInRecents(Lcom/android/server/am/TaskRecord;)Z
    .registers 5
    .param p0, "task"    # Lcom/android/server/am/TaskRecord;

    .line 475
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 476
    return v0

    .line 477
    :cond_4
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    const/4 v2, 0x1

    if-nez v1, :cond_a

    .line 478
    return v2

    .line 479
    :cond_a
    iget-boolean v1, p0, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 480
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v3, 0x800000

    and-int/2addr v1, v3

    if-nez v1, :cond_1a

    .line 481
    return v2

    .line 483
    :cond_1a
    return v0
.end method

.method public static isVoipWorking()Z
    .registers 1

    .line 82
    const/4 v0, 0x1

    .line 93
    .local v0, "isWorking":Z
    return v0
.end method

.method public static removeAllTasks(Lcom/android/server/am/ProcessManagerService;IILcom/android/server/am/ActivityManagerService;)V
    .registers 9
    .param p0, "pms"    # Lcom/android/server/am/ProcessManagerService;
    .param p1, "userId"    # I
    .param p2, "policy"    # I
    .param p3, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .line 305
    monitor-enter p3

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 306
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 307
    .local v0, "removedTasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {p3}, Lcom/android/server/am/ActivityManagerService;->getRecentTasks()Lcom/android/server/am/RecentTasks;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/RecentTasks;->getRawTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 308
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    iget v3, v2, Lcom/android/server/am/TaskRecord;->userId:I

    if-eq v3, p1, :cond_26

    .line 309
    goto :goto_15

    .line 312
    :cond_26
    invoke-static {v2}, Lcom/android/server/am/ProcessUtils;->getTaskTopAppLocked(Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    .line 313
    .local v3, "app":Lcom/android/server/am/ProcessRecord;
    if-nez v3, :cond_30

    .line 314
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    goto :goto_15

    .line 318
    :cond_30
    iget-boolean v4, v3, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-nez v4, :cond_15

    invoke-virtual {p0, v3, p1, p2}, Lcom/android/server/am/ProcessManagerService;->isInWhiteList(Lcom/android/server/am/ProcessRecord;II)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 319
    goto :goto_15

    .line 322
    :cond_3b
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    .end local v3    # "app":Lcom/android/server/am/ProcessRecord;
    goto :goto_15

    .line 325
    :cond_3f
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_43
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 326
    .restart local v2    # "task":Lcom/android/server/am/TaskRecord;
    invoke-static {v2, p3}, Lcom/android/server/am/ProcessUtils;->removeTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityManagerService;)V

    .line 327
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    goto :goto_43

    .line 328
    .end local v0    # "removedTasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/TaskRecord;>;"
    :cond_53
    monitor-exit p3
    :try_end_54
    .catchall {:try_start_1 .. :try_end_54} :catchall_58

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 329
    return-void

    .line 328
    :catchall_58
    move-exception v0

    :try_start_59
    monitor-exit p3
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public static removeTask(ILcom/android/server/am/ActivityManagerService;)V
    .registers 3
    .param p0, "taskId"    # I
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .line 418
    monitor-enter p1

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 419
    invoke-virtual {p1}, Lcom/android/server/am/ActivityManagerService;->getRecentTasks()Lcom/android/server/am/RecentTasks;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/am/RecentTasks;->getTask(I)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 420
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    invoke-static {v0, p1}, Lcom/android/server/am/ProcessUtils;->removeTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityManagerService;)V

    .line 421
    .end local v0    # "task":Lcom/android/server/am/TaskRecord;
    monitor-exit p1
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_14

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 422
    return-void

    .line 421
    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit p1
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method private static removeTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityManagerService;)V
    .registers 6
    .param p0, "task"    # Lcom/android/server/am/TaskRecord;
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .line 426
    if-nez p0, :cond_3

    .line 427
    return-void

    .line 430
    :cond_3
    const/4 v0, 0x0

    const-string/jumbo v1, "remove-task"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/TaskRecord;->removeTaskActivitiesLocked(ZLjava/lang/String;)V

    .line 433
    invoke-virtual {p1}, Lcom/android/server/am/ActivityManagerService;->getRecentTasks()Lcom/android/server/am/RecentTasks;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/am/RecentTasks;->remove(Lcom/android/server/am/TaskRecord;)V

    .line 434
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->removedFromRecents()V

    .line 436
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3a

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 437
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    .line 438
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 437
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/server/am/ActiveServices;->cleanUpRemovedTaskLocked(Lcom/android/server/am/TaskRecord;Landroid/content/ComponentName;Landroid/content/Intent;)V

    .line 441
    :cond_3a
    invoke-virtual {p1}, Lcom/android/server/am/ActivityManagerService;->getLockTaskController()Lcom/android/server/am/LockTaskController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/am/LockTaskController;->clearLockedTask(Lcom/android/server/am/TaskRecord;)V

    .line 442
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    if-eqz v0, :cond_4a

    .line 443
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 447
    :cond_4a
    const-string v0, "ProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remove task: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    return-void
.end method

.method public static removeTasks(Ljava/util/List;Ljava/util/Set;Lcom/android/server/am/ProcessPolicy;Lcom/android/server/am/ActivityManagerService;Ljava/util/List;)V
    .registers 10
    .param p2, "processPolicy"    # Lcom/android/server/am/ProcessPolicy;
    .param p3, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/server/am/ProcessPolicy;",
            "Lcom/android/server/am/ActivityManagerService;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 334
    .local p0, "taskIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p1, "whiteTaskSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local p4, "whiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_86

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_86

    .line 338
    :cond_a
    monitor-enter p3

    :try_start_b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 340
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 341
    .local v0, "removedTasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {p3}, Lcom/android/server/am/ActivityManagerService;->getRecentTasks()Lcom/android/server/am/RecentTasks;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/RecentTasks;->getRawTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1f
    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_67

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 342
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    if-nez v2, :cond_2e

    .line 343
    goto :goto_1f

    .line 345
    :cond_2e
    invoke-static {v2}, Lcom/android/server/am/ProcessUtils;->getTaskPackageNameLocked(Lcom/android/server/am/TaskRecord;)Ljava/lang/String;

    move-result-object v3

    .line 346
    .local v3, "taskPackageName":Ljava/lang/String;
    iget v4, v2, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {p2, v3, v4}, Lcom/android/server/am/ProcessPolicy;->isLockedApplication(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_1f

    if-eqz p1, :cond_48

    iget v4, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 347
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    :cond_48
    if-eqz p4, :cond_51

    .line 348
    invoke-interface {p4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_51

    .line 349
    goto :goto_1f

    .line 352
    :cond_51
    iget v4, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_66

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_66

    .line 353
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    .end local v3    # "taskPackageName":Ljava/lang/String;
    :cond_66
    goto :goto_1f

    .line 357
    :cond_67
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 358
    .restart local v2    # "task":Lcom/android/server/am/TaskRecord;
    invoke-static {v2, p3}, Lcom/android/server/am/ProcessUtils;->removeTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityManagerService;)V

    .line 359
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    goto :goto_6b

    .line 360
    .end local v0    # "removedTasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/TaskRecord;>;"
    :cond_7b
    monitor-exit p3
    :try_end_7c
    .catchall {:try_start_b .. :try_end_7c} :catchall_80

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 361
    return-void

    .line 360
    :catchall_80
    move-exception v0

    :try_start_81
    monitor-exit p3
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_80

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 335
    :cond_86
    :goto_86
    return-void
.end method

.method public static removeTasksInPackages(Ljava/util/List;ILcom/android/server/am/ProcessPolicy;Lcom/android/server/am/ActivityManagerService;)V
    .registers 9
    .param p1, "userId"    # I
    .param p2, "processPolicy"    # Lcom/android/server/am/ProcessPolicy;
    .param p3, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/android/server/am/ProcessPolicy;",
            "Lcom/android/server/am/ActivityManagerService;",
            ")V"
        }
    .end annotation

    .line 365
    .local p0, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_68

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_68

    .line 369
    :cond_9
    monitor-enter p3

    :try_start_a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 371
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 372
    .local v0, "removedTasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {p3}, Lcom/android/server/am/ActivityManagerService;->getRecentTasks()Lcom/android/server/am/RecentTasks;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/RecentTasks;->getRawTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 373
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    invoke-static {v2}, Lcom/android/server/am/ProcessUtils;->getTaskPackageNameLocked(Lcom/android/server/am/TaskRecord;)Ljava/lang/String;

    move-result-object v3

    .line 374
    .local v3, "taskPackageName":Ljava/lang/String;
    invoke-virtual {p2, v3, p1}, Lcom/android/server/am/ProcessPolicy;->isLockedApplication(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 375
    goto :goto_1e

    .line 378
    :cond_35
    iget v4, v2, Lcom/android/server/am/TaskRecord;->userId:I

    if-ne v4, p1, :cond_48

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_48

    .line 379
    invoke-interface {p0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 380
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    .end local v3    # "taskPackageName":Ljava/lang/String;
    :cond_48
    goto :goto_1e

    .line 384
    :cond_49
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 385
    .restart local v2    # "task":Lcom/android/server/am/TaskRecord;
    invoke-static {v2, p3}, Lcom/android/server/am/ProcessUtils;->removeTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityManagerService;)V

    .line 386
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    goto :goto_4d

    .line 387
    .end local v0    # "removedTasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/TaskRecord;>;"
    :cond_5d
    monitor-exit p3
    :try_end_5e
    .catchall {:try_start_a .. :try_end_5e} :catchall_62

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 388
    return-void

    .line 387
    :catchall_62
    move-exception v0

    :try_start_63
    monitor-exit p3
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 366
    :cond_68
    :goto_68
    return-void
.end method

.method public static setTaskToAvailable(Ljava/lang/String;ILcom/android/server/am/ActivityManagerService;)V
    .registers 6
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .param p2, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .line 391
    monitor-enter p2

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 392
    invoke-virtual {p2}, Lcom/android/server/am/ActivityManagerService;->getRecentTasks()Lcom/android/server/am/RecentTasks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/RecentTasks;->getRawTasks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 393
    .local v1, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v1, :cond_10

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    if-nez v2, :cond_25

    .line 394
    goto :goto_10

    .line 396
    :cond_25
    iget v2, v1, Lcom/android/server/am/TaskRecord;->userId:I

    if-ne v2, p1, :cond_36

    invoke-static {v1}, Lcom/android/server/am/ProcessUtils;->getTaskPackageNameLocked(Lcom/android/server/am/TaskRecord;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 397
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    .line 399
    .end local v1    # "task":Lcom/android/server/am/TaskRecord;
    :cond_36
    goto :goto_10

    .line 400
    :cond_37
    monitor-exit p2
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_3c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 401
    return-void

    .line 400
    :catchall_3c
    move-exception v0

    :try_start_3d
    monitor-exit p2
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public static setTaskToUnavailable(ILcom/android/server/am/ActivityManagerService;)V
    .registers 3
    .param p0, "taskId"    # I
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .line 404
    monitor-enter p1

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 405
    invoke-virtual {p1}, Lcom/android/server/am/ActivityManagerService;->getRecentTasks()Lcom/android/server/am/RecentTasks;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/am/RecentTasks;->getTask(I)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 406
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    invoke-static {v0}, Lcom/android/server/am/ProcessUtils;->setTaskToUnavailableLocked(Lcom/android/server/am/TaskRecord;)V

    .line 407
    .end local v0    # "task":Lcom/android/server/am/TaskRecord;
    monitor-exit p1
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_14

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 408
    return-void

    .line 407
    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit p1
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method private static setTaskToUnavailableLocked(Lcom/android/server/am/TaskRecord;)V
    .registers 3
    .param p0, "task"    # Lcom/android/server/am/TaskRecord;

    .line 411
    if-eqz p0, :cond_b

    .line 412
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    .line 413
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 415
    :cond_b
    return-void
.end method
