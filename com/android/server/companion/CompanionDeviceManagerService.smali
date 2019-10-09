.class public Lcom/android/server/companion/CompanionDeviceManagerService;
.super Lcom/android/server/SystemService;
.source "CompanionDeviceManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/companion/CompanionDeviceManagerService$ShellCmd;,
        Lcom/android/server/companion/CompanionDeviceManagerService$Association;,
        Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "CompanionDeviceManagerService"

.field private static final SERVICE_TO_BIND_TO:Landroid/content/ComponentName;

.field private static final XML_ATTR_DEVICE:Ljava/lang/String; = "device"

.field private static final XML_ATTR_PACKAGE:Ljava/lang/String; = "package"

.field private static final XML_FILE_NAME:Ljava/lang/String; = "companion_device_manager_associations.xml"

.field private static final XML_TAG_ASSOCIATION:Ljava/lang/String; = "association"

.field private static final XML_TAG_ASSOCIATIONS:Ljava/lang/String; = "associations"


# instance fields
.field private mAppOpsManager:Lcom/android/internal/app/IAppOpsService;

.field private mCallingPackage:Ljava/lang/String;

.field private mFindDeviceCallback:Landroid/companion/IFindDeviceCallback;

.field private mIdleController:Landroid/os/IDeviceIdleController;

.field private final mImpl:Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;

.field private final mLock:Ljava/lang/Object;

