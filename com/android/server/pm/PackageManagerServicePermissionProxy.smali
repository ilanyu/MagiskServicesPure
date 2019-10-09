.class public Lcom/android/server/pm/PackageManagerServicePermissionProxy;
.super Ljava/lang/Object;
.source "PackageManagerServicePermissionProxy.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static grantInstallPermission(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 15
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    .line 16
    .local v0, "pms":Lcom/android/server/pm/PackageManagerService;
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 17
    :try_start_9
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    .line 18
    .local v2, "pkg":Landroid/content/pm/PackageParser$Package;
    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/pm/SettingBase;

    .line 19
    .local v3, "sb":Lcom/android/server/pm/SettingBase;
    invoke-virtual {v3}, Lcom/android/server/pm/SettingBase;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v4

    .line 20
    .local v4, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v5, v5, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v5, p1}, Lcom/android/server/pm/permission/PermissionSettings;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v5

    .line 21
    .local v5, "bp":Lcom/android/server/pm/permission/BasePermission;
    invoke-virtual {v4, v5}, Lcom/android/server/pm/permission/PermissionsState;->grantInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    .line 22
    .end local v2    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v3    # "sb":Lcom/android/server/pm/SettingBase;
    .end local v4    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v5    # "bp":Lcom/android/server/pm/permission/BasePermission;
    monitor-exit v1

    .line 23
    return-void

    .line 22
    :catchall_26
    move-exception v2

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_9 .. :try_end_28} :catchall_26

    throw v2
.end method
