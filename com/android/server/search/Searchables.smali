.class public Lcom/android/server/search/Searchables;
.super Ljava/lang/Object;
.source "Searchables.java"


# static fields
.field public static ENHANCED_GOOGLE_SEARCH_COMPONENT_NAME:Ljava/lang/String; = null

.field private static final GLOBAL_SEARCH_RANKER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static GOOGLE_SEARCH_COMPONENT_NAME:Ljava/lang/String; = null

.field private static final LOG_TAG:Ljava/lang/String; = "Searchables"

.field private static final MD_LABEL_DEFAULT_SEARCHABLE:Ljava/lang/String; = "android.app.default_searchable"

.field private static final MD_SEARCHABLE_SYSTEM_SEARCH:Ljava/lang/String; = "*"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentGlobalSearchActivity:Landroid/content/ComponentName;

.field private mGlobalSearchActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPm:Landroid/content/pm/IPackageManager;

.field private mSearchablesInGlobalSearchList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchablesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchablesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUserId:I

.field private mWebSearchActivity:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 74
    const-string v0, "com.android.googlesearch/.GoogleSearch"

    sput-object v0, Lcom/android/server/search/Searchables;->GOOGLE_SEARCH_COMPONENT_NAME:Ljava/lang/String;

    .line 76
    const-string v0, "com.google.android.providers.enhancedgooglesearch/.Launcher"

    sput-object v0, Lcom/android/server/search/Searchables;->ENHANCED_GOOGLE_SEARCH_COMPONENT_NAME:Ljava/lang/String;

    .line 353
    new-instance v0, Lcom/android/server/search/Searchables$1;

    invoke-direct {v0}, Lcom/android/server/search/Searchables$1;-><init>()V

    sput-object v0, Lcom/android/server/search/Searchables;->GLOBAL_SEARCH_RANKER:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/search/Searchables;->mSearchablesMap:Ljava/util/HashMap;

    .line 66
    iput-object v0, p0, Lcom/android/server/search/Searchables;->mSearchablesList:Ljava/util/ArrayList;

    .line 67
    iput-object v0, p0, Lcom/android/server/search/Searchables;->mSearchablesInGlobalSearchList:Ljava/util/ArrayList;

    .line 71
    iput-object v0, p0, Lcom/android/server/search/Searchables;->mCurrentGlobalSearchActivity:Landroid/content/ComponentName;

    .line 72
    iput-object v0, p0, Lcom/android/server/search/Searchables;->mWebSearchActivity:Landroid/content/ComponentName;

    .line 89
    iput-object p1, p0, Lcom/android/server/search/Searchables;->mContext:Landroid/content/Context;

    .line 90
    iput p2, p0, Lcom/android/server/search/Searchables;->mUserId:I

    .line 91
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/search/Searchables;->mPm:Landroid/content/pm/IPackageManager;

    .line 92
    return-void
.end method

.method static synthetic access$000(Landroid/content/pm/ResolveInfo;)Z
    .registers 2
    .param p0, "x0"    # Landroid/content/pm/ResolveInfo;

    .line 53
    invoke-static {p0}, Lcom/android/server/search/Searchables;->isSystemApp(Landroid/content/pm/ResolveInfo;)Z

    move-result v0

    return v0
.end method

.method private createFilterdResolveInfoList(Ljava/util/List;)Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 478
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez p1, :cond_4

    .line 479
    const/4 v0, 0x0

    return-object v0

    .line 481
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 482
    .local v0, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    .line 483
    .local v1, "pm":Landroid/content/pm/PackageManagerInternal;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 484
    .local v2, "callingUid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 485
    .local v3, "callingUserId":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_21
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 486
    .local v5, "info":Landroid/content/pm/ResolveInfo;
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 487
    invoke-virtual {v6}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    .line 486
    invoke-virtual {v1, v2, v6, v3}, Landroid/content/pm/PackageManagerInternal;->canAccessComponent(ILandroid/content/ComponentName;I)Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 488
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    .end local v5    # "info":Landroid/content/pm/ResolveInfo;
    :cond_3c
    goto :goto_21

    .line 491
    :cond_3d
    return-object v0
