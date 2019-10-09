.class public final Lcom/android/server/autofill/AutofillManagerService;
.super Lcom/android/server/SystemService;
.source "AutofillManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/autofill/AutofillManagerService$SettingsObserver;,
        Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;,
        Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;,
        Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;,
        Lcom/android/server/autofill/AutofillManagerService$LocalService;
    }
.end annotation


# static fields
.field private static final COMPAT_PACKAGE_DELIMITER:C = ':'

.field private static final COMPAT_PACKAGE_URL_IDS_BLOCK_BEGIN:C = '['

.field private static final COMPAT_PACKAGE_URL_IDS_BLOCK_END:C = ']'

.field private static final COMPAT_PACKAGE_URL_IDS_DELIMITER:C = ','

.field static final RECEIVER_BUNDLE_EXTRA_SESSIONS:Ljava/lang/String; = "sessions"

.field private static final TAG:Ljava/lang/String; = "AutofillManagerService"


# instance fields
.field private mAllowInstantService:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mAutofillCompatState:Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mDisabledUsers:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLocalService:Lcom/android/server/autofill/AutofillManagerService$LocalService;

.field private final mLock:Ljava/lang/Object;

.field private final mRequestsHistory:Landroid/util/LocalLog;

.field private mServicesCache:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/autofill/AutofillManagerServiceImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final mUi:Lcom/android/server/autofill/ui/AutoFillUI;

.field private final mUiLatencyHistory:Landroid/util/LocalLog;

