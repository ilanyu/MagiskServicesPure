.class Lcom/android/server/am/ProcessRecordInjector;
.super Ljava/lang/Object;
.source "ProcessRecordInjector.java"


# static fields
.field private static final DEVICE:Ljava/lang/String;

.field private static final MAX_PREVIOUS_APP_COUNT:I

.field private static final MAX_PREVIOUS_TIME:I = 0xea60

.field private static final PREVIOUS_APP_MAX_ADJ:I

.field public static final PREVIOUS_APP_MIN_ADJ:I = 0x2bc

.field private static final PROCESS_BUFFER_SIZE:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "ProcessRecordInjector"

.field private static final sCachedProcessList:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lmiui/mqsas/sdk/event/KillProcessEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final sDeathProcessList:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lmiui/mqsas/sdk/event/KillProcessEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final sKillingProcessList:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lmiui/mqsas/sdk/event/KillProcessEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLock:Ljava/lang/Object;

.field private static sPidsSelfLocked:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sProcessManagerInternal:Lmiui/process/ProcessManagerInternal;

.field private static sSystemBootCompleted:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/ProcessRecordInjector;->sPidsSelfLocked:Landroid/util/SparseArray;

    .line 33
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lcom/android/server/am/ProcessRecordInjector;->sKillingProcessList:Landroid/util/SparseArray;

    .line 37
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lcom/android/server/am/ProcessRecordInjector;->sDeathProcessList:Landroid/util/SparseArray;

    .line 41
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lcom/android/server/am/ProcessRecordInjector;->sCachedProcessList:Landroid/util/SparseArray;

    .line 44
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/android/server/am/ProcessRecordInjector;->sLock:Ljava/lang/Object;

    .line 49
    sput-object v0, Lcom/android/server/am/ProcessRecordInjector;->sProcessManagerInternal:Lmiui/process/ProcessManagerInternal;

    .line 51
    const-string/jumbo v0, "ro.product.device"

    const-string v1, "UNKNOWN"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ProcessRecordInjector;->DEVICE:Ljava/lang/String;

    .line 55
    invoke-static {}, Lcom/android/server/am/ProcessRecordInjector;->isLowMemoryDevice()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3d

    invoke-static {}, Lcom/android/server/am/ProcessRecordInjector;->isLowestMemoryDevice()Z

    move-result v0

    if-eqz v0, :cond_3b

    move v0, v1

    goto :goto_3e

    :cond_3b
    const/4 v0, 0x2

    goto :goto_3e

    :cond_3d
    const/4 v0, 0x5

    :goto_3e
    sput v0, Lcom/android/server/am/ProcessRecordInjector;->MAX_PREVIOUS_APP_COUNT:I

    .line 56
    const/16 v0, 0x2bc

    sget v2, Lcom/android/server/am/ProcessRecordInjector;->MAX_PREVIOUS_APP_COUNT:I

    add-int/2addr v0, v2

    sub-int/2addr v0, v1

    sput v0, Lcom/android/server/am/ProcessRecordInjector;->PREVIOUS_APP_MAX_ADJ:I

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkNativeKillInList(ILjava/lang/String;)V
    .registers 7
    .param p0, "killedPid"    # I
    .param p1, "realReason"    # Ljava/lang/String;

    .line 240
    sget-object v0, Lcom/android/server/am/ProcessRecordInjector;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 241
    :try_start_3
    sget-object v1, Lcom/android/server/am/ProcessRecordInjector;->sCachedProcessList:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/mqsas/sdk/event/KillProcessEvent;

    .line 242
    .local v1, "event":Lmiui/mqsas/sdk/event/KillProcessEvent;
    if-nez v1, :cond_16

    .line 243
    sget-object v2, Lcom/android/server/am/ProcessRecordInjector;->sDeathProcessList:Landroid/util/SparseArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/mqsas/sdk/event/KillProcessEvent;

    move-object v1, v2

    .line 246
    :cond_16
    if-eqz v1, :cond_2a

    .line 248
    invoke-virtual {v1}, Lmiui/mqsas/sdk/event/KillProcessEvent;->getPolicy()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "other"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 249
    invoke-virtual {v1, p1}, Lmiui/mqsas/sdk/event/KillProcessEvent;->setPolicy(Ljava/lang/String;)V

    .line 250
    monitor-exit v0

    return-void

    .line 254
    :cond_2a
    const-string v2, "ProcessRecordInjector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "oops, missing real event:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    .end local v1    # "event":Lmiui/mqsas/sdk/event/KillProcessEvent;
    monitor-exit v0

    .line 256
    return-void

    .line 255
    :catchall_4b
    move-exception v1

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_3 .. :try_end_4d} :catchall_4b

    throw v1
