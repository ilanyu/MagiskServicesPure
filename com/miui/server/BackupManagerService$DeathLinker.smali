.class Lcom/miui/server/BackupManagerService$DeathLinker;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeathLinker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/BackupManagerService;


# direct methods
.method private constructor <init>(Lcom/miui/server/BackupManagerService;)V
    .registers 2

    .line 810
    iput-object p1, p0, Lcom/miui/server/BackupManagerService$DeathLinker;->this$0:Lcom/miui/server/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/server/BackupManagerService;Lcom/miui/server/BackupManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/miui/server/BackupManagerService;
    .param p2, "x1"    # Lcom/miui/server/BackupManagerService$1;

    .line 810
    invoke-direct {p0, p1}, Lcom/miui/server/BackupManagerService$DeathLinker;-><init>(Lcom/miui/server/BackupManagerService;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 5

    .line 813
    iget-object v0, p0, Lcom/miui/server/BackupManagerService$DeathLinker;->this$0:Lcom/miui/server/BackupManagerService;

    # invokes: Lcom/miui/server/BackupManagerService;->releaseBackupWriteStream()V
    invoke-static {v0}, Lcom/miui/server/BackupManagerService;->access$1000(Lcom/miui/server/BackupManagerService;)V

    .line 814
    iget-object v0, p0, Lcom/miui/server/BackupManagerService$DeathLinker;->this$0:Lcom/miui/server/BackupManagerService;

    const/4 v1, 0x0

    # setter for: Lcom/miui/server/BackupManagerService;->mBackupRestoreObserver:Lmiui/app/backup/IPackageBackupRestoreObserver;
    invoke-static {v0, v1}, Lcom/miui/server/BackupManagerService;->access$802(Lcom/miui/server/BackupManagerService;Lmiui/app/backup/IPackageBackupRestoreObserver;)Lmiui/app/backup/IPackageBackupRestoreObserver;

    .line 815
    iget-object v0, p0, Lcom/miui/server/BackupManagerService$DeathLinker;->this$0:Lcom/miui/server/BackupManagerService;

    const/4 v2, -0x1

    # setter for: Lcom/miui/server/BackupManagerService;->mOwnerPid:I
    invoke-static {v0, v2}, Lcom/miui/server/BackupManagerService;->access$1102(Lcom/miui/server/BackupManagerService;I)I

    .line 816
    iget-object v0, p0, Lcom/miui/server/BackupManagerService$DeathLinker;->this$0:Lcom/miui/server/BackupManagerService;

    # getter for: Lcom/miui/server/BackupManagerService;->mICaller:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/miui/server/BackupManagerService;->access$1300(Lcom/miui/server/BackupManagerService;)Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/server/BackupManagerService$DeathLinker;->this$0:Lcom/miui/server/BackupManagerService;

    # getter for: Lcom/miui/server/BackupManagerService;->mDeathLinker:Lcom/miui/server/BackupManagerService$DeathLinker;
    invoke-static {v2}, Lcom/miui/server/BackupManagerService;->access$1200(Lcom/miui/server/BackupManagerService;)Lcom/miui/server/BackupManagerService$DeathLinker;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 817
    iget-object v0, p0, Lcom/miui/server/BackupManagerService$DeathLinker;->this$0:Lcom/miui/server/BackupManagerService;

    # setter for: Lcom/miui/server/BackupManagerService;->mICaller:Landroid/os/IBinder;
    invoke-static {v0, v1}, Lcom/miui/server/BackupManagerService;->access$1302(Lcom/miui/server/BackupManagerService;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 819
    :try_start_26
    iget-object v0, p0, Lcom/miui/server/BackupManagerService$DeathLinker;->this$0:Lcom/miui/server/BackupManagerService;

    # invokes: Lcom/miui/server/BackupManagerService;->broadcastServiceIdle()V
    invoke-static {v0}, Lcom/miui/server/BackupManagerService;->access$1400(Lcom/miui/server/BackupManagerService;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2b} :catch_2c

    .line 822
    goto :goto_30

    .line 820
    :catch_2c
    move-exception v0

    .line 821
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 823
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_30
    return-void
.end method
