.class Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;
.super Landroid/app/backup/IFullBackupRestoreObserver$Stub;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FullBackupRestoreObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/BackupManagerService;


# direct methods
.method private constructor <init>(Lcom/miui/server/BackupManagerService;)V
    .registers 2

    .line 756
    iput-object p1, p0, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;->this$0:Lcom/miui/server/BackupManagerService;

    invoke-direct {p0}, Landroid/app/backup/IFullBackupRestoreObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/server/BackupManagerService;Lcom/miui/server/BackupManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/miui/server/BackupManagerService;
    .param p2, "x1"    # Lcom/miui/server/BackupManagerService$1;

    .line 756
    invoke-direct {p0, p1}, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;-><init>(Lcom/miui/server/BackupManagerService;)V

    return-void
.end method


# virtual methods
.method public onBackupPackage(Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 764
    iget-object v0, p0, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;->this$0:Lcom/miui/server/BackupManagerService;

    # getter for: Lcom/miui/server/BackupManagerService;->mCurrentWorkingPkg:Ljava/lang/String;
    invoke-static {v0}, Lcom/miui/server/BackupManagerService;->access$100(Lcom/miui/server/BackupManagerService;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;->this$0:Lcom/miui/server/BackupManagerService;

    # getter for: Lcom/miui/server/BackupManagerService;->mCurrentWorkingPkg:Ljava/lang/String;
    invoke-static {v0}, Lcom/miui/server/BackupManagerService;->access$100(Lcom/miui/server/BackupManagerService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 767
    :cond_15
    iget-object v0, p0, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;->this$0:Lcom/miui/server/BackupManagerService;

    # getter for: Lcom/miui/server/BackupManagerService;->mBackupRestoreObserver:Lmiui/app/backup/IPackageBackupRestoreObserver;
    invoke-static {v0}, Lcom/miui/server/BackupManagerService;->access$800(Lcom/miui/server/BackupManagerService;)Lmiui/app/backup/IPackageBackupRestoreObserver;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 768
    iget-object v0, p0, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;->this$0:Lcom/miui/server/BackupManagerService;

    # getter for: Lcom/miui/server/BackupManagerService;->mBackupRestoreObserver:Lmiui/app/backup/IPackageBackupRestoreObserver;
    invoke-static {v0}, Lcom/miui/server/BackupManagerService;->access$800(Lcom/miui/server/BackupManagerService;)Lmiui/app/backup/IPackageBackupRestoreObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;->this$0:Lcom/miui/server/BackupManagerService;

    # getter for: Lcom/miui/server/BackupManagerService;->mCurrentWorkingPkg:Ljava/lang/String;
    invoke-static {v1}, Lcom/miui/server/BackupManagerService;->access$100(Lcom/miui/server/BackupManagerService;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;->this$0:Lcom/miui/server/BackupManagerService;

    # getter for: Lcom/miui/server/BackupManagerService;->mCurrentWorkingFeature:I
    invoke-static {v2}, Lcom/miui/server/BackupManagerService;->access$900(Lcom/miui/server/BackupManagerService;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lmiui/app/backup/IPackageBackupRestoreObserver;->onBackupStart(Ljava/lang/String;I)V

    .line 770
    :cond_32
    return-void
.end method

.method public onEndBackup()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 774
    iget-object v0, p0, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;->this$0:Lcom/miui/server/BackupManagerService;

    # getter for: Lcom/miui/server/BackupManagerService;->mBackupRestoreObserver:Lmiui/app/backup/IPackageBackupRestoreObserver;
    invoke-static {v0}, Lcom/miui/server/BackupManagerService;->access$800(Lcom/miui/server/BackupManagerService;)Lmiui/app/backup/IPackageBackupRestoreObserver;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 775
    iget-object v0, p0, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;->this$0:Lcom/miui/server/BackupManagerService;

    # getter for: Lcom/miui/server/BackupManagerService;->mBackupRestoreObserver:Lmiui/app/backup/IPackageBackupRestoreObserver;
    invoke-static {v0}, Lcom/miui/server/BackupManagerService;->access$800(Lcom/miui/server/BackupManagerService;)Lmiui/app/backup/IPackageBackupRestoreObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;->this$0:Lcom/miui/server/BackupManagerService;

    # getter for: Lcom/miui/server/BackupManagerService;->mCurrentWorkingPkg:Ljava/lang/String;
    invoke-static {v1}, Lcom/miui/server/BackupManagerService;->access$100(Lcom/miui/server/BackupManagerService;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;->this$0:Lcom/miui/server/BackupManagerService;

    # getter for: Lcom/miui/server/BackupManagerService;->mCurrentWorkingFeature:I
    invoke-static {v2}, Lcom/miui/server/BackupManagerService;->access$900(Lcom/miui/server/BackupManagerService;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lmiui/app/backup/IPackageBackupRestoreObserver;->onBackupEnd(Ljava/lang/String;I)V

    .line 777
    :cond_1d
    return-void
.end method

.method public onEndRestore()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 793
    iget-object v0, p0, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;->this$0:Lcom/miui/server/BackupManagerService;

    # getter for: Lcom/miui/server/BackupManagerService;->mBackupRestoreObserver:Lmiui/app/backup/IPackageBackupRestoreObserver;
    invoke-static {v0}, Lcom/miui/server/BackupManagerService;->access$800(Lcom/miui/server/BackupManagerService;)Lmiui/app/backup/IPackageBackupRestoreObserver;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 795
    iget-object v0, p0, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;->this$0:Lcom/miui/server/BackupManagerService;

    # getter for: Lcom/miui/server/BackupManagerService;->mBackupRestoreObserver:Lmiui/app/backup/IPackageBackupRestoreObserver;
    invoke-static {v0}, Lcom/miui/server/BackupManagerService;->access$800(Lcom/miui/server/BackupManagerService;)Lmiui/app/backup/IPackageBackupRestoreObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;->this$0:Lcom/miui/server/BackupManagerService;

    # getter for: Lcom/miui/server/BackupManagerService;->mCurrentWorkingPkg:Ljava/lang/String;
    invoke-static {v1}, Lcom/miui/server/BackupManagerService;->access$100(Lcom/miui/server/BackupManagerService;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;->this$0:Lcom/miui/server/BackupManagerService;

    # getter for: Lcom/miui/server/BackupManagerService;->mCurrentWorkingFeature:I
    invoke-static {v2}, Lcom/miui/server/BackupManagerService;->access$900(Lcom/miui/server/BackupManagerService;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lmiui/app/backup/IPackageBackupRestoreObserver;->onRestoreEnd(Ljava/lang/String;I)V

    .line 797
    :cond_1d
    return-void
.end method

.method public onRestorePackage(Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 785
    iget-object v0, p0, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;->this$0:Lcom/miui/server/BackupManagerService;

    # getter for: Lcom/miui/server/BackupManagerService;->mBackupRestoreObserver:Lmiui/app/backup/IPackageBackupRestoreObserver;
    invoke-static {v0}, Lcom/miui/server/BackupManagerService;->access$800(Lcom/miui/server/BackupManagerService;)Lmiui/app/backup/IPackageBackupRestoreObserver;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 787
    iget-object v0, p0, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;->this$0:Lcom/miui/server/BackupManagerService;

    # getter for: Lcom/miui/server/BackupManagerService;->mBackupRestoreObserver:Lmiui/app/backup/IPackageBackupRestoreObserver;
    invoke-static {v0}, Lcom/miui/server/BackupManagerService;->access$800(Lcom/miui/server/BackupManagerService;)Lmiui/app/backup/IPackageBackupRestoreObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;->this$0:Lcom/miui/server/BackupManagerService;

    # getter for: Lcom/miui/server/BackupManagerService;->mCurrentWorkingPkg:Ljava/lang/String;
    invoke-static {v1}, Lcom/miui/server/BackupManagerService;->access$100(Lcom/miui/server/BackupManagerService;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;->this$0:Lcom/miui/server/BackupManagerService;

    # getter for: Lcom/miui/server/BackupManagerService;->mCurrentWorkingFeature:I
    invoke-static {v2}, Lcom/miui/server/BackupManagerService;->access$900(Lcom/miui/server/BackupManagerService;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lmiui/app/backup/IPackageBackupRestoreObserver;->onRestoreStart(Ljava/lang/String;I)V

    .line 789
    :cond_1d
    return-void
.end method

.method public onStartBackup()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 760
    return-void
.end method

.method public onStartRestore()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 781
    return-void
.end method

.method public onTimeout()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 801
    return-void
.end method
