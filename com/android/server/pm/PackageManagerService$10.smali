.class Lcom/android/server/pm/PackageManagerService$10;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->processPendingInstall(Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

.field final synthetic val$currentStatus:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;ILcom/android/server/pm/PackageManagerService$InstallArgs;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;

    .line 15393
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$10;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput p2, p0, Lcom/android/server/pm/PackageManagerService$10;->val$currentStatus:I

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$10;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .line 15395
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$10;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 15397
    new-instance v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;-><init>()V

    .line 15398
    .local v0, "res":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    iget v1, p0, Lcom/android/server/pm/PackageManagerService$10;->val$currentStatus:I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->setReturnCode(I)V

    .line 15399
    const/4 v1, -0x1

    iput v1, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->uid:I

    .line 15400
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 15401
    iput-object v1, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    .line 15402
    iget v1, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3f

    .line 15403
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$10;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget v3, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    invoke-virtual {v1, v3}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->doPreInstall(I)I

    .line 15404
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$10;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v1

    .line 15405
    :try_start_2a
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$10;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$10;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    # invokes: Lcom/android/server/pm/PackageManagerService;->installPackageTracedLI(Lcom/android/server/pm/PackageManagerService$InstallArgs;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)V
    invoke-static {v3, v4, v0}, Lcom/android/server/pm/PackageManagerService;->access$3300(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)V

    .line 15406
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_2a .. :try_end_32} :catchall_3c

    .line 15407
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$10;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget v3, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->uid:I

    invoke-virtual {v1, v3, v4}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->doPostInstall(II)I

    goto :goto_3f

    .line 15406
    :catchall_3c
    move-exception v2

    :try_start_3d
    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v2

    .line 15413
    :cond_3f
    :goto_3f
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    const/4 v3, 0x0

    if-eqz v1, :cond_4c

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    if-eqz v1, :cond_4c

    move v1, v2

    goto :goto_4d

    :cond_4c
    move v1, v3

    .line 15415
    .local v1, "update":Z
    :goto_4d
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    if-nez v4, :cond_53

    move v4, v3

    goto :goto_59

    :cond_53
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 15416
    .local v4, "flags":I
    :goto_59
    if-nez v1, :cond_63

    const v5, 0x8000

    and-int/2addr v5, v4

    if-eqz v5, :cond_63

    move v5, v2

    goto :goto_64

    :cond_63
    move v5, v3

    .line 15423
    .local v5, "doRestore":Z
    :goto_64
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$10;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget v6, v6, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    if-gez v6, :cond_6e

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$10;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput v2, v6, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    .line 15424
    :cond_6e
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$10;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget v7, v6, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v6, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    move v6, v7

    .line 15426
    .local v6, "token":I
    new-instance v7, Lcom/android/server/pm/PackageManagerService$PostInstallData;

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$10;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    invoke-direct {v7, v8, v0}, Lcom/android/server/pm/PackageManagerService$PostInstallData;-><init>(Lcom/android/server/pm/PackageManagerService$InstallArgs;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)V

    .line 15427
    .local v7, "data":Lcom/android/server/pm/PackageManagerService$PostInstallData;
    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$10;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    invoke-virtual {v8, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 15430
    iget v8, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    const-wide/32 v9, 0x40000

    if-ne v8, v2, :cond_c6

    if-eqz v5, :cond_c6

    .line 15435
    const-string v2, "backup"

    .line 15436
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 15435
    invoke-static {v2}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v2

    .line 15437
    .local v2, "bm":Landroid/app/backup/IBackupManager;
    if-eqz v2, :cond_be

    .line 15440
    const-string/jumbo v8, "restore"

    invoke-static {v9, v10, v8, v6}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 15443
    :try_start_a0
    invoke-interface {v2, v3}, Landroid/app/backup/IBackupManager;->isBackupServiceActive(I)Z

    move-result v8

    if-eqz v8, :cond_b0

    .line 15444
    iget-object v8, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v8, v6}, Landroid/app/backup/IBackupManager;->restoreAtInstall(Ljava/lang/String;I)V
    :try_end_af
    .catch Landroid/os/RemoteException; {:try_start_a0 .. :try_end_af} :catch_bc
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_af} :catch_b2

    goto :goto_bb

    .line 15446
    :cond_b0
    const/4 v5, 0x0

    goto :goto_bb

    .line 15450
    :catch_b2
    move-exception v8

    .line 15451
    .local v8, "e":Ljava/lang/Exception;
    const-string v11, "PackageManager"

    const-string v12, "Exception trying to enqueue restore"

    invoke-static {v11, v12, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15452
    const/4 v5, 0x0

    .line 15453
    .end local v2    # "bm":Landroid/app/backup/IBackupManager;
    .end local v8    # "e":Ljava/lang/Exception;
    :goto_bb
    goto :goto_c6

    .line 15448
    .restart local v2    # "bm":Landroid/app/backup/IBackupManager;
    :catch_bc
    move-exception v8

    goto :goto_bb

    .line 15455
    :cond_be
    const-string v8, "PackageManager"

    const-string v11, "Backup Manager not found!"

    invoke-static {v8, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15456
    const/4 v5, 0x0

    .line 15460
    .end local v2    # "bm":Landroid/app/backup/IBackupManager;
    :cond_c6
    :goto_c6
    if-nez v5, :cond_df

    .line 15465
    const-string/jumbo v2, "postInstall"

    invoke-static {v9, v10, v2, v6}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 15467
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$10;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/16 v8, 0x9

    invoke-virtual {v2, v8, v6, v3}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 15468
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$10;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 15470
    .end local v2    # "msg":Landroid/os/Message;
    :cond_df
    return-void
.end method