.end method

.method private createFilterdSearchableInfoList(Ljava/util/List;)Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/SearchableInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation

    .line 462
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/SearchableInfo;>;"
    if-nez p1, :cond_4

    .line 463
    const/4 v0, 0x0

    return-object v0

    .line 465
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 466
    .local v0, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/SearchableInfo;>;"
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    .line 467
    .local v1, "pm":Landroid/content/pm/PackageManagerInternal;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 468
    .local v2, "callingUid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 469
    .local v3, "callingUserId":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_21
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/SearchableInfo;

    .line 470
    .local v5, "info":Landroid/app/SearchableInfo;
    invoke-virtual {v5}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v1, v2, v6, v3}, Landroid/content/pm/PackageManagerInternal;->canAccessComponent(ILandroid/content/ComponentName;I)Z

    move-result v6

    if-eqz v6, :cond_3a

    .line 471
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    .end local v5    # "info":Landroid/app/SearchableInfo;
    :cond_3a
    goto :goto_21

    .line 474
    :cond_3b
    return-object v0
.end method

.method private findGlobalSearchActivities()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 306
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.search.action.GLOBAL_SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 307
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10010000

    invoke-direct {p0, v0, v1}, Lcom/android/server/search/Searchables;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 309
    .local v1, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_1a

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 311
    sget-object v2, Lcom/android/server/search/Searchables;->GLOBAL_SEARCH_RANKER:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 314
    :cond_1a
    return-object v1
.end method

