.class public Lcom/android/server/content/SyncStorageEngineInjector;
.super Ljava/lang/Object;
.source "SyncStorageEngineInjector.java"


# static fields
.field private static final MI_PAUSE_FILE_NAME:Ljava/lang/String; = "mi_pause.xml"

.field private static final MI_STRATEGY_FILE_NAME:Ljava/lang/String; = "mi_strategy.xml"

.field private static final TAG:Ljava/lang/String; = "SyncManager"

.field private static final TAG_FILE:Ljava/lang/String; = "SyncManagerFile"

.field private static mMiPauseFile:Landroid/util/AtomicFile;

.field private static mMiStrategyFile:Landroid/util/AtomicFile;

.field private static mMiSyncPause:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/content/MiSyncPause;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mMiSyncStrategy:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/content/MiSyncStrategy;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 40
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/content/SyncStorageEngineInjector;->mMiSyncPause:Landroid/util/SparseArray;

    .line 44
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/content/SyncStorageEngineInjector;->mMiSyncStrategy:Landroid/util/SparseArray;

    .line 47
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/content/SyncStorageEngineInjector;->mMiPauseFile:Landroid/util/AtomicFile;

    .line 50
    sput-object v0, Lcom/android/server/content/SyncStorageEngineInjector;->mMiStrategyFile:Landroid/util/AtomicFile;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clear()V
    .registers 1

    .line 77
    sget-object v0, Lcom/android/server/content/SyncStorageEngineInjector;->mMiSyncPause:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 78
    sget-object v0, Lcom/android/server/content/SyncStorageEngineInjector;->mMiSyncStrategy:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 79
    return-void
.end method

.method public static clearAndReadAndWriteLocked()V
    .registers 0

    .line 82
    invoke-static {}, Lcom/android/server/content/SyncStorageEngineInjector;->clear()V

    .line 83
    invoke-static {}, Lcom/android/server/content/SyncStorageEngineInjector;->readAndWriteLocked()V

    .line 84
    return-void
.end method

