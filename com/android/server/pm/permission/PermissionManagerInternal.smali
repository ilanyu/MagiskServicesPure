.class public abstract Lcom/android/server/pm/permission/PermissionManagerInternal;
.super Ljava/lang/Object;
.source "PermissionManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addAllPermissionGroups(Landroid/content/pm/PackageParser$Package;Z)V
.end method

.method public abstract addAllPermissions(Landroid/content/pm/PackageParser$Package;Z)V
.end method

.method public abstract addDynamicPermission(Landroid/content/pm/PermissionInfo;ZILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)Z
.end method

.method public abstract checkPermission(Ljava/lang/String;Ljava/lang/String;II)I
.end method

.method public abstract checkUidPermission(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;II)I
.end method

.method public abstract enforceCrossUserPermission(IIZZLjava/lang/String;)V
.end method

.method public abstract enforceCrossUserPermission(IIZZZLjava/lang/String;)V
.end method

.method public abstract enforceGrantRevokeRuntimePermissionPermissions(Ljava/lang/String;)V
.end method

.method public abstract getAllPermissionGroups(II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/content/pm/PermissionGroupInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract getDefaultPermissionGrantPolicy()Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;
.end method

.method public abstract getPermissionFlags(Ljava/lang/String;Ljava/lang/String;II)I
.end method

.method public abstract getPermissionGroupInfo(Ljava/lang/String;II)Landroid/content/pm/PermissionGroupInfo;
.end method

.method public abstract getPermissionInfo(Ljava/lang/String;Ljava/lang/String;II)Landroid/content/pm/PermissionInfo;
.end method

.method public abstract getPermissionInfoByGroup(Ljava/lang/String;II)Ljava/util/List;
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
.end method

.method public abstract getPermissionSettings()Lcom/android/server/pm/permission/PermissionSettings;
.end method

.method public abstract getPermissionTEMP(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;
.end method

.method public abstract grantRequestedRuntimePermissions(Landroid/content/pm/PackageParser$Package;[I[Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
.end method

.method public abstract grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
.end method

.method public abstract grantRuntimePermissionsGrantedToDisabledPackage(Landroid/content/pm/PackageParser$Package;ILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
.end method

.method public abstract isPermissionsReviewRequired(Landroid/content/pm/PackageParser$Package;I)Z
.end method

.method public abstract removeAllPermissions(Landroid/content/pm/PackageParser$Package;Z)V
.end method

.method public abstract removeDynamicPermission(Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
.end method

.method public abstract revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
.end method

.method public abstract revokeRuntimePermissionNotKill(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
.end method

.method public abstract revokeRuntimePermissionsIfGroupChanged(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;Ljava/util/ArrayList;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
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
.end method

.method public abstract systemReady()V
.end method

.method public abstract updateAllPermissions(Ljava/lang/String;ZLjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
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
.end method

.method public abstract updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIIILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
.end method

.method public abstract updatePermissionFlagsForAllApps(IIIILjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)Z
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
.end method

.method public abstract updatePermissions(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ZLjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
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
.end method
