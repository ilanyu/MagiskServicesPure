.class public Lcom/android/server/pm/permission/PermissionManagerService;
.super Ljava/lang/Object;
.source "PermissionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;
    }
.end annotation


# static fields
.field private static final EMPTY_INT_ARRAY:[I

.field private static final GRANT_DENIED:I = 0x1

.field private static final GRANT_INSTALL:I = 0x2

.field private static final GRANT_RUNTIME:I = 0x3

.field private static final GRANT_UPGRADE:I = 0x4

.field private static final MAX_PERMISSION_TREE_FOOTPRINT:I = 0x8000

.field private static final TAG:Ljava/lang/String; = "PackageManager"

.field private static final UPDATE_PERMISSIONS_ALL:I = 0x1

.field private static final UPDATE_PERMISSIONS_REPLACE_ALL:I = 0x4

.field private static final UPDATE_PERMISSIONS_REPLACE_PKG:I = 0x2


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

.field private final mGlobalGids:[I

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mLock:Ljava/lang/Object;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

.field private mPrivappPermissionsViolations:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettings:Lcom/android/server/pm/permission/PermissionSettings;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mSystemPermissions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSystemReady:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mUserManagerInt:Landroid/os/UserManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 104
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/pm/permission/PermissionManagerService;->EMPTY_INT_ARRAY:[I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrantedCallback;Ljava/lang/Object;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "defaultGrantCallback"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrantedCallback;
    .param p3, "externalLock"    # Ljava/lang/Object;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 145
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    .line 146
    iput-object p3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    .line 147
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 148
    const-class v0, Landroid/os/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    .line 149
    new-instance v0, Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    invoke-direct {v0, p1, v1}, Lcom/android/server/pm/permission/PermissionSettings;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    .line 151
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v1, "PackageManager"

    const/4 v2, 0x1

    const/16 v3, 0xa

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 153
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 154
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHandler:Landroid/os/Handler;

    .line 155
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;)V

    .line 157
    new-instance v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 158
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2, p0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrantedCallback;Lcom/android/server/pm/permission/PermissionManagerService;)V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 159
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    .line 160
    .local v0, "systemConfig":Lcom/android/server/SystemConfig;
    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getSystemPermissions()Landroid/util/SparseArray;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSystemPermissions:Landroid/util/SparseArray;

    .line 161
    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getGlobalGids()[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mGlobalGids:[I

    .line 165
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/SystemConfig;->getPermissions()Landroid/util/ArrayMap;

    move-result-object v1

    .line 166
    .local v1, "permConfig":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/SystemConfig$PermissionEntry;>;"
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 167
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_7b
    :try_start_7b
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_b0

    .line 168
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/SystemConfig$PermissionEntry;

    .line 169
    .local v5, "perm":Lcom/android/server/SystemConfig$PermissionEntry;
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v7, v5, Lcom/android/server/SystemConfig$PermissionEntry;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v6

    .line 170
    .local v6, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-nez v6, :cond_a2

    .line 171
    new-instance v7, Lcom/android/server/pm/permission/BasePermission;

    iget-object v8, v5, Lcom/android/server/SystemConfig$PermissionEntry;->name:Ljava/lang/String;

    const-string v9, "android"

    invoke-direct {v7, v8, v9, v2}, Lcom/android/server/pm/permission/BasePermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object v6, v7

    .line 172
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v8, v5, Lcom/android/server/SystemConfig$PermissionEntry;->name:Ljava/lang/String;

    invoke-virtual {v7, v8, v6}, Lcom/android/server/pm/permission/PermissionSettings;->putPermissionLocked(Ljava/lang/String;Lcom/android/server/pm/permission/BasePermission;)V

    .line 174
    :cond_a2
    iget-object v7, v5, Lcom/android/server/SystemConfig$PermissionEntry;->gids:[I

    if-eqz v7, :cond_ad

    .line 175
    iget-object v7, v5, Lcom/android/server/SystemConfig$PermissionEntry;->gids:[I

    iget-boolean v8, v5, Lcom/android/server/SystemConfig$PermissionEntry;->perUser:Z

    invoke-virtual {v6, v7, v8}, Lcom/android/server/pm/permission/BasePermission;->setGids([IZ)V

    .line 167
    .end local v5    # "perm":Lcom/android/server/SystemConfig$PermissionEntry;
    .end local v6    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_ad
    add-int/lit8 v4, v4, 0x1

    goto :goto_7b

    .line 178
    .end local v4    # "i":I
    :cond_b0
    monitor-exit v3
    :try_end_b1
    .catchall {:try_start_7b .. :try_end_b1} :catchall_bd

    .line 180
    const-class v2, Lcom/android/server/pm/permission/PermissionManagerInternal;

    new-instance v3, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerInternalImpl;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/permission/PermissionManagerService$1;)V

    invoke-static {v2, v3}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 182
    return-void

    .line 178
    :catchall_bd
    move-exception v2

    :try_start_be
    monitor-exit v3
    :try_end_bf
    .catchall {:try_start_be .. :try_end_bf} :catchall_bd

    throw v2
.end method

.method static synthetic access$100(Lcom/android/server/pm/permission/PermissionManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 89
    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->systemReady()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;[I[Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .registers 6
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "x2"    # [I
    .param p3, "x3"    # [Ljava/lang/String;
    .param p4, "x4"    # I
    .param p5, "x5"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;

    .line 89
    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/permission/PermissionManagerService;->grantRequestedRuntimePermissions(Landroid/content/pm/PackageParser$Package;[I[Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;ILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;

    .line 89
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->grantRuntimePermissionsGrantedToDisabledPackageLocked(Landroid/content/pm/PackageParser$Package;ILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .registers 7
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;

    .line 89
    invoke-direct/range {p0 .. p6}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/lang/String;ZZIILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .registers 8
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z
    .param p5, "x5"    # I
    .param p6, "x6"    # I
    .param p7, "x7"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;

    .line 89
    invoke-direct/range {p0 .. p7}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;ZZIILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ZLjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .registers 6
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Ljava/util/Collection;
    .param p5, "x5"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;

    .line 89
    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissions(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ZLjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;ZLjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Ljava/util/Collection;
    .param p4, "x4"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;

    .line 89
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->updateAllPermissions(Ljava/lang/String;ZLjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 89
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/lang/String;II)I
    .registers 6
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 89
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/lang/String;IIIILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .registers 8
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I
    .param p7, "x7"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;

    .line 89
    invoke-direct/range {p0 .. p7}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIIILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/pm/permission/PermissionManagerService;IIIILjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)Z
    .registers 8
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Ljava/util/Collection;
    .param p6, "x6"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;

    .line 89
    invoke-direct/range {p0 .. p6}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissionFlagsForAllApps(IIIILjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;I)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "x2"    # I

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->isPermissionsReviewRequired(Landroid/content/pm/PackageParser$Package;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/pm/permission/PermissionManagerService;IIZZZLjava/lang/String;)V
    .registers 7
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z
    .param p5, "x5"    # Z
    .param p6, "x6"    # Ljava/lang/String;

    .line 89
    invoke-direct/range {p0 .. p6}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 89
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceGrantRevokeRuntimePermissionPermissions(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/lang/String;II)I
    .registers 6
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 89
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Landroid/content/pm/PackageParser$Package;II)I
    .registers 6
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 89
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->checkUidPermission(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;II)I

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;II)Landroid/content/pm/PermissionGroupInfo;
    .registers 5
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 89
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->getPermissionGroupInfo(Ljava/lang/String;II)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/pm/permission/PermissionManagerService;II)Ljava/util/List;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->getAllPermissionGroups(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/lang/String;II)Landroid/content/pm/PermissionInfo;
    .registers 6
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 89
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->getPermissionInfo(Ljava/lang/String;Ljava/lang/String;II)Landroid/content/pm/PermissionInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;II)Ljava/util/List;
    .registers 5
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 89
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->getPermissionInfoByGroup(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionSettings;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 89
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 89
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;Ljava/util/ArrayList;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "x2"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "x3"    # Ljava/util/ArrayList;
    .param p4, "x4"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;

    .line 89
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeRuntimePermissionsIfGroupChanged(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;Ljava/util/ArrayList;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/pm/permission/PermissionManagerService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 89
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "x2"    # Z

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->addAllPermissions(Landroid/content/pm/PackageParser$Package;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "x2"    # Z

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->addAllPermissionGroups(Landroid/content/pm/PackageParser$Package;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "x2"    # Z

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->removeAllPermissions(Landroid/content/pm/PackageParser$Package;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PermissionInfo;ILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)Z
    .registers 5
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Landroid/content/pm/PermissionInfo;
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;

    .line 89
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->addDynamicPermission(Landroid/content/pm/PermissionInfo;ILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;

    .line 89
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->removeDynamicPermission(Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .registers 7
    .param p0, "x0"    # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;

    .line 89
    invoke-direct/range {p0 .. p6}, Lcom/android/server/pm/permission/PermissionManagerService;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V

    return-void
.end method

.method private addAllPermissionGroups(Landroid/content/pm/PackageParser$Package;Z)V
    .registers 13
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "chatty"    # Z

    .line 519
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 520
    .local v0, "N":I
    const/4 v1, 0x0

    .line 521
    .local v1, "r":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_77

    .line 522
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$PermissionGroup;

    .line 523
    .local v3, "pg":Landroid/content/pm/PackageParser$PermissionGroup;
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v4, v4, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionGroups:Landroid/util/ArrayMap;

    iget-object v5, v3, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget-object v5, v5, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageParser$PermissionGroup;

    .line 524
    .local v4, "cur":Landroid/content/pm/PackageParser$PermissionGroup;
    if-nez v4, :cond_24

    const/4 v5, 0x0

    goto :goto_28

    :cond_24
    iget-object v5, v4, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget-object v5, v5, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    .line 525
    .local v5, "curPackageName":Ljava/lang/String;
    :goto_28
    iget-object v6, v3, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget-object v6, v6, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 526
    .local v6, "isPackageUpdate":Z
    if-eqz v4, :cond_68

    if-eqz v6, :cond_35

    goto :goto_68

    .line 540
    :cond_35
    const-string v7, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Permission group "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v3, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget-object v9, v9, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " from package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v3, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget-object v9, v9, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " ignored: original from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v4, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget-object v9, v9, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    goto :goto_74

    .line 527
    :cond_68
    :goto_68
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v7, v7, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionGroups:Landroid/util/ArrayMap;

    iget-object v8, v3, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget-object v8, v8, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    nop

    .line 521
    .end local v3    # "pg":Landroid/content/pm/PackageParser$PermissionGroup;
    .end local v4    # "cur":Landroid/content/pm/PackageParser$PermissionGroup;
    .end local v5    # "curPackageName":Ljava/lang/String;
    .end local v6    # "isPackageUpdate":Z
    :goto_74
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 554
    .end local v2    # "i":I
    :cond_77
    nop

    .line 558
    return-void
.end method

.method private addAllPermissions(Landroid/content/pm/PackageParser$Package;Z)V
    .registers 10
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "chatty"    # Z

    .line 481
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 482
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_7c

    .line 483
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Permission;

    .line 486
    .local v2, "p":Landroid/content/pm/PackageParser$Permission;
    iget-object v3, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v4, v3, Landroid/content/pm/PermissionInfo;->flags:I

    const v5, -0x40000001    # -1.9999999f

    and-int/2addr v4, v5

    iput v4, v3, Landroid/content/pm/PermissionInfo;->flags:I

    .line 488
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 493
    :try_start_1e
    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0x16

    if-le v4, v5, :cond_36

    .line 494
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v4, v4, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionGroups:Landroid/util/ArrayMap;

    iget-object v5, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v5, v5, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageParser$PermissionGroup;

    iput-object v4, v2, Landroid/content/pm/PackageParser$Permission;->group:Landroid/content/pm/PackageParser$PermissionGroup;

    .line 503
    :cond_36
    iget-boolean v4, v2, Landroid/content/pm/PackageParser$Permission;->tree:Z

    if-eqz v4, :cond_58

    .line 504
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v5, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v5, v5, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 505
    invoke-virtual {v4, v5}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionTreeLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    .line 506
    invoke-virtual {v5}, Lcom/android/server/pm/permission/PermissionSettings;->getAllPermissionTreesLocked()Ljava/util/Collection;

    move-result-object v5

    .line 504
    invoke-static {v4, v2, p1, v5, p2}, Lcom/android/server/pm/permission/BasePermission;->createOrUpdate(Lcom/android/server/pm/permission/BasePermission;Landroid/content/pm/PackageParser$Permission;Landroid/content/pm/PackageParser$Package;Ljava/util/Collection;Z)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v4

    .line 507
    .local v4, "bp":Lcom/android/server/pm/permission/BasePermission;
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v6, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Lcom/android/server/pm/permission/PermissionSettings;->putPermissionTreeLocked(Ljava/lang/String;Lcom/android/server/pm/permission/BasePermission;)V

    .line 508
    .end local v4    # "bp":Lcom/android/server/pm/permission/BasePermission;
    goto :goto_75

    .line 509
    :cond_58
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v5, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v5, v5, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 510
    invoke-virtual {v4, v5}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    .line 511
    invoke-virtual {v5}, Lcom/android/server/pm/permission/PermissionSettings;->getAllPermissionTreesLocked()Ljava/util/Collection;

    move-result-object v5

    .line 509
    invoke-static {v4, v2, p1, v5, p2}, Lcom/android/server/pm/permission/BasePermission;->createOrUpdate(Lcom/android/server/pm/permission/BasePermission;Landroid/content/pm/PackageParser$Permission;Landroid/content/pm/PackageParser$Package;Ljava/util/Collection;Z)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v4

    .line 512
    .restart local v4    # "bp":Lcom/android/server/pm/permission/BasePermission;
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v6, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Lcom/android/server/pm/permission/PermissionSettings;->putPermissionLocked(Ljava/lang/String;Lcom/android/server/pm/permission/BasePermission;)V

    .line 514
    .end local v4    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :goto_75
    monitor-exit v3

    .line 482
    .end local v2    # "p":Landroid/content/pm/PackageParser$Permission;
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 514
    .restart local v2    # "p":Landroid/content/pm/PackageParser$Permission;
    :catchall_79
    move-exception v4

    monitor-exit v3
    :try_end_7b
    .catchall {:try_start_1e .. :try_end_7b} :catchall_79

    throw v4

    .line 516
    .end local v1    # "i":I
    .end local v2    # "p":Landroid/content/pm/PackageParser$Permission;
    :cond_7c
    return-void
.end method

.method private addDynamicPermission(Landroid/content/pm/PermissionInfo;ILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)Z
    .registers 13
    .param p1, "info"    # Landroid/content/pm/PermissionInfo;
    .param p2, "callingUid"    # I
    .param p3, "callback"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;

    .line 615
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_82

    .line 618
    iget v0, p1, Landroid/content/pm/PermissionInfo;->labelRes:I

    if-nez v0, :cond_19

    iget-object v0, p1, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_11

    goto :goto_19

    .line 619
    :cond_11
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Label must be specified in permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 621
    :cond_19
    :goto_19
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v1, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/android/server/pm/permission/PermissionSettings;->enforcePermissionTree(Ljava/lang/String;I)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v0

    .line 624
    .local v0, "tree":Lcom/android/server/pm/permission/BasePermission;
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 625
    :try_start_24
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v3, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v2

    .line 626
    .local v2, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-nez v2, :cond_30

    const/4 v3, 0x1

    goto :goto_31

    :cond_30
    const/4 v3, 0x0

    .line 627
    .local v3, "added":Z
    :goto_31
    iget v4, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    invoke-static {v4}, Landroid/content/pm/PermissionInfo;->fixProtectionLevel(I)I

    move-result v4

    .line 628
    .local v4, "fixedLevel":I
    if-eqz v3, :cond_4a

    .line 629
    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/permission/PermissionManagerService;->enforcePermissionCapLocked(Landroid/content/pm/PermissionInfo;Lcom/android/server/pm/permission/BasePermission;)V

    .line 630
    new-instance v5, Lcom/android/server/pm/permission/BasePermission;

    iget-object v6, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    invoke-direct {v5, v6, v7, v8}, Lcom/android/server/pm/permission/BasePermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object v2, v5

    goto :goto_50

    .line 632
    :cond_4a
    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->isDynamic()Z

    move-result v5

    if-eqz v5, :cond_66

    .line 636
    :goto_50
    invoke-virtual {v2, v4, p1, v0}, Lcom/android/server/pm/permission/BasePermission;->addToTree(ILandroid/content/pm/PermissionInfo;Lcom/android/server/pm/permission/BasePermission;)Z

    move-result v5

    .line 637
    .local v5, "changed":Z
    if-eqz v3, :cond_5d

    .line 638
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v7, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7, v2}, Lcom/android/server/pm/permission/PermissionSettings;->putPermissionLocked(Ljava/lang/String;Lcom/android/server/pm/permission/BasePermission;)V

    .line 640
    .end local v2    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v4    # "fixedLevel":I
    :cond_5d
    monitor-exit v1
    :try_end_5e
    .catchall {:try_start_24 .. :try_end_5e} :catchall_7f

    .line 641
    if-eqz v5, :cond_65

    if-eqz p3, :cond_65

    .line 642
    invoke-virtual {p3}, Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;->onPermissionChanged()V

    .line 644
    :cond_65
    return v3

    .line 633
    .end local v5    # "changed":Z
    .restart local v2    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v4    # "fixedLevel":I
    :cond_66
    :try_start_66
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not allowed to modify non-dynamic permission "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 640
    .end local v2    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v3    # "added":Z
    .end local v4    # "fixedLevel":I
    :catchall_7f
    move-exception v2

    monitor-exit v1
    :try_end_81
    .catchall {:try_start_66 .. :try_end_81} :catchall_7f

    throw v2

    .line 616
    .end local v0    # "tree":Lcom/android/server/pm/permission/BasePermission;
    :cond_82
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Instant apps can\'t add permissions"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private adjustPermissionProtectionFlagsLocked(ILjava/lang/String;I)I
    .registers 9
    .param p1, "protectionLevel"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 371
    and-int/lit8 v0, p1, 0x3

    .line 375
    .local v0, "protectionLevelMasked":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 376
    return p1

    .line 379
    :cond_6
    invoke-static {p3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 380
    .local v1, "appId":I
    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_36

    if-eqz v1, :cond_36

    const/16 v2, 0x7d0

    if-ne v1, v2, :cond_15

    goto :goto_36

    .line 385
    :cond_15
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, p2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v2

    .line 386
    .local v2, "pkg":Landroid/content/pm/PackageParser$Package;
    if-nez v2, :cond_1e

    .line 387
    return p1

    .line 389
    :cond_1e
    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x1a

    if-ge v3, v4, :cond_27

    .line 390
    return v0

    .line 393
    :cond_27
    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 394
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v3, :cond_2e

    .line 395
    return p1

    .line 397
    :cond_2e
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v4

    if-eq v4, v1, :cond_35

    .line 398
    return p1

    .line 400
    :cond_35
    return p1

    .line 382
    .end local v2    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_36
    :goto_36
    return p1
.end method

.method private calculateCurrentPermissionFootprintLocked(Lcom/android/server/pm/permission/BasePermission;)I
    .registers 6
    .param p1, "tree"    # Lcom/android/server/pm/permission/BasePermission;

    .line 2015
    const/4 v0, 0x0

    .line 2016
    .local v0, "size":I
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v1, v1, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/BasePermission;

    .line 2017
    .local v2, "perm":Lcom/android/server/pm/permission/BasePermission;
    invoke-virtual {p1, v2}, Lcom/android/server/pm/permission/BasePermission;->calculateFootprint(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v3

    add-int/2addr v0, v3

    .line 2018
    .end local v2    # "perm":Lcom/android/server/pm/permission/BasePermission;
    goto :goto_d

    .line 2019
    :cond_1f
    return v0
.end method

.method private static canGrantOemPermission(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)Z
    .registers 6
    .param p0, "ps"    # Lcom/android/server/pm/PackageSetting;
    .param p1, "permission"    # Ljava/lang/String;

    .line 1258
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->isOem()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1259
    return v1

    .line 1263
    :cond_8
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemConfig;->getOemPermissions(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1264
    .local v0, "granted":Ljava/lang/Boolean;
    if-eqz v0, :cond_21

    .line 1268
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v2, v0, :cond_20

    const/4 v1, 0x1

    nop

    :cond_20
    return v1

    .line 1265
    :cond_21
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OEM permission"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " requested by package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " must be explicitly declared granted or not"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private checkPermission(Ljava/lang/String;Ljava/lang/String;II)I
    .registers 14
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "userId"    # I

    .line 212
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0, p4}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_a

    .line 213
    return v1

    .line 216
    :cond_a
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 217
    .local v0, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_5e

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-eqz v2, :cond_5e

    .line 218
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, v0, p3, p4}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Landroid/content/pm/PackageParser$Package;II)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 219
    return v1

    .line 221
    :cond_1f
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 222
    .local v2, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v2, p4}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v3

    .line 223
    .local v3, "instantApp":Z
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v4

    .line 224
    .local v4, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-virtual {v4, p1, p4}, Lcom/android/server/pm/permission/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_4d

    .line 225
    if-eqz v3, :cond_4c

    .line 226
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 227
    :try_start_37
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v7, p1}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v7

    .line 228
    .local v7, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v7, :cond_47

    invoke-virtual {v7}, Lcom/android/server/pm/permission/BasePermission;->isInstant()Z

    move-result v8

    if-eqz v8, :cond_47

    .line 229
    monitor-exit v5

    return v6

    .line 231
    .end local v7    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_47
    monitor-exit v5

    goto :goto_4d

    :catchall_49
    move-exception v1

    monitor-exit v5
    :try_end_4b
    .catchall {:try_start_37 .. :try_end_4b} :catchall_49

    throw v1

    .line 233
    :cond_4c
    return v6

    .line 237
    :cond_4d
    :goto_4d
    const-string v5, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5e

    const-string v5, "android.permission.ACCESS_FINE_LOCATION"

    .line 238
    invoke-virtual {v4, v5, p4}, Lcom/android/server/pm/permission/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 239
    return v6

    .line 243
    .end local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v3    # "instantApp":Z
    .end local v4    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    :cond_5e
    return v1
.end method

.method private checkUidPermission(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;II)I
    .registers 14
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "uid"    # I
    .param p4, "callingUid"    # I

    .line 248
    invoke-static {p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 249
    .local v0, "callingUserId":I
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 250
    invoke-virtual {v1, p4}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_10

    move v1, v2

    goto :goto_11

    :cond_10
    move v1, v3

    .line 251
    .local v1, "isCallerInstantApp":Z
    :goto_11
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 252
    invoke-virtual {v4, p3}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1a

    goto :goto_1b

    :cond_1a
    move v2, v3

    .line 253
    .local v2, "isUidInstantApp":Z
    :goto_1b
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 254
    .local v4, "userId":I
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v5, v4}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v5

    const/4 v6, -0x1

    if-nez v5, :cond_29

    .line 255
    return v6

    .line 260
    :cond_29
    invoke-static {p1, p3}, Lcom/android/server/pm/PackageManagerServiceInjector;->preCheckUidPermission(Ljava/lang/String;I)I

    move-result v5

    .line 261
    .local v5, "state":I
    const/16 v7, -0x64

    if-eq v5, v7, :cond_32

    .line 262
    return v5

    .line 266
    :cond_32
    if-eqz p2, :cond_70

    .line 267
    iget-object v7, p2, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    if-eqz v7, :cond_3b

    .line 268
    if-eqz v1, :cond_44

    .line 269
    return v6

    .line 271
    :cond_3b
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v7, p2, p4, v0}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Landroid/content/pm/PackageParser$Package;II)Z

    move-result v7

    if-eqz v7, :cond_44

    .line 272
    return v6

    .line 274
    :cond_44
    iget-object v7, p2, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/pm/PackageSetting;

    .line 275
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v7

    .line 276
    .local v7, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-virtual {v7, p1, v4}, Lcom/android/server/pm/permission/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_5e

    .line 277
    if-eqz v2, :cond_5d

    .line 278
    iget-object v8, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v8, p1}, Lcom/android/server/pm/permission/PermissionSettings;->isPermissionInstant(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5e

    .line 279
    return v3

    .line 282
    :cond_5d
    return v3

    .line 286
    :cond_5e
    const-string v8, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6f

    const-string v8, "android.permission.ACCESS_FINE_LOCATION"

    .line 287
    invoke-virtual {v7, v8, v4}, Lcom/android/server/pm/permission/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_6f

    .line 288
    return v3

    .line 290
    .end local v7    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    :cond_6f
    goto :goto_92

    .line 291
    :cond_70
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSystemPermissions:Landroid/util/SparseArray;

    invoke-virtual {v7, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArraySet;

    .line 292
    .local v7, "perms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v7, :cond_92

    .line 293
    invoke-virtual {v7, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_81

    .line 294
    return v3

    .line 296
    :cond_81
    const-string v8, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_92

    const-string v8, "android.permission.ACCESS_FINE_LOCATION"

    .line 297
    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_92

    .line 298
    return v3

    .line 302
    .end local v7    # "perms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_92
    :goto_92
    return v6
.end method

.method public static create(Landroid/content/Context;Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrantedCallback;Ljava/lang/Object;)Lcom/android/server/pm/permission/PermissionManagerInternal;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "defaultGrantCallback"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrantedCallback;
    .param p2, "externalLock"    # Ljava/lang/Object;

    .line 196
    const-class v0, Lcom/android/server/pm/permission/PermissionManagerInternal;

    .line 197
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/PermissionManagerInternal;

    .line 198
    .local v0, "permMgrInt":Lcom/android/server/pm/permission/PermissionManagerInternal;
    if-eqz v0, :cond_b

    .line 199
    return-object v0

    .line 201
    :cond_b
    new-instance v1, Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrantedCallback;Ljava/lang/Object;)V

    .line 202
    const-class v1, Lcom/android/server/pm/permission/PermissionManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/PermissionManagerInternal;

    return-object v1
.end method

.method private enforceCrossUserPermission(IIZZZLjava/lang/String;)V
    .registers 10
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I
    .param p3, "requireFullPermission"    # Z
    .param p4, "checkShell"    # Z
    .param p5, "requirePermissionWhenSameUser"    # Z
    .param p6, "message"    # Ljava/lang/String;

    .line 1986
    if-ltz p2, :cond_3d

    .line 1989
    if-eqz p4, :cond_a

    .line 1990
    const-string/jumbo v0, "no_debugging_features"

    invoke-static {v0, p1, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceShellRestriction(Ljava/lang/String;II)V

    .line 1993
    :cond_a
    if-nez p5, :cond_13

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne p2, v0, :cond_13

    return-void

    .line 1996
    :cond_13
    invoke-static {p1}, Lmiui/securityspace/XSpaceUserHandle;->isUidBelongtoXSpace(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    if-nez p2, :cond_1c

    return-void

    .line 1998
    :cond_1c
    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_3c

    if-eqz p1, :cond_3c

    .line 1999
    if-eqz p3, :cond_2c

    .line 2000
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1, p6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c

    .line 2004
    :cond_2c
    :try_start_2c
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1, p6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/lang/SecurityException; {:try_start_2c .. :try_end_33} :catch_34

    .line 2009
    goto :goto_3c

    .line 2006
    :catch_34
    move-exception v0

    .line 2007
    .local v0, "se":Ljava/lang/SecurityException;
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v1, v2, p6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2012
    .end local v0    # "se":Ljava/lang/SecurityException;
    :cond_3c
    :goto_3c
    return-void

    .line 1987
    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid userId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enforceGrantRevokeRuntimePermissionPermissions(Ljava/lang/String;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;

    .line 1967
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    .line 1969
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    goto :goto_3b

    .line 1971
    :cond_15
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " requires "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1975
    :cond_3b
    :goto_3b
    return-void
.end method

.method private enforcePermissionCapLocked(Landroid/content/pm/PermissionInfo;Lcom/android/server/pm/permission/BasePermission;)V
    .registers 6
    .param p1, "info"    # Landroid/content/pm/PermissionInfo;
    .param p2, "tree"    # Lcom/android/server/pm/permission/BasePermission;

    .line 2025
    invoke-virtual {p2}, Lcom/android/server/pm/permission/BasePermission;->getUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1f

    .line 2026
    invoke-direct {p0, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->calculateCurrentPermissionFootprintLocked(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v0

    .line 2027
    .local v0, "curTreeSize":I
    invoke-virtual {p1}, Landroid/content/pm/PermissionInfo;->calculateFootprint()I

    move-result v1

    add-int/2addr v1, v0

    const v2, 0x8000

    if-gt v1, v2, :cond_17

    .end local v0    # "curTreeSize":I
    goto :goto_1f

    .line 2028
    .restart local v0    # "curTreeSize":I
    :cond_17
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Permission tree size cap exceeded"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2031
    .end local v0    # "curTreeSize":I
    :cond_1f
    :goto_1f
    return-void
.end method

.method private getAllPermissionGroups(II)Ljava/util/List;
    .registers 9
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

    .line 317
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 318
    const/4 v0, 0x0

    return-object v0

    .line 320
    :cond_a
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 321
    :try_start_d
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v1, v1, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionGroups:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 322
    .local v1, "N":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 324
    .local v2, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PermissionGroupInfo;>;"
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v3, v3, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionGroups:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageParser$PermissionGroup;

    .line 325
    .local v4, "pg":Landroid/content/pm/PackageParser$PermissionGroup;
    invoke-static {v4, p1}, Landroid/content/pm/PackageParser;->generatePermissionGroupInfo(Landroid/content/pm/PackageParser$PermissionGroup;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    .end local v4    # "pg":Landroid/content/pm/PackageParser$PermissionGroup;
    goto :goto_26

    .line 327
    :cond_3a
    monitor-exit v0

    return-object v2

    .line 328
    .end local v1    # "N":I
    .end local v2    # "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PermissionGroupInfo;>;"
    :catchall_3c
    move-exception v1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_d .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method private getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;
    .registers 5
    .param p1, "permName"    # Ljava/lang/String;

    .line 1671
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 1672
    return-object v1

    .line 1674
    :cond_e
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1675
    :try_start_11
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v2, v2, Lcom/android/server/pm/permission/PermissionSettings;->mAppOpPermissionPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 1676
    .local v2, "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v2, :cond_1f

    .line 1677
    monitor-exit v0

    return-object v1

    .line 1679
    :cond_1f
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 1680
    .end local v2    # "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_11 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method private getPermissionFlags(Ljava/lang/String;Ljava/lang/String;II)I
    .registers 14
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "userId"    # I

    .line 1685
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0, p4}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 1686
    return v1

    .line 1689
    :cond_a
    const-string v0, "getPermissionFlags"

    invoke-direct {p0, v0}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceGrantRevokeRuntimePermissionPermissions(Ljava/lang/String;)V

    .line 1691
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "getPermissionFlags"

    move-object v2, p0

    move v3, p3

    move v4, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V

    .line 1697
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 1698
    .local v0, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_4e

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-nez v2, :cond_27

    goto :goto_4e

    .line 1701
    :cond_27
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1702
    :try_start_2a
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v3

    if-nez v3, :cond_34

    .line 1703
    monitor-exit v2

    return v1

    .line 1705
    :cond_34
    monitor-exit v2
    :try_end_35
    .catchall {:try_start_2a .. :try_end_35} :catchall_4b

    .line 1706
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, v0, p3, p4}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Landroid/content/pm/PackageParser$Package;II)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 1707
    return v1

    .line 1709
    :cond_3e
    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 1710
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v2

    .line 1711
    .local v2, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-virtual {v2, p1, p4}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v3

    return v3

    .line 1705
    .end local v1    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v2    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    :catchall_4b
    move-exception v1

    :try_start_4c
    monitor-exit v2
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw v1

    .line 1699
    :cond_4e
    :goto_4e
    return v1
.end method

.method private getPermissionGroupInfo(Ljava/lang/String;II)Landroid/content/pm/PermissionGroupInfo;
    .registers 6
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "callingUid"    # I

    .line 307
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p3}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 308
    const/4 v0, 0x0

    return-object v0

    .line 310
    :cond_a
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 311
    :try_start_d
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v1, v1, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionGroups:Landroid/util/ArrayMap;

    .line 312
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$PermissionGroup;

    .line 311
    invoke-static {v1, p2}, Landroid/content/pm/PackageParser;->generatePermissionGroupInfo(Landroid/content/pm/PackageParser$PermissionGroup;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 313
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_d .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method private getPermissionInfo(Ljava/lang/String;Ljava/lang/String;II)Landroid/content/pm/PermissionInfo;
    .registers 9
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "callingUid"    # I

    .line 333
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p4}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 334
    return-object v1

    .line 337
    :cond_a
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 338
    :try_start_d
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v2

    .line 339
    .local v2, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-nez v2, :cond_17

    .line 340
    monitor-exit v0

    return-object v1

    .line 342
    :cond_17
    nop

    .line 343
    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->getProtectionLevel()I

    move-result v1

    .line 342
    invoke-direct {p0, v1, p2, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->adjustPermissionProtectionFlagsLocked(ILjava/lang/String;I)I

    move-result v1

    .line 344
    .local v1, "adjustedProtectionLevel":I
    invoke-virtual {v2, v1, p3}, Lcom/android/server/pm/permission/BasePermission;->generatePermissionInfo(II)Landroid/content/pm/PermissionInfo;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 345
    .end local v1    # "adjustedProtectionLevel":I
    .end local v2    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_d .. :try_end_28} :catchall_26

    throw v1
.end method

.method private getPermissionInfoByGroup(Ljava/lang/String;II)Ljava/util/List;
    .registers 9
    .param p1, "groupName"    # Ljava/lang/String;
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

    .line 350
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p3}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 351
    return-object v1

    .line 353
    :cond_a
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 354
    if-eqz p1, :cond_1d

    :try_start_f
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v2, v2, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionGroups:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 355
    monitor-exit v0

    return-object v1

    .line 365
    :catchall_1b
    move-exception v1

    goto :goto_48

    .line 357
    :cond_1d
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 358
    .local v1, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PermissionInfo;>;"
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v2, v2, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_30
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/BasePermission;

    .line 359
    .local v3, "bp":Lcom/android/server/pm/permission/BasePermission;
    invoke-virtual {v3, p1, p2}, Lcom/android/server/pm/permission/BasePermission;->generatePermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v4

    .line 360
    .local v4, "pi":Landroid/content/pm/PermissionInfo;
    if-eqz v4, :cond_45

    .line 361
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    .end local v3    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v4    # "pi":Landroid/content/pm/PermissionInfo;
    :cond_45
    goto :goto_30

    .line 364
    :cond_46
    monitor-exit v0

    return-object v1

    .line 365
    .end local v1    # "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PermissionInfo;>;"
    :goto_48
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_f .. :try_end_49} :catchall_1b

    throw v1
.end method

.method private static getVolumeUuidForPackage(Landroid/content/pm/PackageParser$Package;)Ljava/lang/String;
    .registers 2
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 2042
    if-nez p0, :cond_5

    .line 2043
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    return-object v0

    .line 2045
    :cond_5
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$Package;->isExternal()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2046
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->volumeUuid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2047
    const-string/jumbo v0, "primary_physical"

    return-object v0

    .line 2049
    :cond_17
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->volumeUuid:Ljava/lang/String;

    return-object v0

    .line 2052
    :cond_1a
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    return-object v0
.end method

.method private grantPermissions(Landroid/content/pm/PackageParser$Package;ZLjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .registers 43
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "replace"    # Z
    .param p3, "packageOfInterest"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    .line 683
    move-object/from16 v5, p4

    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lcom/android/server/pm/PackageSetting;

    .line 684
    .local v6, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v6, :cond_10

    .line 685
    return-void

    .line 687
    :cond_10
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManagerInternal;->isLegacySystemApp(Landroid/content/pm/PackageParser$Package;)Z

    move-result v7

    .line 689
    .local v7, "isLegacySystemApp":Z
    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v8

    .line 690
    .local v8, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    move-object v9, v8

    .line 692
    .local v9, "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v10

    .line 694
    .local v10, "currentUserIds":[I
    const/4 v11, 0x0

    .line 695
    .local v11, "runtimePermissionsRevoked":Z
    sget-object v12, Lcom/android/server/pm/permission/PermissionManagerService;->EMPTY_INT_ARRAY:[I

    .line 697
    .local v12, "updatedUserIds":[I
    const/4 v13, 0x0

    .line 699
    .local v13, "changedInstallPermission":Z
    const/4 v0, 0x0

    if-eqz p2, :cond_5f

    .line 700
    invoke-virtual {v6, v0}, Lcom/android/server/pm/PackageSetting;->setInstallPermissionsFixed(Z)V

    .line 701
    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->isSharedUser()Z

    move-result v14

    if-nez v14, :cond_3d

    .line 702
    new-instance v14, Lcom/android/server/pm/permission/PermissionsState;

    invoke-direct {v14, v8}, Lcom/android/server/pm/permission/PermissionsState;-><init>(Lcom/android/server/pm/permission/PermissionsState;)V

    move-object v9, v14

    .line 703
    invoke-virtual {v8}, Lcom/android/server/pm/permission/PermissionsState;->reset()V

    goto :goto_5f

    .line 710
    :cond_3d
    iget-object v14, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 711
    nop

    .line 712
    :try_start_41
    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->getSharedUser()Lcom/android/server/pm/SharedUserSetting;

    move-result-object v15

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    .line 711
    invoke-direct {v1, v15, v0}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeUnusedSharedUserPermissionsLocked(Lcom/android/server/pm/SharedUserSetting;[I)[I

    move-result-object v0

    move-object v12, v0

    .line 713
    invoke-static {v12}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-nez v0, :cond_5a

    .line 714
    const/4 v0, 0x1

    .line 716
    .end local v11    # "runtimePermissionsRevoked":Z
    .local v0, "runtimePermissionsRevoked":Z
    move v11, v0

    .end local v0    # "runtimePermissionsRevoked":Z
    .restart local v11    # "runtimePermissionsRevoked":Z
    :cond_5a
    monitor-exit v14

    goto :goto_5f

    :catchall_5c
    move-exception v0

    monitor-exit v14
    :try_end_5e
    .catchall {:try_start_41 .. :try_end_5e} :catchall_5c

    throw v0

    .line 720
    :cond_5f
    :goto_5f
    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mGlobalGids:[I

    invoke-virtual {v8, v0}, Lcom/android/server/pm/permission/PermissionsState;->setGlobalGids([I)V

    .line 722
    iget-object v14, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 723
    :try_start_67
    iget-object v0, v2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_6d
    .catchall {:try_start_67 .. :try_end_6d} :catchall_410

    .line 724
    .local v0, "N":I
    move-object v15, v12

    const/4 v12, 0x0

    .local v12, "i":I
    .local v15, "updatedUserIds":[I
    :goto_6f
    move/from16 v16, v11

    .end local v11    # "runtimePermissionsRevoked":Z
    .local v16, "runtimePermissionsRevoked":Z
    if-ge v12, v0, :cond_3c3

    .line 725
    :try_start_73
    iget-object v11, v2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 726
    .local v11, "permName":Ljava/lang/String;
    move/from16 v18, v0

    iget-object v0, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    .end local v0    # "N":I
    .local v18, "N":I
    invoke-virtual {v0, v11}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v0

    .line 727
    .local v0, "bp":Lcom/android/server/pm/permission/BasePermission;
    move-object/from16 v19, v11

    iget-object v11, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .end local v11    # "permName":Ljava/lang/String;
    .local v19, "permName":Ljava/lang/String;
    iget v11, v11, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_89
    .catchall {:try_start_73 .. :try_end_89} :catchall_3b6

    move-object/from16 v20, v15

    const/16 v15, 0x17

    .end local v15    # "updatedUserIds":[I
    .local v20, "updatedUserIds":[I
    if-lt v11, v15, :cond_91

    const/4 v11, 0x1

    goto :goto_92

    :cond_91
    const/4 v11, 0x0

    .line 734
    .local v11, "appSupportsRuntimePermissions":Z
    :goto_92
    if-eqz v0, :cond_38a

    :try_start_94
    invoke-virtual {v0}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageSetting()Lcom/android/server/pm/PackageSettingBase;

    move-result-object v15

    if-nez v15, :cond_a3

    .line 735
    move-object/from16 v32, v6

    move/from16 v27, v7

    move-object/from16 v31, v10

    const/4 v1, 0x0

    goto/16 :goto_391

    .line 745
    :cond_a3
    iget-object v15, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v15}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v15
    :try_end_a9
    .catchall {:try_start_94 .. :try_end_a9} :catchall_37e

    if-eqz v15, :cond_c7

    :try_start_ab
    invoke-virtual {v0}, Lcom/android/server/pm/permission/BasePermission;->isInstant()Z

    move-result v15
    :try_end_af
    .catchall {:try_start_ab .. :try_end_af} :catchall_bb

    if-nez v15, :cond_c7

    .line 750
    nop

    .line 724
    .end local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v7    # "isLegacySystemApp":Z
    .end local v10    # "currentUserIds":[I
    .end local v11    # "appSupportsRuntimePermissions":Z
    .end local v19    # "permName":Ljava/lang/String;
    .local v27, "isLegacySystemApp":Z
    .local v31, "currentUserIds":[I
    .local v32, "ps":Lcom/android/server/pm/PackageSetting;
    :goto_b2
    move-object/from16 v32, v6

    move/from16 v27, v7

    move-object/from16 v31, v10

    :cond_b8
    :goto_b8
    const/4 v1, 0x0

    goto/16 :goto_3a2

    .line 999
    .end local v12    # "i":I
    .end local v18    # "N":I
    .end local v27    # "isLegacySystemApp":Z
    .end local v31    # "currentUserIds":[I
    .end local v32    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v7    # "isLegacySystemApp":Z
    .restart local v10    # "currentUserIds":[I
    :catchall_bb
    move-exception v0

    move-object v3, v6

    move/from16 v27, v7

    move-object/from16 v31, v10

    move/from16 v11, v16

    move-object/from16 v12, v20

    goto/16 :goto_416

    .line 753
    .restart local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v11    # "appSupportsRuntimePermissions":Z
    .restart local v12    # "i":I
    .restart local v18    # "N":I
    .restart local v19    # "permName":Ljava/lang/String;
    :cond_c7
    :try_start_c7
    invoke-virtual {v0}, Lcom/android/server/pm/permission/BasePermission;->isRuntimeOnly()Z

    move-result v15

    if-eqz v15, :cond_d0

    if-nez v11, :cond_d0

    .line 758
    goto :goto_b2

    .line 761
    :cond_d0
    invoke-virtual {v0}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v15

    .line 762
    .local v15, "perm":Ljava/lang/String;
    const/16 v21, 0x0

    .line 763
    .local v21, "allowedSig":Z
    const/16 v22, 0x1

    .line 766
    .local v22, "grant":I
    invoke-virtual {v0}, Lcom/android/server/pm/permission/BasePermission;->isAppOp()Z

    move-result v23
    :try_end_dc
    .catchall {:try_start_c7 .. :try_end_dc} :catchall_37e

    if-eqz v23, :cond_ee

    .line 767
    :try_start_de
    iget-object v5, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v15, v3}, Lcom/android/server/pm/permission/PermissionSettings;->addAppOpPackage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e5
    .catchall {:try_start_de .. :try_end_e5} :catchall_e6

    goto :goto_ee

    .line 999
    .end local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v11    # "appSupportsRuntimePermissions":Z
    .end local v12    # "i":I
    .end local v15    # "perm":Ljava/lang/String;
    .end local v18    # "N":I
    .end local v19    # "permName":Ljava/lang/String;
    .end local v21    # "allowedSig":Z
    .end local v22    # "grant":I
    :catchall_e6
    move-exception v0

    move-object v3, v6

    move/from16 v27, v7

    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v7    # "isLegacySystemApp":Z
    .end local v10    # "currentUserIds":[I
    .end local v16    # "runtimePermissionsRevoked":Z
    .end local v20    # "updatedUserIds":[I
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    .local v11, "runtimePermissionsRevoked":Z
    .local v12, "updatedUserIds":[I
    .restart local v27    # "isLegacySystemApp":Z
    .restart local v31    # "currentUserIds":[I
    :goto_ea
    move-object/from16 v31, v10

    goto/16 :goto_3e5

    .line 770
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v27    # "isLegacySystemApp":Z
    .end local v31    # "currentUserIds":[I
    .restart local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v7    # "isLegacySystemApp":Z
    .restart local v10    # "currentUserIds":[I
    .local v11, "appSupportsRuntimePermissions":Z
    .local v12, "i":I
    .restart local v15    # "perm":Ljava/lang/String;
    .restart local v16    # "runtimePermissionsRevoked":Z
    .restart local v18    # "N":I
    .restart local v19    # "permName":Ljava/lang/String;
    .restart local v20    # "updatedUserIds":[I
    .restart local v21    # "allowedSig":Z
    .restart local v22    # "grant":I
    :cond_ee
    :goto_ee
    :try_start_ee
    invoke-virtual {v0}, Lcom/android/server/pm/permission/BasePermission;->isNormal()Z

    move-result v3

    if-eqz v3, :cond_f9

    .line 772
    const/16 v22, 0x2

    .line 805
    .end local v22    # "grant":I
    .local v3, "grant":I
    :cond_f6
    :goto_f6
    move/from16 v3, v22

    goto :goto_130

    .line 773
    .end local v3    # "grant":I
    .restart local v22    # "grant":I
    :cond_f9
    invoke-virtual {v0}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v3
    :try_end_fd
    .catchall {:try_start_ee .. :try_end_fd} :catchall_371

    if-eqz v3, :cond_11f

    .line 778
    if-nez v11, :cond_10a

    :try_start_101
    iget-object v3, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-boolean v3, v3, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionReviewRequired:Z

    if-nez v3, :cond_10a

    .line 780
    const/16 v22, 0x2

    goto :goto_f6

    .line 781
    :cond_10a
    invoke-virtual {v0}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v3
    :try_end_112
    .catchall {:try_start_101 .. :try_end_112} :catchall_e6

    if-eqz v3, :cond_117

    .line 783
    const/16 v22, 0x4

    goto :goto_f6

    .line 784
    :cond_117
    if-eqz v7, :cond_11c

    .line 788
    const/16 v22, 0x4

    goto :goto_f6

    .line 791
    :cond_11c
    const/16 v22, 0x3

    goto :goto_f6

    .line 793
    :cond_11f
    :try_start_11f
    invoke-virtual {v0}, Lcom/android/server/pm/permission/BasePermission;->isSignature()Z

    move-result v3
    :try_end_123
    .catchall {:try_start_11f .. :try_end_123} :catchall_371

    if-eqz v3, :cond_f6

    .line 795
    :try_start_125
    invoke-direct {v1, v15, v2, v0, v9}, Lcom/android/server/pm/permission/PermissionManagerService;->grantSignaturePermission(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;Lcom/android/server/pm/permission/BasePermission;Lcom/android/server/pm/permission/PermissionsState;)Z

    move-result v3
    :try_end_129
    .catchall {:try_start_125 .. :try_end_129} :catchall_e6

    move/from16 v21, v3

    .line 796
    if-eqz v21, :cond_f6

    .line 797
    const/16 v22, 0x2

    goto :goto_f6

    .line 805
    .end local v22    # "grant":I
    .restart local v3    # "grant":I
    :goto_130
    const/4 v5, 0x1

    if-eq v3, v5, :cond_316

    .line 806
    :try_start_133
    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v5
    :try_end_137
    .catchall {:try_start_133 .. :try_end_137} :catchall_371

    if-nez v5, :cond_152

    :try_start_139
    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->areInstallPermissionsFixed()Z

    move-result v5

    if-eqz v5, :cond_152

    .line 809
    if-nez v21, :cond_152

    invoke-virtual {v9, v15}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_152

    .line 818
    iget-boolean v5, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mSystemReady:Z

    if-eqz v5, :cond_152

    invoke-direct {v1, v15, v2}, Lcom/android/server/pm/permission/PermissionManagerService;->isNewPlatformPermissionForPackage(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Z

    move-result v5
    :try_end_14f
    .catchall {:try_start_139 .. :try_end_14f} :catchall_e6

    if-nez v5, :cond_152

    .line 819
    const/4 v3, 0x1

    .line 825
    :cond_152
    packed-switch v3, :pswitch_data_41a

    .line 954
    move/from16 v25, v3

    move-object/from16 v32, v6

    move/from16 v27, v7

    move-object/from16 v31, v10

    .end local v3    # "grant":I
    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v7    # "isLegacySystemApp":Z
    .end local v10    # "currentUserIds":[I
    .local v25, "grant":I
    .restart local v27    # "isLegacySystemApp":Z
    .restart local v31    # "currentUserIds":[I
    .restart local v32    # "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v4, :cond_b8

    :try_start_15f
    iget-object v1, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;
    :try_end_161
    .catchall {:try_start_15f .. :try_end_161} :catchall_39a

    goto/16 :goto_310

    .line 923
    .end local v25    # "grant":I
    .end local v27    # "isLegacySystemApp":Z
    .end local v31    # "currentUserIds":[I
    .end local v32    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v3    # "grant":I
    .restart local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v7    # "isLegacySystemApp":Z
    .restart local v10    # "currentUserIds":[I
    :pswitch_163
    nop

    .line 924
    :try_start_164
    invoke-virtual {v9, v15}, Lcom/android/server/pm/permission/PermissionsState;->getInstallPermissionState(Ljava/lang/String;)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v5
    :try_end_168
    .catchall {:try_start_164 .. :try_end_168} :catchall_371

    .line 926
    .local v5, "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    if-eqz v5, :cond_16f

    :try_start_16a
    invoke-virtual {v5}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getFlags()I

    move-result v17
    :try_end_16e
    .catchall {:try_start_16a .. :try_end_16e} :catchall_e6

    goto :goto_171

    :cond_16f
    const/16 v17, 0x0

    :goto_171
    move/from16 v24, v17

    .line 928
    .local v24, "flags":I
    move/from16 v25, v3

    :try_start_175
    invoke-virtual {v9, v0}, Lcom/android/server/pm/permission/PermissionsState;->revokeInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v3
    :try_end_179
    .catchall {:try_start_175 .. :try_end_179} :catchall_371

    .end local v3    # "grant":I
    .restart local v25    # "grant":I
    move-object/from16 v26, v5

    const/4 v5, -0x1

    if-eq v3, v5, :cond_18d

    .line 931
    .end local v5    # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .local v26, "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    move/from16 v27, v7

    const/4 v3, 0x0

    const/16 v7, 0xff

    :try_start_183
    invoke-virtual {v9, v0, v5, v7, v3}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z
    :try_end_186
    .catchall {:try_start_183 .. :try_end_186} :catchall_189

    .line 933
    .end local v7    # "isLegacySystemApp":Z
    .restart local v27    # "isLegacySystemApp":Z
    const/4 v3, 0x1

    .line 938
    .end local v13    # "changedInstallPermission":Z
    .local v3, "changedInstallPermission":Z
    move v13, v3

    goto :goto_18f

    .line 999
    .end local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v3    # "changedInstallPermission":Z
    .end local v11    # "appSupportsRuntimePermissions":Z
    .end local v12    # "i":I
    .end local v15    # "perm":Ljava/lang/String;
    .end local v18    # "N":I
    .end local v19    # "permName":Ljava/lang/String;
    .end local v21    # "allowedSig":Z
    .end local v24    # "flags":I
    .end local v25    # "grant":I
    .end local v26    # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .restart local v13    # "changedInstallPermission":Z
    :catchall_189
    move-exception v0

    move-object v3, v6

    goto/16 :goto_ea

    .line 938
    .end local v27    # "isLegacySystemApp":Z
    .restart local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v7    # "isLegacySystemApp":Z
    .restart local v11    # "appSupportsRuntimePermissions":Z
    .restart local v12    # "i":I
    .restart local v15    # "perm":Ljava/lang/String;
    .restart local v18    # "N":I
    .restart local v19    # "permName":Ljava/lang/String;
    .restart local v21    # "allowedSig":Z
    .restart local v24    # "flags":I
    .restart local v25    # "grant":I
    .restart local v26    # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    :cond_18d
    move/from16 v27, v7

    .end local v7    # "isLegacySystemApp":Z
    .restart local v27    # "isLegacySystemApp":Z
    :goto_18f
    move/from16 v3, v24

    and-int/lit8 v5, v3, 0x8

    .end local v24    # "flags":I
    .local v3, "flags":I
    if-nez v5, :cond_1f5

    .line 939
    :try_start_195
    array-length v5, v10
    :try_end_196
    .catchall {:try_start_195 .. :try_end_196} :catchall_1e7

    move/from16 v28, v13

    move-object/from16 v13, v20

    const/4 v7, 0x0

    .end local v20    # "updatedUserIds":[I
    .local v13, "updatedUserIds":[I
    .local v28, "changedInstallPermission":Z
    :goto_19b
    if-ge v7, v5, :cond_1e2

    :try_start_19d
    aget v17, v10, v7
    :try_end_19f
    .catchall {:try_start_19d .. :try_end_19f} :catchall_1d5

    move/from16 v29, v17

    .line 940
    .local v29, "userId":I
    move/from16 v30, v5

    move-object/from16 v31, v10

    move/from16 v5, v29

    :try_start_1a7
    invoke-virtual {v8, v0, v5}, Lcom/android/server/pm/permission/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v10
    :try_end_1ab
    .catchall {:try_start_1a7 .. :try_end_1ab} :catchall_1ca

    .end local v10    # "currentUserIds":[I
    .end local v29    # "userId":I
    .local v5, "userId":I
    .restart local v31    # "currentUserIds":[I
    move-object/from16 v32, v6

    const/4 v6, -0x1

    if-eq v10, v6, :cond_1c1

    .line 943
    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v32    # "ps":Lcom/android/server/pm/PackageSetting;
    :try_start_1b0
    invoke-virtual {v8, v0, v5, v3, v3}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 946
    invoke-static {v13, v5}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v6
    :try_end_1b7
    .catchall {:try_start_1b0 .. :try_end_1b7} :catchall_1b9

    move-object v13, v6

    .end local v5    # "userId":I
    goto :goto_1c1

    .line 999
    .end local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v3    # "flags":I
    .end local v11    # "appSupportsRuntimePermissions":Z
    .end local v12    # "i":I
    .end local v15    # "perm":Ljava/lang/String;
    .end local v18    # "N":I
    .end local v19    # "permName":Ljava/lang/String;
    .end local v21    # "allowedSig":Z
    .end local v25    # "grant":I
    .end local v26    # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    :catchall_1b9
    move-exception v0

    move-object v12, v13

    move/from16 v11, v16

    move/from16 v13, v28

    goto/16 :goto_39f

    .line 939
    .restart local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v3    # "flags":I
    .restart local v11    # "appSupportsRuntimePermissions":Z
    .restart local v12    # "i":I
    .restart local v15    # "perm":Ljava/lang/String;
    .restart local v18    # "N":I
    .restart local v19    # "permName":Ljava/lang/String;
    .restart local v21    # "allowedSig":Z
    .restart local v25    # "grant":I
    .restart local v26    # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    :cond_1c1
    :goto_1c1
    add-int/lit8 v7, v7, 0x1

    move/from16 v5, v30

    move-object/from16 v10, v31

    move-object/from16 v6, v32

    goto :goto_19b

    .line 999
    .end local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v3    # "flags":I
    .end local v11    # "appSupportsRuntimePermissions":Z
    .end local v12    # "i":I
    .end local v15    # "perm":Ljava/lang/String;
    .end local v18    # "N":I
    .end local v19    # "permName":Ljava/lang/String;
    .end local v21    # "allowedSig":Z
    .end local v25    # "grant":I
    .end local v26    # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .end local v32    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    :catchall_1ca
    move-exception v0

    move-object v3, v6

    move-object v12, v13

    move/from16 v11, v16

    move/from16 v13, v28

    move-object/from16 v5, p4

    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v32    # "ps":Lcom/android/server/pm/PackageSetting;
    goto/16 :goto_416

    .end local v31    # "currentUserIds":[I
    .end local v32    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v10    # "currentUserIds":[I
    :catchall_1d5
    move-exception v0

    move-object/from16 v31, v10

    move-object v3, v6

    move-object v12, v13

    move/from16 v11, v16

    move/from16 v13, v28

    move-object/from16 v5, p4

    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v10    # "currentUserIds":[I
    .restart local v31    # "currentUserIds":[I
    .restart local v32    # "ps":Lcom/android/server/pm/PackageSetting;
    goto/16 :goto_416

    .line 951
    .end local v31    # "currentUserIds":[I
    .end local v32    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v10    # "currentUserIds":[I
    .restart local v11    # "appSupportsRuntimePermissions":Z
    .restart local v12    # "i":I
    .restart local v15    # "perm":Ljava/lang/String;
    .restart local v18    # "N":I
    .restart local v19    # "permName":Ljava/lang/String;
    .restart local v21    # "allowedSig":Z
    .restart local v25    # "grant":I
    :cond_1e2
    move-object/from16 v32, v6

    move-object/from16 v31, v10

    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v10    # "currentUserIds":[I
    .restart local v31    # "currentUserIds":[I
    .restart local v32    # "ps":Lcom/android/server/pm/PackageSetting;
    goto :goto_1fd

    .line 999
    .end local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v11    # "appSupportsRuntimePermissions":Z
    .end local v12    # "i":I
    .end local v15    # "perm":Ljava/lang/String;
    .end local v18    # "N":I
    .end local v19    # "permName":Ljava/lang/String;
    .end local v21    # "allowedSig":Z
    .end local v25    # "grant":I
    .end local v28    # "changedInstallPermission":Z
    .end local v31    # "currentUserIds":[I
    .end local v32    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v10    # "currentUserIds":[I
    .local v13, "changedInstallPermission":Z
    .restart local v20    # "updatedUserIds":[I
    :catchall_1e7
    move-exception v0

    move-object/from16 v31, v10

    move/from16 v28, v13

    move-object v3, v6

    move/from16 v11, v16

    move-object/from16 v12, v20

    move-object/from16 v5, p4

    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v10    # "currentUserIds":[I
    .end local v13    # "changedInstallPermission":Z
    .restart local v28    # "changedInstallPermission":Z
    .restart local v31    # "currentUserIds":[I
    .restart local v32    # "ps":Lcom/android/server/pm/PackageSetting;
    goto/16 :goto_416

    .line 951
    .end local v28    # "changedInstallPermission":Z
    .end local v31    # "currentUserIds":[I
    .end local v32    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v10    # "currentUserIds":[I
    .restart local v11    # "appSupportsRuntimePermissions":Z
    .restart local v12    # "i":I
    .restart local v13    # "changedInstallPermission":Z
    .restart local v15    # "perm":Ljava/lang/String;
    .restart local v18    # "N":I
    .restart local v19    # "permName":Ljava/lang/String;
    .restart local v21    # "allowedSig":Z
    .restart local v25    # "grant":I
    :cond_1f5
    move-object/from16 v32, v6

    move-object/from16 v31, v10

    move/from16 v28, v13

    move-object/from16 v13, v20

    .line 724
    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v10    # "currentUserIds":[I
    .end local v20    # "updatedUserIds":[I
    .local v13, "updatedUserIds":[I
    .restart local v28    # "changedInstallPermission":Z
    .restart local v31    # "currentUserIds":[I
    .restart local v32    # "ps":Lcom/android/server/pm/PackageSetting;
    :goto_1fd
    move-object v15, v13

    move/from16 v13, v28

    goto/16 :goto_2c5

    .line 852
    .end local v25    # "grant":I
    .end local v27    # "isLegacySystemApp":Z
    .end local v28    # "changedInstallPermission":Z
    .end local v31    # "currentUserIds":[I
    .end local v32    # "ps":Lcom/android/server/pm/PackageSetting;
    .local v3, "grant":I
    .restart local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v7    # "isLegacySystemApp":Z
    .restart local v10    # "currentUserIds":[I
    .local v13, "changedInstallPermission":Z
    .restart local v20    # "updatedUserIds":[I
    :pswitch_202
    move/from16 v25, v3

    move-object/from16 v32, v6

    move/from16 v27, v7

    move-object/from16 v31, v10

    .end local v3    # "grant":I
    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v7    # "isLegacySystemApp":Z
    .end local v10    # "currentUserIds":[I
    .restart local v25    # "grant":I
    .restart local v27    # "isLegacySystemApp":Z
    .restart local v31    # "currentUserIds":[I
    .restart local v32    # "ps":Lcom/android/server/pm/PackageSetting;
    :try_start_20a
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v3

    array-length v5, v3
    :try_end_213
    .catchall {:try_start_20a .. :try_end_213} :catchall_39a

    move-object/from16 v7, v20

    const/4 v6, 0x0

    .end local v20    # "updatedUserIds":[I
    .local v7, "updatedUserIds":[I
    :goto_216
    if-ge v6, v5, :cond_2c3

    :try_start_218
    aget v10, v3, v6

    .line 853
    .local v10, "userId":I
    nop

    .line 854
    invoke-virtual {v9, v15, v10}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v20

    move-object/from16 v33, v20

    .line 855
    .local v33, "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    move-object/from16 v34, v3

    move-object/from16 v3, v33

    if-eqz v3, :cond_22c

    .line 856
    .end local v33    # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .local v3, "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    invoke-virtual {v3}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getFlags()I

    move-result v20

    goto :goto_22e

    :cond_22c
    const/16 v20, 0x0

    .line 857
    .local v20, "flags":I
    :goto_22e
    invoke-virtual {v9, v15, v10}, Lcom/android/server/pm/permission/PermissionsState;->hasRuntimePermission(Ljava/lang/String;I)Z

    move-result v22

    if-eqz v22, :cond_27f

    .line 865
    and-int/lit8 v22, v20, 0x8

    if-eqz v22, :cond_23b

    const/16 v22, 0x1

    goto :goto_23d

    :cond_23b
    const/16 v22, 0x0

    .line 867
    .local v22, "revokeOnUpgrade":Z
    :goto_23d
    if-eqz v22, :cond_247

    .line 868
    and-int/lit8 v20, v20, -0x9

    .line 870
    invoke-static {v7, v10}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v23

    move-object/from16 v7, v23

    .line 873
    :cond_247
    move-object/from16 v35, v3

    iget-object v3, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    .end local v3    # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .local v35, "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    iget-boolean v3, v3, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionReviewRequired:Z

    if-eqz v3, :cond_255

    if-nez v22, :cond_252

    goto :goto_255

    .line 884
    :cond_252
    move/from16 v36, v5

    goto :goto_263

    .line 874
    :cond_255
    :goto_255
    invoke-virtual {v8, v0, v10}, Lcom/android/server/pm/permission/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v3

    move/from16 v36, v5

    const/4 v5, -0x1

    if-ne v3, v5, :cond_263

    .line 878
    invoke-static {v7, v10}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v3
    :try_end_262
    .catchall {:try_start_218 .. :try_end_262} :catchall_300

    .end local v7    # "updatedUserIds":[I
    .local v3, "updatedUserIds":[I
    goto :goto_264

    .line 884
    .end local v3    # "updatedUserIds":[I
    .restart local v7    # "updatedUserIds":[I
    :cond_263
    :goto_263
    move-object v3, v7

    .end local v7    # "updatedUserIds":[I
    .restart local v3    # "updatedUserIds":[I
    :goto_264
    :try_start_264
    iget-object v5, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-boolean v5, v5, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionReviewRequired:Z

    if-eqz v5, :cond_279

    if-eqz v11, :cond_279

    and-int/lit8 v5, v20, 0x40

    if-eqz v5, :cond_279

    .line 888
    and-int/lit8 v5, v20, -0x41

    .line 890
    .end local v20    # "flags":I
    .local v5, "flags":I
    invoke-static {v3, v10}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v7
    :try_end_276
    .catchall {:try_start_264 .. :try_end_276} :catchall_27b

    move-object v3, v7

    .line 893
    .end local v22    # "revokeOnUpgrade":Z
    move/from16 v20, v5

    .line 917
    .end local v5    # "flags":I
    .local v3, "flags":I
    .restart local v7    # "updatedUserIds":[I
    :cond_279
    :goto_279
    move-object v7, v3

    goto :goto_2b6

    .line 999
    .end local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v7    # "updatedUserIds":[I
    .end local v10    # "userId":I
    .end local v11    # "appSupportsRuntimePermissions":Z
    .end local v12    # "i":I
    .end local v15    # "perm":Ljava/lang/String;
    .end local v18    # "N":I
    .end local v19    # "permName":Ljava/lang/String;
    .end local v21    # "allowedSig":Z
    .end local v25    # "grant":I
    .end local v35    # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .local v3, "updatedUserIds":[I
    :catchall_27b
    move-exception v0

    move-object v12, v3

    goto/16 :goto_302

    .line 893
    .restart local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .local v3, "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .restart local v7    # "updatedUserIds":[I
    .restart local v10    # "userId":I
    .restart local v11    # "appSupportsRuntimePermissions":Z
    .restart local v12    # "i":I
    .restart local v15    # "perm":Ljava/lang/String;
    .restart local v18    # "N":I
    .restart local v19    # "permName":Ljava/lang/String;
    .restart local v20    # "flags":I
    .restart local v21    # "allowedSig":Z
    .restart local v25    # "grant":I
    :cond_27f
    move-object/from16 v35, v3

    move/from16 v36, v5

    .end local v3    # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .restart local v35    # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    :try_start_283
    iget-object v3, v1, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-boolean v3, v3, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionReviewRequired:Z

    if-eqz v3, :cond_2b6

    if-nez v11, :cond_2b6

    .line 901
    const-string v3, "android"

    invoke-virtual {v0}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a4

    .line 902
    and-int/lit8 v3, v20, 0x40

    if-nez v3, :cond_2a4

    .line 903
    or-int/lit8 v3, v20, 0x40

    .line 905
    .end local v20    # "flags":I
    .local v3, "flags":I
    invoke-static {v7, v10}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v5
    :try_end_2a1
    .catchall {:try_start_283 .. :try_end_2a1} :catchall_300

    .line 909
    .end local v7    # "updatedUserIds":[I
    .local v5, "updatedUserIds":[I
    move/from16 v20, v3

    goto :goto_2a5

    .end local v3    # "flags":I
    .end local v5    # "updatedUserIds":[I
    .restart local v7    # "updatedUserIds":[I
    .restart local v20    # "flags":I
    :cond_2a4
    move-object v5, v7

    .end local v7    # "updatedUserIds":[I
    .restart local v5    # "updatedUserIds":[I
    :goto_2a5
    :try_start_2a5
    invoke-virtual {v8, v0, v10}, Lcom/android/server/pm/permission/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v3

    const/4 v7, -0x1

    if-eq v3, v7, :cond_2b1

    .line 912
    invoke-static {v5, v10}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v3
    :try_end_2b0
    .catchall {:try_start_2a5 .. :try_end_2b0} :catchall_2b3

    .end local v5    # "updatedUserIds":[I
    .local v3, "updatedUserIds":[I
    goto :goto_279

    .line 917
    .end local v3    # "updatedUserIds":[I
    .restart local v5    # "updatedUserIds":[I
    :cond_2b1
    move-object v7, v5

    goto :goto_2b6

    .line 999
    .end local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v10    # "userId":I
    .end local v11    # "appSupportsRuntimePermissions":Z
    .end local v12    # "i":I
    .end local v15    # "perm":Ljava/lang/String;
    .end local v18    # "N":I
    .end local v19    # "permName":Ljava/lang/String;
    .end local v20    # "flags":I
    .end local v21    # "allowedSig":Z
    .end local v25    # "grant":I
    .end local v35    # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    :catchall_2b3
    move-exception v0

    move-object v12, v5

    goto :goto_302

    .line 917
    .end local v5    # "updatedUserIds":[I
    .restart local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .local v3, "flags":I
    .restart local v7    # "updatedUserIds":[I
    .restart local v10    # "userId":I
    .restart local v11    # "appSupportsRuntimePermissions":Z
    .restart local v12    # "i":I
    .restart local v15    # "perm":Ljava/lang/String;
    .restart local v18    # "N":I
    .restart local v19    # "permName":Ljava/lang/String;
    .restart local v21    # "allowedSig":Z
    .restart local v25    # "grant":I
    .restart local v35    # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    :cond_2b6
    :goto_2b6
    move/from16 v3, v20

    :try_start_2b8
    invoke-virtual {v8, v0, v10, v3, v3}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z
    :try_end_2bb
    .catchall {:try_start_2b8 .. :try_end_2bb} :catchall_300

    .line 852
    .end local v3    # "flags":I
    .end local v10    # "userId":I
    .end local v35    # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v3, v34

    move/from16 v5, v36

    goto/16 :goto_216

    .line 919
    :cond_2c3
    nop

    .line 724
    .end local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v7    # "updatedUserIds":[I
    .end local v11    # "appSupportsRuntimePermissions":Z
    .end local v19    # "permName":Ljava/lang/String;
    .end local v21    # "allowedSig":Z
    .end local v25    # "grant":I
    .local v15, "updatedUserIds":[I
    :cond_2c4
    :goto_2c4
    move-object v15, v7

    :goto_2c5
    const/4 v1, 0x0

    goto/16 :goto_3a4

    .line 831
    .end local v27    # "isLegacySystemApp":Z
    .end local v31    # "currentUserIds":[I
    .end local v32    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .local v3, "grant":I
    .restart local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .local v7, "isLegacySystemApp":Z
    .local v10, "currentUserIds":[I
    .restart local v11    # "appSupportsRuntimePermissions":Z
    .local v15, "perm":Ljava/lang/String;
    .restart local v19    # "permName":Ljava/lang/String;
    .local v20, "updatedUserIds":[I
    .restart local v21    # "allowedSig":Z
    :pswitch_2c8
    move/from16 v25, v3

    move-object/from16 v32, v6

    move/from16 v27, v7

    move-object/from16 v31, v10

    .end local v3    # "grant":I
    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v7    # "isLegacySystemApp":Z
    .end local v10    # "currentUserIds":[I
    .restart local v25    # "grant":I
    .restart local v27    # "isLegacySystemApp":Z
    .restart local v31    # "currentUserIds":[I
    .restart local v32    # "ps":Lcom/android/server/pm/PackageSetting;
    :try_start_2d0
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v3

    array-length v5, v3
    :try_end_2d9
    .catchall {:try_start_2d0 .. :try_end_2d9} :catchall_39a

    move-object/from16 v7, v20

    const/4 v6, 0x0

    .end local v20    # "updatedUserIds":[I
    .local v7, "updatedUserIds":[I
    :goto_2dc
    if-ge v6, v5, :cond_306

    :try_start_2de
    aget v10, v3, v6

    .line 832
    .local v10, "userId":I
    invoke-virtual {v9, v15, v10}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v17

    if-eqz v17, :cond_2f7

    .line 835
    invoke-virtual {v9, v0, v10}, Lcom/android/server/pm/permission/PermissionsState;->revokeRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    .line 836
    move-object/from16 v37, v3

    const/4 v1, 0x0

    const/16 v3, 0xff

    invoke-virtual {v9, v0, v10, v3, v1}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 839
    invoke-static {v7, v10}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v1

    move-object v7, v1

    .end local v10    # "userId":I
    goto :goto_2f9

    .line 831
    :cond_2f7
    move-object/from16 v37, v3

    :goto_2f9
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v3, v37

    move-object/from16 v1, p0

    goto :goto_2dc

    .line 999
    .end local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v11    # "appSupportsRuntimePermissions":Z
    .end local v12    # "i":I
    .end local v15    # "perm":Ljava/lang/String;
    .end local v18    # "N":I
    .end local v19    # "permName":Ljava/lang/String;
    .end local v21    # "allowedSig":Z
    .end local v25    # "grant":I
    :catchall_300
    move-exception v0

    move-object v12, v7

    .end local v7    # "updatedUserIds":[I
    .end local v16    # "runtimePermissionsRevoked":Z
    .end local v32    # "ps":Lcom/android/server/pm/PackageSetting;
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    .local v11, "runtimePermissionsRevoked":Z
    .local v12, "updatedUserIds":[I
    :goto_302
    move/from16 v11, v16

    goto/16 :goto_39f

    .line 844
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v7    # "updatedUserIds":[I
    .local v11, "appSupportsRuntimePermissions":Z
    .local v12, "i":I
    .restart local v15    # "perm":Ljava/lang/String;
    .restart local v16    # "runtimePermissionsRevoked":Z
    .restart local v18    # "N":I
    .restart local v19    # "permName":Ljava/lang/String;
    .restart local v21    # "allowedSig":Z
    .restart local v25    # "grant":I
    .restart local v32    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_306
    invoke-virtual {v8, v0}, Lcom/android/server/pm/permission/PermissionsState;->grantInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v1
    :try_end_30a
    .catchall {:try_start_2de .. :try_end_30a} :catchall_300

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2c4

    .line 846
    const/4 v1, 0x1

    .line 724
    .end local v13    # "changedInstallPermission":Z
    .local v1, "changedInstallPermission":Z
    move v13, v1

    goto :goto_2c4

    .line 955
    .end local v1    # "changedInstallPermission":Z
    .end local v7    # "updatedUserIds":[I
    .restart local v13    # "changedInstallPermission":Z
    .restart local v20    # "updatedUserIds":[I
    :goto_310
    :try_start_310
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_b8

    .line 965
    .end local v25    # "grant":I
    .end local v27    # "isLegacySystemApp":Z
    .end local v31    # "currentUserIds":[I
    .end local v32    # "ps":Lcom/android/server/pm/PackageSetting;
    .local v3, "grant":I
    .restart local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .local v7, "isLegacySystemApp":Z
    .local v10, "currentUserIds":[I
    :cond_316
    move-object/from16 v32, v6

    move/from16 v27, v7

    move-object/from16 v31, v10

    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v7    # "isLegacySystemApp":Z
    .end local v10    # "currentUserIds":[I
    .restart local v27    # "isLegacySystemApp":Z
    .restart local v31    # "currentUserIds":[I
    .restart local v32    # "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v8, v0}, Lcom/android/server/pm/permission/PermissionsState;->revokeInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v1

    const/4 v5, -0x1

    if-eq v1, v5, :cond_36c

    .line 968
    const/4 v1, 0x0

    const/16 v6, 0xff

    invoke-virtual {v8, v0, v5, v6, v1}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 970
    const/4 v13, 0x1

    .line 971
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Un-granting permission "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " from package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " (protectionLevel="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 973
    invoke-virtual {v0}, Lcom/android/server/pm/permission/BasePermission;->getProtectionLevel()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " flags=0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 974
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 971
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a2

    .line 976
    :cond_36c
    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/android/server/pm/permission/BasePermission;->isAppOp()Z

    goto :goto_3a2

    .line 999
    .end local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v3    # "grant":I
    .end local v11    # "appSupportsRuntimePermissions":Z
    .end local v12    # "i":I
    .end local v15    # "perm":Ljava/lang/String;
    .end local v18    # "N":I
    .end local v19    # "permName":Ljava/lang/String;
    .end local v21    # "allowedSig":Z
    .end local v27    # "isLegacySystemApp":Z
    .end local v31    # "currentUserIds":[I
    .end local v32    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v7    # "isLegacySystemApp":Z
    .restart local v10    # "currentUserIds":[I
    :catchall_371
    move-exception v0

    move/from16 v27, v7

    move-object/from16 v31, v10

    move-object v3, v6

    move/from16 v11, v16

    move-object/from16 v12, v20

    move-object/from16 v5, p4

    goto :goto_388

    :catchall_37e
    move-exception v0

    move/from16 v27, v7

    move-object/from16 v31, v10

    move-object v3, v6

    move/from16 v11, v16

    move-object/from16 v12, v20

    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v7    # "isLegacySystemApp":Z
    .end local v10    # "currentUserIds":[I
    .end local v16    # "runtimePermissionsRevoked":Z
    .end local v20    # "updatedUserIds":[I
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    .local v11, "runtimePermissionsRevoked":Z
    .local v12, "updatedUserIds":[I
    .restart local v27    # "isLegacySystemApp":Z
    .restart local v31    # "currentUserIds":[I
    .restart local v32    # "ps":Lcom/android/server/pm/PackageSetting;
    :goto_388
    goto/16 :goto_416

    .line 735
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v27    # "isLegacySystemApp":Z
    .end local v31    # "currentUserIds":[I
    .end local v32    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v7    # "isLegacySystemApp":Z
    .restart local v10    # "currentUserIds":[I
    .local v11, "appSupportsRuntimePermissions":Z
    .local v12, "i":I
    .restart local v16    # "runtimePermissionsRevoked":Z
    .restart local v18    # "N":I
    .restart local v19    # "permName":Ljava/lang/String;
    .restart local v20    # "updatedUserIds":[I
    :cond_38a
    move-object/from16 v32, v6

    move/from16 v27, v7

    move-object/from16 v31, v10

    const/4 v1, 0x0

    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v7    # "isLegacySystemApp":Z
    .end local v10    # "currentUserIds":[I
    .restart local v27    # "isLegacySystemApp":Z
    .restart local v31    # "currentUserIds":[I
    .restart local v32    # "ps":Lcom/android/server/pm/PackageSetting;
    :goto_391
    if-eqz v4, :cond_3a2

    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_399
    .catchall {:try_start_310 .. :try_end_399} :catchall_39a

    goto :goto_3a2

    .line 999
    .end local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v11    # "appSupportsRuntimePermissions":Z
    .end local v12    # "i":I
    .end local v18    # "N":I
    .end local v19    # "permName":Ljava/lang/String;
    :catchall_39a
    move-exception v0

    move/from16 v11, v16

    move-object/from16 v12, v20

    .end local v16    # "runtimePermissionsRevoked":Z
    .end local v20    # "updatedUserIds":[I
    .end local v32    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    .local v11, "runtimePermissionsRevoked":Z
    .local v12, "updatedUserIds":[I
    :goto_39f
    move-object/from16 v3, v32

    goto :goto_3e9

    .line 724
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v11    # "runtimePermissionsRevoked":Z
    .local v12, "i":I
    .restart local v16    # "runtimePermissionsRevoked":Z
    .restart local v18    # "N":I
    .restart local v20    # "updatedUserIds":[I
    .restart local v32    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_3a2
    :goto_3a2
    move-object/from16 v15, v20

    .end local v20    # "updatedUserIds":[I
    .local v15, "updatedUserIds":[I
    :goto_3a4
    add-int/lit8 v12, v12, 0x1

    move/from16 v11, v16

    move/from16 v0, v18

    move/from16 v7, v27

    move-object/from16 v10, v31

    move-object/from16 v6, v32

    move-object/from16 v1, p0

    move-object/from16 v5, p4

    goto/16 :goto_6f

    .line 999
    .end local v12    # "i":I
    .end local v18    # "N":I
    .end local v27    # "isLegacySystemApp":Z
    .end local v31    # "currentUserIds":[I
    .end local v32    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v7    # "isLegacySystemApp":Z
    .restart local v10    # "currentUserIds":[I
    :catchall_3b6
    move-exception v0

    move/from16 v27, v7

    move-object/from16 v31, v10

    move-object/from16 v20, v15

    move-object v3, v6

    move/from16 v11, v16

    move-object/from16 v12, v20

    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v7    # "isLegacySystemApp":Z
    .end local v10    # "currentUserIds":[I
    .end local v15    # "updatedUserIds":[I
    .restart local v20    # "updatedUserIds":[I
    .restart local v27    # "isLegacySystemApp":Z
    .restart local v31    # "currentUserIds":[I
    .restart local v32    # "ps":Lcom/android/server/pm/PackageSetting;
    goto :goto_416

    .line 992
    .end local v20    # "updatedUserIds":[I
    .end local v27    # "isLegacySystemApp":Z
    .end local v31    # "currentUserIds":[I
    .end local v32    # "ps":Lcom/android/server/pm/PackageSetting;
    .local v0, "N":I
    .restart local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v7    # "isLegacySystemApp":Z
    .restart local v10    # "currentUserIds":[I
    .restart local v15    # "updatedUserIds":[I
    :cond_3c3
    move/from16 v18, v0

    move-object/from16 v32, v6

    move/from16 v27, v7

    move-object/from16 v31, v10

    move-object/from16 v20, v15

    .end local v0    # "N":I
    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v7    # "isLegacySystemApp":Z
    .end local v10    # "currentUserIds":[I
    .end local v15    # "updatedUserIds":[I
    .restart local v18    # "N":I
    .restart local v20    # "updatedUserIds":[I
    .restart local v27    # "isLegacySystemApp":Z
    .restart local v31    # "currentUserIds":[I
    .restart local v32    # "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v13, :cond_3d5

    if-eqz p2, :cond_3d2

    goto :goto_3d5

    .line 993
    :cond_3d2
    move-object/from16 v3, v32

    goto :goto_3ec

    .line 992
    :cond_3d5
    :goto_3d5
    move-object/from16 v3, v32

    :try_start_3d7
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->areInstallPermissionsFixed()Z

    move-result v0
    :try_end_3db
    .catchall {:try_start_3d7 .. :try_end_3db} :catchall_408

    .end local v32    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_3ec

    .line 993
    :try_start_3dd
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v0
    :try_end_3e1
    .catchall {:try_start_3dd .. :try_end_3e1} :catchall_3e4

    if-eqz v0, :cond_3f2

    goto :goto_3ec

    .line 999
    .end local v18    # "N":I
    :catchall_3e4
    move-exception v0

    .end local v16    # "runtimePermissionsRevoked":Z
    .end local v20    # "updatedUserIds":[I
    .restart local v11    # "runtimePermissionsRevoked":Z
    .local v12, "updatedUserIds":[I
    :goto_3e5
    move/from16 v11, v16

    move-object/from16 v12, v20

    :goto_3e9
    move-object/from16 v5, p4

    goto :goto_416

    .line 993
    .end local v11    # "runtimePermissionsRevoked":Z
    .end local v12    # "updatedUserIds":[I
    .restart local v16    # "runtimePermissionsRevoked":Z
    .restart local v18    # "N":I
    .restart local v20    # "updatedUserIds":[I
    :cond_3ec
    :goto_3ec
    :try_start_3ec
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->isUpdatedSystem()Z

    move-result v0
    :try_end_3f0
    .catchall {:try_start_3ec .. :try_end_3f0} :catchall_408

    if-eqz v0, :cond_3f6

    .line 997
    :cond_3f2
    const/4 v0, 0x1

    :try_start_3f3
    invoke-virtual {v3, v0}, Lcom/android/server/pm/PackageSetting;->setInstallPermissionsFixed(Z)V
    :try_end_3f6
    .catchall {:try_start_3f3 .. :try_end_3f6} :catchall_3e4

    .line 999
    .end local v18    # "N":I
    :cond_3f6
    :try_start_3f6
    monitor-exit v14
    :try_end_3f7
    .catchall {:try_start_3f6 .. :try_end_3f7} :catchall_408

    .line 1004
    move-object/from16 v5, p4

    if-eqz v5, :cond_403

    .line 1005
    move/from16 v11, v16

    move-object/from16 v12, v20

    invoke-virtual {v5, v12, v11}, Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;->onPermissionUpdated([IZ)V

    goto :goto_407

    .line 1007
    :cond_403
    move/from16 v11, v16

    move-object/from16 v12, v20

    .end local v16    # "runtimePermissionsRevoked":Z
    .end local v20    # "updatedUserIds":[I
    .restart local v11    # "runtimePermissionsRevoked":Z
    .restart local v12    # "updatedUserIds":[I
    :goto_407
    return-void

    .line 999
    .end local v11    # "runtimePermissionsRevoked":Z
    .end local v12    # "updatedUserIds":[I
    .restart local v16    # "runtimePermissionsRevoked":Z
    .restart local v20    # "updatedUserIds":[I
    :catchall_408
    move-exception v0

    move/from16 v11, v16

    move-object/from16 v12, v20

    move-object/from16 v5, p4

    .end local v16    # "runtimePermissionsRevoked":Z
    .end local v20    # "updatedUserIds":[I
    .restart local v11    # "runtimePermissionsRevoked":Z
    .restart local v12    # "updatedUserIds":[I
    goto :goto_416

    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v27    # "isLegacySystemApp":Z
    .end local v31    # "currentUserIds":[I
    .restart local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v7    # "isLegacySystemApp":Z
    .restart local v10    # "currentUserIds":[I
    :catchall_410
    move-exception v0

    move-object v3, v6

    move/from16 v27, v7

    move-object/from16 v31, v10

    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v7    # "isLegacySystemApp":Z
    .end local v10    # "currentUserIds":[I
    .restart local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v27    # "isLegacySystemApp":Z
    .restart local v31    # "currentUserIds":[I
    :goto_416
    :try_start_416
    monitor-exit v14
    :try_end_417
    .catchall {:try_start_416 .. :try_end_417} :catchall_418

    throw v0

    :catchall_418
    move-exception v0

    goto :goto_416

    :pswitch_data_41a
    .packed-switch 0x2
        :pswitch_2c8
        :pswitch_202
        :pswitch_163
    .end packed-switch
.end method

.method private grantRequestedRuntimePermissions(Landroid/content/pm/PackageParser$Package;[I[Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .registers 15
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userIds"    # [I
    .param p3, "grantedPermissions"    # [Ljava/lang/String;
    .param p4, "callingUid"    # I
    .param p5, "callback"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;

    .line 1337
    array-length v0, p2

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_12

    aget v8, p2, v1

    .line 1338
    .local v8, "userId":I
    move-object v2, p0

    move-object v3, p1

    move v4, v8

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->grantRequestedRuntimePermissionsForUser(Landroid/content/pm/PackageParser$Package;I[Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V

    .line 1337
    .end local v8    # "userId":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1341
    :cond_12
    return-void
.end method

.method private grantRequestedRuntimePermissionsForUser(Landroid/content/pm/PackageParser$Package;I[Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .registers 27
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userId"    # I
    .param p3, "grantedPermissions"    # [Ljava/lang/String;
    .param p4, "callingUid"    # I
    .param p5, "callback"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v12, p3

    .line 1345
    iget-object v0, v10, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    move-object v13, v0

    check-cast v13, Lcom/android/server/pm/PackageSetting;

    .line 1346
    .local v13, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v13, :cond_10

    .line 1347
    return-void

    .line 1350
    :cond_10
    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v14

    .line 1352
    .local v14, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    const/16 v15, 0x14

    .line 1355
    .local v15, "immutableFlags":I
    iget-object v0, v10, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    move/from16 v16, v0

    .line 1358
    .local v16, "supportsRuntimePermissions":Z
    iget-object v0, v9, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object v1, v10, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v11}, Landroid/content/pm/PackageManagerInternal;->isInstantApp(Ljava/lang/String;I)Z

    move-result v17

    .line 1360
    .local v17, "instantApp":Z
    iget-object v0, v10, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ae

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljava/lang/String;

    .line 1362
    .local v8, "permission":Ljava/lang/String;
    iget-object v1, v9, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1363
    :try_start_41
    iget-object v2, v9, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v2, v8}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v2

    move-object v7, v2

    .line 1364
    .local v7, "bp":Lcom/android/server/pm/permission/BasePermission;
    monitor-exit v1
    :try_end_49
    .catchall {:try_start_41 .. :try_end_49} :catchall_a7

    .line 1365
    if-eqz v7, :cond_a6

    invoke-virtual {v7}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v1

    if-nez v1, :cond_57

    invoke-virtual {v7}, Lcom/android/server/pm/permission/BasePermission;->isDevelopment()Z

    move-result v1

    if-eqz v1, :cond_a6

    :cond_57
    if-eqz v17, :cond_5f

    .line 1366
    invoke-virtual {v7}, Lcom/android/server/pm/permission/BasePermission;->isInstant()Z

    move-result v1

    if-eqz v1, :cond_a6

    :cond_5f
    if-nez v16, :cond_67

    .line 1367
    invoke-virtual {v7}, Lcom/android/server/pm/permission/BasePermission;->isRuntimeOnly()Z

    move-result v1

    if-nez v1, :cond_a6

    :cond_67
    if-eqz v12, :cond_6f

    .line 1369
    invoke-static {v12, v8}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a6

    .line 1370
    :cond_6f
    invoke-virtual {v14, v8, v11}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v18

    .line 1371
    .local v18, "flags":I
    if-eqz v16, :cond_89

    .line 1373
    and-int/lit8 v1, v18, 0x14

    if-nez v1, :cond_a6

    .line 1374
    iget-object v3, v10, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    move-object v1, v9

    move-object v2, v8

    move/from16 v5, p4

    move v6, v11

    move-object/from16 v19, v7

    move-object/from16 v7, p5

    .end local v7    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .local v19, "bp":Lcom/android/server/pm/permission/BasePermission;
    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V

    goto :goto_a6

    .line 1377
    .end local v19    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v7    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_89
    move-object/from16 v19, v7

    .end local v7    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v19    # "bp":Lcom/android/server/pm/permission/BasePermission;
    iget-object v1, v9, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-boolean v1, v1, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionReviewRequired:Z

    if-eqz v1, :cond_a6

    .line 1380
    and-int/lit8 v1, v18, 0x40

    if-eqz v1, :cond_a6

    .line 1381
    iget-object v3, v10, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/16 v4, 0x40

    const/4 v5, 0x0

    move-object v1, v9

    move-object v2, v8

    move/from16 v6, p4

    move v7, v11

    move-object/from16 v20, v8

    move-object/from16 v8, p5

    .end local v8    # "permission":Ljava/lang/String;
    .local v20, "permission":Ljava/lang/String;
    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIIILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V

    .line 1387
    .end local v18    # "flags":I
    .end local v19    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v20    # "permission":Ljava/lang/String;
    :cond_a6
    :goto_a6
    goto :goto_31

    .line 1364
    .restart local v8    # "permission":Ljava/lang/String;
    :catchall_a7
    move-exception v0

    move-object/from16 v20, v8

    .end local v8    # "permission":Ljava/lang/String;
    .restart local v20    # "permission":Ljava/lang/String;
    :goto_aa
    :try_start_aa
    monitor-exit v1
    :try_end_ab
    .catchall {:try_start_aa .. :try_end_ab} :catchall_ac

    throw v0

    :catchall_ac
    move-exception v0

    goto :goto_aa

    .line 1388
    .end local v20    # "permission":Ljava/lang/String;
    :cond_ae
    return-void
.end method

.method private grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .registers 27
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "overridePolicy"    # Z
    .param p4, "callingUid"    # I
    .param p5, "userId"    # I
    .param p6, "callback"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p5

    .line 1392
    move-object/from16 v12, p6

    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0, v11}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_29

    .line 1393
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No such user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    return-void

    .line 1397
    :cond_29
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    const-string v2, "grantRuntimePermission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1401
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, "grantRuntimePermission"

    move-object v1, v8

    move/from16 v2, p4

    move v3, v11

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V

    .line 1407
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    .line 1408
    .local v1, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v1, :cond_1dd

    iget-object v0, v1, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-eqz v0, :cond_1dd

    .line 1412
    iget-object v2, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1413
    :try_start_4d
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v0, v9}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v0

    move-object v3, v0

    .line 1414
    .local v3, "bp":Lcom/android/server/pm/permission/BasePermission;
    monitor-exit v2
    :try_end_55
    .catchall {:try_start_4d .. :try_end_55} :catchall_1d4

    .line 1415
    if-eqz v3, :cond_1b9

    .line 1418
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    move/from16 v4, p4

    invoke-virtual {v0, v1, v4, v11}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Landroid/content/pm/PackageParser$Package;II)Z

    move-result v0

    if-nez v0, :cond_1a0

    .line 1422
    invoke-virtual {v3, v1}, Lcom/android/server/pm/permission/BasePermission;->enforceDeclaredUsedAndRuntimeOrDevelopment(Landroid/content/pm/PackageParser$Package;)V

    .line 1428
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-boolean v0, v0, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionReviewRequired:Z

    const/16 v2, 0x17

    if-eqz v0, :cond_79

    iget-object v0, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge v0, v2, :cond_79

    .line 1430
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v0

    if-eqz v0, :cond_79

    .line 1431
    return-void

    .line 1434
    :cond_79
    iget-object v0, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v11, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v5

    .line 1436
    .local v5, "uid":I
    iget-object v0, v1, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lcom/android/server/pm/PackageSetting;

    .line 1437
    .local v6, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v7

    .line 1439
    .local v7, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-virtual {v7, v9, v11}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v13

    .line 1440
    .local v13, "flags":I
    and-int/lit8 v0, v13, 0x10

    if-nez v0, :cond_17f

    .line 1444
    if-nez p3, :cond_b8

    and-int/lit8 v0, v13, 0x4

    if-nez v0, :cond_99

    goto :goto_b8

    .line 1445
    :cond_99
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot grant policy fixed permission "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " for package "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1449
    :cond_b8
    :goto_b8
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->isDevelopment()Z

    move-result v0

    const/4 v14, -0x1

    if-eqz v0, :cond_cb

    .line 1452
    invoke-virtual {v7, v3}, Lcom/android/server/pm/permission/PermissionsState;->grantInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v0

    if-eq v0, v14, :cond_ca

    .line 1454
    if-eqz v12, :cond_ca

    .line 1455
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;->onInstallPermissionGranted()V

    .line 1458
    :cond_ca
    return-void

    .line 1461
    :cond_cb
    invoke-virtual {v6, v11}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v0

    if-eqz v0, :cond_f7

    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->isInstant()Z

    move-result v0

    if-eqz v0, :cond_d8

    goto :goto_f7

    .line 1462
    :cond_d8
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot grant non-ephemeral permission"

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " for package "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1466
    :cond_f7
    :goto_f7
    iget-object v0, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge v0, v2, :cond_105

    .line 1467
    const-string v0, "PackageManager"

    const-string v2, "Cannot grant runtime permission to a legacy app"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    return-void

    .line 1471
    :cond_105
    invoke-virtual {v7, v3, v11}, Lcom/android/server/pm/permission/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v2

    .line 1472
    .local v2, "result":I
    if-eq v2, v14, :cond_17a

    const/4 v0, 0x1

    if-eq v2, v0, :cond_10f

    goto :goto_11c

    .line 1478
    :cond_10f
    if-eqz v12, :cond_11c

    .line 1479
    iget-object v0, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-virtual {v12, v0, v11}, Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;->onGidsChanged(II)V

    .line 1485
    :cond_11c
    :goto_11c
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v0

    if-eqz v0, :cond_127

    .line 1486
    const/16 v0, 0x4db

    invoke-direct {v8, v0, v9, v10}, Lcom/android/server/pm/permission/PermissionManagerService;->logPermission(ILjava/lang/String;Ljava/lang/String;)V

    .line 1489
    :cond_127
    if-eqz v12, :cond_12c

    .line 1490
    invoke-virtual {v12, v5, v11}, Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;->onPermissionGranted(II)V

    .line 1496
    :cond_12c
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_142

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 1497
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13d

    goto :goto_142

    .line 1510
    :cond_13d
    move-object/from16 v18, v1

    move/from16 v19, v2

    goto :goto_16e

    .line 1498
    :cond_142
    :goto_142
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    move-wide/from16 v16, v14

    .line 1500
    .local v16, "token":J
    :try_start_148
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0, v11}, Landroid/os/UserManagerInternal;->isUserInitialized(I)Z

    move-result v0
    :try_end_14e
    .catchall {:try_start_148 .. :try_end_14e} :catchall_16f

    if-eqz v0, :cond_164

    .line 1501
    :try_start_150
    const-class v0, Landroid/os/storage/StorageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManagerInternal;

    .line 1503
    .local v0, "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    invoke-virtual {v0, v5, v10}, Landroid/os/storage/StorageManagerInternal;->onExternalStoragePolicyChanged(ILjava/lang/String;)V
    :try_end_15b
    .catchall {:try_start_150 .. :try_end_15b} :catchall_15c

    .end local v0    # "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    goto :goto_164

    .line 1506
    :catchall_15c
    move-exception v0

    move-object/from16 v18, v1

    move/from16 v19, v2

    move-wide/from16 v1, v16

    goto :goto_176

    :cond_164
    :goto_164
    move-object/from16 v18, v1

    move/from16 v19, v2

    move-wide/from16 v1, v16

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1507
    .end local v2    # "result":I
    .end local v16    # "token":J
    .local v1, "token":J
    .local v18, "pkg":Landroid/content/pm/PackageParser$Package;
    .local v19, "result":I
    nop

    .line 1510
    .end local v1    # "token":J
    :goto_16e
    return-void

    .line 1506
    .end local v18    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v19    # "result":I
    .local v1, "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v2    # "result":I
    .restart local v16    # "token":J
    :catchall_16f
    move-exception v0

    move-object/from16 v18, v1

    move/from16 v19, v2

    move-wide/from16 v1, v16

    .end local v2    # "result":I
    .end local v16    # "token":J
    .local v1, "token":J
    .restart local v18    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v19    # "result":I
    :goto_176
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1474
    .end local v18    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v19    # "result":I
    .local v1, "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v2    # "result":I
    :cond_17a
    move-object/from16 v18, v1

    move/from16 v19, v2

    .end local v1    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v2    # "result":I
    .restart local v18    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v19    # "result":I
    return-void

    .line 1441
    .end local v18    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v19    # "result":I
    .restart local v1    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_17f
    move-object/from16 v18, v1

    .end local v1    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v18    # "pkg":Landroid/content/pm/PackageParser$Package;
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot grant system fixed permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1419
    .end local v5    # "uid":I
    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v7    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v13    # "flags":I
    .end local v18    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v1    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_1a0
    move-object/from16 v18, v1

    .end local v1    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v18    # "pkg":Landroid/content/pm/PackageParser$Package;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1416
    .end local v18    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v1    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_1b9
    move/from16 v4, p4

    move-object/from16 v18, v1

    .end local v1    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v18    # "pkg":Landroid/content/pm/PackageParser$Package;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown permission: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1414
    .end local v3    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v18    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v1    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catchall_1d4
    move-exception v0

    move/from16 v4, p4

    move-object/from16 v18, v1

    .end local v1    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v18    # "pkg":Landroid/content/pm/PackageParser$Package;
    :goto_1d9
    :try_start_1d9
    monitor-exit v2
    :try_end_1da
    .catchall {:try_start_1d9 .. :try_end_1da} :catchall_1db

    throw v0

    :catchall_1db
    move-exception v0

    goto :goto_1d9

    .line 1409
    .end local v18    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v1    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_1dd
    move/from16 v4, p4

    move-object/from16 v18, v1

    .end local v1    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v18    # "pkg":Landroid/content/pm/PackageParser$Package;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private grantRuntimePermissionsGrantedToDisabledPackageLocked(Landroid/content/pm/PackageParser$Package;ILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .registers 24
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "callingUid"    # I
    .param p3, "callback"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 1304
    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    if-nez v0, :cond_9

    .line 1305
    return-void

    .line 1307
    :cond_9
    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    if-nez v0, :cond_e

    .line 1308
    return-void

    .line 1310
    :cond_e
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object v1, v8, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 1311
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->getDisabledPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v9

    .line 1312
    .local v9, "disabledPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v9, :cond_9e

    iget-object v0, v9, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-nez v0, :cond_20

    goto/16 :goto_9e

    .line 1315
    :cond_20
    iget-object v0, v9, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Lcom/android/server/pm/PackageSetting;

    .line 1316
    .local v10, "disabledPs":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->isPrivileged()Z

    move-result v0

    if-eqz v0, :cond_9d

    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->hasChildPackages()Z

    move-result v0

    if-eqz v0, :cond_33

    goto/16 :goto_9d

    .line 1319
    :cond_33
    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 1320
    .local v11, "permCount":I
    const/4 v12, 0x0

    move v0, v12

    .local v0, "i":I
    :goto_3b
    move v13, v0

    .end local v0    # "i":I
    .local v13, "i":I
    if-ge v13, v11, :cond_9c

    .line 1321
    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/lang/String;

    .line 1322
    .local v14, "permission":Ljava/lang/String;
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v0, v14}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v15

    .line 1323
    .local v15, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v15, :cond_99

    invoke-virtual {v15}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v0

    if-nez v0, :cond_5c

    invoke-virtual {v15}, Lcom/android/server/pm/permission/BasePermission;->isDevelopment()Z

    move-result v0

    if-nez v0, :cond_5c

    .line 1324
    goto :goto_99

    .line 1326
    :cond_5c
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0}, Landroid/os/UserManagerInternal;->getUserIds()[I

    move-result-object v6

    array-length v5, v6

    move v4, v12

    :goto_64
    if-ge v4, v5, :cond_99

    aget v3, v6, v4

    .line 1327
    .local v3, "userId":I
    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v0

    invoke-virtual {v0, v14, v3}, Lcom/android/server/pm/permission/PermissionsState;->hasRuntimePermission(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 1328
    iget-object v2, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/16 v16, 0x0

    move-object v0, v7

    move-object v1, v14

    move/from16 v17, v3

    move/from16 v3, v16

    .end local v3    # "userId":I
    .local v17, "userId":I
    move/from16 v16, v4

    move/from16 v4, p2

    move/from16 v18, v5

    move/from16 v5, v17

    move-object/from16 v19, v6

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V

    .end local v17    # "userId":I
    goto :goto_92

    .line 1326
    :cond_8c
    move/from16 v16, v4

    move/from16 v18, v5

    move-object/from16 v19, v6

    :goto_92
    add-int/lit8 v4, v16, 0x1

    move/from16 v5, v18

    move-object/from16 v6, v19

    goto :goto_64

    .line 1320
    .end local v14    # "permission":Ljava/lang/String;
    .end local v15    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_99
    :goto_99
    add-int/lit8 v0, v13, 0x1

    .end local v13    # "i":I
    .restart local v0    # "i":I
    goto :goto_3b

    .line 1333
    .end local v0    # "i":I
    :cond_9c
    return-void

    .line 1317
    .end local v11    # "permCount":I
    :cond_9d
    :goto_9d
    return-void

    .line 1313
    .end local v10    # "disabledPs":Lcom/android/server/pm/PackageSetting;
    :cond_9e
    :goto_9e
    return-void
.end method

.method private grantSignaturePermission(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;Lcom/android/server/pm/permission/BasePermission;Lcom/android/server/pm/permission/PermissionsState;)Z
    .registers 29
    .param p1, "perm"    # Ljava/lang/String;
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "bp"    # Lcom/android/server/pm/permission/BasePermission;
    .param p4, "origPermissions"    # Lcom/android/server/pm/permission/PermissionsState;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1053
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isOEM()Z

    move-result v3

    .line 1054
    .local v3, "oemPermission":Z
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isVendorPrivileged()Z

    move-result v4

    .line 1055
    .local v4, "vendorPrivilegedPermission":Z
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isPrivileged()Z

    move-result v5

    const/4 v7, 0x0

    if-nez v5, :cond_1e

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isVendorPrivileged()Z

    move-result v5

    if-eqz v5, :cond_1c

    goto :goto_1e

    :cond_1c
    move v5, v7

    goto :goto_1f

    :cond_1e
    :goto_1e
    const/4 v5, 0x1

    .line 1056
    .local v5, "privilegedPermission":Z
    :goto_1f
    sget-boolean v8, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_DISABLE:Z

    .line 1058
    .local v8, "privappPermissionsDisable":Z
    const-string v9, "android"

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 1059
    .local v9, "platformPermission":Z
    const-string v10, "android"

    iget-object v11, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 1060
    .local v10, "platformPackage":Z
    if-nez v8, :cond_e1

    if-eqz v5, :cond_e1

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$Package;->isPrivileged()Z

    move-result v11

    if-eqz v11, :cond_e1

    if-nez v10, :cond_e1

    if-eqz v9, :cond_e1

    .line 1062
    invoke-direct/range {p0 .. p2}, Lcom/android/server/pm/permission/PermissionManagerService;->hasPrivappWhitelistEntry(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Z

    move-result v11

    if-nez v11, :cond_e1

    .line 1064
    const/4 v11, 0x0

    .line 1065
    .local v11, "deniedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$Package;->isVendor()Z

    move-result v12

    if-eqz v12, :cond_59

    .line 1066
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v12

    iget-object v13, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 1067
    invoke-virtual {v12, v13}, Lcom/android/server/SystemConfig;->getVendorPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v11

    goto :goto_74

    .line 1068
    :cond_59
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$Package;->isProduct()Z

    move-result v12

    if-eqz v12, :cond_6a

    .line 1069
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v12

    iget-object v13, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 1070
    invoke-virtual {v12, v13}, Lcom/android/server/SystemConfig;->getProductPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v11

    goto :goto_74

    .line 1072
    :cond_6a
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v12

    iget-object v13, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 1073
    invoke-virtual {v12, v13}, Lcom/android/server/SystemConfig;->getPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v11

    .line 1075
    :goto_74
    if-eqz v11, :cond_7f

    .line 1076
    invoke-virtual {v11, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_7d

    goto :goto_7f

    :cond_7d
    move v12, v7

    goto :goto_80

    :cond_7f
    :goto_7f
    const/4 v12, 0x1

    .line 1077
    .local v12, "permissionViolation":Z
    :goto_80
    if-nez v12, :cond_83

    .line 1079
    return v7

    .line 1082
    :cond_83
    iget-boolean v13, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mSystemReady:Z

    if-nez v13, :cond_dc

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$Package;->isUpdatedSystemApp()Z

    move-result v13

    if-nez v13, :cond_dc

    .line 1083
    const-string v13, "PackageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Privileged permission "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " for package "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " - not in privapp-permissions whitelist"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    sget-boolean v13, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_ENFORCE:Z

    if-eqz v13, :cond_dc

    .line 1087
    iget-object v13, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    if-nez v13, :cond_c1

    .line 1088
    new-instance v13, Landroid/util/ArraySet;

    invoke-direct {v13}, Landroid/util/ArraySet;-><init>()V

    iput-object v13, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    .line 1090
    :cond_c1
    iget-object v13, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ": "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1093
    :cond_dc
    sget-boolean v13, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_ENFORCE:Z

    if-eqz v13, :cond_e1

    .line 1094
    return v7

    .line 1098
    .end local v11    # "deniedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v12    # "permissionViolation":Z
    :cond_e1
    iget-object v11, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v11, v7, v7}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v11

    .line 1100
    .local v11, "systemPackageName":Ljava/lang/String;
    iget-object v12, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 1101
    invoke-virtual {v12, v11}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v12

    .line 1110
    .local v12, "systemPackage":Landroid/content/pm/PackageParser$Package;
    iget-object v13, v2, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 1112
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageSetting()Lcom/android/server/pm/PackageSettingBase;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/pm/PackageSettingBase;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v14

    .line 1111
    invoke-virtual {v13, v14}, Landroid/content/pm/PackageParser$SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/PackageParser$SigningDetails;)Z

    move-result v13

    if-nez v13, :cond_125

    .line 1113
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageSetting()Lcom/android/server/pm/PackageSettingBase;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/pm/PackageSettingBase;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v13

    iget-object v14, v2, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    const/4 v15, 0x4

    invoke-virtual {v13, v14, v15}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v13

    if-nez v13, :cond_125

    iget-object v13, v2, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v14, v12, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 1116
    invoke-virtual {v13, v14}, Landroid/content/pm/PackageParser$SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/PackageParser$SigningDetails;)Z

    move-result v13

    if-nez v13, :cond_125

    iget-object v13, v12, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v14, v2, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 1117
    invoke-virtual {v13, v14, v15}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v13

    if-eqz v13, :cond_123

    goto :goto_125

    :cond_123
    move v13, v7

    goto :goto_126

    :cond_125
    :goto_125
    const/4 v13, 0x1

    .line 1122
    .local v13, "allowed":Z
    :goto_126
    iget-object v14, v2, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v14, v14, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v15, p3

    iget-object v6, v15, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-static {v14, v6}, Lmiui/content/pm/ExtraPackageManager;->isTrustedSystemSignature([Landroid/content/pm/Signature;Ljava/lang/String;)Z

    move-result v6

    or-int/2addr v6, v13

    .line 1124
    .end local v13    # "allowed":Z
    .local v6, "allowed":Z
    if-nez v6, :cond_26a

    if-nez v5, :cond_139

    if-eqz v3, :cond_26a

    .line 1125
    :cond_139
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$Package;->isSystem()Z

    move-result v13

    if-eqz v13, :cond_26a

    .line 1128
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$Package;->isUpdatedSystemApp()Z

    move-result v13

    if-eqz v13, :cond_21a

    .line 1129
    iget-object v13, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object v14, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 1130
    invoke-virtual {v13, v14}, Landroid/content/pm/PackageManagerInternal;->getDisabledPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v13

    .line 1132
    .local v13, "disabledPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v13, :cond_154

    iget-object v14, v13, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v14, Lcom/android/server/pm/PackageSetting;

    goto :goto_155

    :cond_154
    const/4 v14, 0x0

    .line 1133
    .local v14, "disabledPs":Lcom/android/server/pm/PackageSetting;
    :goto_155
    if-eqz v14, :cond_17c

    .line 1134
    invoke-virtual {v14}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_17c

    .line 1138
    if-eqz v5, :cond_169

    invoke-virtual {v14}, Lcom/android/server/pm/PackageSetting;->isPrivileged()Z

    move-result v7

    if-nez v7, :cond_177

    :cond_169
    if-eqz v3, :cond_178

    .line 1139
    invoke-virtual {v14}, Lcom/android/server/pm/PackageSetting;->isOem()Z

    move-result v7

    if-eqz v7, :cond_178

    .line 1140
    invoke-static {v14, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->canGrantOemPermission(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_178

    .line 1141
    :cond_177
    const/4 v6, 0x1

    .line 1189
    .end local v6    # "allowed":Z
    .end local v13    # "disabledPkg":Landroid/content/pm/PackageParser$Package;
    .end local v14    # "disabledPs":Lcom/android/server/pm/PackageSetting;
    .local v16, "allowed":Z
    :cond_178
    move/from16 v16, v6

    goto/16 :goto_217

    .line 1150
    .end local v16    # "allowed":Z
    .restart local v6    # "allowed":Z
    .restart local v13    # "disabledPkg":Landroid/content/pm/PackageParser$Package;
    .restart local v14    # "disabledPs":Lcom/android/server/pm/PackageSetting;
    :cond_17c
    if-eqz v14, :cond_19d

    if-eqz v13, :cond_19d

    .line 1151
    invoke-direct {v0, v13, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->isPackageRequestingPermission(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_19d

    if-eqz v5, :cond_18e

    .line 1152
    invoke-virtual {v14}, Lcom/android/server/pm/PackageSetting;->isPrivileged()Z

    move-result v7

    if-nez v7, :cond_19c

    :cond_18e
    if-eqz v3, :cond_19d

    .line 1153
    invoke-virtual {v14}, Lcom/android/server/pm/PackageSetting;->isOem()Z

    move-result v7

    if-eqz v7, :cond_19d

    .line 1154
    invoke-static {v14, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->canGrantOemPermission(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_19d

    .line 1155
    :cond_19c
    const/4 v6, 0x1

    .line 1160
    :cond_19d
    iget-object v7, v2, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    if-eqz v7, :cond_213

    .line 1161
    iget-object v7, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    move/from16 v17, v6

    iget-object v6, v2, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    .end local v6    # "allowed":Z
    .local v17, "allowed":Z
    iget-object v6, v6, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 1162
    invoke-virtual {v7, v6}, Landroid/content/pm/PackageManagerInternal;->getDisabledPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v6

    .line 1163
    .local v6, "disabledParentPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v6, :cond_1b4

    .line 1164
    iget-object v7, v6, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/pm/PackageSetting;

    goto :goto_1b5

    :cond_1b4
    const/4 v7, 0x0

    .line 1165
    .local v7, "disabledParentPs":Lcom/android/server/pm/PackageSetting;
    :goto_1b5
    if-eqz v6, :cond_215

    if-eqz v5, :cond_1bf

    .line 1166
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->isPrivileged()Z

    move-result v18

    if-nez v18, :cond_1c7

    :cond_1bf
    if-eqz v3, :cond_215

    .line 1167
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->isOem()Z

    move-result v18

    if-eqz v18, :cond_215

    .line 1168
    :cond_1c7
    invoke-direct {v0, v6, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->isPackageRequestingPermission(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1d6

    .line 1169
    invoke-static {v7, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->canGrantOemPermission(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1d6

    .line 1170
    const/16 v16, 0x1

    .end local v17    # "allowed":Z
    .restart local v16    # "allowed":Z
    goto :goto_217

    .line 1171
    .end local v16    # "allowed":Z
    .restart local v17    # "allowed":Z
    :cond_1d6
    move-object/from16 v19, v7

    iget-object v7, v6, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    .end local v7    # "disabledParentPs":Lcom/android/server/pm/PackageSetting;
    .local v19, "disabledParentPs":Lcom/android/server/pm/PackageSetting;
    if-eqz v7, :cond_215

    .line 1173
    iget-object v7, v6, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1e2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_215

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v20, v6

    move-object/from16 v6, v18

    check-cast v6, Landroid/content/pm/PackageParser$Package;

    .line 1175
    .local v6, "disabledChildPkg":Landroid/content/pm/PackageParser$Package;
    .local v20, "disabledParentPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v6, :cond_1fb

    .line 1176
    move-object/from16 v21, v7

    iget-object v7, v6, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/pm/PackageSetting;

    goto :goto_1fe

    .line 1177
    :cond_1fb
    move-object/from16 v21, v7

    const/4 v7, 0x0

    .line 1178
    .local v7, "disabledChildPs":Lcom/android/server/pm/PackageSetting;
    :goto_1fe
    invoke-direct {v0, v6, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->isPackageRequestingPermission(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_20d

    .line 1179
    invoke-static {v7, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->canGrantOemPermission(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_20d

    .line 1181
    const/16 v16, 0x1

    .line 1182
    .end local v17    # "allowed":Z
    .restart local v16    # "allowed":Z
    goto :goto_217

    .line 1184
    .end local v6    # "disabledChildPkg":Landroid/content/pm/PackageParser$Package;
    .end local v7    # "disabledChildPs":Lcom/android/server/pm/PackageSetting;
    .end local v16    # "allowed":Z
    .restart local v17    # "allowed":Z
    :cond_20d
    nop

    .line 1173
    move-object/from16 v6, v20

    move-object/from16 v7, v21

    goto :goto_1e2

    .line 1189
    .end local v13    # "disabledPkg":Landroid/content/pm/PackageParser$Package;
    .end local v14    # "disabledPs":Lcom/android/server/pm/PackageSetting;
    .end local v17    # "allowed":Z
    .end local v19    # "disabledParentPs":Lcom/android/server/pm/PackageSetting;
    .end local v20    # "disabledParentPkg":Landroid/content/pm/PackageParser$Package;
    .local v6, "allowed":Z
    :cond_213
    move/from16 v17, v6

    .end local v6    # "allowed":Z
    .restart local v17    # "allowed":Z
    :cond_215
    move/from16 v16, v17

    .line 1198
    .end local v17    # "allowed":Z
    .restart local v16    # "allowed":Z
    :goto_217
    move/from16 v6, v16

    goto :goto_238

    .line 1190
    .end local v16    # "allowed":Z
    .restart local v6    # "allowed":Z
    :cond_21a
    iget-object v7, v2, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/pm/PackageSetting;

    .line 1191
    .local v7, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v5, :cond_226

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$Package;->isPrivileged()Z

    move-result v13

    if-nez v13, :cond_234

    :cond_226
    if-eqz v3, :cond_236

    .line 1192
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$Package;->isOem()Z

    move-result v13

    if-eqz v13, :cond_236

    .line 1193
    invoke-static {v7, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->canGrantOemPermission(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_236

    :cond_234
    const/4 v13, 0x1

    goto :goto_237

    :cond_236
    const/4 v13, 0x0

    :goto_237
    move v6, v13

    .line 1198
    .end local v7    # "ps":Lcom/android/server/pm/PackageSetting;
    :goto_238
    if-eqz v6, :cond_26a

    if-eqz v5, :cond_26a

    if-nez v4, :cond_26a

    .line 1199
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$Package;->isVendor()Z

    move-result v7

    if-eqz v7, :cond_26a

    .line 1200
    const-string v7, "PackageManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Permission "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " cannot be granted to privileged vendor apk "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " because it isn\'t a \'vendorPrivileged\' permission."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    const/4 v6, 0x0

    .line 1206
    :cond_26a
    if-nez v6, :cond_308

    .line 1207
    if-nez v6, :cond_27d

    .line 1208
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isPre23()Z

    move-result v7

    if-eqz v7, :cond_27d

    iget-object v7, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v13, 0x17

    if-ge v7, v13, :cond_27d

    .line 1213
    const/4 v6, 0x1

    .line 1215
    :cond_27d
    if-nez v6, :cond_299

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isInstaller()Z

    move-result v7

    if-eqz v7, :cond_299

    iget-object v7, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v13, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v14, 0x2

    .line 1216
    move/from16 v22, v3

    const/4 v3, 0x0

    invoke-virtual {v13, v14, v3}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v13

    .end local v3    # "oemPermission":Z
    .local v22, "oemPermission":Z
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29b

    .line 1220
    const/4 v6, 0x1

    goto :goto_29b

    .line 1222
    .end local v22    # "oemPermission":Z
    .restart local v3    # "oemPermission":Z
    :cond_299
    move/from16 v22, v3

    .end local v3    # "oemPermission":Z
    .restart local v22    # "oemPermission":Z
    :cond_29b
    :goto_29b
    if-nez v6, :cond_2b4

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isVerifier()Z

    move-result v3

    if-eqz v3, :cond_2b4

    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v13, 0x3

    .line 1223
    const/4 v14, 0x0

    invoke-virtual {v7, v13, v14}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b4

    .line 1227
    const/4 v6, 0x1

    .line 1229
    :cond_2b4
    if-nez v6, :cond_2c3

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isPreInstalled()Z

    move-result v3

    if-eqz v3, :cond_2c3

    .line 1230
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$Package;->isSystem()Z

    move-result v3

    if-eqz v3, :cond_2c3

    .line 1232
    const/4 v6, 0x1

    .line 1234
    :cond_2c3
    if-nez v6, :cond_2d2

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isDevelopment()Z

    move-result v3

    if-eqz v3, :cond_2d2

    .line 1237
    move-object/from16 v3, p4

    invoke-virtual {v3, v1}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v6

    goto :goto_2d4

    .line 1239
    :cond_2d2
    move-object/from16 v3, p4

    :goto_2d4
    if-nez v6, :cond_2ee

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isSetup()Z

    move-result v7

    if-eqz v7, :cond_2ee

    iget-object v7, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v13, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 1240
    const/4 v1, 0x1

    const/4 v14, 0x0

    invoke-virtual {v13, v1, v14}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2ee

    .line 1244
    const/4 v1, 0x1

    .line 1246
    .end local v6    # "allowed":Z
    .local v1, "allowed":Z
    move v6, v1

    .end local v1    # "allowed":Z
    .restart local v6    # "allowed":Z
    :cond_2ee
    if-nez v6, :cond_30c

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isSystemTextClassifier()Z

    move-result v1

    if-eqz v1, :cond_30c

    iget-object v1, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v13, 0x5

    .line 1247
    const/4 v14, 0x0

    invoke-virtual {v7, v13, v14}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30c

    .line 1251
    const/4 v6, 0x1

    goto :goto_30c

    .line 1254
    .end local v22    # "oemPermission":Z
    .restart local v3    # "oemPermission":Z
    :cond_308
    move/from16 v22, v3

    move-object/from16 v3, p4

    .end local v3    # "oemPermission":Z
    .restart local v22    # "oemPermission":Z
    :cond_30c
    :goto_30c
    return v6
.end method

.method private static hasPermission(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z
    .registers 5
    .param p0, "pkgInfo"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "permName"    # Ljava/lang/String;

    .line 2057
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_20

    .line 2058
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Permission;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 2059
    return v1

    .line 2057
    :cond_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2062
    .end local v0    # "i":I
    :cond_20
    const/4 v0, 0x0

    return v0
.end method

.method private hasPrivappWhitelistEntry(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Z
    .registers 8
    .param p1, "perm"    # Ljava/lang/String;
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 1034
    const/4 v0, 0x0

    .line 1035
    .local v0, "wlPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/content/pm/PackageParser$Package;->isVendor()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1037
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    iget-object v2, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemConfig;->getVendorPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    goto :goto_2d

    .line 1038
    :cond_12
    invoke-virtual {p2}, Landroid/content/pm/PackageParser$Package;->isProduct()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 1040
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    iget-object v2, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemConfig;->getProductPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    goto :goto_2d

    .line 1042
    :cond_23
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    iget-object v2, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemConfig;->getPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    .line 1045
    :goto_2d
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_39

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    move v3, v2

    goto :goto_3a

    :cond_39
    move v3, v1

    .line 1047
    .local v3, "whitelisted":Z
    :goto_3a
    if-nez v3, :cond_4a

    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    if-eqz v4, :cond_49

    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    .line 1048
    invoke-direct {p0, p1, v4}, Lcom/android/server/pm/permission/PermissionManagerService;->hasPrivappWhitelistEntry(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Z

    move-result v4

    if-eqz v4, :cond_49

    goto :goto_4a

    :cond_49
    goto :goto_4b

    .line 1047
    :cond_4a
    :goto_4a
    move v1, v2

    :goto_4b
    return v1
.end method

.method private isNewPlatformPermissionForPackage(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Z
    .registers 10
    .param p1, "perm"    # Ljava/lang/String;
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 1010
    const/4 v0, 0x0

    .line 1011
    .local v0, "allowed":Z
    sget-object v1, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    array-length v1, v1

    .line 1012
    .local v1, "NP":I
    const/4 v2, 0x0

    .local v2, "ip":I
    :goto_5
    if-ge v2, v1, :cond_40

    .line 1013
    sget-object v3, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    aget-object v3, v3, v2

    .line 1015
    .local v3, "npi":Landroid/content/pm/PackageParser$NewPermissionInfo;
    iget-object v4, v3, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget v5, v3, Landroid/content/pm/PackageParser$NewPermissionInfo;->sdkVersion:I

    if-ge v4, v5, :cond_3d

    .line 1017
    const/4 v0, 0x1

    .line 1018
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Auto-granting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " to old pkg "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    goto :goto_40

    .line 1012
    .end local v3    # "npi":Landroid/content/pm/PackageParser$NewPermissionInfo;
    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1023
    .end local v2    # "ip":I
    :cond_40
    :goto_40
    return v0
.end method

.method private isPackageRequestingPermission(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z
    .registers 8
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "permission"    # Ljava/lang/String;

    .line 1291
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1292
    .local v0, "permCount":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "j":I
    :goto_8
    if-ge v2, v0, :cond_1d

    .line 1293
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1294
    .local v3, "requestedPermission":Ljava/lang/String;
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 1295
    const/4 v1, 0x1

    return v1

    .line 1292
    .end local v3    # "requestedPermission":Ljava/lang/String;
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1298
    .end local v2    # "j":I
    :cond_1d
    return v1
.end method

.method private isPermissionsReviewRequired(Landroid/content/pm/PackageParser$Package;I)Z
    .registers 6
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userId"    # I

    .line 1272
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-boolean v0, v0, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionReviewRequired:Z

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1273
    return v1

    .line 1277
    :cond_8
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_11

    .line 1278
    return v1

    .line 1282
    :cond_11
    if-eqz p1, :cond_25

    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-nez v0, :cond_18

    goto :goto_25

    .line 1285
    :cond_18
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 1286
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v1

    .line 1287
    .local v1, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-virtual {v1, p2}, Lcom/android/server/pm/permission/PermissionsState;->isPermissionReviewRequired(I)Z

    move-result v2

    return v2

    .line 1283
    .end local v0    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v1    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    :cond_25
    :goto_25
    return v1
.end method

.method private logPermission(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "action"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 2073
    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, p1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 2074
    .local v0, "log":Landroid/metrics/LogMaker;
    invoke-virtual {v0, p3}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    .line 2075
    const/16 v1, 0x4d9

    invoke-virtual {v0, v1, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 2077
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v1, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 2078
    return-void
.end method

.method private removeAllPermissions(Landroid/content/pm/PackageParser$Package;Z)V
    .registers 12
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "chatty"    # Z

    .line 561
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 562
    :try_start_3
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 563
    .local v1, "N":I
    const/4 v2, 0x0

    .line 564
    .local v2, "r":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_c
    if-ge v4, v1, :cond_5f

    .line 565
    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$Permission;

    .line 566
    .local v5, "p":Landroid/content/pm/PackageParser$Permission;
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v6, v6, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    iget-object v7, v5, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v7, v7, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/permission/BasePermission;

    .line 567
    .local v6, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-nez v6, :cond_35

    .line 568
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v7, v7, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionTrees:Landroid/util/ArrayMap;

    iget-object v8, v5, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v8, v8, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/permission/BasePermission;

    move-object v6, v7

    .line 570
    :cond_35
    if-eqz v6, :cond_41

    invoke-virtual {v6, v5}, Lcom/android/server/pm/permission/BasePermission;->isPermission(Landroid/content/pm/PackageParser$Permission;)Z

    move-result v7

    if-eqz v7, :cond_41

    .line 571
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/server/pm/permission/BasePermission;->setPermission(Landroid/content/pm/PackageParser$Permission;)V

    .line 581
    :cond_41
    invoke-virtual {v5}, Landroid/content/pm/PackageParser$Permission;->isAppOp()Z

    move-result v7

    if-eqz v7, :cond_5c

    .line 582
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v7, v7, Lcom/android/server/pm/permission/PermissionSettings;->mAppOpPermissionPackages:Landroid/util/ArrayMap;

    iget-object v8, v5, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v8, v8, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 583
    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArraySet;

    .line 584
    .local v7, "appOpPkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v7, :cond_5c

    .line 585
    iget-object v8, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 564
    .end local v5    # "p":Landroid/content/pm/PackageParser$Permission;
    .end local v6    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v7    # "appOpPkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_5c
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 589
    .end local v4    # "i":I
    :cond_5f
    nop

    .line 593
    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v4

    .line 594
    const/4 v2, 0x0

    .line 595
    nop

    .local v3, "i":I
    :goto_69
    if-ge v3, v1, :cond_9c

    .line 596
    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 597
    .local v4, "perm":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/permission/PermissionSettings;->isPermissionAppOp(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_99

    .line 598
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v5, v5, Lcom/android/server/pm/permission/PermissionSettings;->mAppOpPermissionPackages:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    .line 599
    .local v5, "appOpPkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v5, :cond_99

    .line 600
    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 601
    invoke-virtual {v5}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_99

    .line 602
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v6, v6, Lcom/android/server/pm/permission/PermissionSettings;->mAppOpPermissionPackages:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    .end local v4    # "perm":Ljava/lang/String;
    .end local v5    # "appOpPkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_99
    add-int/lit8 v3, v3, 0x1

    goto :goto_69

    .line 607
    .end local v3    # "i":I
    :cond_9c
    nop

    .line 610
    .end local v1    # "N":I
    .end local v2    # "r":Ljava/lang/StringBuilder;
    monitor-exit v0

    .line 611
    return-void

    .line 610
    :catchall_9f
    move-exception v1

    monitor-exit v0
    :try_end_a1
    .catchall {:try_start_3 .. :try_end_a1} :catchall_9f

    throw v1
.end method

.method private removeDynamicPermission(Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .registers 10
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "callback"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;

    .line 649
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_46

    .line 652
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionSettings;->enforcePermissionTree(Ljava/lang/String;I)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v0

    .line 653
    .local v0, "tree":Lcom/android/server/pm/permission/BasePermission;
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 654
    :try_start_11
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v2

    .line 655
    .local v2, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-nez v2, :cond_1b

    .line 656
    monitor-exit v1

    return-void

    .line 658
    :cond_1b
    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->isDynamic()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 660
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not allowed to modify non-dynamic permission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    :cond_37
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/permission/PermissionSettings;->removePermissionLocked(Ljava/lang/String;)V

    .line 664
    if-eqz p3, :cond_41

    .line 665
    invoke-virtual {p3}, Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;->onPermissionRemoved()V

    .line 667
    .end local v2    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_41
    monitor-exit v1

    .line 668
    return-void

    .line 667
    :catchall_43
    move-exception v2

    monitor-exit v1
    :try_end_45
    .catchall {:try_start_11 .. :try_end_45} :catchall_43

    throw v2

    .line 650
    .end local v0    # "tree":Lcom/android/server/pm/permission/BasePermission;
    :cond_46
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Instant applications don\'t have access to this method"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .registers 15
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "overridePolicy"    # Z
    .param p4, "callingUid"    # I
    .param p5, "userId"    # I
    .param p6, "callback"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;

    .line 1515
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;ZZIILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V

    .line 1517
    return-void
.end method

.method private revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;ZZIILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .registers 22
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "overridePolicy"    # Z
    .param p4, "kill"    # Z
    .param p5, "callingUid"    # I
    .param p6, "userId"    # I
    .param p7, "callback"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;

    move-object v7, p0

    move-object v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p6

    .line 1521
    move-object/from16 v11, p7

    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0, v10}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_27

    .line 1522
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No such user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    return-void

    .line 1526
    :cond_27
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    const-string/jumbo v2, "revokeRuntimePermission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1530
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string/jumbo v6, "revokeRuntimePermission"

    move-object v0, v7

    move v2, v10

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V

    .line 1538
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, v9}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 1539
    .local v0, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_144

    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-eqz v1, :cond_144

    .line 1542
    iget-object v1, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v0, v2, v10}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Landroid/content/pm/PackageParser$Package;II)Z

    move-result v1

    if-nez v1, :cond_12b

    .line 1545
    iget-object v1, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v1, v8}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v1

    .line 1546
    .local v1, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v1, :cond_112

    .line 1550
    invoke-virtual {v1, v0}, Lcom/android/server/pm/permission/BasePermission;->enforceDeclaredUsedAndRuntimeOrDevelopment(Landroid/content/pm/PackageParser$Package;)V

    .line 1556
    iget-object v2, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-boolean v2, v2, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionReviewRequired:Z

    if-eqz v2, :cond_78

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x17

    if-ge v2, v3, :cond_78

    .line 1558
    invoke-virtual {v1}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v2

    if-eqz v2, :cond_78

    .line 1559
    return-void

    .line 1562
    :cond_78
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 1563
    .local v2, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v3

    .line 1565
    .local v3, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-virtual {v3, v8, v10}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v4

    .line 1567
    .local v4, "flags":I
    and-int/lit8 v5, v4, 0x10

    if-eqz v5, :cond_b0

    .line 1568
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v5

    const/16 v6, 0x3e8

    if-ne v5, v6, :cond_91

    goto :goto_b0

    .line 1569
    :cond_91
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Non-System UID cannot revoke system fixed permission "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " for package "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1572
    :cond_b0
    :goto_b0
    if-nez p3, :cond_d6

    and-int/lit8 v6, v4, 0x4

    if-nez v6, :cond_b7

    goto :goto_d6

    .line 1573
    :cond_b7
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cannot revoke policy fixed permission "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " for package "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v6, v12}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1577
    :cond_d6
    :goto_d6
    invoke-virtual {v1}, Lcom/android/server/pm/permission/BasePermission;->isDevelopment()Z

    move-result v6

    const/4 v12, -0x1

    if-eqz v6, :cond_e9

    .line 1580
    invoke-virtual {v3, v1}, Lcom/android/server/pm/permission/PermissionsState;->revokeInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v6

    if-eq v6, v12, :cond_e8

    .line 1582
    if-eqz v11, :cond_e8

    .line 1583
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;->onInstallPermissionRevoked()V

    .line 1586
    :cond_e8
    return-void

    .line 1589
    :cond_e9
    invoke-virtual {v3, v1, v10}, Lcom/android/server/pm/permission/PermissionsState;->revokeRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v6

    if-ne v6, v12, :cond_f0

    .line 1591
    return-void

    .line 1594
    :cond_f0
    invoke-virtual {v1}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v6

    if-eqz v6, :cond_fb

    .line 1595
    const/16 v6, 0x4dd

    invoke-direct {v7, v6, v8, v9}, Lcom/android/server/pm/permission/PermissionManagerService;->logPermission(ILjava/lang/String;Ljava/lang/String;)V

    .line 1598
    :cond_fb
    if-eqz v11, :cond_10f

    .line 1599
    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v10, v6}, Landroid/os/UserHandle;->getUid(II)I

    move-result v6

    .line 1602
    .local v6, "uid":I
    iget-object v12, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v13, p4

    invoke-virtual {v11, v12, v10, v13}, Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;->onPermissionRevoked(IIZ)V

    .line 1602
    .end local v6    # "uid":I
    goto :goto_111

    .line 1604
    :cond_10f
    move/from16 v13, p4

    :goto_111
    return-void

    .line 1547
    .end local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v3    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v4    # "flags":I
    :cond_112
    move/from16 v13, p4

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown permission: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1543
    .end local v1    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_12b
    move/from16 v13, p4

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1540
    :cond_144
    move/from16 v13, p4

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private revokeRuntimePermissionsIfGroupChanged(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;Ljava/util/ArrayList;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .registers 31
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

    .local p3, "allPackageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    .line 418
    iget-object v0, v10, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 419
    .local v11, "numOldPackagePermissions":I
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, v11}, Landroid/util/ArrayMap;-><init>(I)V

    move-object v12, v0

    .line 422
    .local v12, "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_13
    if-ge v0, v11, :cond_31

    .line 423
    iget-object v1, v10, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Permission;

    .line 425
    .local v1, "permission":Landroid/content/pm/PackageParser$Permission;
    iget-object v2, v1, Landroid/content/pm/PackageParser$Permission;->group:Landroid/content/pm/PackageParser$PermissionGroup;

    if-eqz v2, :cond_2e

    .line 426
    iget-object v2, v1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    iget-object v3, v1, Landroid/content/pm/PackageParser$Permission;->group:Landroid/content/pm/PackageParser$PermissionGroup;

    iget-object v3, v3, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v12, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    .end local v1    # "permission":Landroid/content/pm/PackageParser$Permission;
    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 431
    .end local v0    # "i":I
    :cond_31
    iget-object v0, v9, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 432
    .local v14, "numNewPackagePermissions":I
    const/4 v0, 0x0

    .local v0, "newPermissionNum":I
    :goto_38
    move v15, v0

    .end local v0    # "newPermissionNum":I
    .local v15, "newPermissionNum":I
    if-ge v15, v14, :cond_16b

    .line 434
    iget-object v0, v9, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    .line 435
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/content/pm/PackageParser$Permission;

    .line 436
    .local v7, "newPermission":Landroid/content/pm/PackageParser$Permission;
    iget-object v0, v7, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v16

    .line 438
    .local v16, "newProtection":I
    and-int/lit8 v0, v16, 0x1

    if-eqz v0, :cond_15d

    .line 439
    iget-object v0, v7, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v6, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 441
    .local v6, "permissionName":Ljava/lang/String;
    iget-object v0, v7, Landroid/content/pm/PackageParser$Permission;->group:Landroid/content/pm/PackageParser$PermissionGroup;

    if-nez v0, :cond_58

    const/4 v0, 0x0

    goto :goto_5e

    :cond_58
    iget-object v0, v7, Landroid/content/pm/PackageParser$Permission;->group:Landroid/content/pm/PackageParser$PermissionGroup;

    iget-object v0, v0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget-object v0, v0, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    :goto_5e
    move-object v5, v0

    .line 442
    .local v5, "newPermissionGroupName":Ljava/lang/String;
    invoke-virtual {v12, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    .line 445
    .local v4, "oldPermissionGroupName":Ljava/lang/String;
    if-eqz v5, :cond_15d

    .line 446
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15d

    .line 447
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0}, Landroid/os/UserManagerInternal;->getUserIds()[I

    move-result-object v3

    .line 448
    .local v3, "userIds":[I
    array-length v2, v3

    .line 449
    .local v2, "numUserIds":I
    const/4 v0, 0x0

    .local v0, "userIdNum":I
    :goto_76
    move v1, v0

    .end local v0    # "userIdNum":I
    .local v1, "userIdNum":I
    if-ge v1, v2, :cond_15d

    .line 450
    aget v13, v3, v1

    .line 452
    .local v13, "userId":I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 453
    .local v10, "numPackages":I
    const/4 v0, 0x0

    .local v0, "packageNum":I
    :goto_80
    move/from16 v18, v0

    .end local v0    # "packageNum":I
    .local v18, "packageNum":I
    move/from16 v19, v11

    move/from16 v11, v18

    if-ge v11, v10, :cond_144

    .line 454
    .end local v18    # "packageNum":I
    .local v11, "packageNum":I
    .local v19, "numOldPackagePermissions":I
    move/from16 v20, v10

    move-object/from16 v10, p3

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v10    # "numPackages":I
    .local v20, "numPackages":I
    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    .line 456
    .local v10, "packageName":Ljava/lang/String;
    move-object/from16 v21, v12

    const/4 v12, 0x0

    invoke-direct {v8, v6, v10, v12, v13}, Lcom/android/server/pm/permission/PermissionManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    .end local v12    # "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local v21, "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_120

    .line 458
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const-string v17, "72710897"

    aput-object v17, v0, v12

    iget-object v12, v9, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 459
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v17, 0x1

    aput-object v12, v0, v17

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v24, v1

    const-string v1, "Revoking permission "

    .end local v1    # "userIdNum":I
    .local v24, "userIdNum":I
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from package "

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " as the group changed from "

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v12, 0x2

    aput-object v1, v0, v12

    .line 458
    const v1, 0x534e4554

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 466
    const/4 v0, 0x0

    const/16 v12, 0x3e8

    move/from16 v17, v24

    move-object v1, v8

    .end local v24    # "userIdNum":I
    .local v17, "userIdNum":I
    move/from16 v18, v2

    move-object v2, v6

    .end local v2    # "numUserIds":I
    .local v18, "numUserIds":I
    move-object/from16 v22, v3

    move-object v3, v10

    .end local v3    # "userIds":[I
    .local v22, "userIds":[I
    move-object/from16 v23, v4

    move v4, v0

    .end local v4    # "oldPermissionGroupName":Ljava/lang/String;
    .local v23, "oldPermissionGroupName":Ljava/lang/String;
    move-object/from16 v24, v5

    move v5, v12

    .end local v5    # "newPermissionGroupName":Ljava/lang/String;
    .local v24, "newPermissionGroupName":Ljava/lang/String;
    move-object v12, v6

    move v6, v13

    .end local v6    # "permissionName":Ljava/lang/String;
    .local v12, "permissionName":Ljava/lang/String;
    move-object/from16 v25, v7

    move-object/from16 v7, p4

    .end local v7    # "newPermission":Landroid/content/pm/PackageParser$Permission;
    .local v25, "newPermission":Landroid/content/pm/PackageParser$Permission;
    :try_start_fb
    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    :try_end_fe
    .catch Ljava/lang/IllegalArgumentException; {:try_start_fb .. :try_end_fe} :catch_ff

    .line 471
    goto :goto_12d

    .line 468
    :catch_ff
    move-exception v0

    move-object v1, v0

    .line 469
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not revoke "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v10    # "packageName":Ljava/lang/String;
    goto :goto_12d

    .line 453
    .end local v12    # "permissionName":Ljava/lang/String;
    .end local v17    # "userIdNum":I
    .end local v18    # "numUserIds":I
    .end local v22    # "userIds":[I
    .end local v23    # "oldPermissionGroupName":Ljava/lang/String;
    .end local v24    # "newPermissionGroupName":Ljava/lang/String;
    .end local v25    # "newPermission":Landroid/content/pm/PackageParser$Permission;
    .restart local v1    # "userIdNum":I
    .restart local v2    # "numUserIds":I
    .restart local v3    # "userIds":[I
    .restart local v4    # "oldPermissionGroupName":Ljava/lang/String;
    .restart local v5    # "newPermissionGroupName":Ljava/lang/String;
    .restart local v6    # "permissionName":Ljava/lang/String;
    .restart local v7    # "newPermission":Landroid/content/pm/PackageParser$Permission;
    :cond_120
    move/from16 v17, v1

    move/from16 v18, v2

    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    move-object v12, v6

    move-object/from16 v25, v7

    .end local v1    # "userIdNum":I
    .end local v2    # "numUserIds":I
    .end local v3    # "userIds":[I
    .end local v4    # "oldPermissionGroupName":Ljava/lang/String;
    .end local v5    # "newPermissionGroupName":Ljava/lang/String;
    .end local v6    # "permissionName":Ljava/lang/String;
    .end local v7    # "newPermission":Landroid/content/pm/PackageParser$Permission;
    .restart local v12    # "permissionName":Ljava/lang/String;
    .restart local v17    # "userIdNum":I
    .restart local v18    # "numUserIds":I
    .restart local v22    # "userIds":[I
    .restart local v23    # "oldPermissionGroupName":Ljava/lang/String;
    .restart local v24    # "newPermissionGroupName":Ljava/lang/String;
    .restart local v25    # "newPermission":Landroid/content/pm/PackageParser$Permission;
    :goto_12d
    add-int/lit8 v0, v11, 0x1

    .end local v11    # "packageNum":I
    .local v0, "packageNum":I
    move-object v6, v12

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v11, v19

    move/from16 v10, v20

    move-object/from16 v12, v21

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    move-object/from16 v5, v24

    move-object/from16 v7, v25

    goto/16 :goto_80

    .line 449
    .end local v0    # "packageNum":I
    .end local v13    # "userId":I
    .end local v17    # "userIdNum":I
    .end local v18    # "numUserIds":I
    .end local v20    # "numPackages":I
    .end local v21    # "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v22    # "userIds":[I
    .end local v23    # "oldPermissionGroupName":Ljava/lang/String;
    .end local v24    # "newPermissionGroupName":Ljava/lang/String;
    .end local v25    # "newPermission":Landroid/content/pm/PackageParser$Permission;
    .restart local v1    # "userIdNum":I
    .restart local v2    # "numUserIds":I
    .restart local v3    # "userIds":[I
    .restart local v4    # "oldPermissionGroupName":Ljava/lang/String;
    .restart local v5    # "newPermissionGroupName":Ljava/lang/String;
    .restart local v6    # "permissionName":Ljava/lang/String;
    .restart local v7    # "newPermission":Landroid/content/pm/PackageParser$Permission;
    .local v12, "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_144
    move/from16 v17, v1

    move/from16 v18, v2

    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    move-object/from16 v25, v7

    move-object/from16 v21, v12

    move-object v12, v6

    .end local v1    # "userIdNum":I
    .end local v2    # "numUserIds":I
    .end local v3    # "userIds":[I
    .end local v4    # "oldPermissionGroupName":Ljava/lang/String;
    .end local v5    # "newPermissionGroupName":Ljava/lang/String;
    .end local v6    # "permissionName":Ljava/lang/String;
    .end local v7    # "newPermission":Landroid/content/pm/PackageParser$Permission;
    .local v12, "permissionName":Ljava/lang/String;
    .restart local v17    # "userIdNum":I
    .restart local v18    # "numUserIds":I
    .restart local v21    # "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v22    # "userIds":[I
    .restart local v23    # "oldPermissionGroupName":Ljava/lang/String;
    .restart local v24    # "newPermissionGroupName":Ljava/lang/String;
    .restart local v25    # "newPermission":Landroid/content/pm/PackageParser$Permission;
    add-int/lit8 v0, v17, 0x1

    .end local v17    # "userIdNum":I
    .local v0, "userIdNum":I
    move/from16 v11, v19

    move-object/from16 v12, v21

    move-object/from16 v10, p2

    goto/16 :goto_76

    .line 433
    .end local v0    # "userIdNum":I
    .end local v16    # "newProtection":I
    .end local v18    # "numUserIds":I
    .end local v19    # "numOldPackagePermissions":I
    .end local v21    # "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v22    # "userIds":[I
    .end local v23    # "oldPermissionGroupName":Ljava/lang/String;
    .end local v24    # "newPermissionGroupName":Ljava/lang/String;
    .end local v25    # "newPermission":Landroid/content/pm/PackageParser$Permission;
    .local v11, "numOldPackagePermissions":I
    .local v12, "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_15d
    move/from16 v19, v11

    move-object/from16 v21, v12

    .end local v11    # "numOldPackagePermissions":I
    .end local v12    # "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v19    # "numOldPackagePermissions":I
    .restart local v21    # "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    add-int/lit8 v0, v15, 0x1

    .line 432
    .end local v15    # "newPermissionNum":I
    .local v0, "newPermissionNum":I
    move/from16 v11, v19

    move-object/from16 v12, v21

    move-object/from16 v10, p2

    goto/16 :goto_38

    .line 478
    .end local v0    # "newPermissionNum":I
    .end local v19    # "numOldPackagePermissions":I
    .end local v21    # "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v11    # "numOldPackagePermissions":I
    .restart local v12    # "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_16b
    move/from16 v19, v11

    move-object/from16 v21, v12

    .end local v11    # "numOldPackagePermissions":I
    .end local v12    # "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v19    # "numOldPackagePermissions":I
    .restart local v21    # "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method private revokeUnusedSharedUserPermissionsLocked(Lcom/android/server/pm/SharedUserSetting;[I)[I
    .registers 21
    .param p1, "suSetting"    # Lcom/android/server/pm/SharedUserSetting;
    .param p2, "allUserIds"    # [I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    move-object/from16 v0, p0

    .line 1610
    move-object/from16 v1, p2

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 1611
    .local v2, "usedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/SharedUserSetting;->getPackages()Ljava/util/List;

    move-result-object v3

    .line 1612
    .local v3, "pkgList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    if-eqz v3, :cond_de

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_17

    goto/16 :goto_de

    .line 1615
    :cond_17
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_4d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$Package;

    .line 1616
    .local v5, "pkg":Landroid/content/pm/PackageParser$Package;
    iget-object v7, v5, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    if-nez v7, :cond_2d

    .line 1617
    goto :goto_1b

    .line 1619
    :cond_2d
    iget-object v7, v5, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1620
    .local v7, "requestedPermCount":I
    nop

    .local v6, "j":I
    :goto_34
    if-ge v6, v7, :cond_4c

    .line 1621
    iget-object v8, v5, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1622
    .local v8, "permission":Ljava/lang/String;
    iget-object v9, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v9, v8}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v9

    .line 1623
    .local v9, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v9, :cond_49

    .line 1624
    invoke-virtual {v2, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1620
    .end local v8    # "permission":Ljava/lang/String;
    .end local v9    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_49
    add-int/lit8 v6, v6, 0x1

    goto :goto_34

    .line 1627
    .end local v5    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v6    # "j":I
    .end local v7    # "requestedPermCount":I
    :cond_4c
    goto :goto_1b

    .line 1629
    :cond_4d
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v4

    .line 1631
    .local v4, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-virtual {v4}, Lcom/android/server/pm/permission/PermissionsState;->getInstallPermissionStates()Ljava/util/List;

    move-result-object v5

    .line 1632
    .local v5, "installPermStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    .line 1633
    .local v7, "installPermCount":I
    add-int/lit8 v8, v7, -0x1

    .local v8, "i":I
    :goto_5b
    const/16 v9, 0xff

    if-ltz v8, :cond_85

    .line 1634
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 1635
    .local v10, "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    invoke-virtual {v10}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_82

    .line 1636
    iget-object v11, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v10}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v11

    .line 1637
    .local v11, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v11, :cond_82

    .line 1638
    invoke-virtual {v4, v11}, Lcom/android/server/pm/permission/PermissionsState;->revokeInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    .line 1639
    const/4 v12, -0x1

    invoke-virtual {v4, v11, v12, v9, v6}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 1633
    .end local v10    # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .end local v11    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_82
    add-int/lit8 v8, v8, -0x1

    goto :goto_5b

    .line 1645
    .end local v8    # "i":I
    :cond_85
    sget-object v8, Llibcore/util/EmptyArray;->INT:[I

    .line 1648
    .local v8, "runtimePermissionChangedUserIds":[I
    array-length v10, v1

    move-object v11, v8

    move v8, v6

    .end local v8    # "runtimePermissionChangedUserIds":[I
    .local v11, "runtimePermissionChangedUserIds":[I
    :goto_8a
    if-ge v8, v10, :cond_dd

    aget v12, v1, v8

    .line 1649
    .local v12, "userId":I
    nop

    .line 1650
    invoke-virtual {v4, v12}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionStates(I)Ljava/util/List;

    move-result-object v13

    .line 1651
    .local v13, "runtimePermStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    .line 1652
    .local v14, "runtimePermCount":I
    add-int/lit8 v15, v14, -0x1

    .local v15, "i":I
    :goto_99
    if-ltz v15, :cond_d3

    .line 1653
    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v6, v16

    check-cast v6, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 1654
    .local v6, "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    invoke-virtual {v6}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c7

    .line 1655
    iget-object v9, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v6}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v0

    .line 1656
    .local v0, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v0, :cond_c7

    .line 1657
    invoke-virtual {v4, v0, v12}, Lcom/android/server/pm/permission/PermissionsState;->revokeRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    .line 1658
    const/16 v1, 0xff

    const/4 v9, 0x0

    invoke-virtual {v4, v0, v12, v1, v9}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 1660
    invoke-static {v11, v12}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v11

    .end local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v6    # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    goto :goto_ca

    .line 1652
    :cond_c7
    const/16 v1, 0xff

    const/4 v9, 0x0

    :goto_ca
    add-int/lit8 v15, v15, -0x1

    move v6, v9

    move-object/from16 v0, p0

    move v9, v1

    move-object/from16 v1, p2

    goto :goto_99

    .line 1648
    .end local v12    # "userId":I
    .end local v13    # "runtimePermStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    .end local v14    # "runtimePermCount":I
    .end local v15    # "i":I
    :cond_d3
    move v1, v9

    move v9, v6

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    move v9, v1

    move-object/from16 v1, p2

    goto :goto_8a

    .line 1667
    :cond_dd
    return-object v11

    .line 1613
    .end local v4    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v5    # "installPermStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    .end local v7    # "installPermCount":I
    .end local v11    # "runtimePermissionChangedUserIds":[I
    :cond_de
    :goto_de
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    return-object v0
.end method

.method private systemReady()V
    .registers 4

    .line 2034
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSystemReady:Z

    .line 2035
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    if-nez v0, :cond_8

    .line 2039
    return-void

    .line 2036
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Signature|privileged permissions not in privapp-permissions whitelist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateAllPermissions(Ljava/lang/String;ZLjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .registers 14
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

    .line 1735
    .local p3, "allPackages":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    nop

    .line 1736
    if-eqz p2, :cond_5

    .line 1737
    const/4 v0, 0x6

    goto :goto_6

    .line 1738
    :cond_5
    const/4 v0, 0x0

    :goto_6
    const/4 v1, 0x1

    or-int/2addr v0, v1

    .line 1739
    .local v0, "flags":I
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move-object v5, p1

    move v6, v0

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissions(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;Ljava/lang/String;ILjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V

    .line 1740
    return-void
.end method

.method private updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIIILcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .registers 25
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flagMask"    # I
    .param p4, "flagValues"    # I
    .param p5, "callingUid"    # I
    .param p6, "userId"    # I
    .param p7, "callback"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p5

    move/from16 v12, p6

    .line 1878
    move-object/from16 v13, p7

    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0, v12}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_15

    .line 1879
    return-void

    .line 1882
    :cond_15
    const-string/jumbo v0, "updatePermissionFlags"

    invoke-direct {v8, v0}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceGrantRevokeRuntimePermissionPermissions(Ljava/lang/String;)V

    .line 1884
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string/jumbo v7, "updatePermissionFlags"

    move-object v1, v8

    move v2, v11

    move v3, v12

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V

    .line 1891
    const/16 v0, 0x3e8

    if-eq v11, v0, :cond_38

    .line 1892
    and-int/lit8 v0, p3, -0x11

    .line 1893
    .end local p3    # "flagMask":I
    .local v0, "flagMask":I
    and-int/lit8 v1, p4, -0x11

    .line 1894
    .end local p4    # "flagValues":I
    .local v1, "flagValues":I
    and-int/lit8 v0, v0, -0x21

    .line 1895
    and-int/lit8 v1, v1, -0x21

    .line 1896
    and-int/lit8 v1, v1, -0x41

    .line 1899
    move v2, v1

    move v1, v0

    goto :goto_3c

    .line 1899
    .end local v0    # "flagMask":I
    .end local v1    # "flagValues":I
    .restart local p3    # "flagMask":I
    .restart local p4    # "flagValues":I
    :cond_38
    move/from16 v1, p3

    move/from16 v2, p4

    .line 1899
    .end local p3    # "flagMask":I
    .end local p4    # "flagValues":I
    .local v1, "flagMask":I
    .local v2, "flagValues":I
    :goto_3c
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 1900
    .local v3, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_c4

    iget-object v0, v3, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-eqz v0, :cond_c4

    .line 1903
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, v3, v11, v12}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Landroid/content/pm/PackageParser$Package;II)Z

    move-result v0

    if-nez v0, :cond_ad

    .line 1908
    iget-object v4, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1909
    :try_start_53
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v0, v9}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v0

    .line 1910
    .local v0, "bp":Lcom/android/server/pm/permission/BasePermission;
    monitor-exit v4
    :try_end_5a
    .catchall {:try_start_53 .. :try_end_5a} :catchall_aa

    .line 1911
    if-eqz v0, :cond_93

    .line 1915
    iget-object v4, v3, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 1916
    .local v4, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v5

    .line 1917
    .local v5, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    nop

    .line 1918
    invoke-virtual {v5, v9, v12}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v14, 0x0

    if-eqz v6, :cond_6f

    move v6, v7

    goto :goto_70

    :cond_6f
    move v6, v14

    .line 1919
    .local v6, "hadState":Z
    :goto_70
    nop

    .line 1920
    invoke-virtual {v5, v0, v12, v1, v2}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    move-result v15

    .line 1921
    .local v15, "permissionUpdated":Z
    if-eqz v15, :cond_92

    if-eqz v13, :cond_92

    .line 1924
    invoke-virtual {v5, v9}, Lcom/android/server/pm/permission/PermissionsState;->getInstallPermissionState(Ljava/lang/String;)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v16

    if-eqz v16, :cond_83

    .line 1925
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;->onInstallPermissionUpdated()V

    goto :goto_92

    .line 1926
    :cond_83
    invoke-virtual {v5, v9, v12}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v16

    if-nez v16, :cond_8b

    if-eqz v6, :cond_92

    .line 1928
    :cond_8b
    new-array v7, v7, [I

    aput v12, v7, v14

    invoke-virtual {v13, v7, v14}, Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;->onPermissionUpdated([IZ)V

    .line 1931
    :cond_92
    :goto_92
    return-void

    .line 1912
    .end local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v5    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v6    # "hadState":Z
    .end local v15    # "permissionUpdated":Z
    :cond_93
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown permission: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1910
    .end local v0    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :catchall_aa
    move-exception v0

    :try_start_ab
    monitor-exit v4
    :try_end_ac
    .catchall {:try_start_ab .. :try_end_ac} :catchall_aa

    throw v0

    .line 1904
    :cond_ad
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1901
    :cond_c4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updatePermissionFlagsForAllApps(IIIILjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)Z
    .registers 15
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

    .line 1935
    .local p5, "packages":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0, p4}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1936
    const/4 v0, 0x0

    return v0

    .line 1939
    :cond_a
    const-string/jumbo v0, "updatePermissionFlagsForAllApps"

    invoke-direct {p0, v0}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceGrantRevokeRuntimePermissionPermissions(Ljava/lang/String;)V

    .line 1941
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string/jumbo v7, "updatePermissionFlagsForAllApps"

    move-object v1, p0

    move v2, p3

    move v3, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V

    .line 1948
    const/16 v0, 0x3e8

    if-eq p3, v0, :cond_24

    .line 1949
    and-int/lit8 p1, p1, -0x11

    .line 1950
    and-int/lit8 p2, p2, -0x11

    .line 1953
    :cond_24
    const/4 v0, 0x0

    .line 1954
    .local v0, "changed":Z
    invoke-interface {p5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    .line 1955
    .local v2, "pkg":Landroid/content/pm/PackageParser$Package;
    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 1956
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v3, :cond_3c

    .line 1957
    goto :goto_29

    .line 1959
    :cond_3c
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v4

    .line 1960
    .local v4, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-virtual {v4, p4, p1, p2}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlagsForAllPermissions(III)Z

    move-result v5

    or-int/2addr v0, v5

    .line 1962
    .end local v2    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v4    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    goto :goto_29

    .line 1963
    :cond_46
    return v0
.end method

.method private updatePermissionTrees(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;I)I
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "flags"    # I

    .line 1834
    const/4 v0, 0x0

    .line 1835
    .local v0, "needsUpdate":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/pm/permission/BasePermission;>;"
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1836
    :try_start_4
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v2, v2, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionTrees:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1837
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/permission/BasePermission;>;"
    :cond_10
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7a

    .line 1838
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/BasePermission;

    .line 1839
    .local v3, "bp":Lcom/android/server/pm/permission/BasePermission;
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageSetting()Lcom/android/server/pm/PackageSettingBase;

    move-result-object v4

    if-eqz v4, :cond_66

    .line 1840
    if-eqz p1, :cond_10

    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    if-eqz p2, :cond_3a

    .line 1841
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Lcom/android/server/pm/permission/PermissionManagerService;->hasPermission(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 1842
    :cond_3a
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing old permission tree: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " from package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1843
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1842
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    or-int/lit8 p3, p3, 0x1

    .line 1845
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_10

    .line 1849
    :cond_66
    if-nez v0, :cond_76

    .line 1850
    new-instance v4, Landroid/util/ArraySet;

    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v5, v5, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionTrees:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/util/ArraySet;-><init>(I)V

    move-object v0, v4

    .line 1852
    :cond_76
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1853
    .end local v3    # "bp":Lcom/android/server/pm/permission/BasePermission;
    goto :goto_10

    .line 1854
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/permission/BasePermission;>;"
    :cond_7a
    monitor-exit v1
    :try_end_7b
    .catchall {:try_start_4 .. :try_end_7b} :catchall_e5

    .line 1855
    if-eqz v0, :cond_e4

    .line 1856
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_81
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/BasePermission;

    .line 1857
    .local v2, "bp":Lcom/android/server/pm/permission/BasePermission;
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 1858
    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 1859
    .local v3, "sourcePkg":Landroid/content/pm/PackageParser$Package;
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1860
    if-eqz v3, :cond_b1

    :try_start_9c
    iget-object v5, v3, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-eqz v5, :cond_b1

    .line 1861
    iget-object v5, v3, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 1862
    .local v5, "sourcePs":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageSetting()Lcom/android/server/pm/PackageSettingBase;

    move-result-object v6

    if-nez v6, :cond_ad

    .line 1863
    invoke-virtual {v2, v5}, Lcom/android/server/pm/permission/BasePermission;->setSourcePackageSetting(Lcom/android/server/pm/PackageSettingBase;)V

    .line 1865
    :cond_ad
    monitor-exit v4

    goto :goto_81

    .line 1870
    .end local v5    # "sourcePs":Lcom/android/server/pm/PackageSetting;
    :catchall_af
    move-exception v1

    goto :goto_e2

    .line 1867
    :cond_b1
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing dangling permission tree: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " from package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1868
    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1867
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/pm/permission/PermissionSettings;->removePermissionLocked(Ljava/lang/String;)V

    .line 1870
    monitor-exit v4

    .line 1871
    .end local v2    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v3    # "sourcePkg":Landroid/content/pm/PackageParser$Package;
    goto :goto_81

    .line 1870
    .restart local v2    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v3    # "sourcePkg":Landroid/content/pm/PackageParser$Package;
    :goto_e2
    monitor-exit v4
    :try_end_e3
    .catchall {:try_start_9c .. :try_end_e3} :catchall_af

    throw v1

    .line 1873
    .end local v2    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v3    # "sourcePkg":Landroid/content/pm/PackageParser$Package;
    :cond_e4
    return p3

    .line 1854
    :catchall_e5
    move-exception v2

    :try_start_e6
    monitor-exit v1
    :try_end_e7
    .catchall {:try_start_e6 .. :try_end_e7} :catchall_e5

    throw v2
.end method

.method private updatePermissions(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;I)I
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "flags"    # I

    .line 1787
    const/4 v0, 0x0

    .line 1788
    .local v0, "needsUpdate":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/pm/permission/BasePermission;>;"
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1789
    :try_start_4
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v2, v2, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1790
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/permission/BasePermission;>;"
    :cond_10
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8b

    .line 1791
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/BasePermission;

    .line 1792
    .local v3, "bp":Lcom/android/server/pm/permission/BasePermission;
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->isDynamic()Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 1793
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v4, v4, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionTrees:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/pm/permission/BasePermission;->updateDynamicPermission(Ljava/util/Collection;)V

    .line 1795
    :cond_2d
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageSetting()Lcom/android/server/pm/PackageSettingBase;

    move-result-object v4

    if-eqz v4, :cond_77

    .line 1796
    if-eqz p1, :cond_10

    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    if-eqz p2, :cond_4b

    .line 1797
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Lcom/android/server/pm/permission/PermissionManagerService;->hasPermission(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 1798
    :cond_4b
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing old permission tree: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " from package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1799
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1798
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1800
    or-int/lit8 p3, p3, 0x1

    .line 1801
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_10

    .line 1805
    :cond_77
    if-nez v0, :cond_87

    .line 1806
    new-instance v4, Landroid/util/ArraySet;

    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v5, v5, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/util/ArraySet;-><init>(I)V

    move-object v0, v4

    .line 1808
    :cond_87
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1809
    .end local v3    # "bp":Lcom/android/server/pm/permission/BasePermission;
    goto :goto_10

    .line 1810
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/permission/BasePermission;>;"
    :cond_8b
    monitor-exit v1
    :try_end_8c
    .catchall {:try_start_4 .. :try_end_8c} :catchall_f6

    .line 1811
    if-eqz v0, :cond_f5

    .line 1812
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_92
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/BasePermission;

    .line 1813
    .local v2, "bp":Lcom/android/server/pm/permission/BasePermission;
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 1814
    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 1815
    .local v3, "sourcePkg":Landroid/content/pm/PackageParser$Package;
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1816
    if-eqz v3, :cond_c2

    :try_start_ad
    iget-object v5, v3, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-eqz v5, :cond_c2

    .line 1817
    iget-object v5, v3, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 1818
    .local v5, "sourcePs":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageSetting()Lcom/android/server/pm/PackageSettingBase;

    move-result-object v6

    if-nez v6, :cond_be

    .line 1819
    invoke-virtual {v2, v5}, Lcom/android/server/pm/permission/BasePermission;->setSourcePackageSetting(Lcom/android/server/pm/PackageSettingBase;)V

    .line 1821
    :cond_be
    monitor-exit v4

    goto :goto_92

    .line 1826
    .end local v5    # "sourcePs":Lcom/android/server/pm/PackageSetting;
    :catchall_c0
    move-exception v1

    goto :goto_f3

    .line 1823
    :cond_c2
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing dangling permission: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " from package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1824
    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1823
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/pm/permission/PermissionSettings;->removePermissionLocked(Ljava/lang/String;)V

    .line 1826
    monitor-exit v4

    .line 1827
    .end local v2    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v3    # "sourcePkg":Landroid/content/pm/PackageParser$Package;
    goto :goto_92

    .line 1826
    .restart local v2    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v3    # "sourcePkg":Landroid/content/pm/PackageParser$Package;
    :goto_f3
    monitor-exit v4
    :try_end_f4
    .catchall {:try_start_ad .. :try_end_f4} :catchall_c0

    throw v1

    .line 1829
    .end local v2    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v3    # "sourcePkg":Landroid/content/pm/PackageParser$Package;
    :cond_f5
    return p3

    .line 1810
    :catchall_f6
    move-exception v2

    :try_start_f7
    monitor-exit v1
    :try_end_f8
    .catchall {:try_start_f7 .. :try_end_f8} :catchall_f6

    throw v2
.end method

.method private updatePermissions(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;Ljava/lang/String;ILjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .registers 15
    .param p1, "changingPkgName"    # Ljava/lang/String;
    .param p2, "changingPkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "replaceVolumeUuid"    # Ljava/lang/String;
    .param p4, "flags"    # I
    .param p6, "callback"    # Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Package;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Collection<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;",
            "Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;",
            ")V"
        }
    .end annotation

    .line 1755
    .local p5, "allPackages":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissionTrees(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;I)I

    move-result p4

    .line 1759
    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissions(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;I)I

    move-result p4

    .line 1761
    const-string v0, "grantPermissions"

    const-wide/32 v1, 0x40000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1764
    and-int/lit8 v0, p4, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_3d

    .line 1765
    invoke-interface {p5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$Package;

    .line 1766
    .local v5, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eq v5, p2, :cond_3c

    .line 1768
    invoke-static {v5}, Lcom/android/server/pm/permission/PermissionManagerService;->getVolumeUuidForPackage(Landroid/content/pm/PackageParser$Package;)Ljava/lang/String;

    move-result-object v6

    .line 1769
    .local v6, "volumeUuid":Ljava/lang/String;
    and-int/lit8 v7, p4, 0x4

    if-eqz v7, :cond_38

    .line 1770
    invoke-static {p3, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_38

    move v7, v4

    goto :goto_39

    :cond_38
    move v7, v3

    .line 1771
    .local v7, "replace":Z
    :goto_39
    invoke-direct {p0, v5, v7, p1, p6}, Lcom/android/server/pm/permission/PermissionManagerService;->grantPermissions(Landroid/content/pm/PackageParser$Package;ZLjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V

    .line 1773
    .end local v5    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v6    # "volumeUuid":Ljava/lang/String;
    .end local v7    # "replace":Z
    :cond_3c
    goto :goto_1a

    .line 1776
    :cond_3d
    if-eqz p2, :cond_52

    .line 1778
    invoke-static {p2}, Lcom/android/server/pm/permission/PermissionManagerService;->getVolumeUuidForPackage(Landroid/content/pm/PackageParser$Package;)Ljava/lang/String;

    move-result-object v0

    .line 1779
    .local v0, "volumeUuid":Ljava/lang/String;
    and-int/lit8 v5, p4, 0x2

    if-eqz v5, :cond_4f

    .line 1780
    invoke-static {p3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4f

    move v3, v4

    nop

    .line 1781
    .local v3, "replace":Z
    :cond_4f
    invoke-direct {p0, p2, v3, p1, p6}, Lcom/android/server/pm/permission/PermissionManagerService;->grantPermissions(Landroid/content/pm/PackageParser$Package;ZLjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V

    .line 1783
    .end local v0    # "volumeUuid":Ljava/lang/String;
    .end local v3    # "replace":Z
    :cond_52
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1784
    return-void
.end method

.method private updatePermissions(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ZLjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V
    .registers 16
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

    .line 1721
    .local p4, "allPackages":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    const/4 v0, 0x0

    if-eqz p2, :cond_5

    const/4 v1, 0x1

    goto :goto_6

    .line 1722
    :cond_5
    move v1, v0

    :goto_6
    if-eqz p3, :cond_a

    const/4 v0, 0x2

    nop

    :cond_a
    or-int/2addr v0, v1

    .line 1723
    .local v0, "flags":I
    nop

    .line 1724
    invoke-static {p2}, Lcom/android/server/pm/permission/PermissionManagerService;->getVolumeUuidForPackage(Landroid/content/pm/PackageParser$Package;)Ljava/lang/String;

    move-result-object v5

    .line 1723
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v6, v0

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissions(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;Ljava/lang/String;ILjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V

    .line 1725
    if-eqz p2, :cond_41

    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    if-eqz v1, :cond_41

    .line 1726
    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/content/pm/PackageParser$Package;

    .line 1727
    .local v9, "childPkg":Landroid/content/pm/PackageParser$Package;
    iget-object v3, v9, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 1728
    invoke-static {v9}, Lcom/android/server/pm/permission/PermissionManagerService;->getVolumeUuidForPackage(Landroid/content/pm/PackageParser$Package;)Ljava/lang/String;

    move-result-object v5

    .line 1727
    move-object v2, p0

    move-object v4, v9

    move v6, v0

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissions(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;Ljava/lang/String;ILjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerInternal$PermissionCallback;)V

    .line 1729
    .end local v9    # "childPkg":Landroid/content/pm/PackageParser$Package;
    goto :goto_25

    .line 1731
    :cond_41
    return-void
.end method


# virtual methods
.method getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;
    .registers 4
    .param p1, "permName"    # Ljava/lang/String;

    .line 206
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 207
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 208
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method
