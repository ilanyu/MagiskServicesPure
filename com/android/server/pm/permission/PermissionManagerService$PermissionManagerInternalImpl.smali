.class Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;
.super Lcom/android/server/pm/permission/PermissionManagerInternal;
.source "PermissionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/permission/PermissionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PermissionManagerInternalImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/permission/PermissionManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/permission/PermissionManagerService;)V
    .registers 2

    .line 2080
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/permission/PermissionManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p2, "x1"    # Lcom/android/server/pm/permission/PermissionManagerService$1;

    .line 2080
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;)V

    return-void
.end method


# virtual methods
.method public addAllPermissionGroups(Landroid/content/pm/PackageParser$Package;Z)V
    .registers 4
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "chatty"    # Z

    .line 2104
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    # invokes: Lcom/android/server/pm/permission/PermissionManagerService;->addAllPermissionGroups(Landroid/content/pm/PackageParser$Package;Z)V
    invoke-static {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->access$500(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;Z)V

    .line 2105
    return-void
.end method

.method public addAllPermissions(Landroid/content/pm/PackageParser$Package;Z)V
    .registers 4
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "chatty"    # Z

    .line 2100
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    # invokes: Lcom/android/server/pm/permission/PermissionManagerService;->addAllPermissions(Landroid/content/pm/PackageParser$Package;Z)V
    invoke-static {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->access$400(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;Z)V

    .line 2101
    return-void
.end method

.method public addDynamicPermission(Landroid/content/pm/PermissionInfo;ZILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)Z
    .registers 6
    .param p1, "info"    # Landroid/content/pm/PermissionInfo;
    .param p2, "async"    # Z
    .param p3, "callingUid"    # I
    .param p4, "callback"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;

    .line 2113
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    # invokes: Lcom/android/server/pm/permission/PermissionManagerService;->addDynamicPermission(Landroid/content/pm/PermissionInfo;ILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)Z
    invoke-static {v0, p1, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->access$700(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PermissionInfo;ILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)Z

    move-result v0

    return v0
.end method

.method public checkPermission(Ljava/lang/String;Ljava/lang/String;II)I
    .registers 6
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "userId"    # I

    .line 2209
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    # invokes: Lcom/android/server/pm/permission/PermissionManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;II)I
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2200(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public checkUidPermission(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;II)I
    .registers 6
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "uid"    # I
    .param p4, "callingUid"    # I

    .line 2215
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    # invokes: Lcom/android/server/pm/permission/PermissionManagerService;->checkUidPermission(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;II)I
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2300(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Landroid/content/pm/PackageParser$Package;II)I

    move-result v0

    return v0
.end method

.method public enforceCrossUserPermission(IIZZLjava/lang/String;)V
    .registers 13
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I
    .param p3, "requireFullPermission"    # Z
    .param p4, "checkShell"    # Z
    .param p5, "message"    # Ljava/lang/String;

    .line 2192
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    # invokes: Lcom/android/server/pm/permission/PermissionManagerService;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V
    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2000(Lcom/android/server/pm/permission/PermissionManagerService;IIZZZLjava/lang/String;)V

    .line 2194
    return-void
.end method

.method public enforceCrossUserPermission(IIZZZLjava/lang/String;)V
    .registers 14
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I
    .param p3, "requireFullPermission"    # Z
    .param p4, "checkShell"    # Z
    .param p5, "requirePermissionWhenSameUser"    # Z
    .param p6, "message"    # Ljava/lang/String;

    .line 2199
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    # invokes: Lcom/android/server/pm/permission/PermissionManagerService;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V
    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2000(Lcom/android/server/pm/permission/PermissionManagerService;IIZZZLjava/lang/String;)V

    .line 2201
    return-void
.end method

.method public enforceGrantRevokeRuntimePermissionPermissions(Ljava/lang/String;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;

    .line 2204
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    # invokes: Lcom/android/server/pm/permission/PermissionManagerService;->enforceGrantRevokeRuntimePermissionPermissions(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2100(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;)V

    .line 2205
    return-void
.end method

.method public getAllPermissionGroups(II)Ljava/util/List;
    .registers 4
    .param p1, "flags"    # I
    .param p2, "callingUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/content/pm/PermissionGroupInfo;",
            ">;"
        }
    .end annotation

    .line 2225
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    # invokes: Lcom/android/server/pm/permission/PermissionManagerService;->getAllPermissionGroups(II)Ljava/util/List;
    invoke-static {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2500(Lcom/android/server/pm/permission/PermissionManagerService;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .param p1, "permName"    # Ljava/lang/String;

    .line 2169
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    # invokes: Lcom/android/server/pm/permission/PermissionManagerService;->getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->access$1600(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultPermissionGrantPolicy()Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;
    .registers 2

    .line 2244
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    # getter for: Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;
    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2900(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    move-result-object v0

    return-object v0
.end method

.method public getPermissionFlags(Ljava/lang/String;Ljava/lang/String;II)I
    .registers 6
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "userId"    # I

    .line 2174
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    # invokes: Lcom/android/server/pm/permission/PermissionManagerService;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;II)I
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->access$1700(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public getPermissionGroupInfo(Ljava/lang/String;II)Landroid/content/pm/PermissionGroupInfo;
    .registers 5
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "callingUid"    # I

    .line 2220
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    # invokes: Lcom/android/server/pm/permission/PermissionManagerService;->getPermissionGroupInfo(Ljava/lang/String;II)Landroid/content/pm/PermissionGroupInfo;
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2400(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;II)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPermissionInfo(Ljava/lang/String;Ljava/lang/String;II)Landroid/content/pm/PermissionInfo;
    .registers 6
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "callingUid"    # I

    .line 2230
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    # invokes: Lcom/android/server/pm/permission/PermissionManagerService;->getPermissionInfo(Ljava/lang/String;Ljava/lang/String;II)Landroid/content/pm/PermissionInfo;
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2600(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/lang/String;II)Landroid/content/pm/PermissionInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPermissionInfoByGroup(Ljava/lang/String;II)Ljava/util/List;
    .registers 5
    .param p1, "group"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "callingUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation

    .line 2236
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    # invokes: Lcom/android/server/pm/permission/PermissionManagerService;->getPermissionInfoByGroup(Ljava/lang/String;II)Ljava/util/List;
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2700(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPermissionSettings()Lcom/android/server/pm/permission/PermissionSettings;
    .registers 2

    .line 2240
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    # getter for: Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;
    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2800(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionSettings;

    move-result-object v0

    return-object v0
.end method

.method public getPermissionTEMP(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;
    .registers 4
    .param p1, "permName"    # Ljava/lang/String;

    .line 2248
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    # getter for: Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$3000(Lcom/android/server/pm/permission/PermissionManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2249
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    # getter for: Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;
    invoke-static {v1}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2800(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionSettings;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 2250
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public grantRequestedRuntimePermissions(Landroid/content/pm/PackageParser$Package;[I[Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .registers 12
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userIds"    # [I
    .param p3, "grantedPermissions"    # [Ljava/lang/String;
    .param p4, "callingUid"    # I
    .param p5, "callback"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;

    .line 2130
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    # invokes: Lcom/android/server/pm/permission/PermissionManagerService;->grantRequestedRuntimePermissions(Landroid/content/pm/PackageParser$Package;[I[Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerService;->access$1000(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;[I[Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V

    .line 2132
    return-void
.end method

.method public grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .registers 14
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "overridePolicy"    # Z
    .param p4, "callingUid"    # I
    .param p5, "userId"    # I
    .param p6, "callback"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;

    .line 2124
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    # invokes: Lcom/android/server/pm/permission/PermissionManagerService;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService;->access$900(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V

    .line 2126
    return-void
.end method

.method public grantRuntimePermissionsGrantedToDisabledPackage(Landroid/content/pm/PackageParser$Package;ILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .registers 5
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "callingUid"    # I
    .param p3, "callback"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;

    .line 2136
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    # invokes: Lcom/android/server/pm/permission/PermissionManagerService;->grantRuntimePermissionsGrantedToDisabledPackageLocked(Landroid/content/pm/PackageParser$Package;ILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->access$1100(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;ILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V

    .line 2138
    return-void
.end method

.method public isPermissionsReviewRequired(Landroid/content/pm/PackageParser$Package;I)Z
    .registers 4
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userId"    # I

    .line 2087
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    # invokes: Lcom/android/server/pm/permission/PermissionManagerService;->isPermissionsReviewRequired(Landroid/content/pm/PackageParser$Package;I)Z
    invoke-static {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->access$200(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;I)Z

    move-result v0

    return v0
.end method

.method public removeAllPermissions(Landroid/content/pm/PackageParser$Package;Z)V
    .registers 4
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "chatty"    # Z

    .line 2108
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    # invokes: Lcom/android/server/pm/permission/PermissionManagerService;->removeAllPermissions(Landroid/content/pm/PackageParser$Package;Z)V
    invoke-static {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->access$600(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;Z)V

    .line 2109
    return-void
.end method

.method public removeDynamicPermission(Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .registers 5
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "callback"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;

    .line 2118
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    # invokes: Lcom/android/server/pm/permission/PermissionManagerService;->removeDynamicPermission(Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->access$800(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V

    .line 2119
    return-void
.end method

.method public revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .registers 14
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "overridePolicy"    # Z
    .param p4, "callingUid"    # I
    .param p5, "userId"    # I
    .param p6, "callback"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;

    .line 2143
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    # invokes: Lcom/android/server/pm/permission/PermissionManagerService;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService;->access$1200(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V

    .line 2145
    return-void
.end method

.method public revokeRuntimePermissionNotKill(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .registers 15
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "overridePolicy"    # Z
    .param p4, "callingUid"    # I
    .param p5, "userId"    # I
    .param p6, "callback"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;

    .line 2151
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    # invokes: Lcom/android/server/pm/permission/PermissionManagerService;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;ZZIILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    invoke-static/range {v0 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->access$1300(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/lang/String;ZZIILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V

    .line 2153
    return-void
.end method

.method public revokeRuntimePermissionsIfGroupChanged(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;Ljava/util/ArrayList;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .registers 6
    .param p1, "newPackage"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "oldPackage"    # Landroid/content/pm/PackageParser$Package;
    .param p4, "permissionCallback"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "Landroid/content/pm/PackageParser$Package;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;",
            ")V"
        }
    .end annotation

    .line 2095
    .local p3, "allPackageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    # invokes: Lcom/android/server/pm/permission/PermissionManagerService;->revokeRuntimePermissionsIfGroupChanged(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;Ljava/util/ArrayList;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->access$300(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;Ljava/util/ArrayList;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V

    .line 2097
    return-void
.end method

.method public systemReady()V
    .registers 2

    .line 2083
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    # invokes: Lcom/android/server/pm/permission/PermissionManagerService;->systemReady()V
    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$100(Lcom/android/server/pm/permission/PermissionManagerService;)V

    .line 2084
    return-void
.end method

.method public updateAllPermissions(Ljava/lang/String;ZLjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .registers 6
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "sdkUpdated"    # Z
    .param p4, "callback"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Collection<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;",
            "Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;",
            ")V"
        }
    .end annotation

    .line 2164
    .local p3, "allPackages":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    # invokes: Lcom/android/server/pm/permission/PermissionManagerService;->updateAllPermissions(Ljava/lang/String;ZLjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->access$1500(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;ZLjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V

    .line 2166
    return-void
.end method

.method public updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIIILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .registers 16
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flagMask"    # I
    .param p4, "flagValues"    # I
    .param p5, "callingUid"    # I
    .param p6, "userId"    # I
    .param p7, "callback"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;

    .line 2180
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    # invokes: Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIIILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    invoke-static/range {v0 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->access$1800(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/lang/String;IIIILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V

    .line 2182
    return-void
.end method

.method public updatePermissionFlagsForAllApps(IIIILjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)Z
    .registers 14
    .param p1, "flagMask"    # I
    .param p2, "flagValues"    # I
    .param p3, "callingUid"    # I
    .param p4, "userId"    # I
    .param p6, "callback"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/Collection<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;",
            "Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;",
            ")Z"
        }
    .end annotation

    .line 2186
    .local p5, "packages":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    # invokes: Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissionFlagsForAllApps(IIIILjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)Z
    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService;->access$1900(Lcom/android/server/pm/permission/PermissionManagerService;IIIILjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)Z

    move-result v0

    return v0
.end method

.method public updatePermissions(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ZLjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "replaceGrant"    # Z
    .param p5, "callback"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Package;",
            "Z",
            "Ljava/util/Collection<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;",
            "Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;",
            ")V"
        }
    .end annotation

    .line 2158
    .local p4, "allPackages":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    # invokes: Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissions(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ZLjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerService;->access$1400(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ZLjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V

    .line 2160
    return-void
.end method
