.class Lcom/miui/server/BackupManagerServiceProxy;
.super Ljava/lang/Object;
.source "BackupManagerServiceProxy.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "BackupManagerServiceProxy"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fullBackup(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;Z)V
    .registers 15
    .param p0, "outFileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p1, "pkgs"    # [Ljava/lang/String;
    .param p2, "includeApk"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    const-string v0, "backup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/app/backup/IBackupManager;

    .line 22
    .local v0, "bm":Landroid/app/backup/IBackupManager;
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, v0

    move-object v2, p0

    move v3, p2

    move-object v11, p1

    invoke-interface/range {v1 .. v11}, Landroid/app/backup/IBackupManager;->adbBackup(Landroid/os/ParcelFileDescriptor;ZZZZZZZZ[Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method static fullRestore(Landroid/os/ParcelFileDescriptor;)V
    .registers 2
    .param p0, "fd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    const-string v0, "backup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/app/backup/IBackupManager;

    .line 27
    .local v0, "bm":Landroid/app/backup/IBackupManager;
    invoke-interface {v0, p0}, Landroid/app/backup/IBackupManager;->adbRestore(Landroid/os/ParcelFileDescriptor;)V

    .line 28
    return-void
.end method

.method public static getPackageSizeInfo(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "observer"    # Landroid/content/pm/IPackageStatsObserver;

    .line 32
    const-string/jumbo v0, "storagestats"

    .line 33
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/StorageStatsManager;

    .line 34
    .local v0, "ssm":Landroid/app/usage/StorageStatsManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 36
    .local v1, "oldId":J
    const/4 v3, 0x0

    :try_start_e
    invoke-virtual {p1, p2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 37
    .local v4, "pInfo":Landroid/content/pm/PackageInfo;
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 38
    .local v5, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    iget-object v7, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v8, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 39
    invoke-static {v8}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v8

    .line 38
    invoke-virtual {v0, v6, v7, v8}, Landroid/app/usage/StorageStatsManager;->queryStatsForPackage(Ljava/util/UUID;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/StorageStats;

    move-result-object v6

    .line 40
    .local v6, "stats":Landroid/app/usage/StorageStats;
    new-instance v7, Landroid/content/pm/PackageStats;

    iget v8, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v7, p2, v8}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;I)V

    .line 41
    .local v7, "legacy":Landroid/content/pm/PackageStats;
    invoke-virtual {v6}, Landroid/app/usage/StorageStats;->getCodeBytes()J

    move-result-wide v8

    iput-wide v8, v7, Landroid/content/pm/PackageStats;->codeSize:J

    .line 42
    invoke-virtual {v6}, Landroid/app/usage/StorageStats;->getDataBytes()J

    move-result-wide v8

    iput-wide v8, v7, Landroid/content/pm/PackageStats;->dataSize:J

    .line 43
    invoke-virtual {v6}, Landroid/app/usage/StorageStats;->getCacheBytes()J

    move-result-wide v8

    iput-wide v8, v7, Landroid/content/pm/PackageStats;->cacheSize:J
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_3b} :catch_44
    .catchall {:try_start_e .. :try_end_3b} :catchall_42

    .line 45
    const/4 v8, 0x1

    :try_start_3c
    invoke-interface {p3, v7, v8}, Landroid/content/pm/IPackageStatsObserver;->onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_3f} :catch_40
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3f} :catch_44
    .catchall {:try_start_3c .. :try_end_3f} :catchall_42

    .line 47
    goto :goto_56

    .line 46
    :catch_40
    move-exception v3

    .line 46
    .end local v4    # "pInfo":Landroid/content/pm/PackageInfo;
    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "stats":Landroid/app/usage/StorageStats;
    .end local v7    # "legacy":Landroid/content/pm/PackageStats;
    goto :goto_56

    .line 56
    :catchall_42
    move-exception v3

    goto :goto_5b

    .line 48
    :catch_44
    move-exception v4

    .line 49
    .local v4, "e":Ljava/lang/Exception;
    :try_start_45
    const-string v5, "BackupManagerServiceProxy"

    const-string v6, "getPackageSizeInfo error"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_42

    .line 51
    :try_start_4c
    new-instance v5, Landroid/content/pm/PackageStats;

    invoke-direct {v5, p2, v3}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;I)V

    .line 52
    .local v5, "legacy":Landroid/content/pm/PackageStats;
    invoke-interface {p3, v5, v3}, Landroid/content/pm/IPackageStatsObserver;->onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_54} :catch_55
    .catchall {:try_start_4c .. :try_end_54} :catchall_42

    .line 54
    .end local v5    # "legacy":Landroid/content/pm/PackageStats;
    goto :goto_56

    .line 53
    :catch_55
    move-exception v3

    .line 56
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_56
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 57
    nop

    .line 58
    return-void

    .line 56
    :goto_5b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method
