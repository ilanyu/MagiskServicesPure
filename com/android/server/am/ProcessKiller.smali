.class public Lcom/android/server/am/ProcessKiller;
.super Ljava/lang/Object;
.source "ProcessKiller.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ProcessManager"


# instance fields
.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/server/am/ProcessKiller;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 19
    return-void
.end method

.method private forceStopPackage(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lcom/android/server/am/ProcessKiller;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;ILjava/lang/String;)V

    .line 85
    return-void
.end method

.method private isInterestingToUser(Lcom/android/server/am/ProcessRecord;)Z
    .registers 9
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 53
    iget-object v0, p0, Lcom/android/server/am/ProcessKiller;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 54
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 55
    .local v1, "size":I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_e
    if-ge v3, v1, :cond_55

    .line 56
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 57
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->isInterestingToUserLocked()Z

    move-result v5

    if-eqz v5, :cond_52

    .line 58
    const-string v2, "ProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "interesting activity="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " Adj="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", State="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Lcom/android/server/am/ProcessRecord;->curProcState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_3 .. :try_end_4d} :catchall_5a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const/4 v0, 0x1

    return v0

    .line 55
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_52
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 63
    .end local v1    # "size":I
    .end local v3    # "i":I
    :cond_55
    :try_start_55
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_5a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 64
    return v2

    .line 63
    :catchall_5a
    move-exception v1

    :try_start_5b
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private kill(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .registers 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .line 78
    if-eqz p1, :cond_6

    .line 79
    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    .line 81
    :cond_6
    return-void
.end method

.method private scheduleTrimMemory(Lcom/android/server/am/ProcessRecord;I)V
    .registers 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "level"    # I

    .line 68
    if-eqz p1, :cond_10

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_10

    .line 70
    :try_start_6
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v0, p2}, Landroid/app/IApplicationThread;->scheduleTrimMemory(I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_c

    .line 73
    goto :goto_10

    .line 71
    :catch_c
    move-exception v0

    .line 72
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 75
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_10
    :goto_10
    return-void
.end method


# virtual methods
.method public forceStopPackage(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Z)V
    .registers 6
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "evenForeground"    # Z

    .line 23
    if-nez p3, :cond_9

    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessKiller;->isInterestingToUser(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 24
    return-void

    .line 26
    :cond_9
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-direct {p0, v0, v1, p2}, Lcom/android/server/am/ProcessKiller;->forceStopPackage(Ljava/lang/String;ILjava/lang/String;)V

    .line 27
    return-void
.end method

.method public killApplication(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Z)V
    .registers 5
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "evenForeground"    # Z

    .line 30
    if-nez p3, :cond_9

    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessKiller;->isInterestingToUser(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 31
    return-void

    .line 33
    :cond_9
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ProcessKiller;->kill(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public killBackgroundApplication(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .registers 6
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .line 37
    iget-object v0, p0, Lcom/android/server/am/ProcessKiller;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/server/am/ActivityManagerService;->killBackgroundProcesses(Ljava/lang/String;ILjava/lang/String;)V

    .line 38
    return-void
.end method

.method public trimMemory(Lcom/android/server/am/ProcessRecord;Z)V
    .registers 5
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "evenForeground"    # Z

    .line 41
    if-nez p2, :cond_9

    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessKiller;->isInterestingToUser(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 42
    return-void

    .line 45
    :cond_9
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 46
    const/16 v0, 0x3c

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ProcessKiller;->scheduleTrimMemory(Lcom/android/server/am/ProcessRecord;I)V

    goto :goto_20

    .line 48
    :cond_1b
    const/16 v0, 0x50

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ProcessKiller;->scheduleTrimMemory(Lcom/android/server/am/ProcessRecord;I)V

    .line 50
    :goto_20
    return-void
.end method
