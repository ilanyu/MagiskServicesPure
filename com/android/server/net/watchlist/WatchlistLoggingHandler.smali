.class Lcom/android/server/net/watchlist/WatchlistLoggingHandler;
.super Landroid/os/Handler;
.source "WatchlistLoggingHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/watchlist/WatchlistLoggingHandler$WatchlistEventKeys;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DROPBOX_TAG:Ljava/lang/String; = "network_watchlist_report"

.field static final FORCE_REPORT_RECORDS_NOW_FOR_TEST_MSG:I = 0x3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final LOG_WATCHLIST_EVENT_MSG:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final ONE_DAY_MS:J

.field static final REPORT_RECORDS_IF_NECESSARY_MSG:I = 0x2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCachedUidDigestMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field

.field private final mConfig:Lcom/android/server/net/watchlist/WatchlistConfig;

.field private final mContext:Landroid/content/Context;

.field private final mDbHelper:Lcom/android/server/net/watchlist/WatchlistReportDbHelper;

.field private final mDropBoxManager:Landroid/os/DropBoxManager;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private mPrimaryUserId:I

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mSettings:Lcom/android/server/net/watchlist/WatchlistSettings;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 58
    const-class v0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->TAG:Ljava/lang/String;

    .line 68
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->ONE_DAY_MS:J

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 93
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mPrimaryUserId:I

    .line 82
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mCachedUidDigestMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 94
    iput-object p1, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mContext:Landroid/content/Context;

    .line 95
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mPm:Landroid/content/pm/PackageManager;

    .line 96
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mResolver:Landroid/content/ContentResolver;

    .line 97
    invoke-static {p1}, Lcom/android/server/net/watchlist/WatchlistReportDbHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/net/watchlist/WatchlistReportDbHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mDbHelper:Lcom/android/server/net/watchlist/WatchlistReportDbHelper;

    .line 98
    invoke-static {}, Lcom/android/server/net/watchlist/WatchlistConfig;->getInstance()Lcom/android/server/net/watchlist/WatchlistConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mConfig:Lcom/android/server/net/watchlist/WatchlistConfig;

    .line 99
    invoke-static {}, Lcom/android/server/net/watchlist/WatchlistSettings;->getInstance()Lcom/android/server/net/watchlist/WatchlistSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mSettings:Lcom/android/server/net/watchlist/WatchlistSettings;

    .line 100
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/DropBoxManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DropBoxManager;

    iput-object v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mDropBoxManager:Landroid/os/DropBoxManager;

    .line 101
    invoke-direct {p0}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->getPrimaryUserId()I

    move-result v0

    iput v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mPrimaryUserId:I

    .line 102
    return-void
.end method

