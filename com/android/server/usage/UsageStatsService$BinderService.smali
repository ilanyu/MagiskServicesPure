.class final Lcom/android/server/usage/UsageStatsService$BinderService;
.super Landroid/app/usage/IUsageStatsManager$Stub;
.source "UsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/UsageStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usage/UsageStatsService;


# direct methods
.method private constructor <init>(Lcom/android/server/usage/UsageStatsService;)V
    .registers 2

    .line 670
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-direct {p0}, Landroid/app/usage/IUsageStatsManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/usage/UsageStatsService;
    .param p2, "x1"    # Lcom/android/server/usage/UsageStatsService$1;

    .line 670
    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService$BinderService;-><init>(Lcom/android/server/usage/UsageStatsService;)V

    return-void
.end method

.method private checkCallerIsSameApp(Ljava/lang/String;)V
    .registers 7
    .param p1, "pkg"    # Ljava/lang/String;

    .line 710
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 711
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 713
    .local v1, "callingUserId":I
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v2, v2, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_14

    .line 718
    return-void

    .line 715
    :cond_14
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " cannot query eventsfor package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private checkCallerIsSystemOrSameApp(Ljava/lang/String;)V
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 703
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService$BinderService;->isCallingUidSystem()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 704
    return-void

    .line 706
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService$BinderService;->checkCallerIsSameApp(Ljava/lang/String;)V

    .line 707
    return-void
.end method

.method private hasObserverPermission(Ljava/lang/String;)Z
    .registers 7
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 689
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 690
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    # invokes: Lcom/android/server/usage/UsageStatsService;->getDpmInternal()Landroid/app/admin/DevicePolicyManagerInternal;
    invoke-static {v1}, Lcom/android/server/usage/UsageStatsService;->access$500(Lcom/android/server/usage/UsageStatsService;)Landroid/app/admin/DevicePolicyManagerInternal;

    move-result-object v1

    .line 691
    .local v1, "dpmInternal":Landroid/app/admin/DevicePolicyManagerInternal;
    const/4 v2, 0x1

    const/16 v3, 0x3e8

    if-eq v0, v3, :cond_2a

    if-eqz v1, :cond_19

    const/4 v3, -0x1

    .line 693
    invoke-virtual {v1, v0, v3}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveAdminWithPolicy(II)Z

    move-result v3

    if-eqz v3, :cond_19

    goto :goto_2a

    .line 698
    :cond_19
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v3}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.OBSERVE_APP_USAGE"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_28

    goto :goto_29

    :cond_28
    const/4 v2, 0x0

    :goto_29
    return v2

    .line 696
    :cond_2a
    :goto_2a
    return v2
.end method

.method private hasPermission(Ljava/lang/String;)Z
    .registers 8
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 673
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 674
    .local v0, "callingUid":I
    const/4 v1, 0x1

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_a

    .line 675
    return v1

    .line 677
    :cond_a
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v2, v2, Lcom/android/server/usage/UsageStatsService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v3, 0x2b

    invoke-virtual {v2, v3, v0, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v2

    .line 679
    .local v2, "mode":I
    const/4 v3, 0x3

    const/4 v4, 0x0

    if-ne v2, v3, :cond_29

    .line 682
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v3}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {v3, v5}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_27

    goto :goto_28

    :cond_27
    move v1, v4

    :goto_28
    return v1

    .line 685
    :cond_29
    if-nez v2, :cond_2c

    goto :goto_2d

    :cond_2c
    move v1, v4

    :goto_2d
    return v1
.end method

