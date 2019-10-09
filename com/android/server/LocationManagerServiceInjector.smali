.class public Lcom/android/server/LocationManagerServiceInjector;
.super Ljava/lang/Object;
.source "LocationManagerServiceInjector.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mLastProviderRequest:Lcom/android/internal/location/ProviderRequest;

.field private static mMetok:Lcom/android/server/location/MetokProxy;

.field private static final sBackupGpsListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/location/IGnssStatusListener;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static final sBackupReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Lcom/android/server/LocationManagerService$Receiver;",
            ">;"
        }
    .end annotation
.end field

.field private static sContext:Landroid/content/Context;

.field private static final sGpsStatusListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/location/IGnssStatusListener;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static sGpsStatusProviderRef:Landroid/location/IGnssStatusProvider;

.field private static sLocationManagerService:Lcom/android/server/LocationManagerService;

.field private static sLock:Ljava/lang/Object;

.field private static sMiuiFakeGpsProvider:Lcom/android/server/MiuiFakeGpsProvider;

.field private static sPolicyListener:Landroid/location/ILocationPolicyListener;

.field private static sPolicyManager:Landroid/location/ILocationPolicyManager;

.field private static sRealProviders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/location/LocationProviderInterface;",
            ">;"
        }
    .end annotation
.end field

.field private static sReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Lcom/android/server/LocationManagerService$Receiver;",
            ">;"
        }
    .end annotation
.end field

.field private static sRestrictBackgroundAll:Z

.field private static final sUidRules:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    const-string v0, "LocationManagerInjector"

    sput-object v0, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/LocationManagerServiceInjector;->sPolicyManager:Landroid/location/ILocationPolicyManager;

    .line 54
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/LocationManagerServiceInjector;->sRestrictBackgroundAll:Z

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/LocationManagerServiceInjector;->sBackupReceivers:Ljava/util/HashMap;

    .line 64
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/server/LocationManagerServiceInjector;->sUidRules:Landroid/util/SparseIntArray;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/LocationManagerServiceInjector;->sGpsStatusListeners:Ljava/util/HashMap;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/LocationManagerServiceInjector;->sBackupGpsListeners:Ljava/util/HashMap;

    .line 329
    new-instance v0, Lcom/android/server/LocationManagerServiceInjector$1;

    invoke-direct {v0}, Lcom/android/server/LocationManagerServiceInjector$1;-><init>()V

    sput-object v0, Lcom/android/server/LocationManagerServiceInjector;->sPolicyListener:Landroid/location/ILocationPolicyListener;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .registers 1

    .line 34
    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->sLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Landroid/util/SparseIntArray;
    .registers 1

    .line 34
    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->sUidRules:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$200(II)V
    .registers 2
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .line 34
    invoke-static {p0, p1}, Lcom/android/server/LocationManagerServiceInjector;->checkCurrentLocationRequest(II)V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .registers 1

    .line 34
    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .line 34
    sput-boolean p0, Lcom/android/server/LocationManagerServiceInjector;->sRestrictBackgroundAll:Z

    return p0
.end method

.method public static bindLocationPolicyService(Landroid/location/ILocationPolicyManager;)V
    .registers 5
    .param p0, "policyManager"    # Landroid/location/ILocationPolicyManager;

    .line 89
    sput-object p0, Lcom/android/server/LocationManagerServiceInjector;->sPolicyManager:Landroid/location/ILocationPolicyManager;

    .line 90
    new-instance v0, Lcom/android/server/MiuiFakeGpsProvider;

    sget-object v1, Lcom/android/server/LocationManagerServiceInjector;->sContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/LocationManagerServiceInjector;->sLocationManagerService:Lcom/android/server/LocationManagerService;

    sget-object v3, Lcom/android/server/LocationManagerServiceInjector;->sPolicyManager:Landroid/location/ILocationPolicyManager;

    check-cast v3, Lcom/android/server/LocationPolicyManagerService;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/MiuiFakeGpsProvider;-><init>(Landroid/content/Context;Landroid/location/ILocationManager;Lcom/android/server/LocationPolicyManagerService;)V

    sput-object v0, Lcom/android/server/LocationManagerServiceInjector;->sMiuiFakeGpsProvider:Lcom/android/server/MiuiFakeGpsProvider;

    .line 92
    :try_start_11
    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->sPolicyManager:Landroid/location/ILocationPolicyManager;

    sget-object v1, Lcom/android/server/LocationManagerServiceInjector;->sPolicyListener:Landroid/location/ILocationPolicyListener;

    invoke-interface {v0, v1}, Landroid/location/ILocationPolicyManager;->registerListener(Landroid/location/ILocationPolicyListener;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_18} :catch_19

    .line 95
    goto :goto_1a

    .line 93
    :catch_19
    move-exception v0

    .line 96
    :goto_1a
    return-void
.end method

