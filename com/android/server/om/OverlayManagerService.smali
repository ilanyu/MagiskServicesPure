.class public final Lcom/android/server/om/OverlayManagerService;
.super Lcom/android/server/SystemService;
.source "OverlayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;,
        Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;,
        Lcom/android/server/om/OverlayManagerService$UserReceiver;,
        Lcom/android/server/om/OverlayManagerService$PackageReceiver;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final DEFAULT_OVERLAYS_PROP:Ljava/lang/String; = "ro.boot.vendor.overlay.theme"

.field static final TAG:Ljava/lang/String; = "OverlayManager"


# instance fields
.field private final mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

.field private mInitCompleteSignal:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

.field private final mPersistSettingsScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mService:Landroid/os/IBinder;

.field private final mSettings:Lcom/android/server/om/OverlayManagerSettings;

.field private final mSettingsFile:Landroid/util/AtomicFile;

.field private final mUserManager:Lcom/android/server/pm/UserManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/Installer;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "installer"    # Lcom/android/server/pm/Installer;

    .line 231
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 213
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    .line 225
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mPersistSettingsScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 482
    new-instance v0, Lcom/android/server/om/OverlayManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/om/OverlayManagerService$1;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mService:Landroid/os/IBinder;

    .line 232
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    .line 233
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "overlays.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v2, "overlays"

    invoke-direct {v0, v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    .line 234
    new-instance v0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    invoke-direct {v0}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;-><init>()V

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    .line 235
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 236
    new-instance v3, Lcom/android/server/om/IdmapManager;

    invoke-direct {v3, p2}, Lcom/android/server/om/IdmapManager;-><init>(Lcom/android/server/pm/Installer;)V

    .line 237
    .local v3, "im":Lcom/android/server/om/IdmapManager;
    new-instance v0, Lcom/android/server/om/OverlayManagerSettings;

    invoke-direct {v0}, Lcom/android/server/om/OverlayManagerSettings;-><init>()V

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 238
    new-instance v0, Lcom/android/server/om/OverlayManagerServiceImpl;

    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 239
    invoke-static {}, Lcom/android/server/om/OverlayManagerService;->getDefaultOverlayPackages()[Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;

    const/4 v1, 0x0

    invoke-direct {v6, p0, v1}, Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;-><init>(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/OverlayManagerService$1;)V

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/om/OverlayManagerServiceImpl;-><init>(Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;Lcom/android/server/om/IdmapManager;Lcom/android/server/om/OverlayManagerSettings;[Ljava/lang/String;Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;)V

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    .line 240
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v0

    new-instance v1, Lcom/android/server/om/-$$Lambda$OverlayManagerService$mX9VnR-_2XOwgKo9C81uZcpqETM;

    invoke-direct {v1, p0}, Lcom/android/server/om/-$$Lambda$OverlayManagerService$mX9VnR-_2XOwgKo9C81uZcpqETM;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    const-string v2, "Init OverlayManagerService"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mInitCompleteSignal:Ljava/util/concurrent/Future;

    .line 263
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/pm/UserManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerService;

    .line 200
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerService;

    .line 200
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerService;

    .line 200
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerService;

    .line 200
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/om/OverlayManagerService;ILjava/util/List;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/List;

    .line 200
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerService;->updateOverlayPaths(ILjava/util/List;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/om/OverlayManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerService;

    .line 200
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerService;->schedulePersistSettings()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/om/OverlayManagerService;ILjava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 200
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerService;->updateAssets(ILjava/lang/String;)V

    return-void
.end method

.method private static getDefaultOverlayPackages()[Ljava/lang/String;
    .registers 7

    .line 309
    const-string/jumbo v0, "ro.boot.vendor.overlay.theme"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, "str":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 311
    sget-object v1, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object v1

    .line 314
    :cond_10
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 315
    .local v1, "defaultPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1d
    if-ge v4, v3, :cond_2d

    aget-object v5, v2, v4

    .line 316
    .local v5, "packageName":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2a

    .line 317
    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 315
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_2a
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 320
    :cond_2d
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method

.method private initIfNeeded()V
    .registers 9

    .line 280
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 281
    .local v0, "um":Landroid/os/UserManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v1

    .line 282
    .local v1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 283
    :try_start_14
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 284
    .local v3, "userCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_19
    if-ge v4, v3, :cond_47

    .line 285
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 286
    .local v5, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    move-result v6

    if-nez v6, :cond_44

    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    if-eqz v6, :cond_44

    .line 290
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v7}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateOverlaysForUser(I)Ljava/util/ArrayList;

    move-result-object v6

    .line 291
    .local v6, "targets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v7, v6}, Lcom/android/server/om/OverlayManagerService;->updateOverlayPaths(ILjava/util/List;)V

    .line 284
    .end local v5    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v6    # "targets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_44
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 294
    .end local v3    # "userCount":I
    .end local v4    # "i":I
    :cond_47
    monitor-exit v2

    .line 295
    return-void

    .line 294
    :catchall_49
    move-exception v3

    monitor-exit v2
    :try_end_4b
    .catchall {:try_start_14 .. :try_end_4b} :catchall_49

    throw v3
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/om/OverlayManagerService;)V
    .registers 15

    .line 241
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 242
    .local v0, "packageFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 243
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 244
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 245
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/server/om/OverlayManagerService$PackageReceiver;

    const/4 v7, 0x0

    invoke-direct {v2, p0, v7}, Lcom/android/server/om/OverlayManagerService$PackageReceiver;-><init>(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/OverlayManagerService$1;)V

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 249
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 250
    .local v1, "userFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.USER_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 251
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerService;->getContext()Landroid/content/Context;

    move-result-object v8

    new-instance v9, Lcom/android/server/om/OverlayManagerService$UserReceiver;

    invoke-direct {v9, p0, v7}, Lcom/android/server/om/OverlayManagerService$UserReceiver;-><init>(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/OverlayManagerService$1;)V

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v11, v1

    invoke-virtual/range {v8 .. v13}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 255
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerService;->restoreSettings()V

    .line 257
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerService;->initIfNeeded()V

    .line 258
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/om/OverlayManagerService;->onSwitchUser(I)V

    .line 260
    const-string/jumbo v2, "overlay"

    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/om/OverlayManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 261
    const-class v2, Lcom/android/server/om/OverlayManagerService;

    invoke-virtual {p0, v2, p0}, Lcom/android/server/om/OverlayManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 262
    return-void
.end method

.method public static synthetic lambda$schedulePersistSettings$1(Lcom/android/server/om/OverlayManagerService;)V
    .registers 6

    .line 785
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mPersistSettingsScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 789
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 790
    const/4 v1, 0x0

    .line 792
    .local v1, "stream":Ljava/io/FileOutputStream;
    :try_start_a
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v1, v2

    .line 793
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v2, v1}, Lcom/android/server/om/OverlayManagerSettings;->persist(Ljava/io/OutputStream;)V

    .line 794
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_1b} :catch_1e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_1b} :catch_1e
    .catchall {:try_start_a .. :try_end_1b} :catchall_1c

    .line 798
    goto :goto_2b

    .line 799
    .end local v1    # "stream":Ljava/io/FileOutputStream;
    :catchall_1c
    move-exception v1

    goto :goto_2d

    .line 795
    .restart local v1    # "stream":Ljava/io/FileOutputStream;
    :catch_1e
    move-exception v2

    .line 796
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1f
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 797
    const-string v3, "OverlayManager"

    const-string v4, "failed to persist overlay state"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 799
    .end local v1    # "stream":Ljava/io/FileOutputStream;
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2b
    monitor-exit v0

    .line 800
    return-void

    .line 799
    :goto_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_1f .. :try_end_2e} :catchall_1c

    throw v1