.end method

.method private static getProcessManagerInternal()Lmiui/process/ProcessManagerInternal;
    .registers 2

    .line 60
    sget-object v0, Lcom/android/server/am/ProcessRecordInjector;->sProcessManagerInternal:Lmiui/process/ProcessManagerInternal;

    if-nez v0, :cond_1a

    .line 61
    const-class v0, Lcom/android/server/am/ProcessRecordInjector;

    monitor-enter v0

    .line 62
    :try_start_7
    sget-object v1, Lcom/android/server/am/ProcessRecordInjector;->sProcessManagerInternal:Lmiui/process/ProcessManagerInternal;

    if-nez v1, :cond_15

    .line 63
    const-class v1, Lmiui/process/ProcessManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/process/ProcessManagerInternal;

    sput-object v1, Lcom/android/server/am/ProcessRecordInjector;->sProcessManagerInternal:Lmiui/process/ProcessManagerInternal;

    .line 65
    :cond_15
    monitor-exit v0

    goto :goto_1a

    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    throw v1

    .line 67
    :cond_1a
    :goto_1a
    sget-object v0, Lcom/android/server/am/ProcessRecordInjector;->sProcessManagerInternal:Lmiui/process/ProcessManagerInternal;

    return-object v0
.end method

.method public static getProcessNameByPid(I)Ljava/lang/String;
    .registers 4
    .param p0, "pid"    # I

    .line 203
    sget-object v0, Lcom/android/server/am/ProcessRecordInjector;->sPidsSelfLocked:Landroid/util/SparseArray;

    if-nez v0, :cond_10

    .line 204
    const-string v0, "activity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerService;

    .line 205
    .local v0, "ams":Lcom/android/server/am/ActivityManagerService;
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    sput-object v1, Lcom/android/server/am/ProcessRecordInjector;->sPidsSelfLocked:Landroid/util/SparseArray;

    .line 207
    .end local v0    # "ams":Lcom/android/server/am/ActivityManagerService;
    :cond_10
    sget-object v0, Lcom/android/server/am/ProcessRecordInjector;->sPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v0

    .line 208
    :try_start_13
    sget-object v1, Lcom/android/server/am/ProcessRecordInjector;->sPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 209
    .local v1, "processRecord":Lcom/android/server/am/ProcessRecord;
    if-eqz v1, :cond_21

    .line 210
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    monitor-exit v0

    return-object v2

    .line 212
    .end local v1    # "processRecord":Lcom/android/server/am/ProcessRecord;
    :cond_21
    monitor-exit v0

    .line 213
    const/4 v0, 0x0

    return-object v0

    .line 212
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_13 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public static isAppInterestingToUser(I)Z
    .registers 4
    .param p0, "pid"    # I

    .line 217
    sget-object v0, Lcom/android/server/am/ProcessRecordInjector;->sPidsSelfLocked:Landroid/util/SparseArray;

    if-nez v0, :cond_10

    .line 218
    const-string v0, "activity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerService;

    .line 219
    .local v0, "ams":Lcom/android/server/am/ActivityManagerService;
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    sput-object v1, Lcom/android/server/am/ProcessRecordInjector;->sPidsSelfLocked:Landroid/util/SparseArray;

    .line 221
    .end local v0    # "ams":Lcom/android/server/am/ActivityManagerService;
    :cond_10
    sget-object v0, Lcom/android/server/am/ProcessRecordInjector;->sPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v0

    .line 222
    :try_start_13
    sget-object v1, Lcom/android/server/am/ProcessRecordInjector;->sPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 223
    .local v1, "processRecord":Lcom/android/server/am/ProcessRecord;
    if-eqz v1, :cond_23

    .line 224
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->isInterestingToUserLocked()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 226
    .end local v1    # "processRecord":Lcom/android/server/am/ProcessRecord;
    :cond_23
    monitor-exit v0

    .line 227
    const/4 v0, 0x0

    return v0

    .line 226
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_13 .. :try_end_28} :catchall_26

    throw v1
