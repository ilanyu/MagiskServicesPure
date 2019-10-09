.class Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;
.super Lcom/android/internal/content/PackageMonitor;
.source "PrintManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->registerBroadcastReceivers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;


# direct methods
.method constructor <init>(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    .line 815
    iput-object p1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method private hadPrintService(Lcom/android/server/print/UserState;Ljava/lang/String;)Z
    .registers 8
    .param p1, "userState"    # Lcom/android/server/print/UserState;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 844
    nop

    .line 845
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/android/server/print/UserState;->getPrintServices(I)Ljava/util/List;

    move-result-object v0

    .line 847
    .local v0, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 848
    return v1

    .line 851
    :cond_a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 852
    .local v2, "numInstalledServices":I
    move v3, v1

    .local v3, "i":I
    :goto_f
    if-ge v3, v2, :cond_2a

    .line 853
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/printservice/PrintServiceInfo;

    invoke-virtual {v4}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 854
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 855
    const/4 v1, 0x1

    return v1

    .line 852
    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 859
    .end local v3    # "i":I
    :cond_2a
    return v1
.end method

.method private hasPrintService(Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 824
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.printservice.PrintService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 825
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 827
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    # getter for: Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->access$400(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 830
    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->getChangingUserId()I

    move-result v2

    .line 828
    const v3, 0x10800004

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    .line 832
    .local v1, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_29

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_29

    const/4 v2, 0x1

    goto :goto_2a

    :cond_29
    const/4 v2, 0x0

    :goto_2a
    return v2
.end method


# virtual methods
.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .registers 20
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "stoppedPackages"    # [Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "doit"    # Z

    move-object v1, p0

    move-object/from16 v2, p2

    .line 904
    iget-object v0, v1, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    # getter for: Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserManager:Landroid/os/UserManager;
    invoke-static {v0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->access$500(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->getChangingUserId()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_15

    return v3

    .line 905
    :cond_15
    iget-object v0, v1, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    # getter for: Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->access$200(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 909
    :try_start_1c
    iget-object v0, v1, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-virtual {v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->getChangingUserId()I

    move-result v5

    # invokes: Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZZ)Lcom/android/server/print/UserState;
    invoke-static {v0, v5, v3, v3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->access$600(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;IZZ)Lcom/android/server/print/UserState;

    move-result-object v0

    .line 911
    .local v0, "userState":Lcom/android/server/print/UserState;
    const/4 v5, 0x0

    .line 913
    .local v5, "stoppedSomePackages":Z
    nop

    .line 914
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcom/android/server/print/UserState;->getPrintServices(I)Ljava/util/List;

    move-result-object v7

    .line 915
    .local v7, "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    if-nez v7, :cond_31

    .line 916
    monitor-exit v4

    return v3

    .line 919
    :cond_31
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 920
    .local v8, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/printservice/PrintServiceInfo;>;"
    :goto_35
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5f

    .line 921
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/printservice/PrintServiceInfo;

    invoke-virtual {v9}, Landroid/printservice/PrintServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    .line 922
    .local v9, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 923
    .local v10, "componentPackage":Ljava/lang/String;
    array-length v11, v2

    move v12, v3

    :goto_4b
    if-ge v12, v11, :cond_5e

    aget-object v13, v2, v12

    .line 924
    .local v13, "stoppedPackage":Ljava/lang/String;
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5b

    .line 925
    if-nez p4, :cond_59

    .line 926
    monitor-exit v4

    return v6

    .line 928
    :cond_59
    const/4 v5, 0x1

    .line 929
    goto :goto_5e

    .line 923
    .end local v13    # "stoppedPackage":Ljava/lang/String;
    :cond_5b
    add-int/lit8 v12, v12, 0x1

    goto :goto_4b

    .line 932
    .end local v9    # "componentName":Landroid/content/ComponentName;
    .end local v10    # "componentPackage":Ljava/lang/String;
    :cond_5e
    :goto_5e
    goto :goto_35

    .line 933
    :cond_5f
    if-eqz v5, :cond_64

    .line 934
    invoke-virtual {v0}, Lcom/android/server/print/UserState;->updateIfNeededLocked()V

    .line 936
    :cond_64
    monitor-exit v4

    return v3

    .line 937
    .end local v0    # "userState":Lcom/android/server/print/UserState;
    .end local v5    # "stoppedSomePackages":Z
    .end local v7    # "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    .end local v8    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/printservice/PrintServiceInfo;>;"
    :catchall_66
    move-exception v0

    monitor-exit v4
    :try_end_68
    .catchall {:try_start_1c .. :try_end_68} :catchall_66

    throw v0
.end method

.method public onPackageAdded(Ljava/lang/String;I)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 942
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    # getter for: Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserManager:Landroid/os/UserManager;
    invoke-static {v0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->access$500(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->getChangingUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 943
    :cond_11
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    # getter for: Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->access$200(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 944
    :try_start_18
    invoke-direct {p0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->hasPrintService(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 945
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->getChangingUserId()I

    move-result v2

    const/4 v3, 0x0

    # invokes: Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZZ)Lcom/android/server/print/UserState;
    invoke-static {v1, v2, v3, v3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->access$600(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;IZZ)Lcom/android/server/print/UserState;

    move-result-object v1

    .line 947
    .local v1, "userState":Lcom/android/server/print/UserState;
    invoke-virtual {v1}, Lcom/android/server/print/UserState;->updateIfNeededLocked()V

    .line 949
    .end local v1    # "userState":Lcom/android/server/print/UserState;
    :cond_2c
    monitor-exit v0

    .line 950
    return-void

    .line 949
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_18 .. :try_end_30} :catchall_2e

    throw v1
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 864
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    # getter for: Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserManager:Landroid/os/UserManager;
    invoke-static {v0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->access$500(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->getChangingUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 865
    :cond_11
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->getChangingUserId()I

    move-result v1

    const/4 v2, 0x0

    # invokes: Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZZ)Lcom/android/server/print/UserState;
    invoke-static {v0, v1, v2, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->access$600(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;IZZ)Lcom/android/server/print/UserState;

    move-result-object v0

    .line 868
    .local v0, "userState":Lcom/android/server/print/UserState;
    const/4 v1, 0x0

    .line 869
    .local v1, "prunePrintServices":Z
    iget-object v2, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    # getter for: Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->access$200(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 870
    :try_start_24
    invoke-direct {p0, v0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->hadPrintService(Lcom/android/server/print/UserState;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_30

    .line 871
    invoke-direct {p0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->hasPrintService(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 872
    :cond_30
    invoke-virtual {v0}, Lcom/android/server/print/UserState;->updateIfNeededLocked()V

    .line 873
    const/4 v1, 0x1

    .line 875
    :cond_34
    monitor-exit v2
    :try_end_35
    .catchall {:try_start_24 .. :try_end_35} :catchall_3b

    .line 877
    if-eqz v1, :cond_3a

    .line 878
    invoke-virtual {v0}, Lcom/android/server/print/UserState;->prunePrintServices()V

    .line 880
    :cond_3a
    return-void

    .line 875
    :catchall_3b
    move-exception v3

    :try_start_3c
    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v3
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 884
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    # getter for: Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserManager:Landroid/os/UserManager;
    invoke-static {v0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->access$500(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->getChangingUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 885
    :cond_11
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->getChangingUserId()I

    move-result v1

    const/4 v2, 0x0

    # invokes: Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZZ)Lcom/android/server/print/UserState;
    invoke-static {v0, v1, v2, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->access$600(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;IZZ)Lcom/android/server/print/UserState;

    move-result-object v0

    .line 888
    .local v0, "userState":Lcom/android/server/print/UserState;
    const/4 v1, 0x0

    .line 889
    .local v1, "prunePrintServices":Z
    iget-object v2, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    # getter for: Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->access$200(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 890
    :try_start_24
    invoke-direct {p0, v0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->hadPrintService(Lcom/android/server/print/UserState;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 891
    invoke-virtual {v0}, Lcom/android/server/print/UserState;->updateIfNeededLocked()V

    .line 892
    const/4 v1, 0x1

    .line 894
    :cond_2e
    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_24 .. :try_end_2f} :catchall_35

    .line 896
    if-eqz v1, :cond_34

    .line 897
    invoke-virtual {v0}, Lcom/android/server/print/UserState;->prunePrintServices()V

    .line 899
    :cond_34
    return-void

    .line 894
    :catchall_35
    move-exception v3

    :try_start_36
    monitor-exit v2
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v3
.end method
