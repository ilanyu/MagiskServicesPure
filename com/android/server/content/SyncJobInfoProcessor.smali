.class Lcom/android/server/content/SyncJobInfoProcessor;
.super Ljava/lang/Object;
.source "SyncJobInfoProcessor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SyncJobInfoProcessor"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static buildSyncJobInfo(Landroid/content/Context;Lcom/android/server/content/SyncOperation;Lcom/android/server/content/SyncStorageEngine;Landroid/app/job/JobInfo$Builder;J)V
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "op"    # Lcom/android/server/content/SyncOperation;
    .param p2, "syncStorageEngine"    # Lcom/android/server/content/SyncStorageEngine;
    .param p3, "builder"    # Landroid/app/job/JobInfo$Builder;
    .param p4, "minDelay"    # J

    .line 39
    const/4 v0, 0x3

    if-nez p1, :cond_13

    .line 40
    const-string v1, "SyncJobInfoProcessor"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 41
    const-string v0, "SyncJobInfoProcessor"

    const-string v1, "injector: wrapSyncJobInfo: null parameter, return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_12
    return-void

    .line 47
    :cond_13
    invoke-static {p1}, Lcom/android/server/content/MiSyncUtils;->checkSyncOperationPass(Lcom/android/server/content/SyncOperation;)Z

    move-result v1

    .line 50
    .local v1, "isSyncOperationPass":Z
    if-nez v1, :cond_2c

    .line 51
    const-string v2, "SyncJobInfoProcessor"

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 52
    const-string v2, "SyncJobInfoProcessor"

    const-string v3, "injector: wrapSyncJobInfo: setRequiresBatteryNotLow"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_28
    const/4 v2, 0x1

    invoke-virtual {p3, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresBatteryNotLow(Z)Landroid/app/job/JobInfo$Builder;

    .line 59
    :cond_2c
    if-nez v1, :cond_4d

    .line 60
    invoke-static {p0}, Lcom/android/server/content/SyncJobInfoProcessor;->isMasterSyncOnWifiOnly(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->isNotAllowedOnMetered()Z

    move-result v2

    if-nez v2, :cond_4d

    .line 61
    const-string v2, "SyncJobInfoProcessor"

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 62
    const-string v2, "SyncJobInfoProcessor"

    const-string v3, "injector: wrapSyncJobInfo: setRequiredNetworkType: Unmetered"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_49
    const/4 v2, 0x2

    invoke-virtual {p3, v2}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 69
    :cond_4d
    invoke-static {p1}, Lcom/android/server/content/MiSyncUtils;->checkSyncOperationAccount(Lcom/android/server/content/SyncOperation;)Z

    move-result v2

    if-nez v2, :cond_63

    .line 70
    const-string v2, "SyncJobInfoProcessor"

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 71
    const-string v0, "SyncJobInfoProcessor"

    const-string v2, "injector: wrapSyncJobInfo: not xiaomi account, return"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_62
    return-void

    .line 77
    :cond_63
    iget-object v2, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 78
    invoke-virtual {p2, v2, v3}, Lcom/android/server/content/SyncStorageEngine;->getMiSyncPause(Ljava/lang/String;I)Lcom/android/server/content/MiSyncPause;

    move-result-object v2

    .line 79
    .local v2, "miSyncPause":Lcom/android/server/content/MiSyncPause;
    if-nez v2, :cond_83

    .line 80
    const-string v3, "SyncJobInfoProcessor"

    invoke-static {v3, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 81
    const-string v0, "SyncJobInfoProcessor"

    const-string v3, "injector: wrapSyncJobInfo: mi sync pause is null"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_82
    return-void

    .line 85
    :cond_83
    invoke-virtual {v2}, Lcom/android/server/content/MiSyncPause;->getResumeTimeLeft()J

    move-result-wide v3

    .line 86
    .local v3, "syncResumeTimeLeft":J
    cmp-long v5, v3, p4

    if-lez v5, :cond_b0

    iget-boolean v5, p1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-nez v5, :cond_b0

    .line 87
    const-string v5, "SyncJobInfoProcessor"

    invoke-static {v5, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_ad

    .line 88
    const-string v5, "SyncJobInfoProcessor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "injector: wrapSyncJobInfo: setMinimumLatency: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_ad
    invoke-virtual {p3, v3, v4}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 94
    :cond_b0
    if-nez v1, :cond_e8

    .line 95
    iget-object v5, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v5, v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v6, v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 96
    invoke-virtual {p2, v5, v6}, Lcom/android/server/content/SyncStorageEngine;->getMiSyncStrategy(Ljava/lang/String;I)Lcom/android/server/content/MiSyncStrategy;

    move-result-object v5

    .line 97
    .local v5, "miSyncStrategy":Lcom/android/server/content/MiSyncStrategy;
    if-nez v5, :cond_d2

    .line 98
    const-string v6, "SyncJobInfoProcessor"

    invoke-static {v6, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_d1

    .line 99
    const-string v0, "SyncJobInfoProcessor"

    const-string v6, "injector: wrapSyncJobInfo: mi sync strategy is null"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_d1
    return-void

    .line 104
    :cond_d2
    const-string v6, "SyncJobInfoProcessor"

    invoke-static {v6, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e1

    .line 105
    const-string v0, "SyncJobInfoProcessor"

    const-string v6, "injector: wrapSyncJobInfo: apply mi sync strategy"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_e1
    invoke-static {p2, p1}, Lcom/android/server/content/SyncJobInfoProcessor;->getExtrasForStrategy(Lcom/android/server/content/SyncStorageEngine;Lcom/android/server/content/SyncOperation;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v5, p1, v0, p3}, Lcom/android/server/content/MiSyncStrategy;->apply(Lcom/android/server/content/SyncOperation;Landroid/os/Bundle;Landroid/app/job/JobInfo$Builder;)V

    .line 109
    .end local v5    # "miSyncStrategy":Lcom/android/server/content/MiSyncStrategy;
    :cond_e8
    return-void
.end method

.method private static getExtrasForStrategy(Lcom/android/server/content/SyncStorageEngine;Lcom/android/server/content/SyncOperation;)Landroid/os/Bundle;
    .registers 6
    .param p0, "syncStorageEngine"    # Lcom/android/server/content/SyncStorageEngine;
    .param p1, "op"    # Lcom/android/server/content/SyncOperation;

    .line 118
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 119
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz p0, :cond_1b

    if-eqz p1, :cond_1b

    .line 120
    iget-object v1, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 121
    invoke-virtual {p0, v1}, Lcom/android/server/content/SyncStorageEngine;->getStatusByAuthority(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/content/SyncStatusInfo;

    move-result-object v1

    .line 122
    .local v1, "syncStatusInfo":Landroid/content/SyncStatusInfo;
    if-eqz v1, :cond_1b

    .line 123
    const-string/jumbo v2, "key_num_syncs"

    .line 124
    invoke-static {v1}, Landroid/content/SyncStatusInfoAdapter;->getNumSyncs(Landroid/content/SyncStatusInfo;)I

    move-result v3

    .line 123
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 127
    .end local v1    # "syncStatusInfo":Landroid/content/SyncStatusInfo;
    :cond_1b
    return-object v0
.end method

.method private static isMasterSyncOnWifiOnly(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 112
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sync_on_wifi_only"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    goto :goto_11

    :cond_10
    move v1, v2

    :goto_11
    return v1
.end method