.end method

.method public static isLowMemoryDevice()Z
    .registers 6

    .line 262
    sget-object v0, Lcom/android/server/am/ProcessRecordInjector;->DEVICE:Ljava/lang/String;

    const-string v1, "begonia"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const-wide/32 v2, 0x40000000

    if-nez v0, :cond_18

    sget-object v0, Lcom/android/server/am/ProcessRecordInjector;->DEVICE:Ljava/lang/String;

    const-string v4, "begoniain"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 263
    :cond_18
    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v4

    div-long/2addr v4, v2

    long-to-int v0, v4

    const/4 v4, 0x4

    if-ge v0, v4, :cond_22

    .line 264
    return v1

    .line 265
    :cond_22
    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v4

    div-long/2addr v4, v2

    long-to-int v0, v4

    const/4 v2, 0x3

    if-ge v0, v2, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v1, 0x0

    :goto_2d
    return v1
.end method

.method public static isLowestMemoryDevice()Z
    .registers 6

    .line 270
    sget-object v0, Lcom/android/server/am/ProcessRecordInjector;->DEVICE:Ljava/lang/String;

    const-string v1, "begonia"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const-wide/32 v2, 0x40000000

    if-nez v0, :cond_18

    sget-object v0, Lcom/android/server/am/ProcessRecordInjector;->DEVICE:Ljava/lang/String;

    const-string v4, "begoniain"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 271
    :cond_18
    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v4

    div-long/2addr v4, v2

    long-to-int v0, v4

    const/4 v4, 0x4

    if-ge v0, v4, :cond_22

    .line 272
    return v1

    .line 273
    :cond_22
    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v4

    div-long/2addr v4, v2

    long-to-int v0, v4

    const/4 v2, 0x2

    if-ge v0, v2, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v1, 0x0

    :goto_2d
    return v1
.end method

.method public static isPreviousApp(Lcom/android/server/am/ProcessRecord;IJ)Z
    .registers 8
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p1, "curPreviousAdj"    # I
    .param p2, "now"    # J

    .line 235
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    sget v0, Lcom/android/server/am/ProcessRecordInjector;->PREVIOUS_APP_MAX_ADJ:I

    if-gt p1, v0, :cond_19

    iget-wide v0, p0, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    sub-long v0, p2, v0

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-gtz v0, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    return v0
.end method

.method public static isSystemBootCompleted()Z
    .registers 2

    .line 196
    sget-boolean v0, Lcom/android/server/am/ProcessRecordInjector;->sSystemBootCompleted:Z

    if-nez v0, :cond_13

    .line 197
    const-string v0, "1"

    const-string/jumbo v1, "sys.boot_completed"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ProcessRecordInjector;->sSystemBootCompleted:Z

    .line 199
    :cond_13
    sget-boolean v0, Lcom/android/server/am/ProcessRecordInjector;->sSystemBootCompleted:Z

    return v0
.end method

.method public static reportBinderDied(Lcom/android/server/am/ProcessRecord;)V
    .registers 5
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 112
    if-eqz p0, :cond_f

    .line 113
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    .line 114
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->isInterestingToUserLocked()Z

    move-result v3

    .line 113
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/am/ProcessRecordInjector;->reportBinderDied(Ljava/lang/String;IIZ)V

    .line 116
    :cond_f
    return-void
.end method

