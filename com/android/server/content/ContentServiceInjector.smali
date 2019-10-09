.class public Lcom/android/server/content/ContentServiceInjector;
.super Ljava/lang/Object;
.source "ContentServiceInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMiSyncPauseToTime(Landroid/content/Context;Lcom/android/server/content/ContentService;Landroid/accounts/Account;I)J
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contentService"    # Lcom/android/server/content/ContentService;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "uid"    # I

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to read the sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermissionForInjector(ILjava/lang/String;)V

    .line 36
    const-string v0, "android.permission.READ_SYNC_SETTINGS"

    const-string/jumbo v1, "no permission to read the sync settings"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 41
    .local v0, "identityToken":J
    :try_start_21
    invoke-virtual {p1}, Lcom/android/server/content/ContentService;->getSyncManagerForInjector()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 42
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v2, :cond_33

    .line 43
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Lcom/android/server/content/SyncStorageEngine;->getMiSyncPauseToTime(Landroid/accounts/Account;I)J

    move-result-wide v3
    :try_end_2f
    .catchall {:try_start_21 .. :try_end_2f} :catchall_3a

    .line 46
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 43
    return-wide v3

    .line 46
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :cond_33
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 47
    nop

    .line 48
    const-wide/16 v2, 0x0

    return-wide v2

    .line 46
    :catchall_3a
    move-exception v2

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public static getMiSyncStrategy(Landroid/content/Context;Lcom/android/server/content/ContentService;Landroid/accounts/Account;I)I
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contentService"    # Lcom/android/server/content/ContentService;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "uid"    # I

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to read the sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermissionForInjector(ILjava/lang/String;)V

    .line 74
    const-string v0, "android.permission.READ_SYNC_SETTINGS"

    const-string/jumbo v1, "no permission to read the sync settings"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 79
    .local v0, "identityToken":J
    :try_start_21
    invoke-virtual {p1}, Lcom/android/server/content/ContentService;->getSyncManagerForInjector()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 80
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v2, :cond_33

    .line 81
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Lcom/android/server/content/SyncStorageEngine;->getMiSyncStrategy(Landroid/accounts/Account;I)I

    move-result v3
    :try_end_2f
    .catchall {:try_start_21 .. :try_end_2f} :catchall_39

    .line 84
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 81
    return v3

    .line 84
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :cond_33
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 85
    nop

    .line 86
    const/4 v2, 0x0

    return v2

    .line 84
    :catchall_39
    move-exception v2

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public static setMiSyncPauseToTime(Landroid/content/Context;Lcom/android/server/content/ContentService;Landroid/accounts/Account;JI)V
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contentService"    # Lcom/android/server/content/ContentService;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "pauseTimeMillis"    # J
    .param p5, "uid"    # I

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to set the sync status for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p5, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermissionForInjector(ILjava/lang/String;)V

    .line 17
    const-string v0, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v1, "no permission to write the sync settings"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 22
    .local v0, "identityToken":J
    :try_start_21
    invoke-virtual {p1}, Lcom/android/server/content/ContentService;->getSyncManagerForInjector()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 23
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v2, :cond_31

    .line 24
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p2, p3, p4, p5}, Lcom/android/server/content/SyncStorageEngine;->setMiSyncPauseToTime(Landroid/accounts/Account;JI)V

    .line 25
    invoke-static {p0, v2, p3, p4}, Lcom/android/server/content/SyncManagerInjector;->handleSyncPauseChanged(Landroid/content/Context;Lcom/android/server/content/SyncManager;J)V
    :try_end_31
    .catchall {:try_start_21 .. :try_end_31} :catchall_36

    .line 28
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :cond_31
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 29
    nop

    .line 30
    return-void

    .line 28
    :catchall_36
    move-exception v2

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public static setMiSyncStrategy(Landroid/content/Context;Lcom/android/server/content/ContentService;Landroid/accounts/Account;II)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contentService"    # Lcom/android/server/content/ContentService;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "strategy"    # I
    .param p4, "uid"    # I

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to set the sync status for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p4, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermissionForInjector(ILjava/lang/String;)V

    .line 55
    const-string v0, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v1, "no permission to write the sync settings"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 60
    .local v0, "identityToken":J
    :try_start_21
    invoke-virtual {p1}, Lcom/android/server/content/ContentService;->getSyncManagerForInjector()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 61
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v2, :cond_31

    .line 62
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p2, p3, p4}, Lcom/android/server/content/SyncStorageEngine;->setMiSyncStrategy(Landroid/accounts/Account;II)V

    .line 63
    invoke-static {p0, v2}, Lcom/android/server/content/SyncManagerInjector;->handleSyncStrategyChanged(Landroid/content/Context;Lcom/android/server/content/SyncManager;)V
    :try_end_31
    .catchall {:try_start_21 .. :try_end_31} :catchall_36

    .line 66
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :cond_31
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 67
    nop

    .line 68
    return-void

    .line 66
    :catchall_36
    move-exception v2

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v2
.end method