.method private static checkCurrentLocationRequest(II)V
    .registers 9
    .param p0, "uid"    # I
    .param p1, "uidRules"    # I

    .line 262
    if-eqz p1, :cond_66

    .line 263
    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 265
    :try_start_5
    sget-object v1, Lcom/android/server/LocationManagerServiceInjector;->sGpsStatusListeners:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 266
    .local v1, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/location/IGnssStatusListener;>;>;"
    if-eqz v1, :cond_5e

    .line 267
    sget-object v2, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "remove gps listener from GpsStatusProvider"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 269
    .local v3, "l":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/location/IGnssStatusListener;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_63

    if-nez v4, :cond_32

    .line 269
    .end local v3    # "l":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/location/IGnssStatusListener;>;"
    goto :goto_1f

    .line 271
    .restart local v3    # "l":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/location/IGnssStatusListener;>;"
    :cond_32
    :try_start_32
    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->sGpsStatusProviderRef:Landroid/location/IGnssStatusProvider;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/IGnssStatusListener;

    invoke-interface {v4, v5}, Landroid/location/IGnssStatusProvider;->unregisterGnssStatusCallback(Landroid/location/IGnssStatusListener;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_3d} :catch_3e
    .catchall {:try_start_32 .. :try_end_3d} :catchall_63

    .line 274
    goto :goto_47

    .line 272
    :catch_3e
    move-exception v4

    .line 273
    .local v4, "e":Ljava/lang/Exception;
    :try_start_3f
    sget-object v5, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "mGpsStatusProvider.removeGpsStatusListener failed"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 275
    .end local v3    # "l":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/location/IGnssStatusListener;>;"
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_47
    goto :goto_1f

    .line 276
    :cond_48
    sget-object v2, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string v3, "backup gps listener in mBackupGpsListeners"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5e

    .line 278
    sget-object v2, Lcom/android/server/LocationManagerServiceInjector;->sBackupGpsListeners:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    :cond_5e
    invoke-static {p0}, Lcom/android/server/LocationManagerServiceInjector;->removeAndBackupLocationRequestIfNeeded(I)V

    .line 283
    .end local v1    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/location/IGnssStatusListener;>;>;"
    monitor-exit v0

    goto :goto_ca

    :catchall_63
    move-exception v1

    monitor-exit v0
    :try_end_65
    .catchall {:try_start_3f .. :try_end_65} :catchall_63

    throw v1

    .line 286
    :cond_66
    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 288
    :try_start_69
    sget-object v1, Lcom/android/server/LocationManagerServiceInjector;->sBackupGpsListeners:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 289
    .restart local v1    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/location/IGnssStatusListener;>;>;"
    if-eqz v1, :cond_c6

    .line 290
    sget-object v2, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string v3, "add gps listener to GpsStatusProvider"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_82
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 292
    .restart local v3    # "l":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/location/IGnssStatusListener;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4
    :try_end_92
    .catchall {:try_start_69 .. :try_end_92} :catchall_cb

    if-nez v4, :cond_95

    .line 292
    .end local v3    # "l":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/location/IGnssStatusListener;>;"
    goto :goto_82

    .line 294
    .restart local v3    # "l":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/location/IGnssStatusListener;>;"
    :cond_95
    :try_start_95
    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->sGpsStatusProviderRef:Landroid/location/IGnssStatusProvider;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/IGnssStatusListener;

    invoke-interface {v4, v5}, Landroid/location/IGnssStatusProvider;->registerGnssStatusCallback(Landroid/location/IGnssStatusListener;)V
    :try_end_a0
    .catch Landroid/os/DeadObjectException; {:try_start_95 .. :try_end_a0} :catch_ab
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_a0} :catch_a1
    .catchall {:try_start_95 .. :try_end_a0} :catchall_cb

    .line 300
    goto :goto_aa

    .line 298
    :catch_a1
    move-exception v4

    .line 299
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_a2
    sget-object v5, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "mGpsStatusProvider.addGpsStatusListener failed"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 301
    .end local v3    # "l":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/location/IGnssStatusListener;>;"
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_aa
    goto :goto_82

    .line 295
    .restart local v3    # "l":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/location/IGnssStatusListener;>;"
    :catch_ab
    move-exception v4

    .line 296
    .local v4, "e":Landroid/os/DeadObjectException;
    sget-object v5, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "listener already dead"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    goto :goto_82

    .line 302
    .end local v3    # "l":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/location/IGnssStatusListener;>;"
    .end local v4    # "e":Landroid/os/DeadObjectException;
    :cond_b5
    sget-object v2, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "remove gps listener in mBackupGpsListeners"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    sget-object v2, Lcom/android/server/LocationManagerServiceInjector;->sBackupGpsListeners:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    :cond_c6
    invoke-static {p0}, Lcom/android/server/LocationManagerServiceInjector;->restoreBlockedLocationRequestIfNeeded(I)V

    .line 307
    .end local v1    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/location/IGnssStatusListener;>;>;"
    monitor-exit v0

    .line 309
    :goto_ca
    return-void

    .line 307
    :catchall_cb
    move-exception v1

    monitor-exit v0
    :try_end_cd
    .catchall {:try_start_a2 .. :try_end_cd} :catchall_cb

    throw v1
.end method

