.class Lcom/miui/server/BackupManagerService$2;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/server/BackupManagerService;->startConfirmationUi(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/BackupManagerService;

.field final synthetic val$token:I


# direct methods
.method constructor <init>(Lcom/miui/server/BackupManagerService;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/miui/server/BackupManagerService;

    .line 270
    iput-object p1, p0, Lcom/miui/server/BackupManagerService$2;->this$0:Lcom/miui/server/BackupManagerService;

    iput p2, p0, Lcom/miui/server/BackupManagerService$2;->val$token:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 273
    const-string v0, "backup"

    .line 274
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/backup/IBackupManager;

    .line 276
    .local v1, "bm":Landroid/app/backup/IBackupManager;
    :try_start_9
    iget v2, p0, Lcom/miui/server/BackupManagerService$2;->val$token:I

    const/4 v3, 0x1

    const-string v4, ""

    iget-object v0, p0, Lcom/miui/server/BackupManagerService$2;->this$0:Lcom/miui/server/BackupManagerService;

    # getter for: Lcom/miui/server/BackupManagerService;->mPwd:Ljava/lang/String;
    invoke-static {v0}, Lcom/miui/server/BackupManagerService;->access$400(Lcom/miui/server/BackupManagerService;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;

    iget-object v0, p0, Lcom/miui/server/BackupManagerService$2;->this$0:Lcom/miui/server/BackupManagerService;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v7}, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;-><init>(Lcom/miui/server/BackupManagerService;Lcom/miui/server/BackupManagerService$1;)V

    invoke-interface/range {v1 .. v6}, Landroid/app/backup/IBackupManager;->acknowledgeFullBackupOrRestore(IZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_1f} :catch_20

    .line 279
    goto :goto_28

    .line 277
    :catch_20
    move-exception v0

    .line 278
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Backup:BackupManagerService"

    const-string v3, "acknowledgeFullBackupOrRestore failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 280
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_28
    return-void
.end method