.field private final mWtfHistory:Landroid/util/LocalLog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;

    .line 164
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 114
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    .line 123
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mServicesCache:Landroid/util/SparseArray;

    .line 129
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mDisabledUsers:Landroid/util/SparseBooleanArray;

    .line 132
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mRequestsHistory:Landroid/util/LocalLog;

    .line 133
    new-instance v0, Landroid/util/LocalLog;

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mUiLatencyHistory:Landroid/util/LocalLog;

    .line 134
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mWtfHistory:Landroid/util/LocalLog;

    .line 136
    new-instance v0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;

    invoke-direct {v0}, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;-><init>()V

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mAutofillCompatState:Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;

    .line 137
    new-instance v0, Lcom/android/server/autofill/AutofillManagerService$LocalService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/autofill/AutofillManagerService$LocalService;-><init>(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/server/autofill/AutofillManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLocalService:Lcom/android/server/autofill/AutofillManagerService$LocalService;

    .line 139
    new-instance v0, Lcom/android/server/autofill/AutofillManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/autofill/AutofillManagerService$1;-><init>(Lcom/android/server/autofill/AutofillManagerService;)V

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 165
    iput-object p1, p0, Lcom/android/server/autofill/AutofillManagerService;->mContext:Landroid/content/Context;

    .line 166
    new-instance v0, Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/server/autofill/ui/AutoFillUI;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 168
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 169
    .local v0, "debug":Z
    const-string v2, "AutofillManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting debug to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-direct {p0, v0}, Lcom/android/server/autofill/AutofillManagerService;->setDebugLocked(Z)V

    .line 172
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 173
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v3, v4, v2, v1, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 177
    const-class v1, Landroid/os/UserManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 178
    .local v1, "um":Landroid/os/UserManager;
    const-class v3, Landroid/os/UserManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManagerInternal;

    .line 179
    .local v3, "umi":Landroid/os/UserManagerInternal;
    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v4

    .line 180
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v5, 0x0

    .line 180
    .local v5, "i":I
    :goto_9d
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_d4

    .line 181
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    .line 182
    .local v6, "userId":I
    const-string/jumbo v7, "no_autofill"

    invoke-virtual {v3, v6, v7}, Landroid/os/UserManagerInternal;->getUserRestriction(ILjava/lang/String;)Z

    move-result v7

    .line 183
    .local v7, "disabled":Z
    if-eqz v7, :cond_d1

    .line 184
    if-eqz v7, :cond_cc

    .line 185
    const-string v8, "AutofillManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Disabling Autofill for user "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_cc
    iget-object v8, p0, Lcom/android/server/autofill/AutofillManagerService;->mDisabledUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v6, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 180
    .end local v6    # "userId":I
    .end local v7    # "disabled":Z
    :cond_d1
    add-int/lit8 v5, v5, 0x1

    goto :goto_9d

    .line 190
    .end local v5    # "i":I
    :cond_d4
    new-instance v5, Lcom/android/server/autofill/-$$Lambda$AutofillManagerService$Yt8ZUfnHlFcXzCNLhvGde5dPRDA;

    invoke-direct {v5, p0}, Lcom/android/server/autofill/-$$Lambda$AutofillManagerService$Yt8ZUfnHlFcXzCNLhvGde5dPRDA;-><init>(Lcom/android/server/autofill/AutofillManagerService;)V

    invoke-virtual {v3, v5}, Landroid/os/UserManagerInternal;->addUserRestrictionsListener(Landroid/os/UserManagerInternal$UserRestrictionsListener;)V

    .line 207
    invoke-direct {p0}, Lcom/android/server/autofill/AutofillManagerService;->startTrackingPackageChanges()V

    .line 208
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/autofill/AutofillManagerService;

    .line 100
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/autofill/AutofillManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/autofill/AutofillManagerService;

    .line 100
    iget-boolean v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mAllowInstantService:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/autofill/AutofillManagerService;)Landroid/util/SparseBooleanArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/autofill/AutofillManagerService;

    .line 100
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mDisabledUsers:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/autofill/AutofillManagerService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/autofill/AutofillManagerService;
    .param p1, "x1"    # Z

    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->setDebugLocked(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/autofill/AutofillManagerService;

    .line 100
    invoke-direct {p0}, Lcom/android/server/autofill/AutofillManagerService;->getWhitelistedCompatModePackagesFromSettings()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/autofill/AutofillManagerService;)Landroid/util/LocalLog;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/autofill/AutofillManagerService;

    .line 100
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mRequestsHistory:Landroid/util/LocalLog;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/autofill/AutofillManagerService;)Landroid/util/LocalLog;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/autofill/AutofillManagerService;

    .line 100
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mUiLatencyHistory:Landroid/util/LocalLog;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/autofill/AutofillManagerService;)Landroid/util/LocalLog;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/autofill/AutofillManagerService;

    .line 100
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mWtfHistory:Landroid/util/LocalLog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/autofill/AutofillManagerService;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/autofill/AutofillManagerService;

    .line 100
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mServicesCache:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/autofill/AutofillManagerService;)Lcom/android/server/autofill/ui/AutoFillUI;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/autofill/AutofillManagerService;

    .line 100
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/autofill/AutofillManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/autofill/AutofillManagerService;
    .param p1, "x1"    # I

    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->updateCachedServiceLocked(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/autofill/AutofillManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/autofill/AutofillManagerService;
    .param p1, "x1"    # I

    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->removeCachedServiceLocked(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/autofill/AutofillManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/autofill/AutofillManagerService;

    .line 100
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/autofill/AutofillManagerService;)Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/autofill/AutofillManagerService;

    .line 100
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mAutofillCompatState:Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;

    return-object v0
.end method

.method private addCompatibilityModeRequestsLocked(Lcom/android/server/autofill/AutofillManagerServiceImpl;I)V
    .registers 15
    .param p1, "service"    # Lcom/android/server/autofill/AutofillManagerServiceImpl;
    .param p2, "userId"    # I

    .line 591
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mAutofillCompatState:Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;

    invoke-virtual {v0, p2}, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->reset(I)V

    .line 592
    nop

    .line 593
    invoke-virtual {p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getCompatibilityPackagesLocked()Landroid/util/ArrayMap;

    move-result-object v0

    .line 594
    .local v0, "compatPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    if-eqz v0, :cond_64

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_64

    .line 598
    :cond_13
    invoke-direct {p0}, Lcom/android/server/autofill/AutofillManagerService;->getWhitelistedCompatModePackages()Ljava/util/Map;

    move-result-object v1

    .line 599
    .local v1, "whiteListedPackages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 600
    .local v2, "compatPackageCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1c
    if-ge v3, v2, :cond_63

    .line 601
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 602
    .local v4, "packageName":Ljava/lang/String;
    if-eqz v1, :cond_49

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2d

    goto :goto_49

    .line 606
    :cond_2d
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Ljava/lang/Long;

    .line 607
    .local v11, "maxVersionCode":Ljava/lang/Long;
    if-eqz v11, :cond_60

    .line 608
    iget-object v5, p0, Lcom/android/server/autofill/AutofillManagerService;->mAutofillCompatState:Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;

    .line 609
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    check-cast v9, [Ljava/lang/String;

    .line 608
    move-object v6, v4

    move v10, p2

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->addCompatibilityModeRequest(Ljava/lang/String;J[Ljava/lang/String;I)V

    .end local v4    # "packageName":Ljava/lang/String;
    .end local v11    # "maxVersionCode":Ljava/lang/Long;
    goto :goto_60

    .line 603
    .restart local v4    # "packageName":Ljava/lang/String;
    :cond_49
    :goto_49
    const-string v5, "AutofillManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring not whitelisted compat package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    nop

    .line 600
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_60
    :goto_60
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 612
    .end local v3    # "i":I
    :cond_63
    return-void

    .line 595
    .end local v1    # "whiteListedPackages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/String;>;"
    .end local v2    # "compatPackageCount":I
    :cond_64
    :goto_64
    return-void
.end method

.method private getWhitelistedCompatModePackages()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 622
    invoke-direct {p0}, Lcom/android/server/autofill/AutofillManagerService;->getWhitelistedCompatModePackagesFromSettings()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->getWhitelistedCompatModePackages(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static getWhitelistedCompatModePackages(Ljava/lang/String;)Ljava/util/Map;
    .registers 12
    .param p0, "setting"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 628
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 629
    return-object v1

    .line 632
    :cond_8
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 633
    .local v0, "compatPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[Ljava/lang/String;>;"
    new-instance v2, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v3, 0x3a

    invoke-direct {v2, v3}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 634
    .local v2, "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v2, p0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 635
    :goto_17
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e2

    .line 636
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v3

    .line 637
    .local v3, "packageBlock":Ljava/lang/String;
    const/16 v4, 0x5b

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 640
    .local v4, "urlBlockIndex":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_2e

    .line 641
    move-object v5, v3

    .line 642
    .local v5, "packageName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 642
    .local v6, "urlBarIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_ce

    .line 644
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "urlBarIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2e
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5d

    if-eq v5, v6, :cond_68

    .line 646
    const-string v5, "AutofillManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring entry \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\' on \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\'because it does not end on \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v6, "\'"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    goto :goto_17

    .line 651
    :cond_68
    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 652
    .restart local v5    # "packageName":Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 653
    .restart local v6    # "urlBarIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    add-int/lit8 v7, v4, 0x1

    .line 654
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 655
    .local v7, "urlBarIdsBlock":Ljava/lang/String;
    sget-boolean v8, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v8, :cond_b6

    .line 656
    const-string v8, "AutofillManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "pkg:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ": block:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ": urls:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ": block:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    :cond_b6
    new-instance v8, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v9, 0x2c

    invoke-direct {v8, v9}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 661
    .local v8, "splitter2":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v8, v7}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 662
    :goto_c0
    invoke-virtual {v8}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_ce

    .line 663
    invoke-virtual {v8}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v9

    .line 664
    .local v9, "urlBarId":Ljava/lang/String;
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 665
    .end local v9    # "urlBarId":Ljava/lang/String;
    goto :goto_c0

    .line 667
    .end local v7    # "urlBarIdsBlock":Ljava/lang/String;
    .end local v8    # "splitter2":Landroid/text/TextUtils$SimpleStringSplitter;
    :cond_ce
    :goto_ce
    if-nez v6, :cond_d4

    .line 668
    invoke-virtual {v0, v5, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e0

    .line 670
    :cond_d4
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    .line 671
    .local v7, "urlBarIdsArray":[Ljava/lang/String;
    invoke-interface {v6, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 672
    invoke-virtual {v0, v5, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    .end local v3    # "packageBlock":Ljava/lang/String;
    .end local v4    # "urlBlockIndex":I
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "urlBarIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "urlBarIdsArray":[Ljava/lang/String;
    :goto_e0
    goto/16 :goto_17

    .line 675
    :cond_e2
    return-object v0
.end method

.method private getWhitelistedCompatModePackagesFromSettings()Ljava/lang/String;
    .registers 3

    .line 615
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mContext:Landroid/content/Context;

    .line 616
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "autofill_compat_mode_allowed_packages"

    .line 615
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/autofill/AutofillManagerService;ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 10
    .param p1, "userId"    # I
    .param p2, "newRestrictions"    # Landroid/os/Bundle;
    .param p3, "prevRestrictions"    # Landroid/os/Bundle;

    .line 191
    const-string/jumbo v0, "no_autofill"

    .line 192
    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 193
    .local v0, "disabledNow":Z
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 194
    :try_start_b
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService;->mDisabledUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    .line 195
    .local v2, "disabledBefore":Z
    if-ne v2, v0, :cond_2f

    .line 197
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_2f

    .line 198
    const-string v3, "AutofillManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Autofill restriction did not change for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    monitor-exit v1

    return-void

    .line 202
    :cond_2f
    const-string v3, "AutofillManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Updating Autofill for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": disabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService;->mDisabledUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 204
    invoke-direct {p0, p1, v0}, Lcom/android/server/autofill/AutofillManagerService;->updateCachedServiceLocked(IZ)V

    .line 205
    .end local v2    # "disabledBefore":Z
    monitor-exit v1

    .line 206
    return-void

    .line 205
    :catchall_57
    move-exception v2

    monitor-exit v1
    :try_end_59
    .catchall {:try_start_b .. :try_end_59} :catchall_57

    throw v2
.end method

.method private removeCachedServiceLocked(I)V
    .registers 4
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 556
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserLocked(I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object v0

    .line 557
    .local v0, "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    if-eqz v0, :cond_13

    .line 558
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService;->mServicesCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 559
    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->destroyLocked()V

    .line 560
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService;->mAutofillCompatState:Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;

    invoke-virtual {v1, p1}, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->removeCompatibilityModeRequests(I)V

    .line 562
    :cond_13
    return-void
.end method

.method private setDebugLocked(Z)V
    .registers 2
    .param p1, "debug"    # Z

    .line 542
    sput-boolean p1, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 543
    sput-boolean p1, Landroid/view/autofill/Helper;->sDebug:Z

    .line 544
    return-void
.end method

.method private setVerboseLocked(Z)V
    .registers 2
    .param p1, "verbose"    # Z

    .line 547
    sput-boolean p1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 548
    sput-boolean p1, Landroid/view/autofill/Helper;->sVerbose:Z

    .line 549
    return-void
.end method

.method private startTrackingPackageChanges()V
    .registers 6

    .line 211
    new-instance v0, Lcom/android/server/autofill/AutofillManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/autofill/AutofillManagerService$2;-><init>(Lcom/android/server/autofill/AutofillManagerService;)V

    .line 295
    .local v0, "monitor":Lcom/android/internal/content/PackageMonitor;
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 296
    return-void
.end method

.method private updateCachedServiceLocked(I)V
    .registers 3
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 569
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mDisabledUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/autofill/AutofillManagerService;->updateCachedServiceLocked(IZ)V

    .line 570
    return-void
.end method

.method private updateCachedServiceLocked(IZ)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "disabled"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 577
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->getServiceForUserLocked(I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object v0

    .line 578
    .local v0, "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    if-eqz v0, :cond_19

    .line 579
    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->destroySessionsLocked()V

    .line 580
    invoke-virtual {v0, p2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->updateLocked(Z)V

    .line 581
    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isEnabledLocked()Z

    move-result v1

    if-nez v1, :cond_16

    .line 582
    invoke-direct {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->removeCachedServiceLocked(I)V

    goto :goto_19

    .line 584
    :cond_16
    invoke-direct {p0, v0, p1}, Lcom/android/server/autofill/AutofillManagerService;->addCompatibilityModeRequestsLocked(Lcom/android/server/autofill/AutofillManagerServiceImpl;I)V

    .line 587
    :cond_19
    :goto_19
    return-void
.end method


# virtual methods
.method destroySessions(ILcom/android/internal/os/IResultReceiver;)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "receiver"    # Lcom/android/internal/os/IResultReceiver;

    .line 367
    const-string v0, "AutofillManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroySessions() for userId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_AUTO_FILL"

    const-string v2, "AutofillManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 371
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_32

    .line 372
    :try_start_26
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserLocked(I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object v1

    .line 373
    .local v1, "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    if-eqz v1, :cond_2f

    .line 374
    invoke-virtual {v1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->destroySessionsLocked()V

    .line 376
    .end local v1    # "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    :cond_2f
    goto :goto_49

    .line 382
    :catchall_30
    move-exception v1

    goto :goto_55

    .line 377
    :cond_32
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService;->mServicesCache:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 378
    .local v1, "size":I
    move v3, v2

    .local v3, "i":I
    :goto_39
    if-ge v3, v1, :cond_49

    .line 379
    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerService;->mServicesCache:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v4}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->destroySessionsLocked()V

    .line 378
    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    .line 382
    .end local v1    # "size":I
    .end local v3    # "i":I
    :cond_49
    :goto_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_26 .. :try_end_4a} :catchall_30

    .line 385
    :try_start_4a
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p2, v2, v0}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_52} :catch_53

    .line 388
    goto :goto_54

    .line 386
    :catch_53
    move-exception v0

    .line 389
    :goto_54
    return-void

    .line 382
    :goto_55
    :try_start_55
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_30

    throw v1
.end method

.method getAllowInstantService()Z
    .registers 4

    .line 526
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_AUTO_FILL"

    const-string v2, "AutofillManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 528
    :try_start_c
    iget-boolean v1, p0, Lcom/android/server/autofill/AutofillManagerService;->mAllowInstantService:Z

    monitor-exit v0

    return v1

    .line 529
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_10

    throw v1
.end method

.method getFullScreenMode()Ljava/lang/Boolean;
    .registers 4

    .line 514
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_AUTO_FILL"

    const-string v2, "AutofillManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    sget-object v0, Lcom/android/server/autofill/Helper;->sFullScreenMode:Ljava/lang/Boolean;

    return-object v0
.end method

.method getLogLevel()I
    .registers 4

    .line 455
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_AUTO_FILL"

    const-string v2, "AutofillManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 458
    :try_start_c
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_13

    const/4 v1, 0x4

    monitor-exit v0

    return v1

    .line 459
    :cond_13
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_1a

    const/4 v1, 0x2

    monitor-exit v0

    return v1

    .line 460
    :cond_1a
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 461
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method getMaxPartitions()I
    .registers 4

    .line 466
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_AUTO_FILL"

    const-string v2, "AutofillManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 469
    :try_start_c
    sget v1, Lcom/android/server/autofill/Helper;->sPartitionMaxCount:I

    monitor-exit v0

    return v1

    .line 470
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_10

    throw v1
.end method

.method getMaxVisibleDatasets()I
    .registers 4

    .line 484
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_AUTO_FILL"

    const-string v2, "AutofillManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 487
    :try_start_c
    sget v1, Lcom/android/server/autofill/Helper;->sVisibleDatasetsMaxCount:I

    monitor-exit v0

    return v1

    .line 488
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_10

    throw v1
.end method

.method getScore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .registers 14
    .param p1, "algorithmName"    # Ljava/lang/String;
    .param p2, "value1"    # Ljava/lang/String;
    .param p3, "value2"    # Ljava/lang/String;
    .param p4, "callback"    # Landroid/os/RemoteCallback;

    .line 503
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_AUTO_FILL"

    const-string v2, "AutofillManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    new-instance v3, Lcom/android/server/autofill/FieldClassificationStrategy;

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mContext:Landroid/content/Context;

    const/4 v1, -0x2

    invoke-direct {v3, v0, v1}, Lcom/android/server/autofill/FieldClassificationStrategy;-><init>(Landroid/content/Context;I)V

    .line 508
    .local v3, "strategy":Lcom/android/server/autofill/FieldClassificationStrategy;
    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/autofill/AutofillValue;

    .line 509
    invoke-static {p2}, Landroid/view/autofill/AutofillValue;->forText(Ljava/lang/CharSequence;)Landroid/view/autofill/AutofillValue;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    new-array v8, v0, [Ljava/lang/String;

    aput-object p3, v8, v4

    .line 508
    const/4 v6, 0x0

    move-object v4, p4

    move-object v5, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/autofill/FieldClassificationStrategy;->getScores(Landroid/os/RemoteCallback;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;[Ljava/lang/String;)V

    .line 510
    return-void
.end method

.method getServiceForUserLocked(I)Lcom/android/server/autofill/AutofillManagerServiceImpl;
    .registers 21
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    move-object/from16 v0, p0

    .line 339
    move/from16 v8, p1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 340
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 339
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v3, v8

    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 341
    .local v1, "resolvedUserId":I
    iget-object v2, v0, Lcom/android/server/autofill/AutofillManagerService;->mServicesCache:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 342
    .local v2, "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    if-nez v2, :cond_47

    .line 343
    new-instance v3, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget-object v10, v0, Lcom/android/server/autofill/AutofillManagerService;->mContext:Landroid/content/Context;

    iget-object v11, v0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    iget-object v12, v0, Lcom/android/server/autofill/AutofillManagerService;->mRequestsHistory:Landroid/util/LocalLog;

    iget-object v13, v0, Lcom/android/server/autofill/AutofillManagerService;->mUiLatencyHistory:Landroid/util/LocalLog;

    iget-object v14, v0, Lcom/android/server/autofill/AutofillManagerService;->mWtfHistory:Landroid/util/LocalLog;

    iget-object v4, v0, Lcom/android/server/autofill/AutofillManagerService;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    iget-object v5, v0, Lcom/android/server/autofill/AutofillManagerService;->mAutofillCompatState:Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;

    iget-object v6, v0, Lcom/android/server/autofill/AutofillManagerService;->mDisabledUsers:Landroid/util/SparseBooleanArray;

    .line 345
    invoke-virtual {v6, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v18

    move-object v9, v3

    move v15, v1

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    invoke-direct/range {v9 .. v18}, Lcom/android/server/autofill/AutofillManagerServiceImpl;-><init>(Landroid/content/Context;Ljava/lang/Object;Landroid/util/LocalLog;Landroid/util/LocalLog;Landroid/util/LocalLog;ILcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;Z)V

    move-object v2, v3

    .line 346
    iget-object v3, v0, Lcom/android/server/autofill/AutofillManagerService;->mServicesCache:Landroid/util/SparseArray;

    invoke-virtual {v3, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 347
    invoke-direct {v0, v2, v8}, Lcom/android/server/autofill/AutofillManagerService;->addCompatibilityModeRequestsLocked(Lcom/android/server/autofill/AutofillManagerServiceImpl;I)V

    .line 349
    :cond_47
    return-object v2
.end method

.method listSessions(ILcom/android/internal/os/IResultReceiver;)V
    .registers 10
    .param p1, "userId"    # I
    .param p2, "receiver"    # Lcom/android/internal/os/IResultReceiver;

    .line 393
    const-string v0, "AutofillManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "listSessions() for userId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_AUTO_FILL"

    const-string v2, "AutofillManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 397
    .local v0, "resultData":Landroid/os/Bundle;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 399
    .local v1, "sessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 400
    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq p1, v3, :cond_3d

    .line 401
    :try_start_31
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserLocked(I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object v3

    .line 402
    .local v3, "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    if-eqz v3, :cond_3a

    .line 403
    invoke-virtual {v3, v1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->listSessionsLocked(Ljava/util/ArrayList;)V

    .line 405
    .end local v3    # "service":Lcom/android/server/autofill/AutofillManagerServiceImpl;
    :cond_3a
    goto :goto_54

    .line 411
    :catchall_3b
    move-exception v3

    goto :goto_61

    .line 406
    :cond_3d
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService;->mServicesCache:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 407
    .local v3, "size":I
    move v5, v4

    .line 407
    .local v5, "i":I
    :goto_44
    if-ge v5, v3, :cond_54

    .line 408
    iget-object v6, p0, Lcom/android/server/autofill/AutofillManagerService;->mServicesCache:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v6, v1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->listSessionsLocked(Ljava/util/ArrayList;)V

    .line 407
    add-int/lit8 v5, v5, 0x1

    goto :goto_44

    .line 411
    .end local v3    # "size":I
    .end local v5    # "i":I
    :cond_54
    :goto_54
    monitor-exit v2
    :try_end_55
    .catchall {:try_start_31 .. :try_end_55} :catchall_3b

    .line 413
    const-string/jumbo v2, "sessions"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 415
    :try_start_5b
    invoke-interface {p2, v4, v0}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_5b .. :try_end_5e} :catch_5f

    .line 418
    goto :goto_60

    .line 416
    :catch_5f
    move-exception v2

    .line 419
    :goto_60
    return-void

    .line 411
    :goto_61
    :try_start_61
    monitor-exit v2
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_3b

    throw v3
.end method

.method public onBootPhase(I)V
    .registers 4
    .param p1, "phase"    # I

    .line 306
    const/16 v0, 0x258

    if-ne p1, v0, :cond_d

    .line 307
    new-instance v0, Lcom/android/server/autofill/AutofillManagerService$SettingsObserver;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/autofill/AutofillManagerService$SettingsObserver;-><init>(Lcom/android/server/autofill/AutofillManagerService;Landroid/os/Handler;)V

    .line 309
    :cond_d
    return-void
.end method

.method public onCleanupUser(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 326
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 327
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->removeCachedServiceLocked(I)V

    .line 328
    monitor-exit v0

    .line 329
    return-void

    .line 328
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public onStart()V
    .registers 3

    .line 300
    const-string v0, "autofill"

    new-instance v1, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;

    invoke-direct {v1, p0}, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;-><init>(Lcom/android/server/autofill/AutofillManagerService;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/autofill/AutofillManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 301
    const-class v0, Landroid/view/autofill/AutofillManagerInternal;

    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService;->mLocalService:Lcom/android/server/autofill/AutofillManagerService$LocalService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/autofill/AutofillManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 302
    return-void
.end method

.method public onSwitchUser(I)V
    .registers 4
    .param p1, "userHandle"    # I

    .line 320
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_b

    const-string v0, "AutofillManagerService"

    const-string v1, "Hiding UI when user switched"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_b
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/ui/AutoFillUI;->hideAll(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 322
    return-void
.end method

.method public onUnlockUser(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 313
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 314
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->updateCachedServiceLocked(I)V

    .line 315
    monitor-exit v0

    .line 316
    return-void

    .line 315
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method peekServiceForUserLocked(I)Lcom/android/server/autofill/AutofillManagerServiceImpl;
    .registers 9
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 360
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 361
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 360
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v2, p1

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 362
    .local v0, "resolvedUserId":I
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService;->mServicesCache:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    return-object v1
.end method

.method reset()V
    .registers 5

    .line 423
    const-string v0, "AutofillManagerService"

    const-string/jumbo v1, "reset()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_AUTO_FILL"

    const-string v2, "AutofillManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 427
    :try_start_14
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService;->mServicesCache:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 428
    .local v1, "size":I
    const/4 v2, 0x0

    .line 428
    .local v2, "i":I
    :goto_1b
    if-ge v2, v1, :cond_2b

    .line 429
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService;->mServicesCache:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->destroyLocked()V

    .line 428
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 431
    .end local v2    # "i":I
    :cond_2b
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService;->mServicesCache:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 432
    .end local v1    # "size":I
    monitor-exit v0

    .line 433
    return-void

    .line 432
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_14 .. :try_end_34} :catchall_32

    throw v1
.end method

.method setAllowInstantService(Z)V
    .registers 5
    .param p1, "mode"    # Z

    .line 534
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_AUTO_FILL"

    const-string v2, "AutofillManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    const-string v0, "AutofillManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAllowInstantService(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 537
    :try_start_23
    iput-boolean p1, p0, Lcom/android/server/autofill/AutofillManagerService;->mAllowInstantService:Z

    .line 538
    monitor-exit v0

    .line 539
    return-void

    .line 538
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_23 .. :try_end_29} :catchall_27

    throw v1
.end method

.method setFullScreenMode(Ljava/lang/Boolean;)V
    .registers 5
    .param p1, "mode"    # Ljava/lang/Boolean;

    .line 520
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_AUTO_FILL"

    const-string v2, "AutofillManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    sput-object p1, Lcom/android/server/autofill/Helper;->sFullScreenMode:Ljava/lang/Boolean;

    .line 522
    return-void
.end method

.method setLogLevel(I)V
    .registers 6
    .param p1, "level"    # I

    .line 437
    const-string v0, "AutofillManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLogLevel(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_AUTO_FILL"

    const-string v2, "AutofillManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    const/4 v0, 0x0

    .line 441
    .local v0, "debug":Z
    const/4 v1, 0x0

    .line 442
    .local v1, "verbose":Z
    const/4 v2, 0x4

    if-ne p1, v2, :cond_29

    .line 443
    const/4 v2, 0x1

    move v1, v2

    move v0, v2

    goto :goto_2d

    .line 444
    :cond_29
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2d

    .line 445
    const/4 v0, 0x1

    .line 447
    :cond_2d
    :goto_2d
    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 448
    :try_start_30
    invoke-direct {p0, v0}, Lcom/android/server/autofill/AutofillManagerService;->setDebugLocked(Z)V

    .line 449
    invoke-direct {p0, v1}, Lcom/android/server/autofill/AutofillManagerService;->setVerboseLocked(Z)V

    .line 450
    monitor-exit v2

    .line 451
    return-void

    .line 450
    :catchall_38
    move-exception v3

    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_30 .. :try_end_3a} :catchall_38

    throw v3
.end method

.method setMaxPartitions(I)V
    .registers 5
    .param p1, "max"    # I

    .line 475
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_AUTO_FILL"

    const-string v2, "AutofillManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    const-string v0, "AutofillManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMaxPartitions(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 478
    :try_start_23
    sput p1, Lcom/android/server/autofill/Helper;->sPartitionMaxCount:I

    .line 479
    monitor-exit v0

    .line 480
    return-void

    .line 479
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_23 .. :try_end_29} :catchall_27

    throw v1
.end method

.method setMaxVisibleDatasets(I)V
    .registers 5
    .param p1, "max"    # I

    .line 493
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_AUTO_FILL"

    const-string v2, "AutofillManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    const-string v0, "AutofillManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMaxVisibleDatasets(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 496
    :try_start_23
    sput p1, Lcom/android/server/autofill/Helper;->sVisibleDatasetsMaxCount:I

    .line 497
    monitor-exit v0

    .line 498
    return-void

    .line 497
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_23 .. :try_end_29} :catchall_27

    throw v1
.end method