.method public static reportBinderDied(Ljava/lang/String;IIZ)V
    .registers 8
    .param p0, "processName"    # Ljava/lang/String;
    .param p1, "killedPid"    # I
    .param p2, "processAdj"    # I
    .param p3, "interesting"    # Z

    .line 120
    sget-object v0, Lcom/android/server/am/ProcessRecordInjector;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 121
    :try_start_3
    sget-object v1, Lcom/android/server/am/ProcessRecordInjector;->sKillingProcessList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/mqsas/sdk/event/KillProcessEvent;

    .line 122
    .local v1, "event":Lmiui/mqsas/sdk/event/KillProcessEvent;
    if-nez v1, :cond_29

    .line 124
    new-instance v2, Lmiui/mqsas/sdk/event/KillProcessEvent;

    invoke-direct {v2}, Lmiui/mqsas/sdk/event/KillProcessEvent;-><init>()V

    move-object v1, v2

    .line 125
    const-string/jumbo v2, "other"

    invoke-virtual {v1, v2}, Lmiui/mqsas/sdk/event/KillProcessEvent;->setPolicy(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v1, p0}, Lmiui/mqsas/sdk/event/KillProcessEvent;->setKilledProc(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v1, p2}, Lmiui/mqsas/sdk/event/KillProcessEvent;->setProcAdj(I)V

    .line 128
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lmiui/mqsas/sdk/event/KillProcessEvent;->setKilledTime(J)V

    .line 129
    invoke-virtual {v1, p3}, Lmiui/mqsas/sdk/event/KillProcessEvent;->setInterestingToUser(Z)V

    .line 131
    :cond_29
    sget-object v2, Lcom/android/server/am/ProcessRecordInjector;->sDeathProcessList:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 132
    .end local v1    # "event":Lmiui/mqsas/sdk/event/KillProcessEvent;
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_33

    .line 134
    invoke-static {p0}, Lcom/android/server/am/FindDeviceAliveChecker;->postCheckFindDeviceAliveDelayed(Ljava/lang/String;)V

    .line 135
    return-void

    .line 132
    :catchall_33
    move-exception v1

    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v1
.end method

.method public static reportCleanUpAppRecord(Lcom/android/server/am/ProcessRecord;)V
    .registers 6
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 139
    if-eqz p0, :cond_18

    .line 140
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    iget v3, p0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    .line 141
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->isInterestingToUserLocked()Z

    move-result v4

    .line 140
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/am/ProcessRecordInjector;->reportCleanUpAppRecord(Ljava/lang/String;IIIZ)V

    .line 143
    invoke-static {}, Lcom/android/server/am/ProcessRecordInjector;->getProcessManagerInternal()Lmiui/process/ProcessManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmiui/process/ProcessManagerInternal;->onCleanUpApplicationRecord(Ljava/lang/Object;)V

    .line 145
    :cond_18
    return-void
.end method

