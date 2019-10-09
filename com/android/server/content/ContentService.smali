.class public final Lcom/android/server/content/ContentService;
.super Landroid/content/IContentService$Stub;
.source "ContentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/content/ContentService$ObserverNode;,
        Lcom/android/server/content/ContentService$ObserverCall;,
        Lcom/android/server/content/ContentService$Lifecycle;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "ContentService"


# instance fields
.field private final mCache:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mCache"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/os/Bundle;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mCacheReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mFactoryTest:Z

.field private final mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

.field private mSyncManager:Lcom/android/server/content/SyncManager;

.field private final mSyncManagerLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "factoryTest"    # Z

    .line 273
    invoke-direct {p0}, Landroid/content/IContentService$Stub;-><init>()V

    .line 133
    new-instance v0, Lcom/android/server/content/ContentService$ObserverNode;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/android/server/content/ContentService$ObserverNode;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    .line 136
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManagerLock:Ljava/lang/Object;

    .line 143
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    .line 147
    new-instance v0, Lcom/android/server/content/ContentService$1;

    invoke-direct {v0, p0}, Lcom/android/server/content/ContentService$1;-><init>(Lcom/android/server/content/ContentService;)V

    iput-object v0, p0, Lcom/android/server/content/ContentService;->mCacheReceiver:Landroid/content/BroadcastReceiver;

    .line 274
    iput-object p1, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    .line 275
    iput-boolean p2, p0, Lcom/android/server/content/ContentService;->mFactoryTest:Z

    .line 279
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 281
    .local v0, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    new-instance v1, Lcom/android/server/content/ContentService$3;

    invoke-direct {v1, p0}, Lcom/android/server/content/ContentService$3;-><init>(Lcom/android/server/content/ContentService;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->setSyncAdapterPackagesprovider(Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;)V

    .line 289
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 290
    .local v1, "packageFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 291
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 292
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 293
    const-string v2, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 294
    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 295
    iget-object v2, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/content/ContentService;->mCacheReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 298
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 299
    .local v2, "localeFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 300
    iget-object v3, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/content/ContentService;->mCacheReceiver:Landroid/content/BroadcastReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v8, 0x0

    move-object v6, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 302
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/content/ContentService;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/content/ContentService;

    .line 82
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/content/ContentService;ILjava/lang/String;Landroid/net/Uri;)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/content/ContentService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/net/Uri;

    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/content/ContentService;->invalidateCacheLocked(ILjava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method private checkUriPermission(Landroid/net/Uri;IIII)I
    .registers 13
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "modeFlags"    # I
    .param p5, "userHandle"    # I

    .line 472
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v6, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->checkUriPermission(Landroid/net/Uri;IIIILandroid/os/IBinder;)I

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    return v0

    .line 474
    :catch_f
    move-exception v0

    .line 475
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    return v1
.end method

.method private clampPeriod(J)J
    .registers 8
    .param p1, "period"    # J

    .line 554
    invoke-static {}, Landroid/app/job/JobInfo;->getMinPeriodMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 555
    .local v0, "minPeriod":J
    cmp-long v2, p1, v0

    if-gez v2, :cond_30

    .line 556
    const-string v2, "ContentService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requested poll frequency of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " seconds being rounded up to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "s."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    move-wide p1, v0

    .line 560
    :cond_30
    return-wide p1
.end method

.method private enforceCrossUserPermission(ILjava/lang/String;)V
    .registers 6
    .param p1, "userHandle"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 1332
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1333
    .local v0, "callingUser":I
    if-eq v0, p1, :cond_d

    .line 1334
    iget-object v1, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v1, v2, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1337
    :cond_d
    return-void
.end method

.method private enforceShell(Ljava/lang/String;)V
    .registers 6
    .param p1, "method"    # Ljava/lang/String;

    .line 1660
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1661
    .local v0, "callingUid":I
    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_22

    if-nez v0, :cond_b

    goto :goto_22

    .line 1662
    :cond_b
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non-shell user attempted to call "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1664
    :cond_22
    :goto_22
    return-void
.end method

.method private findOrCreateCacheLocked(ILjava/lang/String;)Landroid/util/ArrayMap;
    .registers 6
    .param p1, "userId"    # I
    .param p2, "providerPackageName"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mCache"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 1210
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 1211
    .local v0, "userCache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;Landroid/os/Bundle;>;>;"
    if-nez v0, :cond_15

    .line 1212
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v0, v1

    .line 1213
    iget-object v1, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1215
    :cond_15
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 1216
    .local v1, "packageCache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;Landroid/os/Bundle;>;"
    if-nez v1, :cond_26

    .line 1217
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    move-object v1, v2

    .line 1218
    invoke-virtual {v0, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1220
    :cond_26
    return-object v1
.end method

.method private getProviderPackageName(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;

    .line 1202
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1203
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 1204
    .local v0, "pi":Landroid/content/pm/ProviderInfo;
    if-eqz v0, :cond_14

    iget-object v1, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return-object v1
.end method

.method private getSyncExemptionAndCleanUpExtrasForCaller(ILandroid/os/Bundle;)I
    .registers 6
    .param p1, "callingUid"    # I
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1370
    if-eqz p2, :cond_13

    .line 1371
    const-string/jumbo v0, "v_exemption"

    .line 1372
    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1375
    .local v0, "exemption":I
    const-string/jumbo v2, "v_exemption"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1376
    if-eq v0, v1, :cond_13

    .line 1377
    return v0

    .line 1380
    .end local v0    # "exemption":I
    :cond_13
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 1381
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 1382
    .local v0, "ami":Landroid/app/ActivityManagerInternal;
    if-eqz v0, :cond_22

    .line 1383
    invoke-virtual {v0, p1}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    move-result v1

    goto :goto_24

    .line 1384
    :cond_22
    const/16 v1, 0x13

    .line 1386
    .local v1, "procState":I
    :goto_24
    const/4 v2, 0x2

    if-gt v1, v2, :cond_28

    .line 1387
    return v2

    .line 1389
    :cond_28
    const/4 v2, 0x5

    if-gt v1, v2, :cond_2d

    .line 1390
    const/4 v2, 0x1

    return v2

    .line 1392
    :cond_2d
    const/4 v2, 0x0

    return v2
.end method

.method private getSyncExemptionForCaller(I)I
    .registers 3
    .param p1, "callingUid"    # I

    .line 1365
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/content/ContentService;->getSyncExemptionAndCleanUpExtrasForCaller(ILandroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method private getSyncManager()Lcom/android/server/content/SyncManager;
    .registers 5

    .line 167
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManagerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 170
    :try_start_3
    iget-object v1, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    if-nez v1, :cond_12

    new-instance v1, Lcom/android/server/content/SyncManager;

    iget-object v2, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/android/server/content/ContentService;->mFactoryTest:Z

    invoke-direct {v1, v2, v3}, Lcom/android/server/content/SyncManager;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_12} :catch_15
    .catchall {:try_start_3 .. :try_end_12} :catchall_13

    .line 173
    :cond_12
    goto :goto_1d

    .line 175
    :catchall_13
    move-exception v1

    goto :goto_21

    .line 171
    :catch_15
    move-exception v1

    .line 172
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_16
    const-string v2, "ContentService"

    const-string v3, "Can\'t create SyncManager"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 174
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_1d
    iget-object v1, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    monitor-exit v0

    return-object v1

    .line 175
    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_16 .. :try_end_22} :catchall_13

    throw v1
.end method

.method private handleIncomingUser(Landroid/net/Uri;IIIZI)I
    .registers 13
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "modeFlags"    # I
    .param p5, "allowNonFull"    # Z
    .param p6, "userId"    # I

    .line 1288
    const/4 v0, -0x2

    if-ne p6, v0, :cond_7

    .line 1289
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p6

    .line 1292
    :cond_7
    const/4 v0, -0x1

    if-ne p6, v0, :cond_14

    .line 1293
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v2, "ContentService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6b

    .line 1295
    :cond_14
    if-ltz p6, :cond_6c

    .line 1297
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p6, v0, :cond_6b

    .line 1298
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/content/ContentService;->checkUriPermission(Landroid/net/Uri;IIII)I

    move-result v0

    if-eqz v0, :cond_6b

    .line 1300
    const/4 v0, 0x0

    .line 1301
    .local v0, "allow":Z
    iget-object v1, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_35

    .line 1304
    const/4 v0, 0x1

    goto :goto_42

    .line 1305
    :cond_35
    if-eqz p5, :cond_42

    iget-object v1, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_42

    .line 1308
    const/4 v0, 0x1

    .line 1310
    :cond_42
    :goto_42
    if-nez v0, :cond_6b

    .line 1311
    if-eqz p5, :cond_4a

    .line 1312
    nop

    .line 1314
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL or android.permission.INTERACT_ACROSS_USERS"

    goto :goto_4c

    :cond_4a
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 1315
    .local v1, "permissions":Ljava/lang/String;
    :goto_4c
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ContentServiceNeither user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " nor current process has "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1321
    .end local v0    # "allow":Z
    .end local v1    # "permissions":Ljava/lang/String;
    :cond_6b
    :goto_6b
    return p6

    .line 1296
    :cond_6c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private invalidateCacheLocked(ILjava/lang/String;Landroid/net/Uri;)V
    .registers 10
    .param p1, "userId"    # I
    .param p2, "providerPackageName"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mCache"
    .end annotation

    .line 1225
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 1226
    .local v0, "userCache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;Landroid/os/Bundle;>;>;"
    if-nez v0, :cond_b

    return-void

    .line 1228
    :cond_b
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 1229
    .local v1, "packageCache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;Landroid/os/Bundle;>;"
    if-nez v1, :cond_14

    return-void

    .line 1231
    :cond_14
    if-eqz p3, :cond_40

    .line 1232
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_17
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_43

    .line 1233
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 1234
    .local v3, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;"
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v4, :cond_3d

    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 1236
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_3f

    .line 1238
    :cond_3d
    add-int/lit8 v2, v2, 0x1

    .line 1240
    .end local v3    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;"
    :goto_3f
    goto :goto_17

    .line 1243
    .end local v2    # "i":I
    :cond_40
    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 1245
    :cond_43
    return-void
.end method

.method private static normalizeSyncable(I)I
    .registers 2
    .param p0, "syncable"    # I

    .line 1340
    if-lez p0, :cond_4

    .line 1341
    const/4 v0, 0x1

    return v0

    .line 1342
    :cond_4
    if-nez p0, :cond_8

    .line 1343
    const/4 v0, 0x0

    return v0

    .line 1345
    :cond_8
    const/4 v0, -0x2

    return v0
.end method

.method private validateExtras(ILandroid/os/Bundle;)V
    .registers 6
    .param p1, "callingUid"    # I
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1349
    const-string/jumbo v0, "v_exemption"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1350
    if-eqz p1, :cond_25

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_25

    const/16 v0, 0x7d0

    if-ne p1, v0, :cond_14

    goto :goto_25

    .line 1356
    :cond_14
    const-string v0, "Invalid extras specified."

    .line 1357
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "ContentService"

    const-string v2, "Invalid extras specified. requestsync -f/-F needs to run on \'adb shell\'"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Invalid extras specified."

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1354
    .end local v0    # "msg":Ljava/lang/String;
    :cond_25
    :goto_25
    nop

    .line 1361
    :cond_26
    return-void
.end method


# virtual methods
.method public addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V
    .registers 23
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "pollFrequency"    # J

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v10, p3

    .line 847
    iget-object v0, v1, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/android/server/content/SyncSecurityInjector;->permitControlSyncForAccount(Landroid/content/Context;Landroid/accounts/Account;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 848
    return-void

    .line 852
    :cond_f
    const/4 v0, 0x1

    invoke-static {v10, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 853
    if-eqz v2, :cond_68

    .line 856
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5e

    .line 859
    iget-object v0, v1, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v4, "no permission to write the sync settings"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {v1, v0, v10}, Lcom/android/server/content/ContentService;->validateExtras(ILandroid/os/Bundle;)V

    .line 864
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v11

    .line 866
    .local v11, "userId":I
    move-wide/from16 v3, p4

    invoke-direct {v1, v3, v4}, Lcom/android/server/content/ContentService;->clampPeriod(J)J

    move-result-wide v12

    .line 867
    .end local p4    # "pollFrequency":J
    .local v12, "pollFrequency":J
    invoke-static {v12, v13}, Lcom/android/server/content/SyncStorageEngine;->calculateDefaultFlexTime(J)J

    move-result-wide v14

    .line 869
    .local v14, "defaultFlex":J
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v3

    move-wide v7, v3

    .line 871
    .local v7, "identityToken":J
    :try_start_3f
    new-instance v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v9, p2

    invoke-direct {v4, v2, v9, v11}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 873
    .local v4, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v3
    :try_end_4a
    .catchall {:try_start_3f .. :try_end_4a} :catchall_58

    move-wide v5, v12

    move-wide v1, v7

    move-wide v7, v14

    .line 873
    .end local v7    # "identityToken":J
    .local v1, "identityToken":J
    move-object v9, v10

    :try_start_4e
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/content/SyncManager;->updateOrAddPeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_56

    .line 876
    .end local v4    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 877
    nop

    .line 878
    return-void

    .line 876
    :catchall_56
    move-exception v0

    goto :goto_5a

    .line 876
    .end local v1    # "identityToken":J
    .restart local v7    # "identityToken":J
    :catchall_58
    move-exception v0

    move-wide v1, v7

    .line 876
    .end local v7    # "identityToken":J
    .restart local v1    # "identityToken":J
    :goto_5a
    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v0

    .line 857
    .end local v1    # "identityToken":J
    .end local v11    # "userId":I
    .end local v12    # "pollFrequency":J
    .end local v14    # "defaultFlex":J
    .restart local p4    # "pollFrequency":J
    :cond_5e
    move-wide/from16 v3, p4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Authority must not be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 854
    :cond_68
    move-wide/from16 v3, p4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Account must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V
    .registers 7
    .param p1, "mask"    # I
    .param p2, "callback"    # Landroid/content/ISyncStatusObserver;

    .line 1177
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 1179
    .local v0, "identityToken":J
    :try_start_4
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 1180
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v2, :cond_13

    if-eqz p2, :cond_13

    .line 1181
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/android/server/content/SyncStorageEngine;->addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_18

    .line 1184
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :cond_13
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1185
    nop

    .line 1186
    return-void

    .line 1184
    :catchall_18
    move-exception v2

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public cancelRequest(Landroid/content/SyncRequest;)V
    .registers 14
    .param p1, "request"    # Landroid/content/SyncRequest;

    .line 688
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/SyncRequest;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/content/SyncSecurityInjector;->permitControlSyncForAccount(Landroid/content/Context;Landroid/accounts/Account;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 689
    return-void

    .line 693
    :cond_d
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v0

    .line 694
    .local v0, "syncManager":Lcom/android/server/content/SyncManager;
    if-nez v0, :cond_14

    return-void

    .line 695
    :cond_14
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 696
    .local v1, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 698
    .local v2, "callingUid":I
    invoke-virtual {p1}, Landroid/content/SyncRequest;->isPeriodic()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 699
    iget-object v3, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v5, "no permission to write the sync settings"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    :cond_2c
    new-instance v3, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/content/SyncRequest;->getBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 704
    .local v3, "extras":Landroid/os/Bundle;
    invoke-direct {p0, v2, v3}, Lcom/android/server/content/ContentService;->validateExtras(ILandroid/os/Bundle;)V

    .line 706
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v4

    .line 710
    .local v4, "identityToken":J
    :try_start_3c
    invoke-virtual {p1}, Landroid/content/SyncRequest;->getAccount()Landroid/accounts/Account;

    move-result-object v6

    .line 711
    .local v6, "account":Landroid/accounts/Account;
    invoke-virtual {p1}, Landroid/content/SyncRequest;->getProvider()Ljava/lang/String;

    move-result-object v7

    .line 712
    .local v7, "provider":Ljava/lang/String;
    new-instance v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v8, v6, v7, v1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 713
    .local v8, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-virtual {p1}, Landroid/content/SyncRequest;->isPeriodic()Z

    move-result v9

    if-eqz v9, :cond_67

    .line 715
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cancelRequest() by uid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v8, v3, v10}, Lcom/android/server/content/SyncManager;->removePeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 719
    :cond_67
    invoke-virtual {v0, v8, v3}, Lcom/android/server/content/SyncManager;->cancelScheduledSyncOperation(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V

    .line 720
    const-string v9, "API"

    invoke-virtual {v0, v8, v3, v9}, Lcom/android/server/content/SyncManager;->cancelActiveSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_6f
    .catchall {:try_start_3c .. :try_end_6f} :catchall_74

    .line 722
    .end local v6    # "account":Landroid/accounts/Account;
    .end local v7    # "provider":Ljava/lang/String;
    .end local v8    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-static {v4, v5}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 723
    nop

    .line 724
    return-void

    .line 722
    :catchall_74
    move-exception v6

    invoke-static {v4, v5}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public cancelSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "cname"    # Landroid/content/ComponentName;

    .line 629
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/content/ContentService;->cancelSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)V

    .line 630
    return-void
.end method

.method public cancelSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)V
    .registers 11
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "cname"    # Landroid/content/ComponentName;
    .param p4, "userId"    # I

    .line 651
    if-nez p3, :cond_b

    .line 652
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/server/content/SyncSecurityInjector;->permitControlSyncForAccount(Landroid/content/Context;Landroid/accounts/Account;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 653
    return-void

    .line 658
    :cond_b
    if-eqz p2, :cond_1c

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_1c

    .line 659
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Authority must be non-empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 661
    :cond_1c
    :goto_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to modify the sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p4, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 665
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 666
    .local v0, "identityToken":J
    if-eqz p3, :cond_3f

    .line 667
    const-string v2, "ContentService"

    const-string v3, "cname not null."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    return-void

    .line 671
    :cond_3f
    :try_start_3f
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 672
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v2, :cond_53

    .line 674
    new-instance v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v3, p1, p2, p4}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 675
    .local v3, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-virtual {v2, v3}, Lcom/android/server/content/SyncManager;->clearScheduledSyncOperations(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 676
    const/4 v4, 0x0

    const-string v5, "API"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/content/SyncManager;->cancelActiveSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_53
    .catchall {:try_start_3f .. :try_end_53} :catchall_58

    .line 679
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    .end local v3    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :cond_53
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 680
    nop

    .line 681
    return-void

    .line 679
    :catchall_58
    move-exception v2

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v2
.end method

.method protected declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 22
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw_"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    monitor-enter p0

    .line 192
    :try_start_5
    iget-object v0, v1, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v3, "ContentService"

    invoke-static {v0, v3, v2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_135

    if-nez v0, :cond_11

    monitor-exit p0

    return-void

    .line 193
    :cond_11
    :try_start_11
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v3, "  "

    invoke-direct {v0, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    move-object v3, v0

    .line 195
    .local v3, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    const-string v0, "-a"

    move-object/from16 v12, p3

    invoke-static {v12, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    move v13, v0

    .line 199
    .local v13, "dumpAll":Z
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_26
    .catchall {:try_start_11 .. :try_end_26} :catchall_135

    move-wide v14, v4

    .line 201
    .local v14, "identityToken":J
    :try_start_27
    iget-object v0, v1, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    if-nez v0, :cond_33

    .line 202
    const-string v0, "SyncManager not available yet"

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 206
    move-object/from16 v11, p1

    goto :goto_3a

    .line 204
    :cond_33
    iget-object v0, v1, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    move-object/from16 v11, p1

    invoke-virtual {v0, v11, v3, v13}, Lcom/android/server/content/SyncManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V

    .line 206
    :goto_3a
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 207
    const-string v0, "Observer tree:"

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 208
    iget-object v10, v1, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    monitor-enter v10
    :try_end_45
    .catchall {:try_start_27 .. :try_end_45} :catchall_130

    .line 209
    const/4 v0, 0x2

    :try_start_46
    new-array v0, v0, [I

    .line 210
    .local v0, "counts":[I
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    move-object v9, v4

    .line 211
    .local v9, "pidCounts":Landroid/util/SparseIntArray;
    iget-object v4, v1, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    const-string v8, ""

    const-string v16, "  "
    :try_end_54
    .catchall {:try_start_46 .. :try_end_54} :catchall_129

    move-object v5, v11

    move-object v6, v3

    move-object v7, v12

    move-object/from16 v17, v9

    move-object/from16 v9, v16

    .end local v9    # "pidCounts":Landroid/util/SparseIntArray;
    .local v17, "pidCounts":Landroid/util/SparseIntArray;
    move-object/from16 v16, v10

    move-object v10, v0

    move-object/from16 v11, v17

    :try_start_60
    invoke-virtual/range {v4 .. v11}, Lcom/android/server/content/ContentService$ObserverNode;->dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[ILandroid/util/SparseIntArray;)V

    .line 212
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 213
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .local v4, "sorted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    move v6, v5

    .local v6, "i":I
    :goto_6d
    move-object/from16 v7, v17

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v8

    .end local v17    # "pidCounts":Landroid/util/SparseIntArray;
    .local v7, "pidCounts":Landroid/util/SparseIntArray;
    if-ge v6, v8, :cond_85

    .line 215
    invoke-virtual {v7, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v17, v7

    goto :goto_6d

    .line 217
    .end local v6    # "i":I
    :cond_85
    new-instance v6, Lcom/android/server/content/ContentService$2;

    invoke-direct {v6, v1, v7}, Lcom/android/server/content/ContentService$2;-><init>(Lcom/android/server/content/ContentService;Landroid/util/SparseIntArray;)V

    invoke-static {v4, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 231
    move v6, v5

    .restart local v6    # "i":I
    :goto_8e
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_ba

    .line 232
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 233
    .local v8, "pid":I
    const-string v9, "  pid "

    invoke-virtual {v3, v9}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const-string v9, ": "

    invoke-virtual {v3, v9}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 234
    invoke-virtual {v7, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    invoke-virtual {v3, v9}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const-string v9, " observers"

    invoke-virtual {v3, v9}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 231
    .end local v8    # "pid":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_8e

    .line 236
    .end local v6    # "i":I
    :cond_ba
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 237
    const-string v6, " Total number of nodes: "

    invoke-virtual {v3, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    aget v6, v0, v5

    invoke-virtual {v3, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 238
    const-string v6, " Total number of observers: "

    invoke-virtual {v3, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const/4 v6, 0x1

    aget v6, v0, v6

    invoke-virtual {v3, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 239
    .end local v0    # "counts":[I
    .end local v4    # "sorted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v7    # "pidCounts":Landroid/util/SparseIntArray;
    monitor-exit v16
    :try_end_d3
    .catchall {:try_start_60 .. :try_end_d3} :catchall_12e

    .line 241
    :try_start_d3
    iget-object v4, v1, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    monitor-enter v4
    :try_end_d6
    .catchall {:try_start_d3 .. :try_end_d6} :catchall_130

    .line 242
    :try_start_d6
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 243
    const-string v0, "Cached content:"

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 244
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 245
    nop

    .local v5, "i":I
    :goto_e2
    move v0, v5

    .end local v5    # "i":I
    .local v0, "i":I
    iget-object v5, v1, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_11c

    .line 246
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "User "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 247
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 248
    iget-object v5, v1, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 249
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 245
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "i":I
    .restart local v5    # "i":I
    goto :goto_e2

    .line 251
    .end local v5    # "i":I
    :cond_11c
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 252
    monitor-exit v4
    :try_end_120
    .catchall {:try_start_d6 .. :try_end_120} :catchall_126

    .line 254
    :try_start_120
    invoke-static {v14, v15}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V
    :try_end_123
    .catchall {:try_start_120 .. :try_end_123} :catchall_135

    .line 255
    nop

    .line 256
    monitor-exit p0

    return-void

    .line 252
    :catchall_126
    move-exception v0

    :try_start_127
    monitor-exit v4
    :try_end_128
    .catchall {:try_start_127 .. :try_end_128} :catchall_126

    :try_start_128
    throw v0
    :try_end_129
    .catchall {:try_start_128 .. :try_end_129} :catchall_130

    .line 239
    :catchall_129
    move-exception v0

    move-object/from16 v16, v10

    :goto_12c
    :try_start_12c
    monitor-exit v16
    :try_end_12d
    .catchall {:try_start_12c .. :try_end_12d} :catchall_12e

    :try_start_12d
    throw v0
    :try_end_12e
    .catchall {:try_start_12d .. :try_end_12e} :catchall_130

    :catchall_12e
    move-exception v0

    goto :goto_12c

    .line 254
    :catchall_130
    move-exception v0

    :try_start_131
    invoke-static {v14, v15}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v0
    :try_end_135
    .catchall {:try_start_131 .. :try_end_135} :catchall_135

    .line 191
    .end local v3    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v13    # "dumpAll":Z
    .end local v14    # "identityToken":J
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pw_":Ljava/io/PrintWriter;
    .end local p3    # "args":[Ljava/lang/String;
    :catchall_135
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/content/ContentService;
    throw v0
.end method

.method enforceCrossUserPermissionForInjector(ILjava/lang/String;)V
    .registers 3
    .param p1, "userHandle"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 1713
    invoke-direct {p0, p1, p2}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 1714
    return-void
.end method

.method public getCache(Ljava/lang/String;Landroid/net/Uri;I)Landroid/os/Bundle;
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "key"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    .line 1271
    const-string v0, "ContentService"

    invoke-direct {p0, p3, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 1272
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CACHE_CONTENT"

    const-string v2, "ContentService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 1276
    invoke-direct {p0, p2}, Lcom/android/server/content/ContentService;->getProviderPackageName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1277
    .local v0, "providerPackageName":Ljava/lang/String;
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 1279
    .local v1, "fullKey":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;"
    iget-object v2, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1280
    :try_start_2a
    invoke-direct {p0, p3, v0}, Lcom/android/server/content/ContentService;->findOrCreateCacheLocked(ILjava/lang/String;)Landroid/util/ArrayMap;

    move-result-object v3

    .line 1282
    .local v3, "cache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;Landroid/os/Bundle;>;"
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    monitor-exit v2

    return-object v4

    .line 1283
    .end local v3    # "cache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;Landroid/os/Bundle;>;"
    :catchall_36
    move-exception v3

    monitor-exit v2
    :try_end_38
    .catchall {:try_start_2a .. :try_end_38} :catchall_36

    throw v3
.end method

.method public getCurrentSyncs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/SyncInfo;",
            ">;"
        }
    .end annotation

    .line 1081
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/content/ContentService;->getCurrentSyncsAsUser(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentSyncsAsUser(I)Ljava/util/List;
    .registers 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/SyncInfo;",
            ">;"
        }
    .end annotation

    .line 1090
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to read the sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 1092
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYNC_STATS"

    const-string/jumbo v2, "no permission to read the sync stats"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GET_ACCOUNTS"

    .line 1096
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2b

    const/4 v0, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v0, 0x0

    .line 1098
    .local v0, "canAccessAccounts":Z
    :goto_2c
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v1

    .line 1100
    .local v1, "identityToken":J
    :try_start_30
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    .line 1101
    invoke-virtual {v3, p1, v0}, Lcom/android/server/content/SyncStorageEngine;->getCurrentSyncsCopy(IZ)Ljava/util/List;

    move-result-object v3
    :try_end_3c
    .catchall {:try_start_30 .. :try_end_3c} :catchall_40

    .line 1103
    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1100
    return-object v3

    .line 1103
    :catchall_40
    move-exception v3

    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I
    .registers 4
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "providerName"    # Ljava/lang/String;

    .line 940
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/content/ContentService;->getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I
    .registers 8
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "providerName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 949
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to read the sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 951
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYNC_SETTINGS"

    const-string/jumbo v2, "no permission to read the sync settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 956
    .local v0, "identityToken":J
    :try_start_23
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 957
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v2, :cond_32

    .line 958
    const/4 v3, 0x0

    invoke-virtual {v2, p1, p3, p2, v3}, Lcom/android/server/content/SyncManager;->computeSyncable(Landroid/accounts/Account;ILjava/lang/String;Z)I

    move-result v3
    :try_end_2e
    .catchall {:try_start_23 .. :try_end_2e} :catchall_38

    .line 962
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 958
    return v3

    .line 962
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :cond_32
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 963
    nop

    .line 964
    const/4 v2, -0x1

    return v2

    .line 962
    :catchall_38
    move-exception v2

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getMasterSyncAutomatically()Z
    .registers 2

    .line 1001
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/content/ContentService;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v0

    return v0
.end method

.method public getMasterSyncAutomaticallyAsUser(I)Z
    .registers 6
    .param p1, "userId"    # I

    .line 1010
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to read the sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 1012
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYNC_SETTINGS"

    const-string/jumbo v2, "no permission to read the sync settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 1017
    .local v0, "identityToken":J
    :try_start_23
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 1018
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v2, :cond_35

    .line 1019
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/content/SyncStorageEngine;->getMasterSyncAutomatically(I)Z

    move-result v3
    :try_end_31
    .catchall {:try_start_23 .. :try_end_31} :catchall_3b

    .line 1022
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1019
    return v3

    .line 1022
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :cond_35
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1023
    nop

    .line 1024
    const/4 v2, 0x0

    return v2

    .line 1022
    :catchall_3b
    move-exception v2

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getMiSyncPauseToTime(Landroid/accounts/Account;I)J
    .registers 5
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "uid"    # I

    .line 1696
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    invoke-static {v0, p0, p1, p2}, Lcom/android/server/content/ContentServiceInjector;->getMiSyncPauseToTime(Landroid/content/Context;Lcom/android/server/content/ContentService;Landroid/accounts/Account;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMiSyncStrategy(Landroid/accounts/Account;I)I
    .registers 4
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "uid"    # I

    .line 1708
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    invoke-static {v0, p0, p1, p2}, Lcom/android/server/content/ContentServiceInjector;->getMiSyncStrategy(Landroid/content/Context;Lcom/android/server/content/ContentService;Landroid/accounts/Account;I)I

    move-result v0

    return v0
.end method

.method public getPeriodicSyncs(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Ljava/util/List;
    .registers 9
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "providerName"    # Ljava/lang/String;
    .param p3, "cname"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/PeriodicSync;",
            ">;"
        }
    .end annotation

    .line 919
    if-eqz p1, :cond_38

    .line 922
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 925
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYNC_SETTINGS"

    const-string/jumbo v2, "no permission to read the sync settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 929
    .local v0, "userId":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v1

    .line 931
    .local v1, "identityToken":J
    :try_start_1a
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v3

    new-instance v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v4, p1, p2, v0}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Lcom/android/server/content/SyncManager;->getPeriodicSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Ljava/util/List;

    move-result-object v3
    :try_end_27
    .catchall {:try_start_1a .. :try_end_27} :catchall_2b

    .line 934
    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 931
    return-object v3

    .line 934
    :catchall_2b
    move-exception v3

    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v3

    .line 923
    .end local v0    # "userId":I
    .end local v1    # "identityToken":J
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Authority must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 920
    :cond_38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Account must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;I)[Ljava/lang/String;
    .registers 7
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 760
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to read sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 764
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 766
    .local v0, "identityToken":J
    :try_start_19
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 767
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    invoke-virtual {v2, p1, p2}, Lcom/android/server/content/SyncManager;->getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3
    :try_end_21
    .catchall {:try_start_19 .. :try_end_21} :catchall_25

    .line 769
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 767
    return-object v3

    .line 769
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_25
    move-exception v2

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getSyncAdapterTypes()[Landroid/content/SyncAdapterType;
    .registers 2

    .line 732
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/content/ContentService;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    move-result-object v0

    return-object v0
.end method

.method public getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;
    .registers 6
    .param p1, "userId"    # I

    .line 745
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to read sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 749
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 751
    .local v0, "identityToken":J
    :try_start_19
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 752
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    invoke-virtual {v2, p1}, Lcom/android/server/content/SyncManager;->getSyncAdapterTypes(I)[Landroid/content/SyncAdapterType;

    move-result-object v3
    :try_end_21
    .catchall {:try_start_19 .. :try_end_21} :catchall_25

    .line 754
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 752
    return-object v3

    .line 754
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_25
    move-exception v2

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z
    .registers 4
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "providerName"    # Ljava/lang/String;

    .line 775
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/content/ContentService;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .registers 8
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "providerName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 784
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to read the sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 786
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYNC_SETTINGS"

    const-string/jumbo v2, "no permission to read the sync settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 791
    .local v0, "identityToken":J
    :try_start_23
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 792
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v2, :cond_35

    .line 793
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    .line 794
    invoke-virtual {v3, p1, p3, p2}, Lcom/android/server/content/SyncStorageEngine;->getSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;)Z

    move-result v3
    :try_end_31
    .catchall {:try_start_23 .. :try_end_31} :catchall_3b

    .line 797
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 793
    return v3

    .line 797
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :cond_35
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 798
    nop

    .line 799
    const/4 v2, 0x0

    return v2

    .line 797
    :catchall_3b
    move-exception v2

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v2
.end method

.method getSyncManagerForInjector()Lcom/android/server/content/SyncManager;
    .registers 2

    .line 1717
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v0

    return-object v0
.end method

.method public getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Landroid/content/SyncStatusInfo;
    .registers 5
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "cname"    # Landroid/content/ComponentName;

    .line 1109
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/content/ContentService;->getSyncStatusAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Landroid/content/SyncStatusInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSyncStatusAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Landroid/content/SyncStatusInfo;
    .registers 10
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "cname"    # Landroid/content/ComponentName;
    .param p4, "userId"    # I

    .line 1119
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_57

    .line 1123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to read the sync stats for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p4, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 1125
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYNC_STATS"

    const-string/jumbo v2, "no permission to read the sync stats"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 1130
    .local v0, "identityToken":J
    :try_start_29
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2
    :try_end_2d
    .catchall {:try_start_29 .. :try_end_2d} :catchall_52

    .line 1131
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-nez v2, :cond_34

    .line 1132
    const/4 v3, 0x0

    .line 1142
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1132
    return-object v3

    .line 1135
    :cond_34
    if-eqz p1, :cond_4a

    if-eqz p2, :cond_4a

    .line 1136
    :try_start_38
    new-instance v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v3, p1, p2, p4}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 1138
    .local v3, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    nop

    .line 1140
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/content/SyncStorageEngine;->getStatusByAuthority(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/content/SyncStatusInfo;

    move-result-object v4
    :try_end_46
    .catchall {:try_start_38 .. :try_end_46} :catchall_52

    .line 1142
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1140
    return-object v4

    .line 1138
    .end local v3    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :cond_4a
    :try_start_4a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Must call sync status with valid authority"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_52
    .catchall {:try_start_4a .. :try_end_52} :catchall_52

    .line 1142
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_52
    move-exception v2

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v2

    .line 1120
    .end local v0    # "identityToken":J
    :cond_57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Authority must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isSyncActive(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Z
    .registers 10
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "cname"    # Landroid/content/ComponentName;

    .line 1063
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYNC_STATS"

    const-string/jumbo v2, "no permission to read the sync stats"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1066
    .local v0, "userId":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v1

    .line 1068
    .local v1, "identityToken":J
    :try_start_12
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v3
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_2e

    .line 1069
    .local v3, "syncManager":Lcom/android/server/content/SyncManager;
    if-nez v3, :cond_1d

    .line 1070
    const/4 v4, 0x0

    .line 1075
    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1070
    return v4

    .line 1072
    :cond_1d
    :try_start_1d
    invoke-virtual {v3}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v4

    new-instance v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v5, p1, p2, v0}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    invoke-virtual {v4, v5}, Lcom/android/server/content/SyncStorageEngine;->isSyncActive(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v4
    :try_end_2a
    .catchall {:try_start_1d .. :try_end_2a} :catchall_2e

    .line 1075
    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1072
    return v4

    .line 1075
    .end local v3    # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_2e
    move-exception v3

    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public isSyncPending(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Z
    .registers 5
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "cname"    # Landroid/content/ComponentName;

    .line 1148
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/content/ContentService;->isSyncPendingAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public isSyncPendingAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Z
    .registers 10
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "cname"    # Landroid/content/ComponentName;
    .param p4, "userId"    # I

    .line 1154
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYNC_STATS"

    const-string/jumbo v2, "no permission to read the sync stats"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to retrieve the sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p4, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 1158
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 1159
    .local v0, "identityToken":J
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 1160
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-nez v2, :cond_2b

    const/4 v3, 0x0

    return v3

    .line 1164
    :cond_2b
    if-eqz p1, :cond_41

    if-eqz p2, :cond_41

    .line 1165
    :try_start_2f
    new-instance v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v3, p1, p2, p4}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 1167
    .local v3, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    nop

    .line 1169
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/content/SyncStorageEngine;->isSyncPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v4
    :try_end_3d
    .catchall {:try_start_2f .. :try_end_3d} :catchall_49

    .line 1171
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1169
    return v4

    .line 1167
    .end local v3    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :cond_41
    :try_start_41
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid authority specified"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_49
    .catchall {:try_start_41 .. :try_end_49} :catchall_49

    .line 1171
    :catchall_49
    move-exception v3

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public notifyChange(Landroid/net/Uri;Landroid/database/IContentObserver;ZIII)V
    .registers 34
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/database/IContentObserver;
    .param p3, "observerWantsSelfNotifications"    # Z
    .param p4, "flags"    # I
    .param p5, "userHandle"    # I
    .param p6, "targetSdkVersion"    # I

    move-object/from16 v8, p0

    move-object/from16 v15, p1

    .line 392
    if-eqz v15, :cond_1b0

    .line 396
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    .line 397
    .local v14, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v17

    .line 398
    .local v17, "pid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v18

    .line 400
    .local v18, "callingUserHandle":I
    const/4 v5, 0x2

    const/4 v6, 0x1

    move-object v1, v8

    move-object v2, v15

    move/from16 v3, v17

    move v4, v14

    move/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/content/ContentService;->handleIncomingUser(Landroid/net/Uri;IIIZI)I

    move-result v7

    .line 403
    .end local p5    # "userHandle":I
    .local v7, "userHandle":I
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 404
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Landroid/app/ActivityManagerInternal;->checkContentProviderAccess(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 405
    .local v6, "msg":Ljava/lang/String;
    if-eqz v6, :cond_6d

    .line 406
    const/16 v0, 0x1a

    move/from16 v5, p6

    if-ge v5, v0, :cond_67

    .line 409
    const-string v0, "Failed to find provider"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    goto :goto_6f

    .line 413
    :cond_40
    const-string v0, "ContentService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring notify for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    return-void

    .line 407
    :cond_67
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 421
    :cond_6d
    move/from16 v5, p6

    :goto_6f
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v3, v0

    .line 423
    .local v3, "identityToken":J
    :try_start_74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 424
    .local v2, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    iget-object v1, v8, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    monitor-enter v1
    :try_end_7d
    .catchall {:try_start_74 .. :try_end_7d} :catchall_1a7

    .line 425
    :try_start_7d
    iget-object v9, v8, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;
    :try_end_7f
    .catchall {:try_start_7d .. :try_end_7f} :catchall_19b

    const/4 v11, 0x0

    move-object v10, v15

    move-object/from16 v12, p2

    move/from16 v13, p3

    move/from16 v19, v14

    move/from16 v14, p4

    .end local v14    # "uid":I
    .local v19, "uid":I
    move v15, v7

    move-object/from16 v16, v2

    :try_start_8c
    invoke-virtual/range {v9 .. v16}, Lcom/android/server/content/ContentService$ObserverNode;->collectObserversLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZIILjava/util/ArrayList;)V

    .line 427
    monitor-exit v1
    :try_end_90
    .catchall {:try_start_8c .. :try_end_90} :catchall_192

    .line 428
    :try_start_90
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_94
    .catchall {:try_start_90 .. :try_end_94} :catchall_18a

    move v9, v0

    .line 429
    .local v9, "numCalls":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_96
    move v10, v0

    .end local v0    # "i":I
    .local v10, "i":I
    if-ge v10, v9, :cond_136

    .line 430
    :try_start_99
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/ContentService$ObserverCall;
    :try_end_9f
    .catchall {:try_start_99 .. :try_end_9f} :catchall_12d

    move-object v11, v0

    .line 432
    .local v11, "oc":Lcom/android/server/content/ContentService$ObserverCall;
    :try_start_a0
    iget-object v0, v11, Lcom/android/server/content/ContentService$ObserverCall;->mObserver:Landroid/database/IContentObserver;

    iget-boolean v12, v11, Lcom/android/server/content/ContentService$ObserverCall;->mSelfChange:Z
    :try_end_a4
    .catch Landroid/os/RemoteException; {:try_start_a0 .. :try_end_a4} :catch_bd
    .catchall {:try_start_a0 .. :try_end_a4} :catchall_b4

    move-object/from16 v13, p1

    :try_start_a6
    invoke-interface {v0, v12, v13, v7}, Landroid/database/IContentObserver;->onChange(ZLandroid/net/Uri;I)V
    :try_end_a9
    .catch Landroid/os/RemoteException; {:try_start_a6 .. :try_end_a9} :catch_b2
    .catchall {:try_start_a6 .. :try_end_a9} :catchall_b0

    .line 451
    nop

    .line 429
    move-object/from16 v21, v2

    move-wide/from16 v23, v3

    goto/16 :goto_112

    .line 466
    .end local v2    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .end local v9    # "numCalls":I
    .end local v10    # "i":I
    .end local v11    # "oc":Lcom/android/server/content/ContentService$ObserverCall;
    :catchall_b0
    move-exception v0

    goto :goto_b7

    .line 435
    .restart local v2    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .restart local v9    # "numCalls":I
    .restart local v10    # "i":I
    .restart local v11    # "oc":Lcom/android/server/content/ContentService$ObserverCall;
    :catch_b2
    move-exception v0

    goto :goto_c0

    .line 466
    .end local v2    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .end local v9    # "numCalls":I
    .end local v10    # "i":I
    .end local v11    # "oc":Lcom/android/server/content/ContentService$ObserverCall;
    :catchall_b4
    move-exception v0

    move-object/from16 v13, p1

    .end local v3    # "identityToken":J
    .end local v6    # "msg":Ljava/lang/String;
    .end local v19    # "uid":I
    .local v9, "identityToken":J
    .local v11, "msg":Ljava/lang/String;
    .local v12, "uid":I
    :goto_b7
    move-wide v9, v3

    move-object v11, v6

    move/from16 v12, v19

    goto/16 :goto_1ac

    .line 435
    .end local v12    # "uid":I
    .restart local v2    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .restart local v3    # "identityToken":J
    .restart local v6    # "msg":Ljava/lang/String;
    .local v9, "numCalls":I
    .restart local v10    # "i":I
    .local v11, "oc":Lcom/android/server/content/ContentService$ObserverCall;
    .restart local v19    # "uid":I
    :catch_bd
    move-exception v0

    move-object/from16 v13, p1

    :goto_c0
    move-object v12, v0

    .line 436
    .local v12, "ex":Landroid/os/RemoteException;
    :try_start_c1
    iget-object v14, v8, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    monitor-enter v14
    :try_end_c4
    .catchall {:try_start_c1 .. :try_end_c4} :catchall_12b

    .line 437
    :try_start_c4
    const-string v0, "ContentService"

    const-string v15, "Found dead observer, removing"

    invoke-static {v0, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object v0, v11, Lcom/android/server/content/ContentService$ObserverCall;->mObserver:Landroid/database/IContentObserver;

    invoke-interface {v0}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 439
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v15, v11, Lcom/android/server/content/ContentService$ObserverCall;->mNode:Lcom/android/server/content/ContentService$ObserverNode;

    .line 440
    # getter for: Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;
    invoke-static {v15}, Lcom/android/server/content/ContentService$ObserverNode;->access$200(Lcom/android/server/content/ContentService$ObserverNode;)Ljava/util/ArrayList;

    move-result-object v15

    .line 441
    .local v15, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v16
    :try_end_db
    .catchall {:try_start_c4 .. :try_end_db} :catchall_11a

    .line 442
    .local v16, "numList":I
    move/from16 v1, v16

    const/16 v16, 0x0

    .local v1, "numList":I
    .local v16, "j":I
    :goto_df
    move/from16 v20, v16

    .end local v16    # "j":I
    .local v20, "j":I
    move-object/from16 v21, v2

    move/from16 v2, v20

    if-ge v2, v1, :cond_10f

    .line 443
    .end local v20    # "j":I
    .local v2, "j":I
    .local v21, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    :try_start_e7
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    :try_end_ed
    .catchall {:try_start_e7 .. :try_end_ed} :catchall_10b

    move-object/from16 v22, v16

    .line 444
    .local v22, "oe":Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    move-wide/from16 v23, v3

    move-object/from16 v3, v22

    :try_start_f3
    iget-object v4, v3, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    .end local v22    # "oe":Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    .local v3, "oe":Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    .local v23, "identityToken":J
    invoke-interface {v4}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v4, v0, :cond_104

    .line 445
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 446
    add-int/lit8 v20, v2, -0x1

    .line 447
    .end local v2    # "j":I
    .restart local v20    # "j":I
    add-int/lit8 v1, v1, -0x1

    .line 442
    .end local v3    # "oe":Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    move/from16 v2, v20

    .end local v20    # "j":I
    .restart local v2    # "j":I
    :cond_104
    add-int/lit8 v16, v2, 0x1

    .end local v2    # "j":I
    .restart local v16    # "j":I
    move-object/from16 v2, v21

    move-wide/from16 v3, v23

    goto :goto_df

    .line 450
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v1    # "numList":I
    .end local v15    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;>;"
    .end local v16    # "j":I
    .end local v23    # "identityToken":J
    .local v3, "identityToken":J
    :catchall_10b
    move-exception v0

    move-wide/from16 v23, v3

    .end local v3    # "identityToken":J
    .restart local v23    # "identityToken":J
    goto :goto_11f

    .end local v23    # "identityToken":J
    .restart local v3    # "identityToken":J
    :cond_10f
    move-wide/from16 v23, v3

    .end local v3    # "identityToken":J
    .restart local v23    # "identityToken":J
    monitor-exit v14

    .line 429
    .end local v11    # "oc":Lcom/android/server/content/ContentService$ObserverCall;
    .end local v12    # "ex":Landroid/os/RemoteException;
    :goto_112
    add-int/lit8 v0, v10, 0x1

    .end local v10    # "i":I
    .local v0, "i":I
    move-object/from16 v2, v21

    move-wide/from16 v3, v23

    goto/16 :goto_96

    .line 450
    .end local v0    # "i":I
    .end local v21    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .end local v23    # "identityToken":J
    .local v2, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .restart local v3    # "identityToken":J
    .restart local v10    # "i":I
    .restart local v11    # "oc":Lcom/android/server/content/ContentService$ObserverCall;
    .restart local v12    # "ex":Landroid/os/RemoteException;
    :catchall_11a
    move-exception v0

    move-object/from16 v21, v2

    move-wide/from16 v23, v3

    .end local v2    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .end local v3    # "identityToken":J
    .restart local v21    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .restart local v23    # "identityToken":J
    :goto_11f
    monitor-exit v14
    :try_end_120
    .catchall {:try_start_f3 .. :try_end_120} :catchall_129

    :try_start_120
    throw v0
    :try_end_121
    .catchall {:try_start_120 .. :try_end_121} :catchall_121

    .line 466
    .end local v9    # "numCalls":I
    .end local v10    # "i":I
    .end local v11    # "oc":Lcom/android/server/content/ContentService$ObserverCall;
    .end local v12    # "ex":Landroid/os/RemoteException;
    .end local v21    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    :catchall_121
    move-exception v0

    move-object v11, v6

    move/from16 v12, v19

    move-wide/from16 v9, v23

    goto/16 :goto_1ac

    .line 450
    .restart local v9    # "numCalls":I
    .restart local v10    # "i":I
    .restart local v11    # "oc":Lcom/android/server/content/ContentService$ObserverCall;
    .restart local v12    # "ex":Landroid/os/RemoteException;
    .restart local v21    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    :catchall_129
    move-exception v0

    goto :goto_11f

    .line 466
    .end local v9    # "numCalls":I
    .end local v10    # "i":I
    .end local v11    # "oc":Lcom/android/server/content/ContentService$ObserverCall;
    .end local v12    # "ex":Landroid/os/RemoteException;
    .end local v21    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .end local v23    # "identityToken":J
    .restart local v3    # "identityToken":J
    :catchall_12b
    move-exception v0

    goto :goto_130

    :catchall_12d
    move-exception v0

    move-object/from16 v13, p1

    .end local v6    # "msg":Ljava/lang/String;
    .end local v19    # "uid":I
    .local v9, "identityToken":J
    .local v11, "msg":Ljava/lang/String;
    .local v12, "uid":I
    :goto_130
    move-wide v9, v3

    move-object v11, v6

    move/from16 v12, v19

    .end local v3    # "identityToken":J
    .restart local v23    # "identityToken":J
    goto/16 :goto_1ac

    .line 453
    .end local v11    # "msg":Ljava/lang/String;
    .end local v12    # "uid":I
    .end local v23    # "identityToken":J
    .restart local v2    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .restart local v3    # "identityToken":J
    .restart local v6    # "msg":Ljava/lang/String;
    .local v9, "numCalls":I
    .restart local v19    # "uid":I
    :cond_136
    move-object/from16 v21, v2

    move-wide/from16 v23, v3

    move-object/from16 v13, p1

    .end local v2    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .end local v3    # "identityToken":J
    .restart local v21    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .restart local v23    # "identityToken":J
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_16e

    .line 454
    :try_start_140
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v0

    .line 455
    .local v0, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v0, :cond_16e

    .line 456
    const/4 v2, 0x0

    .line 457
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v11
    :try_end_14b
    .catchall {:try_start_140 .. :try_end_14b} :catchall_167

    move/from16 v12, v19

    :try_start_14d
    invoke-direct {v8, v12}, Lcom/android/server/content/ContentService;->getSyncExemptionForCaller(I)I

    move-result v14
    :try_end_151
    .catchall {:try_start_14d .. :try_end_151} :catchall_162

    .line 456
    .end local v19    # "uid":I
    .restart local v12    # "uid":I
    move-object v1, v0

    move-object/from16 v15, v21

    .end local v21    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .local v15, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    move/from16 v25, v9

    move-wide/from16 v9, v23

    move/from16 v3, v18

    .end local v23    # "identityToken":J
    .local v9, "identityToken":J
    .local v25, "numCalls":I
    move v4, v12

    move-object v5, v11

    move-object v11, v6

    move v6, v14

    .end local v6    # "msg":Ljava/lang/String;
    .restart local v11    # "msg":Ljava/lang/String;
    :try_start_15e
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/content/SyncManager;->scheduleLocalSync(Landroid/accounts/Account;IILjava/lang/String;I)V

    .end local v0    # "syncManager":Lcom/android/server/content/SyncManager;
    goto :goto_177

    .line 466
    .end local v9    # "identityToken":J
    .end local v11    # "msg":Ljava/lang/String;
    .end local v15    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .end local v25    # "numCalls":I
    .restart local v6    # "msg":Ljava/lang/String;
    .restart local v23    # "identityToken":J
    :catchall_162
    move-exception v0

    move-object v11, v6

    move-wide/from16 v9, v23

    .end local v6    # "msg":Ljava/lang/String;
    .end local v23    # "identityToken":J
    .restart local v9    # "identityToken":J
    .restart local v11    # "msg":Ljava/lang/String;
    goto :goto_1ac

    .end local v9    # "identityToken":J
    .end local v11    # "msg":Ljava/lang/String;
    .end local v12    # "uid":I
    .restart local v6    # "msg":Ljava/lang/String;
    .restart local v19    # "uid":I
    .restart local v23    # "identityToken":J
    :catchall_167
    move-exception v0

    move-object v11, v6

    move/from16 v12, v19

    move-wide/from16 v9, v23

    .end local v6    # "msg":Ljava/lang/String;
    .end local v19    # "uid":I
    .end local v23    # "identityToken":J
    .restart local v9    # "identityToken":J
    .restart local v11    # "msg":Ljava/lang/String;
    .restart local v12    # "uid":I
    goto :goto_1ac

    .line 461
    .end local v11    # "msg":Ljava/lang/String;
    .end local v12    # "uid":I
    .restart local v6    # "msg":Ljava/lang/String;
    .local v9, "numCalls":I
    .restart local v19    # "uid":I
    .restart local v21    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .restart local v23    # "identityToken":J
    :cond_16e
    move-object v11, v6

    move/from16 v25, v9

    move/from16 v12, v19

    move-object/from16 v15, v21

    move-wide/from16 v9, v23

    .end local v6    # "msg":Ljava/lang/String;
    .end local v19    # "uid":I
    .end local v21    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .end local v23    # "identityToken":J
    .local v9, "identityToken":J
    .restart local v11    # "msg":Ljava/lang/String;
    .restart local v12    # "uid":I
    .restart local v15    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .restart local v25    # "numCalls":I
    :goto_177
    iget-object v1, v8, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    monitor-enter v1
    :try_end_17a
    .catchall {:try_start_15e .. :try_end_17a} :catchall_1a3

    .line 462
    :try_start_17a
    invoke-direct/range {p0 .. p1}, Lcom/android/server/content/ContentService;->getProviderPackageName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 463
    .local v0, "providerPackageName":Ljava/lang/String;
    invoke-direct {v8, v7, v0, v13}, Lcom/android/server/content/ContentService;->invalidateCacheLocked(ILjava/lang/String;Landroid/net/Uri;)V

    .line 464
    .end local v0    # "providerPackageName":Ljava/lang/String;
    monitor-exit v1
    :try_end_182
    .catchall {:try_start_17a .. :try_end_182} :catchall_187

    .line 466
    .end local v15    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .end local v25    # "numCalls":I
    invoke-static {v9, v10}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 467
    nop

    .line 468
    return-void

    .line 464
    .restart local v15    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .restart local v25    # "numCalls":I
    :catchall_187
    move-exception v0

    :try_start_188
    monitor-exit v1
    :try_end_189
    .catchall {:try_start_188 .. :try_end_189} :catchall_187

    :try_start_189
    throw v0
    :try_end_18a
    .catchall {:try_start_189 .. :try_end_18a} :catchall_1a3

    .line 466
    .end local v9    # "identityToken":J
    .end local v11    # "msg":Ljava/lang/String;
    .end local v12    # "uid":I
    .end local v15    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .end local v25    # "numCalls":I
    .restart local v3    # "identityToken":J
    .restart local v6    # "msg":Ljava/lang/String;
    .restart local v19    # "uid":I
    :catchall_18a
    move-exception v0

    move-wide v9, v3

    move-object v11, v6

    move/from16 v12, v19

    move-object/from16 v13, p1

    .end local v3    # "identityToken":J
    .end local v6    # "msg":Ljava/lang/String;
    .end local v19    # "uid":I
    .restart local v9    # "identityToken":J
    .restart local v11    # "msg":Ljava/lang/String;
    .restart local v12    # "uid":I
    goto :goto_1ac

    .line 427
    .end local v9    # "identityToken":J
    .end local v11    # "msg":Ljava/lang/String;
    .end local v12    # "uid":I
    .restart local v2    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .restart local v3    # "identityToken":J
    .restart local v6    # "msg":Ljava/lang/String;
    .restart local v19    # "uid":I
    :catchall_192
    move-exception v0

    move-object v15, v2

    move-wide v9, v3

    move-object v11, v6

    move/from16 v12, v19

    move-object/from16 v13, p1

    .end local v2    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .end local v3    # "identityToken":J
    .end local v6    # "msg":Ljava/lang/String;
    .end local v19    # "uid":I
    .restart local v9    # "identityToken":J
    .restart local v11    # "msg":Ljava/lang/String;
    .restart local v12    # "uid":I
    .restart local v15    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    goto :goto_1a1

    .end local v9    # "identityToken":J
    .end local v11    # "msg":Ljava/lang/String;
    .end local v12    # "uid":I
    .end local v15    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .restart local v2    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .restart local v3    # "identityToken":J
    .restart local v6    # "msg":Ljava/lang/String;
    .restart local v14    # "uid":I
    :catchall_19b
    move-exception v0

    move-wide v9, v3

    move-object v11, v6

    move v12, v14

    move-object v13, v15

    move-object v15, v2

    .end local v2    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .end local v3    # "identityToken":J
    .end local v6    # "msg":Ljava/lang/String;
    .end local v14    # "uid":I
    .restart local v9    # "identityToken":J
    .restart local v11    # "msg":Ljava/lang/String;
    .restart local v12    # "uid":I
    .restart local v15    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    :goto_1a1
    :try_start_1a1
    monitor-exit v1
    :try_end_1a2
    .catchall {:try_start_1a1 .. :try_end_1a2} :catchall_1a5

    :try_start_1a2
    throw v0
    :try_end_1a3
    .catchall {:try_start_1a2 .. :try_end_1a3} :catchall_1a3

    .line 466
    .end local v15    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    :catchall_1a3
    move-exception v0

    goto :goto_1ac

    .line 427
    .restart local v15    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    :catchall_1a5
    move-exception v0

    goto :goto_1a1

    .line 466
    .end local v9    # "identityToken":J
    .end local v11    # "msg":Ljava/lang/String;
    .end local v12    # "uid":I
    .end local v15    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .restart local v3    # "identityToken":J
    .restart local v6    # "msg":Ljava/lang/String;
    .restart local v14    # "uid":I
    :catchall_1a7
    move-exception v0

    move-wide v9, v3

    move-object v11, v6

    move v12, v14

    move-object v13, v15

    .end local v3    # "identityToken":J
    .end local v6    # "msg":Ljava/lang/String;
    .end local v14    # "uid":I
    .restart local v9    # "identityToken":J
    .restart local v11    # "msg":Ljava/lang/String;
    .restart local v12    # "uid":I
    :goto_1ac
    invoke-static {v9, v10}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v0

    .line 393
    .end local v7    # "userHandle":I
    .end local v9    # "identityToken":J
    .end local v11    # "msg":Ljava/lang/String;
    .end local v12    # "uid":I
    .end local v17    # "pid":I
    .end local v18    # "callingUserHandle":I
    .restart local p5    # "userHandle":I
    :cond_1b0
    move-object v13, v15

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Uri must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public notifyChange(Landroid/net/Uri;Landroid/database/IContentObserver;ZZ)V
    .registers 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/database/IContentObserver;
    .param p3, "observerWantsSelfNotifications"    # Z
    .param p4, "syncToNetwork"    # Z

    .line 481
    nop

    .line 482
    nop

    .line 483
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    const/16 v6, 0x2710

    .line 481
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/content/ContentService;->notifyChange(Landroid/net/Uri;Landroid/database/IContentObserver;ZIII)V

    .line 484
    return-void
.end method

.method onBootPhase(I)V
    .registers 3
    .param p1, "phase"    # I

    .line 305
    const/16 v0, 0x226

    if-eq p1, v0, :cond_5

    goto :goto_8

    .line 307
    :cond_5
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    .line 310
    :goto_8
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    if-eqz v0, :cond_11

    .line 311
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    invoke-virtual {v0, p1}, Lcom/android/server/content/SyncManager;->onBootPhase(I)V

    .line 313
    :cond_11
    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 1684
    new-instance v0, Lcom/android/server/content/ContentShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/content/ContentShellCommand;-><init>(Landroid/content/IContentService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/content/ContentShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 1685
    return-void
.end method

.method onStartUser(I)V
    .registers 3
    .param p1, "userHandle"    # I

    .line 179
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    invoke-virtual {v0, p1}, Lcom/android/server/content/SyncManager;->onStartUser(I)V

    .line 180
    :cond_9
    return-void
.end method

.method onStopUser(I)V
    .registers 3
    .param p1, "userHandle"    # I

    .line 187
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    invoke-virtual {v0, p1}, Lcom/android/server/content/SyncManager;->onStopUser(I)V

    .line 188
    :cond_9
    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 262
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/IContentService$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    .line 263
    :catch_5
    move-exception v0

    .line 266
    .local v0, "e":Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_11

    .line 267
    const-string v1, "ContentService"

    const-string v2, "Content Service Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 269
    :cond_11
    throw v0
.end method

.method onUnlockUser(I)V
    .registers 3
    .param p1, "userHandle"    # I

    .line 183
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    invoke-virtual {v0, p1}, Lcom/android/server/content/SyncManager;->onUnlockUser(I)V

    .line 184
    :cond_9
    return-void
.end method

.method public putCache(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;I)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "key"    # Landroid/net/Uri;
    .param p3, "value"    # Landroid/os/Bundle;
    .param p4, "userId"    # I

    .line 1249
    const/4 v0, 0x1

    invoke-static {p3, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 1250
    const-string v0, "ContentService"

    invoke-direct {p0, p4, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 1251
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CACHE_CONTENT"

    const-string v2, "ContentService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 1255
    invoke-direct {p0, p2}, Lcom/android/server/content/ContentService;->getProviderPackageName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1256
    .local v0, "providerPackageName":Ljava/lang/String;
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 1258
    .local v1, "fullKey":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;"
    iget-object v2, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1259
    :try_start_2e
    invoke-direct {p0, p4, v0}, Lcom/android/server/content/ContentService;->findOrCreateCacheLocked(ILjava/lang/String;)Landroid/util/ArrayMap;

    move-result-object v3

    .line 1261
    .local v3, "cache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;Landroid/os/Bundle;>;"
    if-eqz p3, :cond_38

    .line 1262
    invoke-virtual {v3, v1, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3b

    .line 1264
    :cond_38
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1266
    .end local v3    # "cache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;Landroid/os/Bundle;>;"
    :goto_3b
    monitor-exit v2

    .line 1267
    return-void

    .line 1266
    :catchall_3d
    move-exception v3

    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_2e .. :try_end_3f} :catchall_3d

    throw v3
.end method

.method public registerContentObserver(Landroid/net/Uri;ZLandroid/database/IContentObserver;)V
    .registers 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "notifyForDescendants"    # Z
    .param p3, "observer"    # Landroid/database/IContentObserver;

    .line 362
    nop

    .line 363
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 362
    const/16 v5, 0x2710

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/content/ContentService;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/IContentObserver;II)V

    .line 364
    return-void
.end method

.method public registerContentObserver(Landroid/net/Uri;ZLandroid/database/IContentObserver;II)V
    .registers 24
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "notifyForDescendants"    # Z
    .param p3, "observer"    # Landroid/database/IContentObserver;
    .param p4, "userHandle"    # I
    .param p5, "targetSdkVersion"    # I

    move-object/from16 v8, p0

    move-object/from16 v15, p1

    .line 326
    if-eqz p3, :cond_89

    if-eqz v15, :cond_89

    .line 330
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    .line 331
    .local v14, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v17

    .line 333
    .local v17, "pid":I
    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, v8

    move-object v2, v15

    move/from16 v3, v17

    move v4, v14

    move/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/content/ContentService;->handleIncomingUser(Landroid/net/Uri;IIIZI)I

    move-result v1

    .line 336
    .end local p4    # "userHandle":I
    .local v1, "userHandle":I
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 337
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/app/ActivityManagerInternal;->checkContentProviderAccess(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 338
    .local v2, "msg":Ljava/lang/String;
    if-eqz v2, :cond_6b

    .line 339
    const/16 v0, 0x1a

    move/from16 v3, p5

    if-ge v3, v0, :cond_65

    .line 342
    const-string v0, "Failed to find provider"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    goto :goto_6d

    .line 346
    :cond_3e
    const-string v0, "ContentService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring content changes for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    return-void

    .line 340
    :cond_65
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 352
    :cond_6b
    move/from16 v3, p5

    :goto_6d
    iget-object v4, v8, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    monitor-enter v4

    .line 353
    :try_start_70
    iget-object v9, v8, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    iget-object v13, v8, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;
    :try_end_74
    .catchall {:try_start_70 .. :try_end_74} :catchall_83

    move-object v10, v15

    move-object/from16 v11, p3

    move/from16 v12, p2

    move v5, v14

    .end local v14    # "uid":I
    .local v5, "uid":I
    move/from16 v15, v17

    move/from16 v16, v1

    :try_start_7e
    invoke-virtual/range {v9 .. v16}, Lcom/android/server/content/ContentService$ObserverNode;->addObserverLocked(Landroid/net/Uri;Landroid/database/IContentObserver;ZLjava/lang/Object;III)V

    .line 357
    monitor-exit v4

    .line 358
    return-void

    .line 357
    .end local v5    # "uid":I
    .restart local v14    # "uid":I
    :catchall_83
    move-exception v0

    move v5, v14

    .end local v14    # "uid":I
    .restart local v5    # "uid":I
    :goto_85
    monitor-exit v4
    :try_end_86
    .catchall {:try_start_7e .. :try_end_86} :catchall_87

    throw v0

    :catchall_87
    move-exception v0

    goto :goto_85

    .line 327
    .end local v1    # "userHandle":I
    .end local v2    # "msg":Ljava/lang/String;
    .end local v5    # "uid":I
    .end local v17    # "pid":I
    .restart local p4    # "userHandle":I
    :cond_89
    move/from16 v3, p5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must pass a valid uri and observer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 12
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 885
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/server/content/SyncSecurityInjector;->permitControlSyncForAccount(Landroid/content/Context;Landroid/accounts/Account;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 886
    return-void

    .line 890
    :cond_9
    const/4 v0, 0x1

    invoke-static {p3, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 891
    if-eqz p1, :cond_62

    .line 894
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5a

    .line 897
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v2, "no permission to write the sync settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0, p3}, Lcom/android/server/content/ContentService;->validateExtras(ILandroid/os/Bundle;)V

    .line 902
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 904
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 905
    .local v1, "userId":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v2

    .line 907
    .local v2, "identityToken":J
    :try_start_32
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v4

    new-instance v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v5, p1, p2, v1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "removePeriodicSync() by uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 908
    invoke-virtual {v4, v5, p3, v6}, Lcom/android/server/content/SyncManager;->removePeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_50
    .catchall {:try_start_32 .. :try_end_50} :catchall_55

    .line 912
    invoke-static {v2, v3}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 913
    nop

    .line 914
    return-void

    .line 912
    :catchall_55
    move-exception v4

    invoke-static {v2, v3}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v4

    .line 895
    .end local v0    # "callingUid":I
    .end local v1    # "userId":I
    .end local v2    # "identityToken":J
    :cond_5a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Authority must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 892
    :cond_62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Account must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V
    .registers 6
    .param p1, "callback"    # Landroid/content/ISyncStatusObserver;

    .line 1190
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 1192
    .local v0, "identityToken":J
    :try_start_4
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 1193
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v2, :cond_13

    if-eqz p1, :cond_13

    .line 1194
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/content/SyncStorageEngine;->removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_18

    .line 1197
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :cond_13
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1198
    nop

    .line 1199
    return-void

    .line 1197
    :catchall_18
    move-exception v2

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 21
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    move-object/from16 v1, p0

    .line 511
    move-object/from16 v10, p3

    iget-object v0, v1, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    move-object/from16 v11, p1

    invoke-static {v0, v11}, Lcom/android/server/content/SyncSecurityInjector;->permitControlSyncForAccount(Landroid/content/Context;Landroid/accounts/Account;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 512
    return-void

    .line 516
    :cond_f
    const/4 v0, 0x1

    invoke-static {v10, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 517
    invoke-static/range {p3 .. p3}, Landroid/content/ContentResolver;->validateSyncExtrasBundle(Landroid/os/Bundle;)V

    .line 518
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v12

    .line 519
    .local v12, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    .line 521
    .local v13, "uId":I
    invoke-direct {v1, v13, v10}, Lcom/android/server/content/ContentService;->validateExtras(ILandroid/os/Bundle;)V

    .line 522
    invoke-direct {v1, v13, v10}, Lcom/android/server/content/ContentService;->getSyncExemptionAndCleanUpExtrasForCaller(ILandroid/os/Bundle;)I

    move-result v14

    .line 526
    .local v14, "syncExemption":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v2

    move-wide v8, v2

    .line 528
    .local v8, "identityToken":J
    :try_start_2a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v0
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_47

    .line 529
    .local v0, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v0, :cond_41

    .line 530
    const/4 v15, -0x2

    move-object v2, v0

    move-object v3, v11

    move v4, v12

    move v5, v13

    move-object/from16 v6, p2

    move-object v7, v10

    move-wide v10, v8

    move v8, v15

    .end local v8    # "identityToken":J
    .local v10, "identityToken":J
    move v9, v14

    :try_start_3b
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;II)V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_3f

    .end local v0    # "syncManager":Lcom/android/server/content/SyncManager;
    goto :goto_42

    .line 535
    :catchall_3f
    move-exception v0

    goto :goto_49

    .end local v10    # "identityToken":J
    .restart local v8    # "identityToken":J
    :cond_41
    move-wide v10, v8

    .end local v8    # "identityToken":J
    .restart local v10    # "identityToken":J
    :goto_42
    invoke-static {v10, v11}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 536
    nop

    .line 537
    return-void

    .line 535
    .end local v10    # "identityToken":J
    .restart local v8    # "identityToken":J
    :catchall_47
    move-exception v0

    move-wide v10, v8

    .end local v8    # "identityToken":J
    .restart local v10    # "identityToken":J
    :goto_49
    invoke-static {v10, v11}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public resetTodayStats()V
    .registers 4

    .line 1668
    const-string/jumbo v0, "resetTodayStats"

    invoke-direct {p0, v0}, Lcom/android/server/content/ContentService;->enforceShell(Ljava/lang/String;)V

    .line 1670
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    if-eqz v0, :cond_1c

    .line 1671
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1673
    .local v0, "token":J
    :try_start_e
    iget-object v2, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->resetTodayStats()V
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_17

    .line 1675
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1676
    goto :goto_1c

    .line 1675
    :catchall_17
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1678
    .end local v0    # "token":J
    :cond_1c
    :goto_1c
    return-void
.end method

.method public setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V
    .registers 15
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "providerName"    # Ljava/lang/String;
    .param p3, "syncable"    # I

    .line 972
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/server/content/SyncSecurityInjector;->permitControlSyncForAccount(Landroid/content/Context;Landroid/accounts/Account;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 973
    return-void

    .line 977
    :cond_9
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_46

    .line 980
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v2, "no permission to write the sync settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    invoke-static {p3}, Lcom/android/server/content/ContentService;->normalizeSyncable(I)I

    move-result p3

    .line 984
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 986
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 987
    .local v1, "userId":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v2

    move-wide v9, v2

    .line 989
    .local v9, "identityToken":J
    :try_start_2a
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 990
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v2, :cond_3c

    .line 991
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    move-object v4, p1

    move v5, v1

    move-object v6, p2

    move v7, p3

    move v8, v0

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/content/SyncStorageEngine;->setIsSyncable(Landroid/accounts/Account;ILjava/lang/String;II)V
    :try_end_3c
    .catchall {:try_start_2a .. :try_end_3c} :catchall_41

    .line 995
    .end local v2    # "syncManager":Lcom/android/server/content/SyncManager;
    :cond_3c
    invoke-static {v9, v10}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 996
    nop

    .line 997
    return-void

    .line 995
    :catchall_41
    move-exception v2

    invoke-static {v9, v10}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v2

    .line 978
    .end local v0    # "callingUid":I
    .end local v1    # "userId":I
    .end local v9    # "identityToken":J
    :cond_46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Authority must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMasterSyncAutomatically(Z)V
    .registers 3
    .param p1, "flag"    # Z

    .line 1029
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/content/ContentService;->setMasterSyncAutomaticallyAsUser(ZI)V

    .line 1030
    return-void
.end method

.method public setMasterSyncAutomaticallyAsUser(ZI)V
    .registers 9
    .param p1, "flag"    # Z
    .param p2, "userId"    # I

    .line 1037
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/content/SyncSecurityInjector;->permitControlSyncForAccount(Landroid/content/Context;Landroid/accounts/Account;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1038
    return-void

    .line 1042
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to set the sync status for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 1044
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v2, "no permission to write the sync settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1049
    .local v0, "callingUid":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v1

    .line 1051
    .local v1, "identityToken":J
    :try_start_31
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v3

    .line 1052
    .local v3, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v3, :cond_42

    .line 1053
    invoke-virtual {v3}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v4

    .line 1054
    invoke-direct {p0, v0}, Lcom/android/server/content/ContentService;->getSyncExemptionForCaller(I)I

    move-result v5

    .line 1053
    invoke-virtual {v4, p1, p2, v5, v0}, Lcom/android/server/content/SyncStorageEngine;->setMasterSyncAutomatically(ZIII)V
    :try_end_42
    .catchall {:try_start_31 .. :try_end_42} :catchall_47

    .line 1057
    .end local v3    # "syncManager":Lcom/android/server/content/SyncManager;
    :cond_42
    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1058
    nop

    .line 1059
    return-void

    .line 1057
    :catchall_47
    move-exception v3

    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setMiSyncPauseToTime(Landroid/accounts/Account;JI)V
    .registers 11
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "pauseTimeMillis"    # J
    .param p4, "uid"    # I

    .line 1690
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/content/ContentServiceInjector;->setMiSyncPauseToTime(Landroid/content/Context;Lcom/android/server/content/ContentService;Landroid/accounts/Account;JI)V

    .line 1692
    return-void
.end method

.method public setMiSyncStrategy(Landroid/accounts/Account;II)V
    .registers 5
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "strategy"    # I
    .param p3, "uid"    # I

    .line 1702
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/android/server/content/ContentServiceInjector;->setMiSyncStrategy(Landroid/content/Context;Lcom/android/server/content/ContentService;Landroid/accounts/Account;II)V

    .line 1704
    return-void
.end method

.method public setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V
    .registers 5
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "providerName"    # Ljava/lang/String;
    .param p3, "sync"    # Z

    .line 804
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/content/ContentService;->setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V

    .line 805
    return-void
.end method

.method public setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V
    .registers 20
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "providerName"    # Ljava/lang/String;
    .param p3, "sync"    # Z
    .param p4, "userId"    # I

    move-object v1, p0

    .line 813
    move/from16 v9, p4

    iget-object v0, v1, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    move-object/from16 v10, p1

    invoke-static {v0, v10}, Lcom/android/server/content/SyncSecurityInjector;->permitControlSyncForAccount(Landroid/content/Context;Landroid/accounts/Account;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 814
    return-void

    .line 818
    :cond_e
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5f

    .line 821
    iget-object v0, v1, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v3, "no permission to write the sync settings"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no permission to modify the sync settings for user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v9, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 825
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 826
    .local v11, "callingUid":I
    invoke-direct {v1, v11}, Lcom/android/server/content/ContentService;->getSyncExemptionForCaller(I)I

    move-result v12

    .line 828
    .local v12, "syncExemptionFlag":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v2

    move-wide v13, v2

    .line 830
    .local v13, "identityToken":J
    :try_start_40
    invoke-direct {v1}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v0

    .line 831
    .local v0, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v0, :cond_55

    .line 832
    invoke-virtual {v0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v2

    move-object v3, v10

    move v4, v9

    move-object/from16 v5, p2

    move/from16 v6, p3

    move v7, v12

    move v8, v11

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/content/SyncStorageEngine;->setSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;ZII)V
    :try_end_55
    .catchall {:try_start_40 .. :try_end_55} :catchall_5a

    .line 836
    .end local v0    # "syncManager":Lcom/android/server/content/SyncManager;
    :cond_55
    invoke-static {v13, v14}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 837
    nop

    .line 838
    return-void

    .line 836
    :catchall_5a
    move-exception v0

    invoke-static {v13, v14}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v0

    .line 819
    .end local v11    # "callingUid":I
    .end local v12    # "syncExemptionFlag":I
    .end local v13    # "identityToken":J
    :cond_5f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Authority must be non-empty"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sync(Landroid/content/SyncRequest;)V
    .registers 3
    .param p1, "request"    # Landroid/content/SyncRequest;

    .line 550
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/content/ContentService;->syncAsUser(Landroid/content/SyncRequest;I)V

    .line 551
    return-void
.end method

.method public syncAsUser(Landroid/content/SyncRequest;I)V
    .registers 24
    .param p1, "request"    # Landroid/content/SyncRequest;
    .param p2, "userId"    # I

    move-object/from16 v1, p0

    .line 572
    move/from16 v10, p2

    iget-object v0, v1, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/content/SyncSecurityInjector;->permitControlSyncForAccount(Landroid/content/Context;Landroid/accounts/Account;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 573
    return-void

    .line 577
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no permission to request sync as user: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v10, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 578
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 580
    .local v11, "callerUid":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getBundle()Landroid/os/Bundle;

    move-result-object v9

    .line 582
    .local v9, "extras":Landroid/os/Bundle;
    invoke-direct {v1, v11, v9}, Lcom/android/server/content/ContentService;->validateExtras(ILandroid/os/Bundle;)V

    .line 583
    invoke-direct {v1, v11, v9}, Lcom/android/server/content/ContentService;->getSyncExemptionAndCleanUpExtrasForCaller(ILandroid/os/Bundle;)I

    move-result v19

    .line 587
    .local v19, "syncExemption":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v2

    move-wide v7, v2

    .line 589
    .local v7, "identityToken":J
    :try_start_3a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v0
    :try_end_3e
    .catchall {:try_start_3a .. :try_end_3e} :catchall_a3

    .line 590
    .local v0, "syncManager":Lcom/android/server/content/SyncManager;
    if-nez v0, :cond_44

    .line 614
    invoke-static {v7, v8}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 591
    return-void

    .line 593
    :cond_44
    :try_start_44
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getSyncFlexTime()J

    move-result-wide v16

    .line 594
    .local v16, "flextime":J
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getSyncRunTime()J

    move-result-wide v2

    move-wide v14, v2

    .line 595
    .local v14, "runAtTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->isPeriodic()Z

    move-result v2
    :try_end_51
    .catchall {:try_start_44 .. :try_end_51} :catchall_a3

    if-eqz v2, :cond_84

    .line 596
    :try_start_53
    iget-object v2, v1, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v4, "no permission to write the sync settings"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    new-instance v13, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 601
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getProvider()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v13, v2, v3, v10}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 603
    .local v13, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-direct {v1, v14, v15}, Lcom/android/server/content/ContentService;->clampPeriod(J)J

    move-result-wide v2

    move-wide v14, v2

    .line 605
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v12

    move-object/from16 v18, v9

    invoke-virtual/range {v12 .. v18}, Lcom/android/server/content/SyncManager;->updateOrAddPeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V
    :try_end_78
    .catchall {:try_start_53 .. :try_end_78} :catchall_7e

    .line 607
    .end local v13    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    nop

    .line 614
    move-object v12, v9

    move/from16 v20, v11

    move-wide v10, v7

    goto :goto_9c

    .line 614
    .end local v0    # "syncManager":Lcom/android/server/content/SyncManager;
    .end local v14    # "runAtTime":J
    .end local v16    # "flextime":J
    :catchall_7e
    move-exception v0

    move-object v12, v9

    move/from16 v20, v11

    move-wide v10, v7

    goto :goto_a8

    .line 608
    .restart local v0    # "syncManager":Lcom/android/server/content/SyncManager;
    .restart local v14    # "runAtTime":J
    .restart local v16    # "flextime":J
    :cond_84
    nop

    .line 609
    :try_start_85
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getProvider()Ljava/lang/String;

    move-result-object v6
    :try_end_8d
    .catchall {:try_start_85 .. :try_end_8d} :catchall_a3

    const/4 v12, -0x2

    .line 608
    move-object v2, v0

    move v4, v10

    move v5, v11

    move/from16 v20, v11

    move-wide v10, v7

    move-object v7, v9

    .line 608
    .end local v7    # "identityToken":J
    .end local v11    # "callerUid":I
    .local v10, "identityToken":J
    .local v20, "callerUid":I
    move v8, v12

    move-object v12, v9

    move/from16 v9, v19

    .line 608
    .end local v9    # "extras":Landroid/os/Bundle;
    .local v12, "extras":Landroid/os/Bundle;
    :try_start_99
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;II)V
    :try_end_9c
    .catchall {:try_start_99 .. :try_end_9c} :catchall_a1

    .line 614
    .end local v0    # "syncManager":Lcom/android/server/content/SyncManager;
    .end local v14    # "runAtTime":J
    .end local v16    # "flextime":J
    :goto_9c
    invoke-static {v10, v11}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 615
    nop

    .line 616
    return-void

    .line 614
    :catchall_a1
    move-exception v0

    goto :goto_a8

    .line 614
    .end local v10    # "identityToken":J
    .end local v12    # "extras":Landroid/os/Bundle;
    .end local v20    # "callerUid":I
    .restart local v7    # "identityToken":J
    .restart local v9    # "extras":Landroid/os/Bundle;
    .restart local v11    # "callerUid":I
    :catchall_a3
    move-exception v0

    move-object v12, v9

    move/from16 v20, v11

    move-wide v10, v7

    .line 614
    .end local v7    # "identityToken":J
    .end local v9    # "extras":Landroid/os/Bundle;
    .end local v11    # "callerUid":I
    .restart local v10    # "identityToken":J
    .restart local v12    # "extras":Landroid/os/Bundle;
    .restart local v20    # "callerUid":I
    :goto_a8
    invoke-static {v10, v11}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public unregisterContentObserver(Landroid/database/IContentObserver;)V
    .registers 4
    .param p1, "observer"    # Landroid/database/IContentObserver;

    .line 368
    if-eqz p1, :cond_f

    .line 371
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    monitor-enter v0

    .line 372
    :try_start_5
    iget-object v1, p0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    invoke-virtual {v1, p1}, Lcom/android/server/content/ContentService$ObserverNode;->removeObserverLocked(Landroid/database/IContentObserver;)Z

    .line 374
    monitor-exit v0

    .line 375
    return-void

    .line 374
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw v1

    .line 369
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must pass a valid observer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
