.class Lcom/android/server/backup/restore/PerformAdbRestoreTask$RestoreFinishedRunnable;
.super Ljava/lang/Object;
.source "PerformAdbRestoreTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/restore/PerformAdbRestoreTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RestoreFinishedRunnable"
.end annotation


# instance fields
.field private final mAgent:Landroid/app/IBackupAgent;

.field private final mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

.field private final mToken:I


# direct methods
.method constructor <init>(Landroid/app/IBackupAgent;ILcom/android/server/backup/BackupManagerService;)V
    .registers 4
    .param p1, "agent"    # Landroid/app/IBackupAgent;
    .param p2, "token"    # I
    .param p3, "backupManagerService"    # Lcom/android/server/backup/BackupManagerService;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask$RestoreFinishedRunnable;->mAgent:Landroid/app/IBackupAgent;

    .line 120
    iput p2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask$RestoreFinishedRunnable;->mToken:I

    .line 121
    iput-object p3, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask$RestoreFinishedRunnable;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 122
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask$RestoreFinishedRunnable;->mAgent:Landroid/app/IBackupAgent;

    iget v1, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask$RestoreFinishedRunnable;->mToken:I

    iget-object v2, p0, Lcom/android/server/backup/restore/PerformAdbRestoreTask$RestoreFinishedRunnable;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/app/IBackupAgent;->doRestoreFinished(ILandroid/app/backup/IBackupManager;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 130
    goto :goto_f

    .line 128
    :catch_e
    move-exception v0

    .line 131
    :goto_f
    return-void
.end method
