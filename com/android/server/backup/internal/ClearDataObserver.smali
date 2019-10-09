.class public Lcom/android/server/backup/internal/ClearDataObserver;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "ClearDataObserver.java"


# instance fields
.field private backupManagerService:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/BackupManagerService;)V
    .registers 2
    .param p1, "backupManagerService"    # Lcom/android/server/backup/BackupManagerService;

    .line 27
    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/server/backup/internal/ClearDataObserver;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 29
    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "succeeded"    # Z

    .line 32
    iget-object v0, p0, Lcom/android/server/backup/internal/ClearDataObserver;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getClearDataLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 33
    :try_start_7
    iget-object v1, p0, Lcom/android/server/backup/internal/ClearDataObserver;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/backup/BackupManagerService;->setClearingData(Z)V

    .line 34
    iget-object v1, p0, Lcom/android/server/backup/internal/ClearDataObserver;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->getClearDataLock()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 35
    monitor-exit v0

    .line 36
    return-void

    .line 35
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw v1
.end method