.end method

.method private restoreSettings()V
    .registers 11

    .line 804
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 805
    :try_start_3
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_11

    .line 806
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_86

    return-void

    .line 808
    :cond_11
    :try_start_11
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_17} :catch_7c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_17} :catch_7c
    .catchall {:try_start_11 .. :try_end_17} :catchall_86

    .local v1, "stream":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 809
    :try_start_18
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v3, v1}, Lcom/android/server/om/OverlayManagerSettings;->restore(Ljava/io/InputStream;)V

    .line 815
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    .line 816
    .local v3, "liveUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [I

    .line 817
    .local v4, "liveUserIds":[I
    const/4 v5, 0x0

    move v6, v5

    .local v6, "i":I
    :goto_2c
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_45

    .line 818
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    aput v7, v4, v6

    .line 817
    add-int/lit8 v6, v6, 0x1

    goto :goto_2c

    .line 820
    .end local v6    # "i":I
    :cond_45
    invoke-static {v4}, Ljava/util/Arrays;->sort([I)V

    .line 822
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v6}, Lcom/android/server/om/OverlayManagerSettings;->getUsers()[I

    move-result-object v6

    array-length v7, v6

    :goto_4f
    if-ge v5, v7, :cond_61

    aget v8, v6, v5

    .line 823
    .local v8, "userId":I
    invoke-static {v4, v8}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v9

    if-gez v9, :cond_5e

    .line 824
    iget-object v9, p0, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v9, v8}, Lcom/android/server/om/OverlayManagerSettings;->removeUser(I)Z
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_5e} :catch_69
    .catchall {:try_start_18 .. :try_end_5e} :catchall_67

    .line 822
    .end local v8    # "userId":I
    :cond_5e
    add-int/lit8 v5, v5, 0x1

    goto :goto_4f

    .line 827
    .end local v3    # "liveUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v4    # "liveUserIds":[I
    :cond_61
    if-eqz v1, :cond_66

    :try_start_63
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_7c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_63 .. :try_end_66} :catch_7c
    .catchall {:try_start_63 .. :try_end_66} :catchall_86

    .line 829
    .end local v1    # "stream":Ljava/io/FileInputStream;
    :cond_66
    goto :goto_84

    .line 827
    .restart local v1    # "stream":Ljava/io/FileInputStream;
    :catchall_67
    move-exception v3

    goto :goto_6b

    .line 808
    :catch_69
    move-exception v2

    :try_start_6a
    throw v2
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_67

    .line 827
    :goto_6b
    if-eqz v1, :cond_7b

    if-eqz v2, :cond_78

    :try_start_6f
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_72
    .catch Ljava/lang/Throwable; {:try_start_6f .. :try_end_72} :catch_73
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_72} :catch_7c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6f .. :try_end_72} :catch_7c
    .catchall {:try_start_6f .. :try_end_72} :catchall_86

    goto :goto_7b

    :catch_73
    move-exception v4

    :try_start_74
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7b

    :cond_78
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :cond_7b
    :goto_7b
    throw v3
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_7c} :catch_7c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_74 .. :try_end_7c} :catch_7c
    .catchall {:try_start_74 .. :try_end_7c} :catchall_86

    .end local v1    # "stream":Ljava/io/FileInputStream;
    :catch_7c
    move-exception v1

    .line 828
    .local v1, "e":Ljava/lang/Exception;
    :try_start_7d
    const-string v2, "OverlayManager"

    const-string v3, "failed to restore overlay state"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 830
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_84
    monitor-exit v0

    .line 831
    return-void

    .line 830
    :catchall_86
    move-exception v1

    monitor-exit v0
    :try_end_88
    .catchall {:try_start_7d .. :try_end_88} :catchall_86

    throw v1
