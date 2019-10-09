.class public Lcom/android/server/connectivity/PermissionMonitor;
.super Ljava/lang/Object;
.source "PermissionMonitor.java"


# static fields
.field private static final DBG:Z = true

.field private static final INVALID_UID:I = -0x1

.field private static final NETWORK:Ljava/lang/Boolean;

.field private static final SYSTEM:Ljava/lang/Boolean;

.field private static final TAG:Ljava/lang/String; = "PermissionMonitor"


# instance fields
.field private final mApps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mNetd:Landroid/os/INetworkManagementService;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mUsers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 78
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lcom/android/server/connectivity/PermissionMonitor;->SYSTEM:Ljava/lang/Boolean;

    .line 79
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/android/server/connectivity/PermissionMonitor;->NETWORK:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "netd"    # Landroid/os/INetworkManagementService;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUsers:Ljava/util/Set;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    .line 95
    iput-object p1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mContext:Landroid/content/Context;

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 97
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUserManager:Landroid/os/UserManager;

    .line 98
    iput-object p2, p0, Lcom/android/server/connectivity/PermissionMonitor;->mNetd:Landroid/os/INetworkManagementService;

    .line 99
    new-instance v0, Lcom/android/server/connectivity/PermissionMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/PermissionMonitor$1;-><init>(Lcom/android/server/connectivity/PermissionMonitor;)V

    iput-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 119
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/connectivity/PermissionMonitor;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/PermissionMonitor;
    .param p1, "x1"    # I

    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/PermissionMonitor;->onUserAdded(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/connectivity/PermissionMonitor;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/PermissionMonitor;
    .param p1, "x1"    # I

    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/PermissionMonitor;->onUserRemoved(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/connectivity/PermissionMonitor;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/connectivity/PermissionMonitor;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/PermissionMonitor;->onAppAdded(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/connectivity/PermissionMonitor;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/PermissionMonitor;
    .param p1, "x1"    # I

    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/PermissionMonitor;->onAppRemoved(I)V

    return-void
.end method

.method private static getNetdPermissionMask([Ljava/lang/String;[I)I
    .registers 6
    .param p0, "requestedPermissions"    # [Ljava/lang/String;
    .param p1, "requestedPermissionsFlags"    # [I

    .line 375
    const/4 v0, 0x0

    .line 376
    .local v0, "permissions":I
    if-eqz p0, :cond_21

    if-nez p1, :cond_6

    goto :goto_21

    .line 377
    :cond_6
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, p0

    if-ge v1, v2, :cond_20

    .line 378
    aget-object v2, p0, v1

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    aget v2, p1, v1

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1d

    .line 380
    or-int/lit8 v0, v0, 0x2

    .line 381
    goto :goto_20

    .line 377
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 384
    .end local v1    # "i":I
    :cond_20
    :goto_20
    return v0

    .line 376
    :cond_21
    :goto_21
    return v0
.end method

.method private getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 389
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    const v1, 0x401000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_9} :catch_a

    .line 391
    .local v0, "app":Landroid/content/pm/PackageInfo;
    return-object v0

    .line 392
    .end local v0    # "app":Landroid/content/pm/PackageInfo;
    :catch_a
    move-exception v0

    .line 394
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NameNotFoundException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/connectivity/PermissionMonitor;->loge(Ljava/lang/String;)V

    .line 395
    const/4 v1, 0x0

    return-object v1
.end method

.method private hasNetworkPermission(Landroid/content/pm/PackageInfo;)Z
    .registers 3
    .param p1, "app"    # Landroid/content/pm/PackageInfo;

    .line 208
    const-string v0, "android.permission.CHANGE_NETWORK_STATE"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/connectivity/PermissionMonitor;->hasPermission(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private hasRestrictedNetworkPermission(Landroid/content/pm/PackageInfo;)Z
    .registers 4
    .param p1, "app"    # Landroid/content/pm/PackageInfo;

    .line 212
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/PermissionMonitor;->isPreinstalledSystemApp(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 213
    :cond_8
    const-string v0, "android.permission.CONNECTIVITY_INTERNAL"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/connectivity/PermissionMonitor;->hasPermission(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "android.permission.CONNECTIVITY_USE_RESTRICTED_NETWORKS"

    .line 214
    invoke-virtual {p0, p1, v0}, Lcom/android/server/connectivity/PermissionMonitor;->hasPermission(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v1, 0x0

    nop

    .line 213
    :cond_1b
    :goto_1b
    return v1
.end method

.method private hasUseBackgroundNetworksPermission(Landroid/content/pm/PackageInfo;)Z
    .registers 3
    .param p1, "app"    # Landroid/content/pm/PackageInfo;

    .line 220
    const-string v0, "android.permission.CHANGE_NETWORK_STATE"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/connectivity/PermissionMonitor;->hasPermission(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    const-string v0, "android.permission.CONNECTIVITY_USE_RESTRICTED_NETWORKS"

    .line 221
    invoke-virtual {p0, p1, v0}, Lcom/android/server/connectivity/PermissionMonitor;->hasPermission(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    const-string v0, "android.permission.CONNECTIVITY_INTERNAL"

    .line 222
    invoke-virtual {p0, p1, v0}, Lcom/android/server/connectivity/PermissionMonitor;->hasPermission(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    const-string v0, "android.permission.NETWORK_STACK"

    .line 223
    invoke-virtual {p0, p1, v0}, Lcom/android/server/connectivity/PermissionMonitor;->hasPermission(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 227
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/PermissionMonitor;->isPreinstalledSystemApp(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_29

    :cond_27
    const/4 v0, 0x0

    goto :goto_2a

    :cond_29
    :goto_29
    const/4 v0, 0x1

    .line 220
    :goto_2a
    return v0
.end method

.method private highestPermissionForUid(Ljava/lang/Boolean;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 7
    .param p1, "currentPermission"    # Ljava/lang/Boolean;
    .param p2, "name"    # Ljava/lang/String;

    .line 304
    sget-object v0, Lcom/android/server/connectivity/PermissionMonitor;->SYSTEM:Ljava/lang/Boolean;

    if-ne p1, v0, :cond_5

    .line 305
    return-object p1

    .line 308
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v1, 0x1000

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 309
    .local v0, "app":Landroid/content/pm/PackageInfo;
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/PermissionMonitor;->hasNetworkPermission(Landroid/content/pm/PackageInfo;)Z

    move-result v1

    .line 310
    .local v1, "isNetwork":Z
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/PermissionMonitor;->hasRestrictedNetworkPermission(Landroid/content/pm/PackageInfo;)Z

    move-result v2

    .line 311
    .local v2, "hasRestrictedPermission":Z
    if-nez v1, :cond_19

    if-eqz v2, :cond_1e

    .line 312
    :cond_19
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3
    :try_end_1d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_1d} :catch_1f

    move-object p1, v3

    .line 317
    .end local v0    # "app":Landroid/content/pm/PackageInfo;
    .end local v1    # "isNetwork":Z
    .end local v2    # "hasRestrictedPermission":Z
    :cond_1e
    goto :goto_34

    .line 314
    :catch_1f
    move-exception v0

    .line 316
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NameNotFoundException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/connectivity/PermissionMonitor;->loge(Ljava/lang/String;)V

    .line 318
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_34
    return-object p1
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 446
    const-string v0, "PermissionMonitor"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 451
    const-string v0, "PermissionMonitor"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    return-void
.end method

.method private static loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 455
    const-string v0, "PermissionMonitor"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 456
    return-void
.end method

.method private declared-synchronized onAppAdded(Ljava/lang/String;I)V
    .registers 7
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "appUid"    # I

    monitor-enter p0

    .line 322
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_43

    if-gez p2, :cond_a

    goto :goto_43

    .line 329
    :cond_a
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-direct {p0, v0, p1}, Lcom/android/server/connectivity/PermissionMonitor;->highestPermissionForUid(Ljava/lang/Boolean;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 330
    .local v0, "permission":Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_41

    .line 331
    iget-object v1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 334
    .local v1, "apps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    iget-object v2, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUsers:Ljava/util/Set;

    const/4 v3, 0x1

    invoke-direct {p0, v2, v1, v3}, Lcom/android/server/connectivity/PermissionMonitor;->update(Ljava/util/Set;Ljava/util/Map;Z)V
    :try_end_41
    .catchall {:try_start_1 .. :try_end_41} :catchall_61

    .line 337
    .end local v1    # "apps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    :cond_41
    monitor-exit p0

    return-void

    .line 323
    .end local v0    # "permission":Ljava/lang/Boolean;
    :cond_43
    :goto_43
    :try_start_43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid app in onAppAdded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/connectivity/PermissionMonitor;->loge(Ljava/lang/String;)V
    :try_end_5f
    .catchall {:try_start_43 .. :try_end_5f} :catchall_61

    .line 324
    monitor-exit p0

    return-void

    .line 321
    .end local p1    # "appName":Ljava/lang/String;
    .end local p2    # "appUid":I
    :catchall_61
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/connectivity/PermissionMonitor;
    throw p1
.end method

.method private declared-synchronized onAppRemoved(I)V
    .registers 10
    .param p1, "appUid"    # I

    monitor-enter p0

    .line 340
    if-gez p1, :cond_1b

    .line 341
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid app in onAppRemoved: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/connectivity/PermissionMonitor;->loge(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_19

    .line 342
    monitor-exit p0

    return-void

    .line 339
    .end local p1    # "appUid":I
    :catchall_19
    move-exception p1

    goto :goto_83

    .line 344
    .restart local p1    # "appUid":I
    :cond_1b
    :try_start_1b
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 346
    .local v0, "apps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    const/4 v1, 0x0

    .line 347
    .local v1, "permission":Ljava/lang/Boolean;
    iget-object v2, p0, Lcom/android/server/connectivity/PermissionMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 348
    .local v2, "packages":[Ljava/lang/String;
    const/4 v3, 0x0

    if-eqz v2, :cond_43

    array-length v4, v2

    if-lez v4, :cond_43

    .line 349
    array-length v4, v2

    move-object v5, v1

    move v1, v3

    .end local v1    # "permission":Ljava/lang/Boolean;
    .local v5, "permission":Ljava/lang/Boolean;
    :goto_30
    if-ge v1, v4, :cond_42

    aget-object v6, v2, v1

    .line 350
    .local v6, "name":Ljava/lang/String;
    invoke-direct {p0, v5, v6}, Lcom/android/server/connectivity/PermissionMonitor;->highestPermissionForUid(Ljava/lang/Boolean;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    move-object v5, v7

    .line 351
    sget-object v7, Lcom/android/server/connectivity/PermissionMonitor;->SYSTEM:Ljava/lang/Boolean;
    :try_end_3b
    .catchall {:try_start_1b .. :try_end_3b} :catchall_19

    if-ne v5, v7, :cond_3f

    .line 355
    monitor-exit p0

    return-void

    .line 349
    .end local v6    # "name":Ljava/lang/String;
    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 359
    :cond_42
    move-object v1, v5

    .end local v5    # "permission":Ljava/lang/Boolean;
    .restart local v1    # "permission":Ljava/lang/Boolean;
    :cond_43
    :try_start_43
    iget-object v4, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_4d
    .catchall {:try_start_43 .. :try_end_4d} :catchall_19

    if-ne v1, v4, :cond_51

    .line 361
    monitor-exit p0

    return-void

    .line 362
    :cond_51
    if-eqz v1, :cond_6a

    .line 363
    :try_start_53
    iget-object v3, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    iget-object v3, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUsers:Ljava/util/Set;

    const/4 v4, 0x1

    invoke-direct {p0, v3, v0, v4}, Lcom/android/server/connectivity/PermissionMonitor;->update(Ljava/util/Set;Ljava/util/Map;Z)V

    goto :goto_81

    .line 367
    :cond_6a
    iget-object v4, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Lcom/android/server/connectivity/PermissionMonitor;->NETWORK:Ljava/lang/Boolean;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    iget-object v4, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUsers:Ljava/util/Set;

    invoke-direct {p0, v4, v0, v3}, Lcom/android/server/connectivity/PermissionMonitor;->update(Ljava/util/Set;Ljava/util/Map;Z)V
    :try_end_81
    .catchall {:try_start_53 .. :try_end_81} :catchall_19

    .line 371
    :goto_81
    monitor-exit p0

    return-void

    .line 339
    .end local v0    # "apps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .end local v1    # "permission":Ljava/lang/Boolean;
    .end local v2    # "packages":[Ljava/lang/String;
    .end local p1    # "appUid":I
    :goto_83
    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/connectivity/PermissionMonitor;
    throw p1
.end method

.method private declared-synchronized onUserAdded(I)V
    .registers 5
    .param p1, "user"    # I

    monitor-enter p0

    .line 279
    if-gez p1, :cond_1b

    .line 280
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid user in onUserAdded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/connectivity/PermissionMonitor;->loge(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_19

    .line 281
    monitor-exit p0

    return-void

    .line 278
    .end local p1    # "user":I
    :catchall_19
    move-exception p1

    goto :goto_38

    .line 283
    .restart local p1    # "user":I
    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUsers:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 285
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 286
    .local v0, "users":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 287
    iget-object v1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/connectivity/PermissionMonitor;->update(Ljava/util/Set;Ljava/util/Map;Z)V
    :try_end_36
    .catchall {:try_start_1b .. :try_end_36} :catchall_19

    .line 288
    monitor-exit p0

    return-void

    .line 278
    .end local v0    # "users":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local p1    # "user":I
    :goto_38
    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/connectivity/PermissionMonitor;
    throw p1
.end method

.method private declared-synchronized onUserRemoved(I)V
    .registers 5
    .param p1, "user"    # I

    monitor-enter p0

    .line 291
    if-gez p1, :cond_1b

    .line 292
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid user in onUserRemoved: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/connectivity/PermissionMonitor;->loge(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_19

    .line 293
    monitor-exit p0

    return-void

    .line 290
    .end local p1    # "user":I
    :catchall_19
    move-exception p1

    goto :goto_38

    .line 295
    .restart local p1    # "user":I
    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUsers:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 297
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 298
    .local v0, "users":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 299
    iget-object v1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/connectivity/PermissionMonitor;->update(Ljava/util/Set;Ljava/util/Map;Z)V
    :try_end_36
    .catchall {:try_start_1b .. :try_end_36} :catchall_19

    .line 300
    monitor-exit p0

    return-void

    .line 290
    .end local v0    # "users":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local p1    # "user":I
    :goto_38
    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/connectivity/PermissionMonitor;
    throw p1
.end method

.method private sendPackagePermissionsToNetd(Landroid/util/SparseIntArray;)V
    .registers 11
    .param p1, "netdPermissionsAppIds"    # Landroid/util/SparseIntArray;

    .line 409
    invoke-static {}, Landroid/net/util/NetdService;->getInstance()Landroid/net/INetd;

    move-result-object v0

    .line 410
    .local v0, "netdService":Landroid/net/INetd;
    if-nez v0, :cond_e

    .line 411
    const-string v1, "PermissionMonitor"

    const-string v2, "Failed to get the netd service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    return-void

    .line 414
    :cond_e
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 415
    .local v1, "updateStatsPermissionAppIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 416
    .local v2, "uninstalledAppIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    move v4, v3

    .line 416
    .local v4, "i":I
    :goto_1a
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ge v4, v5, :cond_68

    .line 417
    invoke-virtual {p1, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    .line 418
    .local v5, "permissions":I
    if-eqz v5, :cond_59

    if-eq v5, v6, :cond_4d

    .line 426
    const-string v6, "PermissionMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unknown permission type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "for uid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    invoke-virtual {p1, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 426
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    .end local v5    # "permissions":I
    goto :goto_65

    .line 420
    .restart local v5    # "permissions":I
    :cond_4d
    invoke-virtual {p1, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    goto :goto_65

    .line 423
    :cond_59
    invoke-virtual {p1, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    nop

    .line 416
    .end local v5    # "permissions":I
    :goto_65
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 431
    .end local v4    # "i":I
    :cond_68
    :try_start_68
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_76

    .line 432
    nop

    .line 433
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->convertToIntArray(Ljava/util/List;)[I

    move-result-object v4

    .line 432
    invoke-interface {v0, v6, v4}, Landroid/net/INetd;->trafficSetNetPermForUids(I[I)V

    .line 435
    :cond_76
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_84

    .line 436
    nop

    .line 437
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->convertToIntArray(Ljava/util/List;)[I

    move-result-object v4

    .line 436
    invoke-interface {v0, v3, v4}, Landroid/net/INetd;->trafficSetNetPermForUids(I[I)V
    :try_end_84
    .catch Landroid/os/RemoteException; {:try_start_68 .. :try_end_84} :catch_85

    .line 441
    :cond_84
    goto :goto_9c

    .line 439
    :catch_85
    move-exception v3

    .line 440
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "PermissionMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Pass appId list of special permission failed."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_9c
    return-void
.end method

.method private toIntArray(Ljava/util/List;)[I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 249
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 250
    .local v0, "array":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 251
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 250
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 253
    .end local v1    # "i":I
    :cond_1c
    return-object v0
.end method

.method private update(Ljava/util/Set;Ljava/util/Map;Z)V
    .registers 12
    .param p3, "add"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .line 257
    .local p1, "users":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local p2, "apps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 258
    .local v0, "network":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 259
    .local v1, "system":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_58

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 260
    .local v3, "app":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2c

    move-object v4, v1

    goto :goto_2d

    :cond_2c
    move-object v4, v0

    .line 261
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_2d
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_31
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_57

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 262
    .local v6, "user":I
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v6, v7}, Landroid/os/UserHandle;->getUid(II)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    .end local v6    # "user":I
    goto :goto_31

    .line 264
    .end local v3    # "app":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_57
    goto :goto_12

    .line 266
    :cond_58
    if-eqz p3, :cond_73

    .line 267
    :try_start_5a
    iget-object v2, p0, Lcom/android/server/connectivity/PermissionMonitor;->mNetd:Landroid/os/INetworkManagementService;

    const-string v3, "NETWORK"

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/PermissionMonitor;->toIntArray(Ljava/util/List;)[I

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/os/INetworkManagementService;->setPermission(Ljava/lang/String;[I)V

    .line 268
    iget-object v2, p0, Lcom/android/server/connectivity/PermissionMonitor;->mNetd:Landroid/os/INetworkManagementService;

    const-string v3, "SYSTEM"

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/PermissionMonitor;->toIntArray(Ljava/util/List;)[I

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/os/INetworkManagementService;->setPermission(Ljava/lang/String;[I)V

    goto :goto_85

    .line 273
    :catch_71
    move-exception v2

    goto :goto_86

    .line 270
    :cond_73
    iget-object v2, p0, Lcom/android/server/connectivity/PermissionMonitor;->mNetd:Landroid/os/INetworkManagementService;

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/PermissionMonitor;->toIntArray(Ljava/util/List;)[I

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->clearPermission([I)V

    .line 271
    iget-object v2, p0, Lcom/android/server/connectivity/PermissionMonitor;->mNetd:Landroid/os/INetworkManagementService;

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/PermissionMonitor;->toIntArray(Ljava/util/List;)[I

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->clearPermission([I)V
    :try_end_85
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_85} :catch_71

    .line 275
    :goto_85
    goto :goto_9b

    .line 273
    :goto_86
    nop

    .line 274
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception when updating permissions: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/connectivity/PermissionMonitor;->loge(Ljava/lang/String;)V

    .line 276
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_9b
    return-void
.end method


# virtual methods
.method hasPermission(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z
    .registers 9
    .param p1, "app"    # Landroid/content/pm/PackageInfo;
    .param p2, "permission"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 197
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 198
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v2, v0

    move v3, v1

    :goto_9
    if-ge v3, v2, :cond_18

    aget-object v4, v0, v3

    .line 199
    .local v4, "p":Ljava/lang/String;
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 200
    const/4 v0, 0x1

    return v0

    .line 198
    .end local v4    # "p":Ljava/lang/String;
    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 204
    :cond_18
    return v1
.end method

.method public hasUseBackgroundNetworksPermission(I)Z
    .registers 8
    .param p1, "uid"    # I

    .line 231
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "names":[Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_38

    array-length v2, v0

    if-nez v2, :cond_d

    goto :goto_38

    .line 237
    :cond_d
    :try_start_d
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 238
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/server/connectivity/PermissionMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    aget-object v4, v0, v1

    const/16 v5, 0x1000

    invoke-virtual {v3, v4, v5, v2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 240
    .local v3, "app":Landroid/content/pm/PackageInfo;
    invoke-direct {p0, v3}, Lcom/android/server/connectivity/PermissionMonitor;->hasUseBackgroundNetworksPermission(Landroid/content/pm/PackageInfo;)Z

    move-result v4
    :try_end_1f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_1f} :catch_20

    return v4

    .line 241
    .end local v2    # "userId":I
    .end local v3    # "app":Landroid/content/pm/PackageInfo;
    :catch_20
    move-exception v2

    .line 243
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NameNotFoundException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/server/connectivity/PermissionMonitor;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 244
    return v1

    .line 232
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_38
    :goto_38
    return v1
.end method

.method isPreinstalledSystemApp(Landroid/content/pm/PackageInfo;)Z
    .registers 5
    .param p1, "app"    # Landroid/content/pm/PackageInfo;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 191
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_b

    :cond_a
    move v0, v1

    .line 192
    .local v0, "flags":I
    :goto_b
    and-int/lit16 v2, v0, 0x81

    if-eqz v2, :cond_11

    const/4 v1, 0x1

    nop

    :cond_11
    return v1
.end method

.method public declared-synchronized startMonitoring()V
    .registers 15

    monitor-enter p0

    .line 124
    :try_start_1
    const-string v0, "Monitoring"

    invoke-static {v0}, Lcom/android/server/connectivity/PermissionMonitor;->log(Ljava/lang/String;)V

    .line 126
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 127
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 128
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    iget-object v1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/connectivity/PermissionMonitor;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 131
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    move-object v0, v1

    .line 132
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 135
    iget-object v2, p0, Lcom/android/server/connectivity/PermissionMonitor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/connectivity/PermissionMonitor;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 137
    iget-object v1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    .line 138
    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_58

    .line 139
    const-string v2, "No apps"

    invoke-static {v2}, Lcom/android/server/connectivity/PermissionMonitor;->loge(Ljava/lang/String;)V
    :try_end_56
    .catchall {:try_start_1 .. :try_end_56} :catchall_137

    .line 140
    monitor-exit p0

    return-void

    .line 143
    :cond_58
    :try_start_58
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 145
    .local v2, "netdPermsAppIds":Landroid/util/SparseIntArray;
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/SystemConfig;->getSystemPermissions()Landroid/util/SparseArray;

    move-result-object v3

    .line 146
    .local v3, "systemPerms":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .line 146
    .local v4, "i":I
    :goto_6b
    if-ltz v4, :cond_86

    .line 147
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 148
    .local v6, "uid":I
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArraySet;

    const-string v8, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_83

    .line 149
    const/4 v7, 0x2

    invoke-virtual {v2, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 146
    .end local v6    # "uid":I
    :cond_83
    add-int/lit8 v4, v4, -0x1

    goto :goto_6b

    .line 152
    .end local v4    # "i":I
    :cond_86
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_df

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;

    .line 153
    .local v6, "app":Landroid/content/pm/PackageInfo;
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v7, :cond_9f

    iget-object v7, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_a0

    :cond_9f
    const/4 v7, -0x1

    .line 154
    .local v7, "uid":I
    :goto_a0
    if-gez v7, :cond_a3

    .line 155
    goto :goto_8a

    .line 158
    :cond_a3
    invoke-direct {p0, v6}, Lcom/android/server/connectivity/PermissionMonitor;->hasNetworkPermission(Landroid/content/pm/PackageInfo;)Z

    move-result v8

    .line 159
    .local v8, "isNetwork":Z
    invoke-direct {p0, v6}, Lcom/android/server/connectivity/PermissionMonitor;->hasRestrictedNetworkPermission(Landroid/content/pm/PackageInfo;)Z

    move-result v9

    .line 161
    .local v9, "hasRestrictedPermission":Z
    if-nez v8, :cond_af

    if-eqz v9, :cond_ce

    .line 162
    :cond_af
    iget-object v10, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    .line 165
    .local v10, "permission":Ljava/lang/Boolean;
    if-eqz v10, :cond_c1

    sget-object v11, Lcom/android/server/connectivity/PermissionMonitor;->NETWORK:Ljava/lang/Boolean;

    if-ne v10, v11, :cond_ce

    .line 166
    :cond_c1
    iget-object v11, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .end local v10    # "permission":Ljava/lang/Boolean;
    :cond_ce
    iget-object v10, v6, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    iget-object v11, v6, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    invoke-static {v10, v11}, Lcom/android/server/connectivity/PermissionMonitor;->getNetdPermissionMask([Ljava/lang/String;[I)I

    move-result v10

    .line 172
    .local v10, "otherNetdPerms":I
    invoke-virtual {v2, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v11

    or-int/2addr v11, v10

    invoke-virtual {v2, v7, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 173
    .end local v6    # "app":Landroid/content/pm/PackageInfo;
    .end local v7    # "uid":I
    .end local v8    # "isNetwork":Z
    .end local v9    # "hasRestrictedPermission":Z
    .end local v10    # "otherNetdPerms":I
    goto :goto_8a

    .line 175
    :cond_df
    iget-object v4, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v4

    .line 176
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v4, :cond_103

    .line 177
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_eb
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_103

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 178
    .local v7, "user":Landroid/content/pm/UserInfo;
    iget-object v8, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUsers:Ljava/util/Set;

    iget v9, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 179
    .end local v7    # "user":Landroid/content/pm/UserInfo;
    goto :goto_eb

    .line 182
    :cond_103
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Users: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUsers:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", Apps: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/connectivity/PermissionMonitor;->log(Ljava/lang/String;)V

    .line 183
    iget-object v6, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUsers:Ljava/util/Set;

    iget-object v7, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    invoke-direct {p0, v6, v7, v5}, Lcom/android/server/connectivity/PermissionMonitor;->update(Ljava/util/Set;Ljava/util/Map;Z)V

    .line 186
    invoke-direct {p0, v2}, Lcom/android/server/connectivity/PermissionMonitor;->sendPackagePermissionsToNetd(Landroid/util/SparseIntArray;)V
    :try_end_135
    .catchall {:try_start_58 .. :try_end_135} :catchall_137

    .line 187
    monitor-exit p0

    return-void

    .line 123
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    .end local v1    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v2    # "netdPermsAppIds":Landroid/util/SparseIntArray;
    .end local v3    # "systemPerms":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_137
    move-exception v0

    monitor-exit p0

    .line 123
    .end local p0    # "this":Lcom/android/server/connectivity/PermissionMonitor;
    throw v0
.end method