.method private findGlobalSearchActivity(Ljava/util/List;)Landroid/content/ComponentName;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    .line 323
    .local p1, "installed":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {p0}, Lcom/android/server/search/Searchables;->getGlobalSearchProviderSetting()Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, "searchProviderSetting":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 325
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 327
    .local v1, "globalSearchComponent":Landroid/content/ComponentName;
    if-eqz v1, :cond_17

    invoke-direct {p0, v1}, Lcom/android/server/search/Searchables;->isInstalled(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 328
    return-object v1

    .line 332
    .end local v1    # "globalSearchComponent":Landroid/content/ComponentName;
    :cond_17
    invoke-direct {p0, p1}, Lcom/android/server/search/Searchables;->getDefaultGlobalSearchProvider(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v1

    return-object v1
.end method

.method private findWebSearchActivity(Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .registers 8
    .param p1, "globalSearchActivity"    # Landroid/content/ComponentName;

    .line 410
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 411
    return-object v0

    .line 413
    :cond_4
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.WEB_SEARCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 414
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 415
    const/high16 v2, 0x10000

    .line 416
    invoke-direct {p0, v1, v2}, Lcom/android/server/search/Searchables;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 418
    .local v2, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_33

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_33

    .line 419
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 421
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 423
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_33
    const-string v3, "Searchables"

    const-string v4, "No web search activity found"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    return-object v0
.end method

.method private getDefaultGlobalSearchProvider(Ljava/util/List;)Landroid/content/ComponentName;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    .line 390
    .local p1, "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz p1, :cond_1b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 391
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 392
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 395
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_1b
    const-string v0, "Searchables"

    const-string v1, "No global search activity found"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const/4 v0, 0x0

    return-object v0
.end method

.method private getGlobalSearchProviderSetting()Ljava/lang/String;
    .registers 3

    .line 400
    iget-object v0, p0, Lcom/android/server/search/Searchables;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "search_global_search_activity"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isInstalled(Landroid/content/ComponentName;)Z
    .registers 5
    .param p1, "globalSearch"    # Landroid/content/ComponentName;

    .line 341
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.search.action.GLOBAL_SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 342
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 344
    const/high16 v1, 0x10000

    invoke-direct {p0, v0, v1}, Lcom/android/server/search/Searchables;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 346
    .local v1, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_1a

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 347
    const/4 v2, 0x1

    return v2

    .line 350
    :cond_1a
    const/4 v2, 0x0

    return v2
.end method

.method private static final isSystemApp(Landroid/content/pm/ResolveInfo;)Z
    .registers 3
    .param p0, "res"    # Landroid/content/pm/ResolveInfo;

    .line 382
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return v1
.end method

.method private queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 428
    const/4 v0, 0x0

    .line 430
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :try_start_1
    iget-object v1, p0, Lcom/android/server/search/Searchables;->mPm:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Lcom/android/server/search/Searchables;->mContext:Landroid/content/Context;

    .line 432
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x800000

    or-int/2addr v3, p2

    iget v4, p0, Lcom/android/server/search/Searchables;->mUserId:I

    .line 431
    invoke-interface {v1, p1, v2, v3, v4}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 433
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1a} :catch_1c

    move-object v0, v1

    .line 436
    goto :goto_1d

    .line 434
    :catch_1c
    move-exception v1

    .line 437
    :goto_1d
    return-object v0
.end method


# virtual methods
.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 523
    const-string v0, "Searchable authorities:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 524
    monitor-enter p0

    .line 525
    :try_start_6
    iget-object v0, p0, Lcom/android/server/search/Searchables;->mSearchablesList:Ljava/util/ArrayList;

    if-eqz v0, :cond_29

    .line 526
    iget-object v0, p0, Lcom/android/server/search/Searchables;->mSearchablesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchableInfo;

    .line 527
    .local v1, "info":Landroid/app/SearchableInfo;
    const-string v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 528
    .end local v1    # "info":Landroid/app/SearchableInfo;
    goto :goto_10

    .line 530
    :cond_29
    monitor-exit p0

    .line 531
    return-void

    .line 530
    :catchall_2b
    move-exception v0

    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_6 .. :try_end_2d} :catchall_2b

    throw v0
.end method

.method public declared-synchronized getGlobalSearchActivities()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 458
    :try_start_1
    iget-object v0, p0, Lcom/android/server/search/Searchables;->mGlobalSearchActivities:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/server/search/Searchables;->createFilterdResolveInfoList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/search/Searchables;
    throw v0
.end method

.method public declared-synchronized getGlobalSearchActivity()Landroid/content/ComponentName;
    .registers 5

    monitor-enter p0

    .line 498
    :try_start_1
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 499
    .local v0, "pm":Landroid/content/pm/PackageManagerInternal;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 500
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 501
    .local v2, "callingUserId":I
    iget-object v3, p0, Lcom/android/server/search/Searchables;->mCurrentGlobalSearchActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_21

    iget-object v3, p0, Lcom/android/server/search/Searchables;->mCurrentGlobalSearchActivity:Landroid/content/ComponentName;

    .line 502
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/pm/PackageManagerInternal;->canAccessComponent(ILandroid/content/ComponentName;I)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 503
    iget-object v3, p0, Lcom/android/server/search/Searchables;->mCurrentGlobalSearchActivity:Landroid/content/ComponentName;
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_24

    monitor-exit p0

    return-object v3

    .line 505
    :cond_21
    const/4 v3, 0x0

    monitor-exit p0

    return-object v3

    .line 497
    .end local v0    # "pm":Landroid/content/pm/PackageManagerInternal;
    .end local v1    # "callingUid":I
    .end local v2    # "callingUserId":I
    :catchall_24
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/search/Searchables;
    throw v0
.end method

.method public getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;
    .registers 13
    .param p1, "activity"    # Landroid/content/ComponentName;

    .line 124
    monitor-enter p0

    .line 125
    :try_start_1
    iget-object v0, p0, Lcom/android/server/search/Searchables;->mSearchablesMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchableInfo;

    .line 126
    .local v0, "result":Landroid/app/SearchableInfo;
    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    .line 127
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    .line 128
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    .line 129
    .local v2, "pm":Landroid/content/pm/PackageManagerInternal;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v4

    .line 130
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 129
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/pm/PackageManagerInternal;->canAccessComponent(ILandroid/content/ComponentName;I)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 131
    monitor-exit p0

    return-object v0

    .line 133
    :cond_28
    monitor-exit p0

    return-object v1

    .line 135
    .end local v2    # "pm":Landroid/content/pm/PackageManagerInternal;
    :cond_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_cf

    .line 142
    move-object v2, v1

    .line 144
    .local v2, "ai":Landroid/content/pm/ActivityInfo;
    :try_start_2c
    iget-object v3, p0, Lcom/android/server/search/Searchables;->mPm:Landroid/content/pm/IPackageManager;

    const/16 v4, 0x80

    iget v5, p0, Lcom/android/server/search/Searchables;->mUserId:I

    invoke-interface {v3, p1, v4, v5}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v3
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_36} :catch_b7

    move-object v2, v3

    .line 148
    nop

    .line 149
    const/4 v3, 0x0

    .line 152
    .local v3, "refActivityName":Ljava/lang/String;
    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 153
    .local v4, "md":Landroid/os/Bundle;
    if-eqz v4, :cond_43

    .line 154
    const-string v5, "android.app.default_searchable"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 157
    :cond_43
    if-nez v3, :cond_51

    .line 158
    iget-object v5, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 159
    if-eqz v4, :cond_51

    .line 160
    const-string v5, "android.app.default_searchable"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 165
    :cond_51
    if-eqz v3, :cond_b6

    .line 168
    const-string v5, "*"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5c

    .line 169
    return-object v1

    .line 171
    :cond_5c
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 173
    .local v5, "pkg":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2e

    if-ne v6, v7, :cond_7e

    .line 174
    new-instance v6, Landroid/content/ComponentName;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v6, "referredActivity":Landroid/content/ComponentName;
    goto :goto_83

    .line 176
    .end local v6    # "referredActivity":Landroid/content/ComponentName;
    :cond_7e
    new-instance v6, Landroid/content/ComponentName;

    invoke-direct {v6, v5, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .restart local v6    # "referredActivity":Landroid/content/ComponentName;
    :goto_83
    monitor-enter p0

    .line 182
    :try_start_84
    iget-object v7, p0, Lcom/android/server/search/Searchables;->mSearchablesMap:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/SearchableInfo;

    move-object v0, v7

    .line 183
    if-eqz v0, :cond_94

    .line 184
    iget-object v7, p0, Lcom/android/server/search/Searchables;->mSearchablesMap:Ljava/util/HashMap;

    invoke-virtual {v7, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    :cond_94
    monitor-exit p0
    :try_end_95
    .catchall {:try_start_84 .. :try_end_95} :catchall_b3

    .line 187
    if-eqz v0, :cond_b6

    .line 188
    const-class v7, Landroid/content/pm/PackageManagerInternal;

    .line 189
    invoke-static {v7}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageManagerInternal;

    .line 190
    .local v7, "pm":Landroid/content/pm/PackageManagerInternal;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v9

    .line 191
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v10

    .line 190
    invoke-virtual {v7, v8, v9, v10}, Landroid/content/pm/PackageManagerInternal;->canAccessComponent(ILandroid/content/ComponentName;I)Z

    move-result v8

    if-eqz v8, :cond_b2

    .line 192
    return-object v0

    .line 194
    :cond_b2
    return-object v1

    .line 186
    .end local v7    # "pm":Landroid/content/pm/PackageManagerInternal;
    :catchall_b3
    move-exception v1

    :try_start_b4
    monitor-exit p0
    :try_end_b5
    .catchall {:try_start_b4 .. :try_end_b5} :catchall_b3

    throw v1

    .line 199
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v6    # "referredActivity":Landroid/content/ComponentName;
    :cond_b6
    return-object v1

    .line 145
    .end local v3    # "refActivityName":Ljava/lang/String;
    .end local v4    # "md":Landroid/os/Bundle;
    :catch_b7
    move-exception v3

    .line 146
    .local v3, "re":Landroid/os/RemoteException;
    const-string v4, "Searchables"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error getting activity info "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-object v1

    .line 135
    .end local v0    # "result":Landroid/app/SearchableInfo;
    .end local v2    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v3    # "re":Landroid/os/RemoteException;
    :catchall_cf
    move-exception v0

    :try_start_d0
    monitor-exit p0
    :try_end_d1
    .catchall {:try_start_d0 .. :try_end_d1} :catchall_cf

    throw v0
.end method

.method public declared-synchronized getSearchablesInGlobalSearchList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 451
    :try_start_1
    iget-object v0, p0, Lcom/android/server/search/Searchables;->mSearchablesInGlobalSearchList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/server/search/Searchables;->createFilterdSearchableInfoList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/search/Searchables;
    throw v0
.end method

.method public declared-synchronized getSearchablesList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 444
    :try_start_1
    iget-object v0, p0, Lcom/android/server/search/Searchables;->mSearchablesList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/server/search/Searchables;->createFilterdSearchableInfoList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/search/Searchables;
    throw v0
.end method

.method public declared-synchronized getWebSearchActivity()Landroid/content/ComponentName;
    .registers 5

    monitor-enter p0

    .line 512
    :try_start_1
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 513
    .local v0, "pm":Landroid/content/pm/PackageManagerInternal;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 514
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 515
    .local v2, "callingUserId":I
    iget-object v3, p0, Lcom/android/server/search/Searchables;->mWebSearchActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_21

    iget-object v3, p0, Lcom/android/server/search/Searchables;->mWebSearchActivity:Landroid/content/ComponentName;

    .line 516
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/pm/PackageManagerInternal;->canAccessComponent(ILandroid/content/ComponentName;I)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 517
    iget-object v3, p0, Lcom/android/server/search/Searchables;->mWebSearchActivity:Landroid/content/ComponentName;
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_24

    monitor-exit p0

    return-object v3

    .line 519
    :cond_21
    const/4 v3, 0x0

    monitor-exit p0

    return-object v3

    .line 511
    .end local v0    # "pm":Landroid/content/pm/PackageManagerInternal;
    .end local v1    # "callingUid":I
    .end local v2    # "callingUserId":I
    :catchall_24
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/search/Searchables;
    throw v0
.end method

.method public updateSearchableList()V
    .registers 20

    .line 225
    move-object/from16 v1, p0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v2, v0

    .line 227
    .local v2, "newSearchablesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Landroid/app/SearchableInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 229
    .local v3, "newSearchablesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/SearchableInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    .line 234
    .local v4, "newSearchablesInGlobalSearchList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/SearchableInfo;>;"
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.SEARCH"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    .line 236
    .local v5, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 238
    .local v6, "ident":J
    const v0, 0x10000080

    :try_start_23
    invoke-direct {v1, v5, v0}, Lcom/android/server/search/Searchables;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 242
    .local v8, "searchList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.WEB_SEARCH"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 243
    .local v9, "webSearchIntent":Landroid/content/Intent;
    invoke-direct {v1, v9, v0}, Lcom/android/server/search/Searchables;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    move-object v10, v0

    .line 247
    .local v10, "webSearchInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v8, :cond_40

    if-eqz v10, :cond_38

    goto :goto_40

    .line 272
    :cond_38
    move-object/from16 v16, v5

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    goto/16 :goto_af

    .line 248
    :cond_40
    :goto_40
    const/4 v0, 0x0

    if-nez v8, :cond_45

    move v11, v0

    goto :goto_49

    :cond_45
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    .line 249
    .local v11, "search_count":I
    :goto_49
    if-nez v10, :cond_4d

    move v12, v0

    goto :goto_51

    :cond_4d
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12
    :try_end_51
    .catchall {:try_start_23 .. :try_end_51} :catchall_d7

    .line 250
    .local v12, "web_search_count":I
    :goto_51
    add-int v13, v11, v12

    .line 251
    .local v13, "count":I
    nop

    .local v0, "ii":I
    :goto_54
    if-ge v0, v13, :cond_a9

    .line 253
    if-ge v0, v11, :cond_64

    .line 254
    :try_start_58
    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ResolveInfo;
    :try_end_5e
    .catchall {:try_start_58 .. :try_end_5e} :catchall_5f

    goto :goto_6c

    .line 291
    .end local v0    # "ii":I
    .end local v8    # "searchList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v9    # "webSearchIntent":Landroid/content/Intent;
    .end local v10    # "webSearchInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v11    # "search_count":I
    .end local v12    # "web_search_count":I
    .end local v13    # "count":I
    :catchall_5f
    move-exception v0

    move-object/from16 v16, v5

    goto/16 :goto_da

    .line 255
    .restart local v0    # "ii":I
    .restart local v8    # "searchList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v9    # "webSearchIntent":Landroid/content/Intent;
    .restart local v10    # "webSearchInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v11    # "search_count":I
    .restart local v12    # "web_search_count":I
    .restart local v13    # "count":I
    :cond_64
    sub-int v14, v0, v11

    :try_start_66
    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ResolveInfo;

    .line 256
    .local v14, "info":Landroid/content/pm/ResolveInfo;
    :goto_6c
    iget-object v15, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_6e
    .catchall {:try_start_66 .. :try_end_6e} :catchall_d7

    .line 258
    .local v15, "ai":Landroid/content/pm/ActivityInfo;
    move-object/from16 v16, v5

    :try_start_70
    new-instance v5, Landroid/content/ComponentName;

    .end local v5    # "intent":Landroid/content/Intent;
    .local v16, "intent":Landroid/content/Intent;
    move-object/from16 v17, v9

    iget-object v9, v15, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .end local v9    # "webSearchIntent":Landroid/content/Intent;
    .local v17, "webSearchIntent":Landroid/content/Intent;
    move-object/from16 v18, v10

    iget-object v10, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .end local v10    # "webSearchInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v18, "webSearchInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {v5, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_a0

    .line 259
    iget-object v5, v1, Lcom/android/server/search/Searchables;->mContext:Landroid/content/Context;

    iget v9, v1, Lcom/android/server/search/Searchables;->mUserId:I

    invoke-static {v5, v15, v9}, Landroid/app/SearchableInfo;->getActivityMetaData(Landroid/content/Context;Landroid/content/pm/ActivityInfo;I)Landroid/app/SearchableInfo;

    move-result-object v5

    .line 261
    .local v5, "searchable":Landroid/app/SearchableInfo;
    if-eqz v5, :cond_a0

    .line 262
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    invoke-virtual {v5}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v2, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    invoke-virtual {v5}, Landroid/app/SearchableInfo;->shouldIncludeInGlobalSearch()Z

    move-result v9

    if-eqz v9, :cond_a0

    .line 265
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    .end local v5    # "searchable":Landroid/app/SearchableInfo;
    .end local v14    # "info":Landroid/content/pm/ResolveInfo;
    .end local v15    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_a0
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v5, v16

    move-object/from16 v9, v17

    move-object/from16 v10, v18

    goto :goto_54

    .line 272
    .end local v0    # "ii":I
    .end local v11    # "search_count":I
    .end local v12    # "web_search_count":I
    .end local v13    # "count":I
    .end local v16    # "intent":Landroid/content/Intent;
    .end local v17    # "webSearchIntent":Landroid/content/Intent;
    .end local v18    # "webSearchInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v5, "intent":Landroid/content/Intent;
    .restart local v9    # "webSearchIntent":Landroid/content/Intent;
    .restart local v10    # "webSearchInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_a9
    move-object/from16 v16, v5

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    .end local v5    # "intent":Landroid/content/Intent;
    .end local v9    # "webSearchIntent":Landroid/content/Intent;
    .end local v10    # "webSearchInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v16    # "intent":Landroid/content/Intent;
    .restart local v17    # "webSearchIntent":Landroid/content/Intent;
    .restart local v18    # "webSearchInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_af
    invoke-direct/range {p0 .. p0}, Lcom/android/server/search/Searchables;->findGlobalSearchActivities()Ljava/util/List;

    move-result-object v0

    move-object v5, v0

    .line 275
    .local v5, "newGlobalSearchActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {v1, v5}, Lcom/android/server/search/Searchables;->findGlobalSearchActivity(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    move-object v9, v0

    .line 279
    .local v9, "newGlobalSearchActivity":Landroid/content/ComponentName;
    invoke-direct {v1, v9}, Lcom/android/server/search/Searchables;->findWebSearchActivity(Landroid/content/ComponentName;)Landroid/content/ComponentName;

    move-result-object v0

    move-object v10, v0

    .line 282
    .local v10, "newWebSearchActivity":Landroid/content/ComponentName;
    monitor-enter p0
    :try_end_bf
    .catchall {:try_start_70 .. :try_end_bf} :catchall_d5

    .line 283
    :try_start_bf
    iput-object v2, v1, Lcom/android/server/search/Searchables;->mSearchablesMap:Ljava/util/HashMap;

    .line 284
    iput-object v3, v1, Lcom/android/server/search/Searchables;->mSearchablesList:Ljava/util/ArrayList;

    .line 285
    iput-object v4, v1, Lcom/android/server/search/Searchables;->mSearchablesInGlobalSearchList:Ljava/util/ArrayList;

    .line 286
    iput-object v5, v1, Lcom/android/server/search/Searchables;->mGlobalSearchActivities:Ljava/util/List;

    .line 287
    iput-object v9, v1, Lcom/android/server/search/Searchables;->mCurrentGlobalSearchActivity:Landroid/content/ComponentName;

    .line 288
    iput-object v10, v1, Lcom/android/server/search/Searchables;->mWebSearchActivity:Landroid/content/ComponentName;

    .line 289
    monitor-exit p0
    :try_end_cc
    .catchall {:try_start_bf .. :try_end_cc} :catchall_d2

    .line 291
    .end local v5    # "newGlobalSearchActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v9    # "newGlobalSearchActivity":Landroid/content/ComponentName;
    .end local v10    # "newWebSearchActivity":Landroid/content/ComponentName;
    .end local v17    # "webSearchIntent":Landroid/content/Intent;
    .end local v18    # "webSearchInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 292
    nop

    .line 291
    move-object v0, v8

    .line 293
    .end local v8    # "searchList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v0, "searchList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    return-void

    .line 289
    .end local v0    # "searchList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v5    # "newGlobalSearchActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v8    # "searchList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v9    # "newGlobalSearchActivity":Landroid/content/ComponentName;
    .restart local v10    # "newWebSearchActivity":Landroid/content/ComponentName;
    .restart local v17    # "webSearchIntent":Landroid/content/Intent;
    .restart local v18    # "webSearchInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catchall_d2
    move-exception v0

    :try_start_d3
    monitor-exit p0
    :try_end_d4
    .catchall {:try_start_d3 .. :try_end_d4} :catchall_d2

    :try_start_d4
    throw v0
    :try_end_d5
    .catchall {:try_start_d4 .. :try_end_d5} :catchall_d5

    .line 291
    .end local v5    # "newGlobalSearchActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v8    # "searchList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v9    # "newGlobalSearchActivity":Landroid/content/ComponentName;
    .end local v10    # "newWebSearchActivity":Landroid/content/ComponentName;
    .end local v17    # "webSearchIntent":Landroid/content/Intent;
    .end local v18    # "webSearchInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catchall_d5
    move-exception v0

    goto :goto_da

    .end local v16    # "intent":Landroid/content/Intent;
    .local v5, "intent":Landroid/content/Intent;
    :catchall_d7
    move-exception v0

    move-object/from16 v16, v5

    .end local v5    # "intent":Landroid/content/Intent;
    .restart local v16    # "intent":Landroid/content/Intent;
    :goto_da
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method
