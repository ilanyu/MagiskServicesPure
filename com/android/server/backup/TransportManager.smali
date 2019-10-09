.class public Lcom/android/server/backup/TransportManager;
.super Ljava/lang/Object;
.source "TransportManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/TransportManager$TransportDescription;
    }
.end annotation


# static fields
.field public static final SERVICE_ACTION_TRANSPORT_HOST:Ljava/lang/String; = "android.backup.TRANSPORT_HOST"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "BackupTransportManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private volatile mCurrentTransportName:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mTransportLock"
    .end annotation
.end field

.field private mOnTransportRegisteredListener:Lcom/android/server/backup/transport/OnTransportRegisteredListener;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mRegisteredTransportsDescriptionMap:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mTransportLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/backup/TransportManager$TransportDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final mTransportClientManager:Lcom/android/server/backup/transport/TransportClientManager;

.field private final mTransportLock:Ljava/lang/Object;

.field private final mTransportServiceIntent:Landroid/content/Intent;

.field private final mTransportStats:Lcom/android/server/backup/transport/TransportStats;

.field private final mTransportWhitelist:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/Set;Ljava/lang/String;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "selectedTransport"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 89
    .local p2, "whitelist":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.backup.TRANSPORT_HOST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportServiceIntent:Landroid/content/Intent;

    .line 69
    sget-object v0, Lcom/android/server/backup/-$$Lambda$TransportManager$Z9ckpFUW2V4jkdHnyXIEiLuAoBc;->INSTANCE:Lcom/android/server/backup/-$$Lambda$TransportManager$Z9ckpFUW2V4jkdHnyXIEiLuAoBc;

    iput-object v0, p0, Lcom/android/server/backup/TransportManager;->mOnTransportRegisteredListener:Lcom/android/server/backup/transport/OnTransportRegisteredListener;

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    .line 81
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/TransportManager;->mRegisteredTransportsDescriptionMap:Ljava/util/Map;

    .line 90
    iput-object p1, p0, Lcom/android/server/backup/TransportManager;->mContext:Landroid/content/Context;

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/TransportManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 92
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportWhitelist:Ljava/util/Set;

    .line 93
    iput-object p3, p0, Lcom/android/server/backup/TransportManager;->mCurrentTransportName:Ljava/lang/String;

    .line 94
    new-instance v0, Lcom/android/server/backup/transport/TransportStats;

    invoke-direct {v0}, Lcom/android/server/backup/transport/TransportStats;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportStats:Lcom/android/server/backup/transport/TransportStats;

    .line 95
    new-instance v0, Lcom/android/server/backup/transport/TransportClientManager;

    iget-object v1, p0, Lcom/android/server/backup/TransportManager;->mTransportStats:Lcom/android/server/backup/transport/TransportStats;

    invoke-direct {v0, p1, v1}, Lcom/android/server/backup/transport/TransportClientManager;-><init>(Landroid/content/Context;Lcom/android/server/backup/transport/TransportStats;)V

    iput-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportClientManager:Lcom/android/server/backup/transport/TransportClientManager;

    .line 96
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/Set;Ljava/lang/String;Lcom/android/server/backup/transport/TransportClientManager;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "selectedTransport"    # Ljava/lang/String;
    .param p4, "transportClientManager"    # Lcom/android/server/backup/transport/TransportClientManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/transport/TransportClientManager;",
            ")V"
        }
    .end annotation

    .line 103
    .local p2, "whitelist":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.backup.TRANSPORT_HOST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportServiceIntent:Landroid/content/Intent;

    .line 69
    sget-object v0, Lcom/android/server/backup/-$$Lambda$TransportManager$Z9ckpFUW2V4jkdHnyXIEiLuAoBc;->INSTANCE:Lcom/android/server/backup/-$$Lambda$TransportManager$Z9ckpFUW2V4jkdHnyXIEiLuAoBc;

    iput-object v0, p0, Lcom/android/server/backup/TransportManager;->mOnTransportRegisteredListener:Lcom/android/server/backup/transport/OnTransportRegisteredListener;

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    .line 81
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/TransportManager;->mRegisteredTransportsDescriptionMap:Ljava/util/Map;

    .line 104
    iput-object p1, p0, Lcom/android/server/backup/TransportManager;->mContext:Landroid/content/Context;

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/TransportManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 106
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportWhitelist:Ljava/util/Set;

    .line 107
    iput-object p3, p0, Lcom/android/server/backup/TransportManager;->mCurrentTransportName:Ljava/lang/String;

    .line 108
    new-instance v0, Lcom/android/server/backup/transport/TransportStats;

    invoke-direct {v0}, Lcom/android/server/backup/transport/TransportStats;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportStats:Lcom/android/server/backup/transport/TransportStats;

    .line 109
    iput-object p4, p0, Lcom/android/server/backup/TransportManager;->mTransportClientManager:Lcom/android/server/backup/transport/TransportClientManager;

    .line 110
    return-void
