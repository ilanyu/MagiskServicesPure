.class public Lcom/android/server/TextServicesManagerService;
.super Lcom/android/internal/textservice/ITextServicesManager$Stub;
.source "TextServicesManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;,
        Lcom/android/server/TextServicesManagerService$InternalDeathRecipients;,
        Lcom/android/server/TextServicesManagerService$InternalServiceConnection;,
        Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;,
        Lcom/android/server/TextServicesManagerService$SessionRequest;,
        Lcom/android/server/TextServicesManagerService$TextServicesMonitor;,
        Lcom/android/server/TextServicesManagerService$Lifecycle;,
        Lcom/android/server/TextServicesManagerService$TextServicesData;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private final mMonitor:Lcom/android/server/TextServicesManagerService$TextServicesMonitor;

.field private final mSpellCheckerOwnerUserIdMap:Lcom/android/internal/textservice/LazyIntToIntMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mUserData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/TextServicesManagerService$TextServicesData;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 77
    const-class v0, Lcom/android/server/TextServicesManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 325
    invoke-direct {p0}, Lcom/android/internal/textservice/ITextServicesManager$Stub;-><init>()V

    .line 82
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/TextServicesManagerService;->mLock:Ljava/lang/Object;

    .line 326
    iput-object p1, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    .line 327
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/TextServicesManagerService;->mUserManager:Landroid/os/UserManager;

    .line 328
    new-instance v0, Lcom/android/internal/textservice/LazyIntToIntMap;

    new-instance v1, Lcom/android/server/-$$Lambda$TextServicesManagerService$Gx5nx59gL-Y47MWUiJn5TqC2DLs;

    invoke-direct {v1, p0}, Lcom/android/server/-$$Lambda$TextServicesManagerService$Gx5nx59gL-Y47MWUiJn5TqC2DLs;-><init>(Lcom/android/server/TextServicesManagerService;)V

    invoke-direct {v0, v1}, Lcom/android/internal/textservice/LazyIntToIntMap;-><init>(Ljava/util/function/IntUnaryOperator;)V

    iput-object v0, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerOwnerUserIdMap:Lcom/android/internal/textservice/LazyIntToIntMap;

    .line 342
    new-instance v0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;-><init>(Lcom/android/server/TextServicesManagerService;Lcom/android/server/TextServicesManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/TextServicesManagerService;->mMonitor:Lcom/android/server/TextServicesManagerService$TextServicesMonitor;

    .line 343
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mMonitor:Lcom/android/server/TextServicesManagerService$TextServicesMonitor;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 344
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 76
    sget-object v0, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/TextServicesManagerService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/TextServicesManagerService;

    .line 76
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/TextServicesManagerService;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/TextServicesManagerService;

    .line 76
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/TextServicesManagerService;Ljava/lang/String;Lcom/android/server/TextServicesManagerService$TextServicesData;)Landroid/view/textservice/SpellCheckerInfo;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/TextServicesManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/android/server/TextServicesManagerService$TextServicesData;

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/server/TextServicesManagerService;->findAvailSystemSpellCheckerLocked(Ljava/lang/String;Lcom/android/server/TextServicesManagerService$TextServicesData;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/TextServicesManagerService;Landroid/view/textservice/SpellCheckerInfo;Lcom/android/server/TextServicesManagerService$TextServicesData;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/TextServicesManagerService;
    .param p1, "x1"    # Landroid/view/textservice/SpellCheckerInfo;
    .param p2, "x2"    # Lcom/android/server/TextServicesManagerService$TextServicesData;

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/server/TextServicesManagerService;->setCurrentSpellCheckerLocked(Landroid/view/textservice/SpellCheckerInfo;Lcom/android/server/TextServicesManagerService$TextServicesData;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/TextServicesManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/TextServicesManagerService;

    .line 76
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private bindCurrentSpellCheckerService(Landroid/content/Intent;Landroid/content/ServiceConnection;II)Z
    .registers 9
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I
    .param p4, "userId"    # I

    .line 416
    const/4 v0, 0x0

    if-eqz p1, :cond_1a

    if-nez p2, :cond_6

    goto :goto_1a

    .line 422
    :cond_6
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p4}, Lcom/android/server/am/AutoStartManagerService;->isAllowStartService(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v1

    if-nez v1, :cond_f

    .line 423
    return v0

    .line 426
    :cond_f
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    invoke-static {p4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    return v0

    .line 417
    :cond_1a
    :goto_1a
    sget-object v1, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--- bind failed: service = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", conn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", userId ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    return v0
.end method

.method private findAvailSystemSpellCheckerLocked(Ljava/lang/String;Lcom/android/server/TextServicesManagerService$TextServicesData;)Landroid/view/textservice/SpellCheckerInfo;
    .registers 20
    .param p1, "prefPackage"    # Ljava/lang/String;
    .param p2, "tsd"    # Lcom/android/server/TextServicesManagerService$TextServicesData;

    move-object/from16 v0, p1

    .line 440
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 441
    .local v1, "spellCheckerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/textservice/SpellCheckerInfo;>;"
    # getter for: Lcom/android/server/TextServicesManagerService$TextServicesData;->mSpellCheckerList:Ljava/util/ArrayList;
    invoke-static/range {p2 .. p2}, Lcom/android/server/TextServicesManagerService$TextServicesData;->access$1500(Lcom/android/server/TextServicesManagerService$TextServicesData;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/textservice/SpellCheckerInfo;

    .line 442
    .local v3, "sci":Landroid/view/textservice/SpellCheckerInfo;
    invoke-virtual {v3}, Landroid/view/textservice/SpellCheckerInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_2a

    .line 443
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    .end local v3    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    :cond_2a
    goto :goto_f

    .line 447
    :cond_2b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 448
    .local v2, "spellCheckersCount":I
    if-nez v2, :cond_3b

    .line 449
    sget-object v3, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "no available spell checker services found"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    const/4 v3, 0x0

    return-object v3

    .line 452
    :cond_3b
    if-eqz v0, :cond_54

    .line 453
    const/4 v5, 0x0

    .line 453
    .local v5, "i":I
    :goto_3e
    if-ge v5, v2, :cond_54

    .line 454
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/textservice/SpellCheckerInfo;

    .line 455
    .local v6, "sci":Landroid/view/textservice/SpellCheckerInfo;
    invoke-virtual {v6}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_51

    .line 459
    return-object v6

    .line 453
    .end local v6    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    :cond_51
    add-int/lit8 v5, v5, 0x1

    goto :goto_3e

    .line 467
    .end local v5    # "i":I
    :cond_54
    move-object/from16 v5, p0

    iget-object v6, v5, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 468
    .local v6, "systemLocal":Ljava/util/Locale;
    nop

    .line 469
    invoke-static {v6}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSuitableLocalesForSpellChecker(Ljava/util/Locale;)Ljava/util/ArrayList;

    move-result-object v7

    .line 474
    .local v7, "suitableLocales":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Locale;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 475
    .local v8, "localeCount":I
    const/4 v9, 0x0

    .line 475
    .local v9, "localeIndex":I
    :goto_6c
    if-ge v9, v8, :cond_a1

    .line 476
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Locale;

    .line 477
    .local v10, "locale":Ljava/util/Locale;
    const/4 v11, 0x0

    .line 477
    .local v11, "spellCheckersIndex":I
    :goto_75
    if-ge v11, v2, :cond_9e

    .line 479
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/textservice/SpellCheckerInfo;

    .line 480
    .local v12, "info":Landroid/view/textservice/SpellCheckerInfo;
    invoke-virtual {v12}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v13

    .line 481
    .local v13, "subtypeCount":I
    const/4 v14, 0x0

    .line 481
    .local v14, "subtypeIndex":I
    :goto_82
    if-ge v14, v13, :cond_9b

    .line 482
    invoke-virtual {v12, v14}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v15

    .line 483
    .local v15, "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    nop

    .line 484
    invoke-virtual {v15}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    move-result-object v3

    .line 483
    invoke-static {v3}, Lcom/android/internal/inputmethod/InputMethodUtils;->constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v3

    .line 485
    .local v3, "subtypeLocale":Ljava/util/Locale;
    invoke-virtual {v10, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_98

    .line 489
    return-object v12

    .line 481
    .end local v3    # "subtypeLocale":Ljava/util/Locale;
    .end local v15    # "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    :cond_98
    add-int/lit8 v14, v14, 0x1

    goto :goto_82

    .line 478
    .end local v12    # "info":Landroid/view/textservice/SpellCheckerInfo;
    .end local v13    # "subtypeCount":I
    .end local v14    # "subtypeIndex":I
    :cond_9b
    add-int/lit8 v11, v11, 0x1

    goto :goto_75

    .line 475
    .end local v10    # "locale":Ljava/util/Locale;
    .end local v11    # "spellCheckersIndex":I
    :cond_9e
    add-int/lit8 v9, v9, 0x1

    goto :goto_6c

    .line 495
    .end local v9    # "localeIndex":I
    :cond_a1
    if-le v2, v4, :cond_ab

    .line 496
    sget-object v3, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "more than one spell checker service found, picking first"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_ab
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/textservice/SpellCheckerInfo;

    return-object v3
.end method

.method private getDataFromCallingUserIdLocked(I)Lcom/android/server/TextServicesManagerService$TextServicesData;
    .registers 8
    .param p1, "callingUserId"    # I

    .line 781
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerOwnerUserIdMap:Lcom/android/internal/textservice/LazyIntToIntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/textservice/LazyIntToIntMap;->get(I)I

    move-result v0

    .line 782
    .local v0, "spellCheckerOwnerUserId":I
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TextServicesManagerService$TextServicesData;

    .line 784
    .local v1, "data":Lcom/android/server/TextServicesManagerService$TextServicesData;
    if-eq v0, p1, :cond_28

    .line 786
    const/4 v2, 0x0

    if-nez v1, :cond_14

    .line 787
    return-object v2

    .line 789
    :cond_14
    invoke-virtual {v1}, Lcom/android/server/TextServicesManagerService$TextServicesData;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v3

    .line 790
    .local v3, "info":Landroid/view/textservice/SpellCheckerInfo;
    if-nez v3, :cond_1b

    .line 791
    return-object v2

    .line 793
    :cond_1b
    invoke-virtual {v3}, Landroid/view/textservice/SpellCheckerInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v4

    .line 794
    .local v4, "serviceInfo":Landroid/content/pm/ServiceInfo;
    iget-object v5, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_28

    .line 797
    return-object v2

    .line 801
    .end local v3    # "info":Landroid/view/textservice/SpellCheckerInfo;
    .end local v4    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_28
    return-object v1
.end method

.method private initializeInternalStateLocked(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 349
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerOwnerUserIdMap:Lcom/android/internal/textservice/LazyIntToIntMap;

    .line 350
    invoke-virtual {v0, p1}, Lcom/android/internal/textservice/LazyIntToIntMap;->get(I)I

    move-result v0

    if-eq p1, v0, :cond_9

    .line 351
    return-void

    .line 354
    :cond_9
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/TextServicesManagerService$TextServicesData;

    .line 355
    .local v0, "tsd":Lcom/android/server/TextServicesManagerService$TextServicesData;
    if-nez v0, :cond_20

    .line 356
    new-instance v1, Lcom/android/server/TextServicesManagerService$TextServicesData;

    iget-object v2, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, p1, v2}, Lcom/android/server/TextServicesManagerService$TextServicesData;-><init>(ILandroid/content/Context;)V

    move-object v0, v1

    .line 357
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 360
    :cond_20
    # invokes: Lcom/android/server/TextServicesManagerService$TextServicesData;->initializeTextServicesData()V
    invoke-static {v0}, Lcom/android/server/TextServicesManagerService$TextServicesData;->access$900(Lcom/android/server/TextServicesManagerService$TextServicesData;)V

    .line 361
    invoke-virtual {v0}, Lcom/android/server/TextServicesManagerService$TextServicesData;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v1

    .line 362
    .local v1, "sci":Landroid/view/textservice/SpellCheckerInfo;
    if-nez v1, :cond_31

    .line 363
    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Lcom/android/server/TextServicesManagerService;->findAvailSystemSpellCheckerLocked(Ljava/lang/String;Lcom/android/server/TextServicesManagerService$TextServicesData;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v1

    .line 367
    invoke-direct {p0, v1, v0}, Lcom/android/server/TextServicesManagerService;->setCurrentSpellCheckerLocked(Landroid/view/textservice/SpellCheckerInfo;Lcom/android/server/TextServicesManagerService$TextServicesData;)V

    .line 369
    :cond_31
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/TextServicesManagerService;I)I
    .registers 6
    .param p1, "callingUserId"    # I

    .line 330
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 332
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 333
    .local v2, "parent":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_f

    iget v3, v2, Landroid/content/pm/UserInfo;->id:I
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_14

    goto :goto_10

    .line 335
    :cond_f
    move v3, p1

    :goto_10
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 333
    return v3

    .line 335
    .end local v2    # "parent":Landroid/content/pm/UserInfo;
    :catchall_14
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private setCurrentSpellCheckerLocked(Landroid/view/textservice/SpellCheckerInfo;Lcom/android/server/TextServicesManagerService$TextServicesData;)V
    .registers 7
    .param p1, "sci"    # Landroid/view/textservice/SpellCheckerInfo;
    .param p2, "tsd"    # Lcom/android/server/TextServicesManagerService$TextServicesData;

    .line 722
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_7
    const-string v0, ""

    .line 726
    .local v0, "sciId":Ljava/lang/String;
    :goto_9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 728
    .local v1, "ident":J
    :try_start_d
    invoke-virtual {p2, p1}, Lcom/android/server/TextServicesManagerService$TextServicesData;->setCurrentSpellChecker(Landroid/view/textservice/SpellCheckerInfo;)V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_15

    .line 730
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 731
    nop

    .line 732
    return-void

    .line 730
    :catchall_15
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private startSpellCheckerServiceInnerLocked(Landroid/view/textservice/SpellCheckerInfo;Lcom/android/server/TextServicesManagerService$TextServicesData;)Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    .registers 8
    .param p1, "info"    # Landroid/view/textservice/SpellCheckerInfo;
    .param p2, "tsd"    # Lcom/android/server/TextServicesManagerService$TextServicesData;

    .line 656
    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 657
    .local v0, "sciId":Ljava/lang/String;
    new-instance v1, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;

    .line 658
    # getter for: Lcom/android/server/TextServicesManagerService$TextServicesData;->mSpellCheckerBindGroups:Ljava/util/HashMap;
    invoke-static {p2}, Lcom/android/server/TextServicesManagerService$TextServicesData;->access$1400(Lcom/android/server/TextServicesManagerService$TextServicesData;)Ljava/util/HashMap;

    move-result-object v2

    invoke-direct {v1, p0, v0, v2}, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;-><init>(Lcom/android/server/TextServicesManagerService;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 659
    .local v1, "connection":Lcom/android/server/TextServicesManagerService$InternalServiceConnection;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.service.textservice.SpellCheckerService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 660
    .local v2, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 664
    nop

    .line 665
    # getter for: Lcom/android/server/TextServicesManagerService$TextServicesData;->mUserId:I
    invoke-static {p2}, Lcom/android/server/TextServicesManagerService$TextServicesData;->access$1700(Lcom/android/server/TextServicesManagerService$TextServicesData;)I

    move-result v3

    .line 664
    const v4, 0x800001

    invoke-direct {p0, v2, v1, v4, v3}, Lcom/android/server/TextServicesManagerService;->bindCurrentSpellCheckerService(Landroid/content/Intent;Landroid/content/ServiceConnection;II)Z

    move-result v3

    if-nez v3, :cond_32

    .line 666
    sget-object v3, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    const-string v4, "Failed to get a spell checker service."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    const/4 v3, 0x0

    return-object v3

    .line 669
    :cond_32
    new-instance v3, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    invoke-direct {v3, p0, v1}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;-><init>(Lcom/android/server/TextServicesManagerService;Lcom/android/server/TextServicesManagerService$InternalServiceConnection;)V

    .line 671
    .local v3, "group":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    # getter for: Lcom/android/server/TextServicesManagerService$TextServicesData;->mSpellCheckerBindGroups:Ljava/util/HashMap;
    invoke-static {p2}, Lcom/android/server/TextServicesManagerService$TextServicesData;->access$1400(Lcom/android/server/TextServicesManagerService$TextServicesData;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    return-object v3
.end method

.method private unbindServiceLocked(Lcom/android/server/TextServicesManagerService$TextServicesData;)V
    .registers 5
    .param p1, "tsd"    # Lcom/android/server/TextServicesManagerService$TextServicesData;

    .line 430
    # getter for: Lcom/android/server/TextServicesManagerService$TextServicesData;->mSpellCheckerBindGroups:Ljava/util/HashMap;
    invoke-static {p1}, Lcom/android/server/TextServicesManagerService$TextServicesData;->access$1400(Lcom/android/server/TextServicesManagerService$TextServicesData;)Ljava/util/HashMap;

    move-result-object v0

    .line 431
    .local v0, "spellCheckerBindGroups":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;>;"
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    .line 432
    .local v2, "scbg":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    invoke-virtual {v2}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->removeAllLocked()V

    .line 433
    .end local v2    # "scbg":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    goto :goto_c

    .line 434
    :cond_1c
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 435
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 736
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 738
    :cond_b
    array-length v0, p3

    const/4 v1, 0x0

    if-eqz v0, :cond_80

    array-length v0, p3

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1e

    aget-object v0, p3, v1

    const-string v3, "-a"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_80

    .line 750
    :cond_1e
    array-length v0, p3

    const/4 v3, 0x2

    if-ne v0, v3, :cond_7a

    aget-object v0, p3, v1

    const-string v1, "--user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    goto :goto_7a

    .line 754
    :cond_2d
    aget-object v0, p3, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 755
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 756
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    if-nez v1, :cond_41

    .line 757
    const-string v2, "Non-existent user."

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 758
    return-void

    .line 760
    :cond_41
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TextServicesManagerService$TextServicesData;

    .line 761
    .local v2, "tsd":Lcom/android/server/TextServicesManagerService$TextServicesData;
    if-nez v2, :cond_51

    .line 762
    const-string v3, "User needs to unlock first."

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 763
    return-void

    .line 765
    :cond_51
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 766
    :try_start_54
    const-string v4, "Current Text Services Manager state:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 767
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  User "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 768
    # invokes: Lcom/android/server/TextServicesManagerService$TextServicesData;->dump(Ljava/io/PrintWriter;)V
    invoke-static {v2, p2}, Lcom/android/server/TextServicesManagerService$TextServicesData;->access$1800(Lcom/android/server/TextServicesManagerService$TextServicesData;Ljava/io/PrintWriter;)V

    .line 769
    monitor-exit v3

    goto :goto_a5

    :catchall_77
    move-exception v4

    monitor-exit v3
    :try_end_79
    .catchall {:try_start_54 .. :try_end_79} :catchall_77

    throw v4

    .line 751
    .end local v0    # "userId":I
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v2    # "tsd":Lcom/android/server/TextServicesManagerService$TextServicesData;
    :cond_7a
    :goto_7a
    const-string v0, "Invalid arguments to text services."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 752
    return-void

    .line 740
    :cond_80
    :goto_80
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 741
    :try_start_83
    const-string v2, "Current Text Services Manager state:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 742
    const-string v2, "  Users:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 743
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 744
    .local v2, "numOfUsers":I
    nop

    .local v1, "i":I
    :goto_94
    if-ge v1, v2, :cond_a4

    .line 745
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TextServicesManagerService$TextServicesData;

    .line 746
    .local v3, "tsd":Lcom/android/server/TextServicesManagerService$TextServicesData;
    # invokes: Lcom/android/server/TextServicesManagerService$TextServicesData;->dump(Ljava/io/PrintWriter;)V
    invoke-static {v3, p2}, Lcom/android/server/TextServicesManagerService$TextServicesData;->access$1800(Lcom/android/server/TextServicesManagerService$TextServicesData;Ljava/io/PrintWriter;)V

    .line 744
    .end local v3    # "tsd":Lcom/android/server/TextServicesManagerService$TextServicesData;
    add-int/lit8 v1, v1, 0x1

    goto :goto_94

    .line 748
    .end local v1    # "i":I
    .end local v2    # "numOfUsers":I
    :cond_a4
    monitor-exit v0

    .line 772
    :goto_a5
    return-void

    .line 748
    :catchall_a6
    move-exception v1

    monitor-exit v0
    :try_end_a8
    .catchall {:try_start_83 .. :try_end_a8} :catchall_a6

    throw v1
.end method

.method public finishSpellCheckerService(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)V
    .registers 10
    .param p1, "listener"    # Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    .line 700
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 702
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 703
    :try_start_7
    invoke-direct {p0, v0}, Lcom/android/server/TextServicesManagerService;->getDataFromCallingUserIdLocked(I)Lcom/android/server/TextServicesManagerService$TextServicesData;

    move-result-object v2

    .line 704
    .local v2, "tsd":Lcom/android/server/TextServicesManagerService$TextServicesData;
    if-nez v2, :cond_f

    monitor-exit v1

    return-void

    .line 706
    :cond_f
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 707
    .local v3, "removeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;>;"
    nop

    .line 708
    # getter for: Lcom/android/server/TextServicesManagerService$TextServicesData;->mSpellCheckerBindGroups:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/server/TextServicesManagerService$TextServicesData;->access$1400(Lcom/android/server/TextServicesManagerService$TextServicesData;)Ljava/util/HashMap;

    move-result-object v4

    .line 709
    .local v4, "spellCheckerBindGroups":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;>;"
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_21
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_34

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    .line 710
    .local v6, "group":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    if-nez v6, :cond_30

    .end local v6    # "group":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    goto :goto_21

    .line 712
    .restart local v6    # "group":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    :cond_30
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 713
    .end local v6    # "group":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    goto :goto_21

    .line 714
    :cond_34
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 715
    .local v5, "removeSize":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_39
    if-ge v6, v5, :cond_47

    .line 716
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    invoke-virtual {v7, p1}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->removeListener(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)V

    .line 715
    add-int/lit8 v6, v6, 0x1

    goto :goto_39

    .line 718
    .end local v2    # "tsd":Lcom/android/server/TextServicesManagerService$TextServicesData;
    .end local v3    # "removeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;>;"
    .end local v4    # "spellCheckerBindGroups":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;>;"
    .end local v5    # "removeSize":I
    .end local v6    # "i":I
    :cond_47
    monitor-exit v1

    .line 719
    return-void

    .line 718
    :catchall_49
    move-exception v2

    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_7 .. :try_end_4b} :catchall_49

    throw v2
.end method

.method public getCurrentSpellChecker(Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;
    .registers 6
    .param p1, "locale"    # Ljava/lang/String;

    .line 505
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 506
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 507
    :try_start_7
    invoke-direct {p0, v0}, Lcom/android/server/TextServicesManagerService;->getDataFromCallingUserIdLocked(I)Lcom/android/server/TextServicesManagerService$TextServicesData;

    move-result-object v2

    .line 508
    .local v2, "tsd":Lcom/android/server/TextServicesManagerService$TextServicesData;
    if-nez v2, :cond_10

    const/4 v3, 0x0

    monitor-exit v1

    return-object v3

    .line 510
    :cond_10
    invoke-virtual {v2}, Lcom/android/server/TextServicesManagerService$TextServicesData;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v3

    monitor-exit v1

    return-object v3

    .line 511
    .end local v2    # "tsd":Lcom/android/server/TextServicesManagerService$TextServicesData;
    :catchall_16
    move-exception v2

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_16

    throw v2
.end method

.method public getCurrentSpellCheckerSubtype(Ljava/lang/String;Z)Landroid/view/textservice/SpellCheckerSubtype;
    .registers 14
    .param p1, "locale"    # Ljava/lang/String;
    .param p2, "allowImplicitlySelectedSubtype"    # Z

    .line 522
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 524
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 525
    :try_start_7
    invoke-direct {p0, v0}, Lcom/android/server/TextServicesManagerService;->getDataFromCallingUserIdLocked(I)Lcom/android/server/TextServicesManagerService$TextServicesData;

    move-result-object v2

    .line 526
    .local v2, "tsd":Lcom/android/server/TextServicesManagerService$TextServicesData;
    const/4 v3, 0x0

    if-nez v2, :cond_10

    monitor-exit v1

    return-object v3

    .line 528
    :cond_10
    nop

    .line 529
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/server/TextServicesManagerService$TextServicesData;->getSelectedSpellCheckerSubtype(I)I

    move-result v5

    .line 533
    .local v5, "subtypeHashCode":I
    invoke-virtual {v2}, Lcom/android/server/TextServicesManagerService$TextServicesData;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v6

    .line 534
    .local v6, "sci":Landroid/view/textservice/SpellCheckerInfo;
    iget-object v7, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget-object v7, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .end local v2    # "tsd":Lcom/android/server/TextServicesManagerService$TextServicesData;
    move-object v2, v7

    .line 535
    .local v2, "systemLocale":Ljava/util/Locale;
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_7 .. :try_end_28} :catchall_9a

    .line 536
    if-eqz v6, :cond_99

    invoke-virtual {v6}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v1

    if-nez v1, :cond_32

    goto/16 :goto_99

    .line 542
    :cond_32
    if-nez v5, :cond_37

    if-nez p2, :cond_37

    .line 544
    return-object v3

    .line 546
    :cond_37
    const/4 v1, 0x0

    .line 547
    .local v1, "candidateLocale":Ljava/lang/String;
    if-nez v5, :cond_5e

    .line 549
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    const-class v7, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 550
    .local v3, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v3, :cond_58

    .line 551
    nop

    .line 552
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v7

    .line 553
    .local v7, "currentInputMethodSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    if-eqz v7, :cond_58

    .line 554
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v8

    .line 555
    .local v8, "localeString":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_58

    .line 557
    move-object v1, v8

    .line 561
    .end local v7    # "currentInputMethodSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v8    # "localeString":Ljava/lang/String;
    :cond_58
    if-nez v1, :cond_5e

    .line 563
    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 566
    .end local v3    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_5e
    const/4 v3, 0x0

    .line 567
    .local v3, "candidate":Landroid/view/textservice/SpellCheckerSubtype;
    nop

    .local v4, "i":I
    :goto_60
    invoke-virtual {v6}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v7

    if-ge v4, v7, :cond_98

    .line 568
    invoke-virtual {v6, v4}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v7

    .line 569
    .local v7, "scs":Landroid/view/textservice/SpellCheckerSubtype;
    if-nez v5, :cond_8e

    .line 570
    invoke-virtual {v7}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    move-result-object v8

    .line 571
    .local v8, "scsLocale":Ljava/lang/String;
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_77

    .line 572
    return-object v7

    .line 573
    :cond_77
    if-nez v3, :cond_8d

    .line 574
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x2

    if-lt v9, v10, :cond_8d

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v9, v10, :cond_8d

    .line 575
    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8d

    .line 577
    move-object v3, v7

    .line 580
    .end local v8    # "scsLocale":Ljava/lang/String;
    :cond_8d
    goto :goto_95

    :cond_8e
    invoke-virtual {v7}, Landroid/view/textservice/SpellCheckerSubtype;->hashCode()I

    move-result v8

    if-ne v8, v5, :cond_95

    .line 586
    return-object v7

    .line 567
    .end local v7    # "scs":Landroid/view/textservice/SpellCheckerSubtype;
    :cond_95
    :goto_95
    add-int/lit8 v4, v4, 0x1

    goto :goto_60

    .line 592
    .end local v4    # "i":I
    :cond_98
    return-object v3

    .line 540
    .end local v1    # "candidateLocale":Ljava/lang/String;
    .end local v3    # "candidate":Landroid/view/textservice/SpellCheckerSubtype;
    :cond_99
    :goto_99
    return-object v3

    .line 535
    .end local v2    # "systemLocale":Ljava/util/Locale;
    .end local v5    # "subtypeHashCode":I
    .end local v6    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    :catchall_9a
    move-exception v2

    :try_start_9b
    monitor-exit v1
    :try_end_9c
    .catchall {:try_start_9b .. :try_end_9c} :catchall_9a

    throw v2
.end method

.method public getEnabledSpellCheckers()[Landroid/view/textservice/SpellCheckerInfo;
    .registers 6

    .line 677
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 679
    .local v0, "callingUserId":I
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 680
    :try_start_7
    invoke-direct {p0, v0}, Lcom/android/server/TextServicesManagerService;->getDataFromCallingUserIdLocked(I)Lcom/android/server/TextServicesManagerService$TextServicesData;

    move-result-object v2

    .line 681
    .local v2, "tsd":Lcom/android/server/TextServicesManagerService$TextServicesData;
    if-nez v2, :cond_10

    const/4 v3, 0x0

    monitor-exit v1

    return-object v3

    .line 683
    :cond_10
    # getter for: Lcom/android/server/TextServicesManagerService$TextServicesData;->mSpellCheckerList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/TextServicesManagerService$TextServicesData;->access$1500(Lcom/android/server/TextServicesManagerService$TextServicesData;)Ljava/util/ArrayList;

    move-result-object v3

    .line 691
    .local v3, "spellCheckerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/textservice/SpellCheckerInfo;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/view/textservice/SpellCheckerInfo;

    monitor-exit v1

    return-object v4

    .line 692
    .end local v2    # "tsd":Lcom/android/server/TextServicesManagerService$TextServicesData;
    .end local v3    # "spellCheckerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/textservice/SpellCheckerInfo;>;"
    :catchall_22
    move-exception v2

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_7 .. :try_end_24} :catchall_22

    throw v2
.end method

.method public getSpellCheckerService(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/textservice/ITextServicesSessionListener;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;)V
    .registers 21
    .param p1, "sciId"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/lang/String;
    .param p3, "tsListener"    # Lcom/android/internal/textservice/ITextServicesSessionListener;
    .param p4, "scListener"    # Lcom/android/internal/textservice/ISpellCheckerSessionListener;
    .param p5, "bundle"    # Landroid/os/Bundle;

    move-object v1, p0

    move-object/from16 v2, p1

    .line 599
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_76

    if-eqz p3, :cond_76

    if-nez p4, :cond_f

    goto/16 :goto_76

    .line 603
    :cond_f
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    .line 605
    .local v9, "callingUserId":I
    iget-object v10, v1, Lcom/android/server/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 606
    :try_start_16
    invoke-direct {v1, v9}, Lcom/android/server/TextServicesManagerService;->getDataFromCallingUserIdLocked(I)Lcom/android/server/TextServicesManagerService$TextServicesData;

    move-result-object v0

    move-object v11, v0

    .line 607
    .local v11, "tsd":Lcom/android/server/TextServicesManagerService$TextServicesData;
    if-nez v11, :cond_1f

    monitor-exit v10

    return-void

    .line 609
    :cond_1f
    # getter for: Lcom/android/server/TextServicesManagerService$TextServicesData;->mSpellCheckerMap:Ljava/util/HashMap;
    invoke-static {v11}, Lcom/android/server/TextServicesManagerService$TextServicesData;->access$1600(Lcom/android/server/TextServicesManagerService$TextServicesData;)Ljava/util/HashMap;

    move-result-object v0

    move-object v12, v0

    .line 610
    .local v12, "spellCheckerMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/view/textservice/SpellCheckerInfo;>;"
    invoke-virtual {v12, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 611
    monitor-exit v10

    return-void

    .line 613
    :cond_2c
    invoke-virtual {v12, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textservice/SpellCheckerInfo;

    move-object v13, v0

    .line 614
    .local v13, "sci":Landroid/view/textservice/SpellCheckerInfo;
    nop

    .line 615
    # getter for: Lcom/android/server/TextServicesManagerService$TextServicesData;->mSpellCheckerBindGroups:Ljava/util/HashMap;
    invoke-static {v11}, Lcom/android/server/TextServicesManagerService$TextServicesData;->access$1400(Lcom/android/server/TextServicesManagerService$TextServicesData;)Ljava/util/HashMap;

    move-result-object v0

    move-object v8, v0

    .line 616
    .local v8, "spellCheckerBindGroups":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;>;"
    invoke-virtual {v8, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    move-object v3, v0

    .line 617
    .local v3, "bindGroup":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 618
    .local v4, "uid":I
    if-nez v3, :cond_5d

    .line 619
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_4a
    .catchall {:try_start_16 .. :try_end_4a} :catchall_73

    .line 621
    .local v5, "ident":J
    :try_start_4a
    invoke-direct {v1, v13, v11}, Lcom/android/server/TextServicesManagerService;->startSpellCheckerServiceInnerLocked(Landroid/view/textservice/SpellCheckerInfo;Lcom/android/server/TextServicesManagerService$TextServicesData;)Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    move-result-object v0
    :try_end_4e
    .catchall {:try_start_4a .. :try_end_4e} :catchall_57

    move-object v3, v0

    .line 623
    :try_start_4f
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 624
    nop

    .line 625
    if-nez v3, :cond_5d

    .line 627
    monitor-exit v10

    return-void

    .line 623
    :catchall_57
    move-exception v0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v7, v0

    throw v7

    .line 633
    .end local v5    # "ident":J
    :cond_5d
    move-object v0, v3

    .end local v3    # "bindGroup":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    .local v0, "bindGroup":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    new-instance v7, Lcom/android/server/TextServicesManagerService$SessionRequest;

    move-object v3, v7

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object v1, v7

    move-object/from16 v7, p4

    move-object v14, v8

    move-object/from16 v8, p5

    .end local v8    # "spellCheckerBindGroups":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;>;"
    .local v14, "spellCheckerBindGroups":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;>;"
    invoke-direct/range {v3 .. v8}, Lcom/android/server/TextServicesManagerService$SessionRequest;-><init>(ILjava/lang/String;Lcom/android/internal/textservice/ITextServicesSessionListener;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->getISpellCheckerSessionOrQueueLocked(Lcom/android/server/TextServicesManagerService$SessionRequest;)V

    .line 635
    .end local v0    # "bindGroup":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    .end local v4    # "uid":I
    .end local v11    # "tsd":Lcom/android/server/TextServicesManagerService$TextServicesData;
    .end local v12    # "spellCheckerMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/view/textservice/SpellCheckerInfo;>;"
    .end local v13    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    .end local v14    # "spellCheckerBindGroups":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;>;"
    monitor-exit v10

    .line 636
    return-void

    .line 635
    :catchall_73
    move-exception v0

    monitor-exit v10
    :try_end_75
    .catchall {:try_start_4f .. :try_end_75} :catchall_73

    throw v0

    .line 600
    .end local v9    # "callingUserId":I
    :cond_76
    :goto_76
    sget-object v0, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    const-string v1, "getSpellCheckerService: Invalid input."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    return-void
.end method

.method public isSpellCheckerEnabled()Z
    .registers 5

    .line 640
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 642
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 643
    :try_start_7
    invoke-direct {p0, v0}, Lcom/android/server/TextServicesManagerService;->getDataFromCallingUserIdLocked(I)Lcom/android/server/TextServicesManagerService$TextServicesData;

    move-result-object v2

    .line 644
    .local v2, "tsd":Lcom/android/server/TextServicesManagerService$TextServicesData;
    if-nez v2, :cond_10

    const/4 v3, 0x0

    monitor-exit v1

    return v3

    .line 646
    :cond_10
    invoke-virtual {v2}, Lcom/android/server/TextServicesManagerService$TextServicesData;->isSpellCheckerEnabled()Z

    move-result v3

    monitor-exit v1

    return v3

    .line 647
    .end local v2    # "tsd":Lcom/android/server/TextServicesManagerService$TextServicesData;
    :catchall_16
    move-exception v2

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_16

    throw v2
.end method

.method onStopUser(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 305
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 307
    :try_start_3
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerOwnerUserIdMap:Lcom/android/internal/textservice/LazyIntToIntMap;

    invoke-virtual {v1, p1}, Lcom/android/internal/textservice/LazyIntToIntMap;->delete(I)V

    .line 310
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TextServicesManagerService$TextServicesData;

    .line 311
    .local v1, "tsd":Lcom/android/server/TextServicesManagerService$TextServicesData;
    if-nez v1, :cond_14

    monitor-exit v0

    return-void

    .line 313
    :cond_14
    invoke-direct {p0, v1}, Lcom/android/server/TextServicesManagerService;->unbindServiceLocked(Lcom/android/server/TextServicesManagerService$TextServicesData;)V

    .line 314
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 315
    .end local v1    # "tsd":Lcom/android/server/TextServicesManagerService$TextServicesData;
    monitor-exit v0

    .line 316
    return-void

    .line 315
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method onUnlockUser(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 319
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 321
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/TextServicesManagerService;->initializeInternalStateLocked(I)V

    .line 322
    monitor-exit v0

    .line 323
    return-void

    .line 322
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method
