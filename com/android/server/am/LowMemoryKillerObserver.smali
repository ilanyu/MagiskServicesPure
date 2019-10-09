.class public Lcom/android/server/am/LowMemoryKillerObserver;
.super Landroid/os/UEventObserver;
.source "LowMemoryKillerObserver.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final KEY_PID:Ljava/lang/String; = "PID"

.field private static final LMK_KILL_REASON:Ljava/lang/String; = "lowmemorykiller"

.field private static final LMK_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/lowmemorykiller"

.field private static final TAG:Ljava/lang/String; = "ProcessManager"


# instance fields
.field private mProcessManagerService:Lcom/android/server/am/ProcessManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ProcessManagerService;)V
    .registers 2
    .param p1, "pms"    # Lcom/android/server/am/ProcessManagerService;

    .line 25
    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/server/am/LowMemoryKillerObserver;->mProcessManagerService:Lcom/android/server/am/ProcessManagerService;

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/LowMemoryKillerObserver;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/LowMemoryKillerObserver;
    .param p1, "x1"    # I

    .line 12
    invoke-direct {p0, p1}, Lcom/android/server/am/LowMemoryKillerObserver;->reportLmkKillEvent(I)V

    return-void
.end method

.method private reportLmkKillEvent(I)V
    .registers 4
    .param p1, "killedPid"    # I

    .line 52
    iget-object v0, p0, Lcom/android/server/am/LowMemoryKillerObserver;->mProcessManagerService:Lcom/android/server/am/ProcessManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ProcessManagerService;->getProcessRecordByPid(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 53
    .local v0, "killedApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v0, :cond_f

    .line 55
    const-string/jumbo v1, "lowmemorykiller"

    invoke-static {v0, v1}, Lcom/android/server/am/ProcessRecordInjector;->reportKillProcessEvent(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    goto :goto_15

    .line 61
    :cond_f
    const-string/jumbo v1, "lowmemorykiller"

    invoke-static {p1, v1}, Lcom/android/server/am/ProcessRecordInjector;->checkNativeKillInList(ILjava/lang/String;)V

    .line 63
    :goto_15
    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 6
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .line 32
    :try_start_0
    const-string v0, "PID"

    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 39
    .local v0, "killedPid":I
    iget-object v1, p0, Lcom/android/server/am/LowMemoryKillerObserver;->mProcessManagerService:Lcom/android/server/am/ProcessManagerService;

    iget-object v1, v1, Lcom/android/server/am/ProcessManagerService;->mHandler:Lcom/android/server/am/ProcessManagerService$MainHandler;

    new-instance v2, Lcom/android/server/am/LowMemoryKillerObserver$1;

    invoke-direct {v2, p0, v0}, Lcom/android/server/am/LowMemoryKillerObserver$1;-><init>(Lcom/android/server/am/LowMemoryKillerObserver;I)V

    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    .line 47
    .end local v0    # "killedPid":I
    goto :goto_36

    .line 45
    :catch_1b
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception on LowMemoryKillerObserver.onUEvent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_36
    return-void
.end method

.method public start()V
    .registers 2

    .line 66
    const-string v0, "DEVPATH=/devices/virtual/lowmemorykiller"

    invoke-virtual {p0, v0}, Lcom/android/server/am/LowMemoryKillerObserver;->startObserving(Ljava/lang/String;)V

    .line 67
    return-void
.end method
