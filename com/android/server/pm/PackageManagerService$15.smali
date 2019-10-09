.class Lcom/android/server/pm/PackageManagerService$15;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$filterApp:Z

.field final synthetic val$observer:Landroid/content/pm/IPackageDataObserver;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;ZLjava/lang/String;ILandroid/content/pm/IPackageDataObserver;)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;

    .line 19830
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$15;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-boolean p2, p0, Lcom/android/server/pm/PackageManagerService$15;->val$filterApp:Z

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$15;->val$packageName:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/pm/PackageManagerService$15;->val$userId:I

    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$15;->val$observer:Landroid/content/pm/IPackageDataObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 19832
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$15;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 19834
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$15;->val$filterApp:Z

    if-nez v0, :cond_8b

    .line 19835
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$15;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$15;->val$packageName:Ljava/lang/String;

    const-string v2, "clearApplicationUserData"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->freezePackage(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/PackageManagerService$PackageFreezer;

    move-result-object v0

    .local v0, "freezer":Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    const/4 v1, 0x0

    .line 19837
    :try_start_16
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$15;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_1b} :catch_78
    .catchall {:try_start_16 .. :try_end_1b} :catchall_76

    .line 19838
    :try_start_1b
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$15;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$15;->val$packageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/pm/PackageManagerService$15;->val$userId:I

    # invokes: Lcom/android/server/pm/PackageManagerService;->clearApplicationUserDataLIF(Ljava/lang/String;I)Z
    invoke-static {v3, v4, v5}, Lcom/android/server/pm/PackageManagerService;->access$4900(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)Z

    move-result v3

    .line 19839
    .local v3, "succeeded":Z
    monitor-exit v2
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_73

    .line 19840
    :try_start_26
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$15;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$15;->val$packageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/pm/PackageManagerService$15;->val$userId:I

    const/4 v6, 0x1

    # invokes: Lcom/android/server/pm/PackageManagerService;->clearExternalStorageDataSync(Ljava/lang/String;IZ)V
    invoke-static {v2, v4, v5, v6}, Lcom/android/server/pm/PackageManagerService;->access$5000(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;IZ)V

    .line 19841
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$15;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v2
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_35} :catch_78
    .catchall {:try_start_26 .. :try_end_35} :catchall_76

    .line 19842
    :try_start_35
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$15;->this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$5100(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/InstantAppRegistry;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$15;->val$packageName:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/pm/PackageManagerService$15;->val$userId:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/InstantAppRegistry;->deleteInstantApplicationMetadataLPw(Ljava/lang/String;I)V

    .line 19844
    monitor-exit v2
    :try_end_43
    .catchall {:try_start_35 .. :try_end_43} :catchall_70

    .line 19845
    if-eqz v0, :cond_48

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->close()V

    .end local v0    # "freezer":Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    :cond_48
    move v0, v3

    .line 19846
    .end local v3    # "succeeded":Z
    .local v0, "succeeded":Z
    if-eqz v0, :cond_8c

    .line 19848
    const-class v1, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    .line 19849
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    .line 19850
    .local v1, "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    if-eqz v1, :cond_58

    .line 19851
    invoke-interface {v1}, Lcom/android/server/storage/DeviceStorageMonitorInternal;->checkMemory()V

    .line 19853
    :cond_58
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$15;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string v3, "android.permission.SUSPEND_APPS"

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$15;->val$packageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/pm/PackageManagerService$15;->val$userId:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/pm/PackageManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_6f

    .line 19855
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$15;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$15;->val$packageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$15;->val$userId:I

    invoke-virtual {v2, v3, v4}, Lcom/android/server/pm/PackageManagerService;->unsuspendForSuspendingPackage(Ljava/lang/String;I)V

    .line 19857
    .end local v1    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    :cond_6f
    goto :goto_8c

    .line 19844
    .local v0, "freezer":Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    .restart local v3    # "succeeded":Z
    :catchall_70
    move-exception v4

    :try_start_71
    monitor-exit v2
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    :try_start_72
    throw v4
    :try_end_73
    .catch Ljava/lang/Throwable; {:try_start_72 .. :try_end_73} :catch_78
    .catchall {:try_start_72 .. :try_end_73} :catchall_76

    .line 19839
    .end local v3    # "succeeded":Z
    :catchall_73
    move-exception v3

    :try_start_74
    monitor-exit v2
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_73

    :try_start_75
    throw v3
    :try_end_76
    .catch Ljava/lang/Throwable; {:try_start_75 .. :try_end_76} :catch_78
    .catchall {:try_start_75 .. :try_end_76} :catchall_76

    .line 19845
    :catchall_76
    move-exception v2

    goto :goto_7a

    .line 19835
    :catch_78
    move-exception v1

    :try_start_79
    throw v1
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_76

    .line 19845
    :goto_7a
    if-eqz v0, :cond_8a

    if-eqz v1, :cond_87

    :try_start_7e
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->close()V
    :try_end_81
    .catch Ljava/lang/Throwable; {:try_start_7e .. :try_end_81} :catch_82

    goto :goto_8a

    :catch_82
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_8a

    :cond_87
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->close()V

    :cond_8a
    :goto_8a
    throw v2

    .line 19859
    .end local v0    # "freezer":Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    :cond_8b
    const/4 v0, 0x0

    .line 19861
    .local v0, "succeeded":Z
    :cond_8c
    :goto_8c
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$15;->val$observer:Landroid/content/pm/IPackageDataObserver;

    if-eqz v1, :cond_a0

    .line 19863
    :try_start_90
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$15;->val$observer:Landroid/content/pm/IPackageDataObserver;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$15;->val$packageName:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/pm/IPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V
    :try_end_97
    .catch Landroid/os/RemoteException; {:try_start_90 .. :try_end_97} :catch_98

    .line 19866
    goto :goto_a0

    .line 19864
    :catch_98
    move-exception v1

    .line 19865
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "PackageManager"

    const-string v3, "Observer no longer exists."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19868
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_a0
    :goto_a0
    return-void
.end method