.method public static checkIfRequestBlockedByPolicy(ILjava/lang/String;Landroid/location/IGnssStatusListener;)Z
    .registers 10
    .param p0, "uid"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/location/IGnssStatusListener;

    .line 119
    invoke-static {p0}, Lcom/android/server/LocationManagerServiceInjector;->isRequestBlockedByPolicy(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 120
    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " addGpsStatusListener("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") is blocked by policy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const/4 v0, 0x1

    return v0

    .line 124
    :cond_2a
    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 125
    :try_start_2d
    sget-object v1, Lcom/android/server/LocationManagerServiceInjector;->sGpsStatusListeners:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 126
    .local v1, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/location/IGnssStatusListener;>;>;"
    if-nez v1, :cond_41

    .line 127
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 129
    :cond_41
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_45
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_70

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 130
    .local v3, "l":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/location/IGnssStatusListener;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_59

    .end local v3    # "l":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/location/IGnssStatusListener;>;"
    goto :goto_45

    .line 131
    .restart local v3    # "l":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/location/IGnssStatusListener;>;"
    :cond_59
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/IGnssStatusListener;

    invoke-interface {v5}, Landroid/location/IGnssStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {p2}, Landroid/location/IGnssStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6f

    .line 133
    monitor-exit v0

    return v4

    .line 135
    .end local v3    # "l":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/location/IGnssStatusListener;>;"
    :cond_6f
    goto :goto_45

    .line 136
    :cond_70
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    sget-object v2, Lcom/android/server/LocationManagerServiceInjector;->sGpsStatusListeners:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .end local v1    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/location/IGnssStatusListener;>;>;"
    monitor-exit v0

    .line 139
    return v4

    .line 138
    :catchall_83
    move-exception v1

    monitor-exit v0
    :try_end_85
    .catchall {:try_start_2d .. :try_end_85} :catchall_83

    throw v1
.end method

.method public static checkIfRequestBlockedByPolicy(ILjava/lang/String;Landroid/location/LocationRequest;)Z
    .registers 6
    .param p0, "uid"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "request"    # Landroid/location/LocationRequest;

    .line 110
    invoke-static {p0}, Lcom/android/server/LocationManagerServiceInjector;->isRequestBlockedByPolicy(I)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 111
    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/location/LocationRequest;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is blocked by policy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v0, 0x1

    return v0

    .line 114
    :cond_32
    const/4 v0, 0x0

    return v0
.end method

.method public static checkWhenRemoveListenerLocked(ILandroid/location/IGnssStatusListener;)Z
    .registers 8
    .param p0, "uid"    # I
    .param p1, "listener"    # Landroid/location/IGnssStatusListener;

    .line 169
    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->sGpsStatusListeners:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 170
    .local v0, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/location/IGnssStatusListener;>;>;"
    if-eqz v0, :cond_6e

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_6e

    .line 171
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .local v1, "tr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/location/IGnssStatusListener;>;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 173
    .local v3, "l":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/location/IGnssStatusListener;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_33

    .line 174
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    goto :goto_1d

    .line 177
    :cond_33
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/IGnssStatusListener;

    invoke-interface {v4}, Landroid/location/IGnssStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {p1}, Landroid/location/IGnssStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 178
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    .end local v3    # "l":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/location/IGnssStatusListener;>;"
    :cond_4a
    goto :goto_1d

    .line 181
    :cond_4b
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 182
    .restart local v3    # "l":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/location/IGnssStatusListener;>;"
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 183
    .end local v3    # "l":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/location/IGnssStatusListener;>;"
    goto :goto_4f

    .line 184
    :cond_5f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_6e

    .line 185
    sget-object v2, Lcom/android/server/LocationManagerServiceInjector;->sGpsStatusListeners:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .end local v1    # "tr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/location/IGnssStatusListener;>;>;"
    :cond_6e
    sget-object v1, Lcom/android/server/LocationManagerServiceInjector;->sBackupGpsListeners:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_85

    .line 191
    sget-object v1, Lcom/android/server/LocationManagerServiceInjector;->sBackupGpsListeners:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const/4 v1, 0x1

    return v1

    .line 195
    :cond_85
    const/4 v1, 0x0

    return v1
.end method

.method public static checkWhenRemoveLocationRequestLocked(Landroid/location/ILocationListener;Landroid/app/PendingIntent;)Z
    .registers 5
    .param p0, "listener"    # Landroid/location/ILocationListener;
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .line 145
    if-nez p1, :cond_e

    if-eqz p0, :cond_5

    goto :goto_e

    .line 146
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "need either listener or intent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_e
    :goto_e
    if-eqz p1, :cond_1b

    if-nez p0, :cond_13

    goto :goto_1b

    .line 148
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot register both listener and intent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_1b
    :goto_1b
    if-eqz p1, :cond_27

    .line 150
    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->sBackupReceivers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/LocationManagerService$Receiver;

    .line 151
    .local v0, "receiver":Lcom/android/server/LocationManagerService$Receiver;
    move-object v1, p1

    .line 151
    .local v1, "key":Ljava/lang/Object;
    goto :goto_34

    .line 153
    .end local v0    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    .end local v1    # "key":Ljava/lang/Object;
    :cond_27
    invoke-interface {p0}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 154
    .local v1, "binder":Landroid/os/IBinder;
    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->sBackupReceivers:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/LocationManagerService$Receiver;

    .line 155
    .restart local v0    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    nop

    .line 159
    .local v1, "key":Ljava/lang/Object;
    :goto_34
    if-eqz v0, :cond_3d

    .line 160
    sget-object v2, Lcom/android/server/LocationManagerServiceInjector;->sBackupReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const/4 v2, 0x1

    return v2

    .line 164
    :cond_3d
    const/4 v2, 0x0

    return v2
.end method

.method public static createAndBindLP(Ljava/lang/String;Landroid/os/Handler;)V
    .registers 6
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "handler"    # Landroid/os/Handler;

    .line 352
    :try_start_0
    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->sContext:Landroid/content/Context;

    invoke-static {v0, p0, p1}, Lcom/android/server/location/MetokProxy;->createAndBind(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)Lcom/android/server/location/MetokProxy;

    move-result-object v0

    sput-object v0, Lcom/android/server/LocationManagerServiceInjector;->mMetok:Lcom/android/server/location/MetokProxy;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_49

    .line 357
    nop

    .line 358
    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->mMetok:Lcom/android/server/location/MetokProxy;

    if-eqz v0, :cond_48

    .line 359
    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string v1, "bind to metok LP"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->sRealProviders:Ljava/util/HashMap;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/LocationProviderInterface;

    .line 361
    .local v0, "gpsProvider":Lcom/android/server/location/LocationProviderInterface;
    if-eqz v0, :cond_25

    .line 362
    sget-object v1, Lcom/android/server/LocationManagerServiceInjector;->mMetok:Lcom/android/server/location/MetokProxy;

    invoke-virtual {v1, v0}, Lcom/android/server/location/MetokProxy;->setGpsProvider(Lcom/android/server/location/LocationProviderInterface;)V

    .line 364
    :cond_25
    sget-object v1, Lcom/android/server/LocationManagerServiceInjector;->sRealProviders:Ljava/util/HashMap;

    const-string/jumbo v2, "network"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/LocationProviderInterface;

    .line 365
    .local v1, "networkProvider":Lcom/android/server/location/LocationProviderInterface;
    if-eqz v1, :cond_37

    .line 366
    sget-object v2, Lcom/android/server/LocationManagerServiceInjector;->mMetok:Lcom/android/server/location/MetokProxy;

    invoke-virtual {v2, v1}, Lcom/android/server/location/MetokProxy;->setNetworkProvider(Lcom/android/server/location/LocationProviderInterface;)V

    .line 368
    :cond_37
    sget-object v2, Lcom/android/server/LocationManagerServiceInjector;->sRealProviders:Ljava/util/HashMap;

    const-string v3, "fused"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/LocationProviderInterface;

    .line 369
    .local v2, "fusedProvider":Lcom/android/server/location/LocationProviderInterface;
    if-eqz v2, :cond_48

    .line 370
    sget-object v3, Lcom/android/server/LocationManagerServiceInjector;->mMetok:Lcom/android/server/location/MetokProxy;

    invoke-virtual {v3, v2}, Lcom/android/server/location/MetokProxy;->setFusedProvider(Lcom/android/server/location/LocationProviderInterface;)V

    .line 373
    .end local v0    # "gpsProvider":Lcom/android/server/location/LocationProviderInterface;
    .end local v1    # "networkProvider":Lcom/android/server/location/LocationProviderInterface;
    .end local v2    # "fusedProvider":Lcom/android/server/location/LocationProviderInterface;
    :cond_48
    return-void

    .line 353
    :catch_49
    move-exception v0

    .line 354
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string v2, "failed to bind to metok LP"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/LocationManagerServiceInjector;->mMetok:Lcom/android/server/location/MetokProxy;

    .line 356
    return-void
.end method

.method public static dumpLp(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 452
    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->mMetok:Lcom/android/server/location/MetokProxy;

    if-eqz v0, :cond_9

    .line 453
    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->mMetok:Lcom/android/server/location/MetokProxy;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/location/MetokProxy;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 455
    :cond_9
    return-void
.end method

.method static getCurrentLocationRequestUids()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 312
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 313
    .local v0, "currentLrUids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v1, Lcom/android/server/LocationManagerServiceInjector;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 315
    :try_start_8
    sget-object v2, Lcom/android/server/LocationManagerServiceInjector;->sGpsStatusListeners:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 316
    .local v3, "k":Ljava/lang/Integer;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    .end local v3    # "k":Ljava/lang/Integer;
    goto :goto_12

    .line 319
    :cond_22
    sget-object v2, Lcom/android/server/LocationManagerServiceInjector;->sReceivers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_58

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 320
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Lcom/android/server/LocationManagerService$Receiver;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/LocationManagerService$Receiver;

    .line 321
    .local v4, "r":Lcom/android/server/LocationManagerService$Receiver;
    iget-object v5, v4, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v5, v5, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_57

    .line 322
    iget-object v5, v4, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v5, v5, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Lcom/android/server/LocationManagerService$Receiver;>;"
    .end local v4    # "r":Lcom/android/server/LocationManagerService$Receiver;
    :cond_57
    goto :goto_2c

    .line 325
    :cond_58
    monitor-exit v1

    .line 326
    return-object v0

    .line 325
    :catchall_5a
    move-exception v2

    monitor-exit v1
    :try_end_5c
    .catchall {:try_start_8 .. :try_end_5c} :catchall_5a

    throw v2
.end method

.method public static init(Lcom/android/server/LocationManagerService;Ljava/lang/Object;Landroid/content/Context;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .registers 5
    .param p0, "lms"    # Lcom/android/server/LocationManagerService;
    .param p1, "lmsLock"    # Ljava/lang/Object;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/LocationManagerService;",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/location/LocationProviderInterface;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Lcom/android/server/LocationManagerService$Receiver;",
            ">;)V"
        }
    .end annotation

    .line 77
    .local p3, "realProviders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/location/LocationProviderInterface;>;"
    .local p4, "allReceivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Object;Lcom/android/server/LocationManagerService$Receiver;>;"
    sput-object p1, Lcom/android/server/LocationManagerServiceInjector;->sLock:Ljava/lang/Object;

    .line 78
    sput-object p2, Lcom/android/server/LocationManagerServiceInjector;->sContext:Landroid/content/Context;

    .line 79
    sput-object p3, Lcom/android/server/LocationManagerServiceInjector;->sRealProviders:Ljava/util/HashMap;

    .line 80
    sput-object p4, Lcom/android/server/LocationManagerServiceInjector;->sReceivers:Ljava/util/HashMap;

    .line 81
    sput-object p0, Lcom/android/server/LocationManagerServiceInjector;->sLocationManagerService:Lcom/android/server/LocationManagerService;

    .line 82
    return-void
.end method

.method static isFakeGpsOn()Z
    .registers 1

    .line 459
    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->sPolicyManager:Landroid/location/ILocationPolicyManager;

    if-eqz v0, :cond_d

    .line 460
    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->sPolicyManager:Landroid/location/ILocationPolicyManager;

    check-cast v0, Lcom/android/server/LocationPolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/LocationPolicyManagerService;->getFakeGpsFeatureOnState()Z

    move-result v0

    return v0

    .line 462
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method static isPhoneStationary()Z
    .registers 1

    .line 466
    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->sPolicyManager:Landroid/location/ILocationPolicyManager;

    if-eqz v0, :cond_d

    .line 467
    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->sPolicyManager:Landroid/location/ILocationPolicyManager;

    check-cast v0, Lcom/android/server/LocationPolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/LocationPolicyManagerService;->getPhoneStationary()Z

    move-result v0

    return v0

    .line 469
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method private static isRequestBlockedByPolicy(I)Z
    .registers 4
    .param p0, "uid"    # I

    .line 99
    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 100
    :try_start_3
    sget-object v1, Lcom/android/server/LocationManagerServiceInjector;->sUidRules:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 101
    .local v1, "rules":I
    if-eqz v1, :cond_f

    .line 102
    const/4 v2, 0x1

    monitor-exit v0

    return v2

    .line 104
    :cond_f
    monitor-exit v0

    return v2

    .line 105
    .end local v1    # "rules":I
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public static locationSanitized(Landroid/location/Location;)Landroid/location/Location;
    .registers 2
    .param p0, "location"    # Landroid/location/Location;

    .line 445
    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->mMetok:Lcom/android/server/location/MetokProxy;

    if-eqz v0, :cond_b

    .line 446
    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->mMetok:Lcom/android/server/location/MetokProxy;

    invoke-virtual {v0, p0}, Lcom/android/server/location/MetokProxy;->locationSanitized(Landroid/location/Location;)Landroid/location/Location;

    move-result-object v0

    return-object v0

    .line 448
    :cond_b
    return-object p0
.end method

.method private static removeAndBackupLocationRequestIfNeeded(I)V
    .registers 8
    .param p0, "uid"    # I

    .line 199
    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 200
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 201
    .local v1, "backupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    sget-object v2, Lcom/android/server/LocationManagerServiceInjector;->sReceivers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 202
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Lcom/android/server/LocationManagerService$Receiver;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/LocationManagerService$Receiver;

    .line 203
    .local v4, "r":Lcom/android/server/LocationManagerService$Receiver;
    iget-object v5, v4, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v5, v5, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    if-ne v5, p0, :cond_31

    .line 204
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Lcom/android/server/LocationManagerService$Receiver;>;"
    .end local v4    # "r":Lcom/android/server/LocationManagerService$Receiver;
    :cond_31
    goto :goto_12

    .line 207
    :cond_32
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_83

    .line 208
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_83

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 210
    .local v3, "o":Ljava/lang/Object;
    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "backup receiver:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/android/server/LocationManagerServiceInjector;->sReceivers:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/LocationManagerService$Receiver;

    invoke-virtual {v6}, Lcom/android/server/LocationManagerService$Receiver;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->sBackupReceivers:Ljava/util/HashMap;

    sget-object v5, Lcom/android/server/LocationManagerServiceInjector;->sReceivers:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/LocationManagerService$Receiver;

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->sLocationManagerService:Lcom/android/server/LocationManagerService;

    sget-object v5, Lcom/android/server/LocationManagerServiceInjector;->sReceivers:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/LocationManagerService$Receiver;

    invoke-virtual {v4, v5}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V

    .line 213
    .end local v3    # "o":Ljava/lang/Object;
    goto :goto_3c

    .line 215
    .end local v1    # "backupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_83
    monitor-exit v0

    .line 216
    return-void

    .line 215
    :catchall_85
    move-exception v1

    monitor-exit v0
    :try_end_87
    .catchall {:try_start_3 .. :try_end_87} :catchall_85

    throw v1
.end method

.method private static restoreBlockedLocationRequestIfNeeded(I)V
    .registers 14
    .param p0, "uid"    # I

    .line 219
    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 220
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 221
    .local v1, "restoreList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    sget-object v2, Lcom/android/server/LocationManagerServiceInjector;->sBackupReceivers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 222
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Lcom/android/server/LocationManagerService$Receiver;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/LocationManagerService$Receiver;

    .line 223
    .local v4, "r":Lcom/android/server/LocationManagerService$Receiver;
    iget-object v5, v4, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v5, v5, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    if-ne v5, p0, :cond_31

    .line 224
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Lcom/android/server/LocationManagerService$Receiver;>;"
    .end local v4    # "r":Lcom/android/server/LocationManagerService$Receiver;
    :cond_31
    goto :goto_12

    .line 227
    :cond_32
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_cc

    .line 228
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_cc

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 229
    .local v3, "o":Ljava/lang/Object;
    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->sBackupReceivers:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/LocationManagerService$Receiver;
    :try_end_4e
    .catchall {:try_start_3 .. :try_end_4e} :catchall_ce

    .line 233
    .restart local v4    # "r":Lcom/android/server/LocationManagerService$Receiver;
    :try_start_4e
    iget-object v5, v4, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    if-eqz v5, :cond_5e

    .line 234
    invoke-virtual {v4}, Lcom/android/server/LocationManagerService$Receiver;->getListener()Landroid/location/ILocationListener;

    move-result-object v5

    invoke-interface {v5}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v4, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_5e
    .catch Landroid/os/DeadObjectException; {:try_start_4e .. :try_end_5e} :catch_c4
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_5e} :catch_b9
    .catchall {:try_start_4e .. :try_end_5e} :catchall_ce

    .line 243
    :cond_5e
    nop

    .line 245
    :try_start_5f
    iget-object v5, v4, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    if-eqz v5, :cond_b3

    .line 246
    sget-object v5, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "restore receiver:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    sget-object v5, Lcom/android/server/LocationManagerServiceInjector;->sReceivers:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    iget-object v5, v4, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_89
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v12, v5

    .line 249
    .local v12, "p":Ljava/lang/String;
    iget-object v5, v4, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    invoke-virtual {v5, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/LocationManagerService$UpdateRecord;

    iget-object v6, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mRealRequest:Landroid/location/LocationRequest;

    .line 250
    .local v6, "lr":Landroid/location/LocationRequest;
    sget-object v5, Lcom/android/server/LocationManagerServiceInjector;->sLocationManagerService:Lcom/android/server/LocationManagerService;

    iget-object v7, v4, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v8, v7, Lcom/android/server/LocationManagerService$Identity;->mPid:I

    iget-object v7, v4, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v9, v7, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    iget-object v7, v4, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget-object v10, v7, Lcom/android/server/LocationManagerService$Identity;->mPackageName:Ljava/lang/String;

    move-object v7, v4

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/LocationManagerService;->requestLocationUpdatesLocked(Landroid/location/LocationRequest;Lcom/android/server/LocationManagerService$Receiver;IILjava/lang/String;)V

    .line 251
    .end local v6    # "lr":Landroid/location/LocationRequest;
    .end local v12    # "p":Ljava/lang/String;
    goto :goto_89

    .line 255
    :cond_b3
    sget-object v5, Lcom/android/server/LocationManagerServiceInjector;->sBackupReceivers:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    .end local v3    # "o":Ljava/lang/Object;
    .end local v4    # "r":Lcom/android/server/LocationManagerService$Receiver;
    goto :goto_3c

    .line 240
    .restart local v3    # "o":Ljava/lang/Object;
    .restart local v4    # "r":Lcom/android/server/LocationManagerService$Receiver;
    :catch_b9
    move-exception v5

    .line 241
    .local v5, "e":Landroid/os/RemoteException;
    sget-object v6, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "linkToDeath failed:"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 242
    goto/16 :goto_3c

    .line 236
    .end local v5    # "e":Landroid/os/RemoteException;
    :catch_c4
    move-exception v5

    .line 238
    .local v5, "e":Landroid/os/DeadObjectException;
    sget-object v6, Lcom/android/server/LocationManagerServiceInjector;->sBackupReceivers:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    goto/16 :goto_3c

    .line 258
    .end local v1    # "restoreList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v3    # "o":Ljava/lang/Object;
    .end local v4    # "r":Lcom/android/server/LocationManagerService$Receiver;
    .end local v5    # "e":Landroid/os/DeadObjectException;
    :cond_cc
    monitor-exit v0

    .line 259
    return-void

    .line 258
    :catchall_ce
    move-exception v1

    monitor-exit v0
    :try_end_d0
    .catchall {:try_start_5f .. :try_end_d0} :catchall_ce

    throw v1
.end method

.method static takeOverGpsLP(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/LocationManagerService$UpdateRecord;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/LocationManagerService$UpdateRecord;",
            ">;"
        }
    .end annotation

    .line 474
    .local p0, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    invoke-static {}, Lcom/android/server/LocationManagerServiceInjector;->isFakeGpsOn()Z

    move-result v0

    if-eqz v0, :cond_77

    if-nez p0, :cond_9

    goto :goto_77

    .line 480
    :cond_9
    invoke-static {}, Lcom/android/server/LocationManagerServiceInjector;->isPhoneStationary()Z

    move-result v0

    if-eqz v0, :cond_76

    .line 481
    new-instance v0, Lcom/android/internal/location/ProviderRequest;

    invoke-direct {v0}, Lcom/android/internal/location/ProviderRequest;-><init>()V

    .line 482
    .local v0, "providerRequest":Lcom/android/internal/location/ProviderRequest;
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 483
    .local v2, "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    sget-object v3, Lcom/android/server/LocationManagerServiceInjector;->sLocationManagerService:Lcom/android/server/LocationManagerService;

    iget-object v4, v2, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v4, v4, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v4, v4, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    .line 484
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 483
    invoke-virtual {v3, v4}, Lcom/android/server/LocationManagerService;->callIsCurrentProfile(I)Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 485
    sget-object v3, Lcom/android/server/LocationManagerServiceInjector;->sLocationManagerService:Lcom/android/server/LocationManagerService;

    iget-object v4, v2, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v4, v4, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v4, v4, Lcom/android/server/LocationManagerService$Identity;->mPid:I

    iget-object v5, v2, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v5, v5, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v5, v5, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    iget-object v6, v2, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v6, v6, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget-object v6, v6, Lcom/android/server/LocationManagerService$Identity;->mPackageName:Ljava/lang/String;

    iget-object v7, v2, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget v7, v7, Lcom/android/server/LocationManagerService$Receiver;->mAllowedResolutionLevel:I

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/server/LocationManagerServiceFacade;->checkLocationAccess(Lcom/android/server/LocationManagerService;IILjava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 491
    iget-object v3, v2, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    .line 492
    .local v3, "locationRequest":Landroid/location/LocationRequest;
    iget-object v4, v0, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    invoke-virtual {v3}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/android/internal/location/ProviderRequest;->interval:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_6e

    .line 494
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    .line 495
    invoke-virtual {v3}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/internal/location/ProviderRequest;->interval:J

    .line 499
    .end local v2    # "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    .end local v3    # "locationRequest":Landroid/location/LocationRequest;
    :cond_6e
    goto :goto_18

    .line 500
    :cond_6f
    sget-object v1, Lcom/android/server/LocationManagerServiceInjector;->sMiuiFakeGpsProvider:Lcom/android/server/MiuiFakeGpsProvider;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/server/MiuiFakeGpsProvider;->setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    .line 501
    return-object v2

    .line 503
    .end local v0    # "providerRequest":Lcom/android/internal/location/ProviderRequest;
    :cond_76
    return-object p0

    .line 475
    :cond_77
    :goto_77
    return-object p0
.end method

.method public static takeOverLP(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 12
    .param p0, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/LocationManagerService$UpdateRecord;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/LocationManagerService$UpdateRecord;",
            ">;"
        }
    .end annotation

    .line 377
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-eqz p0, :cond_f

    const-string v0, "gps"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 378
    invoke-static {p1}, Lcom/android/server/LocationManagerServiceInjector;->takeOverGpsLP(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 380
    :cond_f
    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->mMetok:Lcom/android/server/location/MetokProxy;

    if-eqz v0, :cond_10f

    if-nez p0, :cond_17

    goto/16 :goto_10f

    .line 384
    :cond_17
    const/4 v0, 0x0

    .line 385
    .local v0, "retRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1}, Landroid/os/WorkSource;-><init>()V

    .line 388
    .local v1, "worksource":Landroid/os/WorkSource;
    new-instance v2, Lcom/android/internal/location/ProviderRequest;

    invoke-direct {v2}, Lcom/android/internal/location/ProviderRequest;-><init>()V

    .line 390
    .local v2, "providerRequest":Lcom/android/internal/location/ProviderRequest;
    if-eqz p1, :cond_cd

    .line 391
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    .line 392
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2e
    :goto_2e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_cd

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 393
    .local v4, "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    sget-object v5, Lcom/android/server/LocationManagerServiceInjector;->sLocationManagerService:Lcom/android/server/LocationManagerService;

    iget-object v6, v4, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v6, v6, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v6, v6, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/LocationManagerService;->callIsCurrentProfile(I)Z

    move-result v5

    if-eqz v5, :cond_c8

    .line 394
    sget-object v5, Lcom/android/server/LocationManagerServiceInjector;->sLocationManagerService:Lcom/android/server/LocationManagerService;

    iget-object v6, v4, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v6, v6, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v6, v6, Lcom/android/server/LocationManagerService$Identity;->mPid:I

    iget-object v7, v4, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v7, v7, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v7, v7, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    iget-object v8, v4, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v8, v8, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget-object v8, v8, Lcom/android/server/LocationManagerService$Identity;->mPackageName:Ljava/lang/String;

    iget-object v9, v4, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget v9, v9, Lcom/android/server/LocationManagerService$Receiver;->mAllowedResolutionLevel:I

    invoke-static {v5, v6, v7, v8, v9}, Lcom/android/server/LocationManagerServiceFacade;->checkLocationAccess(Lcom/android/server/LocationManagerService;IILjava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_c8

    .line 400
    sget-object v5, Lcom/android/server/LocationManagerServiceInjector;->mMetok:Lcom/android/server/location/MetokProxy;

    iget-object v6, v4, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v6, v6, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget-object v6, v6, Lcom/android/server/LocationManagerService$Identity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, p0, v6}, Lcom/android/server/location/MetokProxy;->canTakeOver(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c8

    .line 401
    sget-object v5, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "takeover LP of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v7, v7, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget-object v7, v7, Lcom/android/server/LocationManagerService$Identity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object v5, v4, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    .line 403
    .local v5, "locationRequest":Landroid/location/LocationRequest;
    iget-object v6, v2, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    iget-object v6, v4, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v6, v6, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v6, v6, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    iget-object v7, v4, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v7, v7, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget-object v7, v7, Lcom/android/server/LocationManagerService$Identity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/os/WorkSource;->add(ILjava/lang/String;)Z

    .line 406
    invoke-virtual {v5}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v6

    iget-wide v8, v2, Lcom/android/internal/location/ProviderRequest;->interval:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_2e

    .line 407
    const/4 v6, 0x1

    iput-boolean v6, v2, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    .line 408
    invoke-virtual {v5}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v6

    iput-wide v6, v2, Lcom/android/internal/location/ProviderRequest;->interval:J

    goto/16 :goto_2e

    .line 414
    .end local v5    # "locationRequest":Landroid/location/LocationRequest;
    :cond_c8
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    .end local v4    # "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    goto/16 :goto_2e

    .line 418
    :cond_cd
    sget-object v3, Lcom/android/server/LocationManagerServiceInjector;->mLastProviderRequest:Lcom/android/internal/location/ProviderRequest;

    if-nez v3, :cond_d2

    goto :goto_e4

    :cond_d2
    iget-boolean v3, v2, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->mLastProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-boolean v4, v4, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    if-ne v3, v4, :cond_e4

    iget-wide v3, v2, Lcom/android/internal/location/ProviderRequest;->interval:J

    sget-object v5, Lcom/android/server/LocationManagerServiceInjector;->mLastProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-wide v5, v5, Lcom/android/internal/location/ProviderRequest;->interval:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_10e

    .line 422
    :cond_e4
    :goto_e4
    sget-object v3, Lcom/android/server/LocationManagerServiceInjector;->mMetok:Lcom/android/server/location/MetokProxy;

    invoke-virtual {v3, v2, v1}, Lcom/android/server/location/MetokProxy;->setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    .line 423
    sput-object v2, Lcom/android/server/LocationManagerServiceInjector;->mLastProviderRequest:Lcom/android/internal/location/ProviderRequest;

    .line 424
    sget-object v3, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "takeover LP : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/internal/location/ProviderRequest;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :cond_10e
    return-object v0

    .line 381
    .end local v0    # "retRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .end local v1    # "worksource":Landroid/os/WorkSource;
    .end local v2    # "providerRequest":Lcom/android/internal/location/ProviderRequest;
    :cond_10f
    :goto_10f
    return-object p1
.end method

.method public static updateGpsStatusProvider(Landroid/location/IGnssStatusProvider;)V
    .registers 1
    .param p0, "gpsStatusProvider"    # Landroid/location/IGnssStatusProvider;

    .line 85
    sput-object p0, Lcom/android/server/LocationManagerServiceInjector;->sGpsStatusProviderRef:Landroid/location/IGnssStatusProvider;

    .line 86
    return-void
.end method

.method public static updateLpStatus(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/location/LocationProviderInterface;",
            ">;)V"
        }
    .end annotation

    .line 431
    .local p0, "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/location/LocationProviderInterface;>;"
    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->mMetok:Lcom/android/server/location/MetokProxy;

    if-eqz v0, :cond_23

    .line 432
    const/4 v0, 0x0

    .line 433
    .local v0, "enable":Z
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_b
    if-ltz v1, :cond_1e

    .line 434
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/LocationProviderInterface;

    .line 435
    .local v2, "p":Lcom/android/server/location/LocationProviderInterface;
    invoke-interface {v2}, Lcom/android/server/location/LocationProviderInterface;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 436
    const/4 v0, 0x1

    .line 437
    goto :goto_1e

    .line 433
    .end local v2    # "p":Lcom/android/server/location/LocationProviderInterface;
    :cond_1b
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 440
    .end local v1    # "i":I
    :cond_1e
    :goto_1e
    sget-object v1, Lcom/android/server/LocationManagerServiceInjector;->mMetok:Lcom/android/server/location/MetokProxy;

    invoke-virtual {v1, v0}, Lcom/android/server/location/MetokProxy;->updateStatus(Z)V

    .line 442
    .end local v0    # "enable":Z
    :cond_23
    return-void
.end method