.method private addEncodedReportToDropBox([B)V
    .registers 5
    .param p1, "encodedReport"    # [B

    .line 321
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mDropBoxManager:Landroid/os/DropBoxManager;

    const-string/jumbo v1, "network_watchlist_report"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/DropBoxManager;->addData(Ljava/lang/String;[BI)V

    .line 322
    return-void
.end method

.method static getAllSubDomains(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .param p0, "host"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 413
    if-nez p0, :cond_4

    .line 414
    const/4 v0, 0x0

    return-object v0

    .line 416
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 417
    .local v0, "subDomainList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 419
    .local v1, "index":I
    :goto_12
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2b

    .line 420
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 421
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 422
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    :cond_24
    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    goto :goto_12

    .line 426
    :cond_2b
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method

.method private getDigestFromUid(I)[B
    .registers 5
    .param p1, "uid"    # I

    .line 330
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mCachedUidDigestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/net/watchlist/-$$Lambda$WatchlistLoggingHandler$GBD0dX6RhipHIkM0Z_B5jLlwfHQ;

    invoke-direct {v2, p0, p1}, Lcom/android/server/net/watchlist/-$$Lambda$WatchlistLoggingHandler$GBD0dX6RhipHIkM0Z_B5jLlwfHQ;-><init>(Lcom/android/server/net/watchlist/WatchlistLoggingHandler;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method static getLastMidnightTime()J
    .registers 2

    .line 430
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->getMidnightTimestamp(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static getMidnightTimestamp(I)J
    .registers 4
    .param p0, "daysBefore"    # I

    .line 434
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 436
    .local v0, "date":Ljava/util/Calendar;
    const/4 v1, 0x0

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 437
    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 438
    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 439
    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 440
    neg-int v1, p0

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->add(II)V

    .line 441
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method private getPrimaryUserId()I
    .registers 3

    .line 140
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 141
    invoke-virtual {v0}, Landroid/os/UserManager;->getPrimaryUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 142
    .local v0, "primaryUserInfo":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_14

    .line 143
    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    return v1

    .line 145
    :cond_14
    const/4 v1, -0x1

    return v1
.end method

.method private handleNetworkEvent(Ljava/lang/String;[Ljava/lang/String;IJ)V
    .registers 8
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "ipAddresses"    # [Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "timestamp"    # J

    .line 201
    iget v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mPrimaryUserId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 202
    invoke-direct {p0}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->getPrimaryUserId()I

    move-result v0

    iput v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mPrimaryUserId:I

    .line 206
    :cond_b
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget v1, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mPrimaryUserId:I

    if-eq v0, v1, :cond_14

    .line 210
    return-void

    .line 212
    :cond_14
    invoke-direct {p0, p1}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->searchAllSubDomainsInWatchlist(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "cncDomain":Ljava/lang/String;
    if-eqz v0, :cond_1e

    .line 214
    invoke-direct {p0, p3, v0, p4, p5}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->insertRecord(ILjava/lang/String;J)Z

    goto :goto_27

    .line 216
    :cond_1e
    invoke-direct {p0, p2}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->searchIpInWatchlist([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, "cncIp":Ljava/lang/String;
    if-eqz v1, :cond_27

    .line 218
    invoke-direct {p0, p3, v1, p4, p5}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->insertRecord(ILjava/lang/String;J)Z

    .line 221
    .end local v1    # "cncIp":Ljava/lang/String;
    :cond_27
    :goto_27
    return-void
.end method

.method private insertRecord(ILjava/lang/String;J)Z
    .registers 9
    .param p1, "uid"    # I
    .param p2, "cncHost"    # Ljava/lang/String;
    .param p3, "timestamp"    # J

    .line 227
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mConfig:Lcom/android/server/net/watchlist/WatchlistConfig;

    invoke-virtual {v0}, Lcom/android/server/net/watchlist/WatchlistConfig;->isConfigSecure()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-direct {p0, p1}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->isPackageTestOnly(I)Z

    move-result v0

    if-nez v0, :cond_10

    .line 232
    const/4 v0, 0x1

    return v0

    .line 234
    :cond_10
    invoke-direct {p0, p1}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->getDigestFromUid(I)[B

    move-result-object v0

    .line 235
    .local v0, "digest":[B
    if-nez v0, :cond_2e

    .line 236
    sget-object v1, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot get digest from uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const/4 v1, 0x0

    return v1

    .line 239
    :cond_2e
    iget-object v1, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mDbHelper:Lcom/android/server/net/watchlist/WatchlistReportDbHelper;

    invoke-virtual {v1, v0, p2, p3, p4}, Lcom/android/server/net/watchlist/WatchlistReportDbHelper;->insertNewRecord([BLjava/lang/String;J)Z

    move-result v1

    .line 240
    .local v1, "result":Z
    return v1
.end method

.method private isHostInWatchlist(Ljava/lang/String;)Z
    .registers 3
    .param p1, "host"    # Ljava/lang/String;

    .line 383
    if-nez p1, :cond_4

    .line 384
    const/4 v0, 0x0

    return v0

    .line 386
    :cond_4
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mConfig:Lcom/android/server/net/watchlist/WatchlistConfig;

    invoke-virtual {v0, p1}, Lcom/android/server/net/watchlist/WatchlistConfig;->containsDomain(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isIpInWatchlist(Ljava/lang/String;)Z
    .registers 3
    .param p1, "ipAddr"    # Ljava/lang/String;

    .line 375
    if-nez p1, :cond_4

    .line 376
    const/4 v0, 0x0

    return v0

    .line 378
    :cond_4
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mConfig:Lcom/android/server/net/watchlist/WatchlistConfig;

    invoke-virtual {v0, p1}, Lcom/android/server/net/watchlist/WatchlistConfig;->containsIp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isPackageTestOnly(I)Z
    .registers 7
    .param p1, "uid"    # I

    .line 154
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, "packageNames":[Ljava/lang/String;
    if-eqz v1, :cond_21

    array-length v2, v1

    if-nez v2, :cond_d

    goto :goto_21

    .line 159
    :cond_d
    iget-object v2, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mPm:Landroid/content/pm/PackageManager;

    aget-object v3, v1, v0

    invoke-virtual {v2, v3, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_15} :catch_38

    .end local v1    # "packageNames":[Ljava/lang/String;
    move-object v1, v2

    .line 163
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    nop

    .line 162
    nop

    .line 164
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_20

    const/4 v0, 0x1

    nop

    :cond_20
    return v0

    .line 156
    .local v1, "packageNames":[Ljava/lang/String;
    :cond_21
    :goto_21
    :try_start_21
    sget-object v2, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t find package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_21 .. :try_end_37} :catch_38

    .line 157
    return v0

    .line 160
    .end local v1    # "packageNames":[Ljava/lang/String;
    :catch_38
    move-exception v1

    .line 162
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0
.end method

.method public static synthetic lambda$getDigestFromUid$0(Lcom/android/server/net/watchlist/WatchlistLoggingHandler;ILjava/lang/Integer;)[B
    .registers 13
    .param p1, "uid"    # I
    .param p2, "key"    # Ljava/lang/Integer;

    .line 331
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, "packageNames":[Ljava/lang/String;
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 333
    .local v1, "userId":I
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_5a

    .line 334
    array-length v2, v0

    const/4 v4, 0x0

    :goto_17
    if-ge v4, v2, :cond_5a

    aget-object v5, v0, v4

    .line 336
    .local v5, "packageName":Ljava/lang/String;
    :try_start_1b
    iget-object v6, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mPm:Landroid/content/pm/PackageManager;

    const/high16 v7, 0xc0000

    invoke-virtual {v6, v5, v7, v1}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 340
    .local v6, "apkPath":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_47

    .line 341
    sget-object v7, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot find apkPath for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    nop

    .line 334
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "apkPath":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 344
    .restart local v5    # "packageName":Ljava/lang/String;
    .restart local v6    # "apkPath":Ljava/lang/String;
    :cond_47
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/server/net/watchlist/DigestUtils;->getSha256Hash(Ljava/io/File;)[B

    move-result-object v2
    :try_end_50
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1b .. :try_end_50} :catch_51
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1b .. :try_end_50} :catch_51
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_50} :catch_51

    return-object v2

    .line 345
    .end local v6    # "apkPath":Ljava/lang/String;
    :catch_51
    move-exception v2

    .line 346
    .local v2, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->TAG:Ljava/lang/String;

    const-string v6, "Should not happen"

    invoke-static {v4, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 347
    return-object v3

    .line 353
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_5a
    return-object v3
.end method

.method private searchAllSubDomainsInWatchlist(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "host"    # Ljava/lang/String;

    .line 397
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 398
    return-object v0

    .line 400
    :cond_4
    invoke-static {p1}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->getAllSubDomains(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 401
    .local v1, "subDomains":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v2, :cond_18

    aget-object v4, v1, v3

    .line 402
    .local v4, "subDomain":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->isHostInWatchlist(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 403
    return-object v4

    .line 401
    .end local v4    # "subDomain":Ljava/lang/String;
    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 406
    :cond_18
    return-object v0
.end method

.method private searchIpInWatchlist([Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "ipAddresses"    # [Ljava/lang/String;

    .line 365
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_10

    aget-object v2, p1, v1

    .line 366
    .local v2, "ipAddress":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->isIpInWatchlist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 367
    return-object v2

    .line 365
    .end local v2    # "ipAddress":Ljava/lang/String;
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 370
    :cond_10
    const/4 v0, 0x0

    return-object v0
.end method

.method private shouldReportNetworkWatchlist(J)Z
    .registers 9
    .param p1, "lastRecordTime"    # J

    .line 244
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "network_watchlist_last_report_time"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 246
    .local v0, "lastReportTime":J
    cmp-long v2, p1, v0

    const/4 v3, 0x0

    if-gez v2, :cond_1d

    .line 247
    sget-object v2, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->TAG:Ljava/lang/String;

    const-string v4, "Last report time is larger than current time, reset report"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v2, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mDbHelper:Lcom/android/server/net/watchlist/WatchlistReportDbHelper;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/net/watchlist/WatchlistReportDbHelper;->cleanup(J)Z

    .line 249
    return v3

    .line 251
    :cond_1d
    sget-wide v4, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->ONE_DAY_MS:J

    add-long/2addr v4, v0

    cmp-long v2, p1, v4

    if-ltz v2, :cond_26

    const/4 v3, 0x1

    nop

    :cond_26
    return v3
.end method

.method private tryAggregateRecords(J)V
    .registers 12
    .param p1, "lastRecordTime"    # J

    .line 255
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 258
    .local v0, "startTime":J
    :try_start_4
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->shouldReportNetworkWatchlist(J)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 259
    sget-object v2, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->TAG:Ljava/lang/String;

    const-string v3, "No need to aggregate record yet."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_b8

    .line 287
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 288
    .local v2, "endTime":J
    sget-object v4, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Milliseconds spent on tryAggregateRecords(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v6, v2, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    .end local v2    # "endTime":J
    return-void

    .line 262
    :cond_2e
    :try_start_2e
    sget-object v2, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->TAG:Ljava/lang/String;

    const-string v3, "Start aggregating watchlist records."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v2, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mDropBoxManager:Landroid/os/DropBoxManager;

    if-eqz v2, :cond_8e

    iget-object v2, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mDropBoxManager:Landroid/os/DropBoxManager;

    const-string/jumbo v3, "network_watchlist_report"

    invoke-virtual {v2, v3}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8e

    .line 264
    iget-object v2, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "network_watchlist_last_report_time"

    invoke-static {v2, v3, p1, p2}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 267
    iget-object v2, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mDbHelper:Lcom/android/server/net/watchlist/WatchlistReportDbHelper;

    .line 268
    invoke-virtual {v2, p1, p2}, Lcom/android/server/net/watchlist/WatchlistReportDbHelper;->getAggregatedRecords(J)Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;

    move-result-object v2

    .line 269
    .local v2, "aggregatedResult":Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;
    if-nez v2, :cond_78

    .line 270
    sget-object v3, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->TAG:Ljava/lang/String;

    const-string v4, "Cannot get result from database"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catchall {:try_start_2e .. :try_end_5b} :catchall_b8

    .line 287
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 288
    .local v3, "endTime":J
    sget-object v5, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Milliseconds spent on tryAggregateRecords(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v7, v3, v0

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    .end local v3    # "endTime":J
    return-void

    .line 275
    :cond_78
    :try_start_78
    invoke-virtual {p0, v2}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->getAllDigestsForReport(Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;)Ljava/util/List;

    move-result-object v3

    .line 276
    .local v3, "digestsForReport":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mSettings:Lcom/android/server/net/watchlist/WatchlistSettings;

    invoke-virtual {v4}, Lcom/android/server/net/watchlist/WatchlistSettings;->getPrivacySecretKey()[B

    move-result-object v4

    .line 277
    .local v4, "secretKey":[B
    iget-object v5, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mConfig:Lcom/android/server/net/watchlist/WatchlistConfig;

    invoke-static {v5, v4, v3, v2}, Lcom/android/server/net/watchlist/ReportEncoder;->encodeWatchlistReport(Lcom/android/server/net/watchlist/WatchlistConfig;[BLjava/util/List;Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;)[B

    move-result-object v5

    .line 279
    .local v5, "encodedResult":[B
    if-eqz v5, :cond_8d

    .line 280
    invoke-direct {p0, v5}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->addEncodedReportToDropBox([B)V

    .line 282
    .end local v2    # "aggregatedResult":Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;
    .end local v3    # "digestsForReport":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "secretKey":[B
    .end local v5    # "encodedResult":[B
    :cond_8d
    goto :goto_95

    .line 283
    :cond_8e
    sget-object v2, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->TAG:Ljava/lang/String;

    const-string v3, "Network Watchlist dropbox tag is not enabled"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :goto_95
    iget-object v2, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mDbHelper:Lcom/android/server/net/watchlist/WatchlistReportDbHelper;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/net/watchlist/WatchlistReportDbHelper;->cleanup(J)Z
    :try_end_9a
    .catchall {:try_start_78 .. :try_end_9a} :catchall_b8

    .line 287
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 288
    .local v2, "endTime":J
    sget-object v4, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Milliseconds spent on tryAggregateRecords(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v6, v2, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    .end local v2    # "endTime":J
    nop

    .line 290
    return-void

    .line 287
    :catchall_b8
    move-exception v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 288
    .local v3, "endTime":J
    sget-object v5, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Milliseconds spent on tryAggregateRecords(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v7, v3, v0

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    .end local v3    # "endTime":J
    throw v2
.end method


# virtual methods
.method public asyncNetworkEvent(Ljava/lang/String;[Ljava/lang/String;I)V
    .registers 9
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "ipAddresses"    # [Ljava/lang/String;
    .param p3, "uid"    # I

    .line 185
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 186
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 187
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "host"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v2, "ipAddresses"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 189
    const-string/jumbo v2, "uid"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 190
    const-string/jumbo v2, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 191
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 192
    invoke-virtual {p0, v0}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 193
    return-void
.end method

.method public forceReportWatchlistForTest(J)V
    .registers 5
    .param p1, "lastReportTime"    # J

    .line 176
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 177
    .local v0, "msg":Landroid/os/Message;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 178
    invoke-virtual {p0, v0}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 179
    return-void
.end method

.method getAllDigestsForReport(Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;)Ljava/util/List;
    .registers 10
    .param p1, "record"    # Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 302
    iget-object v0, p0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 304
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p1, Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;->appDigestCNCList:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 305
    .local v1, "result":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 306
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_21
    if-ge v3, v2, :cond_6a

    .line 307
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, v4}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->getDigestFromUid(I)[B

    move-result-object v4

    .line 308
    .local v4, "digest":[B
    if-eqz v4, :cond_39

    .line 309
    invoke-static {v4}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_67

    .line 311
    :cond_39
    sget-object v5, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot get digest from uid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",pkg: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 311
    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    .end local v4    # "digest":[B
    :goto_67
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 316
    .end local v3    # "i":I
    :cond_6a
    iget-object v3, p1, Lcom/android/server/net/watchlist/WatchlistReportDbHelper$AggregatedResult;->appDigestCNCList:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 317
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v3
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 106
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_54

    .line 129
    sget-object v0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->TAG:Ljava/lang/String;

    const-string v1, "WatchlistLoggingHandler received an unknown of message."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52

    .line 121
    :pswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Long;

    if-eqz v0, :cond_1f

    .line 122
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 123
    .local v0, "lastRecordTime":J
    invoke-direct {p0, v0, v1}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->tryAggregateRecords(J)V

    .line 124
    .end local v0    # "lastRecordTime":J
    goto :goto_52

    .line 125
    :cond_1f
    sget-object v0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->TAG:Ljava/lang/String;

    const-string v1, "Msg.obj needs to be a Long object."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    goto :goto_52

    .line 118
    :pswitch_27
    invoke-static {}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->getLastMidnightTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->tryAggregateRecords(J)V

    .line 119
    goto :goto_52

    .line 108
    :pswitch_2f
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 109
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "host"

    .line 110
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "ipAddresses"

    .line 111
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v1, "uid"

    .line 112
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v1, "timestamp"

    .line 113
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 109
    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->handleNetworkEvent(Ljava/lang/String;[Ljava/lang/String;IJ)V

    .line 115
    nop

    .line 133
    .end local v0    # "data":Landroid/os/Bundle;
    :goto_52
    return-void

    nop

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_27
        :pswitch_d
    .end packed-switch
.end method

.method public reportWatchlistIfNecessary()V
    .registers 2

    .line 171
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 172
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 173
    return-void
.end method