.method private isCallingUidSystem()Z
    .registers 3

    .line 721
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 722
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1118
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "UsageStatsService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 1119
    :cond_f
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, p3, p2}, Lcom/android/server/usage/UsageStatsService;->dump([Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1120
    return-void
.end method

.method public getAppStandbyBucket(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 953
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 955
    .local v0, "callingUid":I
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    .line 956
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "getAppStandbyBucket"

    const/4 v8, 0x0

    .line 955
    move v3, v0

    move v4, p3

    invoke-interface/range {v1 .. v8}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_17} :catch_74

    move p3, v1

    .line 960
    nop

    .line 961
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v1, v1, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, p3}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v1

    .line 963
    .local v1, "packageUid":I
    if-eq v1, v0, :cond_33

    .line 964
    invoke-direct {p0, p2}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermission(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    goto :goto_33

    .line 965
    :cond_2b
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Don\'t have permission to query app standby bucket"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 969
    :cond_33
    :goto_33
    if-ltz v1, :cond_58

    .line 973
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    # invokes: Lcom/android/server/usage/UsageStatsService;->shouldObfuscateInstantAppsForCaller(II)Z
    invoke-static {v2, v0, p3}, Lcom/android/server/usage/UsageStatsService;->access$600(Lcom/android/server/usage/UsageStatsService;II)Z

    move-result v8

    .line 975
    .local v8, "obfuscateInstantApps":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    move-wide v9, v2

    .line 977
    .local v9, "token":J
    :try_start_40
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v2, v2, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    .line 978
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 977
    move-object v3, p1

    move v4, p3

    move v7, v8

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/usage/AppStandbyController;->getAppStandbyBucket(Ljava/lang/String;IJZ)I

    move-result v2
    :try_end_4f
    .catchall {:try_start_40 .. :try_end_4f} :catchall_53

    .line 980
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 977
    return v2

    .line 980
    :catchall_53
    move-exception v2

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 970
    .end local v8    # "obfuscateInstantApps":Z
    .end local v9    # "token":J
    :cond_58
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot get standby bucket for non existent package ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 958
    .end local v1    # "packageUid":I
    :catch_74
    move-exception v1

    .line 959
    .local v1, "re":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getAppStandbyBuckets(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .registers 11
    .param p1, "callingPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/usage/AppStandbyInfo;",
            ">;"
        }
    .end annotation

    .line 1030
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1032
    .local v2, "callingUid":I
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 1033
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "getAppStandbyBucket"

    const/4 v7, 0x0

    .line 1032
    move v3, p2

    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_16} :catch_47

    move p2, v0

    .line 1037
    nop

    .line 1038
    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 1042
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1044
    .local v0, "token":J
    :try_start_22
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v3, v3, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    .line 1045
    invoke-virtual {v3, p2}, Lcom/android/server/usage/AppStandbyController;->getAppStandbyBuckets(I)Ljava/util/List;

    move-result-object v3

    .line 1046
    .local v3, "standbyBucketList":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/AppStandbyInfo;>;"
    if-nez v3, :cond_31

    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    goto :goto_36

    .line 1047
    :cond_31
    new-instance v4, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v4, v3}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_36
    .catchall {:try_start_22 .. :try_end_36} :catchall_3a

    .line 1049
    :goto_36
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1046
    return-object v4

    .line 1049
    .end local v3    # "standbyBucketList":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/AppStandbyInfo;>;"
    :catchall_3a
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 1039
    .end local v0    # "token":J
    :cond_3f
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Don\'t have permission to query app standby bucket"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1035
    :catch_47
    move-exception v0

    .line 1036
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isAppInactive(Ljava/lang/String;I)Z
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 912
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 913
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "isAppInactive"

    const/4 v7, 0x0

    .line 912
    move v3, p2

    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_3f

    move p2, v0

    .line 916
    nop

    .line 917
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 918
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 917
    # invokes: Lcom/android/server/usage/UsageStatsService;->shouldObfuscateInstantAppsForCaller(II)Z
    invoke-static {v0, v1, p2}, Lcom/android/server/usage/UsageStatsService;->access$600(Lcom/android/server/usage/UsageStatsService;II)Z

    move-result v0

    .line 919
    .local v0, "obfuscateInstantApps":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    move-wide v7, v1

    .line 921
    .local v7, "token":J
    :try_start_27
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v1, v1, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    .line 923
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 921
    move-object v2, p1

    move v3, p2

    move v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/AppStandbyController;->isAppIdleFilteredOrParoled(Ljava/lang/String;IJZ)Z

    move-result v1
    :try_end_36
    .catchall {:try_start_27 .. :try_end_36} :catchall_3a

    .line 925
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 921
    return v1

    .line 925
    :catchall_3a
    move-exception v1

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 914
    .end local v0    # "obfuscateInstantApps":Z
    .end local v7    # "token":J
    :catch_3f
    move-exception v0

    .line 915
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public onCarrierPrivilegedAppsChanged()V
    .registers 4

    .line 1110
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.BIND_CARRIER_SERVICES"

    const-string/jumbo v2, "onCarrierPrivilegedAppsChanged can only be called by privileged apps."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController;->clearCarrierPrivilegedApps()V

    .line 1114
    return-void
.end method

