.class public Lcom/android/server/content/SyncManagerInjector;
.super Lcom/android/server/content/SyncManagerAccountChangePolicy;
.source "SyncManagerInjector.java"


# static fields
.field public static final SYNC_DELAY_ON_DISALLOW_METERED:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = "SyncManager"

.field public static final uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 26
    const-string/jumbo v0, "sync_on_wifi_only"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/content/SyncManagerInjector;->uri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Lcom/android/server/content/SyncManagerAccountChangePolicy;-><init>()V

    return-void
.end method

.method public static canBindService(Landroid/content/Context;Landroid/content/Intent;I)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "userId"    # I

    .line 19
    invoke-static {p0, p1, p2}, Lcom/android/server/am/AutoStartManagerService;->isAllowStartService(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v0

    return v0
.end method

.method public static getSyncDelayedH(Lcom/android/server/content/SyncOperation;Lcom/android/server/content/SyncManager;)J
    .registers 4
    .param p0, "op"    # Lcom/android/server/content/SyncOperation;
    .param p1, "syncManager"    # Lcom/android/server/content/SyncManager;

    .line 33
    invoke-static {p0, p1}, Lcom/android/server/content/MiSyncPolicyManager;->getSyncDelayedH(Lcom/android/server/content/SyncOperation;Lcom/android/server/content/SyncManager;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static handleMasterWifiOnlyChanged(Lcom/android/server/content/SyncManager;)V
    .registers 1
    .param p0, "syncManager"    # Lcom/android/server/content/SyncManager;

    .line 51
    invoke-static {p0}, Lcom/android/server/content/MiSyncPolicyManager;->handleMasterWifiOnlyChanged(Lcom/android/server/content/SyncManager;)V

    .line 52
    return-void
.end method

.method public static handleSyncPauseChanged(Landroid/content/Context;Lcom/android/server/content/SyncManager;J)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "syncManager"    # Lcom/android/server/content/SyncManager;
    .param p2, "pauseTimeMills"    # J

    .line 56
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/content/MiSyncPolicyManager;->handleSyncPauseChanged(Landroid/content/Context;Lcom/android/server/content/SyncManager;J)V

    .line 57
    return-void
.end method

.method public static handleSyncPauseChanged(Lcom/android/server/content/SyncManager;)V
    .registers 1
    .param p0, "syncManager"    # Lcom/android/server/content/SyncManager;

    .line 60
    invoke-static {p0}, Lcom/android/server/content/MiSyncPolicyManager;->handleSyncPauseChanged(Lcom/android/server/content/SyncManager;)V

    .line 61
    return-void
.end method

.method public static handleSyncStrategyChanged(Landroid/content/Context;Lcom/android/server/content/SyncManager;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "syncManager"    # Lcom/android/server/content/SyncManager;

    .line 64
    invoke-static {p0, p1}, Lcom/android/server/content/MiSyncPolicyManager;->handleSyncStrategyChanged(Landroid/content/Context;Lcom/android/server/content/SyncManager;)V

    .line 65
    return-void
.end method

.method public static handleSyncStrategyChanged(Lcom/android/server/content/SyncManager;)V
    .registers 1
    .param p0, "syncManager"    # Lcom/android/server/content/SyncManager;

    .line 68
    invoke-static {p0}, Lcom/android/server/content/MiSyncPolicyManager;->handleSyncStrategyChanged(Lcom/android/server/content/SyncManager;)V

    .line 69
    return-void
.end method

.method public static isDisallowMeteredBySettings(Landroid/content/Context;)Z
    .registers 4
    .param p0, "ctx"    # Landroid/content/Context;

    .line 23
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

.method public static registerSyncSettingsObserver(Landroid/content/Context;Lcom/android/server/content/SyncManager;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "syncManager"    # Lcom/android/server/content/SyncManager;

    .line 29
    invoke-static {p0, p1}, Lcom/android/server/content/MiSyncPolicyManager;->registerSyncSettingsObserver(Landroid/content/Context;Lcom/android/server/content/SyncManager;)V

    .line 30
    return-void
.end method

.method public static wrapSyncJobInfo(Landroid/content/Context;Lcom/android/server/content/SyncOperation;Lcom/android/server/content/SyncStorageEngine;Landroid/app/job/JobInfo$Builder;J)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "op"    # Lcom/android/server/content/SyncOperation;
    .param p2, "syncStorageEngine"    # Lcom/android/server/content/SyncStorageEngine;
    .param p3, "builder"    # Landroid/app/job/JobInfo$Builder;
    .param p4, "minDelay"    # J

    .line 47
    invoke-static/range {p0 .. p5}, Lcom/android/server/content/MiSyncPolicyManager;->wrapSyncJobInfo(Landroid/content/Context;Lcom/android/server/content/SyncOperation;Lcom/android/server/content/SyncStorageEngine;Landroid/app/job/JobInfo$Builder;J)V

    .line 48
    return-void
.end method
