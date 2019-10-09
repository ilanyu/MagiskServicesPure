.class public abstract Lcom/android/server/am/MiuiActivityHelper;
.super Ljava/lang/Object;
.source "MiuiActivityHelper.java"


# static fields
.field static sAms:Lcom/android/server/am/ActivityManagerService;

.field private static sTotalMem:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 10
    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/MiuiActivityHelper;->sTotalMem:J

    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/MiuiActivityHelper;->sAms:Lcom/android/server/am/ActivityManagerService;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string/jumbo v0, "miui_security"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method private static getCachePss()J
    .registers 7

    .line 16
    sget-object v0, Lcom/android/server/am/MiuiActivityHelper;->sAms:Lcom/android/server/am/ActivityManagerService;

    if-nez v0, :cond_11

    .line 17
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 18
    .local v0, "ams":Landroid/app/IActivityManager;
    instance-of v1, v0, Lcom/android/server/am/ActivityManagerService;

    if-eqz v1, :cond_11

    .line 19
    move-object v1, v0

    check-cast v1, Lcom/android/server/am/ActivityManagerService;

    sput-object v1, Lcom/android/server/am/MiuiActivityHelper;->sAms:Lcom/android/server/am/ActivityManagerService;

    .line 22
    .end local v0    # "ams":Landroid/app/IActivityManager;
    :cond_11
    const-wide/16 v0, 0x0

    .line 23
    .local v0, "cachePss":J
    sget-object v2, Lcom/android/server/am/MiuiActivityHelper;->sAms:Lcom/android/server/am/ActivityManagerService;

    if-eqz v2, :cond_3b

    .line 24
    sget-object v2, Lcom/android/server/am/MiuiActivityHelper;->sAms:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3, v3, v4}, Lcom/android/server/am/ActivityManagerService;->collectProcesses(Ljava/io/PrintWriter;IZ[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 25
    .local v2, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    if-eqz v2, :cond_3b

    .line 26
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_25
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 27
    .local v4, "proc":Lcom/android/server/am/ProcessRecord;
    iget v5, v4, Lcom/android/server/am/ProcessRecord;->setAdj:I

    const/16 v6, 0x384

    if-lt v5, v6, :cond_3a

    .line 28
    iget-wide v5, v4, Lcom/android/server/am/ProcessRecord;->lastPss:J

    add-long/2addr v0, v5

    .line 30
    .end local v4    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_3a
    goto :goto_25

    .line 33
    .end local v2    # "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :cond_3b
    const-wide/16 v2, 0x400

    mul-long/2addr v2, v0

    return-wide v2
.end method

.method public static getCachedLostRam()J
    .registers 2

    .line 38
    invoke-static {}, Lcom/android/server/am/MiuiActivityHelper;->getNativeCachedLostMemory()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFreeMemory()J
    .registers 6

    .line 42
    invoke-static {}, Lcom/android/server/am/MiuiActivityHelper;->getNativeFreeMemory()J

    move-result-wide v0

    invoke-static {}, Lcom/android/server/am/MiuiActivityHelper;->getCachedLostRam()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 43
    .local v0, "nativeFree":J
    invoke-static {}, Lcom/android/server/am/MiuiActivityHelper;->getCachePss()J

    move-result-wide v2

    add-long/2addr v2, v0

    .line 44
    .local v2, "free":J
    sget-wide v4, Lcom/android/server/am/MiuiActivityHelper;->sTotalMem:J

    cmp-long v4, v2, v4

    if-ltz v4, :cond_15

    .line 46
    move-wide v2, v0

    .line 48
    :cond_15
    return-wide v2
.end method

.method private static native getNativeCachedLostMemory()J
.end method

.method private static native getNativeFreeMemory()J
.end method