.end method

.method private checkCanUseTransport()V
    .registers 3

    .line 647
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    .line 648
    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Can\'t call transport with transport lock held"

    .line 647
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 649
    return-void
.end method

.method private static fromPackageFilter(Ljava/lang/String;)Ljava/util/function/Predicate;
    .registers 2
    .param p0, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/function/Predicate<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 660
    new-instance v0, Lcom/android/server/backup/-$$Lambda$TransportManager$_dxJobf45tWiMkaNlKY-z26kB2Q;

    invoke-direct {v0, p0}, Lcom/android/server/backup/-$$Lambda$TransportManager$_dxJobf45tWiMkaNlKY-z26kB2Q;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private getRegisteredTransportComponentLocked(Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 4
    .param p1, "transportName"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mTransportLock"
    .end annotation

    .line 351
    nop

    .line 352
    invoke-direct {p0, p1}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportEntryLocked(Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 353
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/server/backup/TransportManager$TransportDescription;>;"
    if-nez v0, :cond_9

    const/4 v1, 0x0

    goto :goto_f

    :cond_9
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    :goto_f
    return-object v1
.end method

.method private getRegisteredTransportDescriptionLocked(Ljava/lang/String;)Lcom/android/server/backup/TransportManager$TransportDescription;
    .registers 4
    .param p1, "transportName"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mTransportLock"
    .end annotation

    .line 359
    nop

    .line 360
    invoke-direct {p0, p1}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportEntryLocked(Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 361
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/server/backup/TransportManager$TransportDescription;>;"
    if-nez v0, :cond_9

    const/4 v1, 0x0

    goto :goto_f

    :cond_9
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/backup/TransportManager$TransportDescription;

    :goto_f
    return-object v1
.end method

.method private getRegisteredTransportDescriptionOrThrowLocked(Landroid/content/ComponentName;)Lcom/android/server/backup/TransportManager$TransportDescription;
    .registers 4
    .param p1, "transportComponent"    # Landroid/content/ComponentName;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mTransportLock"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/transport/TransportNotRegisteredException;
        }
    .end annotation

    .line 330
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mRegisteredTransportsDescriptionMap:Ljava/util/Map;

    .line 331
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/TransportManager$TransportDescription;

    .line 332
    .local v0, "description":Lcom/android/server/backup/TransportManager$TransportDescription;
    if-eqz v0, :cond_b

    .line 335
    return-object v0

    .line 333
    :cond_b
    new-instance v1, Lcom/android/server/backup/transport/TransportNotRegisteredException;

    invoke-direct {v1, p1}, Lcom/android/server/backup/transport/TransportNotRegisteredException;-><init>(Landroid/content/ComponentName;)V

    throw v1
.end method

.method private getRegisteredTransportDescriptionOrThrowLocked(Ljava/lang/String;)Lcom/android/server/backup/TransportManager$TransportDescription;
    .registers 4
    .param p1, "transportName"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mTransportLock"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/transport/TransportNotRegisteredException;
        }
    .end annotation

    .line 341
    invoke-direct {p0, p1}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportDescriptionLocked(Ljava/lang/String;)Lcom/android/server/backup/TransportManager$TransportDescription;

    move-result-object v0

    .line 342
    .local v0, "description":Lcom/android/server/backup/TransportManager$TransportDescription;
    if-eqz v0, :cond_7

    .line 345
    return-object v0

    .line 343
    :cond_7
    new-instance v1, Lcom/android/server/backup/transport/TransportNotRegisteredException;

    invoke-direct {v1, p1}, Lcom/android/server/backup/transport/TransportNotRegisteredException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getRegisteredTransportEntryLocked(Ljava/lang/String;)Ljava/util/Map$Entry;
    .registers 6
    .param p1, "transportName"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mTransportLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map$Entry<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/backup/TransportManager$TransportDescription;",
            ">;"
        }
    .end annotation

    .line 369
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mRegisteredTransportsDescriptionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 370
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/server/backup/TransportManager$TransportDescription;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/backup/TransportManager$TransportDescription;

    .line 371
    .local v2, "description":Lcom/android/server/backup/TransportManager$TransportDescription;
    # getter for: Lcom/android/server/backup/TransportManager$TransportDescription;->name:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/backup/TransportManager$TransportDescription;->access$000(Lcom/android/server/backup/TransportManager$TransportDescription;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 372
    return-object v1

    .line 374
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/server/backup/TransportManager$TransportDescription;>;"
    .end local v2    # "description":Lcom/android/server/backup/TransportManager$TransportDescription;
    :cond_27
    goto :goto_a

    .line 375
    :cond_28
    const/4 v0, 0x0

    return-object v0
.end method