.field private mRequest:Landroid/companion/AssociationRequest;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private final mUidToStorage:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/AtomicFile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 102
    const-string v0, "com.android.companiondevicemanager"

    const-string v1, ".DeviceDiscoveryService"

    invoke-static {v0, v1}, Landroid/content/ComponentName;->createRelative(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, Lcom/android/server/companion/CompanionDeviceManagerService;->SERVICE_TO_BIND_TO:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 128
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 116
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mUidToStorage:Ljava/util/concurrent/ConcurrentMap;

    .line 125
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mLock:Ljava/lang/Object;

    .line 129
    new-instance v0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;

    invoke-direct {v0, p0}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mImpl:Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;

    .line 130
    const-string v0, "deviceidle"

    .line 131
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 130
    invoke-static {v0}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mIdleController:Landroid/os/IDeviceIdleController;

    .line 132
    const-string v0, "appops"

    .line 133
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 132
    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAppOpsManager:Lcom/android/internal/app/IAppOpsService;

    .line 134
    invoke-direct {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->registerPackageMonitor()V

    .line 135
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/companion/CompanionDeviceManagerService;Ljava/util/function/Function;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/companion/CompanionDeviceManagerService;
    .param p1, "x1"    # Ljava/util/function/Function;
    .param p2, "x2"    # I

    .line 100
    invoke-direct {p0, p1, p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->updateAssociations(Ljava/util/function/Function;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/companion/CompanionDeviceManagerService;ILjava/lang/String;)Ljava/util/Set;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/companion/CompanionDeviceManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 100
    invoke-direct {p0, p1, p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->readAllAssociations(ILjava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000()Z
    .registers 1

    .line 100
    invoke-static {}, Lcom/android/server/companion/CompanionDeviceManagerService;->isCallerSystem()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/internal/app/IAppOpsService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 100
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAppOpsManager:Lcom/android/internal/app/IAppOpsService;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/companion/CompanionDeviceManagerService;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/companion/CompanionDeviceManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 100
    invoke-direct {p0, p1, p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/companion/CompanionDeviceManagerService;)Landroid/companion/ICompanionDeviceDiscoveryServiceCallback$Stub;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 100
    invoke-direct {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getServiceCallback()Landroid/companion/ICompanionDeviceDiscoveryServiceCallback$Stub;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/companion/CompanionDeviceManagerService;I)Ljava/util/Set;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/companion/CompanionDeviceManagerService;
    .param p1, "x1"    # I

    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->readAllAssociations(I)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/companion/CompanionDeviceManagerService;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/companion/CompanionDeviceManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 100
    invoke-direct {p0, p1, p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->updateSpecialAccessPermissionForAssociatedPackage(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300()I
    .registers 1

    .line 100
    invoke-static {}, Lcom/android/server/companion/CompanionDeviceManagerService;->getCallingUserId()I

    move-result v0

    return v0
.end method

.method static synthetic access$400()Landroid/content/ComponentName;
    .registers 1

    .line 100
    sget-object v0, Lcom/android/server/companion/CompanionDeviceManagerService;->SERVICE_TO_BIND_TO:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/companion/CompanionDeviceManagerService;Landroid/companion/AssociationRequest;Landroid/companion/IFindDeviceCallback;Ljava/lang/String;)Landroid/content/ServiceConnection;
    .registers 5
    .param p0, "x0"    # Lcom/android/server/companion/CompanionDeviceManagerService;
    .param p1, "x1"    # Landroid/companion/AssociationRequest;
    .param p2, "x2"    # Landroid/companion/IFindDeviceCallback;
    .param p3, "x3"    # Ljava/lang/String;

    .line 100
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/companion/CompanionDeviceManagerService;->createServiceConnection(Landroid/companion/AssociationRequest;Landroid/companion/IFindDeviceCallback;Ljava/lang/String;)Landroid/content/ServiceConnection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/companion/CompanionDeviceManagerService;)Landroid/companion/AssociationRequest;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 100
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mRequest:Landroid/companion/AssociationRequest;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/companion/CompanionDeviceManagerService;Landroid/companion/AssociationRequest;)Landroid/companion/AssociationRequest;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/companion/CompanionDeviceManagerService;
    .param p1, "x1"    # Landroid/companion/AssociationRequest;

    .line 100
    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mRequest:Landroid/companion/AssociationRequest;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/companion/CompanionDeviceManagerService;)Landroid/companion/IFindDeviceCallback;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 100
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mFindDeviceCallback:Landroid/companion/IFindDeviceCallback;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/companion/CompanionDeviceManagerService;Landroid/companion/IFindDeviceCallback;)Landroid/companion/IFindDeviceCallback;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/companion/CompanionDeviceManagerService;
    .param p1, "x1"    # Landroid/companion/IFindDeviceCallback;

    .line 100
    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mFindDeviceCallback:Landroid/companion/IFindDeviceCallback;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/companion/CompanionDeviceManagerService;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 100
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mCallingPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/server/companion/CompanionDeviceManagerService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/companion/CompanionDeviceManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 100
    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mCallingPackage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/server/companion/CompanionDeviceManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 100
    invoke-direct {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->cleanup()V

    return-void
.end method

.method private cleanup()V
    .registers 4

    .line 169
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 170
    :try_start_3
    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-direct {p0, v1}, Lcom/android/server/companion/CompanionDeviceManagerService;->unbind(Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 171
    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mFindDeviceCallback:Landroid/companion/IFindDeviceCallback;

    const/4 v2, 0x0

    invoke-static {v1, p0, v2}, Lcom/android/server/companion/CompanionDeviceManagerService;->unlinkToDeath(Landroid/os/IInterface;Landroid/os/IBinder$DeathRecipient;I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/companion/IFindDeviceCallback;

    iput-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mFindDeviceCallback:Landroid/companion/IFindDeviceCallback;

    .line 172
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mRequest:Landroid/companion/AssociationRequest;

    .line 173
    iput-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mCallingPackage:Ljava/lang/String;

    .line 174
    monitor-exit v0

    .line 175
    return-void

    .line 174
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method private static containsEither([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;TT;)Z"
        }
    .end annotation

    .line 477
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "a":Ljava/lang/Object;, "TT;"
    .local p2, "b":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p0, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method private createServiceConnection(Landroid/companion/AssociationRequest;Landroid/companion/IFindDeviceCallback;Ljava/lang/String;)Landroid/content/ServiceConnection;
    .registers 5
    .param p1, "request"    # Landroid/companion/AssociationRequest;
    .param p2, "findDeviceCallback"    # Landroid/companion/IFindDeviceCallback;
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 360
    new-instance v0, Lcom/android/server/companion/CompanionDeviceManagerService$2;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/android/server/companion/CompanionDeviceManagerService$2;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;Landroid/companion/IFindDeviceCallback;Landroid/companion/AssociationRequest;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 399
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mServiceConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method private static getCallingUserId()I
    .registers 1

    .line 349
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method private getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 482
    sget-object v0, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$0VKz9ecFqvfFXzRrfaz-Pf5wW2s;->INSTANCE:Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$0VKz9ecFqvfFXzRrfaz-Pf5wW2s;

    .line 492
    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 482
    invoke-static {v0, v1, p1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainSupplier(Lcom/android/internal/util/function/TriFunction;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledSupplier;

    move-result-object v0

    .line 492
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledSupplier;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledSupplier;

    move-result-object v0

    .line 482
    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method private getServiceCallback()Landroid/companion/ICompanionDeviceDiscoveryServiceCallback$Stub;
    .registers 2

    .line 403
    new-instance v0, Lcom/android/server/companion/CompanionDeviceManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/companion/CompanionDeviceManagerService$3;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V

    return-object v0
.end method

.method private getStorageFileForUser(I)Landroid/util/AtomicFile;
    .registers 5
    .param p1, "uid"    # I

    .line 546
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mUidToStorage:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$bh5xRJq9-CRJoXvmerYRNjK1xEQ;->INSTANCE:Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$bh5xRJq9-CRJoXvmerYRNjK1xEQ;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/AtomicFile;

    return-object v0
.end method

.method private static isCallerSystem()Z
    .registers 2

    .line 353
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method static synthetic lambda$getPackageInfo$1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Landroid/content/pm/PackageInfo;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/Integer;

    .line 484
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x5000

    .line 487
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 484
    invoke-virtual {v0, p1, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_e} :catch_f

    return-object v0

    .line 488
    :catch_f
    move-exception v0

    .line 489
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "CompanionDeviceManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get PackageInfo for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 490
    const/4 v1, 0x0

    return-object v1
.end method

.method static synthetic lambda$getStorageFileForUser$5(Ljava/lang/Integer;)Landroid/util/AtomicFile;
    .registers 5
    .param p0, "u"    # Ljava/lang/Integer;

    .line 547
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    .line 549
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "companion_device_manager_associations.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 547
    return-object v0
.end method

.method public static synthetic lambda$pG_kG2extKjHVEAFcCd4MLP2mkk(Lcom/android/server/companion/CompanionDeviceManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->cleanup()V

    return-void
.end method

.method public static synthetic lambda$recordAssociation$2(Lcom/android/server/companion/CompanionDeviceManagerService;ILjava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .registers 12
    .param p1, "userId"    # I
    .param p2, "deviceAddress"    # Ljava/lang/String;
    .param p3, "priviledgedPackage"    # Ljava/lang/String;
    .param p4, "associations"    # Ljava/util/Set;

    .line 501
    new-instance v6, Lcom/android/server/companion/CompanionDeviceManagerService$Association;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/companion/CompanionDeviceManagerService$Association;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;ILjava/lang/String;Ljava/lang/String;Lcom/android/server/companion/CompanionDeviceManagerService$1;)V

    invoke-static {p4, v6}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$removeAssociation$0(Lcom/android/server/companion/CompanionDeviceManagerService;ILjava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .registers 12
    .param p1, "userId"    # I
    .param p2, "deviceMacAddress"    # Ljava/lang/String;
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "associations"    # Ljava/util/Set;

    .line 435
    new-instance v6, Lcom/android/server/companion/CompanionDeviceManagerService$Association;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/companion/CompanionDeviceManagerService$Association;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;ILjava/lang/String;Ljava/lang/String;Lcom/android/server/companion/CompanionDeviceManagerService$1;)V

    invoke-static {p4, v6}, Lcom/android/internal/util/CollectionUtils;->remove(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$updateAssociations$3(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/companion/CompanionDeviceManagerService$Association;)V
    .registers 6
    .param p0, "xml"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "association"    # Lcom/android/server/companion/CompanionDeviceManagerService$Association;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 528
    const-string v0, "association"

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    const-string/jumbo v2, "package"

    iget-object v3, p1, Lcom/android/server/companion/CompanionDeviceManagerService$Association;->companionAppPackage:Ljava/lang/String;

    .line 529
    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    const-string v2, "device"

    iget-object v3, p1, Lcom/android/server/companion/CompanionDeviceManagerService$Association;->deviceAddress:Ljava/lang/String;

    .line 530
    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    const-string v2, "association"

    .line 531
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 532
    return-void
.end method

.method static synthetic lambda$updateAssociations$4(Ljava/util/Set;Ljava/io/FileOutputStream;)V
    .registers 6
    .param p0, "finalAssociations"    # Ljava/util/Set;
    .param p1, "out"    # Ljava/io/FileOutputStream;

    .line 520
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    .line 522
    .local v0, "xml":Lorg/xmlpull/v1/XmlSerializer;
    :try_start_4
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 523
    const-string v1, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 524
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 525
    const-string v1, "associations"

    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 527
    new-instance v1, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$_WjcclQ59faBsgHHLmf5Dm8Zo8k;

    invoke-direct {v1, v0}, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$_WjcclQ59faBsgHHLmf5Dm8Zo8k;-><init>(Lorg/xmlpull/v1/XmlSerializer;)V

    invoke-static {p0, v1}, Lcom/android/internal/util/CollectionUtils;->forEach(Ljava/util/Set;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    .line 534
    const-string v1, "associations"

    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 535
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_30} :catch_32

    .line 539
    nop

    .line 541
    return-void

    .line 536
    :catch_32
    move-exception v1

    .line 537
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "CompanionDeviceManagerService"

    const-string v3, "Error while writing associations file"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 538
    invoke-static {v1}, Landroid/util/ExceptionUtils;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public static synthetic lambda$wnUkAY8uXyjMGM59-bNpzLLMJ1I(Lcom/android/server/companion/CompanionDeviceManagerService;Landroid/content/pm/PackageInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->updateSpecialAccessPermissionAsSystem(Landroid/content/pm/PackageInfo;)V

    return-void
.end method

.method private readAllAssociations(I)Ljava/util/Set;
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Lcom/android/server/companion/CompanionDeviceManagerService$Association;",
            ">;"
        }
    .end annotation

    .line 555
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->readAllAssociations(ILjava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private readAllAssociations(ILjava/lang/String;)Ljava/util/Set;
    .registers 19
    .param p1, "userId"    # I
    .param p2, "packageFilter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lcom/android/server/companion/CompanionDeviceManagerService$Association;",
            ">;"
        }
    .end annotation

    .line 560
    move-object/from16 v1, p2

    invoke-direct/range {p0 .. p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->getStorageFileForUser(I)Landroid/util/AtomicFile;

    move-result-object v2

    .line 562
    .local v2, "file":Landroid/util/AtomicFile;
    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_12

    return-object v3

    .line 564
    :cond_12
    const/4 v4, 0x0

    .line 565
    .local v4, "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/companion/CompanionDeviceManagerService$Association;>;"
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 566
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    monitor-enter v2

    .line 567
    :try_start_18
    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_1c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_18 .. :try_end_1c} :catch_9c
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1c} :catch_9c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_9a

    move-object v6, v0

    .line 568
    .local v6, "in":Ljava/io/FileInputStream;
    :try_start_1d
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 570
    :cond_26
    :goto_26
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v7, v0

    .line 570
    .local v7, "type":I
    const/4 v8, 0x1

    if-eq v0, v8, :cond_6d

    .line 571
    const/4 v0, 0x2

    if-eq v7, v0, :cond_3e

    const-string v0, "associations"

    .line 572
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 572
    .end local v7    # "type":I
    goto :goto_26

    .line 574
    .restart local v7    # "type":I
    :cond_3e
    const-string/jumbo v0, "package"

    invoke-interface {v5, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 575
    .local v0, "appPackage":Ljava/lang/String;
    const-string v8, "device"

    invoke-interface {v5, v3, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v14, v8

    .line 577
    .local v14, "deviceAddress":Ljava/lang/String;
    if-eqz v0, :cond_26

    if-nez v14, :cond_51

    .line 577
    .end local v0    # "appPackage":Ljava/lang/String;
    .end local v7    # "type":I
    .end local v14    # "deviceAddress":Ljava/lang/String;
    goto :goto_26

    .line 578
    .restart local v0    # "appPackage":Ljava/lang/String;
    .restart local v7    # "type":I
    .restart local v14    # "deviceAddress":Ljava/lang/String;
    :cond_51
    if-eqz v1, :cond_5a

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5a

    .line 578
    .end local v0    # "appPackage":Ljava/lang/String;
    .end local v7    # "type":I
    .end local v14    # "deviceAddress":Ljava/lang/String;
    goto :goto_26

    .line 580
    .restart local v0    # "appPackage":Ljava/lang/String;
    .restart local v7    # "type":I
    .restart local v14    # "deviceAddress":Ljava/lang/String;
    :cond_5a
    new-instance v15, Lcom/android/server/companion/CompanionDeviceManagerService$Association;

    const/4 v13, 0x0

    move-object v8, v15

    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object v11, v14

    move-object v12, v0

    invoke-direct/range {v8 .. v13}, Lcom/android/server/companion/CompanionDeviceManagerService$Association;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;ILjava/lang/String;Ljava/lang/String;Lcom/android/server/companion/CompanionDeviceManagerService$1;)V

    invoke-static {v4, v15}, Lcom/android/internal/util/ArrayUtils;->add(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v8
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_6b} :catch_7a
    .catchall {:try_start_1d .. :try_end_6b} :catchall_75

    move-object v4, v8

    .line 582
    .end local v0    # "appPackage":Ljava/lang/String;
    .end local v14    # "deviceAddress":Ljava/lang/String;
    goto :goto_26

    .line 583
    :cond_6d
    nop

    .line 584
    if-eqz v6, :cond_73

    :try_start_70
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_73
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_70 .. :try_end_73} :catch_9c
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_9c
    .catchall {:try_start_70 .. :try_end_73} :catchall_9a

    :cond_73
    :try_start_73
    monitor-exit v2
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_9a

    .line 583
    return-object v4

    .line 584
    .end local v7    # "type":I
    :catchall_75
    move-exception v0

    move-object v7, v3

    move-object v8, v4

    .line 584
    .end local v4    # "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/companion/CompanionDeviceManagerService$Association;>;"
    .local v8, "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/companion/CompanionDeviceManagerService$Association;>;"
    :goto_78
    move-object v4, v0

    goto :goto_82

    .line 567
    .end local v8    # "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/companion/CompanionDeviceManagerService$Association;>;"
    .restart local v4    # "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/companion/CompanionDeviceManagerService$Association;>;"
    :catch_7a
    move-exception v0

    move-object v7, v4

    move-object v4, v0

    .line 567
    .end local v4    # "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/companion/CompanionDeviceManagerService$Association;>;"
    .local v7, "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/companion/CompanionDeviceManagerService$Association;>;"
    :try_start_7d
    throw v4
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7e

    .line 584
    :catchall_7e
    move-exception v0

    move-object v8, v7

    move-object v7, v4

    goto :goto_78

    .line 584
    .end local v7    # "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/companion/CompanionDeviceManagerService$Association;>;"
    .restart local v8    # "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/companion/CompanionDeviceManagerService$Association;>;"
    :goto_82
    if-eqz v6, :cond_93

    if-eqz v7, :cond_90

    :try_start_86
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_89
    .catch Ljava/lang/Throwable; {:try_start_86 .. :try_end_89} :catch_8a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_86 .. :try_end_89} :catch_97
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_89} :catch_97
    .catchall {:try_start_86 .. :try_end_89} :catchall_94

    goto :goto_93

    :catch_8a
    move-exception v0

    move-object v9, v0

    :try_start_8c
    invoke-virtual {v7, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_93

    :cond_90
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    :cond_93
    :goto_93
    throw v4
    :try_end_94
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8c .. :try_end_94} :catch_97
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_94} :catch_97
    .catchall {:try_start_8c .. :try_end_94} :catchall_94

    .line 588
    .end local v6    # "in":Ljava/io/FileInputStream;
    :catchall_94
    move-exception v0

    move-object v4, v8

    goto :goto_a6

    .line 584
    :catch_97
    move-exception v0

    move-object v4, v8

    goto :goto_9d

    .line 588
    .end local v8    # "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/companion/CompanionDeviceManagerService$Association;>;"
    .restart local v4    # "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/companion/CompanionDeviceManagerService$Association;>;"
    :catchall_9a
    move-exception v0

    goto :goto_a6

    .line 584
    :catch_9c
    move-exception v0

    .line 585
    .local v0, "e":Ljava/lang/Exception;
    :goto_9d
    :try_start_9d
    const-string v6, "CompanionDeviceManagerService"

    const-string v7, "Error while reading associations file"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 586
    monitor-exit v2

    return-object v3

    .line 588
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_a6
    monitor-exit v2
    :try_end_a7
    .catchall {:try_start_9d .. :try_end_a7} :catchall_9a

    throw v0
.end method

.method private recordAssociation(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "priviledgedPackage"    # Ljava/lang/String;
    .param p2, "deviceAddress"    # Ljava/lang/String;

    .line 500
    invoke-static {}, Lcom/android/server/companion/CompanionDeviceManagerService;->getCallingUserId()I

    move-result v0

    .line 501
    .local v0, "userId":I
    new-instance v1, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$pF7vjIJpy5wI-u498jmFdSjoS_0;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$pF7vjIJpy5wI-u498jmFdSjoS_0;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/android/server/companion/CompanionDeviceManagerService;->updateAssociations(Ljava/util/function/Function;)V

    .line 503
    return-void
.end method

.method private registerPackageMonitor()V
    .registers 6

    .line 138
    new-instance v0, Lcom/android/server/companion/CompanionDeviceManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/companion/CompanionDeviceManagerService$1;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V

    .line 155
    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/companion/CompanionDeviceManagerService$1;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 156
    return-void
.end method

.method private unbind(Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    .registers 3
    .param p1, "conn"    # Landroid/content/ServiceConnection;

    .line 193
    if-eqz p1, :cond_9

    .line 194
    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 196
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method private static unlinkToDeath(Landroid/os/IInterface;Landroid/os/IBinder$DeathRecipient;I)Landroid/os/IInterface;
    .registers 4
    .param p1, "deathRecipient"    # Landroid/os/IBinder$DeathRecipient;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/IInterface;",
            ">(TT;",
            "Landroid/os/IBinder$DeathRecipient;",
            "I)TT;"
        }
    .end annotation

    .line 184
    .local p0, "iinterface":Landroid/os/IInterface;, "TT;"
    if-eqz p0, :cond_9

    .line 185
    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 187
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method private updateAssociations(Ljava/util/function/Function;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/util/Set<",
            "Lcom/android/server/companion/CompanionDeviceManagerService$Association;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/android/server/companion/CompanionDeviceManagerService$Association;",
            ">;>;)V"
        }
    .end annotation

    .line 506
    .local p1, "update":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/util/Set<Lcom/android/server/companion/CompanionDeviceManagerService$Association;>;Ljava/util/Set<Lcom/android/server/companion/CompanionDeviceManagerService$Association;>;>;"
    invoke-static {}, Lcom/android/server/companion/CompanionDeviceManagerService;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->updateAssociations(Ljava/util/function/Function;I)V

    .line 507
    return-void
.end method

.method private updateAssociations(Ljava/util/function/Function;I)V
    .registers 8
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/util/Set<",
            "Lcom/android/server/companion/CompanionDeviceManagerService$Association;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/android/server/companion/CompanionDeviceManagerService$Association;",
            ">;>;I)V"
        }
    .end annotation

    .line 511
    .local p1, "update":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/util/Set<Lcom/android/server/companion/CompanionDeviceManagerService$Association;>;Ljava/util/Set<Lcom/android/server/companion/CompanionDeviceManagerService$Association;>;>;"
    invoke-direct {p0, p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->getStorageFileForUser(I)Landroid/util/AtomicFile;

    move-result-object v0

    .line 512
    .local v0, "file":Landroid/util/AtomicFile;
    monitor-enter v0

    .line 513
    :try_start_5
    invoke-direct {p0, p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->readAllAssociations(I)Ljava/util/Set;

    move-result-object v1

    .line 514
    .local v1, "associations":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/companion/CompanionDeviceManagerService$Association;>;"
    invoke-static {v1}, Lcom/android/internal/util/CollectionUtils;->copyOf(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 515
    .local v2, "old":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/companion/CompanionDeviceManagerService$Association;>;"
    invoke-interface {p1, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    move-object v1, v3

    .line 516
    invoke-static {v2}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    move-result v3

    invoke-static {v1}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    move-result v4

    if-ne v3, v4, :cond_20

    monitor-exit v0

    return-void

    .line 518
    :cond_20
    move-object v3, v1

    .line 519
    .local v3, "finalAssociations":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/companion/CompanionDeviceManagerService$Association;>;"
    new-instance v4, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$_wqnNKMj0AXNyFu-i6lXk6tA3xs;

    invoke-direct {v4, v3}, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$_wqnNKMj0AXNyFu-i6lXk6tA3xs;-><init>(Ljava/util/Set;)V

    invoke-virtual {v0, v4}, Landroid/util/AtomicFile;->write(Ljava/util/function/Consumer;)V

    .line 542
    .end local v1    # "associations":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/companion/CompanionDeviceManagerService$Association;>;"
    .end local v2    # "old":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/companion/CompanionDeviceManagerService$Association;>;"
    .end local v3    # "finalAssociations":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/companion/CompanionDeviceManagerService$Association;>;"
    monitor-exit v0

    .line 543
    return-void

    .line 542
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_5 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method private updateSpecialAccessPermissionAsSystem(Landroid/content/pm/PackageInfo;)V
    .registers 6
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .line 451
    :try_start_0
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    const-string v1, "android.permission.RUN_IN_BACKGROUND"

    const-string v2, "android.permission.REQUEST_COMPANION_RUN_IN_BACKGROUND"

    invoke-static {v0, v1, v2}, Lcom/android/server/companion/CompanionDeviceManagerService;->containsEither([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 454
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mIdleController:Landroid/os/IDeviceIdleController;

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/os/IDeviceIdleController;->addPowerSaveWhitelistApp(Ljava/lang/String;)V

    goto :goto_1b

    .line 456
    :cond_14
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mIdleController:Landroid/os/IDeviceIdleController;

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/os/IDeviceIdleController;->removePowerSaveWhitelistApp(Ljava/lang/String;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1b} :catch_1c

    .line 460
    :goto_1b
    goto :goto_1d

    .line 458
    :catch_1c
    move-exception v0

    .line 462
    :goto_1d
    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    .line 463
    .local v0, "networkPolicyManager":Landroid/net/NetworkPolicyManager;
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    const-string v2, "android.permission.USE_DATA_IN_BACKGROUND"

    const-string v3, "android.permission.REQUEST_COMPANION_USE_DATA_IN_BACKGROUND"

    invoke-static {v1, v2, v3}, Lcom/android/server/companion/CompanionDeviceManagerService;->containsEither([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_3a

    .line 466
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkPolicyManager;->addUidPolicy(II)V

    goto :goto_41

    .line 470
    :cond_3a
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkPolicyManager;->removeUidPolicy(II)V

    .line 474
    :goto_41
    return-void
.end method

.method private updateSpecialAccessPermissionForAssociatedPackage(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 440
    invoke-direct {p0, p1, p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 441
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_7

    .line 442
    return-void

    .line 445
    :cond_7
    sget-object v1, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$wnUkAY8uXyjMGM59-bNpzLLMJ1I;->INSTANCE:Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$wnUkAY8uXyjMGM59-bNpzLLMJ1I;

    invoke-static {v1, p0, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    .line 446
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    .line 445
    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 447
    return-void
.end method


# virtual methods
.method addAssociation(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "deviceAddress"    # Ljava/lang/String;

    .line 430
    invoke-direct {p0, p2, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->updateSpecialAccessPermissionForAssociatedPackage(Ljava/lang/String;I)V

    .line 431
    invoke-direct {p0, p2, p3}, Lcom/android/server/companion/CompanionDeviceManagerService;->recordAssociation(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    return-void
.end method

.method public binderDied()V
    .registers 3

    .line 165
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$pG_kG2extKjHVEAFcCd4MLP2mkk;

    invoke-direct {v1, p0}, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$pG_kG2extKjHVEAFcCd4MLP2mkk;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 166
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 160
    const-string v0, "companiondevice"

    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mImpl:Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/companion/CompanionDeviceManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 161
    return-void
.end method

.method removeAssociation(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "deviceMacAddress"    # Ljava/lang/String;

    .line 435
    new-instance v0, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$utOm0rPFb4x9GgnuV9fsUZ-eMfY;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$utOm0rPFb4x9GgnuV9fsUZ-eMfY;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->updateAssociations(Ljava/util/function/Function;)V

    .line 437
    return-void
.end method