.end method

.method private schedulePersistSettings()V
    .registers 3

    .line 781
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mPersistSettingsScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 782
    return-void

    .line 784
    :cond_a
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/om/-$$Lambda$OverlayManagerService$YGMOwF5u3kvuRAEYnGl_xpXcVC4;

    invoke-direct {v1, p0}, Lcom/android/server/om/-$$Lambda$OverlayManagerService$YGMOwF5u3kvuRAEYnGl_xpXcVC4;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 801
    return-void
.end method

.method private updateAssets(ILjava/lang/String;)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "targetPackageName"    # Ljava/lang/String;

    .line 767
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/om/OverlayManagerService;->updateAssets(ILjava/util/List;)V

    .line 768
    return-void
.end method

.method private updateAssets(ILjava/util/List;)V
    .registers 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 771
    .local p2, "targetPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerService;->updateOverlayPaths(ILjava/util/List;)V

    .line 772
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 774
    .local v0, "am":Landroid/app/IActivityManager;
    :try_start_7
    invoke-interface {v0, p2, p1}, Landroid/app/IActivityManager;->scheduleApplicationInfoChanged(Ljava/util/List;I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    .line 777
    goto :goto_c

    .line 775
    :catch_b
    move-exception v1

    .line 778
    :goto_c
    return-void
.end method

.method private updateOverlayPaths(ILjava/util/List;)V
    .registers 15
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 727
    .local p2, "targetPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 728
    .local v0, "pm":Landroid/content/pm/PackageManagerInternal;
    const-string v1, "android"

    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 729
    .local v1, "updateFrameworkRes":Z
    if-eqz v1, :cond_14

    .line 730
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getTargetPackageNames(I)Ljava/util/List;

    move-result-object p2

    .line 733
    :cond_14
    new-instance v2, Landroid/util/ArrayMap;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/util/ArrayMap;-><init>(I)V

    .line 734
    .local v2, "pendingChanges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 735
    :try_start_20
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    const-string v5, "android"

    .line 736
    invoke-virtual {v4, v5, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->getEnabledOverlayPackageNames(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    .line 737
    .local v4, "frameworkOverlays":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    .line 738
    .local v5, "N":I
    const/4 v6, 0x0

    move v7, v6

    .local v7, "i":I
    :goto_2e
    if-ge v7, v5, :cond_55

    .line 739
    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 740
    .local v8, "targetPackageName":Ljava/lang/String;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 741
    .local v9, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v10, "android"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_46

    .line 742
    invoke-interface {v9, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 744
    :cond_46
    iget-object v10, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    invoke-virtual {v10, v8, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->getEnabledOverlayPackageNames(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 745
    invoke-interface {v2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    .end local v8    # "targetPackageName":Ljava/lang/String;
    .end local v9    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    add-int/lit8 v7, v7, 0x1

    goto :goto_2e

    .line 747
    .end local v4    # "frameworkOverlays":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "N":I
    .end local v7    # "i":I
    :cond_55
    monitor-exit v3
    :try_end_56
    .catchall {:try_start_20 .. :try_end_56} :catchall_8b

    .line 749
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    .line 750
    .local v3, "N":I
    move v4, v6

    .local v4, "i":I
    :goto_5b
    if-ge v4, v3, :cond_8a

    .line 751
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 758
    .local v5, "targetPackageName":Ljava/lang/String;
    nop

    .line 759
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 758
    invoke-virtual {v0, p1, v5, v7}, Landroid/content/pm/PackageManagerInternal;->setEnabledOverlayPackages(ILjava/lang/String;Ljava/util/List;)Z

    move-result v7

    if-nez v7, :cond_87

    .line 760
    const-string v7, "OverlayManager"

    const-string v8, "Failed to change enabled overlays for %s user %d"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v5, v9, v6

    .line 761
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    .line 760
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    .end local v5    # "targetPackageName":Ljava/lang/String;
    :cond_87
    add-int/lit8 v4, v4, 0x1

    goto :goto_5b

    .line 764
    .end local v4    # "i":I
    :cond_8a
    return-void

    .line 747
    .end local v3    # "N":I
    :catchall_8b
    move-exception v4

    :try_start_8c
    monitor-exit v3
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_8b

    throw v4
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 4
    .param p1, "phase"    # I

    .line 272
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_e

    .line 273
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mInitCompleteSignal:Ljava/util/concurrent/Future;

    const-string v1, "Wait for OverlayManagerService init"

    invoke-static {v0, v1}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 275
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mInitCompleteSignal:Ljava/util/concurrent/Future;

    .line 277
    :cond_e
    return-void
.end method

.method public onStart()V
    .registers 1

    .line 268
    return-void
.end method

.method public onSwitchUser(I)V
    .registers 4
    .param p1, "newUserId"    # I

    .line 301
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 302
    :try_start_3
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    invoke-virtual {v1, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateOverlaysForUser(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 303
    .local v1, "targets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, v1}, Lcom/android/server/om/OverlayManagerService;->updateAssets(ILjava/util/List;)V

    .line 304
    .end local v1    # "targets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_11

    .line 305
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerService;->schedulePersistSettings()V

    .line 306
    return-void

    .line 304
    :catchall_11
    move-exception v1

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v1
.end method
