.class Lcom/android/server/net/MiuiNetworkPolicyManagerService$15;
.super Landroid/database/ContentObserver;
.source "MiuiNetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/net/MiuiNetworkPolicyManagerService;->registerMobileLatencyAppsChangedObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/net/MiuiNetworkPolicyManagerService;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 930
    iput-object p1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 13
    .param p1, "selfChange"    # Z

    .line 933
    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$1000(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 934
    .local v0, "um":Landroid/os/UserManager;
    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$1000(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 935
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    .line 936
    .local v2, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v3, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    iget-object v5, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$1000(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object v5

    # invokes: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->getMobileLowLatencyApps(Landroid/content/Context;)Ljava/util/Set;
    invoke-static {v4, v5}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$3700(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Landroid/content/Context;)Ljava/util/Set;

    move-result-object v4

    # setter for: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mMobileLowLatencyAppsPN:Ljava/util/Set;
    invoke-static {v3, v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$3402(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Ljava/util/Set;)Ljava/util/Set;

    .line 937
    iget-object v3, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mMobileLowLatencyApps:Ljava/util/Set;
    invoke-static {v3}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$3500(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 938
    iget-object v3, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mMobileLowLatencyAppsPN:Ljava/util/Set;
    invoke-static {v3}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$3400(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_99

    .line 939
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_47
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_99

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 940
    .local v4, "user":Landroid/content/pm/UserInfo;
    const/4 v5, 0x0

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1, v5, v6}, Landroid/content/pm/PackageManagerCompat;->getInstalledPackagesAsUser(Landroid/content/pm/PackageManager;II)Ljava/util/List;

    move-result-object v5

    .line 941
    .local v5, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_98

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageInfo;

    .line 942
    .local v7, "app":Landroid/content/pm/PackageInfo;
    iget-object v8, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v8, :cond_97

    iget-object v8, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v8, :cond_97

    iget-object v8, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    .line 943
    # getter for: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mMobileLowLatencyAppsPN:Ljava/util/Set;
    invoke-static {v8}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$3400(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Ljava/util/Set;

    move-result-object v8

    iget-object v9, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_97

    .line 944
    iget v8, v4, Landroid/content/pm/UserInfo;->id:I

    iget-object v9, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v8, v9}, Landroid/os/UserHandle;->getUid(II)I

    move-result v8

    .line 945
    .local v8, "uid":I
    iget-object v9, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/MiuiNetworkPolicyManagerService;->mMobileLowLatencyApps:Ljava/util/Set;
    invoke-static {v9}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->access$3500(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Ljava/util/Set;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 947
    .end local v7    # "app":Landroid/content/pm/PackageInfo;
    .end local v8    # "uid":I
    :cond_97
    goto :goto_5e

    .line 948
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    .end local v5    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_98
    goto :goto_47

    .line 950
    :cond_99
    return-void
.end method