.method private static containsXiaomiAccountName([Landroid/accounts/Account;Ljava/lang/String;)Z
    .registers 7
    .param p0, "accounts"    # [Landroid/accounts/Account;
    .param p1, "accountName"    # Ljava/lang/String;

    .line 371
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 372
    return v0

    .line 374
    :cond_4
    array-length v1, p0

    move v2, v0

    :goto_6
    if-ge v2, v1, :cond_1d

    aget-object v3, p0, v2

    .line 375
    .local v3, "account":Landroid/accounts/Account;
    invoke-static {v3}, Lcom/android/server/content/MiSyncUtils;->checkAccount(Landroid/accounts/Account;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 376
    iget-object v4, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 377
    const/4 v0, 0x1

    return v0

    .line 374
    .end local v3    # "account":Landroid/accounts/Account;
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 381
    :cond_1d
    return v0
.end method

.method public static doDatabaseCleanupLocked([Landroid/accounts/Account;I)V
    .registers 2
    .param p0, "accounts"    # [Landroid/accounts/Account;
    .param p1, "uid"    # I

    .line 87
    invoke-static {p0, p1}, Lcom/android/server/content/SyncStorageEngineInjector;->doMiPauseCleanUpLocked([Landroid/accounts/Account;I)V

    .line 88
    invoke-static {p0, p1}, Lcom/android/server/content/SyncStorageEngineInjector;->doMiStrategyCleanUpLocked([Landroid/accounts/Account;I)V

    .line 89
    invoke-static {}, Lcom/android/server/content/SyncStorageEngineInjector;->writeLocked()V

    .line 90
    return-void
.end method

.method private static doMiPauseCleanUpLocked([Landroid/accounts/Account;I)V
    .registers 6
    .param p0, "runningAccounts"    # [Landroid/accounts/Account;
    .param p1, "uid"    # I

    .line 321
    sget-object v0, Lcom/android/server/content/SyncStorageEngineInjector;->mMiSyncPause:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 322
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/content/MiSyncPause;>;"
    if-nez v0, :cond_1b

    .line 323
    const-string v1, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 324
    const-string v1, "SyncManager"

    const-string v2, "doMiPauseCleanUpLocked: map is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_1a
    return-void

    .line 328
    :cond_1b
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/server/content/SyncStorageEngineInjector;->getRemovingAccounts([Landroid/accounts/Account;Ljava/util/Set;)Ljava/util/List;

    move-result-object v1

    .line 329
    .local v1, "removing":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 330
    .local v3, "accountName":Ljava/lang/String;
    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    .end local v3    # "accountName":Ljava/lang/String;
    goto :goto_27

    .line 332
    :cond_37
    return-void
.end method

.method private static doMiStrategyCleanUpLocked([Landroid/accounts/Account;I)V
    .registers 6
    .param p0, "runningAccounts"    # [Landroid/accounts/Account;
    .param p1, "uid"    # I

    .line 335
    sget-object v0, Lcom/android/server/content/SyncStorageEngineInjector;->mMiSyncStrategy:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 336
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/content/MiSyncStrategy;>;"
    if-nez v0, :cond_1b

    .line 337
    const-string v1, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 338
    const-string v1, "SyncManager"

    const-string v2, "doMiStrategyCleanUpLocked: map is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_1a
    return-void

    .line 342
    :cond_1b
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/server/content/SyncStorageEngineInjector;->getRemovingAccounts([Landroid/accounts/Account;Ljava/util/Set;)Ljava/util/List;

    move-result-object v1

    .line 343
    .local v1, "removing":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 344
    .local v3, "accountName":Ljava/lang/String;
    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    .end local v3    # "accountName":Ljava/lang/String;
    goto :goto_27

    .line 346
    :cond_37
    return-void
.end method

.method public static getMiSyncPauseLocked(Ljava/lang/String;I)Lcom/android/server/content/MiSyncPause;
    .registers 3
    .param p0, "accountName"    # Ljava/lang/String;
    .param p1, "uid"    # I

    .line 451
    invoke-static {p0, p1}, Lcom/android/server/content/SyncStorageEngineInjector;->getOrCreateMiSyncPauseLocked(Ljava/lang/String;I)Lcom/android/server/content/MiSyncPause;

    move-result-object v0

    return-object v0
.end method

.method public static getMiSyncPauseToTimeLocked(Landroid/accounts/Account;I)J
    .registers 5
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "uid"    # I

    .line 428
    invoke-static {p0}, Lcom/android/server/content/MiSyncUtils;->checkAccount(Landroid/accounts/Account;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 429
    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 430
    const-string v0, "SyncManager"

    const-string v1, "getMiSyncPauseToTimeLocked: not xiaomi account"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_16
    const-wide/16 v0, 0x0

    return-wide v0

    .line 434
    :cond_19
    iget-object v0, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/server/content/SyncStorageEngineInjector;->getOrCreateMiSyncPauseLocked(Ljava/lang/String;I)Lcom/android/server/content/MiSyncPause;

    move-result-object v0

    .line 435
    .local v0, "miSyncPause":Lcom/android/server/content/MiSyncPause;
    invoke-virtual {v0}, Lcom/android/server/content/MiSyncPause;->getPauseEndTime()J

    move-result-wide v1

    return-wide v1
.end method

.method public static getMiSyncStrategyLocked(Landroid/accounts/Account;I)I
    .registers 4
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "uid"    # I

    .line 440
    invoke-static {p0}, Lcom/android/server/content/MiSyncUtils;->checkAccount(Landroid/accounts/Account;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 441
    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 442
    const-string v0, "SyncManager"

    const-string v1, "getMiSyncStrategyLocked: not xiaomi account"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_16
    const/4 v0, 0x1

    return v0

    .line 446
    :cond_18
    iget-object v0, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/server/content/SyncStorageEngineInjector;->getOrCreateMiSyncStrategyLocked(Ljava/lang/String;I)Lcom/android/server/content/MiSyncStrategy;

    move-result-object v0

    .line 447
    .local v0, "miSyncStrategy":Lcom/android/server/content/MiSyncStrategy;
    invoke-virtual {v0}, Lcom/android/server/content/MiSyncStrategy;->getStrategy()I

    move-result v1

    return v1
.end method

.method public static getMiSyncStrategyLocked(Ljava/lang/String;I)Lcom/android/server/content/MiSyncStrategy;
    .registers 3
    .param p0, "accountName"    # Ljava/lang/String;
    .param p1, "uid"    # I

    .line 455
    invoke-static {p0, p1}, Lcom/android/server/content/SyncStorageEngineInjector;->getOrCreateMiSyncStrategyLocked(Ljava/lang/String;I)Lcom/android/server/content/MiSyncStrategy;

    move-result-object v0

    return-object v0
.end method

.method private static getOrCreateMiSyncPauseLocked(Ljava/lang/String;I)Lcom/android/server/content/MiSyncPause;
    .registers 5
    .param p0, "accountName"    # Ljava/lang/String;
    .param p1, "uid"    # I

    .line 459
    sget-object v0, Lcom/android/server/content/SyncStorageEngineInjector;->mMiSyncPause:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 460
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/content/MiSyncPause;>;"
    if-nez v0, :cond_15

    .line 461
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v0, v1

    .line 462
    sget-object v1, Lcom/android/server/content/SyncStorageEngineInjector;->mMiSyncPause:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 464
    :cond_15
    const/4 v1, 0x0

    .line 465
    .local v1, "item":Lcom/android/server/content/MiSyncPause;
    if-nez p0, :cond_1a

    .line 466
    const-string p0, ""

    .line 468
    :cond_1a
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 469
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lcom/android/server/content/MiSyncPause;

    .line 471
    :cond_27
    if-nez v1, :cond_32

    .line 472
    new-instance v2, Lcom/android/server/content/MiSyncPause;

    invoke-direct {v2, p1, p0}, Lcom/android/server/content/MiSyncPause;-><init>(ILjava/lang/String;)V

    move-object v1, v2

    .line 473
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    :cond_32
    return-object v1
.end method

.method private static getOrCreateMiSyncStrategyLocked(Ljava/lang/String;I)Lcom/android/server/content/MiSyncStrategy;
    .registers 5
    .param p0, "accountName"    # Ljava/lang/String;
    .param p1, "uid"    # I

    .line 479
    sget-object v0, Lcom/android/server/content/SyncStorageEngineInjector;->mMiSyncStrategy:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 480
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/content/MiSyncStrategy;>;"
    if-nez v0, :cond_15

    .line 481
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v0, v1

    .line 482
    sget-object v1, Lcom/android/server/content/SyncStorageEngineInjector;->mMiSyncStrategy:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 484
    :cond_15
    const/4 v1, 0x0

    .line 485
    .local v1, "item":Lcom/android/server/content/MiSyncStrategy;
    if-nez p0, :cond_1a

    .line 486
    const-string p0, ""

    .line 488
    :cond_1a
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 489
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lcom/android/server/content/MiSyncStrategy;

    .line 491
    :cond_27
    if-nez v1, :cond_32

    .line 492
    new-instance v2, Lcom/android/server/content/MiSyncStrategy;

    invoke-direct {v2, p1, p0}, Lcom/android/server/content/MiSyncStrategy;-><init>(ILjava/lang/String;)V

    move-object v1, v2

    .line 493
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    :cond_32
    return-object v1
.end method

.method private static getRemovingAccounts([Landroid/accounts/Account;Ljava/util/Set;)Ljava/util/List;
    .registers 6
    .param p0, "runningAccounts"    # [Landroid/accounts/Account;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/accounts/Account;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 349
    .local p1, "currentAccountNameSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 351
    .local v0, "removing":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_18

    .line 352
    const-string v1, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 353
    const-string v1, "SyncManager"

    const-string v2, "getRemovingAccounts: Argument is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_17
    return-object v0

    .line 358
    :cond_18
    if-nez p0, :cond_1d

    .line 359
    const/4 v1, 0x0

    new-array p0, v1, [Landroid/accounts/Account;

    .line 362
    :cond_1d
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 363
    .local v2, "accountName":Ljava/lang/String;
    invoke-static {p0, v2}, Lcom/android/server/content/SyncStorageEngineInjector;->containsXiaomiAccountName([Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_36

    .line 364
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    .end local v2    # "accountName":Ljava/lang/String;
    :cond_36
    goto :goto_21

    .line 367
    :cond_37
    return-object v0
.end method

.method public static initAndReadAndWriteLocked(Ljava/io/File;)V
    .registers 4
    .param p0, "syncDir"    # Ljava/io/File;

    .line 55
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "mi_pause.xml"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    sput-object v0, Lcom/android/server/content/SyncStorageEngineInjector;->mMiPauseFile:Landroid/util/AtomicFile;

    .line 56
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "mi_strategy.xml"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    sput-object v0, Lcom/android/server/content/SyncStorageEngineInjector;->mMiStrategyFile:Landroid/util/AtomicFile;

    .line 58
    invoke-static {}, Lcom/android/server/content/SyncStorageEngineInjector;->readAndWriteLocked()V

    .line 59
    return-void
.end method

.method private static readAndWriteLocked()V
    .registers 0

    .line 62
    invoke-static {}, Lcom/android/server/content/SyncStorageEngineInjector;->readLocked()V

    .line 63
    invoke-static {}, Lcom/android/server/content/SyncStorageEngineInjector;->writeLocked()V

    .line 64
    return-void
.end method

.method private static readLocked()V
    .registers 0

    .line 67
    invoke-static {}, Lcom/android/server/content/SyncStorageEngineInjector;->readMiPauseLocked()V

    .line 68
    invoke-static {}, Lcom/android/server/content/SyncStorageEngineInjector;->readMiStrategyLocked()V

    .line 69
    return-void
.end method

.method private static readMiPauseLocked()V
    .registers 9

    .line 93
    const/4 v0, 0x0

    move-object v1, v0

    .line 95
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_2
    sget-object v2, Lcom/android/server/content/SyncStorageEngineInjector;->mMiPauseFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    move-object v1, v2

    .line 96
    const-string v2, "SyncManagerFile"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 97
    const-string v2, "SyncManagerFile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reading "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/server/content/SyncStorageEngineInjector;->mMiPauseFile:Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_2e
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 100
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 101
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 102
    .local v4, "eventType":I
    :goto_3f
    const/4 v5, 0x1

    if-eq v4, v3, :cond_4a

    if-eq v4, v5, :cond_4a

    .line 104
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    move v4, v5

    goto :goto_3f

    .line 106
    :cond_4a
    if-ne v4, v5, :cond_5b

    .line 107
    const-string v0, "SyncManager"

    const-string v3, "No initial mi pause"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_53} :catch_b7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_53} :catch_9d
    .catchall {:try_start_2 .. :try_end_53} :catchall_9b

    .line 139
    if-eqz v1, :cond_5a

    .line 141
    :try_start_55
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_59

    .line 143
    goto :goto_5a

    .line 142
    :catch_59
    move-exception v0

    .line 108
    :cond_5a
    :goto_5a
    return-void

    .line 111
    :cond_5b
    :try_start_5b
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 112
    .local v6, "tagName":Ljava/lang/String;
    const-string/jumbo v7, "mi_pause"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_92

    .line 113
    const-string/jumbo v7, "version"

    invoke-interface {v2, v0, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_6f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5b .. :try_end_6f} :catch_b7
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_6f} :catch_9d
    .catchall {:try_start_5b .. :try_end_6f} :catchall_9b

    .line 116
    .local v0, "versionString":Ljava/lang/String;
    const/4 v7, 0x0

    if-nez v0, :cond_73

    goto :goto_78

    :cond_73
    :try_start_73
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_77
    .catch Ljava/lang/NumberFormatException; {:try_start_73 .. :try_end_77} :catch_79
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_73 .. :try_end_77} :catch_b7
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_77} :catch_9d
    .catchall {:try_start_73 .. :try_end_77} :catchall_9b

    move v7, v8

    .line 119
    .local v7, "version":I
    :goto_78
    goto :goto_7b

    .line 117
    .end local v7    # "version":I
    :catch_79
    move-exception v8

    .line 118
    .local v8, "e":Ljava/lang/NumberFormatException;
    nop

    .line 120
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    .restart local v7    # "version":I
    :goto_7b
    if-lt v7, v5, :cond_92

    .line 121
    :try_start_7d
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    move v4, v8

    .line 123
    :cond_82
    if-ne v4, v3, :cond_8b

    .line 124
    invoke-static {v2}, Lcom/android/server/content/MiSyncPause;->readFromXML(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/content/MiSyncPause;

    move-result-object v8

    .line 125
    .local v8, "miSyncPause":Lcom/android/server/content/MiSyncPause;
    invoke-static {v8}, Lcom/android/server/content/SyncStorageEngineInjector;->setMiPauseInternalLocked(Lcom/android/server/content/MiSyncPause;)V

    .line 127
    .end local v8    # "miSyncPause":Lcom/android/server/content/MiSyncPause;
    :cond_8b
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8
    :try_end_8f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7d .. :try_end_8f} :catch_b7
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_8f} :catch_9d
    .catchall {:try_start_7d .. :try_end_8f} :catchall_9b

    move v4, v8

    .line 128
    if-ne v4, v5, :cond_82

    .line 139
    .end local v0    # "versionString":Ljava/lang/String;
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "eventType":I
    .end local v6    # "tagName":Ljava/lang/String;
    .end local v7    # "version":I
    :cond_92
    if-eqz v1, :cond_9a

    .line 141
    :try_start_94
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_97
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_97} :catch_98

    .line 143
    :goto_97
    goto :goto_9a

    .line 142
    :catch_98
    move-exception v0

    goto :goto_97

    .line 146
    :cond_9a
    :goto_9a
    return-void

    .line 139
    :catchall_9b
    move-exception v0

    goto :goto_c7

    .line 134
    :catch_9d
    move-exception v0

    .line 135
    .local v0, "e":Ljava/io/IOException;
    if-nez v1, :cond_a8

    :try_start_a0
    const-string v2, "SyncManager"

    const-string v3, "No initial mi pause"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_af

    .line 136
    :cond_a8
    const-string v2, "SyncManager"

    const-string v3, "Error reading mi pause"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_af
    .catchall {:try_start_a0 .. :try_end_af} :catchall_9b

    .line 139
    :goto_af
    if-eqz v1, :cond_b6

    .line 141
    :try_start_b1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_b4
    .catch Ljava/io/IOException; {:try_start_b1 .. :try_end_b4} :catch_b5

    .line 143
    goto :goto_b6

    .line 142
    :catch_b5
    move-exception v2

    .line 137
    :cond_b6
    :goto_b6
    return-void

    .line 131
    .end local v0    # "e":Ljava/io/IOException;
    :catch_b7
    move-exception v0

    .line 132
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_b8
    const-string v2, "SyncManager"

    const-string v3, "Error reading mi pause"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_bf
    .catchall {:try_start_b8 .. :try_end_bf} :catchall_9b

    .line 139
    if-eqz v1, :cond_c6

    .line 141
    :try_start_c1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_c4
    .catch Ljava/io/IOException; {:try_start_c1 .. :try_end_c4} :catch_c5

    .line 143
    goto :goto_c6

    .line 142
    :catch_c5
    move-exception v2

    .line 133
    :cond_c6
    :goto_c6
    return-void

    .line 139
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_c7
    if-eqz v1, :cond_ce

    .line 141
    :try_start_c9
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_cc
    .catch Ljava/io/IOException; {:try_start_c9 .. :try_end_cc} :catch_cd

    .line 143
    goto :goto_ce

    .line 142
    :catch_cd
    move-exception v2

    .line 143
    :cond_ce
    :goto_ce
    throw v0
.end method

.method private static readMiStrategyLocked()V
    .registers 9

    .line 149
    const/4 v0, 0x0

    move-object v1, v0

    .line 151
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_2
    sget-object v2, Lcom/android/server/content/SyncStorageEngineInjector;->mMiStrategyFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    move-object v1, v2

    .line 152
    const-string v2, "SyncManagerFile"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 153
    const-string v2, "SyncManagerFile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reading "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/server/content/SyncStorageEngineInjector;->mMiStrategyFile:Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_2e
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 156
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 157
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 158
    .local v4, "eventType":I
    :goto_3f
    const/4 v5, 0x1

    if-eq v4, v3, :cond_4a

    if-eq v4, v5, :cond_4a

    .line 160
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    move v4, v5

    goto :goto_3f

    .line 162
    :cond_4a
    if-ne v4, v5, :cond_5b

    .line 163
    const-string v0, "SyncManager"

    const-string v3, "No initial mi strategy"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_53} :catch_b7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_53} :catch_9d
    .catchall {:try_start_2 .. :try_end_53} :catchall_9b

    .line 195
    if-eqz v1, :cond_5a

    .line 197
    :try_start_55
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_59

    .line 199
    goto :goto_5a

    .line 198
    :catch_59
    move-exception v0

    .line 164
    :cond_5a
    :goto_5a
    return-void

    .line 167
    :cond_5b
    :try_start_5b
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 168
    .local v6, "tagName":Ljava/lang/String;
    const-string/jumbo v7, "mi_strategy"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_92

    .line 169
    const-string/jumbo v7, "version"

    invoke-interface {v2, v0, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_6f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5b .. :try_end_6f} :catch_b7
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_6f} :catch_9d
    .catchall {:try_start_5b .. :try_end_6f} :catchall_9b

    .line 172
    .local v0, "versionString":Ljava/lang/String;
    const/4 v7, 0x0

    if-nez v0, :cond_73

    goto :goto_78

    :cond_73
    :try_start_73
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_77
    .catch Ljava/lang/NumberFormatException; {:try_start_73 .. :try_end_77} :catch_79
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_73 .. :try_end_77} :catch_b7
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_77} :catch_9d
    .catchall {:try_start_73 .. :try_end_77} :catchall_9b

    move v7, v8

    .line 175
    .local v7, "version":I
    :goto_78
    goto :goto_7b

    .line 173
    .end local v7    # "version":I
    :catch_79
    move-exception v8

    .line 174
    .local v8, "e":Ljava/lang/NumberFormatException;
    nop

    .line 176
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    .restart local v7    # "version":I
    :goto_7b
    if-lt v7, v5, :cond_92

    .line 177
    :try_start_7d
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    move v4, v8

    .line 179
    :cond_82
    if-ne v4, v3, :cond_8b

    .line 180
    invoke-static {v2}, Lcom/android/server/content/MiSyncStrategy;->readFromXML(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/content/MiSyncStrategy;

    move-result-object v8

    .line 181
    .local v8, "miSyncStrategy":Lcom/android/server/content/MiSyncStrategy;
    invoke-static {v8}, Lcom/android/server/content/SyncStorageEngineInjector;->setMiStrategyInternalLocked(Lcom/android/server/content/MiSyncStrategy;)V

    .line 183
    .end local v8    # "miSyncStrategy":Lcom/android/server/content/MiSyncStrategy;
    :cond_8b
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8
    :try_end_8f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7d .. :try_end_8f} :catch_b7
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_8f} :catch_9d
    .catchall {:try_start_7d .. :try_end_8f} :catchall_9b

    move v4, v8

    .line 184
    if-ne v4, v5, :cond_82

    .line 195
    .end local v0    # "versionString":Ljava/lang/String;
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "eventType":I
    .end local v6    # "tagName":Ljava/lang/String;
    .end local v7    # "version":I
    :cond_92
    if-eqz v1, :cond_9a

    .line 197
    :try_start_94
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_97
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_97} :catch_98

    .line 199
    :goto_97
    goto :goto_9a

    .line 198
    :catch_98
    move-exception v0

    goto :goto_97

    .line 202
    :cond_9a
    :goto_9a
    return-void

    .line 195
    :catchall_9b
    move-exception v0

    goto :goto_c7

    .line 190
    :catch_9d
    move-exception v0

    .line 191
    .local v0, "e":Ljava/io/IOException;
    if-nez v1, :cond_a8

    :try_start_a0
    const-string v2, "SyncManager"

    const-string v3, "No initial mi strategy"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_af

    .line 192
    :cond_a8
    const-string v2, "SyncManager"

    const-string v3, "Error reading mi strategy"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_af
    .catchall {:try_start_a0 .. :try_end_af} :catchall_9b

    .line 195
    :goto_af
    if-eqz v1, :cond_b6

    .line 197
    :try_start_b1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_b4
    .catch Ljava/io/IOException; {:try_start_b1 .. :try_end_b4} :catch_b5

    .line 199
    goto :goto_b6

    .line 198
    :catch_b5
    move-exception v2

    .line 193
    :cond_b6
    :goto_b6
    return-void

    .line 187
    .end local v0    # "e":Ljava/io/IOException;
    :catch_b7
    move-exception v0

    .line 188
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_b8
    const-string v2, "SyncManager"

    const-string v3, "Error reading mi strategy"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_bf
    .catchall {:try_start_b8 .. :try_end_bf} :catchall_9b

    .line 195
    if-eqz v1, :cond_c6

    .line 197
    :try_start_c1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_c4
    .catch Ljava/io/IOException; {:try_start_c1 .. :try_end_c4} :catch_c5

    .line 199
    goto :goto_c6

    .line 198
    :catch_c5
    move-exception v2

    .line 189
    :cond_c6
    :goto_c6
    return-void

    .line 195
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_c7
    if-eqz v1, :cond_ce

    .line 197
    :try_start_c9
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_cc
    .catch Ljava/io/IOException; {:try_start_c9 .. :try_end_cc} :catch_cd

    .line 199
    goto :goto_ce

    .line 198
    :catch_cd
    move-exception v2

    .line 199
    :cond_ce
    :goto_ce
    throw v0
.end method

.method private static setMiPauseInternalLocked(Lcom/android/server/content/MiSyncPause;)V
    .registers 5
    .param p0, "miSyncPause"    # Lcom/android/server/content/MiSyncPause;

    .line 275
    if-nez p0, :cond_14

    .line 276
    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 277
    const-string v0, "SyncManager"

    const-string/jumbo v1, "setMiPauseInternalLocked: miSyncPause is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_13
    return-void

    .line 281
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/content/MiSyncPause;->getAccountName()Ljava/lang/String;

    move-result-object v0

    .line 282
    invoke-virtual {p0}, Lcom/android/server/content/MiSyncPause;->getPauseEndTime()J

    move-result-wide v1

    .line 283
    invoke-virtual {p0}, Lcom/android/server/content/MiSyncPause;->getUid()I

    move-result v3

    .line 281
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/content/SyncStorageEngineInjector;->setMiPauseInternalLocked(Ljava/lang/String;JI)V

    .line 284
    return-void
.end method

.method private static setMiPauseInternalLocked(Ljava/lang/String;JI)V
    .registers 6
    .param p0, "accountName"    # Ljava/lang/String;
    .param p1, "pauseTimeMillis"    # J
    .param p3, "uid"    # I

    .line 287
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 288
    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 289
    const-string v0, "SyncManager"

    const-string/jumbo v1, "setMiPauseInternalLocked: accountName is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_17
    return-void

    .line 293
    :cond_18
    invoke-static {p0, p3}, Lcom/android/server/content/SyncStorageEngineInjector;->getOrCreateMiSyncPauseLocked(Ljava/lang/String;I)Lcom/android/server/content/MiSyncPause;

    move-result-object v0

    .line 294
    .local v0, "item":Lcom/android/server/content/MiSyncPause;
    invoke-virtual {v0, p1, p2}, Lcom/android/server/content/MiSyncPause;->setPauseToTime(J)Z

    .line 295
    return-void
.end method

.method private static setMiStrategyInternalLocked(Lcom/android/server/content/MiSyncStrategy;)V
    .registers 4
    .param p0, "miSyncStrategy"    # Lcom/android/server/content/MiSyncStrategy;

    .line 298
    if-nez p0, :cond_14

    .line 299
    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 300
    const-string v0, "SyncManager"

    const-string/jumbo v1, "setMiStrategyInternalLocked: miSyncStrategy is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_13
    return-void

    .line 304
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/content/MiSyncStrategy;->getAccountName()Ljava/lang/String;

    move-result-object v0

    .line 305
    invoke-virtual {p0}, Lcom/android/server/content/MiSyncStrategy;->getStrategy()I

    move-result v1

    .line 306
    invoke-virtual {p0}, Lcom/android/server/content/MiSyncStrategy;->getUid()I

    move-result v2

    .line 304
    invoke-static {v0, v1, v2}, Lcom/android/server/content/SyncStorageEngineInjector;->setMiStrategyInternalLocked(Ljava/lang/String;II)V

    .line 307
    return-void
.end method

.method private static setMiStrategyInternalLocked(Ljava/lang/String;II)V
    .registers 5
    .param p0, "accountName"    # Ljava/lang/String;
    .param p1, "strategy"    # I
    .param p2, "uid"    # I

    .line 310
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 311
    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 312
    const-string v0, "SyncManager"

    const-string/jumbo v1, "setMiStrategyInternalLocked: accountName is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_17
    return-void

    .line 316
    :cond_18
    invoke-static {p0, p2}, Lcom/android/server/content/SyncStorageEngineInjector;->getOrCreateMiSyncStrategyLocked(Ljava/lang/String;I)Lcom/android/server/content/MiSyncStrategy;

    move-result-object v0

    .line 317
    .local v0, "item":Lcom/android/server/content/MiSyncStrategy;
    invoke-virtual {v0, p1}, Lcom/android/server/content/MiSyncStrategy;->setStrategy(I)Z

    .line 318
    return-void
.end method

.method public static setMiSyncPauseToTimeLocked(Landroid/accounts/Account;JI)V
    .registers 8
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "pauseTimeMillis"    # J
    .param p3, "uid"    # I

    .line 386
    invoke-static {p0}, Lcom/android/server/content/MiSyncUtils;->checkAccount(Landroid/accounts/Account;)Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_18

    .line 387
    const-string v0, "SyncManager"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 388
    const-string v0, "SyncManager"

    const-string/jumbo v1, "setMiSyncPauseToTimeLocked: account is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_17
    return-void

    .line 393
    :cond_18
    iget-object v0, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0, p3}, Lcom/android/server/content/SyncStorageEngineInjector;->getOrCreateMiSyncPauseLocked(Ljava/lang/String;I)Lcom/android/server/content/MiSyncPause;

    move-result-object v0

    .line 394
    .local v0, "miSyncPause":Lcom/android/server/content/MiSyncPause;
    invoke-virtual {v0}, Lcom/android/server/content/MiSyncPause;->getPauseEndTime()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_37

    .line 395
    const-string v2, "SyncManager"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 396
    const-string v1, "SyncManager"

    const-string/jumbo v2, "setMiSyncPauseTimeLocked: pause time is not changed"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :cond_36
    return-void

    .line 400
    :cond_37
    invoke-virtual {v0, p1, p2}, Lcom/android/server/content/MiSyncPause;->setPauseToTime(J)Z

    .line 402
    invoke-static {}, Lcom/android/server/content/SyncStorageEngineInjector;->writeMiPauseLocked()V

    .line 403
    return-void
