.class public Lcom/android/server/notification/ValidateNotificationPeople;
.super Ljava/lang/Object;
.source "ValidateNotificationPeople.java"

# interfaces
.implements Lcom/android/server/notification/NotificationSignalExtractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;,
        Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final ENABLE_PEOPLE_VALIDATOR:Z = true

.field private static final LOOKUP_PROJECTION:[Ljava/lang/String;

.field private static final MAX_PEOPLE:I = 0xa

.field static final NONE:F = 0.0f

.field private static final PEOPLE_CACHE_SIZE:I = 0xc8

.field private static final SETTING_ENABLE_PEOPLE_VALIDATOR:Ljava/lang/String; = "validate_notification_people_enabled"

.field static final STARRED_CONTACT:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "ValidateNoPeople"

.field static final VALID_CONTACT:F = 0.5f

.field private static final VERBOSE:Z


# instance fields
.field private mBaseContext:Landroid/content/Context;

.field protected mEnabled:Z

.field private mEvictionCount:I

.field private mHandler:Landroid/os/Handler;

.field private mObserver:Landroid/database/ContentObserver;

.field private mPeopleCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;",
            ">;"
        }
    .end annotation
.end field

.field private mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

.field private mUserToContextMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 59
    const-string v0, "ValidateNoPeople"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/ValidateNotificationPeople;->VERBOSE:Z

    .line 60
    const-string v0, "ValidateNoPeople"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    .line 65
    const-string v0, "_id"

    const-string/jumbo v1, "starred"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/ValidateNotificationPeople;->LOOKUP_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .line 56
    sget-boolean v0, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/notification/ValidateNotificationPeople;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/ValidateNotificationPeople;

    .line 56
    iget v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mEvictionCount:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/notification/ValidateNotificationPeople;)Lcom/android/server/notification/NotificationUsageStats;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/ValidateNotificationPeople;

    .line 56
    iget-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    return-object v0
.end method