.method public queryConfigurationStats(IJJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .registers 21
    .param p1, "bucketType"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .param p6, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/usage/ConfigurationStats;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v1, p0

    .line 786
    move-object/from16 v2, p6

    invoke-direct {v1, v2}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_b

    .line 787
    return-object v3

    .line 790
    :cond_b
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v11

    .line 791
    .local v11, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    move-wide v12, v4

    .line 793
    .local v12, "token":J
    :try_start_14
    iget-object v4, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 794
    move v5, v11

    move v6, p1

    move-wide/from16 v7, p2

    move-wide/from16 v9, p4

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/usage/UsageStatsService;->queryConfigurationStats(IIJJ)Ljava/util/List;

    move-result-object v0

    .line 796
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/ConfigurationStats;>;"
    if-eqz v0, :cond_2b

    .line 797
    new-instance v3, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v3, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_27
    .catchall {:try_start_14 .. :try_end_27} :catchall_30

    .line 800
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 797
    return-object v3

    .line 800
    .end local v0    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/ConfigurationStats;>;"
    :cond_2b
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 801
    nop

    .line 802
    return-object v3

    .line 800
    :catchall_30
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public queryEventStats(IJJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .registers 21
    .param p1, "bucketType"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .param p6, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/usage/EventStats;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v1, p0

    .line 808
    move-object/from16 v2, p6

    invoke-direct {v1, v2}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_b

    .line 809
    return-object v3

    .line 812
    :cond_b
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v11

    .line 813
    .local v11, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    move-wide v12, v4

    .line 815
    .local v12, "token":J
    :try_start_14
    iget-object v4, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 816
    move v5, v11

    move v6, p1

    move-wide/from16 v7, p2

    move-wide/from16 v9, p4

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/usage/UsageStatsService;->queryEventStats(IIJJ)Ljava/util/List;

    move-result-object v0

    .line 818
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/EventStats;>;"
    if-eqz v0, :cond_2b

    .line 819
    new-instance v3, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v3, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_27
    .catchall {:try_start_14 .. :try_end_27} :catchall_30

    .line 822
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 819
    return-object v3

    .line 822
    .end local v0    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/EventStats;>;"
    :cond_2b
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 823
    nop

    .line 824
    return-object v3

    .line 822
    :catchall_30
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public queryEvents(JJLjava/lang/String;)Landroid/app/usage/UsageEvents;
    .registers 20
    .param p1, "beginTime"    # J
    .param p3, "endTime"    # J
    .param p5, "callingPackage"    # Ljava/lang/String;

    move-object v1, p0

    .line 829
    move-object/from16 v2, p5

    invoke-direct {v1, v2}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 830
    const/4 v0, 0x0

    return-object v0

    .line 833
    :cond_b
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 834
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 833
    # invokes: Lcom/android/server/usage/UsageStatsService;->shouldObfuscateInstantAppsForCaller(II)Z
    invoke-static {v0, v3, v4}, Lcom/android/server/usage/UsageStatsService;->access$600(Lcom/android/server/usage/UsageStatsService;II)Z

    move-result v3

    .line 836
    .local v3, "obfuscateInstantApps":Z
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 837
    .local v4, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    move-wide v12, v5

    .line 839
    .local v12, "token":J
    :try_start_22
    iget-object v5, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    move v6, v4

    move-wide v7, p1

    move-wide/from16 v9, p3

    move v11, v3

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/usage/UsageStatsService;->queryEvents(IJJZ)Landroid/app/usage/UsageEvents;

    move-result-object v0
    :try_end_2d
    .catchall {:try_start_22 .. :try_end_2d} :catchall_31

    .line 842
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 839
    return-object v0

    .line 842
    :catchall_31
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public queryEventsForPackage(JJLjava/lang/String;)Landroid/app/usage/UsageEvents;
    .registers 20
    .param p1, "beginTime"    # J
    .param p3, "endTime"    # J
    .param p5, "callingPackage"    # Ljava/lang/String;

    move-object v1, p0

    .line 849
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 850
    .local v2, "callingUid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    .line 852
    .local v10, "callingUserId":I
    move-object/from16 v11, p5

    invoke-direct {v1, v11}, Lcom/android/server/usage/UsageStatsService$BinderService;->checkCallerIsSameApp(Ljava/lang/String;)V

    .line 853
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    move-wide v12, v3

    .line 855
    .local v12, "token":J
    :try_start_13
    iget-object v3, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    move v4, v10

    move-wide v5, p1

    move-wide/from16 v7, p3

    move-object v9, v11

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/usage/UsageStatsService;->queryEventsForPackage(IJJLjava/lang/String;)Landroid/app/usage/UsageEvents;

    move-result-object v0
    :try_end_1e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_22

    .line 858
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 855
    return-object v0

    .line 858
    :catchall_22
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public queryEventsForPackageForUser(JJILjava/lang/String;Ljava/lang/String;)Landroid/app/usage/UsageEvents;
    .registers 22
    .param p1, "beginTime"    # J
    .param p3, "endTime"    # J
    .param p5, "userId"    # I
    .param p6, "pkg"    # Ljava/lang/String;
    .param p7, "callingPackage"    # Ljava/lang/String;

    move-object v1, p0

    .line 890
    move-object/from16 v9, p7

    invoke-direct {v1, v9}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 891
    const/4 v0, 0x0

    return-object v0

    .line 893
    :cond_b
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    move/from16 v10, p5

    if-eq v10, v0, :cond_20

    .line 894
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v3, "No permission to query usage stats for this user"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    :cond_20
    move-object/from16 v11, p6

    invoke-direct {v1, v11}, Lcom/android/server/usage/UsageStatsService$BinderService;->checkCallerIsSystemOrSameApp(Ljava/lang/String;)V

    .line 900
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    move-wide v12, v2

    .line 902
    .local v12, "token":J
    :try_start_2a
    iget-object v2, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    move v3, v10

    move-wide v4, p1

    move-wide/from16 v6, p3

    move-object v8, v9

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/usage/UsageStatsService;->queryEventsForPackage(IJJLjava/lang/String;)Landroid/app/usage/UsageEvents;

    move-result-object v0
    :try_end_35
    .catchall {:try_start_2a .. :try_end_35} :catchall_39

    .line 905
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 902
    return-object v0

    .line 905
    :catchall_39
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public queryEventsForUser(JJILjava/lang/String;)Landroid/app/usage/UsageEvents;
    .registers 21
    .param p1, "beginTime"    # J
    .param p3, "endTime"    # J
    .param p5, "userId"    # I
    .param p6, "callingPackage"    # Ljava/lang/String;

    move-object v1, p0

    .line 865
    move-object/from16 v2, p6

    invoke-direct {v1, v2}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 866
    const/4 v0, 0x0

    return-object v0

    .line 869
    :cond_b
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    move/from16 v10, p5

    if-eq v10, v0, :cond_20

    .line 870
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v4, "No permission to query usage stats for this user"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    :cond_20
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 876
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 875
    # invokes: Lcom/android/server/usage/UsageStatsService;->shouldObfuscateInstantAppsForCaller(II)Z
    invoke-static {v0, v3, v4}, Lcom/android/server/usage/UsageStatsService;->access$600(Lcom/android/server/usage/UsageStatsService;II)Z

    move-result v11

    .line 878
    .local v11, "obfuscateInstantApps":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    move-wide v12, v3

    .line 880
    .local v12, "token":J
    :try_start_33
    iget-object v3, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    move v4, v10

    move-wide v5, p1

    move-wide/from16 v7, p3

    move v9, v11

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/usage/UsageStatsService;->queryEvents(IJJZ)Landroid/app/usage/UsageEvents;

    move-result-object v0
    :try_end_3e
    .catchall {:try_start_33 .. :try_end_3e} :catchall_42

    .line 883
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 880
    return-object v0

    .line 883
    :catchall_42
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public queryUsageStats(IJJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .registers 23
    .param p1, "bucketType"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .param p6, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 728
    move-object/from16 v2, p6

    invoke-direct {v1, v2}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_c

    .line 729
    return-object v3

    .line 732
    :cond_c
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 733
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 732
    # invokes: Lcom/android/server/usage/UsageStatsService;->shouldObfuscateInstantAppsForCaller(II)Z
    invoke-static {v0, v4, v5}, Lcom/android/server/usage/UsageStatsService;->access$600(Lcom/android/server/usage/UsageStatsService;II)Z

    move-result v4

    .line 735
    .local v4, "obfuscateInstantApps":Z
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 736
    .local v5, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    move-wide v14, v6

    .line 738
    .local v14, "token":J
    :try_start_23
    iget-object v6, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    move v7, v5

    move/from16 v8, p1

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    move v13, v4

    invoke-virtual/range {v6 .. v13}, Lcom/android/server/usage/UsageStatsService;->queryUsageStats(IIJJZ)Ljava/util/List;

    move-result-object v0

    .line 740
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    if-eqz v0, :cond_3c

    .line 741
    new-instance v3, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v3, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_38
    .catchall {:try_start_23 .. :try_end_38} :catchall_41

    .line 744
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 741
    return-object v3

    .line 744
    .end local v0    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    :cond_3c
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 745
    nop

    .line 746
    return-object v3

    .line 744
    :catchall_41
    move-exception v0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public queryUsageStatsAsUser(IJJLjava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .registers 24
    .param p1, "bucketType"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .param p6, "callingPackage"    # Ljava/lang/String;
    .param p7, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 755
    move/from16 v10, p7

    if-ltz v10, :cond_60

    .line 758
    move-object/from16 v11, p6

    invoke-direct {v1, v11}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    const/4 v12, 0x0

    if-nez v0, :cond_10

    .line 759
    return-object v12

    .line 762
    :cond_10
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    .line 763
    .local v13, "callingUid":I
    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-eq v10, v0, :cond_27

    .line 764
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    const-string v3, "get usagestats"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    :cond_27
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 769
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 768
    # invokes: Lcom/android/server/usage/UsageStatsService;->shouldObfuscateInstantAppsForCaller(II)Z
    invoke-static {v0, v13, v2}, Lcom/android/server/usage/UsageStatsService;->access$600(Lcom/android/server/usage/UsageStatsService;II)Z

    move-result v14

    .line 770
    .local v14, "obfuscateInstantApps":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    move-wide v7, v2

    .line 772
    .local v7, "token":J
    :try_start_36
    iget-object v2, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;
    :try_end_38
    .catchall {:try_start_36 .. :try_end_38} :catchall_59

    move v3, v10

    move/from16 v4, p1

    move-wide/from16 v5, p2

    move v15, v13

    move-wide v12, v7

    move-wide/from16 v7, p4

    .end local v7    # "token":J
    .end local v13    # "callingUid":I
    .local v12, "token":J
    .local v15, "callingUid":I
    move v9, v14

    :try_start_42
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/usage/UsageStatsService;->queryUsageStats(IIJJZ)Ljava/util/List;

    move-result-object v0

    .line 774
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    if-eqz v0, :cond_51

    .line 775
    new-instance v2, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v2, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_4d
    .catchall {:try_start_42 .. :try_end_4d} :catchall_57

    .line 778
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 775
    return-object v2

    .line 778
    .end local v0    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    :cond_51
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 779
    nop

    .line 780
    const/4 v0, 0x0

    return-object v0

    .line 778
    :catchall_57
    move-exception v0

    goto :goto_5c

    .end local v12    # "token":J
    .end local v15    # "callingUid":I
    .restart local v7    # "token":J
    .restart local v13    # "callingUid":I
    :catchall_59
    move-exception v0

    move v15, v13

    move-wide v12, v7

    .end local v7    # "token":J
    .end local v13    # "callingUid":I
    .restart local v12    # "token":J
    .restart local v15    # "callingUid":I
    :goto_5c
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 756
    .end local v12    # "token":J
    .end local v14    # "obfuscateInstantApps":Z
    .end local v15    # "callingUid":I
    :cond_60
    move-object/from16 v11, p6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid userId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerAppUsageObserver(I[Ljava/lang/String;JLandroid/app/PendingIntent;Ljava/lang/String;)V
    .registers 22
    .param p1, "observerId"    # I
    .param p2, "packages"    # [Ljava/lang/String;
    .param p3, "timeLimitMs"    # J
    .param p5, "callbackIntent"    # Landroid/app/PendingIntent;
    .param p6, "callingPackage"    # Ljava/lang/String;

    move-object v1, p0

    move-object/from16 v10, p2

    .line 1151
    move-object/from16 v11, p6

    invoke-direct {v1, v11}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasObserverPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 1155
    if-eqz v10, :cond_43

    array-length v0, v10

    if-eqz v0, :cond_43

    .line 1158
    if-eqz p5, :cond_3b

    .line 1161
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 1162
    .local v12, "callingUid":I
    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    .line 1163
    .local v13, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    move-wide v8, v2

    .line 1165
    .local v8, "token":J
    :try_start_1f
    iget-object v2, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;
    :try_end_21
    .catchall {:try_start_1f .. :try_end_21} :catchall_35

    move v3, v12

    move/from16 v4, p1

    move-object v5, v10

    move-wide/from16 v6, p3

    move-wide v10, v8

    move-object/from16 v8, p5

    .end local v8    # "token":J
    .local v10, "token":J
    move v9, v13

    :try_start_2b
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/usage/UsageStatsService;->registerAppUsageObserver(II[Ljava/lang/String;JLandroid/app/PendingIntent;I)V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_33

    .line 1168
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1169
    nop

    .line 1170
    return-void

    .line 1168
    :catchall_33
    move-exception v0

    goto :goto_37

    .end local v10    # "token":J
    .restart local v8    # "token":J
    :catchall_35
    move-exception v0

    move-wide v10, v8

    .end local v8    # "token":J
    .restart local v10    # "token":J
    :goto_37
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1159
    .end local v10    # "token":J
    .end local v12    # "callingUid":I
    .end local v13    # "userId":I
    :cond_3b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "callbackIntent can\'t be null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1156
    :cond_43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Must specify at least one package"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1152
    :cond_4b
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Caller doesn\'t have OBSERVE_APP_USAGE permission"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reportChooserSelection(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "annotations"    # [Ljava/lang/String;
    .param p5, "action"    # Ljava/lang/String;

    .line 1125
    if-nez p1, :cond_a

    .line 1126
    const-string v0, "UsageStatsService"

    const-string v1, "Event report user selecting a null package"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    return-void

    .line 1130
    :cond_a
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v0}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 1131
    .local v0, "event":Landroid/app/usage/UsageEvents$Event;
    iput-object p1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 1134
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 1136
    const/16 v1, 0x9

    iput v1, v0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 1138
    iput-object p5, v0, Landroid/app/usage/UsageEvents$Event;->mAction:Ljava/lang/String;

    .line 1140
    iput-object p3, v0, Landroid/app/usage/UsageEvents$Event;->mContentType:Ljava/lang/String;

    .line 1142
    iput-object p4, v0, Landroid/app/usage/UsageEvents$Event;->mContentAnnotations:[Ljava/lang/String;

    .line 1144
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v1, v1, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1145
    return-void
.end method

.method public setAppInactive(Ljava/lang/String;ZI)V
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "idle"    # Z
    .param p3, "userId"    # I

    .line 931
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 933
    .local v2, "callingUid":I
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 934
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string/jumbo v6, "setAppInactive"

    const/4 v7, 0x0

    .line 933
    move v3, p3

    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_17} :catch_49

    move p3, v0

    .line 938
    nop

    .line 939
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CHANGE_APP_IDLE_STATE"

    const-string v3, "No permission to change app idle state"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 943
    .local v0, "token":J
    :try_start_2a
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v3, v3, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v3, p1}, Lcom/android/server/usage/AppStandbyController;->getAppId(Ljava/lang/String;)I

    move-result v3
    :try_end_32
    .catchall {:try_start_2a .. :try_end_32} :catchall_44

    .line 944
    .local v3, "appId":I
    if-gez v3, :cond_38

    .line 947
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 944
    return-void

    .line 945
    :cond_38
    :try_start_38
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v4, v4, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v4, p1, p2, p3}, Lcom/android/server/usage/AppStandbyController;->setAppIdleAsync(Ljava/lang/String;ZI)V
    :try_end_3f
    .catchall {:try_start_38 .. :try_end_3f} :catchall_44

    .line 947
    .end local v3    # "appId":I
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 948
    nop

    .line 949
    return-void

    .line 947
    :catchall_44
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 936
    .end local v0    # "token":J
    :catch_49
    move-exception v0

    .line 937
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setAppStandbyBucket(Ljava/lang/String;II)V
    .registers 23
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "bucket"    # I
    .param p3, "userId"    # I

    move-object/from16 v1, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    .line 987
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.CHANGE_APP_IDLE_STATE"

    const-string v3, "No permission to change app standby state"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    const/16 v0, 0xa

    if-lt v11, v0, :cond_bd

    const/16 v0, 0x32

    if-gt v11, v0, :cond_bd

    .line 994
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    move v12, v0

    .line 996
    .local v12, "callingUid":I
    :try_start_20
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    .line 997
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string/jumbo v8, "setAppStandbyBucket"

    const/4 v9, 0x0

    .line 996
    move v4, v12

    move/from16 v5, p3

    invoke-interface/range {v2 .. v9}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_35} :catch_b5

    move v13, v0

    .line 1001
    .end local p3    # "userId":I
    .local v13, "userId":I
    nop

    .line 1002
    if-eqz v12, :cond_40

    const/16 v0, 0x7d0

    if-ne v12, v0, :cond_3e

    goto :goto_40

    :cond_3e
    const/4 v0, 0x0

    goto :goto_41

    :cond_40
    :goto_40
    const/4 v0, 0x1

    :goto_41
    move v9, v0

    .line 1003
    .local v9, "shellCaller":Z
    invoke-static {v12}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v14

    .line 1004
    .local v14, "systemCaller":Z
    if-eqz v14, :cond_4c

    .line 1005
    const/16 v0, 0x400

    .line 1006
    :goto_4a
    move v6, v0

    goto :goto_4f

    :cond_4c
    const/16 v0, 0x500

    goto :goto_4a

    .line 1007
    .local v6, "reason":I
    :goto_4f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    move-wide v7, v2

    .line 1009
    .local v7, "token":J
    :try_start_54
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const/high16 v2, 0x400000

    invoke-virtual {v0, v10, v2, v13}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v0

    .line 1012
    .local v0, "packageUid":I
    if-eq v0, v12, :cond_9c

    .line 1015
    if-ltz v0, :cond_7b

    .line 1020
    iget-object v2, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v2, v2, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    .line 1021
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15
    :try_end_6a
    .catchall {:try_start_54 .. :try_end_6a} :catchall_ab

    .line 1020
    move-object v3, v10

    move v4, v13

    move v5, v11

    move/from16 v17, v12

    move/from16 v18, v13

    move-wide v12, v7

    move-wide v7, v15

    .line 1020
    .end local v7    # "token":J
    .end local v13    # "userId":I
    .local v12, "token":J
    .local v17, "callingUid":I
    .local v18, "userId":I
    :try_start_73
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/usage/AppStandbyController;->setAppStandbyBucket(Ljava/lang/String;IIIJZ)V
    :try_end_76
    .catchall {:try_start_73 .. :try_end_76} :catchall_a9

    .line 1023
    .end local v0    # "packageUid":I
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1024
    nop

    .line 1025
    return-void

    .line 1016
    .end local v17    # "callingUid":I
    .end local v18    # "userId":I
    .restart local v0    # "packageUid":I
    .restart local v7    # "token":J
    .local v12, "callingUid":I
    .restart local v13    # "userId":I
    :cond_7b
    move/from16 v17, v12

    move/from16 v18, v13

    move-wide v12, v7

    .line 1016
    .end local v7    # "token":J
    .end local v13    # "userId":I
    .local v12, "token":J
    .restart local v17    # "callingUid":I
    .restart local v18    # "userId":I
    :try_start_80
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot set standby bucket for non existent package ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1013
    .end local v17    # "callingUid":I
    .end local v18    # "userId":I
    .restart local v7    # "token":J
    .local v12, "callingUid":I
    .restart local v13    # "userId":I
    :cond_9c
    move/from16 v17, v12

    move/from16 v18, v13

    move-wide v12, v7

    .line 1013
    .end local v7    # "token":J
    .end local v13    # "userId":I
    .local v12, "token":J
    .restart local v17    # "callingUid":I
    .restart local v18    # "userId":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cannot set your own standby bucket"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_a9
    .catchall {:try_start_80 .. :try_end_a9} :catchall_a9

    .line 1023
    .end local v0    # "packageUid":I
    :catchall_a9
    move-exception v0

    goto :goto_b1

    .line 1023
    .end local v17    # "callingUid":I
    .end local v18    # "userId":I
    .restart local v7    # "token":J
    .local v12, "callingUid":I
    .restart local v13    # "userId":I
    :catchall_ab
    move-exception v0

    move/from16 v17, v12

    move/from16 v18, v13

    move-wide v12, v7

    .line 1023
    .end local v7    # "token":J
    .end local v13    # "userId":I
    .local v12, "token":J
    .restart local v17    # "callingUid":I
    .restart local v18    # "userId":I
    :goto_b1
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 999
    .end local v6    # "reason":I
    .end local v9    # "shellCaller":Z
    .end local v14    # "systemCaller":Z
    .end local v17    # "callingUid":I
    .end local v18    # "userId":I
    .local v12, "callingUid":I
    .restart local p3    # "userId":I
    :catch_b5
    move-exception v0

    move/from16 v17, v12

    .line 1000
    .end local v12    # "callingUid":I
    .local v0, "re":Landroid/os/RemoteException;
    .restart local v17    # "callingUid":I
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 992
    .end local v0    # "re":Landroid/os/RemoteException;
    .end local v17    # "callingUid":I
    :cond_bd
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot set the standby bucket to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAppStandbyBuckets(Landroid/content/pm/ParceledListSlice;I)V
    .registers 22
    .param p1, "appBuckets"    # Landroid/content/pm/ParceledListSlice;
    .param p2, "userId"    # I

    move-object/from16 v1, p0

    .line 1055
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.CHANGE_APP_IDLE_STATE"

    const-string v3, "No permission to change app standby state"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    move v10, v0

    .line 1060
    .local v10, "callingUid":I
    :try_start_14
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    .line 1061
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string/jumbo v8, "setAppStandbyBucket"

    const/4 v9, 0x0

    .line 1060
    move v4, v10

    move/from16 v5, p2

    invoke-interface/range {v2 .. v9}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_29} :catch_c1

    move v11, v0

    .line 1065
    .end local p2    # "userId":I
    .local v11, "userId":I
    nop

    .line 1066
    if-eqz v10, :cond_34

    const/16 v0, 0x7d0

    if-ne v10, v0, :cond_32

    goto :goto_34

    :cond_32
    const/4 v0, 0x0

    goto :goto_35

    :cond_34
    :goto_34
    const/4 v0, 0x1

    :goto_35
    move v12, v0

    .line 1067
    .local v12, "shellCaller":Z
    if-eqz v12, :cond_3c

    .line 1068
    const/16 v0, 0x400

    .line 1069
    :goto_3a
    move v6, v0

    goto :goto_3f

    :cond_3c
    const/16 v0, 0x500

    goto :goto_3a

    .line 1070
    .local v6, "reason":I
    :goto_3f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    move-wide v13, v2

    .line 1072
    .local v13, "token":J
    :try_start_44
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 1073
    .local v7, "elapsedRealtime":J
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 1074
    .local v0, "bucketList":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/AppStandbyInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_50
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b7

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/AppStandbyInfo;

    move-object v9, v2

    .line 1075
    .local v9, "bucketInfo":Landroid/app/usage/AppStandbyInfo;
    iget-object v2, v9, Landroid/app/usage/AppStandbyInfo;->mPackageName:Ljava/lang/String;

    move-object v5, v2

    .line 1076
    .local v5, "packageName":Ljava/lang/String;
    iget v2, v9, Landroid/app/usage/AppStandbyInfo;->mStandbyBucket:I

    move v4, v2

    .line 1077
    .local v4, "bucket":I
    const/16 v2, 0xa

    if-lt v4, v2, :cond_98

    const/16 v2, 0x32

    if-gt v4, v2, :cond_98

    .line 1083
    iget-object v2, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v2, v2, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const/high16 v3, 0x400000

    invoke-virtual {v2, v5, v3, v11}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v2

    if-eq v2, v10, :cond_8a

    .line 1087
    iget-object v2, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v2, v2, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    move-object v3, v5

    move/from16 v16, v4

    move v4, v11

    .line 1087
    .end local v4    # "bucket":I
    .local v16, "bucket":I
    move-object/from16 v17, v5

    move/from16 v5, v16

    .line 1087
    .end local v5    # "packageName":Ljava/lang/String;
    .local v17, "packageName":Ljava/lang/String;
    move-object/from16 v18, v9

    move v9, v12

    .line 1087
    .end local v9    # "bucketInfo":Landroid/app/usage/AppStandbyInfo;
    .local v18, "bucketInfo":Landroid/app/usage/AppStandbyInfo;
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/usage/AppStandbyController;->setAppStandbyBucket(Ljava/lang/String;IIIJZ)V

    .line 1089
    .end local v16    # "bucket":I
    .end local v17    # "packageName":Ljava/lang/String;
    .end local v18    # "bucketInfo":Landroid/app/usage/AppStandbyInfo;
    goto :goto_50

    .line 1085
    .restart local v4    # "bucket":I
    .restart local v5    # "packageName":Ljava/lang/String;
    .restart local v9    # "bucketInfo":Landroid/app/usage/AppStandbyInfo;
    :cond_8a
    move/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v9

    .line 1085
    .end local v4    # "bucket":I
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v9    # "bucketInfo":Landroid/app/usage/AppStandbyInfo;
    .restart local v16    # "bucket":I
    .restart local v17    # "packageName":Ljava/lang/String;
    .restart local v18    # "bucketInfo":Landroid/app/usage/AppStandbyInfo;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cannot set your own standby bucket"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1079
    .end local v16    # "bucket":I
    .end local v17    # "packageName":Ljava/lang/String;
    .end local v18    # "bucketInfo":Landroid/app/usage/AppStandbyInfo;
    .restart local v4    # "bucket":I
    .restart local v5    # "packageName":Ljava/lang/String;
    .restart local v9    # "bucketInfo":Landroid/app/usage/AppStandbyInfo;
    :cond_98
    move/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v9

    .line 1079
    .end local v4    # "bucket":I
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v9    # "bucketInfo":Landroid/app/usage/AppStandbyInfo;
    .restart local v16    # "bucket":I
    .restart local v17    # "packageName":Ljava/lang/String;
    .restart local v18    # "bucketInfo":Landroid/app/usage/AppStandbyInfo;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot set the standby bucket to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, v16

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v16    # "bucket":I
    .restart local v4    # "bucket":I
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_b7
    .catchall {:try_start_44 .. :try_end_b7} :catchall_bc

    .line 1091
    .end local v0    # "bucketList":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/AppStandbyInfo;>;"
    .end local v4    # "bucket":I
    .end local v7    # "elapsedRealtime":J
    .end local v17    # "packageName":Ljava/lang/String;
    .end local v18    # "bucketInfo":Landroid/app/usage/AppStandbyInfo;
    :cond_b7
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1092
    nop

    .line 1093
    return-void

    .line 1091
    :catchall_bc
    move-exception v0

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1063
    .end local v6    # "reason":I
    .end local v11    # "userId":I
    .end local v12    # "shellCaller":Z
    .end local v13    # "token":J
    .restart local p2    # "userId":I
    :catch_c1
    move-exception v0

    .line 1064
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public unregisterAppUsageObserver(ILjava/lang/String;)V
    .registers 8
    .param p1, "observerId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 1174
    invoke-direct {p0, p2}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasObserverPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1178
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1179
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1180
    .local v1, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1182
    .local v2, "token":J
    :try_start_12
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v4, v0, p1, v1}, Lcom/android/server/usage/UsageStatsService;->unregisterAppUsageObserver(III)V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_1c

    .line 1184
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1185
    nop

    .line 1186
    return-void

    .line 1184
    :catchall_1c
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 1175
    .end local v0    # "callingUid":I
    .end local v1    # "userId":I
    .end local v2    # "token":J
    :cond_21
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller doesn\'t have OBSERVE_APP_USAGE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelistAppTemporarily(Ljava/lang/String;JI)V
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "duration"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1098
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1099
    .local v0, "reason":Ljava/lang/StringBuilder;
    const-string v1, "from:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1100
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 1101
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v2, v1, Lcom/android/server/usage/UsageStatsService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    .line 1102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1101
    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-interface/range {v2 .. v7}, Landroid/os/IDeviceIdleController;->addPowerSaveTempWhitelistApp(Ljava/lang/String;JILjava/lang/String;)V

    .line 1103
    return-void
.end method