.end method

.method public static setMiSyncStrategyLocked(Landroid/accounts/Account;II)V
    .registers 6
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "strategy"    # I
    .param p2, "uid"    # I

    .line 407
    invoke-static {p0}, Lcom/android/server/content/MiSyncUtils;->checkAccount(Landroid/accounts/Account;)Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_18

    .line 408
    const-string v0, "SyncManager"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 409
    const-string v0, "SyncManager"

    const-string/jumbo v1, "setMiSyncStrategyLocked: account is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_17
    return-void

    .line 414
    :cond_18
    iget-object v0, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/android/server/content/SyncStorageEngineInjector;->getOrCreateMiSyncStrategyLocked(Ljava/lang/String;I)Lcom/android/server/content/MiSyncStrategy;

    move-result-object v0

    .line 415
    .local v0, "miSyncStrategy":Lcom/android/server/content/MiSyncStrategy;
    invoke-virtual {v0}, Lcom/android/server/content/MiSyncStrategy;->getStrategy()I

    move-result v2

    if-ne v2, p1, :cond_35

    .line 416
    const-string v2, "SyncManager"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 417
    const-string v1, "SyncManager"

    const-string/jumbo v2, "setMiSyncPauseTimeLocked: strategy is not changed"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :cond_34
    return-void

    .line 421
    :cond_35
    invoke-virtual {v0, p1}, Lcom/android/server/content/MiSyncStrategy;->setStrategy(I)Z

    .line 423
    invoke-static {}, Lcom/android/server/content/SyncStorageEngineInjector;->writeMiStrategyLocked()V

    .line 424
    return-void
