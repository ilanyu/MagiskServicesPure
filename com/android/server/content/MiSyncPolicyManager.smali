.class public Lcom/android/server/content/MiSyncPolicyManager;
.super Lcom/android/server/content/MiSyncPolicyManagerBase;
.source "MiSyncPolicyManager.java"


# static fields
.field private static final SYNC_ON_WIFI_ONLY_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "SyncManager"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 21
    const-string/jumbo v0, "sync_on_wifi_only"

    .line 22
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/content/MiSyncPolicyManager;->SYNC_ON_WIFI_ONLY_URI:Landroid/net/Uri;

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Lcom/android/server/content/MiSyncPolicyManagerBase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/content/SyncManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .line 18
    invoke-static {p0}, Lcom/android/server/content/MiSyncPolicyManager;->rescheduleAllSyncsH(Lcom/android/server/content/SyncManager;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/content/SyncManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/content/SyncManager;

    .line 18
    invoke-static {p0}, Lcom/android/server/content/MiSyncPolicyManager;->rescheduleXiaomiSyncsH(Lcom/android/server/content/SyncManager;)V

    return-void
.end method

.method public static getSyncDelayedH(Lcom/android/server/content/SyncOperation;Lcom/android/server/content/SyncManager;)J
    .registers 4
    .param p0, "op"    # Lcom/android/server/content/SyncOperation;
    .param p1, "syncManager"    # Lcom/android/server/content/SyncManager;

    .line 36
    invoke-static {p0, p1}, Lcom/android/server/content/MiSyncPolicyManager;->isSyncRoomForbiddenH(Lcom/android/server/content/SyncOperation;Lcom/android/server/content/SyncManager;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 37
    const-string v0, "SyncManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 38
    const-string v0, "SyncManager"

    const-string v1, "injector: sync is forbidden for no room!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_16
    const-wide/16 v0, 0x7530

    return-wide v0

    .line 42
    :cond_19
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static handleMasterWifiOnlyChanged(Lcom/android/server/content/SyncManager;)V
    .registers 3
    .param p0, "syncManager"    # Lcom/android/server/content/SyncManager;

    .line 64
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    new-instance v1, Lcom/android/server/content/MiSyncPolicyManager$2;

    invoke-direct {v1, p0}, Lcom/android/server/content/MiSyncPolicyManager$2;-><init>(Lcom/android/server/content/SyncManager;)V

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->post(Ljava/lang/Runnable;)Z

    .line 70
    return-void
.end method

.method public static handleSyncPauseChanged(Landroid/content/Context;Lcom/android/server/content/SyncManager;J)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "syncManager"    # Lcom/android/server/content/SyncManager;
    .param p2, "pauseTimeMills"    # J

    .line 74
    invoke-static {p1}, Lcom/android/server/content/MiSyncPolicyManager;->handleSyncPauseChanged(Lcom/android/server/content/SyncManager;)V

    .line 75
    return-void
.end method

.method public static handleSyncPauseChanged(Lcom/android/server/content/SyncManager;)V
    .registers 3
    .param p0, "syncManager"    # Lcom/android/server/content/SyncManager;

    .line 78
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    new-instance v1, Lcom/android/server/content/MiSyncPolicyManager$3;

    invoke-direct {v1, p0}, Lcom/android/server/content/MiSyncPolicyManager$3;-><init>(Lcom/android/server/content/SyncManager;)V

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->post(Ljava/lang/Runnable;)Z

    .line 84
    return-void
.end method

.method public static handleSyncStrategyChanged(Landroid/content/Context;Lcom/android/server/content/SyncManager;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "syncManager"    # Lcom/android/server/content/SyncManager;

    .line 87
    invoke-static {p1}, Lcom/android/server/content/MiSyncPolicyManager;->handleSyncStrategyChanged(Lcom/android/server/content/SyncManager;)V

    .line 88
    return-void
.end method

.method public static handleSyncStrategyChanged(Lcom/android/server/content/SyncManager;)V
    .registers 3
    .param p0, "syncManager"    # Lcom/android/server/content/SyncManager;

    .line 91
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    new-instance v1, Lcom/android/server/content/MiSyncPolicyManager$4;

    invoke-direct {v1, p0}, Lcom/android/server/content/MiSyncPolicyManager$4;-><init>(Lcom/android/server/content/SyncManager;)V

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->post(Ljava/lang/Runnable;)Z

    .line 97
    return-void
.end method

.method private static isSyncRoomForbiddenH(Lcom/android/server/content/SyncOperation;Lcom/android/server/content/SyncManager;)Z
    .registers 3
    .param p0, "op"    # Lcom/android/server/content/SyncOperation;
    .param p1, "syncManager"    # Lcom/android/server/content/SyncManager;

    .line 46
    invoke-static {p0, p1}, Lcom/android/server/content/MiSyncUtils;->isSyncRoomForbiddenH(Lcom/android/server/content/SyncOperation;Lcom/android/server/content/SyncManager;)Z

    move-result v0

    return v0
.end method

.method public static registerSyncSettingsObserver(Landroid/content/Context;Lcom/android/server/content/SyncManager;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "syncManager"    # Lcom/android/server/content/SyncManager;

    .line 25
    new-instance v0, Lcom/android/server/content/MiSyncPolicyManager$1;

    iget-object v1, p1, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-direct {v0, v1, p1}, Lcom/android/server/content/MiSyncPolicyManager$1;-><init>(Landroid/os/Handler;Lcom/android/server/content/SyncManager;)V

    .line 31
    .local v0, "syncSettingsObserver":Landroid/database/ContentObserver;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/server/content/MiSyncPolicyManager;->SYNC_ON_WIFI_ONLY_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 33
    return-void
.end method

.method private static rescheduleAllSyncsH(Lcom/android/server/content/SyncManager;)V
    .registers 8
    .param p0, "syncManager"    # Lcom/android/server/content/SyncManager;

    .line 101
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 102
    .local v1, "asc":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->deferActiveSyncH(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 103
    .end local v1    # "asc":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    goto :goto_6

    .line 106
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getJobScheduler()Landroid/app/job/JobScheduler;

    move-result-object v0

    .line 107
    .local v0, "jobScheduler":Landroid/app/job/JobScheduler;
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v1

    .line 108
    .local v1, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    const/4 v2, 0x0

    .line 109
    .local v2, "count":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_25
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/content/SyncOperation;

    .line 110
    .local v4, "op":Lcom/android/server/content/SyncOperation;
    add-int/lit8 v2, v2, 0x1

    .line 111
    iget v5, v4, Lcom/android/server/content/SyncOperation;->jobId:I

    invoke-virtual {v0, v5}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 112
    const-wide/16 v5, 0x0

    invoke-static {p0, v4, v5, v6}, Lcom/android/server/content/SyncManagerAdapter;->postScheduleSyncMessage(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;J)V

    .line 113
    .end local v4    # "op":Lcom/android/server/content/SyncOperation;
    goto :goto_25

    .line 114
    :cond_3e
    const-string v3, "SyncManager"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_62

    .line 115
    const-string v3, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rescheduled "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " syncs"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_62
    return-void
.end method

.method private static rescheduleXiaomiSyncsH(Lcom/android/server/content/SyncManager;)V
    .registers 8
    .param p0, "syncManager"    # Lcom/android/server/content/SyncManager;

    .line 121
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 122
    .local v1, "asc":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    iget-object v2, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    invoke-static {v2}, Lcom/android/server/content/MiSyncUtils;->checkSyncOperationAccount(Lcom/android/server/content/SyncOperation;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 123
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->deferActiveSyncH(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 125
    .end local v1    # "asc":Lcom/android/server/content/SyncManager$ActiveSyncContext;
    :cond_1f
    goto :goto_6

    .line 128
    :cond_20
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getJobScheduler()Landroid/app/job/JobScheduler;

    move-result-object v0

    .line 129
    .local v0, "jobScheduler":Landroid/app/job/JobScheduler;
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v1

    .line 130
    .local v1, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/content/SyncOperation;>;"
    const/4 v2, 0x0

    .line 131
    .local v2, "count":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/content/SyncOperation;

    .line 132
    .local v4, "op":Lcom/android/server/content/SyncOperation;
    invoke-static {v4}, Lcom/android/server/content/MiSyncUtils;->checkSyncOperationAccount(Lcom/android/server/content/SyncOperation;)Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 133
    add-int/lit8 v2, v2, 0x1

    .line 134
    iget v5, v4, Lcom/android/server/content/SyncOperation;->jobId:I

    invoke-virtual {v0, v5}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 135
    const-wide/16 v5, 0x0

    invoke-static {p0, v4, v5, v6}, Lcom/android/server/content/SyncManagerAdapter;->postScheduleSyncMessage(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;J)V

    .line 137
    .end local v4    # "op":Lcom/android/server/content/SyncOperation;
    :cond_4b
    goto :goto_2d

    .line 138
    :cond_4c
    const-string v3, "SyncManager"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_70

    .line 139
    const-string v3, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rescheduled "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " syncs"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_70
    return-void
.end method

.method public static wrapSyncJobInfo(Landroid/content/Context;Lcom/android/server/content/SyncOperation;Lcom/android/server/content/SyncStorageEngine;Landroid/app/job/JobInfo$Builder;J)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "op"    # Lcom/android/server/content/SyncOperation;
    .param p2, "syncStorageEngine"    # Lcom/android/server/content/SyncStorageEngine;
    .param p3, "builder"    # Landroid/app/job/JobInfo$Builder;
    .param p4, "minDelay"    # J

    .line 60
    invoke-static/range {p0 .. p5}, Lcom/android/server/content/SyncJobInfoProcessor;->buildSyncJobInfo(Landroid/content/Context;Lcom/android/server/content/SyncOperation;Lcom/android/server/content/SyncStorageEngine;Landroid/app/job/JobInfo$Builder;J)V

    .line 61
    return-void
.end method