.method private isTransportTrusted(Landroid/content/ComponentName;)Z
    .registers 7
    .param p1, "transport"    # Landroid/content/ComponentName;

    .line 557
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportWhitelist:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_29

    .line 558
    const-string v0, "BackupTransportManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BackupTransport "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not whitelisted."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    return v1

    .line 563
    :cond_29
    :try_start_29
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 564
    .local v0, "packInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_5b

    .line 566
    const-string v2, "BackupTransportManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Transport package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " not privileged"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_29 .. :try_end_5a} :catch_5e

    .line 567
    return v1

    .line 572
    .end local v0    # "packInfo":Landroid/content/pm/PackageInfo;
    :cond_5b
    nop

    .line 573
    const/4 v0, 0x1

    return v0

    .line 569
    :catch_5e
    move-exception v0

    .line 570
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "BackupTransportManager"

    const-string v3, "Package not found."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 571
    return v1
.end method

.method static synthetic lambda$fromPackageFilter$3(Ljava/lang/String;Landroid/content/ComponentName;)Z
    .registers 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "transportComponent"    # Landroid/content/ComponentName;

    .line 660
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$new$0(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2
    .param p0, "c"    # Ljava/lang/String;
    .param p1, "n"    # Ljava/lang/String;

    .line 69
    return-void
.end method

.method static synthetic lambda$onPackageAdded$1(Landroid/content/ComponentName;)Z
    .registers 2
    .param p0, "transportComponent"    # Landroid/content/ComponentName;

    .line 119
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$registerTransports$2(Landroid/content/ComponentName;)Z
    .registers 2
    .param p0, "transportComponent"    # Landroid/content/ComponentName;

    .line 520
    const/4 v0, 0x1

    return v0
.end method

.method private registerTransport(Landroid/content/ComponentName;)I
    .registers 13
    .param p1, "transportComponent"    # Landroid/content/ComponentName;

    .line 587
    invoke-direct {p0}, Lcom/android/server/backup/TransportManager;->checkCanUseTransport()V

    .line 589
    invoke-direct {p0, p1}, Lcom/android/server/backup/TransportManager;->isTransportTrusted(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 590
    const/4 v0, -0x2

    return v0

    .line 593
    :cond_b
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    .line 594
    .local v0, "transportString":Ljava/lang/String;
    const-string v1, "TransportManager.registerTransport()"

    .line 596
    .local v1, "callerLogString":Ljava/lang/String;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 597
    .local v2, "extras":Landroid/os/Bundle;
    const-string v3, "android.app.backup.extra.TRANSPORT_REGISTRATION"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 599
    iget-object v3, p0, Lcom/android/server/backup/TransportManager;->mTransportClientManager:Lcom/android/server/backup/transport/TransportClientManager;

    invoke-virtual {v3, p1, v2, v1}, Lcom/android/server/backup/transport/TransportClientManager;->getTransportClient(Landroid/content/ComponentName;Landroid/os/Bundle;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object v3

    .line 603
    .local v3, "transportClient":Lcom/android/server/backup/transport/TransportClient;
    const/4 v4, -0x1

    :try_start_23
    invoke-virtual {v3, v1}, Lcom/android/server/backup/transport/TransportClient;->connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v5
    :try_end_27
    .catch Lcom/android/server/backup/transport/TransportNotAvailableException; {:try_start_23 .. :try_end_27} :catch_79

    .line 608
    .local v5, "transport":Lcom/android/internal/backup/IBackupTransport;
    nop

    .line 607
    nop

    .line 612
    :try_start_29
    invoke-interface {v5}, Lcom/android/internal/backup/IBackupTransport;->name()Ljava/lang/String;

    move-result-object v6

    .line 613
    .local v6, "transportName":Ljava/lang/String;
    invoke-interface {v5}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v7

    .line 614
    .local v7, "transportDirName":Ljava/lang/String;
    invoke-direct {p0, p1, v5}, Lcom/android/server/backup/TransportManager;->registerTransport(Landroid/content/ComponentName;Lcom/android/internal/backup/IBackupTransport;)V

    .line 616
    const-string v8, "BackupTransportManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Transport "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " registered"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    iget-object v8, p0, Lcom/android/server/backup/TransportManager;->mOnTransportRegisteredListener:Lcom/android/server/backup/transport/OnTransportRegisteredListener;

    invoke-interface {v8, v6, v7}, Lcom/android/server/backup/transport/OnTransportRegisteredListener;->onTransportRegistered(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_54} :catch_56

    .line 618
    const/4 v4, 0x0

    .line 622
    .end local v6    # "transportName":Ljava/lang/String;
    .end local v7    # "transportDirName":Ljava/lang/String;
    .local v4, "result":I
    goto :goto_73

    .line 619
    .end local v4    # "result":I
    :catch_56
    move-exception v6

    .line 620
    .local v6, "e":Landroid/os/RemoteException;
    const-string v7, "BackupTransportManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Transport "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " died while registering"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    nop

    .line 624
    .end local v6    # "e":Landroid/os/RemoteException;
    .restart local v4    # "result":I
    :goto_73
    iget-object v6, p0, Lcom/android/server/backup/TransportManager;->mTransportClientManager:Lcom/android/server/backup/transport/TransportClientManager;

    invoke-virtual {v6, v3, v1}, Lcom/android/server/backup/transport/TransportClientManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    .line 625
    return v4

    .line 604
    .end local v4    # "result":I
    .end local v5    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :catch_79
    move-exception v5

    .line 605
    .local v5, "e":Lcom/android/server/backup/transport/TransportNotAvailableException;
    const-string v6, "BackupTransportManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t connect to transport "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " for registration"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    iget-object v6, p0, Lcom/android/server/backup/TransportManager;->mTransportClientManager:Lcom/android/server/backup/transport/TransportClientManager;

    invoke-virtual {v6, v3, v1}, Lcom/android/server/backup/transport/TransportClientManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    .line 607
    return v4
.end method

.method private registerTransport(Landroid/content/ComponentName;Lcom/android/internal/backup/IBackupTransport;)V
    .registers 12
    .param p1, "transportComponent"    # Landroid/content/ComponentName;
    .param p2, "transport"    # Lcom/android/internal/backup/IBackupTransport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 631
    invoke-direct {p0}, Lcom/android/server/backup/TransportManager;->checkCanUseTransport()V

    .line 633
    new-instance v8, Lcom/android/server/backup/TransportManager$TransportDescription;

    .line 635
    invoke-interface {p2}, Lcom/android/internal/backup/IBackupTransport;->name()Ljava/lang/String;

    move-result-object v1

    .line 636
    invoke-interface {p2}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v2

    .line 637
    invoke-interface {p2}, Lcom/android/internal/backup/IBackupTransport;->configurationIntent()Landroid/content/Intent;

    move-result-object v3

    .line 638
    invoke-interface {p2}, Lcom/android/internal/backup/IBackupTransport;->currentDestinationString()Ljava/lang/String;

    move-result-object v4

    .line 639
    invoke-interface {p2}, Lcom/android/internal/backup/IBackupTransport;->dataManagementIntent()Landroid/content/Intent;

    move-result-object v5

    .line 640
    invoke-interface {p2}, Lcom/android/internal/backup/IBackupTransport;->dataManagementLabel()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/server/backup/TransportManager$TransportDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Lcom/android/server/backup/TransportManager$1;)V

    .line 641
    .local v0, "description":Lcom/android/server/backup/TransportManager$TransportDescription;
    iget-object v1, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v1

    .line 642
    :try_start_25
    iget-object v2, p0, Lcom/android/server/backup/TransportManager;->mRegisteredTransportsDescriptionMap:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    monitor-exit v1

    .line 644
    return-void

    .line 643
    :catchall_2c
    move-exception v2

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_2c

    throw v2
.end method

.method private registerTransportsForIntent(Landroid/content/Intent;Ljava/util/function/Predicate;)V
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/function/Predicate<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .line 541
    .local p2, "transportComponentFilter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/content/ComponentName;>;"
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 542
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 543
    .local v0, "hosts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v0, :cond_a

    .line 544
    return-void

    .line 546
    :cond_a
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 547
    .local v2, "host":Landroid/content/pm/ResolveInfo;
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v3}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    .line 548
    .local v3, "transportComponent":Landroid/content/ComponentName;
    invoke-interface {p2, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 549
    invoke-direct {p0, v3}, Lcom/android/server/backup/TransportManager;->isTransportTrusted(Landroid/content/ComponentName;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 550
    invoke-direct {p0, v3}, Lcom/android/server/backup/TransportManager;->registerTransport(Landroid/content/ComponentName;)I

    .line 552
    .end local v2    # "host":Landroid/content/pm/ResolveInfo;
    .end local v3    # "transportComponent":Landroid/content/ComponentName;
    :cond_2f
    goto :goto_e

    .line 553
    :cond_30
    return-void
.end method

.method private registerTransportsFromPackage(Ljava/lang/String;Ljava/util/function/Predicate;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .line 527
    .local p2, "transportComponentFilter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/content/ComponentName;>;"
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_6} :catch_1e

    .line 531
    nop

    .line 533
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/backup/TransportManager;->mTransportServiceIntent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 534
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 535
    invoke-static {p1}, Lcom/android/server/backup/TransportManager;->fromPackageFilter(Ljava/lang/String;)Ljava/util/function/Predicate;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/function/Predicate;->and(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v1

    .line 533
    invoke-direct {p0, v0, v1}, Lcom/android/server/backup/TransportManager;->registerTransportsForIntent(Landroid/content/Intent;Ljava/util/function/Predicate;)V

    .line 536
    return-void

    .line 528
    :catch_1e
    move-exception v0

    .line 529
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "BackupTransportManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to register transports from package not found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    return-void
.end method


# virtual methods
.method public disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V
    .registers 4
    .param p1, "transportClient"    # Lcom/android/server/backup/transport/TransportClient;
    .param p2, "caller"    # Ljava/lang/String;

    .line 460
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportClientManager:Lcom/android/server/backup/transport/TransportClientManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/backup/transport/TransportClientManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    .line 461
    return-void
.end method

.method public dumpTransportClients(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 652
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportClientManager:Lcom/android/server/backup/transport/TransportClientManager;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/transport/TransportClientManager;->dump(Ljava/io/PrintWriter;)V

    .line 653
    return-void
.end method

.method public dumpTransportStats(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 656
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportStats:Lcom/android/server/backup/transport/TransportStats;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/transport/TransportStats;->dump(Ljava/io/PrintWriter;)V

    .line 657
    return-void
.end method

.method public forEachRegisteredTransport(Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 292
    .local p1, "transportConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 294
    :try_start_3
    iget-object v1, p0, Lcom/android/server/backup/TransportManager;->mRegisteredTransportsDescriptionMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/backup/TransportManager$TransportDescription;

    .line 295
    .local v2, "transportDescription":Lcom/android/server/backup/TransportManager$TransportDescription;
    # getter for: Lcom/android/server/backup/TransportManager$TransportDescription;->name:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/backup/TransportManager$TransportDescription;->access$000(Lcom/android/server/backup/TransportManager$TransportDescription;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 296
    .end local v2    # "transportDescription":Lcom/android/server/backup/TransportManager$TransportDescription;
    goto :goto_d

    .line 297
    :cond_21
    monitor-exit v0

    .line 298
    return-void

    .line 297
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public getCurrentTransportClient(Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;
    .registers 4
    .param p1, "caller"    # Ljava/lang/String;

    .line 430
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 431
    :try_start_3
    iget-object v1, p0, Lcom/android/server/backup/TransportManager;->mCurrentTransportName:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/backup/TransportManager;->getTransportClient(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 432
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public getCurrentTransportClientOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;
    .registers 4
    .param p1, "caller"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/transport/TransportNotRegisteredException;
        }
    .end annotation

    .line 446
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 447
    :try_start_3
    iget-object v1, p0, Lcom/android/server/backup/TransportManager;->mCurrentTransportName:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/backup/TransportManager;->getTransportClientOrThrow(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 448
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method getCurrentTransportName()Ljava/lang/String;
    .registers 2

    .line 181
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mCurrentTransportName:Ljava/lang/String;

    return-object v0
.end method

.method getRegisteredTransportComponents()[Landroid/content/ComponentName;
    .registers 4

    .line 150
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 151
    :try_start_3
    iget-object v1, p0, Lcom/android/server/backup/TransportManager;->mRegisteredTransportsDescriptionMap:Ljava/util/Map;

    .line 152
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/backup/TransportManager;->mRegisteredTransportsDescriptionMap:Ljava/util/Map;

    .line 153
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Landroid/content/ComponentName;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/ComponentName;

    monitor-exit v0

    .line 151
    return-object v1

    .line 154
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method getRegisteredTransportNames()[Ljava/lang/String;
    .registers 7

    .line 163
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 164
    :try_start_3
    iget-object v1, p0, Lcom/android/server/backup/TransportManager;->mRegisteredTransportsDescriptionMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 165
    .local v1, "transportNames":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 166
    .local v2, "i":I
    iget-object v3, p0, Lcom/android/server/backup/TransportManager;->mRegisteredTransportsDescriptionMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/backup/TransportManager$TransportDescription;

    .line 167
    .local v4, "description":Lcom/android/server/backup/TransportManager$TransportDescription;
    # getter for: Lcom/android/server/backup/TransportManager$TransportDescription;->name:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/backup/TransportManager$TransportDescription;->access$000(Lcom/android/server/backup/TransportManager$TransportDescription;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    .line 168
    add-int/lit8 v2, v2, 0x1

    .line 169
    .end local v4    # "description":Lcom/android/server/backup/TransportManager$TransportDescription;
    goto :goto_16

    .line 170
    :cond_2b
    monitor-exit v0

    return-object v1

    .line 171
    .end local v1    # "transportNames":[Ljava/lang/String;
    .end local v2    # "i":I
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method public getTransportClient(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;
    .registers 7
    .param p1, "transportName"    # Ljava/lang/String;
    .param p2, "caller"    # Ljava/lang/String;

    .line 391
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/TransportManager;->getTransportClientOrThrow(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object v0
    :try_end_4
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 392
    :catch_5
    move-exception v0

    .line 393
    .local v0, "e":Lcom/android/server/backup/transport/TransportNotRegisteredException;
    const-string v1, "BackupTransportManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transport "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not registered"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    const/4 v1, 0x0

    return-object v1
.end method

.method public getTransportClientOrThrow(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;
    .registers 6
    .param p1, "transportName"    # Ljava/lang/String;
    .param p2, "caller"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/transport/TransportNotRegisteredException;
        }
    .end annotation

    .line 410
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 411
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportComponentLocked(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 412
    .local v1, "component":Landroid/content/ComponentName;
    if-eqz v1, :cond_11

    .line 415
    iget-object v2, p0, Lcom/android/server/backup/TransportManager;->mTransportClientManager:Lcom/android/server/backup/transport/TransportClientManager;

    invoke-virtual {v2, v1, p2}, Lcom/android/server/backup/transport/TransportClientManager;->getTransportClient(Landroid/content/ComponentName;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 413
    :cond_11
    new-instance v2, Lcom/android/server/backup/transport/TransportNotRegisteredException;

    invoke-direct {v2, p1}, Lcom/android/server/backup/transport/TransportNotRegisteredException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 416
    .end local v1    # "component":Landroid/content/ComponentName;
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public getTransportConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 4
    .param p1, "transportName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/transport/TransportNotRegisteredException;
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 229
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportDescriptionOrThrowLocked(Ljava/lang/String;)Lcom/android/server/backup/TransportManager$TransportDescription;

    move-result-object v1

    .line 230
    # getter for: Lcom/android/server/backup/TransportManager$TransportDescription;->configurationIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/server/backup/TransportManager$TransportDescription;->access$200(Lcom/android/server/backup/TransportManager$TransportDescription;)Landroid/content/Intent;

    move-result-object v1

    monitor-exit v0

    .line 229
    return-object v1

    .line 231
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public getTransportCurrentDestinationString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "transportName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/transport/TransportNotRegisteredException;
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 242
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportDescriptionOrThrowLocked(Ljava/lang/String;)Lcom/android/server/backup/TransportManager$TransportDescription;

    move-result-object v1

    .line 243
    # getter for: Lcom/android/server/backup/TransportManager$TransportDescription;->currentDestinationString:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/backup/TransportManager$TransportDescription;->access$300(Lcom/android/server/backup/TransportManager$TransportDescription;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    .line 242
    return-object v1

    .line 244
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public getTransportDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 4
    .param p1, "transportName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/transport/TransportNotRegisteredException;
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 256
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportDescriptionOrThrowLocked(Ljava/lang/String;)Lcom/android/server/backup/TransportManager$TransportDescription;

    move-result-object v1

    .line 257
    # getter for: Lcom/android/server/backup/TransportManager$TransportDescription;->dataManagementIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/server/backup/TransportManager$TransportDescription;->access$400(Lcom/android/server/backup/TransportManager$TransportDescription;)Landroid/content/Intent;

    move-result-object v1

    monitor-exit v0

    .line 256
    return-object v1

    .line 258
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public getTransportDataManagementLabel(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "transportName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/transport/TransportNotRegisteredException;
        }
    .end annotation

    .line 269
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 270
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportDescriptionOrThrowLocked(Ljava/lang/String;)Lcom/android/server/backup/TransportManager$TransportDescription;

    move-result-object v1

    .line 271
    # getter for: Lcom/android/server/backup/TransportManager$TransportDescription;->dataManagementLabel:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/backup/TransportManager$TransportDescription;->access$500(Lcom/android/server/backup/TransportManager$TransportDescription;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    .line 270
    return-object v1

    .line 272
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public getTransportDirName(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 4
    .param p1, "transportComponent"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/transport/TransportNotRegisteredException;
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 204
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportDescriptionOrThrowLocked(Landroid/content/ComponentName;)Lcom/android/server/backup/TransportManager$TransportDescription;

    move-result-object v1

    .line 205
    # getter for: Lcom/android/server/backup/TransportManager$TransportDescription;->transportDirName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/backup/TransportManager$TransportDescription;->access$100(Lcom/android/server/backup/TransportManager$TransportDescription;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    .line 204
    return-object v1

    .line 206
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public getTransportDirName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "transportName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/transport/TransportNotRegisteredException;
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 216
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportDescriptionOrThrowLocked(Ljava/lang/String;)Lcom/android/server/backup/TransportManager$TransportDescription;

    move-result-object v1

    # getter for: Lcom/android/server/backup/TransportManager$TransportDescription;->transportDirName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/backup/TransportManager$TransportDescription;->access$100(Lcom/android/server/backup/TransportManager$TransportDescription;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 217
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public getTransportName(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 4
    .param p1, "transportComponent"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/transport/TransportNotRegisteredException;
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 192
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportDescriptionOrThrowLocked(Landroid/content/ComponentName;)Lcom/android/server/backup/TransportManager$TransportDescription;

    move-result-object v1

    # getter for: Lcom/android/server/backup/TransportManager$TransportDescription;->name:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/backup/TransportManager$TransportDescription;->access$000(Lcom/android/server/backup/TransportManager$TransportDescription;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 193
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method getTransportWhitelist()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportWhitelist:Ljava/util/Set;

    return-object v0
.end method

.method public isTransportRegistered(Ljava/lang/String;)Z
    .registers 4
    .param p1, "transportName"    # Ljava/lang/String;

    .line 277
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 278
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportEntryLocked(Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v1

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    monitor-exit v0

    return v1

    .line 279
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method onPackageAdded(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 119
    sget-object v0, Lcom/android/server/backup/-$$Lambda$TransportManager$4ND1hZMerK5gHU67okq6DZjKDQw;->INSTANCE:Lcom/android/server/backup/-$$Lambda$TransportManager$4ND1hZMerK5gHU67okq6DZjKDQw;

    invoke-direct {p0, p1, v0}, Lcom/android/server/backup/TransportManager;->registerTransportsFromPackage(Ljava/lang/String;Ljava/util/function/Predicate;)V

    .line 120
    return-void
.end method

.method varargs onPackageChanged(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "components"    # [Ljava/lang/String;

    .line 132
    new-instance v0, Landroid/util/ArraySet;

    array-length v1, p2

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    .line 133
    .local v0, "transportComponents":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    array-length v1, p2

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_17

    aget-object v3, p2, v2

    .line 134
    .local v3, "componentName":Ljava/lang/String;
    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, p1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 133
    .end local v3    # "componentName":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 136
    :cond_17
    iget-object v1, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v1

    .line 137
    :try_start_1a
    iget-object v2, p0, Lcom/android/server/backup/TransportManager;->mRegisteredTransportsDescriptionMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/server/backup/-$$Lambda$-xfpm33S8Jqv3KpU_-llxhj8ZPI;

    invoke-direct {v3, v0}, Lcom/android/server/backup/-$$Lambda$-xfpm33S8Jqv3KpU_-llxhj8ZPI;-><init>(Ljava/util/Set;)V

    invoke-interface {v2, v3}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 138
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_1a .. :try_end_2c} :catchall_38

    .line 139
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/backup/-$$Lambda$-xfpm33S8Jqv3KpU_-llxhj8ZPI;

    invoke-direct {v1, v0}, Lcom/android/server/backup/-$$Lambda$-xfpm33S8Jqv3KpU_-llxhj8ZPI;-><init>(Ljava/util/Set;)V

    invoke-direct {p0, p1, v1}, Lcom/android/server/backup/TransportManager;->registerTransportsFromPackage(Ljava/lang/String;Ljava/util/function/Predicate;)V

    .line 140
    return-void

    .line 138
    :catchall_38
    move-exception v2

    :try_start_39
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v2
.end method

.method onPackageRemoved(Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 123
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 124
    :try_start_3
    iget-object v1, p0, Lcom/android/server/backup/TransportManager;->mRegisteredTransportsDescriptionMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/backup/TransportManager;->fromPackageFilter(Ljava/lang/String;)Ljava/util/function/Predicate;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 125
    monitor-exit v0

    .line 126
    return-void

    .line 125
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public registerAndSelectTransport(Landroid/content/ComponentName;)I
    .registers 7
    .param p1, "transportComponent"    # Landroid/content/ComponentName;

    .line 493
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 495
    const/4 v1, 0x0

    :try_start_4
    invoke-virtual {p0, p1}, Lcom/android/server/backup/TransportManager;->getTransportName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/backup/TransportManager;->selectTransport(Ljava/lang/String;)Ljava/lang/String;
    :try_end_b
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_4 .. :try_end_b} :catch_f
    .catchall {:try_start_4 .. :try_end_b} :catchall_d

    .line 496
    :try_start_b
    monitor-exit v0

    return v1

    .line 500
    :catchall_d
    move-exception v1

    goto :goto_33

    .line 497
    :catch_f
    move-exception v2

    .line 500
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_d

    .line 503
    invoke-direct {p0, p1}, Lcom/android/server/backup/TransportManager;->registerTransport(Landroid/content/ComponentName;)I

    move-result v2

    .line 504
    .local v2, "result":I
    if-eqz v2, :cond_18

    .line 505
    return v2

    .line 507
    :cond_18
    iget-object v3, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v3

    .line 509
    :try_start_1b
    invoke-virtual {p0, p1}, Lcom/android/server/backup/TransportManager;->getTransportName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/backup/TransportManager;->selectTransport(Ljava/lang/String;)Ljava/lang/String;
    :try_end_22
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_1b .. :try_end_22} :catch_26
    .catchall {:try_start_1b .. :try_end_22} :catchall_24

    .line 510
    :try_start_22
    monitor-exit v3

    return v1

    .line 515
    :catchall_24
    move-exception v0

    goto :goto_31

    .line 511
    :catch_26
    move-exception v0

    .line 512
    .local v0, "e":Lcom/android/server/backup/transport/TransportNotRegisteredException;
    const-string v1, "BackupTransportManager"

    const-string v4, "Transport got unregistered"

    invoke-static {v1, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    const/4 v1, -0x1

    monitor-exit v3

    return v1

    .line 515
    .end local v0    # "e":Lcom/android/server/backup/transport/TransportNotRegisteredException;
    :goto_31
    monitor-exit v3
    :try_end_32
    .catchall {:try_start_22 .. :try_end_32} :catchall_24

    throw v0

    .line 500
    .end local v2    # "result":I
    :goto_33
    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_d

    throw v1
.end method

.method public registerTransports()V
    .registers 3

    .line 520
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportServiceIntent:Landroid/content/Intent;

    sget-object v1, Lcom/android/server/backup/-$$Lambda$TransportManager$Qbutmzd17ICwZdy0UzRrO-3_VK0;->INSTANCE:Lcom/android/server/backup/-$$Lambda$TransportManager$Qbutmzd17ICwZdy0UzRrO-3_VK0;

    invoke-direct {p0, v0, v1}, Lcom/android/server/backup/TransportManager;->registerTransportsForIntent(Landroid/content/Intent;Ljava/util/function/Predicate;)V

    .line 521
    return-void
.end method

.method selectTransport(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "transportName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 476
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 477
    :try_start_3
    iget-object v1, p0, Lcom/android/server/backup/TransportManager;->mCurrentTransportName:Ljava/lang/String;

    .line 478
    .local v1, "prevTransport":Ljava/lang/String;
    iput-object p1, p0, Lcom/android/server/backup/TransportManager;->mCurrentTransportName:Ljava/lang/String;

    .line 479
    monitor-exit v0

    return-object v1

    .line 480
    .end local v1    # "prevTransport":Ljava/lang/String;
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public setOnTransportRegisteredListener(Lcom/android/server/backup/transport/OnTransportRegisteredListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/android/server/backup/transport/OnTransportRegisteredListener;

    .line 114
    iput-object p1, p0, Lcom/android/server/backup/TransportManager;->mOnTransportRegisteredListener:Lcom/android/server/backup/transport/OnTransportRegisteredListener;

    .line 115
    return-void
.end method

.method public updateTransportAttributes(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V
    .registers 12
    .param p1, "transportComponent"    # Landroid/content/ComponentName;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "configurationIntent"    # Landroid/content/Intent;
    .param p4, "currentDestinationString"    # Ljava/lang/String;
    .param p5, "dataManagementIntent"    # Landroid/content/Intent;
    .param p6, "dataManagementLabel"    # Ljava/lang/String;

    .line 311
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 312
    :try_start_3
    iget-object v1, p0, Lcom/android/server/backup/TransportManager;->mRegisteredTransportsDescriptionMap:Ljava/util/Map;

    .line 313
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/backup/TransportManager$TransportDescription;

    .line 314
    .local v1, "description":Lcom/android/server/backup/TransportManager$TransportDescription;
    if-nez v1, :cond_2a

    .line 315
    const-string v2, "BackupTransportManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Transport "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " not registered tried to change description"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    monitor-exit v0

    return-void

    .line 318
    :cond_2a
    # setter for: Lcom/android/server/backup/TransportManager$TransportDescription;->name:Ljava/lang/String;
    invoke-static {v1, p2}, Lcom/android/server/backup/TransportManager$TransportDescription;->access$002(Lcom/android/server/backup/TransportManager$TransportDescription;Ljava/lang/String;)Ljava/lang/String;

    .line 319
    # setter for: Lcom/android/server/backup/TransportManager$TransportDescription;->configurationIntent:Landroid/content/Intent;
    invoke-static {v1, p3}, Lcom/android/server/backup/TransportManager$TransportDescription;->access$202(Lcom/android/server/backup/TransportManager$TransportDescription;Landroid/content/Intent;)Landroid/content/Intent;

    .line 320
    # setter for: Lcom/android/server/backup/TransportManager$TransportDescription;->currentDestinationString:Ljava/lang/String;
    invoke-static {v1, p4}, Lcom/android/server/backup/TransportManager$TransportDescription;->access$302(Lcom/android/server/backup/TransportManager$TransportDescription;Ljava/lang/String;)Ljava/lang/String;

    .line 321
    # setter for: Lcom/android/server/backup/TransportManager$TransportDescription;->dataManagementIntent:Landroid/content/Intent;
    invoke-static {v1, p5}, Lcom/android/server/backup/TransportManager$TransportDescription;->access$402(Lcom/android/server/backup/TransportManager$TransportDescription;Landroid/content/Intent;)Landroid/content/Intent;

    .line 322
    # setter for: Lcom/android/server/backup/TransportManager$TransportDescription;->dataManagementLabel:Ljava/lang/String;
    invoke-static {v1, p6}, Lcom/android/server/backup/TransportManager$TransportDescription;->access$502(Lcom/android/server/backup/TransportManager$TransportDescription;Ljava/lang/String;)Ljava/lang/String;

    .line 323
    const-string v2, "BackupTransportManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Transport "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " updated its attributes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    .end local v1    # "description":Lcom/android/server/backup/TransportManager$TransportDescription;
    monitor-exit v0

    .line 325
    return-void

    .line 324
    :catchall_56
    move-exception v1

    monitor-exit v0
    :try_end_58
    .catchall {:try_start_3 .. :try_end_58} :catchall_56

    throw v1
.end method
