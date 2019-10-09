.class Lcom/android/server/pm/PackageManagerService$11;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->notifyFirstLaunch(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$installerPackage:Ljava/lang/String;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;

    .line 15491
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$11;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$11;->val$packageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/pm/PackageManagerService$11;->val$userId:I

    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$11;->val$installerPackage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 15494
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$11;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_47

    .line 15495
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$11;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageManagerService$PostInstallData;

    .line 15496
    .local v2, "data":Lcom/android/server/pm/PackageManagerService$PostInstallData;
    iget-object v4, v2, Lcom/android/server/pm/PackageManagerService$PostInstallData;->res:Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    iget v4, v4, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    if-eq v4, v3, :cond_1e

    .line 15497
    goto :goto_44

    .line 15499
    :cond_1e
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$11;->val$packageName:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/pm/PackageManagerService$PostInstallData;->res:Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 15501
    move v3, v0

    .local v3, "uIndex":I
    :goto_2f
    iget-object v4, v2, Lcom/android/server/pm/PackageManagerService$PostInstallData;->res:Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->newUsers:[I

    array-length v4, v4

    if-ge v3, v4, :cond_44

    .line 15502
    iget v4, p0, Lcom/android/server/pm/PackageManagerService$11;->val$userId:I

    iget-object v5, v2, Lcom/android/server/pm/PackageManagerService$PostInstallData;->res:Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->newUsers:[I

    aget v5, v5, v3

    if-ne v4, v5, :cond_41

    .line 15507
    return-void

    .line 15501
    :cond_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    .line 15494
    .end local v2    # "data":Lcom/android/server/pm/PackageManagerService$PostInstallData;
    .end local v3    # "uIndex":I
    :cond_44
    :goto_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 15516
    .end local v1    # "i":I
    :cond_47
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$11;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$11;->val$packageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$11;->val$userId:I

    invoke-virtual {v1, v2, v4}, Lcom/android/server/pm/PackageManagerService;->isInstantApp(Ljava/lang/String;I)Z

    move-result v1

    .line 15517
    .local v1, "isInstantApp":Z
    if-eqz v1, :cond_58

    # getter for: Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$3200()[I

    move-result-object v2

    goto :goto_5e

    :cond_58
    new-array v2, v3, [I

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$11;->val$userId:I

    aput v4, v2, v0

    .line 15518
    .local v2, "userIds":[I
    :goto_5e
    if-eqz v1, :cond_67

    new-array v3, v3, [I

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$11;->val$userId:I

    aput v4, v3, v0

    goto :goto_6b

    :cond_67
    # getter for: Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$3200()[I

    move-result-object v3

    :goto_6b
    move-object v0, v3

    .line 15519
    .local v0, "instantUserIds":[I
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$11;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$11;->val$packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$11;->val$installerPackage:Ljava/lang/String;

    # invokes: Lcom/android/server/pm/PackageManagerService;->sendFirstLaunchBroadcast(Ljava/lang/String;Ljava/lang/String;[I[I)V
    invoke-static {v3, v4, v5, v2, v0}, Lcom/android/server/pm/PackageManagerService;->access$3400(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/lang/String;[I[I)V

    .line 15520
    return-void
.end method