.end method

.method public static updateResultStatusLocked(Landroid/content/SyncStatusInfo;Ljava/lang/String;Landroid/content/SyncResult;)V
    .registers 3
    .param p0, "syncStatusInfo"    # Landroid/content/SyncStatusInfo;
    .param p1, "lastSyncMessage"    # Ljava/lang/String;
    .param p2, "syncResult"    # Landroid/content/SyncResult;

    .line 500
    invoke-static {p0, p1, p2}, Lcom/android/server/content/MiSyncResultStatusAdapter;->updateResultStatus(Landroid/content/SyncStatusInfo;Ljava/lang/String;Landroid/content/SyncResult;)V

    .line 502
    return-void
.end method

.method private static writeLocked()V
    .registers 0

    .line 72
    invoke-static {}, Lcom/android/server/content/SyncStorageEngineInjector;->writeMiPauseLocked()V

    .line 73
    invoke-static {}, Lcom/android/server/content/SyncStorageEngineInjector;->writeMiStrategyLocked()V

    .line 74
    return-void
.end method

.method private static writeMiPauseLocked()V
    .registers 9

    .line 205
    const-string v0, "SyncManagerFile"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 206
    const-string v0, "SyncManagerFile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing new "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/content/SyncStorageEngineInjector;->mMiPauseFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_25
    const/4 v0, 0x0

    move-object v1, v0

    .line 211
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_27
    sget-object v2, Lcom/android/server/content/SyncStorageEngineInjector;->mMiPauseFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v1, v2

    .line 212
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 213
    .local v2, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 214
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 215
    const-string v4, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v2, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 217
    const-string/jumbo v4, "mi_pause"

    invoke-interface {v2, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 218
    const-string/jumbo v4, "version"

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 220
    sget-object v3, Lcom/android/server/content/SyncStorageEngineInjector;->mMiSyncPause:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 221
    .local v3, "m":I
    const/4 v4, 0x0

    .line 221
    .local v4, "i":I
    :goto_60
    if-ge v4, v3, :cond_85

    .line 222
    sget-object v5, Lcom/android/server/content/SyncStorageEngineInjector;->mMiSyncPause:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 223
    .local v5, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/content/MiSyncPause;>;"
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    .line 224
    .local v6, "values":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/content/MiSyncPause;>;"
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_72
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_82

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/content/MiSyncPause;

    .line 225
    .local v8, "item":Lcom/android/server/content/MiSyncPause;
    invoke-virtual {v8, v2}, Lcom/android/server/content/MiSyncPause;->writeToXML(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 226
    .end local v8    # "item":Lcom/android/server/content/MiSyncPause;
    goto :goto_72

    .line 221
    .end local v5    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/content/MiSyncPause;>;"
    .end local v6    # "values":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/content/MiSyncPause;>;"
    :cond_82
    add-int/lit8 v4, v4, 0x1

    goto :goto_60

    .line 228
    .end local v4    # "i":I
    :cond_85
    const-string/jumbo v4, "mi_pause"

    invoke-interface {v2, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 229
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 230
    sget-object v0, Lcom/android/server/content/SyncStorageEngineInjector;->mMiPauseFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_93} :catch_94

    .line 236
    .end local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v3    # "m":I
    goto :goto_a3

    .line 231
    :catch_94
    move-exception v0

    .line 232
    .local v0, "e1":Ljava/io/IOException;
    const-string v2, "SyncManager"

    const-string v3, "Error writing mi pause"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 233
    if-eqz v1, :cond_a3

    .line 234
    sget-object v2, Lcom/android/server/content/SyncStorageEngineInjector;->mMiPauseFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 237
    .end local v0    # "e1":Ljava/io/IOException;
    :cond_a3
    :goto_a3
    return-void
.end method

.method private static writeMiStrategyLocked()V
    .registers 9

    .line 240
    const-string v0, "SyncManagerFile"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 241
    const-string v0, "SyncManagerFile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing new "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/content/SyncStorageEngineInjector;->mMiStrategyFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_25
    const/4 v0, 0x0

    move-object v1, v0

    .line 246
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_27
    sget-object v2, Lcom/android/server/content/SyncStorageEngineInjector;->mMiStrategyFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v1, v2

    .line 247
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 248
    .local v2, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 249
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 250
    const-string v4, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v2, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 252
    const-string/jumbo v4, "mi_strategy"

    invoke-interface {v2, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 253
    const-string/jumbo v4, "version"

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 255
    sget-object v3, Lcom/android/server/content/SyncStorageEngineInjector;->mMiSyncStrategy:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 256
    .local v3, "m":I
    const/4 v4, 0x0

    .line 256
    .local v4, "i":I
    :goto_60
    if-ge v4, v3, :cond_85

    .line 257
    sget-object v5, Lcom/android/server/content/SyncStorageEngineInjector;->mMiSyncStrategy:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 258
    .local v5, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/content/MiSyncStrategy;>;"
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    .line 259
    .local v6, "values":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/content/MiSyncStrategy;>;"
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_72
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_82

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/content/MiSyncStrategy;

    .line 260
    .local v8, "item":Lcom/android/server/content/MiSyncStrategy;
    invoke-virtual {v8, v2}, Lcom/android/server/content/MiSyncStrategy;->writeToXML(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 261
    .end local v8    # "item":Lcom/android/server/content/MiSyncStrategy;
    goto :goto_72

    .line 256
    .end local v5    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/content/MiSyncStrategy;>;"
    .end local v6    # "values":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/content/MiSyncStrategy;>;"
    :cond_82
    add-int/lit8 v4, v4, 0x1

    goto :goto_60

    .line 263
    .end local v4    # "i":I
    :cond_85
    const-string/jumbo v4, "mi_strategy"

    invoke-interface {v2, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 264
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 265
    sget-object v0, Lcom/android/server/content/SyncStorageEngineInjector;->mMiStrategyFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_93} :catch_94

    .line 271
    .end local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v3    # "m":I
    goto :goto_a3

    .line 266
    :catch_94
    move-exception v0

    .line 267
    .local v0, "e1":Ljava/io/IOException;
    const-string v2, "SyncManager"

    const-string v3, "Error writing mi strategy"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 268
    if-eqz v1, :cond_a3

    .line 269
    sget-object v2, Lcom/android/server/content/SyncStorageEngineInjector;->mMiStrategyFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 272
    .end local v0    # "e1":Ljava/io/IOException;
    :cond_a3
    :goto_a3
    return-void
.end method
