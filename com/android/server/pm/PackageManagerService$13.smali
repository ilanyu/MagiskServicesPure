.class Lcom/android/server/pm/PackageManagerService$13;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->deletePackageVersioned(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$callingUid:I

.field final synthetic val$canViewInstantApps:Z

.field final synthetic val$deleteAllUsers:Z

.field final synthetic val$deleteFlags:I

.field final synthetic val$internalPackageName:Ljava/lang/String;

.field final synthetic val$observer:Landroid/content/pm/IPackageDeleteObserver2;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$userId:I

.field final synthetic val$users:[I

.field final synthetic val$versionCode:J


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;IZZJII[ILandroid/content/pm/IPackageDeleteObserver2;Ljava/lang/String;)V
    .registers 13
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;

    .line 18482
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$13;->val$internalPackageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/pm/PackageManagerService$13;->val$callingUid:I

    iput-boolean p4, p0, Lcom/android/server/pm/PackageManagerService$13;->val$canViewInstantApps:Z

    iput-boolean p5, p0, Lcom/android/server/pm/PackageManagerService$13;->val$deleteAllUsers:Z

    iput-wide p6, p0, Lcom/android/server/pm/PackageManagerService$13;->val$versionCode:J

    iput p8, p0, Lcom/android/server/pm/PackageManagerService$13;->val$userId:I

    iput p9, p0, Lcom/android/server/pm/PackageManagerService$13;->val$deleteFlags:I

    iput-object p10, p0, Lcom/android/server/pm/PackageManagerService$13;->val$users:[I

    iput-object p11, p0, Lcom/android/server/pm/PackageManagerService$13;->val$observer:Landroid/content/pm/IPackageDeleteObserver2;

    iput-object p12, p0, Lcom/android/server/pm/PackageManagerService$13;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    .line 18484
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 18486
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$13;->val$internalPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 18487
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    const/4 v1, 0x1

    .line 18488
    .local v1, "doDeletePackage":Z
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2f

    .line 18489
    iget v4, p0, Lcom/android/server/pm/PackageManagerService$13;->val$callingUid:I

    .line 18490
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v4

    .line 18491
    .local v4, "targetIsInstantApp":Z
    if-eqz v4, :cond_2d

    iget-boolean v5, p0, Lcom/android/server/pm/PackageManagerService$13;->val$canViewInstantApps:Z

    if-eqz v5, :cond_2b

    goto :goto_2d

    :cond_2b
    move v5, v2

    goto :goto_2e

    :cond_2d
    :goto_2d
    move v5, v3

    :goto_2e
    move v1, v5

    .line 18494
    .end local v4    # "targetIsInstantApp":Z
    :cond_2f
    if-eqz v1, :cond_a5

    .line 18495
    iget-boolean v4, p0, Lcom/android/server/pm/PackageManagerService$13;->val$deleteAllUsers:Z

    if-nez v4, :cond_44

    .line 18496
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$13;->val$internalPackageName:Ljava/lang/String;

    iget-wide v7, p0, Lcom/android/server/pm/PackageManagerService$13;->val$versionCode:J

    iget v9, p0, Lcom/android/server/pm/PackageManagerService$13;->val$userId:I

    iget v10, p0, Lcom/android/server/pm/PackageManagerService$13;->val$deleteFlags:I

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/pm/PackageManagerService;->deletePackageX(Ljava/lang/String;JII)I

    move-result v2

    .local v2, "returnCode":I
    goto :goto_a6

    .line 18499
    .end local v2    # "returnCode":I
    :cond_44
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$13;->val$internalPackageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$13;->val$users:[I

    # invokes: Lcom/android/server/pm/PackageManagerService;->getBlockUninstallForUsers(Ljava/lang/String;[I)[I
    invoke-static {v4, v5, v6}, Lcom/android/server/pm/PackageManagerService;->access$4600(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;[I)[I

    move-result-object v4

    .line 18502
    .local v4, "blockUninstallUserIds":[I
    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v5

    if-eqz v5, :cond_63

    .line 18503
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$13;->val$internalPackageName:Ljava/lang/String;

    iget-wide v8, p0, Lcom/android/server/pm/PackageManagerService$13;->val$versionCode:J

    iget v10, p0, Lcom/android/server/pm/PackageManagerService$13;->val$userId:I

    iget v11, p0, Lcom/android/server/pm/PackageManagerService$13;->val$deleteFlags:I

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/pm/PackageManagerService;->deletePackageX(Ljava/lang/String;JII)I

    move-result v2

    .restart local v2    # "returnCode":I
    goto :goto_a4

    .line 18507
    .end local v2    # "returnCode":I
    :cond_63
    iget v5, p0, Lcom/android/server/pm/PackageManagerService$13;->val$deleteFlags:I

    and-int/lit8 v5, v5, -0x3

    .line 18508
    .local v5, "userFlags":I
    iget-object v12, p0, Lcom/android/server/pm/PackageManagerService$13;->val$users:[I

    array-length v13, v12

    :goto_6a
    if-ge v2, v13, :cond_a3

    aget v14, v12, v2

    .line 18509
    .local v14, "userId":I
    invoke-static {v4, v14}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v6

    if-nez v6, :cond_a0

    .line 18510
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$13;->val$internalPackageName:Ljava/lang/String;

    iget-wide v8, p0, Lcom/android/server/pm/PackageManagerService$13;->val$versionCode:J

    move v10, v14

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/pm/PackageManagerService;->deletePackageX(Ljava/lang/String;JII)I

    move-result v6

    .line 18512
    .local v6, "returnCode":I
    if-eq v6, v3, :cond_a0

    .line 18513
    const-string v7, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Package delete failed for user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", returnCode "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18508
    .end local v6    # "returnCode":I
    .end local v14    # "userId":I
    :cond_a0
    add-int/lit8 v2, v2, 0x1

    goto :goto_6a

    .line 18520
    :cond_a3
    const/4 v2, -0x4

    .line 18522
    .end local v4    # "blockUninstallUserIds":[I
    .end local v5    # "userFlags":I
    .restart local v2    # "returnCode":I
    :goto_a4
    goto :goto_a6

    .line 18524
    .end local v2    # "returnCode":I
    :cond_a5
    const/4 v2, -0x1

    .line 18527
    .restart local v2    # "returnCode":I
    :goto_a6
    :try_start_a6
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$13;->val$observer:Landroid/content/pm/IPackageDeleteObserver2;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$13;->val$packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v5}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_ae
    .catch Landroid/os/RemoteException; {:try_start_a6 .. :try_end_ae} :catch_af

    .line 18530
    goto :goto_b7

    .line 18528
    :catch_af
    move-exception v3

    .line 18529
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "PackageManager"

    const-string v5, "Observer no longer exists."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18533
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_b7
    move v3, v2

    .line 18534
    .local v3, "retCode":I
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    new-instance v5, Lcom/android/server/pm/PackageManagerService$13$1;

    invoke-direct {v5, p0, v3}, Lcom/android/server/pm/PackageManagerService$13$1;-><init>(Lcom/android/server/pm/PackageManagerService$13;I)V

    invoke-virtual {v4, v5}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->post(Ljava/lang/Runnable;)Z

    .line 18540
    return-void
.end method