.method public static reportCleanUpAppRecord(Ljava/lang/String;IIIZ)V
    .registers 11
    .param p0, "processName"    # Ljava/lang/String;
    .param p1, "killedPid"    # I
    .param p2, "processAdj"    # I
    .param p3, "procState"    # I
    .param p4, "interesting"    # Z

    .line 149
    sget-object v0, Lcom/android/server/am/ProcessRecordInjector;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 150
    :try_start_3
    sget-object v1, Lcom/android/server/am/ProcessRecordInjector;->sKillingProcessList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/mqsas/sdk/event/KillProcessEvent;

    .line 151
    .local v1, "killingProcess":Lmiui/mqsas/sdk/event/KillProcessEvent;
    sget-object v2, Lcom/android/server/am/ProcessRecordInjector;->sDeathProcessList:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/mqsas/sdk/event/KillProcessEvent;

    .line 152
    .local v2, "deathProcess":Lmiui/mqsas/sdk/event/KillProcessEvent;
    if-eqz v1, :cond_20

    .line 153
    sget-object v3, Lcom/android/server/am/ProcessRecordInjector;->sKillingProcessList:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 154
    sget-object v3, Lcom/android/server/am/ProcessRecordInjector;->sCachedProcessList:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_45

    .line 156
    :cond_20
    if-nez v2, :cond_40

    .line 157
    new-instance v3, Lmiui/mqsas/sdk/event/KillProcessEvent;

    invoke-direct {v3}, Lmiui/mqsas/sdk/event/KillProcessEvent;-><init>()V

    move-object v2, v3

    .line 158
    const-string v3, "exception"

    invoke-virtual {v2, v3}, Lmiui/mqsas/sdk/event/KillProcessEvent;->setPolicy(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v2, p0}, Lmiui/mqsas/sdk/event/KillProcessEvent;->setKilledProc(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v2, p2}, Lmiui/mqsas/sdk/event/KillProcessEvent;->setProcAdj(I)V

    .line 161
    invoke-virtual {v2, p3}, Lmiui/mqsas/sdk/event/KillProcessEvent;->setProcState(I)V

    .line 162
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lmiui/mqsas/sdk/event/KillProcessEvent;->setKilledTime(J)V

    .line 163
    invoke-virtual {v2, p4}, Lmiui/mqsas/sdk/event/KillProcessEvent;->setInterestingToUser(Z)V

    .line 165
    :cond_40
    sget-object v3, Lcom/android/server/am/ProcessRecordInjector;->sCachedProcessList:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 167
    :goto_45
    if-eqz v2, :cond_4c

    .line 168
    sget-object v3, Lcom/android/server/am/ProcessRecordInjector;->sDeathProcessList:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 171
    :cond_4c
    sget-object v3, Lcom/android/server/am/ProcessRecordInjector;->sCachedProcessList:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/16 v4, 0x1e

    if-lt v3, v4, :cond_87

    invoke-static {}, Lcom/android/server/am/ProcessRecordInjector;->isSystemBootCompleted()Z

    move-result v3

    if-eqz v3, :cond_87

    .line 172
    const-string v3, "ProcessRecordInjector"

    const-string v4, "Begin to report kill process events..."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v3, "events":Ljava/util/List;, "Ljava/util/List<Lmiui/mqsas/sdk/event/KillProcessEvent;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_69
    sget-object v5, Lcom/android/server/am/ProcessRecordInjector;->sCachedProcessList:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_7f

    .line 175
    sget-object v5, Lcom/android/server/am/ProcessRecordInjector;->sCachedProcessList:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/mqsas/sdk/event/KillProcessEvent;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    add-int/lit8 v4, v4, 0x1

    goto :goto_69

    .line 177
    .end local v4    # "i":I
    :cond_7f
    sget-object v4, Lcom/android/server/am/ProcessRecordInjector;->sCachedProcessList:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 179
    invoke-static {v3}, Lcom/android/server/am/ProcessRecordInjector;->reportKillProcessEvents(Ljava/util/List;)V

    .line 181
    .end local v1    # "killingProcess":Lmiui/mqsas/sdk/event/KillProcessEvent;
    .end local v2    # "deathProcess":Lmiui/mqsas/sdk/event/KillProcessEvent;
    .end local v3    # "events":Ljava/util/List;, "Ljava/util/List<Lmiui/mqsas/sdk/event/KillProcessEvent;>;"
    :cond_87
    monitor-exit v0

    .line 182
    return-void

    .line 181
    :catchall_89
    move-exception v1

    monitor-exit v0
    :try_end_8b
    .catchall {:try_start_3 .. :try_end_8b} :catchall_89

    throw v1
.end method

.method public static reportKillProcessEvent(IILjava/lang/String;)V
    .registers 11
    .param p0, "killerPid"    # I
    .param p1, "killedPid"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 95
    const/4 v0, 0x0

    .line 96
    .local v0, "processName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 97
    .local v1, "interesting":Z
    if-ne p0, p1, :cond_8

    .line 98
    const-string/jumbo p2, "killself"

    goto :goto_16

    .line 100
    :cond_8
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 101
    invoke-static {p0}, Lcom/android/server/am/ProcessRecordInjector;->getProcessNameByPid(I)Ljava/lang/String;

    move-result-object p2

    .line 103
    :cond_12
    invoke-static {p1}, Lcom/android/server/am/ProcessRecordInjector;->isAppInterestingToUser(I)Z

    move-result v1

    .line 105
    :goto_16
    invoke-static {p1}, Lcom/android/server/am/ProcessRecordInjector;->getProcessNameByPid(I)Ljava/lang/String;

    move-result-object v0

    .line 106
    const/4 v4, -0x1

    const v5, 0x7fffffff

    move-object v2, v0

    move v3, p1

    move-object v6, p2

    move v7, v1

    invoke-static/range {v2 .. v7}, Lcom/android/server/am/ProcessRecordInjector;->reportKillProcessEvent(Ljava/lang/String;IIILjava/lang/String;Z)V

    .line 108
    return-void
