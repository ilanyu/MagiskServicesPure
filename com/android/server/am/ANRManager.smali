.class public Lcom/android/server/am/ANRManager;
.super Ljava/lang/Object;
.source "ANRManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ANRManager$WorkHandler;
    }
.end annotation


# static fields
.field private static final ANR_TYPE_BROADCAST:Ljava/lang/String; = "broadcast"

.field private static final ANR_TYPE_INPUT:Ljava/lang/String; = "input"

.field private static final ANR_TYPE_PROVIDER:Ljava/lang/String; = "provider"

.field private static final ANR_TYPE_SERVICE:Ljava/lang/String; = "service"

.field static final BROADCAST_TIMEOUT_HALF_MSG:I = 0x3f4

.field static final DEFAULT_DROPBOX_MAX_SIZE:I = 0x30000

.field public static final DEFAULT_MAX_FILES:I

.field public static final DEFAULT_QUOTA_KB:I

.field static final DROPBOX_MAX_SIZE:I

.field static final ENABLE_HALF_ANR_STACK:Z

.field static final INPUT_TIMEOUT_HALF_MSG:I = 0x3f6

.field static final PROVIDER_TIMEOUT_HALF_MSG:I = 0x3f5

.field private static final REASON_BROADCAST_ANR:Ljava/lang/String; = "Broadcast of Intent"

.field private static final REASON_INPUT_ANR:Ljava/lang/String; = "Input dispatching timed out"

.field private static final REASON_SERVICE_ANR:Ljava/lang/String; = "executing service"

.field static final SERVICE_TIMEOUT_HALF_MSG:I = 0x3f3

.field private static final TAG:Ljava/lang/String; = "ANRManager"

.field private static sActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private static sAnrFileDateFormat:Ljava/text/SimpleDateFormat;

