.class public Lcom/android/server/slice/SliceManagerService;
.super Landroid/app/slice/ISliceManager$Stub;
.source "SliceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/slice/SliceManagerService$SliceGrant;,
        Lcom/android/server/slice/SliceManagerService$Lifecycle;,
        Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SliceManagerService"


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

.field private final mAssistUtils:Lcom/android/internal/app/AssistUtils;

.field private final mAssistantLookup:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mHomeLookup:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field private final mPermissions:Lcom/android/server/slice/SlicePermissionManager;

.field private final mPinnedSlicesByUri:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/net/Uri;",
            "Lcom/android/server/slice/PinnedSliceState;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 105
    invoke-static {}, Lcom/android/server/slice/SliceManagerService;->createHandler()Lcom/android/server/ServiceThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/slice/SliceManagerService;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 106
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 109
    invoke-direct {p0}, Landroid/app/slice/ISliceManager$Stub;-><init>()V

    .line 86
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mLock:Ljava/lang/Object;

    .line 93
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mPinnedSlicesByUri:Landroid/util/ArrayMap;

    .line 95
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mAssistantLookup:Landroid/util/SparseArray;

    .line 97
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mHomeLookup:Landroid/util/SparseArray;

    .line 551
    new-instance v0, Lcom/android/server/slice/SliceManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/slice/SliceManagerService$1;-><init>(Lcom/android/server/slice/SliceManagerService;)V

    iput-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 110
    iput-object p1, p0, Lcom/android/server/slice/SliceManagerService;->mContext:Landroid/content/Context;

    .line 111
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 112
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 111
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 113
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 114
    new-instance v0, Lcom/android/internal/app/AssistUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/app/AssistUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    .line 115
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mHandler:Landroid/os/Handler;

    .line 117
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    iput-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    .line 119
    new-instance v0, Lcom/android/server/slice/SlicePermissionManager;

    iget-object v1, p0, Lcom/android/server/slice/SliceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/android/server/slice/SlicePermissionManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mPermissions:Lcom/android/server/slice/SlicePermissionManager;

    .line 121
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 122
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 125
    iget-object v1, p0, Lcom/android/server/slice/SliceManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/slice/SliceManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v6, p0, Lcom/android/server/slice/SliceManagerService;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 126
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/slice/SliceManagerService;)Lcom/android/server/slice/SlicePermissionManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/slice/SliceManagerService;

    .line 83
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mPermissions:Lcom/android/server/slice/SlicePermissionManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/slice/SliceManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/slice/SliceManagerService;

    .line 83
    invoke-direct {p0}, Lcom/android/server/slice/SliceManagerService;->systemReady()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/slice/SliceManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/slice/SliceManagerService;
    .param p1, "x1"    # I

    .line 83
    invoke-direct {p0, p1}, Lcom/android/server/slice/SliceManagerService;->onUnlockUser(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/slice/SliceManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/slice/SliceManagerService;
    .param p1, "x1"    # I

    .line 83
    invoke-direct {p0, p1}, Lcom/android/server/slice/SliceManagerService;->onStopUser(I)V

    return-void
.end method

.method private static createHandler()Lcom/android/server/ServiceThread;
    .registers 4

    .line 545
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v1, "SliceManagerService"

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 547
    .local v0, "handlerThread":Lcom/android/server/ServiceThread;
    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 548
    return-object v0
.end method

.method private enforceAccess(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 435
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/slice/SliceManagerService;->checkAccess(Ljava/lang/String;Landroid/net/Uri;II)I

    move-result v0

    if-eqz v0, :cond_42

    .line 437
    nop

    .line 438
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 437
    invoke-static {p2, v0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v0

    .line 439
    .local v0, "userId":I
    invoke-direct {p0, p2, v0}, Lcom/android/server/slice/SliceManagerService;->getProviderPkg(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .end local v0    # "userId":I
    goto :goto_42

    .line 440
    .restart local v0    # "userId":I
    :cond_26
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Access to slice "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is required"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 443
    .end local v0    # "userId":I
    :cond_42
    :goto_42
    invoke-direct {p0, p1, p2}, Lcom/android/server/slice/SliceManagerService;->enforceCrossUser(Ljava/lang/String;Landroid/net/Uri;)V

    .line 444
    return-void
.end method

.method private enforceCrossUser(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 427
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 428
    .local v0, "user":I
    invoke-static {p2, v0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v1

    if-eq v1, v0, :cond_19

    .line 429
    invoke-virtual {p0}, Lcom/android/server/slice/SliceManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v3, "Slice interaction across users requires INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    :cond_19
    return-void
.end method

.method private enforceOwner(Ljava/lang/String;Landroid/net/Uri;I)V
    .registers 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "user"    # I

    .line 341
    invoke-direct {p0, p2, p3}, Lcom/android/server/slice/SliceManagerService;->getProviderPkg(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    if-eqz p1, :cond_d

    .line 344
    return-void

    .line 342
    :cond_d
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller must own "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getAssistant(I)Ljava/lang/String;
    .registers 4
    .param p1, "userId"    # I

    .line 488
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v0

    .line 489
    .local v0, "cn":Landroid/content/ComponentName;
    if-nez v0, :cond_a

    .line 490
    const/4 v1, 0x0

    return-object v1

    .line 492
    :cond_a
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getAssistantMatcher(I)Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;
    .registers 5
    .param p1, "userId"    # I

    .line 470
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mAssistantLookup:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;

    .line 471
    .local v0, "matcher":Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;
    if-nez v0, :cond_1a

    .line 472
    new-instance v1, Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;

    new-instance v2, Lcom/android/server/slice/-$$Lambda$SliceManagerService$ic_PW16x_KcVi-NszMwHhErqI0s;

    invoke-direct {v2, p0, p1}, Lcom/android/server/slice/-$$Lambda$SliceManagerService$ic_PW16x_KcVi-NszMwHhErqI0s;-><init>(Lcom/android/server/slice/SliceManagerService;I)V

    invoke-direct {v1, v2}, Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;-><init>(Ljava/util/function/Supplier;)V

    move-object v0, v1

    .line 473
    iget-object v1, p0, Lcom/android/server/slice/SliceManagerService;->mAssistantLookup:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 475
    :cond_1a
    return-object v0
.end method

.method private getHomeMatcher(I)Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;
    .registers 5
    .param p1, "userId"    # I

    .line 479
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mHomeLookup:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;

    .line 480
    .local v0, "matcher":Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;
    if-nez v0, :cond_1a

    .line 481
    new-instance v1, Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;

    new-instance v2, Lcom/android/server/slice/-$$Lambda$SliceManagerService$LkusK1jmu9JKJTiMRWqWxNGEGbY;

    invoke-direct {v2, p0, p1}, Lcom/android/server/slice/-$$Lambda$SliceManagerService$LkusK1jmu9JKJTiMRWqWxNGEGbY;-><init>(Lcom/android/server/slice/SliceManagerService;I)V

    invoke-direct {v1, v2}, Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;-><init>(Ljava/util/function/Supplier;)V

    move-object v0, v1

    .line 482
    iget-object v1, p0, Lcom/android/server/slice/SliceManagerService;->mHomeLookup:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 484
    :cond_1a
    return-object v0
.end method

.method private getOrCreatePinnedSlice(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/server/slice/PinnedSliceState;
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pkg"    # Ljava/lang/String;

    .line 364
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 365
    :try_start_3
    iget-object v1, p0, Lcom/android/server/slice/SliceManagerService;->mPinnedSlicesByUri:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/slice/PinnedSliceState;

    .line 366
    .local v1, "manager":Lcom/android/server/slice/PinnedSliceState;
    if-nez v1, :cond_17

    .line 367
    invoke-virtual {p0, p1, p2}, Lcom/android/server/slice/SliceManagerService;->createPinnedSlice(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/server/slice/PinnedSliceState;

    move-result-object v2

    move-object v1, v2

    .line 368
    iget-object v2, p0, Lcom/android/server/slice/SliceManagerService;->mPinnedSlicesByUri:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    :cond_17
    monitor-exit v0

    return-object v1

    .line 371
    .end local v1    # "manager":Lcom/android/server/slice/PinnedSliceState;
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method private getPinnedSlice(Landroid/net/Uri;)Lcom/android/server/slice/PinnedSliceState;
    .registers 9
    .param p1, "uri"    # Landroid/net/Uri;

    .line 353
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 354
    :try_start_3
    iget-object v1, p0, Lcom/android/server/slice/SliceManagerService;->mPinnedSlicesByUri:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/slice/PinnedSliceState;

    .line 355
    .local v1, "manager":Lcom/android/server/slice/PinnedSliceState;
    if-eqz v1, :cond_f

    .line 359
    monitor-exit v0

    return-object v1

    .line 356
    :cond_f
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Slice %s not pinned"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 357
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 356
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 360
    .end local v1    # "manager":Lcom/android/server/slice/PinnedSliceState;
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v1
.end method

.method private getProviderPkg(Landroid/net/Uri;I)Ljava/lang/String;
    .registers 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "user"    # I

    .line 396
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 398
    .local v0, "ident":J
    :try_start_4
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    .line 399
    .local v2, "token":Landroid/os/IBinder;
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    .line 400
    .local v3, "activityManager":Landroid/app/IActivityManager;
    const/4 v4, 0x0

    .line 401
    .local v4, "holder":Landroid/app/ContentProviderHolder;
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_59

    .line 404
    .local v5, "providerName":Ljava/lang/String;
    nop

    .line 405
    :try_start_17
    invoke-static {p1, p2}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v6

    .line 404
    invoke-interface {v3, v5, v6, v2}, Landroid/app/IActivityManager;->getContentProviderExternal(Ljava/lang/String;ILandroid/os/IBinder;)Landroid/app/ContentProviderHolder;

    move-result-object v6

    move-object v4, v6

    .line 406
    if-eqz v4, :cond_37

    iget-object v6, v4, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    if-eqz v6, :cond_37

    .line 407
    iget-object v6, v4, Landroid/app/ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    iget-object v6, v6, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;
    :try_end_2a
    .catchall {:try_start_17 .. :try_end_2a} :catchall_45

    .line 412
    if-eqz v4, :cond_33

    :try_start_2c
    iget-object v7, v4, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    if-eqz v7, :cond_33

    .line 413
    invoke-interface {v3, v5, v2}, Landroid/app/IActivityManager;->removeContentProviderExternal(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_33} :catch_50
    .catchall {:try_start_2c .. :try_end_33} :catchall_59

    .line 422
    :cond_33
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 407
    return-object v6

    .line 409
    :cond_37
    const/4 v6, 0x0

    .line 412
    if-eqz v4, :cond_41

    :try_start_3a
    iget-object v7, v4, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    if-eqz v7, :cond_41

    .line 413
    invoke-interface {v3, v5, v2}, Landroid/app/IActivityManager;->removeContentProviderExternal(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_41} :catch_50
    .catchall {:try_start_3a .. :try_end_41} :catchall_59

    .line 422
    :cond_41
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 409
    return-object v6

    .line 412
    :catchall_45
    move-exception v6

    if-eqz v4, :cond_52

    :try_start_48
    iget-object v7, v4, Landroid/app/ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    if-eqz v7, :cond_52

    .line 413
    invoke-interface {v3, v5, v2}, Landroid/app/IActivityManager;->removeContentProviderExternal(Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_52

    .line 416
    :catch_50
    move-exception v6

    goto :goto_53

    .line 413
    :cond_52
    :goto_52
    throw v6
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_53} :catch_50
    .catchall {:try_start_48 .. :try_end_53} :catchall_59

    .line 416
    :goto_53
    nop

    .line 418
    .local v6, "e":Landroid/os/RemoteException;
    :try_start_54
    invoke-virtual {v6}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v7

    throw v7
    :try_end_59
    .catchall {:try_start_54 .. :try_end_59} :catchall_59

    .line 422
    .end local v2    # "token":Landroid/os/IBinder;
    .end local v3    # "activityManager":Landroid/app/IActivityManager;
    .end local v4    # "holder":Landroid/app/ContentProviderHolder;
    .end local v5    # "providerName":Ljava/lang/String;
    .end local v6    # "e":Landroid/os/RemoteException;
    :catchall_59
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private hasFullSliceAccess(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 451
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 453
    .local v0, "ident":J
    :try_start_4
    invoke-direct {p0, p1, p2}, Lcom/android/server/slice/SliceManagerService;->isDefaultHomeApp(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_19

    invoke-direct {p0, p1, p2}, Lcom/android/server/slice/SliceManagerService;->isAssistant(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_19

    .line 454
    invoke-direct {p0, p1, p2}, Lcom/android/server/slice/SliceManagerService;->isGrantedFullAccess(Ljava/lang/String;I)Z

    move-result v2
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_1f

    if-eqz v2, :cond_17

    goto :goto_19

    :cond_17
    const/4 v2, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v2, 0x1

    .line 455
    .local v2, "ret":Z
    :goto_1a
    nop

    .line 457
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 455
    return v2

    .line 457
    .end local v2    # "ret":Z
    :catchall_1f
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private isAssistant(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 462
    invoke-direct {p0, p2}, Lcom/android/server/slice/SliceManagerService;->getAssistantMatcher(I)Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isDefaultHomeApp(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 466
    invoke-direct {p0, p2}, Lcom/android/server/slice/SliceManagerService;->getHomeMatcher(I)Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isGrantedFullAccess(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 541
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mPermissions:Lcom/android/server/slice/SlicePermissionManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/slice/SlicePermissionManager;->hasFullAccess(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$getAssistantMatcher$2(Lcom/android/server/slice/SliceManagerService;I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"    # I

    .line 472
    invoke-direct {p0, p1}, Lcom/android/server/slice/SliceManagerService;->getAssistant(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$getHomeMatcher$3(Lcom/android/server/slice/SliceManagerService;I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"    # I

    .line 481
    invoke-virtual {p0, p1}, Lcom/android/server/slice/SliceManagerService;->getDefaultHome(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$onStopUser$0(ILcom/android/server/slice/PinnedSliceState;)Z
    .registers 3
    .param p0, "userId"    # I
    .param p1, "s"    # Lcom/android/server/slice/PinnedSliceState;

    .line 137
    invoke-virtual {p1}, Lcom/android/server/slice/PinnedSliceState;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;)I

    move-result v0

    if-ne v0, p0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static synthetic lambda$pinSlice$1(Lcom/android/server/slice/SliceManagerService;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .param p1, "slicePkg"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "user"    # I

    .line 172
    if-eqz p1, :cond_1f

    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 173
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    .line 174
    invoke-direct {p0, p2, p3}, Lcom/android/server/slice/SliceManagerService;->isAssistant(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-direct {p0, p2, p3}, Lcom/android/server/slice/SliceManagerService;->isDefaultHomeApp(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_1a

    .line 175
    :cond_17
    const/16 v1, 0xe

    goto :goto_1c

    :cond_1a
    :goto_1a
    const/16 v1, 0xd

    .line 173
    :goto_1c
    invoke-virtual {v0, p1, p3, v1}, Landroid/app/usage/UsageStatsManagerInternal;->reportEvent(Ljava/lang/String;II)V

    .line 177
    :cond_1f
    return-void
.end method

.method private onStopUser(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 136
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 137
    :try_start_3
    iget-object v1, p0, Lcom/android/server/slice/SliceManagerService;->mPinnedSlicesByUri:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    new-instance v2, Lcom/android/server/slice/-$$Lambda$SliceManagerService$EsoJb3dNe0G_qzoQixj72OS5gnw;

    invoke-direct {v2, p1}, Lcom/android/server/slice/-$$Lambda$SliceManagerService$EsoJb3dNe0G_qzoQixj72OS5gnw;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    .line 138
    monitor-exit v0

    .line 139
    return-void

    .line 138
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method private onUnlockUser(I)V
    .registers 2
    .param p1, "userId"    # I

    .line 133
    return-void
.end method

.method private systemReady()V
    .registers 1

    .line 130
    return-void
.end method

.method private verifyCaller(Ljava/lang/String;)V
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;

    .line 447
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 448
    return-void
.end method


# virtual methods
.method public applyRestore([BI)V
    .registers 7
    .param p1, "payload"    # [B
    .param p2, "user"    # I

    .line 311
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_5f

    .line 314
    if-nez p1, :cond_21

    .line 315
    const-string v0, "SliceManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyRestore: no payload to restore for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    return-void

    .line 319
    :cond_21
    if-eqz p2, :cond_3a

    .line 320
    const-string v0, "SliceManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyRestore: cannot restore policy for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    return-void

    .line 323
    :cond_3a
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 325
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_3f
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 326
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v2, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    invoke-virtual {v2}, Landroid/util/Xml$Encoding;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 327
    iget-object v2, p0, Lcom/android/server/slice/SliceManagerService;->mPermissions:Lcom/android/server/slice/SlicePermissionManager;

    invoke-virtual {v2, v1}, Lcom/android/server/slice/SlicePermissionManager;->readRestore(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_55
    .catch Ljava/lang/NumberFormatException; {:try_start_3f .. :try_end_55} :catch_56
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3f .. :try_end_55} :catch_56
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_55} :catch_56

    .line 330
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    goto :goto_5e

    .line 328
    :catch_56
    move-exception v1

    .line 329
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SliceManagerService"

    const-string v3, "applyRestore: error reading payload"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 331
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_5e
    return-void

    .line 312
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    :cond_5f
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller must be system"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected checkAccess(Ljava/lang/String;Landroid/net/Uri;II)I
    .registers 11
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "uid"    # I
    .param p4, "pid"    # I

    .line 392
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move v3, p4

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/slice/SliceManagerService;->checkSlicePermission(Landroid/net/Uri;Ljava/lang/String;II[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public checkSlicePermission(Landroid/net/Uri;Ljava/lang/String;II[Ljava/lang/String;)I
    .registers 25
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "uid"    # I
    .param p5, "autoGrantPermissions"    # [Ljava/lang/String;

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    .line 222
    move-object/from16 v11, p5

    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    .line 223
    .local v12, "userId":I
    const/4 v13, -0x1

    const/4 v14, 0x0

    if-nez v8, :cond_3c

    .line 224
    iget-object v0, v6, Lcom/android/server/slice/SliceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v15

    array-length v5, v15

    move v4, v14

    :goto_20
    if-ge v4, v5, :cond_3b

    aget-object v16, v15, v4

    .line 225
    .local v16, "p":Ljava/lang/String;
    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v16

    move v3, v9

    move/from16 v17, v4

    move v4, v10

    move/from16 v18, v5

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/slice/SliceManagerService;->checkSlicePermission(Landroid/net/Uri;Ljava/lang/String;II[Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_36

    .line 227
    return v14

    .line 224
    .end local v16    # "p":Ljava/lang/String;
    :cond_36
    add-int/lit8 v4, v17, 0x1

    move/from16 v5, v18

    goto :goto_20

    .line 230
    :cond_3b
    return v13

    .line 232
    :cond_3c
    invoke-direct {v6, v8, v12}, Lcom/android/server/slice/SliceManagerService;->hasFullSliceAccess(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 233
    return v14

    .line 235
    :cond_43
    iget-object v0, v6, Lcom/android/server/slice/SliceManagerService;->mPermissions:Lcom/android/server/slice/SlicePermissionManager;

    invoke-virtual {v0, v8, v12, v7}, Lcom/android/server/slice/SlicePermissionManager;->hasPermission(Ljava/lang/String;ILandroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 236
    return v14

    .line 238
    :cond_4c
    if-eqz v11, :cond_76

    .line 240
    invoke-direct {v6, v8, v7, v12}, Lcom/android/server/slice/SliceManagerService;->enforceOwner(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 241
    array-length v0, v11

    move v1, v14

    :goto_53
    if-ge v1, v0, :cond_76

    aget-object v15, v11, v1

    .line 242
    .local v15, "perm":Ljava/lang/String;
    iget-object v2, v6, Lcom/android/server/slice/SliceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v15, v9, v10}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v2

    if-nez v2, :cond_73

    .line 243
    invoke-static {v7, v12}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v13

    .line 244
    .local v13, "providerUser":I
    invoke-direct {v6, v7, v13}, Lcom/android/server/slice/SliceManagerService;->getProviderPkg(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v16

    .line 245
    .local v16, "providerPkg":Ljava/lang/String;
    iget-object v0, v6, Lcom/android/server/slice/SliceManagerService;->mPermissions:Lcom/android/server/slice/SlicePermissionManager;

    move-object v1, v8

    move v2, v12

    move-object/from16 v3, v16

    move v4, v13

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/slice/SlicePermissionManager;->grantSliceAccess(Ljava/lang/String;ILjava/lang/String;ILandroid/net/Uri;)V

    .line 246
    return v14

    .line 241
    .end local v13    # "providerUser":I
    .end local v15    # "perm":Ljava/lang/String;
    .end local v16    # "providerPkg":Ljava/lang/String;
    :cond_73
    add-int/lit8 v1, v1, 0x1

    goto :goto_53

    .line 251
    :cond_76
    iget-object v0, v6, Lcom/android/server/slice/SliceManagerService;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-virtual {v0, v7, v9, v10, v1}, Landroid/content/Context;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v0

    if-nez v0, :cond_80

    .line 253
    return v14

    .line 255
    :cond_80
    return v13
.end method

.method protected createPinnedSlice(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/server/slice/PinnedSliceState;
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pkg"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 376
    new-instance v0, Lcom/android/server/slice/PinnedSliceState;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/slice/PinnedSliceState;-><init>(Lcom/android/server/slice/SliceManagerService;Landroid/net/Uri;Ljava/lang/String;)V

    return-object v0
.end method

.method public getAllPackagesGranted(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .param p1, "authority"    # Ljava/lang/String;

    .line 581
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    .line 582
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 583
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 584
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 581
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/slice/SliceManagerService;->getProviderPkg(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v0

    .line 585
    .local v0, "pkg":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/slice/SliceManagerService;->mPermissions:Lcom/android/server/slice/SlicePermissionManager;

    invoke-virtual {v1, v0}, Lcom/android/server/slice/SlicePermissionManager;->getAllPackagesGranted(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getBackupPayload(I)[B
    .registers 8
    .param p1, "user"    # I

    .line 286
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_5d

    .line 290
    const/4 v0, 0x0

    if-eqz p1, :cond_22

    .line 291
    const-string v1, "SliceManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBackupPayload: cannot backup policy for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    return-object v0

    .line 294
    :cond_22
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 296
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_27
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    .line 297
    .local v2, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v3, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    invoke-virtual {v3}, Landroid/util/Xml$Encoding;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 299
    iget-object v3, p0, Lcom/android/server/slice/SliceManagerService;->mPermissions:Lcom/android/server/slice/SlicePermissionManager;

    invoke-virtual {v3, v2}, Lcom/android/server/slice/SlicePermissionManager;->writeBackup(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 301
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 302
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_44} :catch_45
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_27 .. :try_end_44} :catch_45

    return-object v3

    .line 303
    .end local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catch_45
    move-exception v2

    .line 304
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "SliceManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBackupPayload: error writing payload for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 306
    .end local v2    # "e":Ljava/lang/Exception;
    return-object v0

    .line 287
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    :cond_5d
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller must be system"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 384
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getDefaultHome(I)Ljava/lang/String;
    .registers 12
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 499
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 501
    .local v0, "token":J
    :try_start_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 504
    .local v2, "allHomeCandidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v3, p0, Lcom/android/server/slice/SliceManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 505
    invoke-virtual {v3, v2, p1}, Landroid/content/pm/PackageManagerInternal;->getHomeActivitiesAsUser(Ljava/util/List;I)Landroid/content/ComponentName;

    move-result-object v3

    .line 507
    .local v3, "defaultLauncher":Landroid/content/ComponentName;
    const/4 v4, 0x0

    .line 508
    .local v4, "detected":Landroid/content/ComponentName;
    if-eqz v3, :cond_13

    .line 509
    move-object v4, v3

    .line 512
    :cond_13
    if-nez v4, :cond_41

    .line 519
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    .line 521
    .local v5, "size":I
    const/high16 v6, -0x80000000

    .line 522
    .local v6, "lastPriority":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1c
    if-ge v7, v5, :cond_41

    .line 523
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 524
    .local v8, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v9, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v9}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v9

    if-nez v9, :cond_2f

    .line 525
    goto :goto_3e

    .line 527
    :cond_2f
    iget v9, v8, Landroid/content/pm/ResolveInfo;->priority:I

    if-ge v9, v6, :cond_34

    .line 528
    goto :goto_3e

    .line 530
    :cond_34
    iget-object v9, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v9}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    move-object v4, v9

    .line 531
    iget v9, v8, Landroid/content/pm/ResolveInfo;->priority:I

    move v6, v9

    .line 522
    .end local v8    # "ri":Landroid/content/pm/ResolveInfo;
    :goto_3e
    add-int/lit8 v7, v7, 0x1

    goto :goto_1c

    .line 534
    .end local v5    # "size":I
    .end local v6    # "lastPriority":I
    .end local v7    # "i":I
    :cond_41
    if-eqz v4, :cond_48

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5
    :try_end_47
    .catchall {:try_start_4 .. :try_end_47} :catchall_4d

    goto :goto_49

    :cond_48
    const/4 v5, 0x0

    .line 536
    :goto_49
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 534
    return-object v5

    .line 536
    .end local v2    # "allHomeCandidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3    # "defaultLauncher":Landroid/content/ComponentName;
    .end local v4    # "detected":Landroid/content/ComponentName;
    :catchall_4d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 2

    .line 388
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getLock()Ljava/lang/Object;
    .registers 2

    .line 380
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method public getPinnedSlices(Ljava/lang/String;)[Landroid/net/Uri;
    .registers 10
    .param p1, "pkg"    # Ljava/lang/String;

    .line 144
    invoke-direct {p0, p1}, Lcom/android/server/slice/SliceManagerService;->verifyCaller(Ljava/lang/String;)V

    .line 145
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 146
    .local v0, "callingUser":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .local v1, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iget-object v2, p0, Lcom/android/server/slice/SliceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 148
    :try_start_13
    iget-object v3, p0, Lcom/android/server/slice/SliceManagerService;->mPinnedSlicesByUri:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_45

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/slice/PinnedSliceState;

    .line 149
    .local v4, "state":Lcom/android/server/slice/PinnedSliceState;
    invoke-virtual {v4}, Lcom/android/server/slice/PinnedSliceState;->getPkg()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 150
    invoke-virtual {v4}, Lcom/android/server/slice/PinnedSliceState;->getUri()Landroid/net/Uri;

    move-result-object v5

    .line 151
    .local v5, "uri":Landroid/net/Uri;
    invoke-static {v5, v0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v6

    .line 152
    .local v6, "userId":I
    if-ne v6, v0, :cond_44

    .line 153
    invoke-static {v5}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    .end local v4    # "state":Lcom/android/server/slice/PinnedSliceState;
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v6    # "userId":I
    :cond_44
    goto :goto_1d

    .line 157
    :cond_45
    monitor-exit v2
    :try_end_46
    .catchall {:try_start_13 .. :try_end_46} :catchall_53

    .line 158
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/Uri;

    return-object v2

    .line 157
    :catchall_53
    move-exception v3

    :try_start_54
    monitor-exit v2
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw v3
.end method

.method public getPinnedSpecs(Landroid/net/Uri;Ljava/lang/String;)[Landroid/app/slice/SliceSpec;
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 198
    invoke-direct {p0, p2}, Lcom/android/server/slice/SliceManagerService;->verifyCaller(Ljava/lang/String;)V

    .line 199
    invoke-direct {p0, p2, p1}, Lcom/android/server/slice/SliceManagerService;->enforceAccess(Ljava/lang/String;Landroid/net/Uri;)V

    .line 200
    invoke-direct {p0, p1}, Lcom/android/server/slice/SliceManagerService;->getPinnedSlice(Landroid/net/Uri;)Lcom/android/server/slice/PinnedSliceState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/slice/PinnedSliceState;->getSpecs()[Landroid/app/slice/SliceSpec;

    move-result-object v0

    return-object v0
.end method

.method public grantPermissionFromUser(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 15
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "callingPkg"    # Ljava/lang/String;
    .param p4, "allSlices"    # Z

    .line 260
    invoke-direct {p0, p3}, Lcom/android/server/slice/SliceManagerService;->verifyCaller(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p0}, Lcom/android/server/slice/SliceManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_SLICE_PERMISSIONS"

    const-string v2, "Slice granting requires MANAGE_SLICE_PERMISSIONS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 264
    .local v0, "userId":I
    if-eqz p4, :cond_1e

    .line 265
    iget-object v1, p0, Lcom/android/server/slice/SliceManagerService;->mPermissions:Lcom/android/server/slice/SlicePermissionManager;

    invoke-virtual {v1, p2, v0}, Lcom/android/server/slice/SlicePermissionManager;->grantFullAccess(Ljava/lang/String;I)V

    goto :goto_3e

    .line 268
    :cond_1e
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, ""

    .line 269
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 270
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    .line 271
    .local v7, "grantUri":Landroid/net/Uri;
    invoke-static {v7, v0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v8

    .line 272
    .local v8, "providerUser":I
    invoke-direct {p0, v7, v8}, Lcom/android/server/slice/SliceManagerService;->getProviderPkg(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v9

    .line 273
    .local v9, "providerPkg":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/slice/SliceManagerService;->mPermissions:Lcom/android/server/slice/SlicePermissionManager;

    move-object v2, p2

    move v3, v0

    move-object v4, v9

    move v5, v8

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/slice/SlicePermissionManager;->grantSliceAccess(Ljava/lang/String;ILjava/lang/String;ILandroid/net/Uri;)V

    .line 275
    .end local v7    # "grantUri":Landroid/net/Uri;
    .end local v8    # "providerUser":I
    .end local v9    # "providerPkg":Ljava/lang/String;
    :goto_3e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 277
    .local v1, "ident":J
    :try_start_42
    iget-object v3, p0, Lcom/android/server/slice/SliceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_51

    .line 279
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 280
    nop

    .line 281
    return-void

    .line 279
    :catchall_51
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public grantSlicePermission(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 11
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "toPkg"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 205
    invoke-direct {p0, p1}, Lcom/android/server/slice/SliceManagerService;->verifyCaller(Ljava/lang/String;)V

    .line 206
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 207
    .local v0, "user":I
    invoke-direct {p0, p1, p3, v0}, Lcom/android/server/slice/SliceManagerService;->enforceOwner(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 208
    iget-object v1, p0, Lcom/android/server/slice/SliceManagerService;->mPermissions:Lcom/android/server/slice/SlicePermissionManager;

    move-object v2, p2

    move v3, v0

    move-object v4, p1

    move v5, v0

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/slice/SlicePermissionManager;->grantSliceAccess(Ljava/lang/String;ILjava/lang/String;ILandroid/net/Uri;)V

    .line 209
    return-void
.end method

.method public hasSliceAccess(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 192
    invoke-direct {p0, p1}, Lcom/android/server/slice/SliceManagerService;->verifyCaller(Ljava/lang/String;)V

    .line 193
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/slice/SliceManagerService;->hasFullSliceAccess(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 336
    new-instance v0, Lcom/android/server/slice/SliceShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/slice/SliceShellCommand;-><init>(Lcom/android/server/slice/SliceManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/slice/SliceShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 337
    return-void
.end method

.method public pinSlice(Ljava/lang/String;Landroid/net/Uri;[Landroid/app/slice/SliceSpec;Landroid/os/IBinder;)V
    .registers 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "specs"    # [Landroid/app/slice/SliceSpec;
    .param p4, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 164
    invoke-direct {p0, p1}, Lcom/android/server/slice/SliceManagerService;->verifyCaller(Ljava/lang/String;)V

    .line 165
    invoke-direct {p0, p1, p2}, Lcom/android/server/slice/SliceManagerService;->enforceAccess(Ljava/lang/String;Landroid/net/Uri;)V

    .line 166
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 167
    .local v0, "user":I
    invoke-static {p2, v0}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object p2

    .line 168
    invoke-direct {p0, p2, v0}, Lcom/android/server/slice/SliceManagerService;->getProviderPkg(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, "slicePkg":Ljava/lang/String;
    invoke-direct {p0, p2, v1}, Lcom/android/server/slice/SliceManagerService;->getOrCreatePinnedSlice(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/server/slice/PinnedSliceState;

    move-result-object v2

    invoke-virtual {v2, p1, p3, p4}, Lcom/android/server/slice/PinnedSliceState;->pin(Ljava/lang/String;[Landroid/app/slice/SliceSpec;Landroid/os/IBinder;)V

    .line 171
    iget-object v2, p0, Lcom/android/server/slice/SliceManagerService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/slice/-$$Lambda$SliceManagerService$pJ39TkC3AEVezLFEPuJgSQSTDJM;

    invoke-direct {v3, p0, v1, p1, v0}, Lcom/android/server/slice/-$$Lambda$SliceManagerService$pJ39TkC3AEVezLFEPuJgSQSTDJM;-><init>(Lcom/android/server/slice/SliceManagerService;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 178
    return-void
.end method

.method protected removePinnedSlice(Landroid/net/Uri;)V
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;

    .line 347
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 348
    :try_start_3
    iget-object v1, p0, Lcom/android/server/slice/SliceManagerService;->mPinnedSlicesByUri:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/slice/PinnedSliceState;

    invoke-virtual {v1}, Lcom/android/server/slice/PinnedSliceState;->destroy()V

    .line 349
    monitor-exit v0

    .line 350
    return-void

    .line 349
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public revokeSlicePermission(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 11
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "toPkg"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 213
    invoke-direct {p0, p1}, Lcom/android/server/slice/SliceManagerService;->verifyCaller(Ljava/lang/String;)V

    .line 214
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 215
    .local v0, "user":I
    invoke-direct {p0, p1, p3, v0}, Lcom/android/server/slice/SliceManagerService;->enforceOwner(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 216
    iget-object v1, p0, Lcom/android/server/slice/SliceManagerService;->mPermissions:Lcom/android/server/slice/SlicePermissionManager;

    move-object v2, p2

    move v3, v0

    move-object v4, p1

    move v5, v0

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/slice/SlicePermissionManager;->revokeSliceAccess(Ljava/lang/String;ILjava/lang/String;ILandroid/net/Uri;)V

    .line 217
    return-void
.end method

.method public unpinSlice(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 182
    invoke-direct {p0, p1}, Lcom/android/server/slice/SliceManagerService;->verifyCaller(Ljava/lang/String;)V

    .line 183
    invoke-direct {p0, p1, p2}, Lcom/android/server/slice/SliceManagerService;->enforceAccess(Ljava/lang/String;Landroid/net/Uri;)V

    .line 184
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {p2, v0}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object p2

    .line 185
    invoke-direct {p0, p2}, Lcom/android/server/slice/SliceManagerService;->getPinnedSlice(Landroid/net/Uri;)Lcom/android/server/slice/PinnedSliceState;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/android/server/slice/PinnedSliceState;->unpin(Ljava/lang/String;Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 186
    invoke-virtual {p0, p2}, Lcom/android/server/slice/SliceManagerService;->removePinnedSlice(Landroid/net/Uri;)V

    .line 188
    :cond_1f
    return-void
.end method