.end method

.method public static reportKillProcessEvent(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .registers 8
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p1, "reason"    # Ljava/lang/String;

    .line 71
    if-eqz p0, :cond_12

    .line 72
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    iget v3, p0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    .line 73
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->isInterestingToUserLocked()Z

    move-result v5

    .line 72
    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ProcessRecordInjector;->reportKillProcessEvent(Ljava/lang/String;IIILjava/lang/String;Z)V

    .line 75
    :cond_12
    return-void
.end method

.method public static reportKillProcessEvent(Ljava/lang/String;IIILjava/lang/String;Z)V
    .registers 10
    .param p0, "processName"    # Ljava/lang/String;
    .param p1, "killedPid"    # I
    .param p2, "procState"    # I
    .param p3, "processAdj"    # I
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "interesting"    # Z

    .line 80
    sget-object v0, Lcom/android/server/am/ProcessRecordInjector;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 81
    :try_start_3
    new-instance v1, Lmiui/mqsas/sdk/event/KillProcessEvent;

    invoke-direct {v1}, Lmiui/mqsas/sdk/event/KillProcessEvent;-><init>()V

    .line 82
    .local v1, "event":Lmiui/mqsas/sdk/event/KillProcessEvent;
    invoke-virtual {v1, p4}, Lmiui/mqsas/sdk/event/KillProcessEvent;->setKilledReason(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v1, p0}, Lmiui/mqsas/sdk/event/KillProcessEvent;->setKilledProc(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v1, p2}, Lmiui/mqsas/sdk/event/KillProcessEvent;->setProcState(I)V

    .line 85
    invoke-virtual {v1, p3}, Lmiui/mqsas/sdk/event/KillProcessEvent;->setProcAdj(I)V

    .line 86
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lmiui/mqsas/sdk/event/KillProcessEvent;->setKilledTime(J)V

    .line 87
    invoke-virtual {v1, p5}, Lmiui/mqsas/sdk/event/KillProcessEvent;->setInterestingToUser(Z)V

    .line 88
    sget-object v2, Lcom/android/server/am/ProcessRecordInjector;->sKillingProcessList:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 89
    .end local v1    # "event":Lmiui/mqsas/sdk/event/KillProcessEvent;
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_2c

    .line 91
    invoke-static {}, Lcom/android/server/am/ProcessRecordInjector;->getProcessManagerInternal()Lmiui/process/ProcessManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p4, p0, p1}, Lmiui/process/ProcessManagerInternal;->recordKillProcessEventIfNeeded(Ljava/lang/String;Ljava/lang/String;I)V

    .line 92
    return-void

    .line 89
    :catchall_2c
    move-exception v1

    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method private static reportKillProcessEvents(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiui/mqsas/sdk/event/KillProcessEvent;",
            ">;)V"
        }
    .end annotation

    .line 185
    .local p0, "events":Ljava/util/List;, "Ljava/util/List<Lmiui/mqsas/sdk/event/KillProcessEvent;>;"
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v0, p0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 187
    .local v0, "reportEvents":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Lmiui/mqsas/sdk/event/KillProcessEvent;>;"
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/am/ProcessRecordInjector$1;

    invoke-direct {v2, v0}, Lcom/android/server/am/ProcessRecordInjector$1;-><init>(Landroid/content/pm/ParceledListSlice;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 193
    return-void
.end method

.method public static updateProcessForegroundLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 3
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 231
    invoke-static {}, Lcom/android/server/am/ProcessRecordInjector;->getProcessManagerInternal()Lmiui/process/ProcessManagerInternal;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v1}, Lmiui/process/ProcessManagerInternal;->updateProcessForegroundLocked(I)V

    .line 232
    return-void
.end method