.method static synthetic access$108(Lcom/android/server/notification/ValidateNotificationPeople;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/notification/ValidateNotificationPeople;

    .line 56
    iget v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mEvictionCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mEvictionCount:I

    return v0
.end method

.method static synthetic access$200()Z
    .registers 1

    .line 56
    sget-boolean v0, Lcom/android/server/notification/ValidateNotificationPeople;->VERBOSE:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/notification/ValidateNotificationPeople;)Landroid/util/LruCache;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/ValidateNotificationPeople;

    .line 56
    iget-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mPeopleCache:Landroid/util/LruCache;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/notification/ValidateNotificationPeople;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ValidateNotificationPeople;->resolvePhoneContact(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/notification/ValidateNotificationPeople;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ValidateNotificationPeople;->resolveEmailContact(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/content/Context;Landroid/net/Uri;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/notification/ValidateNotificationPeople;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/net/Uri;

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ValidateNotificationPeople;->searchContacts(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/notification/ValidateNotificationPeople;ILjava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/notification/ValidateNotificationPeople;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ValidateNotificationPeople;->getCacheKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static combineLists([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 7
    .param p0, "first"    # [Ljava/lang/String;
    .param p1, "second"    # [Ljava/lang/String;

    .line 291
    if-nez p0, :cond_3

    .line 292
    return-object p1

    .line 294
    :cond_3
    if-nez p1, :cond_6

    .line 295
    return-object p0

    .line 297
    :cond_6
    new-instance v0, Landroid/util/ArraySet;

    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    .line 298
    .local v0, "people":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_11
    if-ge v3, v1, :cond_1b

    aget-object v4, p0, v3

    .line 299
    .local v4, "person":Ljava/lang/String;
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 298
    .end local v4    # "person":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 301
    :cond_1b
    array-length v1, p1

    :goto_1c
    if-ge v2, v1, :cond_26

    aget-object v3, p1, v2

    .line 302
    .local v3, "person":Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 301
    .end local v3    # "person":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 304
    :cond_26
    invoke-virtual {v0}, Landroid/util/ArraySet;->toArray()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method private getCacheKey(ILjava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "userId"    # I
    .param p2, "handle"    # Ljava/lang/String;

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getContextAsUser(Landroid/os/UserHandle;)Landroid/content/Context;
    .registers 6
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 202
    iget-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mUserToContextMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 203
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_32

    .line 205
    :try_start_12
    iget-object v1, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mBaseContext:Landroid/content/Context;

    const-string v2, "android"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1

    move-object v0, v1

    .line 206
    iget-object v1, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mUserToContextMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_29} :catch_2a

    .line 209
    goto :goto_32

    .line 207
    :catch_2a
    move-exception v1

    .line 208
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "ValidateNoPeople"

    const-string v3, "failed to create package context for lookups"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 211
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_32
    :goto_32
    return-object v0
.end method

.method public static getExtraPeople(Landroid/os/Bundle;)[Ljava/lang/String;
    .registers 4
    .param p0, "extras"    # Landroid/os/Bundle;

    .line 285
    const-string v0, "android.people.list"

    invoke-static {p0, v0}, Lcom/android/server/notification/ValidateNotificationPeople;->getExtraPeopleForKey(Landroid/os/Bundle;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, "peopleList":[Ljava/lang/String;
    const-string v1, "android.people"

    invoke-static {p0, v1}, Lcom/android/server/notification/ValidateNotificationPeople;->getExtraPeopleForKey(Landroid/os/Bundle;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 287
    .local v1, "legacyPeople":[Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/server/notification/ValidateNotificationPeople;->combineLists([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getExtraPeopleForKey(Landroid/os/Bundle;Ljava/lang/String;)[Ljava/lang/String;
    .registers 9
    .param p0, "extras"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;

    .line 309
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 310
    .local v0, "people":Ljava/lang/Object;
    instance-of v1, v0, [Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 311
    move-object v1, v0

    check-cast v1, [Ljava/lang/String;

    return-object v1

    .line 314
    :cond_c
    instance-of v1, v0, Ljava/util/ArrayList;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_77

    .line 315
    move-object v1, v0

    check-cast v1, Ljava/util/ArrayList;

    .line 317
    .local v1, "arrayList":Ljava/util/ArrayList;
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 318
    return-object v2

    .line 321
    :cond_1c
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_32

    .line 322
    move-object v2, v1

    .line 323
    .local v2, "stringArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3

    .line 326
    .end local v2    # "stringArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_32
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/CharSequence;

    if-eqz v4, :cond_54

    .line 327
    move-object v2, v1

    .line 328
    .local v2, "charSeqList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 329
    .local v4, "N":I
    new-array v5, v4, [Ljava/lang/String;

    .line 330
    .local v5, "array":[Ljava/lang/String;
    nop

    .local v3, "i":I
    :goto_42
    if-ge v3, v4, :cond_53

    .line 331
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    .line 330
    add-int/lit8 v3, v3, 0x1

    goto :goto_42

    .line 333
    .end local v3    # "i":I
    :cond_53
    return-object v5

    .line 336
    .end local v2    # "charSeqList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v4    # "N":I
    .end local v5    # "array":[Ljava/lang/String;
    :cond_54
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Landroid/app/Person;

    if-eqz v4, :cond_76

    .line 337
    move-object v2, v1

    .line 338
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Person;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 339
    .restart local v4    # "N":I
    new-array v5, v4, [Ljava/lang/String;

    .line 340
    .restart local v5    # "array":[Ljava/lang/String;
    nop

    .restart local v3    # "i":I
    :goto_64
    if-ge v3, v4, :cond_75

    .line 341
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Person;

    invoke-virtual {v6}, Landroid/app/Person;->resolveToLegacyUri()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    .line 340
    add-int/lit8 v3, v3, 0x1

    goto :goto_64

    .line 343
    .end local v3    # "i":I
    :cond_75
    return-object v5

    .line 346
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Person;>;"
    .end local v4    # "N":I
    .end local v5    # "array":[Ljava/lang/String;
    :cond_76
    return-object v2

    .line 349
    .end local v1    # "arrayList":Ljava/util/ArrayList;
    :cond_77
    instance-of v1, v0, Ljava/lang/String;

    const/4 v4, 0x1

    if-eqz v1, :cond_84

    .line 350
    new-array v1, v4, [Ljava/lang/String;

    .line 351
    .local v1, "array":[Ljava/lang/String;
    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    aput-object v2, v1, v3

    .line 352
    return-object v1

    .line 355
    .end local v1    # "array":[Ljava/lang/String;
    :cond_84
    instance-of v1, v0, [C

    if-eqz v1, :cond_95

    .line 356
    new-array v1, v4, [Ljava/lang/String;

    .line 357
    .restart local v1    # "array":[Ljava/lang/String;
    new-instance v2, Ljava/lang/String;

    move-object v4, v0

    check-cast v4, [C

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>([C)V

    aput-object v2, v1, v3

    .line 358
    return-object v1

    .line 361
    .end local v1    # "array":[Ljava/lang/String;
    :cond_95
    instance-of v1, v0, Ljava/lang/CharSequence;

    if-eqz v1, :cond_a5

    .line 362
    new-array v1, v4, [Ljava/lang/String;

    .line 363
    .restart local v1    # "array":[Ljava/lang/String;
    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 364
    return-object v1

    .line 367
    .end local v1    # "array":[Ljava/lang/String;
    :cond_a5
    instance-of v1, v0, [Ljava/lang/CharSequence;

    if-eqz v1, :cond_be

    .line 368
    move-object v1, v0

    check-cast v1, [Ljava/lang/CharSequence;

    .line 369
    .local v1, "charSeqArray":[Ljava/lang/CharSequence;
    array-length v2, v1

    .line 370
    .local v2, "N":I
    new-array v4, v2, [Ljava/lang/String;

    .line 371
    .local v4, "array":[Ljava/lang/String;
    nop

    .restart local v3    # "i":I
    :goto_b0
    if-ge v3, v2, :cond_bd

    .line 372
    aget-object v5, v1, v3

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    .line 371
    add-int/lit8 v3, v3, 0x1

    goto :goto_b0

    .line 374
    .end local v3    # "i":I
    :cond_bd
    return-object v4

    .line 377
    .end local v1    # "charSeqArray":[Ljava/lang/CharSequence;
    .end local v2    # "N":I
    .end local v4    # "array":[Ljava/lang/String;
    :cond_be
    return-object v2
.end method

.method private resolveEmailContact(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "email"    # Ljava/lang/String;

    .line 387
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    .line 389
    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 387
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 390
    .local v0, "numberUri":Landroid/net/Uri;
    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/ValidateNotificationPeople;->searchContacts(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    move-result-object v1

    return-object v1
.end method

.method private resolvePhoneContact(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;

    .line 381
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 382
    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 381
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 383
    .local v0, "phoneUri":Landroid/net/Uri;
    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/ValidateNotificationPeople;->searchContacts(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    move-result-object v1

    return-object v1
.end method

.method private searchContacts(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lookupUri"    # Landroid/net/Uri;

    .line 394
    new-instance v0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    invoke-direct {v0}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;-><init>()V

    .line 395
    .local v0, "lookupResult":Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    const/4 v1, 0x0

    .line 397
    .local v1, "c":Landroid/database/Cursor;
    :try_start_6
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/server/notification/ValidateNotificationPeople;->LOOKUP_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p2

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v1, v2

    .line 398
    if-nez v1, :cond_25

    .line 399
    const-string v2, "ValidateNoPeople"

    const-string v3, "Null cursor from contacts query."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_1e} :catch_37
    .catchall {:try_start_6 .. :try_end_1e} :catchall_35

    .line 400
    nop

    .line 408
    if-eqz v1, :cond_24

    .line 409
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 400
    :cond_24
    return-object v0

    .line 402
    :cond_25
    :goto_25
    :try_start_25
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 403
    invoke-virtual {v0, v1}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mergeContact(Landroid/database/Cursor;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_2e} :catch_37
    .catchall {:try_start_25 .. :try_end_2e} :catchall_35

    goto :goto_25

    .line 408
    :cond_2f
    if-eqz v1, :cond_42

    .line 409
    :goto_31
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_42

    .line 408
    :catchall_35
    move-exception v2

    goto :goto_43

    .line 405
    :catch_37
    move-exception v2

    .line 406
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_38
    const-string v3, "ValidateNoPeople"

    const-string v4, "Problem getting content resolver or performing contacts query."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3f
    .catchall {:try_start_38 .. :try_end_3f} :catchall_35

    .line 408
    .end local v2    # "t":Ljava/lang/Throwable;
    if-eqz v1, :cond_42

    goto :goto_31

    .line 412
    :cond_42
    :goto_42
    return-object v0

    .line 408
    :goto_43
    if-eqz v1, :cond_48

    .line 409
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_48
    throw v2
.end method

.method private validatePeople(Landroid/content/Context;Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 216
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 217
    .local v6, "key":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v7, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 218
    .local v7, "extras":Landroid/os/Bundle;
    const/4 v8, 0x1

    new-array v9, v8, [F

    .line 219
    .local v9, "affinityOut":[F
    nop

    .line 220
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getPeopleOverride()Ljava/util/ArrayList;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    move-object v3, v7

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/ValidateNotificationPeople;->validatePeople(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;[F)Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;

    move-result-object v0

    .line 221
    .local v0, "rr":Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;
    const/4 v1, 0x0

    aget v2, v9, v1

    .line 222
    .local v2, "affinity":F
    invoke-virtual {p2, v2}, Lcom/android/server/notification/NotificationRecord;->setContactAffinity(F)V

    .line 223
    if-nez v0, :cond_39

    .line 224
    iget-object v3, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    const/4 v4, 0x0

    cmpl-float v4, v2, v4

    if-lez v4, :cond_2c

    move v4, v8

    goto :goto_2d

    :cond_2c
    move v4, v1

    :goto_2d
    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v2, v5

    if-nez v5, :cond_35

    move v1, v8

    nop

    :cond_35
    invoke-virtual {v3, p2, v4, v1, v8}, Lcom/android/server/notification/NotificationUsageStats;->registerPeopleAffinity(Lcom/android/server/notification/NotificationRecord;ZZZ)V

    goto :goto_3c

    .line 227
    :cond_39
    invoke-virtual {v0, p2}, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->setRecord(Lcom/android/server/notification/NotificationRecord;)V

    .line 229
    :goto_3c
    return-object v0
.end method

.method private validatePeople(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;[F)Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;
    .registers 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p5, "affinityOut"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[F)",
            "Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;"
        }
    .end annotation

    .line 234
    .local p4, "peopleOverride":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    .line 234
    const/4 v0, 0x0

    .line 235
    .local v0, "affinity":F
    const/4 v1, 0x0

    if-nez p3, :cond_9

    .line 236
    return-object v1

    .line 238
    :cond_9
    new-instance v2, Landroid/util/ArraySet;

    move-object/from16 v9, p4

    invoke-direct {v2, v9}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    move-object v10, v2

    .line 239
    .local v10, "people":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static/range {p3 .. p3}, Lcom/android/server/notification/ValidateNotificationPeople;->getExtraPeople(Landroid/os/Bundle;)[Ljava/lang/String;

    move-result-object v11

    .line 240
    .local v11, "notificationPeople":[Ljava/lang/String;
    if-eqz v11, :cond_1e

    .line 241
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 244
    :cond_1e
    sget-boolean v2, Lcom/android/server/notification/ValidateNotificationPeople;->VERBOSE:Z

    if-eqz v2, :cond_44

    const-string v2, "ValidateNoPeople"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Validating: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_44
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    move-object v12, v2

    .line 246
    .local v12, "pendingLookups":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 247
    .local v2, "personIdx":I
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v2

    move v2, v0

    .line 247
    .end local v0    # "affinity":F
    .local v2, "affinity":F
    .local v4, "personIdx":I
    :goto_51
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ab

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    .line 248
    .local v5, "handle":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 248
    .end local v5    # "handle":Ljava/lang/String;
    goto :goto_51

    .line 250
    .restart local v5    # "handle":Ljava/lang/String;
    :cond_65
    iget-object v6, v7, Lcom/android/server/notification/ValidateNotificationPeople;->mPeopleCache:Landroid/util/LruCache;

    monitor-enter v6

    .line 251
    :try_start_68
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-direct {v7, v0, v5}, Lcom/android/server/notification/ValidateNotificationPeople;->getCacheKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, "cacheKey":Ljava/lang/String;
    iget-object v13, v7, Lcom/android/server/notification/ValidateNotificationPeople;->mPeopleCache:Landroid/util/LruCache;

    invoke-virtual {v13, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    .line 253
    .local v13, "lookupResult":Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    if-eqz v13, :cond_8e

    # invokes: Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->isExpired()Z
    invoke-static {v13}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->access$400(Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;)Z

    move-result v14

    if-eqz v14, :cond_81

    goto :goto_8e

    .line 256
    :cond_81
    sget-boolean v14, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    if-eqz v14, :cond_91

    const-string v14, "ValidateNoPeople"

    const-string/jumbo v1, "using cached lookupResult"

    invoke-static {v14, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_91

    .line 254
    :cond_8e
    :goto_8e
    invoke-virtual {v12, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 258
    :cond_91
    :goto_91
    if-eqz v13, :cond_9d

    .line 259
    invoke-virtual {v13}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->getAffinity()F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    move v0, v1

    .line 261
    .end local v2    # "affinity":F
    .end local v13    # "lookupResult":Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    .local v0, "affinity":F
    move v2, v0

    .line 261
    .end local v0    # "affinity":F
    .restart local v2    # "affinity":F
    :cond_9d
    monitor-exit v6

    .line 262
    add-int/lit8 v4, v4, 0x1

    const/16 v0, 0xa

    if-ne v4, v0, :cond_a5

    .line 263
    goto :goto_ab

    .line 265
    .end local v5    # "handle":Ljava/lang/String;
    :cond_a5
    nop

    .line 247
    const/4 v1, 0x0

    goto :goto_51

    .line 261
    .restart local v5    # "handle":Ljava/lang/String;
    :catchall_a8
    move-exception v0

    monitor-exit v6
    :try_end_aa
    .catchall {:try_start_68 .. :try_end_aa} :catchall_a8

    throw v0

    .line 268
    .end local v2    # "affinity":F
    .end local v4    # "personIdx":I
    .end local v5    # "handle":Ljava/lang/String;
    .restart local v0    # "affinity":F
    .local v13, "personIdx":I
    :cond_ab
    :goto_ab
    move v0, v2

    move v13, v4

    const/4 v1, 0x0

    aput v0, p5, v1

    .line 270
    invoke-virtual {v12}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d2

    .line 271
    sget-boolean v1, Lcom/android/server/notification/ValidateNotificationPeople;->VERBOSE:Z

    if-eqz v1, :cond_d0

    const-string v1, "ValidateNoPeople"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "final affinity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_d0
    const/4 v1, 0x0

    return-object v1

    .line 275
    :cond_d2
    sget-boolean v1, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    if-eqz v1, :cond_ec

    const-string v1, "ValidateNoPeople"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pending: future work scheduled for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_ec
    new-instance v15, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;

    const/4 v6, 0x0

    move-object v1, v15

    move-object v2, v7

    move-object/from16 v3, p1

    move-object v4, v8

    move-object v5, v12

    invoke-direct/range {v1 .. v6}, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;-><init>(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/content/Context;Ljava/lang/String;Ljava/util/LinkedList;Lcom/android/server/notification/ValidateNotificationPeople$1;)V

    return-object v15
.end method


# virtual methods
.method public getContactAffinity(Landroid/os/UserHandle;Landroid/os/Bundle;IF)F
    .registers 15
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "timeoutMs"    # I
    .param p4, "timeoutAffinity"    # F

    .line 160
    sget-boolean v0, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    if-eqz v0, :cond_1a

    const-string v0, "ValidateNoPeople"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checking affinity for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_1a
    const/4 v0, 0x0

    if-nez p2, :cond_1e

    return v0

    .line 162
    :cond_1e
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "key":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [F

    .line 164
    .local v2, "affinityOut":[F
    invoke-direct {p0, p1}, Lcom/android/server/notification/ValidateNotificationPeople;->getContextAsUser(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v9

    .line 165
    .local v9, "context":Landroid/content/Context;
    if-nez v9, :cond_30

    .line 166
    return v0

    .line 168
    :cond_30
    const/4 v7, 0x0

    .line 169
    move-object v3, p0

    move-object v4, v9

    move-object v5, v1

    move-object v6, p2

    move-object v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/android/server/notification/ValidateNotificationPeople;->validatePeople(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;[F)Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;

    move-result-object v0

    .line 170
    .local v0, "prr":Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;
    const/4 v3, 0x0

    aget v4, v2, v3

    .line 172
    .local v4, "affinity":F
    if-eqz v0, :cond_a1

    .line 175
    new-instance v5, Ljava/util/concurrent/Semaphore;

    invoke-direct {v5, v3}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    move-object v3, v5

    .line 176
    .local v3, "s":Ljava/util/concurrent/Semaphore;
    sget-object v5, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v6, Lcom/android/server/notification/ValidateNotificationPeople$2;

    invoke-direct {v6, p0, v0, v3}, Lcom/android/server/notification/ValidateNotificationPeople$2;-><init>(Lcom/android/server/notification/ValidateNotificationPeople;Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;Ljava/util/concurrent/Semaphore;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 185
    int-to-long v5, p3

    :try_start_50
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v5, v6, v7}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v5

    if-nez v5, :cond_77

    .line 186
    const-string v5, "ValidateNoPeople"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Timeout while waiting for affinity: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ". Returning timeoutAffinity="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_76
    .catch Ljava/lang/InterruptedException; {:try_start_50 .. :try_end_76} :catch_81

    .line 188
    return p4

    .line 194
    :cond_77
    nop

    .line 196
    invoke-virtual {v0}, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->getContactAffinity()F

    move-result v5

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .end local v3    # "s":Ljava/util/concurrent/Semaphore;
    goto :goto_a1

    .line 190
    .restart local v3    # "s":Ljava/util/concurrent/Semaphore;
    :catch_81
    move-exception v5

    .line 191
    .local v5, "e":Ljava/lang/InterruptedException;
    const-string v6, "ValidateNoPeople"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "InterruptedException while waiting for affinity: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ". Returning affinity="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    return v4

    .line 198
    .end local v3    # "s":Ljava/util/concurrent/Semaphore;
    .end local v5    # "e":Ljava/lang/InterruptedException;
    :cond_a1
    :goto_a1
    return v4
.end method

.method public initialize(Landroid/content/Context;Lcom/android/server/notification/NotificationUsageStats;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "usageStats"    # Lcom/android/server/notification/NotificationUsageStats;

    .line 96
    sget-boolean v0, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    if-eqz v0, :cond_27

    const-string v0, "ValidateNoPeople"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initializing  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_27
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mUserToContextMap:Ljava/util/Map;

    .line 98
    iput-object p1, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mBaseContext:Landroid/content/Context;

    .line 99
    iput-object p2, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    .line 100
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mPeopleCache:Landroid/util/LruCache;

    .line 101
    iget-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mBaseContext:Landroid/content/Context;

    .line 102
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "validate_notification_people_enabled"

    .line 101
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v2, v0, :cond_4d

    move v0, v2

    goto :goto_4e

    :cond_4d
    const/4 v0, 0x0

    :goto_4e
    iput-boolean v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mEnabled:Z

    .line 103
    iget-boolean v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mEnabled:Z

    if-eqz v0, :cond_72

    .line 104
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mHandler:Landroid/os/Handler;

    .line 105
    new-instance v0, Lcom/android/server/notification/ValidateNotificationPeople$1;

    iget-object v1, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/ValidateNotificationPeople$1;-><init>(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mObserver:Landroid/database/ContentObserver;

    .line 116
    iget-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mBaseContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mObserver:Landroid/database/ContentObserver;

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 119
    :cond_72
    return-void
.end method

.method public process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
    .registers 6
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 122
    iget-boolean v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 123
    sget-boolean v0, Lcom/android/server/notification/ValidateNotificationPeople;->VERBOSE:Z

    if-eqz v0, :cond_10

    const-string v0, "ValidateNoPeople"

    const-string v2, "disabled"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_10
    return-object v1

    .line 126
    :cond_11
    if-eqz p1, :cond_4a

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    if-nez v0, :cond_1a

    goto :goto_4a

    .line 130
    :cond_1a
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2e

    .line 131
    sget-boolean v0, Lcom/android/server/notification/ValidateNotificationPeople;->VERBOSE:Z

    if-eqz v0, :cond_2d

    const-string v0, "ValidateNoPeople"

    const-string/jumbo v2, "skipping global notification"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_2d
    return-object v1

    .line 134
    :cond_2e
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/notification/ValidateNotificationPeople;->getContextAsUser(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    .line 135
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_45

    .line 136
    sget-boolean v2, Lcom/android/server/notification/ValidateNotificationPeople;->VERBOSE:Z

    if-eqz v2, :cond_44

    const-string v2, "ValidateNoPeople"

    const-string/jumbo v3, "skipping notification that lacks a context"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_44
    return-object v1

    .line 139
    :cond_45
    invoke-direct {p0, v0, p1}, Lcom/android/server/notification/ValidateNotificationPeople;->validatePeople(Landroid/content/Context;Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;

    move-result-object v1

    return-object v1

    .line 127
    .end local v0    # "context":Landroid/content/Context;
    :cond_4a
    :goto_4a
    sget-boolean v0, Lcom/android/server/notification/ValidateNotificationPeople;->VERBOSE:Z

    if-eqz v0, :cond_56

    const-string v0, "ValidateNoPeople"

    const-string/jumbo v2, "skipping empty notification"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_56
    return-object v1
.end method

.method public setConfig(Lcom/android/server/notification/RankingConfig;)V
    .registers 2
    .param p1, "config"    # Lcom/android/server/notification/RankingConfig;

    .line 145
    return-void
.end method

.method public setZenHelper(Lcom/android/server/notification/ZenModeHelper;)V
    .registers 2
    .param p1, "helper"    # Lcom/android/server/notification/ZenModeHelper;

    .line 150
    return-void
.end method