.field private static volatile sHandler:Lcom/android/server/am/ANRManager$WorkHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 35
    const-string/jumbo v0, "persist.enable_anr_half"

    .line 36
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ANRManager;->ENABLE_HALF_ANR_STACK:Z

    .line 40
    sget-boolean v0, Lcom/android/server/am/ANRManager;->ENABLE_HALF_ANR_STACK:Z

    if-eqz v0, :cond_12

    const v0, 0xc800

    goto :goto_14

    :cond_12
    const/16 v0, 0x1400

    :goto_14
    sput v0, Lcom/android/server/am/ANRManager;->DEFAULT_QUOTA_KB:I

    .line 42
    sget-boolean v0, Lcom/android/server/am/ANRManager;->ENABLE_HALF_ANR_STACK:Z

    if-eqz v0, :cond_1d

    const/16 v0, 0x1388

    goto :goto_1f

    :cond_1d
    const/16 v0, 0x3e8

    :goto_1f
    sput v0, Lcom/android/server/am/ANRManager;->DEFAULT_MAX_FILES:I

    .line 45
    sget-boolean v0, Lcom/android/server/am/ANRManager;->ENABLE_HALF_ANR_STACK:Z

    if-eqz v0, :cond_28

    const/high16 v0, 0x60000

    goto :goto_2a

    :cond_28
    const/high16 v0, 0x30000

    :goto_2a
    sput v0, Lcom/android/server/am/ANRManager;->DROPBOX_MAX_SIZE:I

    .line 47
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd-HH-mm-ss-SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/ANRManager;->sAnrFileDateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addTextToDropBox(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p0, "dataFile"    # Ljava/io/File;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "eventType"    # Ljava/lang/String;

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_half_anr_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, "dropboxTag":Ljava/lang/String;
    sget-object v1, Lcom/android/server/am/ANRManager;->sActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v2, "dropbox"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/DropBoxManager;

    .line 273
    .local v1, "dbox":Landroid/os/DropBoxManager;
    if-eqz v1, :cond_6c

    invoke-virtual {v1, v0}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_29

    goto :goto_6c

    .line 275
    :cond_29
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v2, 0x400

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 276
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string v2, "ANRManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add stack to dropbox, tag:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", type: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    new-instance v8, Lcom/android/server/am/ANRManager$1;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Half anr time dump: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v8

    move-object v5, p0

    move-object v6, v1

    move-object v7, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/ANRManager$1;-><init>(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/io/File;Landroid/os/DropBoxManager;Ljava/lang/String;)V

    .line 294
    .local v2, "worker":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 295
    return-void

    .line 273
    .end local v2    # "worker":Ljava/lang/Thread;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_6c
    :goto_6c
    return-void
.end method

.method static cancelScheduleBroadcastTimeoutHalf(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastQueue;)V
    .registers 4
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "bq"    # Lcom/android/server/am/BroadcastQueue;

    .line 130
    sget-boolean v0, Lcom/android/server/am/ANRManager;->ENABLE_HALF_ANR_STACK:Z

    if-nez v0, :cond_5

    .line 131
    return-void

    .line 133
    :cond_5
    invoke-static {p0}, Lcom/android/server/am/ANRManager;->checkInit(Lcom/android/server/am/ActivityManagerService;)V

    .line 134
    sget-object v0, Lcom/android/server/am/ANRManager;->sHandler:Lcom/android/server/am/ANRManager$WorkHandler;

    const/16 v1, 0x3f4

    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/ANRManager$WorkHandler;->removeMessages(ILjava/lang/Object;)V

    .line 135
    return-void
.end method

.method static cancelScheduleProviderTimeoutHalf(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)V
    .registers 4
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 148
    sget-boolean v0, Lcom/android/server/am/ANRManager;->ENABLE_HALF_ANR_STACK:Z

    if-nez v0, :cond_5

    .line 149
    return-void

    .line 151
    :cond_5
    invoke-static {p0}, Lcom/android/server/am/ANRManager;->checkInit(Lcom/android/server/am/ActivityManagerService;)V

    .line 152
    sget-object v0, Lcom/android/server/am/ANRManager;->sHandler:Lcom/android/server/am/ANRManager$WorkHandler;

    const/16 v1, 0x3f5

    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/ANRManager$WorkHandler;->removeMessages(ILjava/lang/Object;)V

    .line 153
    return-void
.end method

.method static cancelScheduleServiceTimeoutHalf(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)V
    .registers 4
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 112
    sget-boolean v0, Lcom/android/server/am/ANRManager;->ENABLE_HALF_ANR_STACK:Z

    if-nez v0, :cond_5

    .line 113
    return-void

    .line 115
    :cond_5
    invoke-static {p0}, Lcom/android/server/am/ANRManager;->checkInit(Lcom/android/server/am/ActivityManagerService;)V

    .line 116
    sget-object v0, Lcom/android/server/am/ANRManager;->sHandler:Lcom/android/server/am/ANRManager$WorkHandler;

    const/16 v1, 0x3f3

    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/ANRManager$WorkHandler;->removeMessages(ILjava/lang/Object;)V

    .line 117
    return-void
.end method

.method static checkInit(Lcom/android/server/am/ActivityManagerService;)V
    .registers 4
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .line 91
    sget-object v0, Lcom/android/server/am/ANRManager;->sHandler:Lcom/android/server/am/ANRManager$WorkHandler;

    if-nez v0, :cond_1f

    .line 92
    const-class v0, Lcom/android/server/am/ANRManager;

    monitor-enter v0

    .line 93
    :try_start_7
    sget-object v1, Lcom/android/server/am/ANRManager;->sHandler:Lcom/android/server/am/ANRManager$WorkHandler;

    if-nez v1, :cond_1a

    .line 94
    new-instance v1, Lcom/android/server/am/ANRManager$WorkHandler;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/am/ANRManager$WorkHandler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/android/server/am/ANRManager;->sHandler:Lcom/android/server/am/ANRManager$WorkHandler;

    .line 95
    sput-object p0, Lcom/android/server/am/ANRManager;->sActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 97
    :cond_1a
    monitor-exit v0

    goto :goto_1f

    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw v1

    .line 99
    :cond_1f
    :goto_1f
    return-void
.end method

.method static dumpStackTracesLite(ILjava/lang/String;)Ljava/io/File;
    .registers 7
    .param p0, "pid"    # I
    .param p1, "type"    # Ljava/lang/String;

    .line 233
    invoke-static {p0}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "packageName":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 235
    .local v1, "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-eq v2, p0, :cond_22

    .line 237
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    :cond_22
    const-string v2, "ANRManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "start dumpStackTracesLite, pids:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v1, v3, v3, v3}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(ZLjava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;Ljava/util/ArrayList;)Ljava/io/File;

    .line 245
    invoke-static {v0, p1, v2}, Lcom/android/server/am/ANRManager;->renameTraceFile(Ljava/lang/String;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v2

    return-object v2
.end method

.method static dumpStackTracesLite(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p1, "type"    # Ljava/lang/String;

    .line 226
    if-eqz p0, :cond_e

    iget v0, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    if-nez v0, :cond_7

    goto :goto_e

    .line 229
    :cond_7
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v0, p1}, Lcom/android/server/am/ANRManager;->dumpStackTracesLite(ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 227
    :cond_e
    :goto_e
    const/4 v0, 0x0

    return-object v0
.end method

.method static getDropBoxTag(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "process"    # Lcom/android/server/am/ProcessRecord;
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "eventType"    # Ljava/lang/String;

    .line 298
    const-string v0, "anr"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 301
    :cond_21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/android/server/am/ANRManager;->processClass(Lcom/android/server/am/ProcessRecord;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static onANR(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;)V
    .registers 12
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "process"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "activity"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "parent"    # Lcom/android/server/am/ActivityRecord;
    .param p4, "subject"    # Ljava/lang/String;
    .param p5, "report"    # Ljava/lang/String;
    .param p6, "logFile"    # Ljava/io/File;
    .param p7, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;
    .param p8, "headline"    # Ljava/lang/String;

    .line 208
    sget-boolean v0, Lcom/android/server/am/ANRManager;->ENABLE_HALF_ANR_STACK:Z

    if-eqz v0, :cond_37

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_37

    .line 212
    :cond_b
    const-string v0, ""

    .line 213
    .local v0, "type":Ljava/lang/String;
    const-string v1, "Input dispatching timed out"

    invoke-virtual {p5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 214
    const-string v0, "input"

    goto :goto_2e

    .line 215
    :cond_18
    const-string v1, "executing service"

    invoke-virtual {p5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 216
    const-string/jumbo v0, "service"

    goto :goto_2e

    .line 217
    :cond_24
    const-string v1, "Broadcast of Intent"

    invoke-virtual {p5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 218
    const-string v0, "broadcast"

    .line 222
    :cond_2e
    :goto_2e
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/android/server/am/ANRManager;->renameTraceFile(Ljava/lang/String;Ljava/lang/String;Z)Ljava/io/File;

    .line 223
    return-void

    .line 209
    .end local v0    # "type":Ljava/lang/String;
    :cond_37
    :goto_37
    return-void
.end method

.method static onBroadcastTimeoutHalf(Lcom/android/server/am/BroadcastQueue;)V
    .registers 9
    .param p0, "bq"    # Lcom/android/server/am/BroadcastQueue;

    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    sget-object v1, Lcom/android/server/am/ANRManager;->sActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 173
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastRecord;

    .line 174
    .local v2, "r":Lcom/android/server/am/BroadcastRecord;
    iget-object v3, v2, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    iget v4, v2, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 175
    .local v3, "curReceiver":Ljava/lang/Object;
    instance-of v4, v3, Lcom/android/server/am/BroadcastFilter;

    if-eqz v4, :cond_49

    .line 176
    move-object v4, v3

    check-cast v4, Lcom/android/server/am/BroadcastFilter;

    .line 177
    .local v4, "bf":Lcom/android/server/am/BroadcastFilter;
    iget-object v5, v4, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v5, v5, Lcom/android/server/am/ReceiverList;->pid:I

    if-eqz v5, :cond_48

    iget-object v5, v4, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v5, v5, Lcom/android/server/am/ReceiverList;->pid:I

    sget v6, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v5, v6, :cond_48

    .line 179
    sget-object v5, Lcom/android/server/am/ANRManager;->sActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v5
    :try_end_34
    .catchall {:try_start_4 .. :try_end_34} :catchall_69

    .line 180
    :try_start_34
    sget-object v6, Lcom/android/server/am/ANRManager;->sActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    iget-object v7, v4, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v7, v7, Lcom/android/server/am/ReceiverList;->pid:I

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    move-object v0, v6

    .line 182
    monitor-exit v5

    goto :goto_48

    :catchall_45
    move-exception v6

    monitor-exit v5
    :try_end_47
    .catchall {:try_start_34 .. :try_end_47} :catchall_45

    :try_start_47
    throw v6

    .line 184
    .end local v4    # "bf":Lcom/android/server/am/BroadcastFilter;
    :cond_48
    :goto_48
    goto :goto_4c

    .line 185
    :cond_49
    iget-object v4, v2, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    move-object v0, v4

    .line 187
    :goto_4c
    if-eqz v0, :cond_5d

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    if-nez v4, :cond_53

    goto :goto_5d

    .line 191
    .end local v2    # "r":Lcom/android/server/am/BroadcastRecord;
    .end local v3    # "curReceiver":Ljava/lang/Object;
    :cond_53
    monitor-exit v1
    :try_end_54
    .catchall {:try_start_47 .. :try_end_54} :catchall_69

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 192
    const-string v1, "broadcast"

    invoke-static {v0, v1}, Lcom/android/server/am/ANRManager;->dumpStackTracesLite(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Ljava/io/File;

    .line 193
    return-void

    .line 188
    .restart local v2    # "r":Lcom/android/server/am/BroadcastRecord;
    .restart local v3    # "curReceiver":Ljava/lang/Object;
    :cond_5d
    :goto_5d
    :try_start_5d
    const-string v4, "ANRManager"

    const-string v5, "app not exist while broadcast timeout half"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    monitor-exit v1
    :try_end_65
    .catchall {:try_start_5d .. :try_end_65} :catchall_69

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 191
    .end local v2    # "r":Lcom/android/server/am/BroadcastRecord;
    .end local v3    # "curReceiver":Ljava/lang/Object;
    :catchall_69
    move-exception v2

    :try_start_6a
    monitor-exit v1
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method static onInputTimeoutHalf(I)V
    .registers 2
    .param p0, "pid"    # I

    .line 200
    const-string v0, "input"

    invoke-static {p0, v0}, Lcom/android/server/am/ANRManager;->dumpStackTracesLite(ILjava/lang/String;)Ljava/io/File;

    .line 201
    return-void
.end method

.method static onProviderTimeoutHalf(Lcom/android/server/am/ProcessRecord;)V
    .registers 2
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 196
    const-string/jumbo v0, "provider"

    invoke-static {p0, v0}, Lcom/android/server/am/ANRManager;->dumpStackTracesLite(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Ljava/io/File;

    .line 197
    return-void
.end method

.method static onServiceTimeoutHalf(Lcom/android/server/am/ProcessRecord;)V
    .registers 2
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 167
    const-string/jumbo v0, "service"

    invoke-static {p0, v0}, Lcom/android/server/am/ANRManager;->dumpStackTracesLite(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Ljava/io/File;

    .line 168
    return-void
.end method

.method private static processClass(Lcom/android/server/am/ProcessRecord;)Ljava/lang/String;
    .registers 3
    .param p0, "process"    # Lcom/android/server/am/ProcessRecord;

    .line 306
    if-eqz p0, :cond_1a

    iget v0, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_b

    goto :goto_1a

    .line 308
    :cond_b
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_17

    .line 309
    const-string/jumbo v0, "system_app"

    return-object v0

    .line 311
    :cond_17
    const-string v0, "data_app"

    return-object v0

    .line 307
    :cond_1a
    :goto_1a
    const-string/jumbo v0, "system_server"

    return-object v0
.end method

.method static renameTraceFile(Ljava/lang/String;Ljava/lang/String;Z)Ljava/io/File;
    .registers 11
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "half"    # Z

    .line 249
    sget-object v0, Lcom/android/server/am/ANRManager;->sAnrFileDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, "formattedDate":Ljava/lang/String;
    const-string v1, "dalvik.vm.stack-trace-file"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 251
    .local v1, "tracesPath":Ljava/lang/String;
    const/4 v2, 0x0

    .line 252
    .local v2, "newFile":Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_35

    const-string v4, ".half.txt"

    goto :goto_37

    :cond_35
    const-string v4, ".txt"

    :goto_37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 253
    .local v3, "tail":Ljava/lang/String;
    if-eqz v1, :cond_81

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_81

    .line 254
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 256
    .local v4, "traceRenameFile":Ljava/io/File;
    const-string v5, "."

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 257
    .local v5, "lpos":I
    const/4 v6, -0x1

    if-eq v6, v5, :cond_69

    .line 258
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {v1, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .local v6, "newTracesPath":Ljava/lang/String;
    goto :goto_78

    .line 260
    .end local v6    # "newTracesPath":Ljava/lang/String;
    :cond_69
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 262
    .restart local v6    # "newTracesPath":Ljava/lang/String;
    :goto_78
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v7

    .line 263
    invoke-virtual {v4, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 265
    .end local v4    # "traceRenameFile":Ljava/io/File;
    .end local v5    # "lpos":I
    .end local v6    # "newTracesPath":Ljava/lang/String;
    :cond_81
    return-object v2
.end method

.method static scheduleBroadcastTimeoutHalf(Lcom/android/server/am/ActivityManagerService;JLcom/android/server/am/BroadcastQueue;)V
    .registers 6
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "endTime"    # J
    .param p3, "bq"    # Lcom/android/server/am/BroadcastQueue;

    .line 120
    sget-boolean v0, Lcom/android/server/am/ANRManager;->ENABLE_HALF_ANR_STACK:Z

    if-nez v0, :cond_5

    .line 121
    return-void

    .line 123
    :cond_5
    invoke-static {p0}, Lcom/android/server/am/ANRManager;->checkInit(Lcom/android/server/am/ActivityManagerService;)V

    .line 124
    sget-object v0, Lcom/android/server/am/ANRManager;->sHandler:Lcom/android/server/am/ANRManager$WorkHandler;

    const/16 v1, 0x3f4

    invoke-virtual {v0, v1}, Lcom/android/server/am/ANRManager$WorkHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 125
    .local v0, "msg":Landroid/os/Message;
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 126
    sget-object v1, Lcom/android/server/am/ANRManager;->sHandler:Lcom/android/server/am/ANRManager$WorkHandler;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/server/am/ANRManager$WorkHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 127
    return-void
.end method

.method public static scheduleInputTimeoutHalf(I)V
    .registers 4
    .param p0, "pid"    # I

    .line 156
    sget-boolean v0, Lcom/android/server/am/ANRManager;->ENABLE_HALF_ANR_STACK:Z

    if-nez v0, :cond_5

    .line 157
    return-void

    .line 159
    :cond_5
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerService;

    .line 160
    .local v0, "ams":Lcom/android/server/am/ActivityManagerService;
    invoke-static {v0}, Lcom/android/server/am/ANRManager;->checkInit(Lcom/android/server/am/ActivityManagerService;)V

    .line 161
    sget-object v1, Lcom/android/server/am/ANRManager;->sHandler:Lcom/android/server/am/ANRManager$WorkHandler;

    const/16 v2, 0x3f6

    invoke-virtual {v1, v2}, Lcom/android/server/am/ANRManager$WorkHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 162
    .local v1, "msg":Landroid/os/Message;
    iput p0, v1, Landroid/os/Message;->arg1:I

    .line 163
    sget-object v2, Lcom/android/server/am/ANRManager;->sHandler:Lcom/android/server/am/ANRManager$WorkHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ANRManager$WorkHandler;->sendMessage(Landroid/os/Message;)Z

    .line 164
    return-void
.end method

.method static scheduleProviderTimeoutHalf(Lcom/android/server/am/ActivityManagerService;JLcom/android/server/am/ProcessRecord;)V
    .registers 6
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "delay"    # J
    .param p3, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 138
    sget-boolean v0, Lcom/android/server/am/ANRManager;->ENABLE_HALF_ANR_STACK:Z

    if-nez v0, :cond_5

    .line 139
    return-void

    .line 141
    :cond_5
    invoke-static {p0}, Lcom/android/server/am/ANRManager;->checkInit(Lcom/android/server/am/ActivityManagerService;)V

    .line 142
    sget-object v0, Lcom/android/server/am/ANRManager;->sHandler:Lcom/android/server/am/ANRManager$WorkHandler;

    const/16 v1, 0x3f5

    invoke-virtual {v0, v1}, Lcom/android/server/am/ANRManager$WorkHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 143
    .local v0, "msg":Landroid/os/Message;
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 144
    sget-object v1, Lcom/android/server/am/ANRManager;->sHandler:Lcom/android/server/am/ANRManager$WorkHandler;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/server/am/ANRManager$WorkHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 145
    return-void
.end method

.method static scheduleServiceTimeoutHalf(Lcom/android/server/am/ActivityManagerService;JLcom/android/server/am/ProcessRecord;)V
    .registers 6
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "endTime"    # J
    .param p3, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 102
    sget-boolean v0, Lcom/android/server/am/ANRManager;->ENABLE_HALF_ANR_STACK:Z

    if-nez v0, :cond_5

    .line 103
    return-void

    .line 105
    :cond_5
    invoke-static {p0}, Lcom/android/server/am/ANRManager;->checkInit(Lcom/android/server/am/ActivityManagerService;)V

    .line 106
    sget-object v0, Lcom/android/server/am/ANRManager;->sHandler:Lcom/android/server/am/ANRManager$WorkHandler;

    const/16 v1, 0x3f3

    invoke-virtual {v0, v1}, Lcom/android/server/am/ANRManager$WorkHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 107
    .local v0, "msg":Landroid/os/Message;
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 108
    sget-object v1, Lcom/android/server/am/ANRManager;->sHandler:Lcom/android/server/am/ANRManager$WorkHandler;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/server/am/ANRManager$WorkHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 109
    return-void
.end method
