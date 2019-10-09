.class public Lcom/android/server/am/ProcessPolicyManager;
.super Ljava/lang/Object;
.source "ProcessPolicyManager.java"


# static fields
.field private static final ENABLE:Z

.field private static final TAG:Ljava/lang/String; = "ProcessPolicyManager"

.field private static volatile sPmInstance:Lcom/android/server/am/ProcessManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 22
    const-string/jumbo v0, "persist.am.enable_ppm"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ProcessPolicyManager;->ENABLE:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getProcessManagerService()Lcom/android/server/am/ProcessManagerService;
    .registers 1

    .line 27
    sget-object v0, Lcom/android/server/am/ProcessPolicyManager;->sPmInstance:Lcom/android/server/am/ProcessManagerService;

    if-nez v0, :cond_e

    .line 28
    const-string v0, "ProcessManager"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessManagerService;

    sput-object v0, Lcom/android/server/am/ProcessPolicyManager;->sPmInstance:Lcom/android/server/am/ProcessManagerService;

    .line 30
    :cond_e
    sget-object v0, Lcom/android/server/am/ProcessPolicyManager;->sPmInstance:Lcom/android/server/am/ProcessManagerService;

    return-object v0
.end method

.method public static isDelayBootPersistentApp(Ljava/lang/String;)Z
    .registers 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public static isIgnoreException(Ljava/lang/Thread;Ljava/lang/Throwable;)Z
    .registers 3
    .param p0, "t"    # Ljava/lang/Thread;
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public static isImportantProcess(Ljava/lang/String;I)Z
    .registers 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method private static isLockedProcess(Ljava/lang/String;I)Z
    .registers 4
    .param p0, "processName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .line 84
    const/4 v0, 0x0

    :try_start_1
    sget-boolean v1, Lcom/android/server/am/ProcessPolicyManager;->ENABLE:Z

    if-eqz v1, :cond_11

    invoke-static {}, Lcom/android/server/am/ProcessPolicyManager;->getProcessManagerService()Lcom/android/server/am/ProcessManagerService;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/android/server/am/ProcessManagerService;->isLockedApplication(Ljava/lang/String;I)Z

    move-result v1
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_d} :catch_12

    if-eqz v1, :cond_11

    const/4 v0, 0x1

    nop

    :cond_11
    return v0

    .line 85
    :catch_12
    move-exception v1

    .line 86
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 88
    .end local v1    # "e":Landroid/os/RemoteException;
    return v0
.end method

.method public static isNeedTraceProcess(Lcom/android/server/am/ProcessRecord;)Z
    .registers 3
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 44
    sget-boolean v0, Lcom/android/server/am/ProcessPolicyManager;->ENABLE:Z

    if-eqz v0, :cond_19

    invoke-static {}, Lcom/android/server/am/ProcessPolicyManager;->getProcessManagerService()Lcom/android/server/am/ProcessManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ProcessManagerService;->getProcessPolicy()Lcom/android/server/am/ProcessPolicy;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessPolicy;->getWhiteList(I)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 45
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1b

    :cond_19
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    .line 44
    :goto_1b
    return v0
.end method

.method private static isSecretlyProtectProcess(Ljava/lang/String;)Z
    .registers 2
    .param p0, "processName"    # Ljava/lang/String;

    .line 92
    sget-boolean v0, Lcom/android/server/am/ProcessPolicyManager;->ENABLE:Z

    if-eqz v0, :cond_14

    .line 93
    invoke-static {}, Lcom/android/server/am/ProcessPolicyManager;->getProcessManagerService()Lcom/android/server/am/ProcessManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ProcessManagerService;->getProcessPolicy()Lcom/android/server/am/ProcessPolicy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/am/ProcessPolicy;->isInSecretlyProtectList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 92
    :goto_15
    return v0
.end method

.method public static isSecureProtectedProcess(Ljava/lang/String;)Z
    .registers 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public static promoteImportantProcAdj(Lcom/android/server/am/ProcessRecord;)V
    .registers 4
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 63
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    if-gtz v0, :cond_5

    .line 64
    return-void

    .line 67
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-static {v0, v1}, Lcom/android/server/am/ProcessPolicyManager;->isLockedProcess(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 68
    invoke-static {v0}, Lcom/android/server/am/ProcessPolicyManager;->isSecretlyProtectProcess(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 69
    :cond_17
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    sget v1, Lmiui/process/ProcessManager;->LOCKED_MAX_ADJ:I

    if-le v0, v1, :cond_21

    .line 70
    sget v0, Lmiui/process/ProcessManager;->LOCKED_MAX_ADJ:I

    iput v0, p0, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    .line 72
    :cond_21
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->maxProcState:I

    const/16 v1, 0xc

    if-le v0, v1, :cond_29

    .line 73
    iput v1, p0, Lcom/android/server/am/ProcessRecord;->maxProcState:I

    .line 76
    :cond_29
    const-string v0, "ProcessPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "promote "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " maxAdj to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    .line 77
    invoke-static {v2}, Lcom/android/server/am/ProcessList;->makeOomAdjString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", maxProcState to + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->maxProcState:I

    .line 78
    invoke-static {v2}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_5e
    return-void
.end method

.method public static promoteImportantProcState(Lcom/android/server/am/ProcessRecord;)V
    .registers 1
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 59
    return-void
.end method
