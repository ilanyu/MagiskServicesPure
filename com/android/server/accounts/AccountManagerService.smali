.class public Lcom/android/server/accounts/AccountManagerService;
.super Landroid/accounts/IAccountManager$Stub;
.source "AccountManagerService.java"

# interfaces
.implements Landroid/content/pm/RegisteredServicesCacheListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accounts/AccountManagerService$NotificationId;,
        Lcom/android/server/accounts/AccountManagerService$Injector;,
        Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;,
        Lcom/android/server/accounts/AccountManagerService$MessageHandler;,
        Lcom/android/server/accounts/AccountManagerService$Session;,
        Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;,
        Lcom/android/server/accounts/AccountManagerService$StartAccountSession;,
        Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;,
        Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;,
        Lcom/android/server/accounts/AccountManagerService$UserAccounts;,
        Lcom/android/server/accounts/AccountManagerService$Lifecycle;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/accounts/IAccountManager$Stub;",
        "Landroid/content/pm/RegisteredServicesCacheListener<",
        "Landroid/accounts/AuthenticatorDescription;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

.field private static final EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

.field private static final MESSAGE_COPY_SHARED_ACCOUNT:I = 0x4

.field private static final MESSAGE_TIMED_OUT:I = 0x3

.field private static final PRE_N_DATABASE_NAME:Ljava/lang/String; = "accounts.db"

.field private static final SIGNATURE_CHECK_MATCH:I = 0x1

.field private static final SIGNATURE_CHECK_MISMATCH:I = 0x0

.field private static final SIGNATURE_CHECK_UID_MATCH:I = 0x2

.field private static final TAG:Ljava/lang/String; = "AccountManagerService"

.field private static sThis:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/android/server/accounts/AccountManagerService;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field private mAppPermissionChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

.field final mContext:Landroid/content/Context;

.field private final mDateFormat:Ljava/text/SimpleDateFormat;

.field final mHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

.field private final mInjector:Lcom/android/server/accounts/AccountManagerService$Injector;

.field private final mLocalUnlockedUsers:Landroid/util/SparseBooleanArray;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mSessions:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/accounts/AccountManagerService$Session;",
            ">;"
        }
    .end annotation
.end field

.field private mUserManager:Landroid/os/UserManager;

.field private final mUsers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/accounts/AccountManagerService$UserAccounts;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 198
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/accounts/AccountManagerService;->ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

    .line 199
    sget-object v0, Lcom/android/server/accounts/AccountManagerService;->ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

    const/high16 v1, 0x5000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 266
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/android/server/accounts/AccountManagerService;->sThis:Ljava/util/concurrent/atomic/AtomicReference;

    .line 267
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/accounts/Account;

    sput-object v0, Lcom/android/server/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService$Injector;)V
    .registers 11
    .param p1, "injector"    # Lcom/android/server/accounts/AccountManagerService$Injector;

    .line 279
    invoke-direct {p0}, Landroid/accounts/IAccountManager$Stub;-><init>()V

    .line 203
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    .line 259
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    .line 260
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mLocalUnlockedUsers:Landroid/util/SparseBooleanArray;

    .line 262
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 263
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mAppPermissionChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 280
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService;->mInjector:Lcom/android/server/accounts/AccountManagerService$Injector;

    .line 281
    invoke-virtual {p1}, Lcom/android/server/accounts/AccountManagerService$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 282
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 283
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 284
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    invoke-virtual {p1}, Lcom/android/server/accounts/AccountManagerService$Injector;->getMessageHandlerLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;-><init>(Lcom/android/server/accounts/AccountManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    .line 285
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mInjector:Lcom/android/server/accounts/AccountManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$Injector;->getAccountAuthenticatorCache()Lcom/android/server/accounts/IAccountAuthenticatorCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    .line 286
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->setListener(Landroid/content/pm/RegisteredServicesCacheListener;Landroid/os/Handler;)V

    .line 288
    sget-object v0, Lcom/android/server/accounts/AccountManagerService;->sThis:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 290
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 291
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 292
    const-string/jumbo v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 293
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/accounts/AccountManagerService$1;

    invoke-direct {v3, p0}, Lcom/android/server/accounts/AccountManagerService$1;-><init>(Lcom/android/server/accounts/AccountManagerService;)V

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 322
    new-instance v2, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;

    invoke-direct {v2, p0, v1}, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$1;)V

    invoke-virtual {p1, v2}, Lcom/android/server/accounts/AccountManagerService$Injector;->addLocalService(Landroid/accounts/AccountManagerInternal;)V

    .line 324
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 325
    .local v2, "userFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 326
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/accounts/AccountManagerService$2;

    invoke-direct {v4, p0}, Lcom/android/server/accounts/AccountManagerService$2;-><init>(Lcom/android/server/accounts/AccountManagerService;)V

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 340
    new-instance v3, Lcom/android/server/accounts/AccountManagerService$3;

    invoke-direct {v3, p0}, Lcom/android/server/accounts/AccountManagerService$3;-><init>(Lcom/android/server/accounts/AccountManagerService;)V

    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService;->mHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    .line 352
    invoke-virtual {v5}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x1

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/server/accounts/AccountManagerService$3;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 355
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    new-instance v4, Lcom/android/server/accounts/AccountManagerService$4;

    invoke-direct {v4, p0}, Lcom/android/server/accounts/AccountManagerService$4;-><init>(Lcom/android/server/accounts/AccountManagerService;)V

    const/16 v5, 0x3e

    invoke-virtual {v3, v5, v1, v4}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 379
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v3, Lcom/android/server/accounts/-$$Lambda$AccountManagerService$c6GExIY3Vh2fORdBziuAPJbExac;

    invoke-direct {v3, p0}, Lcom/android/server/accounts/-$$Lambda$AccountManagerService$c6GExIY3Vh2fORdBziuAPJbExac;-><init>(Lcom/android/server/accounts/AccountManagerService;)V

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->addOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V

    .line 413
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/accounts/AccountManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p1, "x1"    # I

    .line 146
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->purgeUserData(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/accounts/AccountManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService;

    .line 146
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->purgeOldGrantsAll()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;I)V
    .registers 6
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p1, "x1"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "x2"    # Landroid/os/Bundle;
    .param p3, "x3"    # Landroid/accounts/Account;
    .param p4, "x4"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p5, "x5"    # I

    .line 146
    invoke-direct/range {p0 .. p5}, Lcom/android/server/accounts/AccountManagerService;->completeCloningAccount(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;I)Z
    .registers 5
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p1, "x1"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "x2"    # Landroid/accounts/Account;
    .param p3, "x3"    # I

    .line 146
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->removeAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;Ljava/lang/String;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Z)Landroid/content/Intent;
    .registers 8
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p1, "x1"    # Landroid/accounts/Account;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # Landroid/accounts/AccountAuthenticatorResponse;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Z

    .line 146
    invoke-direct/range {p0 .. p6}, Lcom/android/server/accounts/AccountManagerService;->newGrantCredentialsPermissionIntent(Landroid/accounts/Account;Ljava/lang/String;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/accounts/AccountManagerService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 146
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->removeVisibilityValuesForPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p1, "x1"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "x2"    # Landroid/accounts/Account;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .line 146
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->saveAuthTokenToDatabase(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;J)V
    .registers 9
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p1, "x1"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "x2"    # Landroid/accounts/Account;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # [B
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # J

    .line 146
    invoke-direct/range {p0 .. p8}, Lcom/android/server/accounts/AccountManagerService;->saveCachedToken(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/CharSequence;Landroid/content/Intent;Ljava/lang/String;I)V
    .registers 7
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p1, "x1"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "x2"    # Landroid/accounts/Account;
    .param p3, "x3"    # Ljava/lang/CharSequence;
    .param p4, "x4"    # Landroid/content/Intent;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # I

    .line 146
    invoke-direct/range {p0 .. p6}, Lcom/android/server/accounts/AccountManagerService;->doNotification(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/CharSequence;Landroid/content/Intent;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p1, "x1"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .line 146
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p1, "x1"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "x2"    # Landroid/os/Bundle;

    .line 146
    invoke-direct {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->sendResponse(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;Ljava/lang/String;I)Lcom/android/server/accounts/AccountManagerService$NotificationId;
    .registers 5
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p1, "x1"    # Landroid/accounts/Account;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .line 146
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$NotificationId;Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p1, "x1"    # Lcom/android/server/accounts/AccountManagerService$NotificationId;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/os/UserHandle;

    .line 146
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;[Landroid/accounts/Account;Ljava/lang/String;)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p1, "x1"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "x2"    # [Landroid/accounts/Account;
    .param p3, "x3"    # Ljava/lang/String;

    .line 146
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->handleGetAccountsResult(Landroid/accounts/IAccountManagerResponse;[Landroid/accounts/Account;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/accounts/AccountManagerService;)Ljava/util/LinkedHashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService;

    .line 146
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/accounts/AccountManagerService;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 146
    invoke-direct {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->isAccountPresentForCaller(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p1, "x1"    # Landroid/accounts/Account;

    .line 146
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->updateLastAuthenticatedTime(Landroid/accounts/Account;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Lcom/android/server/accounts/AccountManagerService$NotificationId;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p1, "x1"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "x2"    # Landroid/accounts/Account;

    .line 146
    invoke-direct {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$NotificationId;Landroid/os/UserHandle;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p1, "x1"    # Lcom/android/server/accounts/AccountManagerService$NotificationId;
    .param p2, "x2"    # Landroid/os/UserHandle;

    .line 146
    invoke-direct {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Landroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/accounts/AccountManagerService;)Lcom/android/server/accounts/IAccountAuthenticatorCache;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService;

    .line 146
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/accounts/AccountManagerService;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p1, "x1"    # I

    .line 146
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/android/server/accounts/AccountManagerService;)Ljava/text/SimpleDateFormat;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService;

    .line 146
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mDateFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Integer;
    .registers 5
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p1, "x1"    # Landroid/accounts/Account;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 146
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/accounts/AccountManagerService;IZ)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 146
    invoke-direct {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(IZ)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/RemoteCallback;)Landroid/content/Intent;
    .registers 6
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p1, "x1"    # Landroid/accounts/Account;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # Landroid/os/RemoteCallback;

    .line 146
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->newRequestAccountAccessIntent(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/RemoteCallback;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/server/accounts/AccountManagerService;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService;

    .line 146
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/server/accounts/AccountManagerService;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService;

    .line 146
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mAppPermissionChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;Ljava/lang/String;I)Z
    .registers 5
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p1, "x1"    # Landroid/accounts/Account;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .line 146
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/accounts/AccountManagerService;)Landroid/content/pm/PackageManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService;

    .line 146
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/accounts/AccountManagerService;)Landroid/app/AppOpsManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService;

    .line 146
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/accounts/AccountManagerService;Ljava/lang/String;IZ)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .line 146
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(Ljava/lang/String;IZ)V

    return-void
.end method

.method private accountExistsCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Z
    .registers 11
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;

    .line 2681
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2682
    :try_start_3
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    iget-object v2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2e

    .line 2683
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    iget-object v3, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/accounts/Account;

    array-length v3, v1

    move v4, v2

    :goto_1a
    if-ge v4, v3, :cond_2e

    aget-object v5, v1, v4

    .line 2684
    .local v5, "acc":Landroid/accounts/Account;
    iget-object v6, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v7, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 2685
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 2683
    .end local v5    # "acc":Landroid/accounts/Account;
    :cond_2b
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 2689
    :cond_2e
    monitor-exit v0

    .line 2690
    return v2

    .line 2689
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw v1
.end method

.method private accountTypeManagesContacts(Ljava/lang/String;I)Z
    .registers 10
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 5503
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 5504
    return v0

    .line 5506
    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 5509
    .local v1, "identityToken":J
    :try_start_8
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    invoke-interface {v3, p2}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v3
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_44

    .line 5511
    .local v3, "serviceInfos":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;>;"
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5512
    nop

    .line 5511
    nop

    .line 5515
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_17
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_43

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 5516
    .local v5, "serviceInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    iget-object v6, v5, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v6, Landroid/accounts/AuthenticatorDescription;

    iget-object v6, v6, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_42

    .line 5517
    iget-object v0, v5, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v0, Landroid/accounts/AuthenticatorDescription;

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    iget v4, v5, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    const-string v6, "android.permission.WRITE_CONTACTS"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v0, v4, p2, v6}, Lcom/android/server/accounts/AccountManagerService;->isPermittedForPackage(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 5520
    .end local v5    # "serviceInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    :cond_42
    goto :goto_17

    .line 5521
    :cond_43
    return v0

    .line 5511
    .end local v3    # "serviceInfos":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;>;"
    :catchall_44
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private addAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;ILjava/util/Map;)Z
    .registers 28
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "callingUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/accounts/AccountManagerService$UserAccounts;",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .local p6, "packageToVisibility":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p4

    .line 1779
    const/4 v0, 0x1

    invoke-static {v11, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 1780
    const/4 v1, 0x0

    if-nez v10, :cond_10

    .line 1781
    return v1

    .line 1783
    :cond_10
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v2

    invoke-direct {v8, v2}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    move-result v2

    if-nez v2, :cond_47

    .line 1784
    const-string v0, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Account "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " cannot be added - user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is locked. callingUid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, p5

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    return v1

    .line 1788
    :cond_47
    move/from16 v12, p5

    iget-object v13, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v13

    .line 1789
    :try_start_4c
    iget-object v14, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v14
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_1c6

    .line 1790
    :try_start_4f
    iget-object v2, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v2}, Lcom/android/server/accounts/AccountsDb;->beginTransaction()V
    :try_end_54
    .catchall {:try_start_4f .. :try_end_54} :catchall_1bf

    .line 1792
    :try_start_54
    iget-object v2, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v2, v10}, Lcom/android/server/accounts/AccountsDb;->findCeAccountId(Landroid/accounts/Account;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_84

    .line 1793
    const-string v0, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertAccountIntoDatabase: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", skipping since the account already exists"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7b
    .catchall {:try_start_54 .. :try_end_7b} :catchall_1b6

    .line 1795
    nop

    .line 1835
    :try_start_7c
    iget-object v0, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    monitor-exit v14
    :try_end_82
    .catchall {:try_start_7c .. :try_end_82} :catchall_1bf

    :try_start_82
    monitor-exit v13
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_1c6

    .line 1795
    return v1

    .line 1797
    :cond_84
    :try_start_84
    iget-object v2, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;
    :try_end_86
    .catchall {:try_start_84 .. :try_end_86} :catchall_1b6

    move-object/from16 v15, p3

    :try_start_88
    invoke-virtual {v2, v10, v15}, Lcom/android/server/accounts/AccountsDb;->insertCeAccount(Landroid/accounts/Account;Ljava/lang/String;)J

    move-result-wide v2

    move-wide v6, v2

    .line 1798
    .local v6, "accountId":J
    cmp-long v2, v6, v4

    if-gez v2, :cond_b5

    .line 1799
    const-string v0, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertAccountIntoDatabase: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", skipping the DB insert failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ac
    .catchall {:try_start_88 .. :try_end_ac} :catchall_1b4

    .line 1801
    nop

    .line 1835
    :try_start_ad
    iget-object v0, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    monitor-exit v14
    :try_end_b3
    .catchall {:try_start_ad .. :try_end_b3} :catchall_1c4

    :try_start_b3
    monitor-exit v13
    :try_end_b4
    .catchall {:try_start_b3 .. :try_end_b4} :catchall_1cb

    .line 1801
    return v1

    .line 1804
    :cond_b5
    :try_start_b5
    iget-object v2, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v2, v10, v6, v7}, Lcom/android/server/accounts/AccountsDb;->insertDeAccount(Landroid/accounts/Account;J)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-gez v2, :cond_e3

    .line 1805
    const-string v0, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertAccountIntoDatabase: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", skipping the DB insert failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_da
    .catchall {:try_start_b5 .. :try_end_da} :catchall_1b4

    .line 1807
    nop

    .line 1835
    :try_start_db
    iget-object v0, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    monitor-exit v14
    :try_end_e1
    .catchall {:try_start_db .. :try_end_e1} :catchall_1c4

    :try_start_e1
    monitor-exit v13
    :try_end_e2
    .catchall {:try_start_e1 .. :try_end_e2} :catchall_1cb

    .line 1807
    return v1

    .line 1809
    :cond_e3
    if-eqz v11, :cond_137

    .line 1810
    :try_start_e5
    invoke-virtual/range {p4 .. p4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_ed
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_137

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1811
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v16

    .line 1812
    .local v17, "value":Ljava/lang/String;
    iget-object v0, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    move-object/from16 v1, v17

    invoke-virtual {v0, v6, v7, v3, v1}, Lcom/android/server/accounts/AccountsDb;->insertExtra(JLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v16

    .end local v17    # "value":Ljava/lang/String;
    .local v1, "value":Ljava/lang/String;
    cmp-long v0, v16, v4

    if-gez v0, :cond_133

    .line 1813
    const-string v0, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertAccountIntoDatabase: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", skipping since insertExtra failed for key "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_129
    .catchall {:try_start_e5 .. :try_end_129} :catchall_1b4

    .line 1815
    nop

    .line 1835
    :try_start_12a
    iget-object v0, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    monitor-exit v14
    :try_end_130
    .catchall {:try_start_12a .. :try_end_130} :catchall_1c4

    :try_start_130
    monitor-exit v13
    :try_end_131
    .catchall {:try_start_130 .. :try_end_131} :catchall_1cb

    .line 1815
    const/4 v0, 0x0

    return v0

    .line 1817
    .end local v1    # "value":Ljava/lang/String;
    .end local v3    # "key":Ljava/lang/String;
    :cond_133
    const/4 v0, 0x0

    .line 1810
    move v1, v0

    const/4 v0, 0x1

    goto :goto_ed

    .line 1820
    :cond_137
    if-eqz p6, :cond_171

    .line 1821
    :try_start_139
    invoke-interface/range {p6 .. p6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_141
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_171

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    move-object v5, v1

    .line 1822
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    .line 1823
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v17, 0x0

    .line 1822
    move-object v1, v8

    move-object v2, v10

    move-object/from16 v18, v5

    move/from16 v5, v17

    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local v18, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-wide/from16 v19, v6

    move-object v6, v9

    .end local v6    # "accountId":J
    .local v19, "accountId":J
    invoke-direct/range {v1 .. v6}, Lcom/android/server/accounts/AccountManagerService;->setAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;IZLcom/android/server/accounts/AccountManagerService$UserAccounts;)Z

    .line 1825
    .end local v18    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    nop

    .line 1821
    move-wide/from16 v6, v19

    goto :goto_141

    .line 1827
    .end local v19    # "accountId":J
    .restart local v6    # "accountId":J
    :cond_171
    move-wide/from16 v19, v6

    .end local v6    # "accountId":J
    .restart local v19    # "accountId":J
    iget-object v0, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->setTransactionSuccessful()V

    .line 1829
    sget-object v2, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_ACCOUNT_ADD:Ljava/lang/String;

    const-string v3, "accounts"

    move-object v1, v8

    move-wide/from16 v4, v19

    move-object v6, v9

    move v7, v12

    invoke-direct/range {v1 .. v7}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    .line 1833
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accounts/AccountManagerService;->insertAccountIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Landroid/accounts/Account;
    :try_end_187
    .catchall {:try_start_139 .. :try_end_187} :catchall_1b4

    .line 1835
    .end local v19    # "accountId":J
    :try_start_187
    iget-object v0, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 1836
    nop

    .line 1837
    monitor-exit v14
    :try_end_18e
    .catchall {:try_start_187 .. :try_end_18e} :catchall_1c4

    .line 1838
    :try_start_18e
    monitor-exit v13
    :try_end_18f
    .catchall {:try_start_18e .. :try_end_18f} :catchall_1cb

    .line 1839
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->canHaveProfile()Z

    move-result v0

    if-eqz v0, :cond_1a8

    .line 1840
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v0

    invoke-direct {v8, v10, v0}, Lcom/android/server/accounts/AccountManagerService;->addAccountToLinkedRestrictedUsers(Landroid/accounts/Account;I)V

    .line 1843
    :cond_1a8
    invoke-direct {v8, v10, v9}, Lcom/android/server/accounts/AccountManagerService;->sendNotificationAccountUpdated(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 1845
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v0

    invoke-direct {v8, v0}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V

    .line 1847
    const/4 v0, 0x1

    return v0

    .line 1835
    :catchall_1b4
    move-exception v0

    goto :goto_1b9

    :catchall_1b6
    move-exception v0

    move-object/from16 v15, p3

    :goto_1b9
    :try_start_1b9
    iget-object v1, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v1}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    throw v0

    .line 1837
    :catchall_1bf
    move-exception v0

    move-object/from16 v15, p3

    :goto_1c2
    monitor-exit v14
    :try_end_1c3
    .catchall {:try_start_1b9 .. :try_end_1c3} :catchall_1c4

    :try_start_1c3
    throw v0

    :catchall_1c4
    move-exception v0

    goto :goto_1c2

    .line 1838
    :catchall_1c6
    move-exception v0

    move-object/from16 v15, p3

    :goto_1c9
    monitor-exit v13
    :try_end_1ca
    .catchall {:try_start_1c3 .. :try_end_1ca} :catchall_1cb

    throw v0

    :catchall_1cb
    move-exception v0

    goto :goto_1c9
.end method

.method private addAccountToLinkedRestrictedUsers(Landroid/accounts/Account;I)V
    .registers 10
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "parentUserId"    # I

    .line 1863
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 1864
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1865
    .local v2, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v3

    if-eqz v3, :cond_3d

    iget v3, v2, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    if-ne p2, v3, :cond_3d

    .line 1866
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, p1, v3}, Lcom/android/server/accounts/AccountManagerService;->addSharedAccountAsUser(Landroid/accounts/Account;I)Z

    .line 1867
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v3}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 1868
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService;->mHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    const/4 v5, 0x4

    iget v6, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5, p2, v6, p1}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1872
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    :cond_3d
    goto :goto_c

    .line 1873
    :cond_3e
    return-void
.end method

.method private addSharedAccountAsUser(Landroid/accounts/Account;I)Z
    .registers 12
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I

    .line 4386
    invoke-direct {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->handleIncomingUser(I)I

    move-result p2

    .line 4387
    invoke-virtual {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v6

    .line 4388
    .local v6, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    iget-object v0, v6, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0, p1}, Lcom/android/server/accounts/AccountsDb;->deleteSharedAccount(Landroid/accounts/Account;)Z

    .line 4389
    iget-object v0, v6, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0, p1}, Lcom/android/server/accounts/AccountsDb;->insertSharedAccount(Landroid/accounts/Account;)J

    move-result-wide v7

    .line 4390
    .local v7, "accountId":J
    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-gez v0, :cond_36

    .line 4391
    const-string v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertAccountIntoDatabase: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", skipping the DB insert failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4393
    const/4 v0, 0x0

    return v0

    .line 4395
    :cond_36
    sget-object v1, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_ACCOUNT_ADD:Ljava/lang/String;

    const-string/jumbo v2, "shared_accounts"

    move-object v0, p0

    move-wide v3, v7

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 4397
    const/4 v0, 0x1

    return v0
.end method

.method private calculatePackageSignatureDigest(Ljava/lang/String;)[B
    .registers 10
    .param p1, "callerPkg"    # Ljava/lang/String;

    .line 3026
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 3027
    .local v1, "digester":Ljava/security/MessageDigest;
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v3, 0x40

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 3029
    .local v2, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_13
    if-ge v5, v4, :cond_44

    aget-object v6, v3, v5

    .line 3030
    .local v6, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v6}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/security/MessageDigest;->update([B)V
    :try_end_1e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1e} :catch_3b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1e} :catch_21

    .line 3029
    .end local v6    # "sig":Landroid/content/pm/Signature;
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    .line 3035
    .end local v1    # "digester":Ljava/security/MessageDigest;
    .end local v2    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catch_21
    move-exception v1

    .line 3036
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "AccountManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find packageinfo for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3037
    nop

    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v1, v0

    goto :goto_45

    .line 3032
    :catch_3b
    move-exception v1

    .line 3033
    .local v1, "x":Ljava/security/NoSuchAlgorithmException;
    const-string v2, "AccountManagerService"

    const-string v3, "SHA-256 should be available"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3034
    const/4 v1, 0x0

    .line 3038
    .local v1, "digester":Ljava/security/MessageDigest;
    :cond_44
    nop

    .line 3037
    :goto_45
    nop

    .line 3039
    if-nez v1, :cond_49

    goto :goto_4d

    :cond_49
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    :goto_4d
    return-object v0
.end method

.method private canHaveProfile(I)Z
    .registers 4
    .param p1, "parentUserId"    # I

    .line 2101
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 2102
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->canHaveProfile()Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method private canUserModifyAccounts(II)Z
    .registers 6
    .param p1, "userId"    # I
    .param p2, "callingUid"    # I

    .line 5713
    invoke-direct {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->isProfileOwner(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 5714
    return v1

    .line 5716
    :cond_8
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getUserRestrictions(Landroid/os/UserHandle;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "no_modify_accounts"

    .line 5717
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 5718
    const/4 v0, 0x0

    return v0

    .line 5720
    :cond_20
    return v1
.end method

.method private canUserModifyAccountsForType(ILjava/lang/String;I)Z
    .registers 12
    .param p1, "userId"    # I
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "callingUid"    # I

    .line 5725
    invoke-direct {p0, p3}, Lcom/android/server/accounts/AccountManagerService;->isProfileOwner(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 5726
    return v1

    .line 5728
    :cond_8
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const-string v2, "device_policy"

    .line 5729
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 5730
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getAccountTypesWithManagementDisabledAsUser(I)[Ljava/lang/String;

    move-result-object v2

    .line 5731
    .local v2, "typesArray":[Ljava/lang/String;
    if-nez v2, :cond_19

    .line 5732
    return v1

    .line 5734
    :cond_19
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_1c
    if-ge v5, v3, :cond_2a

    aget-object v6, v2, v5

    .line 5735
    .local v6, "forbiddenType":Ljava/lang/String;
    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_27

    .line 5736
    return v4

    .line 5734
    .end local v6    # "forbiddenType":Ljava/lang/String;
    :cond_27
    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    .line 5739
    :cond_2a
    return v1
.end method

.method private cancelAccountAccessRequestNotificationIfNeeded(IZ)V
    .registers 7
    .param p1, "uid"    # I
    .param p2, "checkAccess"    # Z

    .line 426
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const-string v1, "android"

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 427
    .local v0, "accounts":[Landroid/accounts/Account;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_17

    aget-object v3, v0, v2

    .line 428
    .local v3, "account":Landroid/accounts/Account;
    invoke-direct {p0, v3, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;IZ)V

    .line 427
    .end local v3    # "account":Landroid/accounts/Account;
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 430
    :cond_17
    return-void
.end method

.method private cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;ILjava/lang/String;Z)V
    .registers 7
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "checkAccess"    # Z

    .line 453
    if-eqz p4, :cond_c

    .line 454
    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 453
    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/accounts/AccountManagerService;->hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 455
    :cond_c
    const-string v0, "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE"

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/accounts/AccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    move-result-object v0

    .line 457
    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 455
    invoke-direct {p0, v0, p3, v1}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 459
    :cond_19
    return-void
.end method

.method private cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;IZ)V
    .registers 8
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "uid"    # I
    .param p3, "checkAccess"    # Z

    .line 442
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 443
    .local v0, "packageNames":[Ljava/lang/String;
    if-eqz v0, :cond_14

    .line 444
    array-length v1, v0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 445
    .local v3, "packageName":Ljava/lang/String;
    invoke-direct {p0, p1, p2, v3, p3}, Lcom/android/server/accounts/AccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;ILjava/lang/String;Z)V

    .line 444
    .end local v3    # "packageName":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 449
    :cond_14
    return-void
.end method

.method private cancelAccountAccessRequestNotificationIfNeeded(Ljava/lang/String;IZ)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "checkAccess"    # Z

    .line 434
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const-string v1, "android"

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 435
    .local v0, "accounts":[Landroid/accounts/Account;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_17

    aget-object v3, v0, v2

    .line 436
    .local v3, "account":Landroid/accounts/Account;
    invoke-direct {p0, v3, p2, p1, p3}, Lcom/android/server/accounts/AccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;ILjava/lang/String;Z)V

    .line 435
    .end local v3    # "account":Landroid/accounts/Account;
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 438
    :cond_17
    return-void
.end method

.method private cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Landroid/os/UserHandle;)V
    .registers 4
    .param p1, "id"    # Lcom/android/server/accounts/AccountManagerService$NotificationId;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 5333
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 5334
    return-void
.end method

.method private cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 10
    .param p1, "id"    # Lcom/android/server/accounts/AccountManagerService$NotificationId;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 5337
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v0

    .line 5339
    .local v0, "identityToken":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mInjector:Lcom/android/server/accounts/AccountManagerService$Injector;

    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$Injector;->getNotificationManager()Landroid/app/INotificationManager;

    move-result-object v2

    .line 5340
    .local v2, "service":Landroid/app/INotificationManager;
    iget-object v3, p1, Lcom/android/server/accounts/AccountManagerService$NotificationId;->mTag:Ljava/lang/String;

    # getter for: Lcom/android/server/accounts/AccountManagerService$NotificationId;->mId:I
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$NotificationId;->access$3800(Lcom/android/server/accounts/AccountManagerService$NotificationId;)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-interface {v2, p2, v3, v4, v5}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_17} :catch_1d
    .catchall {:try_start_4 .. :try_end_17} :catchall_18

    .end local v2    # "service":Landroid/app/INotificationManager;
    goto :goto_1e

    .line 5344
    :catchall_18
    move-exception v2

    invoke-static {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v2

    .line 5341
    :catch_1d
    move-exception v2

    .line 5344
    :goto_1e
    invoke-static {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 5345
    nop

    .line 5346
    return-void
.end method

.method private checkGetAccountsPermission(Ljava/lang/String;II)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "userId"    # I

    .line 5492
    const-string v0, "android.permission.GET_ACCOUNTS"

    const-string v1, "android.permission.GET_ACCOUNTS_PRIVILEGED"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/accounts/AccountManagerService;->isPermittedForPackage(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static checkManageOrCreateUsersPermission(Ljava/lang/String;)V
    .registers 5
    .param p0, "message"    # Ljava/lang/String;

    .line 5627
    const-string v0, "android.permission.MANAGE_USERS"

    .line 5628
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 5627
    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-static {v0, v1, v3, v2}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v0

    if-eqz v0, :cond_32

    const-string v0, "android.permission.CREATE_USERS"

    .line 5630
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 5629
    invoke-static {v0, v1, v3, v2}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_32

    .line 5631
    :cond_1b
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You need MANAGE_USERS or CREATE_USERS permission to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5634
    :cond_32
    :goto_32
    return-void
.end method

.method private static checkManageUsersPermission(Ljava/lang/String;)V
    .registers 5
    .param p0, "message"    # Ljava/lang/String;

    .line 5619
    const-string v0, "android.permission.MANAGE_USERS"

    .line 5620
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 5619
    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v0

    if-nez v0, :cond_f

    .line 5624
    return-void

    .line 5622
    :cond_f
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You need MANAGE_USERS permission to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkPackageSignature(Ljava/lang/String;II)I
    .registers 13
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .line 5531
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 5532
    return v0

    .line 5535
    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 5538
    .local v1, "identityToken":J
    :try_start_8
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    invoke-interface {v3, p3}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v3
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_4b

    .line 5540
    .local v3, "serviceInfos":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;>;"
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5541
    nop

    .line 5540
    nop

    .line 5543
    const-class v4, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageManagerInternal;

    .line 5545
    .local v4, "pmi":Landroid/content/pm/PackageManagerInternal;
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 5546
    .local v6, "serviceInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    iget-object v7, v6, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v7, Landroid/accounts/AuthenticatorDescription;

    iget-object v7, v7, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_49

    .line 5547
    iget v7, v6, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    if-ne v7, p2, :cond_3d

    .line 5548
    const/4 v0, 0x2

    return v0

    .line 5550
    :cond_3d
    iget v7, v6, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    const/16 v8, 0x10

    invoke-virtual {v4, v7, p2, v8}, Landroid/content/pm/PackageManagerInternal;->hasSignatureCapability(III)Z

    move-result v7

    if-eqz v7, :cond_49

    .line 5553
    const/4 v0, 0x1

    return v0

    .line 5556
    .end local v6    # "serviceInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    :cond_49
    goto :goto_1f

    .line 5557
    :cond_4a
    return v0

    .line 5540
    .end local v3    # "serviceInfos":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;>;"
    .end local v4    # "pmi":Landroid/content/pm/PackageManagerInternal;
    :catchall_4b
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private checkReadAccountsPermitted(ILjava/lang/String;ILjava/lang/String;)V
    .registers 8
    .param p1, "callingUid"    # I
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "opPackageName"    # Ljava/lang/String;

    .line 5701
    invoke-direct {p0, p2, p1, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->isAccountVisibleToCaller(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5709
    return-void

    .line 5702
    :cond_7
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 5704
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 5702
    const-string v1, "caller uid %s cannot access %s accounts"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 5706
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AccountManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5707
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private checkReadContactsPermission(Ljava/lang/String;II)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "userId"    # I

    .line 5497
    const-string v0, "android.permission.READ_CONTACTS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/accounts/AccountManagerService;->isPermittedForPackage(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private completeCloningAccount(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;I)V
    .registers 23
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "accountCredentials"    # Landroid/os/Bundle;
    .param p3, "account"    # Landroid/accounts/Account;
    .param p4, "targetUser"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p5, "parentUserId"    # I

    move-object/from16 v13, p3

    .line 1729
    const/4 v0, 0x1

    move-object/from16 v14, p2

    invoke-static {v14, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 1730
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v11, v0

    .line 1732
    .local v11, "id":J
    :try_start_d
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$6;

    iget-object v5, v13, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, v13, Landroid/accounts/Account;->name:Ljava/lang/String;
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_31

    const/4 v9, 0x0

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p4

    move-object/from16 v4, p1

    move-object v10, v13

    move-wide v15, v11

    move/from16 v11, p5

    .end local v11    # "id":J
    .local v15, "id":J
    move-object v12, v14

    :try_start_22
    invoke-direct/range {v1 .. v12}, Lcom/android/server/accounts/AccountManagerService$6;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/accounts/Account;ILandroid/os/Bundle;)V

    .line 1771
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$6;->bind()V
    :try_end_28
    .catchall {:try_start_22 .. :try_end_28} :catchall_2e

    .line 1773
    move-wide v1, v15

    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1774
    .end local v15    # "id":J
    .local v1, "id":J
    nop

    .line 1775
    return-void

    .line 1773
    .end local v1    # "id":J
    .restart local v15    # "id":J
    :catchall_2e
    move-exception v0

    move-wide v1, v15

    .end local v15    # "id":J
    .restart local v1    # "id":J
    goto :goto_33

    .end local v1    # "id":J
    .restart local v11    # "id":J
    :catchall_31
    move-exception v0

    move-wide v1, v11

    .end local v11    # "id":J
    .restart local v1    # "id":J
    :goto_33
    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private createNoCredentialsPermissionNotification(Landroid/accounts/Account;Landroid/content/Intent;Ljava/lang/String;I)V
    .registers 23
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "userId"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v8, p2

    .line 3044
    const-string/jumbo v2, "uid"

    const/4 v3, -0x1

    invoke-virtual {v8, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 3046
    .local v9, "uid":I
    const-string v2, "authTokenType"

    invoke-virtual {v8, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3048
    .local v10, "authTokenType":Ljava/lang/String;
    iget-object v2, v0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 3049
    const v4, 0x10404ff

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 3051
    .local v11, "titleAndSubtitle":Ljava/lang/String;
    const/16 v2, 0xa

    invoke-virtual {v11, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    .line 3052
    .local v12, "index":I
    move-object v2, v11

    .line 3053
    .local v2, "title":Ljava/lang/String;
    const-string v3, ""

    .line 3054
    .local v3, "subtitle":Ljava/lang/String;
    if-lez v12, :cond_3a

    .line 3055
    invoke-virtual {v11, v5, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 3056
    add-int/lit8 v4, v12, 0x1

    invoke-virtual {v11, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 3058
    .end local v2    # "title":Ljava/lang/String;
    .end local v3    # "subtitle":Ljava/lang/String;
    .local v13, "title":Ljava/lang/String;
    .local v14, "subtitle":Ljava/lang/String;
    :cond_3a
    move-object v13, v2

    move-object v14, v3

    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v15

    .line 3059
    .local v15, "user":Landroid/os/UserHandle;
    invoke-direct {v0, v15}, Lcom/android/server/accounts/AccountManagerService;->getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v7

    .line 3060
    .local v7, "contextForUser":Landroid/content/Context;
    new-instance v2, Landroid/app/Notification$Builder;

    sget-object v3, Lcom/android/internal/notification/SystemNotificationChannels;->ACCOUNT:Ljava/lang/String;

    invoke-direct {v2, v7, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v3, 0x108008a

    .line 3062
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    const-wide/16 v3, 0x0

    .line 3063
    invoke-virtual {v2, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v2

    const v3, 0x106016f

    .line 3064
    invoke-virtual {v7, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 3066
    invoke-virtual {v2, v13}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 3067
    invoke-virtual {v2, v14}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    iget-object v2, v0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v5, 0x10000000

    const/16 v16, 0x0

    .line 3068
    move-object v4, v8

    move-object/from16 v17, v6

    move-object/from16 v6, v16

    move-object/from16 v16, v7

    move-object v7, v15

    .line 3068
    .end local v7    # "contextForUser":Landroid/content/Context;
    .local v16, "contextForUser":Landroid/content/Context;
    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v2

    move-object/from16 v3, v17

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 3070
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 3071
    .local v2, "n":Landroid/app/Notification;
    invoke-direct {v0, v1, v10, v9}, Lcom/android/server/accounts/AccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    move-result-object v3

    .line 3072
    invoke-virtual {v15}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 3071
    move-object/from16 v5, p3

    invoke-direct {v0, v3, v2, v5, v4}, Lcom/android/server/accounts/AccountManagerService;->installNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Landroid/app/Notification;Ljava/lang/String;I)V

    .line 3073
    return-void
.end method

.method private doNotification(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/CharSequence;Landroid/content/Intent;Ljava/lang/String;I)V
    .registers 26
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "message"    # Ljava/lang/CharSequence;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "userId"    # I

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    .line 5280
    move/from16 v12, p6

    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v4

    move-wide v13, v4

    .line 5282
    .local v13, "identityToken":J
    :try_start_11
    const-string v0, "AccountManagerService"

    const/4 v4, 0x2

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 5283
    const-string v0, "AccountManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doNotification: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " intent:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5286
    :cond_38
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_57

    const-class v0, Landroid/accounts/GrantCredentialsPermissionActivity;

    .line 5287
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 5288
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 5287
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 5289
    invoke-direct {v1, v2, v10, v11, v12}, Lcom/android/server/accounts/AccountManagerService;->createNoCredentialsPermissionNotification(Landroid/accounts/Account;Landroid/content/Intent;Ljava/lang/String;I)V

    goto/16 :goto_d1

    .line 5291
    :cond_57
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, v12}, Landroid/os/UserHandle;-><init>(I)V

    invoke-direct {v1, v0}, Lcom/android/server/accounts/AccountManagerService;->getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    .line 5292
    .local v0, "contextForUser":Landroid/content/Context;
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accounts/AccountManagerService;->getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    move-result-object v4

    move-object v15, v4

    .line 5293
    .local v15, "id":Lcom/android/server/accounts/AccountManagerService$NotificationId;
    iget-object v4, v15, Lcom/android/server/accounts/AccountManagerService$NotificationId;->mTag:Ljava/lang/String;

    invoke-virtual {v10, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 5295
    const v4, 0x1040448

    .line 5296
    invoke-virtual {v0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v9, v4

    .line 5297
    .local v9, "notificationTitleFormat":Ljava/lang/String;
    new-instance v4, Landroid/app/Notification$Builder;

    sget-object v5, Lcom/android/internal/notification/SystemNotificationChannels;->ACCOUNT:Ljava/lang/String;

    invoke-direct {v4, v0, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-wide/16 v5, 0x0

    .line 5299
    invoke-virtual {v4, v5, v6}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    const v5, 0x108008a

    .line 5300
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    const v5, 0x106016f

    .line 5301
    invoke-virtual {v0, v5}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v7, v5, v6

    .line 5303
    invoke-static {v9, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 5304
    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    iget-object v4, v1, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v7, 0x10000000

    const/16 v16, 0x0

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v12}, Landroid/os/UserHandle;-><init>(I)V

    .line 5305
    move-object/from16 v17, v6

    move-object v6, v10

    move-object/from16 v18, v8

    move-object/from16 v8, v16

    move-object/from16 v16, v9

    move-object/from16 v9, v17

    .end local v9    # "notificationTitleFormat":Ljava/lang/String;
    .local v16, "notificationTitleFormat":Ljava/lang/String;
    invoke-static/range {v4 .. v9}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v4

    move-object/from16 v5, v18

    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 5308
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    .line 5309
    .local v4, "n":Landroid/app/Notification;
    invoke-direct {v1, v15, v4, v11, v12}, Lcom/android/server/accounts/AccountManagerService;->installNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Landroid/app/Notification;Ljava/lang/String;I)V
    :try_end_d1
    .catchall {:try_start_11 .. :try_end_d1} :catchall_d6

    .line 5312
    .end local v0    # "contextForUser":Landroid/content/Context;
    .end local v4    # "n":Landroid/app/Notification;
    .end local v15    # "id":Lcom/android/server/accounts/AccountManagerService$NotificationId;
    .end local v16    # "notificationTitleFormat":Ljava/lang/String;
    :goto_d1
    invoke-static {v13, v14}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 5313
    nop

    .line 5314
    return-void

    .line 5312
    :catchall_d6
    move-exception v0

    invoke-static {v13, v14}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private dumpUser(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .registers 22
    .param p1, "userAccounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "fout"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "isCheckinRequest"    # Z

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    .line 5221
    if-eqz p5, :cond_1a

    .line 5224
    iget-object v1, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5225
    :try_start_b
    iget-object v0, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0, v9}, Lcom/android/server/accounts/AccountsDb;->dumpDeAccountsTable(Ljava/io/PrintWriter;)V

    .line 5226
    monitor-exit v1

    .line 5276
    move-object/from16 v4, p2

    move-object/from16 v5, p4

    goto/16 :goto_14c

    .line 5226
    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_17

    throw v0

    .line 5228
    :cond_1a
    const/4 v3, 0x0

    const/16 v4, 0x3e8

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, v8

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accounts/AccountManagerService;->getAccountsFromCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object v1

    .line 5230
    .local v1, "accounts":[Landroid/accounts/Account;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Accounts: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5231
    array-length v0, v1

    const/4 v2, 0x0

    :goto_3c
    if-ge v2, v0, :cond_5b

    aget-object v3, v1, v2

    .line 5234
    .local v3, "account":Landroid/accounts/Account;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/accounts/Account;->hideNameToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5231
    .end local v3    # "account":Landroid/accounts/Account;
    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    .line 5238
    :cond_5b
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    .line 5239
    iget-object v2, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5240
    :try_start_61
    iget-object v0, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0, v9}, Lcom/android/server/accounts/AccountsDb;->dumpDebugTable(Ljava/io/PrintWriter;)V

    .line 5241
    monitor-exit v2
    :try_end_67
    .catchall {:try_start_61 .. :try_end_67} :catchall_15c

    .line 5242
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    .line 5243
    iget-object v3, v7, Lcom/android/server/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    monitor-enter v3

    .line 5244
    :try_start_6d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 5245
    .local v4, "now":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Active Sessions: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcom/android/server/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5246
    iget-object v0, v7, Lcom/android/server/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_95
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ba

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accounts/AccountManagerService$Session;

    .line 5247
    .local v2, "session":Lcom/android/server/accounts/AccountManagerService$Session;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Lcom/android/server/accounts/AccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5248
    .end local v2    # "session":Lcom/android/server/accounts/AccountManagerService$Session;
    goto :goto_95

    .line 5249
    .end local v4    # "now":J
    :cond_ba
    monitor-exit v3
    :try_end_bb
    .catchall {:try_start_6d .. :try_end_bb} :catchall_153

    .line 5251
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    .line 5252
    iget-object v0, v7, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v2

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    invoke-interface {v0, v4, v9, v5, v2}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;I)V

    .line 5255
    iget-object v2, v7, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v2

    .line 5256
    :try_start_ce
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v0

    invoke-direct {v7, v0}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    move-result v0

    move v3, v0

    .line 5257
    .local v3, "isUserUnlocked":Z
    monitor-exit v2
    :try_end_d8
    .catchall {:try_start_ce .. :try_end_d8} :catchall_150

    .line 5259
    if-nez v3, :cond_db

    .line 5260
    return-void

    .line 5262
    :cond_db
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    .line 5263
    iget-object v6, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v6

    .line 5264
    :try_start_e1
    iget-object v0, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 5265
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->findAllVisibilityValues()Ljava/util/Map;

    move-result-object v0

    .line 5266
    .local v0, "allVisibilityValues":Ljava/util/Map;, "Ljava/util/Map<Landroid/accounts/Account;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    const-string v2, "Account visibility:"

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5267
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_14b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/accounts/Account;

    .line 5268
    .local v10, "account":Landroid/accounts/Account;
    const-string v11, "  ******"

    invoke-virtual {v9, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5269
    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    .line 5270
    .local v11, "visibilities":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_113
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_149

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 5271
    .local v13, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object v15, v0

    const-string v0, "    "

    .end local v0    # "allVisibilityValues":Ljava/util/Map;, "Ljava/util/Map<Landroid/accounts/Account;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .local v15, "allVisibilityValues":Ljava/util/Map;, "Ljava/util/Map<Landroid/accounts/Account;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5272
    .end local v13    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    nop

    .line 5270
    move-object v0, v15

    goto :goto_113

    .line 5273
    .end local v10    # "account":Landroid/accounts/Account;
    .end local v11    # "visibilities":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v15    # "allVisibilityValues":Ljava/util/Map;, "Ljava/util/Map<Landroid/accounts/Account;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .restart local v0    # "allVisibilityValues":Ljava/util/Map;, "Ljava/util/Map<Landroid/accounts/Account;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_149
    move-object v15, v0

    .end local v0    # "allVisibilityValues":Ljava/util/Map;, "Ljava/util/Map<Landroid/accounts/Account;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .restart local v15    # "allVisibilityValues":Ljava/util/Map;, "Ljava/util/Map<Landroid/accounts/Account;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    goto :goto_f4

    .line 5274
    .end local v15    # "allVisibilityValues":Ljava/util/Map;, "Ljava/util/Map<Landroid/accounts/Account;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_14b
    monitor-exit v6

    .line 5276
    .end local v1    # "accounts":[Landroid/accounts/Account;
    .end local v3    # "isUserUnlocked":Z
    :goto_14c
    return-void

    .line 5274
    .restart local v1    # "accounts":[Landroid/accounts/Account;
    .restart local v3    # "isUserUnlocked":Z
    :catchall_14d
    move-exception v0

    monitor-exit v6
    :try_end_14f
    .catchall {:try_start_e1 .. :try_end_14f} :catchall_14d

    throw v0

    .line 5257
    .end local v3    # "isUserUnlocked":Z
    :catchall_150
    move-exception v0

    :try_start_151
    monitor-exit v2
    :try_end_152
    .catchall {:try_start_151 .. :try_end_152} :catchall_150

    throw v0

    .line 5249
    :catchall_153
    move-exception v0

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    :goto_158
    :try_start_158
    monitor-exit v3
    :try_end_159
    .catchall {:try_start_158 .. :try_end_159} :catchall_15a

    throw v0

    :catchall_15a
    move-exception v0

    goto :goto_158

    .line 5241
    :catchall_15c
    move-exception v0

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    :goto_161
    :try_start_161
    monitor-exit v2
    :try_end_162
    .catchall {:try_start_161 .. :try_end_162} :catchall_163

    throw v0

    :catchall_163
    move-exception v0

    goto :goto_161
.end method

.method private filterAccounts(Lcom/android/server/accounts/AccountManagerService$UserAccounts;[Landroid/accounts/Account;ILjava/lang/String;Z)[Landroid/accounts/Account;
    .registers 13
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "unfiltered"    # [Landroid/accounts/Account;
    .param p3, "callingUid"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "includeManagedNotVisible"    # Z

    .line 5886
    move-object v0, p4

    .line 5887
    .local v0, "visibilityFilterPackage":Ljava/lang/String;
    if-nez v0, :cond_7

    .line 5888
    invoke-direct {p0, p3}, Lcom/android/server/accounts/AccountManagerService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 5890
    :cond_7
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 5891
    .local v1, "firstPass":Ljava/util/Map;, "Ljava/util/Map<Landroid/accounts/Account;Ljava/lang/Integer;>;"
    array-length v2, p2

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v2, :cond_2f

    aget-object v4, p2, v3

    .line 5892
    .local v4, "account":Landroid/accounts/Account;
    invoke-direct {p0, v4, v0, p1}, Lcom/android/server/accounts/AccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 5893
    .local v5, "visibility":I
    const/4 v6, 0x1

    if-eq v5, v6, :cond_25

    const/4 v6, 0x2

    if-eq v5, v6, :cond_25

    if-eqz p5, :cond_2c

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2c

    .line 5898
    :cond_25
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5891
    .end local v4    # "account":Landroid/accounts/Account;
    .end local v5    # "visibility":I
    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 5901
    :cond_2f
    nop

    .line 5902
    invoke-direct {p0, p1, v1, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->filterSharedAccounts(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/util/Map;ILjava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 5904
    .local v2, "secondPass":Ljava/util/Map;, "Ljava/util/Map<Landroid/accounts/Account;Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    new-array v3, v3, [Landroid/accounts/Account;

    .line 5905
    .local v3, "filtered":[Landroid/accounts/Account;
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, [Landroid/accounts/Account;

    .line 5906
    return-object v3
.end method

.method private filterSharedAccounts(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/util/Map;ILjava/lang/String;)Ljava/util/Map;
    .registers 20
    .param p1, "userAccounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p3, "callingUid"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/accounts/AccountManagerService$UserAccounts;",
            "Ljava/util/Map<",
            "Landroid/accounts/Account;",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Landroid/accounts/Account;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .local p2, "unfiltered":Ljava/util/Map;, "Ljava/util/Map<Landroid/accounts/Account;Ljava/lang/Integer;>;"
    move-object v1, p0

    move/from16 v2, p3

    .line 5915
    move-object/from16 v3, p4

    invoke-direct {v1}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    if-eqz v0, :cond_120

    if-eqz p1, :cond_120

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v0

    if-ltz v0, :cond_120

    const/16 v0, 0x3e8

    if-ne v2, v0, :cond_19

    goto/16 :goto_120

    .line 5919
    :cond_19
    invoke-direct {v1}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 5920
    .local v4, "user":Landroid/content/pm/UserInfo;
    if-eqz v4, :cond_11f

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_11f

    .line 5921
    iget-object v0, v1, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 5922
    .local v0, "packages":[Ljava/lang/String;
    const/4 v5, 0x0

    if-nez v0, :cond_38

    .line 5923
    new-array v0, v5, [Ljava/lang/String;

    .line 5928
    .end local v0    # "packages":[Ljava/lang/String;
    .local v6, "packages":[Ljava/lang/String;
    :cond_38
    move-object v6, v0

    iget-object v0, v1, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v7, 0x1040128

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 5930
    .local v7, "visibleList":Ljava/lang/String;
    array-length v0, v6

    move v8, v5

    :goto_48
    if-ge v8, v0, :cond_6c

    aget-object v9, v6, v8

    .line 5931
    .local v9, "packageName":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_69

    .line 5932
    return-object p2

    .line 5930
    .end local v9    # "packageName":Ljava/lang/String;
    :cond_69
    add-int/lit8 v8, v8, 0x1

    goto :goto_48

    .line 5935
    :cond_6c
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/server/accounts/AccountManagerService;->getSharedAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object v8

    .line 5936
    .local v8, "sharedAccounts":[Landroid/accounts/Account;
    invoke-static {v8}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 5937
    return-object p2

    .line 5939
    :cond_7b
    const-string v0, ""

    move-object v9, v0

    .line 5943
    .local v9, "requiredAccountType":Ljava/lang/String;
    if-eqz v3, :cond_92

    .line 5944
    :try_start_80
    iget-object v0, v1, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 5945
    .local v0, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_8f

    iget-object v10, v0, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    if-eqz v10, :cond_8f

    .line 5946
    iget-object v10, v0, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    move-object v9, v10

    .line 5948
    .end local v0    # "pi":Landroid/content/pm/PackageInfo;
    :cond_8f
    goto :goto_ac

    .line 5958
    :catch_90
    move-exception v0

    goto :goto_ad

    .line 5950
    :cond_92
    array-length v0, v6

    move v10, v5

    :goto_94
    if-ge v10, v0, :cond_ac

    aget-object v11, v6, v10

    .line 5951
    .local v11, "packageName":Ljava/lang/String;
    iget-object v12, v1, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v12, v11, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v12

    .line 5952
    .local v12, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v12, :cond_a9

    iget-object v13, v12, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    if-eqz v13, :cond_a9

    .line 5953
    iget-object v0, v12, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;
    :try_end_a6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_80 .. :try_end_a6} :catch_90

    .line 5954
    .end local v9    # "requiredAccountType":Ljava/lang/String;
    .local v0, "requiredAccountType":Ljava/lang/String;
    nop

    .line 5960
    move-object v9, v0

    goto :goto_ac

    .line 5950
    .end local v0    # "requiredAccountType":Ljava/lang/String;
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v12    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v9    # "requiredAccountType":Ljava/lang/String;
    :cond_a9
    add-int/lit8 v10, v10, 0x1

    goto :goto_94

    .line 5960
    :cond_ac
    :goto_ac
    goto :goto_c8

    .line 5958
    :goto_ad
    nop

    .line 5959
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v10, "AccountManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Package not found "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5961
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_c8
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 5962
    .local v0, "filtered":Ljava/util/Map;, "Ljava/util/Map<Landroid/accounts/Account;Ljava/lang/Integer;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_d5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_11e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 5963
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/accounts/Account;Ljava/lang/Integer;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/accounts/Account;

    .line 5964
    .local v12, "account":Landroid/accounts/Account;
    iget-object v13, v12, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f9

    .line 5965
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_118

    .line 5967
    :cond_f9
    const/4 v13, 0x0

    .line 5968
    .local v13, "found":Z
    array-length v5, v8

    const/4 v1, 0x0

    :goto_fc
    if-ge v1, v5, :cond_10d

    aget-object v2, v8, v1

    .line 5969
    .local v2, "shared":Landroid/accounts/Account;
    invoke-virtual {v2, v12}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_108

    .line 5970
    const/4 v13, 0x1

    .line 5971
    goto :goto_10d

    .line 5968
    .end local v2    # "shared":Landroid/accounts/Account;
    :cond_108
    add-int/lit8 v1, v1, 0x1

    move/from16 v2, p3

    goto :goto_fc

    .line 5974
    :cond_10d
    :goto_10d
    if-nez v13, :cond_118

    .line 5975
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5978
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/accounts/Account;Ljava/lang/Integer;>;"
    .end local v12    # "account":Landroid/accounts/Account;
    .end local v13    # "found":Z
    :cond_118
    :goto_118
    nop

    .line 5962
    move-object v1, p0

    move/from16 v2, p3

    const/4 v5, 0x0

    goto :goto_d5

    .line 5979
    :cond_11e
    return-object v0

    .line 5981
    .end local v0    # "filtered":Ljava/util/Map;, "Ljava/util/Map<Landroid/accounts/Account;Ljava/lang/Integer;>;"
    .end local v6    # "packages":[Ljava/lang/String;
    .end local v7    # "visibleList":Ljava/lang/String;
    .end local v8    # "sharedAccounts":[Landroid/accounts/Account;
    .end local v9    # "requiredAccountType":Ljava/lang/String;
    :cond_11f
    return-object p2

    .line 5917
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    :cond_120
    :goto_120
    return-object p2
.end method

.method private getAccountRemovedReceivers(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/List;
    .registers 11
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Lcom/android/server/accounts/AccountManagerService$UserAccounts;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1000
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.accounts.action.ACCOUNT_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1001
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1002
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1003
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static {p2}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    .line 1004
    .local v1, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1005
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v1, :cond_1f

    .line 1006
    return-object v2

    .line 1008
    :cond_1f
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 1009
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1010
    .local v5, "packageName":Ljava/lang/String;
    invoke-direct {p0, p1, v5, p2}, Lcom/android/server/accounts/AccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1011
    .local v6, "visibility":I
    const/4 v7, 0x1

    if-eq v6, v7, :cond_43

    const/4 v7, 0x2

    if-ne v6, v7, :cond_46

    .line 1013
    :cond_43
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1015
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "visibility":I
    :cond_46
    goto :goto_23

    .line 1016
    :cond_47
    return-object v2
.end method

.method private getAccountVisibilityFromCache(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I
    .registers 8
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 647
    iget-object v0, p3, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 648
    nop

    .line 649
    :try_start_4
    invoke-direct {p0, p1, p3}, Lcom/android/server/accounts/AccountManagerService;->getPackagesAndVisibilityForAccountLocked(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v1

    .line 650
    .local v1, "accountVisibility":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 651
    .local v2, "visibility":Ljava/lang/Integer;
    if-eqz v2, :cond_15

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_16

    :cond_15
    const/4 v3, 0x0

    :goto_16
    monitor-exit v0

    return v3

    .line 652
    .end local v1    # "accountVisibility":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v2    # "visibility":Ljava/lang/Integer;
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method private getAccounts([I)[Landroid/accounts/AccountAndUser;
    .registers 14
    .param p1, "userIds"    # [I

    .line 4262
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 4263
    .local v0, "runningAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/AccountAndUser;>;"
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_33

    aget v4, p1, v3

    .line 4264
    .local v4, "userId":I
    invoke-virtual {p0, v4}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v11

    .line 4265
    .local v11, "userAccounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    if-nez v11, :cond_12

    .end local v4    # "userId":I
    .end local v11    # "userAccounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    goto :goto_30

    .line 4266
    .restart local v4    # "userId":I
    .restart local v11    # "userAccounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :cond_12
    const/4 v7, 0x0

    .line 4269
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 4266
    move-object v5, p0

    move-object v6, v11

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/accounts/AccountManagerService;->getAccountsFromCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object v5

    .line 4272
    .local v5, "accounts":[Landroid/accounts/Account;
    array-length v6, v5

    move v7, v2

    :goto_21
    if-ge v7, v6, :cond_30

    aget-object v8, v5, v7

    .line 4273
    .local v8, "account":Landroid/accounts/Account;
    new-instance v9, Landroid/accounts/AccountAndUser;

    invoke-direct {v9, v8, v4}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4272
    .end local v8    # "account":Landroid/accounts/Account;
    add-int/lit8 v7, v7, 0x1

    goto :goto_21

    .line 4263
    .end local v4    # "userId":I
    .end local v5    # "accounts":[Landroid/accounts/Account;
    .end local v11    # "userAccounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :cond_30
    :goto_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 4277
    :cond_33
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/accounts/AccountAndUser;

    .line 4278
    .local v1, "accountsArray":[Landroid/accounts/AccountAndUser;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/accounts/AccountAndUser;

    return-object v2
.end method

.method private getAccountsAndVisibilityForPackage(Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;
    .registers 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "callingUid"    # Ljava/lang/Integer;
    .param p4, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            "Lcom/android/server/accounts/AccountManagerService$UserAccounts;",
            ")",
            "Ljava/util/Map<",
            "Landroid/accounts/Account;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 528
    .local p2, "accountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static {p4}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/accounts/AccountManagerService;->packageExistsForUser(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_26

    .line 529
    const-string v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package not found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object v0

    .line 533
    :cond_26
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 534
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Landroid/accounts/Account;Ljava/lang/Integer;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_65

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 535
    .local v2, "accountType":Ljava/lang/String;
    iget-object v3, p4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v3

    .line 536
    :try_start_3e
    iget-object v4, p4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_62

    .line 537
    :try_start_41
    iget-object v5, p4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/accounts/Account;

    .line 538
    .local v5, "accountsOfType":[Landroid/accounts/Account;
    if-eqz v5, :cond_5c

    .line 539
    array-length v6, v5

    const/4 v7, 0x0

    :goto_4d
    if-ge v7, v6, :cond_5c

    aget-object v8, v5, v7

    .line 540
    .local v8, "account":Landroid/accounts/Account;
    nop

    .line 541
    invoke-direct {p0, v8, p1, p4}, Lcom/android/server/accounts/AccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Integer;

    move-result-object v9

    .line 540
    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    .end local v8    # "account":Landroid/accounts/Account;
    add-int/lit8 v7, v7, 0x1

    goto :goto_4d

    .line 544
    .end local v5    # "accountsOfType":[Landroid/accounts/Account;
    :cond_5c
    monitor-exit v4
    :try_end_5d
    .catchall {:try_start_41 .. :try_end_5d} :catchall_5f

    .line 545
    :try_start_5d
    monitor-exit v3
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_62

    .line 546
    .end local v2    # "accountType":Ljava/lang/String;
    goto :goto_2f

    .line 544
    .restart local v2    # "accountType":Ljava/lang/String;
    :catchall_5f
    move-exception v1

    :try_start_60
    monitor-exit v4
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    :try_start_61
    throw v1

    .line 545
    :catchall_62
    move-exception v1

    monitor-exit v3
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_62

    throw v1

    .line 547
    .end local v2    # "accountType":Ljava/lang/String;
    :cond_65
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p4, v0, v1, p1}, Lcom/android/server/accounts/AccountManagerService;->filterSharedAccounts(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/util/Map;ILjava/lang/String;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method private getAccountsAsUserForPackage(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;
    .registers 23
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "packageUid"    # I
    .param p5, "opPackageName"    # Ljava/lang/String;
    .param p6, "includeUserManagedNotVisible"    # Z

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    .line 4298
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4300
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v9, v1, :cond_42

    if-eq v0, v2, :cond_42

    iget-object v1, v7, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 4302
    invoke-virtual {v1, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1f

    goto :goto_42

    .line 4305
    :cond_1f
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " trying to get account for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4309
    :cond_42
    :goto_42
    const-string v1, "AccountManagerService"

    const/4 v3, 0x2

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_79

    .line 4310
    const-string v1, "AccountManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAccounts: accountType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", caller\'s uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4311
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4312
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4310
    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4318
    :cond_79
    nop

    .line 4319
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-direct {v7, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getTypesManagedByCaller(II)Ljava/util/List;

    move-result-object v10

    .line 4320
    .local v10, "managedTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, -0x1

    move/from16 v11, p4

    if-eq v11, v1, :cond_9b

    .line 4321
    invoke-static {v0, v2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-nez v1, :cond_95

    if-eqz v8, :cond_9b

    .line 4322
    invoke-interface {v10, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9b

    .line 4323
    :cond_95
    move v0, v11

    .line 4324
    move-object/from16 v1, p3

    .line 4326
    .end local p5    # "opPackageName":Ljava/lang/String;
    .local v1, "opPackageName":Ljava/lang/String;
    move v12, v0

    move-object v13, v1

    goto :goto_9e

    .end local v1    # "opPackageName":Ljava/lang/String;
    .restart local p5    # "opPackageName":Ljava/lang/String;
    :cond_9b
    move-object/from16 v13, p5

    move v12, v0

    .end local v0    # "callingUid":I
    .end local p5    # "opPackageName":Ljava/lang/String;
    .local v12, "callingUid":I
    .local v13, "opPackageName":Ljava/lang/String;
    :goto_9e
    invoke-direct {v7, v12, v9, v13}, Lcom/android/server/accounts/AccountManagerService;->getTypesVisibleToCaller(IILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 4328
    .local v0, "visibleAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e1

    if-eqz v8, :cond_b1

    .line 4329
    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b1

    goto :goto_e1

    .line 4331
    :cond_b1
    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c0

    .line 4333
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 4334
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4338
    .end local v0    # "visibleAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v14, "visibleAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_c0
    move-object v14, v0

    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v5, v0

    .line 4340
    .local v5, "identityToken":J
    :try_start_c6
    invoke-virtual {v7, v9}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v2
    :try_end_ca
    .catchall {:try_start_c6 .. :try_end_ca} :catchall_db

    .line 4341
    .local v2, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    move-object v1, v7

    move v3, v12

    move-object v4, v13

    move-wide v7, v5

    move-object v5, v14

    .end local v5    # "identityToken":J
    .local v7, "identityToken":J
    move/from16 v6, p6

    :try_start_d1
    invoke-direct/range {v1 .. v6}, Lcom/android/server/accounts/AccountManagerService;->getAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;ILjava/lang/String;Ljava/util/List;Z)[Landroid/accounts/Account;

    move-result-object v0
    :try_end_d5
    .catchall {:try_start_d1 .. :try_end_d5} :catchall_d9

    .line 4348
    invoke-static {v7, v8}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 4341
    return-object v0

    .line 4348
    .end local v2    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_d9
    move-exception v0

    goto :goto_dd

    .end local v7    # "identityToken":J
    .restart local v5    # "identityToken":J
    :catchall_db
    move-exception v0

    move-wide v7, v5

    .end local v5    # "identityToken":J
    .restart local v7    # "identityToken":J
    :goto_dd
    invoke-static {v7, v8}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v0

    .line 4330
    .end local v7    # "identityToken":J
    .end local v14    # "visibleAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v0    # "visibleAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_e1
    :goto_e1
    sget-object v1, Lcom/android/server/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    return-object v1
.end method

.method private getAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;ILjava/lang/String;Ljava/util/List;Z)[Landroid/accounts/Account;
    .registers 15
    .param p1, "userAccounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p5, "includeUserManagedNotVisible"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/accounts/AccountManagerService$UserAccounts;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)[",
            "Landroid/accounts/Account;"
        }
    .end annotation

    .line 4359
    .local p4, "visibleAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4360
    .local v0, "visibleAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4361
    .local v2, "visibleType":Ljava/lang/String;
    move-object v3, p0

    move-object v4, p1

    move-object v5, v2

    move v6, p2

    move-object v7, p3

    move v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/accounts/AccountManagerService;->getAccountsFromCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object v3

    .line 4364
    .local v3, "accountsForType":[Landroid/accounts/Account;
    if-eqz v3, :cond_28

    .line 4365
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4367
    .end local v2    # "visibleType":Ljava/lang/String;
    .end local v3    # "accountsForType":[Landroid/accounts/Account;
    :cond_28
    goto :goto_9

    .line 4368
    :cond_29
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/accounts/Account;

    .line 4369
    .local v1, "result":[Landroid/accounts/Account;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_30
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_41

    .line 4370
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accounts/Account;

    aput-object v3, v1, v2

    .line 4369
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 4372
    .end local v2    # "i":I
    :cond_41
    return-object v1
.end method

.method static getAuthenticatorTypeAndUIDForUser(Landroid/content/Context;I)Ljava/util/HashMap;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1277
    new-instance v0, Lcom/android/server/accounts/AccountAuthenticatorCache;

    invoke-direct {v0, p0}, Lcom/android/server/accounts/AccountAuthenticatorCache;-><init>(Landroid/content/Context;)V

    .line 1278
    .local v0, "authCache":Lcom/android/server/accounts/AccountAuthenticatorCache;
    invoke-static {v0, p1}, Lcom/android/server/accounts/AccountManagerService;->getAuthenticatorTypeAndUIDForUser(Lcom/android/server/accounts/IAccountAuthenticatorCache;I)Ljava/util/HashMap;

    move-result-object v1

    return-object v1
.end method

.method private static getAuthenticatorTypeAndUIDForUser(Lcom/android/server/accounts/IAccountAuthenticatorCache;I)Ljava/util/HashMap;
    .registers 7
    .param p0, "authCache"    # Lcom/android/server/accounts/IAccountAuthenticatorCache;
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/accounts/IAccountAuthenticatorCache;",
            "I)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1284
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1285
    .local v0, "knownAuth":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    nop

    .line 1286
    invoke-interface {p0, p1}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v1

    .line 1285
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 1287
    .local v2, "service":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    iget-object v3, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v3, Landroid/accounts/AuthenticatorDescription;

    iget-object v3, v3, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    iget v4, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1288
    .end local v2    # "service":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    goto :goto_e

    .line 1289
    :cond_2a
    return-object v0
.end method

.method private getAuthenticatorTypesInternal(I)[Landroid/accounts/AuthenticatorDescription;
    .registers 8
    .param p1, "userId"    # I

    .line 1598
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    invoke-interface {v0, p1}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->updateServices(I)V

    .line 1600
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    invoke-interface {v0, p1}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v0

    .line 1601
    .local v0, "authenticatorCollection":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;>;"
    nop

    .line 1602
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Landroid/accounts/AuthenticatorDescription;

    .line 1603
    .local v1, "types":[Landroid/accounts/AuthenticatorDescription;
    const/4 v2, 0x0

    .line 1605
    .local v2, "i":I
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 1606
    .local v4, "authenticator":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    iget-object v5, v4, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v5, Landroid/accounts/AuthenticatorDescription;

    aput-object v5, v1, v2

    .line 1607
    add-int/lit8 v2, v2, 0x1

    .line 1608
    .end local v4    # "authenticator":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    goto :goto_17

    .line 1609
    :cond_2c
    return-object v1
.end method

.method private getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;
    .registers 5
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 6120
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_d} :catch_e

    return-object v0

    .line 6121
    :catch_e
    move-exception v0

    .line 6123
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    return-object v1
.end method

.method private getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Lcom/android/server/accounts/AccountManagerService$NotificationId;
    .registers 11
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 3100
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 3101
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->credentialsPermissionNotificationIds:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1700(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 3102
    :try_start_d
    new-instance v2, Landroid/util/Pair;

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3104
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3105
    .local v2, "key":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->credentialsPermissionNotificationIds:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1700(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accounts/AccountManagerService$NotificationId;

    .line 3106
    .local v3, "nId":Lcom/android/server/accounts/AccountManagerService$NotificationId;
    if-nez v3, :cond_57

    .line 3107
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AccountManagerService:38:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3108
    invoke-virtual {p1}, Landroid/accounts/Account;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3109
    .local v4, "tag":Ljava/lang/String;
    const/16 v5, 0x26

    .line 3110
    .local v5, "id":I
    new-instance v6, Lcom/android/server/accounts/AccountManagerService$NotificationId;

    invoke-direct {v6, v4, v5}, Lcom/android/server/accounts/AccountManagerService$NotificationId;-><init>(Ljava/lang/String;I)V

    move-object v3, v6

    .line 3111
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->credentialsPermissionNotificationIds:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1700(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3113
    .end local v2    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    .end local v4    # "tag":Ljava/lang/String;
    .end local v5    # "id":I
    :cond_57
    monitor-exit v1

    move-object v1, v3

    .line 3114
    .end local v3    # "nId":Lcom/android/server/accounts/AccountManagerService$NotificationId;
    .local v1, "nId":Lcom/android/server/accounts/AccountManagerService$NotificationId;
    return-object v1

    .line 3113
    .end local v1    # "nId":Lcom/android/server/accounts/AccountManagerService$NotificationId;
    :catchall_5a
    move-exception v2

    monitor-exit v1
    :try_end_5c
    .catchall {:try_start_d .. :try_end_5c} :catchall_5a

    throw v2
.end method

.method private getDefaultCantAddAccountIntent(I)Landroid/content/Intent;
    .registers 5
    .param p1, "errorCode"    # I

    .line 3645
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/accounts/CantAddAccountActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3646
    .local v0, "cantAddAccount":Landroid/content/Intent;
    const-string v1, "android.accounts.extra.ERROR_CODE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3647
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3648
    return-object v0
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .registers 11
    .param p1, "uid"    # I

    .line 3956
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 3957
    .local v0, "packageNames":[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 3958
    const/4 v1, 0x0

    return-object v1

    .line 3960
    :cond_e
    const/4 v1, 0x0

    aget-object v2, v0, v1

    .line 3961
    .local v2, "packageName":Ljava/lang/String;
    array-length v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_16

    .line 3962
    return-object v2

    .line 3965
    :cond_16
    const v3, 0x7fffffff

    .line 3966
    .local v3, "oldestVersion":I
    array-length v4, v0

    move v5, v3

    move-object v3, v2

    move v2, v1

    .end local v2    # "packageName":Ljava/lang/String;
    .local v3, "packageName":Ljava/lang/String;
    .local v5, "oldestVersion":I
    :goto_1d
    if-ge v2, v4, :cond_34

    aget-object v6, v0, v2

    .line 3968
    .local v6, "name":Ljava/lang/String;
    :try_start_21
    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v6, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    .line 3969
    .local v7, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v7, :cond_2f

    .line 3970
    iget v8, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_2b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_21 .. :try_end_2b} :catch_30

    .line 3971
    .local v8, "version":I
    if-ge v8, v5, :cond_2f

    .line 3972
    move v5, v8

    .line 3973
    move-object v3, v6

    .line 3978
    .end local v7    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "version":I
    :cond_2f
    goto :goto_31

    .line 3976
    :catch_30
    move-exception v7

    .line 3966
    .end local v6    # "name":Ljava/lang/String;
    :goto_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 3980
    :cond_34
    return-object v3
.end method

.method private getPackagesAndVisibilityForAccountLocked(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;
    .registers 6
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Lcom/android/server/accounts/AccountManagerService$UserAccounts;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 587
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->visibilityCache:Ljava/util/Map;
    invoke-static {p2}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$900(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 588
    .local v0, "accountVisibility":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez v0, :cond_20

    .line 589
    const-string v1, "AccountManagerService"

    const-string v2, "Visibility was not initialized"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v0, v1

    .line 591
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->visibilityCache:Ljava/util/Map;
    invoke-static {p2}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$900(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    :cond_20
    return-object v0
.end method

.method private getRequestingPackages(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;
    .registers 11
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Lcom/android/server/accounts/AccountManagerService$UserAccounts;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 982
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 983
    .local v0, "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->mReceiversForType:Ljava/util/Map;
    invoke-static {p2}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1000(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    .line 984
    const/4 v2, 0x2

    :try_start_b
    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v5, 0x1

    aput-object v3, v2, v5

    array-length v3, v2

    :goto_17
    if-ge v4, v3, :cond_31

    aget-object v5, v2, v4

    .line 985
    .local v5, "type":Ljava/lang/String;
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->mReceiversForType:Ljava/util/Map;
    invoke-static {p2}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1000(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 986
    .local v6, "receivers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v6, :cond_2e

    .line 987
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 984
    .end local v5    # "type":Ljava/lang/String;
    .end local v6    # "receivers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_2e
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 990
    :cond_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_b .. :try_end_32} :catchall_50

    .line 991
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 992
    .local v1, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 993
    .local v3, "packageName":Ljava/lang/String;
    invoke-direct {p0, p1, v3, p2}, Lcom/android/server/accounts/AccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 994
    .end local v3    # "packageName":Ljava/lang/String;
    goto :goto_3b

    .line 995
    :cond_4f
    return-object v1

    .line 990
    .end local v1    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catchall_50
    move-exception v2

    :try_start_51
    monitor-exit v1
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw v2
.end method

.method private getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Lcom/android/server/accounts/AccountManagerService$NotificationId;
    .registers 8
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;

    .line 3119
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->signinRequiredNotificationIds:Ljava/util/HashMap;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$2300(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    .line 3120
    :try_start_5
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->signinRequiredNotificationIds:Ljava/util/HashMap;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$2300(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accounts/AccountManagerService$NotificationId;

    .line 3121
    .local v1, "nId":Lcom/android/server/accounts/AccountManagerService$NotificationId;
    if-nez v1, :cond_35

    .line 3122
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AccountManagerService:37:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3123
    invoke-virtual {p2}, Landroid/accounts/Account;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3124
    .local v2, "tag":Ljava/lang/String;
    const/16 v3, 0x25

    .line 3125
    .local v3, "id":I
    new-instance v4, Lcom/android/server/accounts/AccountManagerService$NotificationId;

    invoke-direct {v4, v2, v3}, Lcom/android/server/accounts/AccountManagerService$NotificationId;-><init>(Ljava/lang/String;I)V

    move-object v1, v4

    .line 3126
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->signinRequiredNotificationIds:Ljava/util/HashMap;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$2300(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3128
    .end local v2    # "tag":Ljava/lang/String;
    .end local v3    # "id":I
    :cond_35
    monitor-exit v0

    move-object v0, v1

    .line 3129
    .end local v1    # "nId":Lcom/android/server/accounts/AccountManagerService$NotificationId;
    .local v0, "nId":Lcom/android/server/accounts/AccountManagerService$NotificationId;
    return-object v0

    .line 3128
    .end local v0    # "nId":Lcom/android/server/accounts/AccountManagerService$NotificationId;
    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_5 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method public static getSingleton()Lcom/android/server/accounts/AccountManagerService;
    .registers 1

    .line 276
    sget-object v0, Lcom/android/server/accounts/AccountManagerService;->sThis:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accounts/AccountManagerService;

    return-object v0
.end method

.method private getTypesForCaller(IIZ)Ljava/util/List;
    .registers 14
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I
    .param p3, "isOtherwisePermitted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5580
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5581
    .local v0, "managedAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 5584
    .local v1, "identityToken":J
    :try_start_9
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    invoke-interface {v3, p2}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v3
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_53

    .line 5586
    .local v3, "serviceInfos":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;>;"
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5587
    nop

    .line 5586
    nop

    .line 5589
    const-class v4, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageManagerInternal;

    .line 5591
    .local v4, "pmi":Landroid/content/pm/PackageManagerInternal;
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_20
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_52

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 5596
    .local v6, "serviceInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    if-nez p3, :cond_48

    iget v7, v6, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    const/16 v8, 0x10

    .line 5597
    invoke-virtual {v4, v7, p1, v8}, Landroid/content/pm/PackageManagerInternal;->hasSignatureCapability(III)Z

    move-result v7

    if-nez v7, :cond_48

    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v8, v6, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v8, Landroid/accounts/AuthenticatorDescription;

    iget-object v8, v8, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    iget v9, v6, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    .line 5599
    invoke-static {v7, v8, v9, p1}, Lcom/android/server/accounts/AccountManagerServiceInjector;->isTrustedAccountSignature(Landroid/content/pm/PackageManager;Ljava/lang/String;II)Z

    move-result v7

    if-eqz v7, :cond_51

    .line 5601
    :cond_48
    iget-object v7, v6, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v7, Landroid/accounts/AuthenticatorDescription;

    iget-object v7, v7, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5603
    .end local v6    # "serviceInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    :cond_51
    goto :goto_20

    .line 5604
    :cond_52
    return-object v0

    .line 5586
    .end local v3    # "serviceInfos":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;>;"
    .end local v4    # "pmi":Landroid/content/pm/PackageManagerInternal;
    :catchall_53
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private getTypesManagedByCaller(II)Ljava/util/List;
    .registers 4
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5575
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->getTypesForCaller(IIZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getTypesVisibleToCaller(IILjava/lang/String;)Ljava/util/List;
    .registers 5
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I
    .param p3, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5571
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->getTypesForCaller(IIZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getUidsOfInstalledOrUpdatedPackagesAsUser(I)Landroid/util/SparseBooleanArray;
    .registers 8
    .param p1, "userId"    # I

    .line 1261
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1262
    const/16 v1, 0x2000

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v0

    .line 1264
    .local v0, "pkgsWithData":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 1265
    .local v1, "knownUids":Landroid/util/SparseBooleanArray;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 1266
    .local v3, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_36

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x800000

    and-int/2addr v4, v5

    if-eqz v4, :cond_36

    .line 1268
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1270
    .end local v3    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_36
    goto :goto_15

    .line 1271
    :cond_37
    return-object v1
.end method

.method private getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .registers 2

    .line 1293
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    return-object v0
.end method

.method private getUserManager()Landroid/os/UserManager;
    .registers 2

    .line 1089
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUserManager:Landroid/os/UserManager;

    if-nez v0, :cond_c

    .line 1090
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUserManager:Landroid/os/UserManager;

    .line 1092
    :cond_c
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method private handleGetAccountsResult(Landroid/accounts/IAccountManagerResponse;[Landroid/accounts/Account;Ljava/lang/String;)V
    .registers 8
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "accounts"    # [Landroid/accounts/Account;
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 4517
    invoke-direct {p0, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->needToStartChooseAccountActivity([Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4518
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->startChooseAccountActivityWithAccounts(Landroid/accounts/IAccountManagerResponse;[Landroid/accounts/Account;Ljava/lang/String;)V

    .line 4519
    return-void

    .line 4521
    :cond_a
    array-length v0, p2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2a

    .line 4522
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4523
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "authAccount"

    const/4 v2, 0x0

    aget-object v3, p2, v2

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4524
    const-string v1, "accountType"

    aget-object v2, p2, v2

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4525
    invoke-direct {p0, p1, v0}, Lcom/android/server/accounts/AccountManagerService;->onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V

    .line 4526
    return-void

    .line 4529
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_2a
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/accounts/AccountManagerService;->onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V

    .line 4530
    return-void
.end method

.method private handleIncomingUser(I)I
    .registers 10
    .param p1, "userId"    # I

    .line 5404
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 5405
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-string v6, ""

    const/4 v7, 0x0

    .line 5404
    move v3, p1

    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_17

    return v0

    .line 5406
    :catch_17
    move-exception v0

    .line 5409
    return p1
.end method

.method private hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .registers 8
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 3985
    const/4 v0, 0x0

    if-nez p2, :cond_a

    .line 3986
    invoke-direct {p0, p3}, Lcom/android/server/accounts/AccountManagerService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object p2

    .line 3987
    if-nez p2, :cond_a

    .line 3988
    return v0

    .line 3994
    :cond_a
    const/4 v1, 0x0

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-direct {p0, p1, v1, p3, v2}, Lcom/android/server/accounts/AccountManagerService;->permissionIsGranted(Landroid/accounts/Account;Ljava/lang/String;II)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    .line 3995
    return v2

    .line 4000
    :cond_17
    nop

    .line 4001
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v1

    .line 4000
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/accounts/AccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4002
    .local v1, "visibility":I
    if-eq v1, v2, :cond_2f

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2e

    goto :goto_2f

    :cond_2e
    goto :goto_30

    :cond_2f
    :goto_2f
    move v0, v2

    :goto_30
    return v0
.end method

.method private hasExplicitlyGrantedPermission(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .registers 14
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "callerUid"    # I

    .line 5638
    invoke-static {p3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_a

    .line 5639
    return v1

    .line 5641
    :cond_a
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 5642
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    iget-object v2, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5643
    :try_start_15
    iget-object v3, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_6e

    .line 5645
    if-eqz p2, :cond_23

    .line 5646
    :try_start_1a
    iget-object v4, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 5647
    invoke-virtual {v4, p3, p2, p1}, Lcom/android/server/accounts/AccountsDb;->findMatchingGrantsCount(ILjava/lang/String;Landroid/accounts/Account;)J

    move-result-wide v4

    .line 5647
    .local v4, "grantsCount":J
    goto :goto_29

    .line 5663
    .end local v4    # "grantsCount":J
    :catchall_21
    move-exception v1

    goto :goto_6c

    .line 5649
    :cond_23
    iget-object v4, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v4, p3, p1}, Lcom/android/server/accounts/AccountsDb;->findMatchingGrantsCountAnyToken(ILandroid/accounts/Account;)J

    move-result-wide v4

    .line 5652
    .restart local v4    # "grantsCount":J
    :goto_29
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_31

    move v6, v1

    goto :goto_32

    :cond_31
    const/4 v6, 0x0

    .line 5654
    .local v6, "permissionGranted":Z
    :goto_32
    if-nez v6, :cond_69

    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v7

    if-eqz v7, :cond_69

    .line 5657
    const-string v7, "AccountManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "no credentials permission for usage of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " by uid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " but ignoring since device is in test harness."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5660
    monitor-exit v3
    :try_end_67
    .catchall {:try_start_1a .. :try_end_67} :catchall_21

    :try_start_67
    monitor-exit v2
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_6e

    return v1

    .line 5662
    :cond_69
    :try_start_69
    monitor-exit v3
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_21

    :try_start_6a
    monitor-exit v2
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_6e

    return v6

    .line 5663
    .end local v4    # "grantsCount":J
    .end local v6    # "permissionGranted":Z
    :goto_6c
    :try_start_6c
    monitor-exit v3
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_21

    :try_start_6d
    throw v1

    .line 5664
    :catchall_6e
    move-exception v1

    monitor-exit v2
    :try_end_70
    .catchall {:try_start_6d .. :try_end_70} :catchall_6e

    throw v1
.end method

.method private initializeDebugDbSizeAndCompileSqlStatementForLogging(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .registers 3
    .param p1, "userAccount"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 5177
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 5178
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->calculateDebugTableInsertionPoint()I

    move-result v0

    .line 5177
    # setter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->debugDbInsertionPoint:I
    invoke-static {p1, v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$3702(Lcom/android/server/accounts/AccountManagerService$UserAccounts;I)I

    .line 5179
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->compileSqlStatementForLogging()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    # setter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->statementForLogging:Landroid/database/sqlite/SQLiteStatement;
    invoke-static {p1, v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1402(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/database/sqlite/SQLiteStatement;)Landroid/database/sqlite/SQLiteStatement;

    .line 5180
    return-void
.end method

.method private insertAccountIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Landroid/accounts/Account;
    .registers 9
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;

    .line 5870
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    iget-object v1, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/accounts/Account;

    .line 5871
    .local v0, "accountsForType":[Landroid/accounts/Account;
    const/4 v1, 0x0

    if-eqz v0, :cond_f

    array-length v2, v0

    goto :goto_10

    :cond_f
    move v2, v1

    .line 5872
    .local v2, "oldLength":I
    :goto_10
    add-int/lit8 v3, v2, 0x1

    new-array v3, v3, [Landroid/accounts/Account;

    .line 5873
    .local v3, "newAccountsForType":[Landroid/accounts/Account;
    if-eqz v0, :cond_19

    .line 5874
    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5876
    :cond_19
    invoke-virtual {p2}, Landroid/accounts/Account;->getAccessId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_24

    invoke-virtual {p2}, Landroid/accounts/Account;->getAccessId()Ljava/lang/String;

    move-result-object v1

    goto :goto_2c

    .line 5877
    :cond_24
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5878
    .local v1, "token":Ljava/lang/String;
    :goto_2c
    new-instance v4, Landroid/accounts/Account;

    invoke-direct {v4, p2, v1}, Landroid/accounts/Account;-><init>(Landroid/accounts/Account;Ljava/lang/String;)V

    aput-object v4, v3, v2

    .line 5879
    iget-object v4, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    iget-object v5, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5880
    aget-object v4, v3, v2

    return-object v4
.end method

.method private installNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Landroid/app/Notification;Ljava/lang/String;I)V
    .registers 15
    .param p1, "id"    # Lcom/android/server/accounts/AccountManagerService$NotificationId;
    .param p2, "notification"    # Landroid/app/Notification;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 5318
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v0

    .line 5320
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mInjector:Lcom/android/server/accounts/AccountManagerService$Injector;

    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$Injector;->getNotificationManager()Landroid/app/INotificationManager;

    move-result-object v3
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_1e

    .line 5322
    .local v3, "notificationManager":Landroid/app/INotificationManager;
    :try_start_a
    iget-object v6, p1, Lcom/android/server/accounts/AccountManagerService$NotificationId;->mTag:Ljava/lang/String;

    .line 5323
    # getter for: Lcom/android/server/accounts/AccountManagerService$NotificationId;->mId:I
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$NotificationId;->access$3800(Lcom/android/server/accounts/AccountManagerService$NotificationId;)I

    move-result v7

    .line 5322
    move-object v4, p3

    move-object v5, p3

    move-object v8, p2

    move v9, p4

    invoke-interface/range {v3 .. v9}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;I)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_17} :catch_18
    .catchall {:try_start_a .. :try_end_17} :catchall_1e

    .line 5326
    goto :goto_19

    .line 5324
    :catch_18
    move-exception v2

    .line 5328
    .end local v3    # "notificationManager":Landroid/app/INotificationManager;
    :goto_19
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5329
    nop

    .line 5330
    return-void

    .line 5328
    :catchall_1e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private invalidateAuthTokenLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "authToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/accounts/AccountManagerService$UserAccounts;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 2423
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2424
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;>;"
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v1, p2, p3}, Lcom/android/server/accounts/AccountsDb;->findAuthtokenForAllAccounts(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2427
    .local v1, "cursor":Landroid/database/Cursor;
    :goto_b
    :try_start_b
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 2428
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2429
    .local v2, "authTokenId":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2430
    .local v3, "accountName":Ljava/lang/String;
    const/4 v4, 0x2

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2431
    .local v4, "authTokenType":Ljava/lang/String;
    iget-object v5, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v5, v2}, Lcom/android/server/accounts/AccountsDb;->deleteAuthToken(Ljava/lang/String;)Z

    .line 2432
    new-instance v5, Landroid/accounts/Account;

    invoke-direct {v5, v3, p2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_31
    .catchall {:try_start_b .. :try_end_31} :catchall_37

    .line 2433
    .end local v2    # "authTokenId":Ljava/lang/String;
    .end local v3    # "accountName":Ljava/lang/String;
    .end local v4    # "authTokenType":Ljava/lang/String;
    goto :goto_b

    .line 2435
    :cond_32
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2436
    nop

    .line 2437
    return-object v0

    .line 2435
    :catchall_37
    move-exception v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method private isAccountManagedByCaller(Ljava/lang/String;II)Z
    .registers 5
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .line 5562
    if-nez p1, :cond_4

    .line 5563
    const/4 v0, 0x0

    return v0

    .line 5565
    :cond_4
    invoke-direct {p0, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->getTypesManagedByCaller(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isAccountPresentForCaller(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountType"    # Ljava/lang/String;

    .line 5608
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    .line 5609
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/accounts/Account;

    array-length v2, v0

    move v3, v1

    :goto_1b
    if-ge v3, v2, :cond_2c

    aget-object v4, v0, v3

    .line 5610
    .local v4, "account":Landroid/accounts/Account;
    iget-object v5, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 5611
    const/4 v0, 0x1

    return v0

    .line 5609
    .end local v4    # "account":Landroid/accounts/Account;
    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 5615
    :cond_2c
    return v1
.end method

.method private isAccountVisibleToCaller(Ljava/lang/String;IILjava/lang/String;)Z
    .registers 6
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I
    .param p4, "opPackageName"    # Ljava/lang/String;

    .line 5480
    if-nez p1, :cond_4

    .line 5481
    const/4 v0, 0x0

    return v0

    .line 5483
    :cond_4
    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->getTypesVisibleToCaller(IILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 5484
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 5483
    return v0
.end method

.method private isCrossUser(II)Z
    .registers 5
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I

    .line 1613
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p2, v0, :cond_16

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_16

    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 1615
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 1613
    :goto_17
    return v0
.end method

.method private isLocalUnlockedUser(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 1851
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1852
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mLocalUnlockedUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1853
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method private varargs isPermitted(Ljava/lang/String;I[Ljava/lang/String;)Z
    .registers 11
    .param p1, "opPackageName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "permissions"    # [Ljava/lang/String;

    .line 5387
    array-length v0, p3

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_4a

    aget-object v3, p3, v2

    .line 5388
    .local v3, "perm":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_47

    .line 5389
    const-string v4, "AccountManagerService"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 5390
    const-string v4, "AccountManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  caller uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " has "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5392
    :cond_36
    invoke-static {v3}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v4

    .line 5393
    .local v4, "opCode":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_45

    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v5, v4, p2, p1}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v5

    if-nez v5, :cond_47

    .line 5395
    :cond_45
    const/4 v0, 0x1

    return v0

    .line 5387
    .end local v3    # "perm":Ljava/lang/String;
    .end local v4    # "opCode":I
    :cond_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 5399
    :cond_4a
    return v1
.end method

.method private varargs isPermittedForPackage(Ljava/lang/String;II[Ljava/lang/String;)Z
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "userId"    # I
    .param p4, "permissions"    # [Ljava/lang/String;

    .line 5350
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5352
    .local v0, "identity":J
    const/4 v2, 0x0

    :try_start_5
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 5353
    .local v3, "pm":Landroid/content/pm/IPackageManager;
    array-length v4, p4

    move v5, v2

    :goto_b
    if-ge v5, v4, :cond_55

    aget-object v6, p4, v5

    .line 5354
    .local v6, "perm":Ljava/lang/String;
    invoke-interface {v3, v6, p1, p3}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_4c

    .line 5357
    invoke-static {v6}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v7

    .line 5363
    .local v7, "opCode":I
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    const/4 v10, 0x1

    if-ne v8, v9, :cond_2a

    move v8, v10

    goto :goto_2b

    :cond_2a
    move v8, v2

    .line 5364
    .local v8, "isMain":Z
    :goto_2b
    const/4 v9, -0x1

    if-eqz v8, :cond_3d

    .line 5365
    if-eq v7, v9, :cond_38

    iget-object v9, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v9, v7, p2, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v9
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_36} :catch_54
    .catchall {:try_start_5 .. :try_end_36} :catchall_4f

    if-nez v9, :cond_4c

    .line 5367
    :cond_38
    nop

    .line 5381
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5367
    return v10

    .line 5370
    :cond_3d
    if-eq v7, v9, :cond_47

    :try_start_3f
    iget-object v9, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v9, v7, p2, p1}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v9
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_45} :catch_54
    .catchall {:try_start_3f .. :try_end_45} :catchall_4f

    if-nez v9, :cond_4c

    .line 5372
    :cond_47
    nop

    .line 5381
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5372
    return v10

    .line 5353
    .end local v6    # "perm":Ljava/lang/String;
    .end local v7    # "opCode":I
    .end local v8    # "isMain":Z
    :cond_4c
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .line 5381
    .end local v3    # "pm":Landroid/content/pm/IPackageManager;
    :catchall_4f
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 5378
    :catch_54
    move-exception v3

    .line 5381
    :cond_55
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5382
    nop

    .line 5383
    return v2
.end method

.method private isPreOApplication(Ljava/lang/String;)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;

    .line 742
    const/4 v0, 0x1

    :try_start_1
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_5} :catch_22

    .line 745
    .local v1, "identityToken":J
    :try_start_5
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_1d

    .line 747
    .local v3, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_c
    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 748
    nop

    .line 747
    nop

    .line 750
    if-eqz v3, :cond_1c

    .line 751
    iget v5, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 752
    .local v5, "version":I
    const/16 v6, 0x1a

    if-ge v5, v6, :cond_1a

    goto :goto_1b

    :cond_1a
    move v0, v4

    :goto_1b
    return v0

    .line 754
    .end local v5    # "version":I
    :cond_1c
    return v0

    .line 747
    .end local v3    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :catchall_1d
    move-exception v3

    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v3
    :try_end_22
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_22} :catch_22

    .line 755
    .end local v1    # "identityToken":J
    :catch_22
    move-exception v1

    .line 756
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "AccountManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package not found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    return v0
.end method

.method private isPrivileged(I)Z
    .registers 13
    .param p1, "callingUid"    # I

    .line 5414
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5416
    .local v0, "identityToken":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 5417
    .local v2, "packages":[Ljava/lang/String;
    const/4 v3, 0x0

    if-nez v2, :cond_28

    .line 5418
    const-string v4, "AccountManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No packages for callingUid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_69

    .line 5419
    nop

    .line 5435
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5419
    return v3

    .line 5421
    :cond_28
    :try_start_28
    array-length v4, v2

    move v5, v3

    :goto_2a
    if-ge v5, v4, :cond_63

    aget-object v6, v2, v5
    :try_end_2e
    .catchall {:try_start_28 .. :try_end_2e} :catchall_69

    .line 5423
    .local v6, "name":Ljava/lang/String;
    :try_start_2e
    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 5424
    invoke-virtual {v7, v6, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 5425
    .local v7, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v7, :cond_44

    iget-object v8, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->privateFlags:I
    :try_end_3a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2e .. :try_end_3a} :catch_45
    .catchall {:try_start_2e .. :try_end_3a} :catchall_69

    and-int/lit8 v8, v8, 0x8

    if-eqz v8, :cond_44

    .line 5428
    nop

    .line 5435
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5428
    const/4 v3, 0x1

    return v3

    .line 5432
    .end local v7    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_44
    goto :goto_60

    .line 5430
    :catch_45
    move-exception v7

    .line 5431
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_46
    const-string v8, "AccountManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package not found "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catchall {:try_start_46 .. :try_end_60} :catchall_69

    .line 5421
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_60
    add-int/lit8 v5, v5, 0x1

    goto :goto_2a

    .line 5435
    :cond_63
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5436
    nop

    .line 5435
    nop

    .line 5437
    return v3

    .line 5435
    .end local v2    # "packages":[Ljava/lang/String;
    :catchall_69
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private isProfileOwner(I)Z
    .registers 4
    .param p1, "uid"    # I

    .line 5743
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 5744
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 5745
    .local v0, "dpmi":Landroid/app/admin/DevicePolicyManagerInternal;
    if-eqz v0, :cond_13

    const/4 v1, -0x1

    .line 5746
    invoke-virtual {v0, p1, v1}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveAdminWithPolicy(II)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    .line 5745
    :goto_14
    return v1
.end method

.method private isSpecialPackageKey(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1054
    const-string v0, "android:accounts:key_legacy_visible"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "android:accounts:key_legacy_not_visible"

    .line 1055
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    .line 1054
    :goto_14
    return v0
.end method

.method private isSystemUid(I)Z
    .registers 13
    .param p1, "callingUid"    # I

    .line 5668
    const/4 v0, 0x0

    .line 5669
    .local v0, "packages":[Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 5671
    .local v1, "ident":J
    :try_start_5
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 5672
    const/4 v3, 0x0

    if-eqz v0, :cond_3e

    .line 5673
    array-length v4, v0

    move v5, v3

    :goto_11
    if-ge v5, v4, :cond_54

    aget-object v6, v0, v5
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_59

    .line 5675
    .local v6, "name":Ljava/lang/String;
    const/4 v7, 0x1

    :try_start_16
    iget-object v8, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 5676
    invoke-virtual {v8, v6, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 5677
    .local v8, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v8, :cond_2a

    iget-object v9, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_22
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16 .. :try_end_22} :catch_2b
    .catchall {:try_start_16 .. :try_end_22} :catchall_59

    and-int/2addr v9, v7

    if-eqz v9, :cond_2a

    .line 5680
    nop

    .line 5690
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5680
    return v7

    .line 5684
    .end local v8    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_2a
    goto :goto_3b

    .line 5682
    :catch_2b
    move-exception v8

    .line 5683
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2c
    const-string v9, "AccountManagerService"

    const-string v10, "Could not find package [%s]"

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v6, v7, v3

    invoke-static {v10, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5673
    .end local v6    # "name":Ljava/lang/String;
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_3b
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 5687
    :cond_3e
    const-string v4, "AccountManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No known packages with uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54
    .catchall {:try_start_2c .. :try_end_54} :catchall_59

    .line 5690
    :cond_54
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5691
    nop

    .line 5692
    return v3

    .line 5690
    :catchall_59
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private isVisible(I)Z
    .registers 4
    .param p1, "visibility"    # I

    .line 786
    const/4 v0, 0x1

    if-eq p1, v0, :cond_9

    const/4 v1, 0x2

    if-ne p1, v1, :cond_7

    goto :goto_9

    :cond_7
    const/4 v0, 0x0

    nop

    :cond_9
    :goto_9
    return v0
.end method

.method static synthetic lambda$grantAppPermission$3(Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;Landroid/accounts/Account;I)V
    .registers 3
    .param p0, "listener"    # Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "uid"    # I

    .line 5795
    invoke-interface {p0, p1, p2}, Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;->onAppPermissionChanged(Landroid/accounts/Account;I)V

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/accounts/AccountManagerService;I)V
    .registers 15
    .param p1, "uid"    # I

    .line 381
    const/4 v0, 0x0

    .line 382
    .local v0, "accounts":[Landroid/accounts/Account;
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 383
    .local v1, "packageNames":[Ljava/lang/String;
    if-eqz v1, :cond_57

    .line 384
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 385
    .local v2, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 387
    .local v3, "identity":J
    :try_start_11
    array-length v5, v1
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_50

    const/4 v6, 0x0

    move-object v7, v0

    move v0, v6

    .end local v0    # "accounts":[Landroid/accounts/Account;
    .local v7, "accounts":[Landroid/accounts/Account;
    :goto_15
    if-ge v0, v5, :cond_4a

    :try_start_17
    aget-object v8, v1, v0

    .line 390
    .local v8, "packageName":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v10, "android.permission.GET_ACCOUNTS"

    invoke-virtual {v9, v10, v8}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_24

    .line 393
    goto :goto_45

    .line 396
    :cond_24
    if-nez v7, :cond_38

    .line 397
    const/4 v9, 0x0

    const-string v10, "android"

    invoke-virtual {p0, v9, v2, v10}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v9

    move-object v7, v9

    .line 398
    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v9
    :try_end_32
    .catchall {:try_start_17 .. :try_end_32} :catchall_48

    if-eqz v9, :cond_38

    .line 409
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 399
    return-void

    .line 403
    :cond_38
    :try_start_38
    array-length v9, v7

    move v10, v6

    :goto_3a
    if-ge v10, v9, :cond_45

    aget-object v11, v7, v10

    .line 404
    .local v11, "account":Landroid/accounts/Account;
    const/4 v12, 0x1

    invoke-direct {p0, v11, p1, v8, v12}, Lcom/android/server/accounts/AccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;ILjava/lang/String;Z)V
    :try_end_42
    .catchall {:try_start_38 .. :try_end_42} :catchall_48

    .line 403
    .end local v11    # "account":Landroid/accounts/Account;
    add-int/lit8 v10, v10, 0x1

    goto :goto_3a

    .line 387
    .end local v8    # "packageName":Ljava/lang/String;
    :cond_45
    :goto_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 409
    :catchall_48
    move-exception v0

    goto :goto_53

    :cond_4a
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 410
    nop

    .line 412
    move-object v0, v7

    goto :goto_57

    .line 409
    .end local v7    # "accounts":[Landroid/accounts/Account;
    .restart local v0    # "accounts":[Landroid/accounts/Account;
    :catchall_50
    move-exception v5

    move-object v7, v0

    move-object v0, v5

    .end local v0    # "accounts":[Landroid/accounts/Account;
    .restart local v7    # "accounts":[Landroid/accounts/Account;
    :goto_53
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 412
    .end local v2    # "userId":I
    .end local v3    # "identity":J
    .end local v7    # "accounts":[Landroid/accounts/Account;
    .restart local v0    # "accounts":[Landroid/accounts/Account;
    :cond_57
    :goto_57
    return-void
.end method

.method public static synthetic lambda$onUnlockUser$1(Lcom/android/server/accounts/AccountManagerService;I)V
    .registers 2
    .param p1, "userId"    # I

    .line 1424
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->syncSharedAccounts(I)V

    return-void
.end method

.method public static synthetic lambda$removeAccountInternal$2(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;I)V
    .registers 4
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "uid"    # I

    .line 2372
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;IZ)V

    return-void
.end method

.method static synthetic lambda$revokeAppPermission$4(Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;Landroid/accounts/Account;I)V
    .registers 3
    .param p0, "listener"    # Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "uid"    # I

    .line 5836
    invoke-interface {p0, p1, p2}, Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;->onAppPermissionChanged(Landroid/accounts/Account;I)V

    return-void
.end method

.method private logRecord(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "tableName"    # Ljava/lang/String;

    .line 5098
    const-wide/16 v3, -0x1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 5099
    return-void
.end method

.method private logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .registers 13
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "tableName"    # Ljava/lang/String;
    .param p3, "accountId"    # J
    .param p5, "userAccount"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 5110
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getCallingUid()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    .line 5111
    return-void
.end method

.method private logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V
    .registers 18
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "tableName"    # Ljava/lang/String;
    .param p3, "accountId"    # J
    .param p5, "userAccount"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p6, "callingUid"    # I

    .line 5165
    new-instance v10, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;

    .line 5166
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->debugDbInsertionPoint:I
    invoke-static/range {p5 .. p5}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$3700(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v0

    int-to-long v8, v0

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v9}, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;-><init>(Lcom/android/server/accounts/AccountManagerService;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;IJ)V

    .line 5167
    .local v0, "logTask":Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->debugDbInsertionPoint:I
    invoke-static/range {p5 .. p5}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$3700(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x40

    move-object/from16 v2, p5

    # setter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->debugDbInsertionPoint:I
    invoke-static {v2, v1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$3702(Lcom/android/server/accounts/AccountManagerService$UserAccounts;I)I

    .line 5169
    move-object v1, p0

    iget-object v3, v1, Lcom/android/server/accounts/AccountManagerService;->mHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    invoke-virtual {v3, v0}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;->post(Ljava/lang/Runnable;)Z

    .line 5170
    return-void
.end method

.method private logRecordWithUid(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 12
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "tableName"    # Ljava/lang/String;
    .param p4, "uid"    # I

    .line 5102
    const-wide/16 v3, -0x1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v5, p1

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    .line 5103
    return-void
.end method

.method private needToStartChooseAccountActivity([Landroid/accounts/Account;Ljava/lang/String;)Z
    .registers 9
    .param p1, "accounts"    # [Landroid/accounts/Account;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 4492
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_6

    return v1

    .line 4493
    :cond_6
    array-length v0, p1

    if-le v0, v2, :cond_a

    return v2

    .line 4494
    :cond_a
    aget-object v0, p1, v1

    .line 4495
    .local v0, "account":Landroid/accounts/Account;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v3

    .line 4496
    .local v3, "userAccounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-direct {p0, v0, p2, v3}, Lcom/android/server/accounts/AccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 4497
    .local v4, "visibility":I
    const/4 v5, 0x4

    if-ne v4, v5, :cond_20

    return v2

    .line 4498
    :cond_20
    return v1
.end method

.method private newGrantCredentialsPermissionIntent(Landroid/accounts/Account;Ljava/lang/String;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Z)Landroid/content/Intent;
    .registers 10
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "response"    # Landroid/accounts/AccountAuthenticatorResponse;
    .param p5, "authTokenType"    # Ljava/lang/String;
    .param p6, "startInNewTask"    # Z

    .line 3079
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/accounts/GrantCredentialsPermissionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3081
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p6, :cond_10

    .line 3085
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3087
    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1, p5, p3}, Lcom/android/server/accounts/AccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/accounts/AccountManagerService$NotificationId;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3088
    if-eqz p2, :cond_22

    move-object v2, p2

    goto :goto_24

    :cond_22
    const-string v2, ""

    :goto_24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3087
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3089
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3090
    const-string v1, "authTokenType"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3091
    const-string/jumbo v1, "response"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3092
    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3094
    return-object v0
.end method

.method private newRequestAccountAccessIntent(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/RemoteCallback;)Landroid/content/Intent;
    .registers 16
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "callback"    # Landroid/os/RemoteCallback;

    .line 4044
    new-instance v4, Landroid/accounts/AccountAuthenticatorResponse;

    new-instance v0, Lcom/android/server/accounts/AccountManagerService$18;

    move-object v5, v0

    move-object v6, p0

    move-object v7, p1

    move v8, p3

    move-object v9, p2

    move-object v10, p4

    invoke-direct/range {v5 .. v10}, Lcom/android/server/accounts/AccountManagerService$18;-><init>(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;ILjava/lang/String;Landroid/os/RemoteCallback;)V

    invoke-direct {v4, v0}, Landroid/accounts/AccountAuthenticatorResponse;-><init>(Landroid/accounts/IAccountAuthenticatorResponse;)V

    const-string v5, "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/accounts/AccountManagerService;->newGrantCredentialsPermissionIntent(Landroid/accounts/Account;Ljava/lang/String;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private notifyPackage(Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 972
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.accounts.action.VISIBLE_ACCOUNTS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 973
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 974
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 975
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static {p2}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 976
    return-void
.end method

.method private onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    .registers 7
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "result"    # Landroid/os/Bundle;

    .line 2722
    if-nez p2, :cond_f

    .line 2723
    const-string v0, "AccountManagerService"

    const-string/jumbo v1, "the result is unexpectedly null"

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2725
    :cond_f
    const-string v0, "AccountManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 2726
    const-string v0, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " calling onResult() on response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2730
    :cond_39
    :try_start_39
    invoke-interface {p1, p2}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_3c} :catch_3d

    .line 2737
    goto :goto_4d

    .line 2731
    :catch_3d
    move-exception v0

    .line 2734
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AccountManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 2735
    const-string v1, "AccountManagerService"

    const-string v2, "failure while notifying response"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2738
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4d
    :goto_4d
    return-void
.end method

.method private packageExistsForUser(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1038
    :try_start_0
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_4} :catch_13

    .line 1040
    .local v0, "identityToken":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 1041
    const/4 v2, 0x1

    .line 1043
    :try_start_a
    invoke-static {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1041
    return v2

    .line 1043
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v2
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_13} :catch_13

    .line 1045
    .end local v0    # "identityToken":J
    :catch_13
    move-exception v0

    .line 1046
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    return v1
.end method

.method private permissionIsGranted(Landroid/accounts/Account;Ljava/lang/String;II)Z
    .registers 9
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "callerUid"    # I
    .param p4, "userId"    # I

    .line 5442
    invoke-static {p3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/16 v3, 0x3e8

    if-ne v0, v3, :cond_2e

    .line 5443
    const-string v0, "AccountManagerService"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 5444
    const-string v0, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Access to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " granted calling uid is system"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5446
    :cond_2d
    return v1

    .line 5449
    :cond_2e
    invoke-direct {p0, p3}, Lcom/android/server/accounts/AccountManagerService;->isPrivileged(I)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 5450
    const-string v0, "AccountManagerService"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 5451
    const-string v0, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Access to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " granted calling uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " privileged"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5454
    :cond_5f
    return v1

    .line 5456
    :cond_60
    if-eqz p1, :cond_96

    iget-object v0, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v0, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_96

    .line 5457
    const-string v0, "AccountManagerService"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_95

    .line 5458
    const-string v0, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Access to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " granted calling uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " manages the account"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5461
    :cond_95
    return v1

    .line 5463
    :cond_96
    if-eqz p1, :cond_ca

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->hasExplicitlyGrantedPermission(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_ca

    .line 5464
    const-string v0, "AccountManagerService"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_c9

    .line 5465
    const-string v0, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Access to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " granted calling uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " user granted access"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5468
    :cond_c9
    return v1

    .line 5471
    :cond_ca
    const-string v0, "AccountManagerService"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_f0

    .line 5472
    const-string v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Access to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not granted for uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5475
    :cond_f0
    const/4 v0, 0x0

    return v0
.end method

.method private purgeOldGrants(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .registers 11
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 1351
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1352
    :try_start_3
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_55

    .line 1353
    :try_start_6
    iget-object v2, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v2}, Lcom/android/server/accounts/AccountsDb;->findAllUidGrants()Ljava/util/List;

    move-result-object v2

    .line 1354
    .local v2, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1355
    .local v4, "uid":I
    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2a

    const/4 v5, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v5, 0x0

    .line 1356
    .local v5, "packageExists":Z
    :goto_2b
    if-eqz v5, :cond_2e

    .line 1357
    goto :goto_10

    .line 1359
    :cond_2e
    const-string v6, "AccountManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deleting grants for UID "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " because its package is no longer installed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    iget-object v6, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v6, v4}, Lcom/android/server/accounts/AccountsDb;->deleteGrantsByUid(I)Z

    .line 1362
    .end local v4    # "uid":I
    .end local v5    # "packageExists":Z
    goto :goto_10

    .line 1363
    .end local v2    # "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_4f
    monitor-exit v1
    :try_end_50
    .catchall {:try_start_6 .. :try_end_50} :catchall_52

    .line 1364
    :try_start_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_55

    .line 1365
    return-void

    .line 1363
    :catchall_52
    move-exception v2

    :try_start_53
    monitor-exit v1
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    :try_start_54
    throw v2

    .line 1364
    :catchall_55
    move-exception v1

    monitor-exit v0
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_55

    throw v1
.end method

.method private purgeOldGrantsAll()V
    .registers 4

    .line 1343
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1344
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 1345
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    invoke-direct {p0, v2}, Lcom/android/server/accounts/AccountManagerService;->purgeOldGrants(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 1344
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1347
    .end local v1    # "i":I
    :cond_1a
    monitor-exit v0

    .line 1348
    return-void

    .line 1347
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method private purgeUserData(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 1396
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1397
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 1398
    .local v1, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1399
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mLocalUnlockedUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 1400
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_34

    .line 1401
    if-eqz v1, :cond_33

    .line 1402
    iget-object v0, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1403
    :try_start_1b
    iget-object v2, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_30

    .line 1404
    :try_start_1e
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->statementForLogging:Landroid/database/sqlite/SQLiteStatement;
    invoke-static {v1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1400(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1405
    iget-object v3, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v3}, Lcom/android/server/accounts/AccountsDb;->close()V

    .line 1406
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_1e .. :try_end_2b} :catchall_2d

    .line 1407
    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_30

    goto :goto_33

    .line 1406
    :catchall_2d
    move-exception v3

    :try_start_2e
    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    :try_start_2f
    throw v3

    .line 1407
    :catchall_30
    move-exception v2

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_30

    throw v2

    .line 1409
    :cond_33
    :goto_33
    return-void

    .line 1400
    .end local v1    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v1
.end method

.method private readPasswordInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/String;
    .registers 8
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;

    .line 1479
    const/4 v0, 0x0

    if-nez p2, :cond_4

    .line 1480
    return-object v0

    .line 1482
    :cond_4
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 1483
    const-string v1, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Password is not available - user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " data is locked"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    return-object v0

    .line 1487
    :cond_2e
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1488
    :try_start_31
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_44

    .line 1489
    :try_start_34
    iget-object v2, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    iget-object v3, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v4, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 1490
    invoke-virtual {v2, v3, v4}, Lcom/android/server/accounts/AccountsDb;->findAccountPasswordByNameAndType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_34 .. :try_end_3f} :catchall_41

    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_44

    .line 1489
    return-object v2

    .line 1491
    :catchall_41
    move-exception v2

    :try_start_42
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    :try_start_43
    throw v2

    .line 1492
    :catchall_44
    move-exception v1

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_44

    throw v1
.end method

.method private readPreviousNameInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/String;
    .registers 8
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;

    .line 1514
    if-nez p2, :cond_4

    .line 1515
    const/4 v0, 0x0

    return-object v0

    .line 1517
    :cond_4
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1518
    :try_start_7
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_38

    .line 1519
    :try_start_a
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->previousNameCache:Ljava/util/HashMap;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1500(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/atomic/AtomicReference;

    .line 1520
    .local v2, "previousNameRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    if-nez v2, :cond_2c

    .line 1521
    iget-object v3, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v3, p2}, Lcom/android/server/accounts/AccountsDb;->findDeAccountPreviousName(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v3

    .line 1522
    .local v3, "previousName":Ljava/lang/String;
    new-instance v4, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v4, v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    move-object v2, v4

    .line 1523
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->previousNameCache:Ljava/util/HashMap;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1500(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1524
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_a .. :try_end_2a} :catchall_35

    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_38

    return-object v3

    .line 1526
    .end local v3    # "previousName":Ljava/lang/String;
    :cond_2c
    :try_start_2c
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_35

    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_38

    return-object v3

    .line 1528
    .end local v2    # "previousNameRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    :catchall_35
    move-exception v2

    :try_start_36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    :try_start_37
    throw v2

    .line 1529
    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method private readUserDataInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "key"    # Ljava/lang/String;

    .line 6099
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6100
    :try_start_3
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userDataCache:Ljava/util/Map;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1100(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 6101
    .local v1, "userDataForAccount":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_41

    .line 6103
    if-nez v1, :cond_3a

    .line 6104
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6105
    :try_start_13
    iget-object v2, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_37

    .line 6106
    :try_start_16
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userDataCache:Ljava/util/Map;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1100(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    move-object v1, v3

    .line 6107
    if-nez v1, :cond_31

    .line 6109
    iget-object v3, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v3, p2}, Lcom/android/server/accounts/AccountsDb;->findUserExtrasForAccount(Landroid/accounts/Account;)Ljava/util/Map;

    move-result-object v3

    move-object v1, v3

    .line 6110
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userDataCache:Ljava/util/Map;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1100(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6112
    :cond_31
    monitor-exit v2
    :try_end_32
    .catchall {:try_start_16 .. :try_end_32} :catchall_34

    .line 6113
    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_37

    goto :goto_3a

    .line 6112
    :catchall_34
    move-exception v3

    :try_start_35
    monitor-exit v2
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    :try_start_36
    throw v3

    .line 6113
    :catchall_37
    move-exception v2

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_37

    throw v2

    .line 6115
    :cond_3a
    :goto_3a
    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 6101
    .end local v1    # "userDataForAccount":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_41
    move-exception v1

    :try_start_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v1
.end method

.method private registerAccountListener([Ljava/lang/String;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .registers 12
    .param p1, "accountTypes"    # [Ljava/lang/String;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .param p3, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 899
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->mReceiversForType:Ljava/util/Map;
    invoke-static {p3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1000(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 900
    if-nez p1, :cond_d

    .line 902
    const/4 v1, 0x0

    :try_start_8
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    move-object p1, v1

    .line 904
    :cond_d
    array-length v1, p1

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_45

    aget-object v3, p1, v2

    .line 905
    .local v3, "type":Ljava/lang/String;
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->mReceiversForType:Ljava/util/Map;
    invoke-static {p3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1000(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 906
    .local v4, "receivers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez v4, :cond_2c

    .line 907
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object v4, v5

    .line 908
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->mReceiversForType:Ljava/util/Map;
    invoke-static {p3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1000(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 910
    :cond_2c
    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 911
    .local v5, "cnt":Ljava/lang/Integer;
    const/4 v6, 0x1

    if-eqz v5, :cond_3b

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v6, v7

    nop

    :cond_3b
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, p2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    .end local v3    # "type":Ljava/lang/String;
    .end local v4    # "receivers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v5    # "cnt":Ljava/lang/Integer;
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 913
    :cond_45
    monitor-exit v0

    .line 914
    return-void

    .line 913
    :catchall_47
    move-exception v1

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_8 .. :try_end_49} :catchall_47

    throw v1
.end method

.method private removeAccountFromCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)V
    .registers 9
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;

    .line 5841
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    iget-object v1, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/accounts/Account;

    .line 5842
    .local v0, "oldAccountsForType":[Landroid/accounts/Account;
    if-eqz v0, :cond_45

    .line 5843
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5844
    .local v1, "newAccountsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v2, :cond_23

    aget-object v4, v0, v3

    .line 5845
    .local v4, "curAccount":Landroid/accounts/Account;
    invoke-virtual {v4, p2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_20

    .line 5846
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5844
    .end local v4    # "curAccount":Landroid/accounts/Account;
    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 5849
    :cond_23
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 5850
    iget-object v2, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    iget-object v3, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_45

    .line 5852
    :cond_31
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/accounts/Account;

    .line 5853
    .local v2, "newAccountsForType":[Landroid/accounts/Account;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, [Landroid/accounts/Account;

    .line 5854
    iget-object v3, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    iget-object v4, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5857
    .end local v1    # "newAccountsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    .end local v2    # "newAccountsForType":[Landroid/accounts/Account;
    :cond_45
    :goto_45
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userDataCache:Ljava/util/Map;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1100(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5858
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->authTokenCache:Ljava/util/Map;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1200(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5859
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->previousNameCache:Ljava/util/HashMap;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1500(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5860
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->visibilityCache:Ljava/util/Map;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$900(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5861
    return-void
.end method

.method private removeAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;I)Z
    .registers 22
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "callingUid"    # I

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    .line 2294
    const/4 v1, 0x0

    .line 2295
    .local v1, "isChanged":Z
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v0

    invoke-direct {v7, v0}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    move-result v10

    .line 2296
    .local v10, "userUnlocked":Z
    if-nez v10, :cond_38

    .line 2297
    const-string v0, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing account "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " while user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is still locked. CE data will be removed later"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2300
    :cond_38
    iget-object v11, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v11

    .line 2301
    :try_start_3b
    iget-object v12, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v12
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_1b1

    .line 2302
    :try_start_3e
    invoke-direct {v7, v9, v8}, Lcom/android/server/accounts/AccountManagerService;->getRequestingPackages(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v0

    move-object v13, v0

    .line 2304
    .local v13, "packagesToVisibility":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    nop

    .line 2305
    invoke-direct {v7, v9, v8}, Lcom/android/server/accounts/AccountManagerService;->getAccountRemovedReceivers(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/List;

    move-result-object v0

    move-object v14, v0

    .line 2306
    .local v14, "accountRemovedReceivers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->beginTransaction()V
    :try_end_4e
    .catchall {:try_start_3e .. :try_end_4e} :catchall_1ae

    .line 2309
    const-wide/16 v2, -0x1

    .line 2311
    .local v2, "accountId":J
    :try_start_50
    iget-object v0, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0, v9}, Lcom/android/server/accounts/AccountsDb;->findDeAccountId(Landroid/accounts/Account;)J

    move-result-wide v4
    :try_end_56
    .catchall {:try_start_50 .. :try_end_56} :catchall_1a2

    .line 2312
    .end local v2    # "accountId":J
    .local v4, "accountId":J
    const-wide/16 v2, 0x0

    cmp-long v0, v4, v2

    if-ltz v0, :cond_68

    .line 2313
    :try_start_5c
    iget-object v0, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0, v4, v5}, Lcom/android/server/accounts/AccountsDb;->deleteDeAccount(J)Z

    move-result v0
    :try_end_62
    .catchall {:try_start_5c .. :try_end_62} :catchall_64

    move v1, v0

    goto :goto_68

    .line 2325
    :catchall_64
    move-exception v0

    move v15, v1

    goto/16 :goto_1a5

    .line 2317
    .end local v1    # "isChanged":Z
    .local v15, "isChanged":Z
    :cond_68
    :goto_68
    move v15, v1

    if-eqz v10, :cond_7e

    .line 2318
    :try_start_6b
    iget-object v0, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0, v9}, Lcom/android/server/accounts/AccountsDb;->findCeAccountId(Landroid/accounts/Account;)J

    move-result-wide v0

    .line 2319
    .local v0, "ceAccountId":J
    cmp-long v2, v0, v2

    if-ltz v2, :cond_7e

    .line 2320
    iget-object v2, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/accounts/AccountsDb;->deleteCeAccount(J)Z
    :try_end_7a
    .catchall {:try_start_6b .. :try_end_7a} :catchall_7b

    .end local v0    # "ceAccountId":J
    goto :goto_7e

    .line 2325
    :catchall_7b
    move-exception v0

    goto/16 :goto_1a5

    .line 2323
    :cond_7e
    :goto_7e
    :try_start_7e
    iget-object v0, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->setTransactionSuccessful()V
    :try_end_83
    .catchall {:try_start_7e .. :try_end_83} :catchall_19e

    .line 2325
    :try_start_83
    iget-object v0, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V
    :try_end_88
    .catchall {:try_start_83 .. :try_end_88} :catchall_19a

    .line 2326
    nop

    .line 2327
    const/4 v0, 0x1

    if-eqz v15, :cond_f7

    .line 2328
    :try_start_8c
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accounts/AccountManagerService;->removeAccountFromCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)V

    .line 2329
    nop

    .line 2330
    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 2329
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_98
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2331
    .local v2, "packageToVisibility":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v0, :cond_bd

    .line 2332
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v6, 0x2

    if-ne v3, v6, :cond_c6

    .line 2334
    :cond_bd
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v7, v3, v8}, Lcom/android/server/accounts/AccountManagerService;->notifyPackage(Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 2336
    .end local v2    # "packageToVisibility":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_c6
    goto :goto_98

    .line 2339
    :cond_c7
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v1

    invoke-direct {v7, v1}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V

    .line 2340
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2341
    .local v2, "packageName":Ljava/lang/String;
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v3

    invoke-direct {v7, v9, v2, v3}, Lcom/android/server/accounts/AccountManagerService;->sendAccountRemovedBroadcast(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 2342
    .end local v2    # "packageName":Ljava/lang/String;
    goto :goto_d2

    .line 2343
    :cond_e6
    if-eqz v10, :cond_eb

    sget-object v1, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_ACCOUNT_REMOVE:Ljava/lang/String;

    goto :goto_ed

    .line 2344
    :cond_eb
    sget-object v1, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_ACCOUNT_REMOVE_DE:Ljava/lang/String;

    :goto_ed
    move-object v2, v1

    .line 2345
    .local v2, "action":Ljava/lang/String;
    const-string v3, "accounts"

    move-object v1, v7

    move-wide/from16 v16, v4

    .end local v4    # "accountId":J
    .local v16, "accountId":J
    move-object v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    :try_end_f7
    .catchall {:try_start_8c .. :try_end_f7} :catchall_1ab

    .line 2347
    .end local v2    # "action":Ljava/lang/String;
    .end local v13    # "packagesToVisibility":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v14    # "accountRemovedReceivers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "accountId":J
    :cond_f7
    :try_start_f7
    monitor-exit v12
    :try_end_f8
    .catchall {:try_start_f7 .. :try_end_f8} :catchall_19a

    .line 2348
    :try_start_f8
    monitor-exit v11
    :try_end_f9
    .catchall {:try_start_f8 .. :try_end_f9} :catchall_195

    .line 2349
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2351
    .local v1, "id":J
    :try_start_fd
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v3

    .line 2352
    .local v3, "parentUserId":I
    invoke-direct {v7, v3}, Lcom/android/server/accounts/AccountManagerService;->canHaveProfile(I)Z

    move-result v4

    if-eqz v4, :cond_136

    .line 2354
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    .line 2355
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_113
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_136

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 2356
    .local v5, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v6

    if-eqz v6, :cond_133

    iget v6, v5, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    if-ne v3, v6, :cond_133

    .line 2357
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I
    :try_end_12b
    .catchall {:try_start_fd .. :try_end_12b} :catchall_18e

    move/from16 v13, p3

    :try_start_12d
    invoke-direct {v7, v9, v6, v13}, Lcom/android/server/accounts/AccountManagerService;->removeSharedAccountAsUser(Landroid/accounts/Account;II)Z
    :try_end_130
    .catchall {:try_start_12d .. :try_end_130} :catchall_131

    .end local v5    # "user":Landroid/content/pm/UserInfo;
    goto :goto_135

    .line 2362
    .end local v0    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v3    # "parentUserId":I
    :catchall_131
    move-exception v0

    goto :goto_191

    .line 2359
    .restart local v0    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v3    # "parentUserId":I
    :cond_133
    move/from16 v13, p3

    :goto_135
    goto :goto_113

    .line 2362
    .end local v0    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v3    # "parentUserId":I
    :cond_136
    move/from16 v13, p3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2363
    nop

    .line 2365
    if-eqz v15, :cond_18d

    .line 2366
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->credentialsPermissionNotificationIds:Ljava/util/HashMap;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1700(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3

    .line 2368
    :try_start_143
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->credentialsPermissionNotificationIds:Ljava/util/HashMap;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1700(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_188

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 2369
    .local v4, "key":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v9, v5}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_187

    const-string v5, "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE"

    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 2370
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_187

    .line 2371
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 2372
    .local v5, "uid":I
    iget-object v6, v7, Lcom/android/server/accounts/AccountManagerService;->mHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    new-instance v11, Lcom/android/server/accounts/-$$Lambda$AccountManagerService$lqbNdAUKUSipmpqby9oIO8JlNTQ;

    invoke-direct {v11, v7, v9, v5}, Lcom/android/server/accounts/-$$Lambda$AccountManagerService$lqbNdAUKUSipmpqby9oIO8JlNTQ;-><init>(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;I)V

    invoke-virtual {v6, v11}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;->post(Ljava/lang/Runnable;)Z

    .line 2375
    .end local v4    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    .end local v5    # "uid":I
    :cond_187
    goto :goto_14f

    .line 2376
    :cond_188
    monitor-exit v3

    goto :goto_18d

    :catchall_18a
    move-exception v0

    monitor-exit v3
    :try_end_18c
    .catchall {:try_start_143 .. :try_end_18c} :catchall_18a

    throw v0

    .line 2379
    :cond_18d
    :goto_18d
    return v15

    .line 2362
    :catchall_18e
    move-exception v0

    move/from16 v13, p3

    :goto_191
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 2348
    .end local v1    # "id":J
    :catchall_195
    move-exception v0

    move/from16 v13, p3

    move v1, v15

    goto :goto_1b2

    .line 2347
    :catchall_19a
    move-exception v0

    move/from16 v13, p3

    goto :goto_1ac

    .line 2325
    .local v4, "accountId":J
    .restart local v13    # "packagesToVisibility":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v14    # "accountRemovedReceivers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_19e
    move-exception v0

    move-wide/from16 v16, v4

    .end local v4    # "accountId":J
    .restart local v16    # "accountId":J
    goto :goto_1a5

    .end local v15    # "isChanged":Z
    .end local v16    # "accountId":J
    .local v1, "isChanged":Z
    .local v2, "accountId":J
    :catchall_1a2
    move-exception v0

    move v15, v1

    move-wide v4, v2

    .end local v1    # "isChanged":Z
    .end local v2    # "accountId":J
    .restart local v4    # "accountId":J
    .restart local v15    # "isChanged":Z
    :goto_1a5
    :try_start_1a5
    iget-object v1, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v1}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    throw v0
    :try_end_1ab
    .catchall {:try_start_1a5 .. :try_end_1ab} :catchall_1ab

    .line 2347
    .end local v4    # "accountId":J
    .end local v13    # "packagesToVisibility":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v14    # "accountRemovedReceivers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_1ab
    move-exception v0

    .end local v15    # "isChanged":Z
    .restart local v1    # "isChanged":Z
    :goto_1ac
    move v1, v15

    goto :goto_1af

    :catchall_1ae
    move-exception v0

    :goto_1af
    :try_start_1af
    monitor-exit v12
    :try_end_1b0
    .catchall {:try_start_1af .. :try_end_1b0} :catchall_1ae

    :try_start_1b0
    throw v0

    .line 2348
    :catchall_1b1
    move-exception v0

    :goto_1b2
    monitor-exit v11
    :try_end_1b3
    .catchall {:try_start_1b0 .. :try_end_1b3} :catchall_1b1

    throw v0
.end method

.method private removeSharedAccountAsUser(Landroid/accounts/Account;II)Z
    .registers 15
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "callingUid"    # I

    .line 4422
    invoke-direct {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->handleIncomingUser(I)I

    move-result p2

    .line 4423
    invoke-virtual {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v7

    .line 4424
    .local v7, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    iget-object v0, v7, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0, p1}, Lcom/android/server/accounts/AccountsDb;->findSharedAccountId(Landroid/accounts/Account;)J

    move-result-wide v8

    .line 4425
    .local v8, "sharedTableAccountId":J
    iget-object v0, v7, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0, p1}, Lcom/android/server/accounts/AccountsDb;->deleteSharedAccount(Landroid/accounts/Account;)Z

    move-result v10

    .line 4426
    .local v10, "deleted":Z
    if-eqz v10, :cond_25

    .line 4427
    sget-object v1, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_ACCOUNT_REMOVE:Ljava/lang/String;

    const-string/jumbo v2, "shared_accounts"

    move-object v0, p0

    move-wide v3, v8

    move-object v5, v7

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    .line 4429
    invoke-direct {p0, v7, p1, p3}, Lcom/android/server/accounts/AccountManagerService;->removeAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;I)Z

    .line 4431
    :cond_25
    return v10
.end method

.method private removeVisibilityValuesForPackage(Ljava/lang/String;)V
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1368
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->isSpecialPackageKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1369
    return-void

    .line 1371
    :cond_7
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1372
    :try_start_a
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1373
    .local v1, "numberOfUsers":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    if-ge v2, v1, :cond_5d

    .line 1374
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :try_end_1b
    .catchall {:try_start_a .. :try_end_1b} :catchall_5f

    .line 1376
    .local v3, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :try_start_1b
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static {v3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v5

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I
    :try_end_24
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1b .. :try_end_24} :catch_25
    .catchall {:try_start_1b .. :try_end_24} :catchall_5f

    .line 1389
    goto :goto_54

    .line 1377
    :catch_25
    move-exception v4

    .line 1379
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_26
    iget-object v5, v3, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v5, p1}, Lcom/android/server/accounts/AccountsDb;->deleteAccountVisibilityForPackage(Ljava/lang/String;)Z

    .line 1380
    iget-object v5, v3, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_5f

    .line 1381
    :try_start_2e
    iget-object v6, v3, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_5a

    .line 1382
    :try_start_31
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->visibilityCache:Ljava/util/Map;
    invoke-static {v3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$900(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_52

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/accounts/Account;

    .line 1383
    .local v8, "account":Landroid/accounts/Account;
    nop

    .line 1384
    invoke-direct {p0, v8, v3}, Lcom/android/server/accounts/AccountManagerService;->getPackagesAndVisibilityForAccountLocked(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v9

    .line 1385
    .local v9, "accountVisibility":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v9, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1386
    .end local v8    # "account":Landroid/accounts/Account;
    .end local v9    # "accountVisibility":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_3d

    .line 1387
    :cond_52
    monitor-exit v6
    :try_end_53
    .catchall {:try_start_31 .. :try_end_53} :catchall_57

    .line 1388
    :try_start_53
    monitor-exit v5
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_5a

    .line 1373
    .end local v3    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 1387
    .restart local v3    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .restart local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_57
    move-exception v7

    :try_start_58
    monitor-exit v6
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    :try_start_59
    throw v7

    .line 1388
    :catchall_5a
    move-exception v6

    monitor-exit v5
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_5a

    :try_start_5c
    throw v6

    .line 1391
    .end local v1    # "numberOfUsers":I
    .end local v2    # "i":I
    .end local v3    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_5d
    monitor-exit v0

    .line 1392
    return-void

    .line 1391
    :catchall_5f
    move-exception v1

    monitor-exit v0
    :try_end_61
    .catchall {:try_start_5c .. :try_end_61} :catchall_5f

    throw v1
.end method

.method private renameAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Landroid/accounts/Account;
    .registers 22
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "accountToRename"    # Landroid/accounts/Account;
    .param p3, "newName"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 1999
    move-object/from16 v4, p3

    const/4 v5, 0x0

    .line 2009
    .local v5, "resultAccount":Landroid/accounts/Account;
    nop

    .line 2010
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accounts/AccountManagerService;->getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    move-result-object v0

    new-instance v6, Landroid/os/UserHandle;

    .line 2011
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    .line 2009
    invoke-direct {v1, v0, v6}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Landroid/os/UserHandle;)V

    .line 2012
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->credentialsPermissionNotificationIds:Ljava/util/HashMap;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1700(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v6

    monitor-enter v6

    .line 2014
    :try_start_1f
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->credentialsPermissionNotificationIds:Ljava/util/HashMap;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1700(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    .line 2015
    .local v7, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Landroid/util/Pair;

    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v8}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_59

    .line 2016
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->credentialsPermissionNotificationIds:Ljava/util/HashMap;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1700(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/accounts/AccountManagerService$NotificationId;

    .line 2017
    .local v8, "id":Lcom/android/server/accounts/AccountManagerService$NotificationId;
    new-instance v9, Landroid/os/UserHandle;

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v10

    invoke-direct {v9, v10}, Landroid/os/UserHandle;-><init>(I)V

    invoke-direct {v1, v8, v9}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Landroid/os/UserHandle;)V

    .line 2019
    .end local v7    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    .end local v8    # "id":Lcom/android/server/accounts/AccountManagerService$NotificationId;
    :cond_59
    goto :goto_2b

    .line 2020
    :cond_5a
    monitor-exit v6
    :try_end_5b
    .catchall {:try_start_1f .. :try_end_5b} :catchall_18f

    .line 2021
    iget-object v7, v2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2022
    :try_start_5e
    iget-object v6, v2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_18c

    .line 2023
    nop

    .line 2024
    :try_start_62
    invoke-direct {v1, v3, v2}, Lcom/android/server/accounts/AccountManagerService;->getAccountRemovedReceivers(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/List;

    move-result-object v0

    move-object v8, v0

    .line 2025
    .local v8, "accountRemovedReceivers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, v2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->beginTransaction()V

    .line 2026
    new-instance v0, Landroid/accounts/Account;

    iget-object v9, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {v0, v4, v9}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_73
    .catchall {:try_start_62 .. :try_end_73} :catchall_189

    move-object v9, v0

    .line 2028
    .local v9, "renamedAccount":Landroid/accounts/Account;
    :try_start_74
    iget-object v0, v2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0, v9}, Lcom/android/server/accounts/AccountsDb;->findCeAccountId(Landroid/accounts/Account;)J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v0, v10, v12

    const/4 v10, 0x0

    if-ltz v0, :cond_92

    .line 2029
    const-string v0, "AccountManagerService"

    const-string/jumbo v11, "renameAccount failed - account with new name already exists"

    invoke-static {v0, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_89
    .catchall {:try_start_74 .. :try_end_89} :catchall_182

    .line 2030
    nop

    .line 2047
    :try_start_8a
    iget-object v0, v2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    monitor-exit v6
    :try_end_90
    .catchall {:try_start_8a .. :try_end_90} :catchall_189

    :try_start_90
    monitor-exit v7
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_18c

    .line 2030
    return-object v10

    .line 2032
    :cond_92
    :try_start_92
    iget-object v0, v2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0, v3}, Lcom/android/server/accounts/AccountsDb;->findDeAccountId(Landroid/accounts/Account;)J

    move-result-wide v14

    .line 2033
    .local v14, "accountId":J
    cmp-long v0, v14, v12

    if-ltz v0, :cond_171

    .line 2034
    iget-object v0, v2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0, v14, v15, v4}, Lcom/android/server/accounts/AccountsDb;->renameCeAccount(JLjava/lang/String;)Z

    .line 2035
    iget-object v0, v2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    iget-object v11, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v14, v15, v4, v11}, Lcom/android/server/accounts/AccountsDb;->renameDeAccount(JLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_160

    .line 2037
    iget-object v0, v2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->setTransactionSuccessful()V
    :try_end_b0
    .catchall {:try_start_92 .. :try_end_b0} :catchall_182

    .line 2047
    .end local v14    # "accountId":J
    :try_start_b0
    iget-object v0, v2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 2048
    nop

    .line 2053
    invoke-direct {v1, v2, v9}, Lcom/android/server/accounts/AccountManagerService;->insertAccountIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v0

    .line 2059
    .end local v9    # "renamedAccount":Landroid/accounts/Account;
    .local v0, "renamedAccount":Landroid/accounts/Account;
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userDataCache:Ljava/util/Map;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1100(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    .line 2060
    .local v9, "tmpData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->authTokenCache:Ljava/util/Map;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1200(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    .line 2061
    .local v10, "tmpTokens":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->visibilityCache:Ljava/util/Map;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$900(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    .line 2062
    .local v11, "tmpVisibility":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accounts/AccountManagerService;->removeAccountFromCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)V

    .line 2067
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userDataCache:Ljava/util/Map;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1100(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2068
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->authTokenCache:Ljava/util/Map;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1200(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2069
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->visibilityCache:Ljava/util/Map;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$900(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2070
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->previousNameCache:Ljava/util/HashMap;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1500(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v12

    new-instance v13, Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v14, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {v13, v14}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v12, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2073
    move-object v5, v0

    .line 2075
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v12

    .line 2076
    .local v12, "parentUserId":I
    invoke-direct {v1, v12}, Lcom/android/server/accounts/AccountManagerService;->canHaveProfile(I)Z

    move-result v13

    if-eqz v13, :cond_139

    .line 2081
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v13

    .line 2082
    .local v13, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_116
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_139

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/UserInfo;

    .line 2083
    .local v15, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v15}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v16

    if-eqz v16, :cond_134

    move-object/from16 v17, v0

    iget v0, v15, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    .line 2083
    .end local v0    # "renamedAccount":Landroid/accounts/Account;
    .local v17, "renamedAccount":Landroid/accounts/Account;
    if-ne v0, v12, :cond_136

    .line 2085
    iget v0, v15, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v3, v4, v0}, Lcom/android/server/accounts/AccountManagerService;->renameSharedAccountAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    .line 2085
    .end local v15    # "user":Landroid/content/pm/UserInfo;
    goto :goto_136

    .line 2087
    .end local v17    # "renamedAccount":Landroid/accounts/Account;
    .restart local v0    # "renamedAccount":Landroid/accounts/Account;
    :cond_134
    move-object/from16 v17, v0

    .line 2082
    .end local v0    # "renamedAccount":Landroid/accounts/Account;
    .restart local v17    # "renamedAccount":Landroid/accounts/Account;
    :cond_136
    :goto_136
    move-object/from16 v0, v17

    goto :goto_116

    .line 2090
    .end local v13    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v17    # "renamedAccount":Landroid/accounts/Account;
    .restart local v0    # "renamedAccount":Landroid/accounts/Account;
    :cond_139
    move-object/from16 v17, v0

    .line 2090
    .end local v0    # "renamedAccount":Landroid/accounts/Account;
    .restart local v17    # "renamedAccount":Landroid/accounts/Account;
    invoke-direct {v1, v5, v2}, Lcom/android/server/accounts/AccountManagerService;->sendNotificationAccountUpdated(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 2091
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v0

    invoke-direct {v1, v0}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V

    .line 2092
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_149
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_15d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 2093
    .local v13, "packageName":Ljava/lang/String;
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v14

    invoke-direct {v1, v3, v13, v14}, Lcom/android/server/accounts/AccountManagerService;->sendAccountRemovedBroadcast(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 2094
    .end local v13    # "packageName":Ljava/lang/String;
    goto :goto_149

    .line 2095
    .end local v8    # "accountRemovedReceivers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "tmpData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "tmpTokens":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "tmpVisibility":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v12    # "parentUserId":I
    .end local v17    # "renamedAccount":Landroid/accounts/Account;
    :cond_15d
    monitor-exit v6
    :try_end_15e
    .catchall {:try_start_b0 .. :try_end_15e} :catchall_189

    .line 2096
    :try_start_15e
    monitor-exit v7
    :try_end_15f
    .catchall {:try_start_15e .. :try_end_15f} :catchall_18c

    .line 2097
    return-object v5

    .line 2039
    .restart local v8    # "accountRemovedReceivers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v9, "renamedAccount":Landroid/accounts/Account;
    .restart local v14    # "accountId":J
    :cond_160
    :try_start_160
    const-string v0, "AccountManagerService"

    const-string/jumbo v11, "renameAccount failed"

    invoke-static {v0, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_168
    .catchall {:try_start_160 .. :try_end_168} :catchall_182

    .line 2040
    nop

    .line 2047
    :try_start_169
    iget-object v0, v2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    monitor-exit v6
    :try_end_16f
    .catchall {:try_start_169 .. :try_end_16f} :catchall_189

    :try_start_16f
    monitor-exit v7
    :try_end_170
    .catchall {:try_start_16f .. :try_end_170} :catchall_18c

    .line 2040
    return-object v10

    .line 2043
    :cond_171
    :try_start_171
    const-string v0, "AccountManagerService"

    const-string/jumbo v11, "renameAccount failed - old account does not exist"

    invoke-static {v0, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_179
    .catchall {:try_start_171 .. :try_end_179} :catchall_182

    .line 2044
    nop

    .line 2047
    :try_start_17a
    iget-object v0, v2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    monitor-exit v6
    :try_end_180
    .catchall {:try_start_17a .. :try_end_180} :catchall_189

    :try_start_180
    monitor-exit v7
    :try_end_181
    .catchall {:try_start_180 .. :try_end_181} :catchall_18c

    .line 2044
    return-object v10

    .line 2047
    .end local v14    # "accountId":J
    :catchall_182
    move-exception v0

    :try_start_183
    iget-object v10, v2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v10}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    throw v0

    .line 2095
    .end local v8    # "accountRemovedReceivers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "renamedAccount":Landroid/accounts/Account;
    :catchall_189
    move-exception v0

    monitor-exit v6
    :try_end_18b
    .catchall {:try_start_183 .. :try_end_18b} :catchall_189

    :try_start_18b
    throw v0

    .line 2096
    :catchall_18c
    move-exception v0

    monitor-exit v7
    :try_end_18e
    .catchall {:try_start_18b .. :try_end_18e} :catchall_18c

    throw v0

    .line 2020
    :catchall_18f
    move-exception v0

    :try_start_190
    monitor-exit v6
    :try_end_191
    .catchall {:try_start_190 .. :try_end_191} :catchall_18f

    throw v0
.end method

.method private resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Integer;
    .registers 11
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 667
    const-string/jumbo v0, "packageName cannot be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    const/4 v0, -0x1

    .line 670
    .local v0, "uid":I
    :try_start_7
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_b} :catch_a7

    .line 672
    .local v1, "identityToken":J
    :try_start_b
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static {p3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v4

    invoke-virtual {v3, p2, v4}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v3
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_a2

    move v0, v3

    .line 674
    :try_start_16
    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V
    :try_end_19
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16 .. :try_end_19} :catch_a7

    .line 675
    nop

    .line 679
    .end local v1    # "identityToken":J
    nop

    .line 682
    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_29

    .line 683
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 686
    :cond_29
    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 687
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static {p3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v3

    invoke-direct {p0, v1, v0, v3}, Lcom/android/server/accounts/AccountManagerService;->checkPackageSignature(Ljava/lang/String;II)I

    move-result v1

    .line 690
    .local v1, "signatureCheckResult":I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_3b

    .line 691
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .line 695
    :cond_3b
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->getAccountVisibilityFromCache(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v3

    .line 697
    .local v3, "visibility":I
    if-eqz v3, :cond_46

    .line 698
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .line 701
    :cond_46
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static {p3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v4

    const-string v5, "android.permission.GET_ACCOUNTS_PRIVILEGED"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p2, v0, v4, v5}, Lcom/android/server/accounts/AccountManagerService;->isPermittedForPackage(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v4

    .line 705
    .local v4, "isPrivileged":Z
    invoke-direct {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->isProfileOwner(I)Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 706
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .line 709
    :cond_5f
    invoke-direct {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->isPreOApplication(Ljava/lang/String;)Z

    move-result v2

    .line 710
    .local v2, "preO":Z
    if-nez v1, :cond_94

    if-eqz v2, :cond_71

    .line 711
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static {p3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v5

    invoke-direct {p0, p2, v0, v5}, Lcom/android/server/accounts/AccountManagerService;->checkGetAccountsPermission(Ljava/lang/String;II)Z

    move-result v5

    if-nez v5, :cond_94

    .line 712
    :cond_71
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static {p3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v5

    invoke-direct {p0, p2, v0, v5}, Lcom/android/server/accounts/AccountManagerService;->checkReadContactsPermission(Ljava/lang/String;II)Z

    move-result v5

    if-eqz v5, :cond_87

    iget-object v5, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 713
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static {p3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/android/server/accounts/AccountManagerService;->accountTypeManagesContacts(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_94

    :cond_87
    if-eqz v4, :cond_8a

    goto :goto_94

    .line 723
    :cond_8a
    const-string v5, "android:accounts:key_legacy_not_visible"

    invoke-direct {p0, p1, v5, p3}, Lcom/android/server/accounts/AccountManagerService;->getAccountVisibilityFromCache(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v3

    .line 725
    if-nez v3, :cond_9d

    .line 726
    const/4 v3, 0x4

    goto :goto_9d

    .line 717
    :cond_94
    :goto_94
    const-string v5, "android:accounts:key_legacy_visible"

    invoke-direct {p0, p1, v5, p3}, Lcom/android/server/accounts/AccountManagerService;->getAccountVisibilityFromCache(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v3

    .line 719
    if-nez v3, :cond_9d

    .line 720
    const/4 v3, 0x2

    .line 729
    :cond_9d
    :goto_9d
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    return-object v5

    .line 674
    .end local v2    # "preO":Z
    .end local v3    # "visibility":I
    .end local v4    # "isPrivileged":Z
    .local v1, "identityToken":J
    :catchall_a2
    move-exception v3

    :try_start_a3
    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v3
    :try_end_a7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a3 .. :try_end_a7} :catch_a7

    .line 676
    .end local v1    # "identityToken":J
    :catch_a7
    move-exception v1

    .line 677
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "AccountManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package not found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method private revokeAppPermission(Landroid/accounts/Account;Ljava/lang/String;I)V
    .registers 15
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 5808
    if-eqz p1, :cond_74

    if-nez p2, :cond_5

    goto :goto_74

    .line 5812
    :cond_5
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 5813
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    iget-object v1, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5814
    :try_start_10
    iget-object v2, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_71

    .line 5815
    :try_start_13
    iget-object v3, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v3}, Lcom/android/server/accounts/AccountsDb;->beginTransaction()V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_6e

    .line 5817
    :try_start_18
    iget-object v3, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v3, p1}, Lcom/android/server/accounts/AccountsDb;->findDeAccountId(Landroid/accounts/Account;)J

    move-result-wide v3

    .line 5818
    .local v3, "accountId":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-ltz v5, :cond_31

    .line 5819
    iget-object v5, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    int-to-long v9, p3

    move-wide v6, v3

    move-object v8, p2

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/accounts/AccountsDb;->deleteGrantsByAccountIdAuthTokenTypeAndUid(JLjava/lang/String;J)Z

    .line 5821
    iget-object v5, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v5}, Lcom/android/server/accounts/AccountsDb;->setTransactionSuccessful()V
    :try_end_31
    .catchall {:try_start_18 .. :try_end_31} :catchall_67

    .line 5824
    .end local v3    # "accountId":J
    :cond_31
    :try_start_31
    iget-object v3, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v3}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 5825
    nop

    .line 5827
    nop

    .line 5828
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    move-result-object v3

    .line 5829
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    .line 5827
    invoke-direct {p0, v3, v4}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Landroid/os/UserHandle;)V

    .line 5830
    monitor-exit v2
    :try_end_48
    .catchall {:try_start_31 .. :try_end_48} :catchall_6e

    .line 5831
    :try_start_48
    monitor-exit v1
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_71

    .line 5835
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mAppPermissionChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_66

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;

    .line 5836
    .local v2, "listener":Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    new-instance v4, Lcom/android/server/accounts/-$$Lambda$AccountManagerService$b-wmW_X7TIC2Bc_zEKaPtyELmHY;

    invoke-direct {v4, v2, p1, p3}, Lcom/android/server/accounts/-$$Lambda$AccountManagerService$b-wmW_X7TIC2Bc_zEKaPtyELmHY;-><init>(Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;Landroid/accounts/Account;I)V

    invoke-virtual {v3, v4}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;->post(Ljava/lang/Runnable;)Z

    .line 5837
    .end local v2    # "listener":Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;
    goto :goto_4f

    .line 5838
    :cond_66
    return-void

    .line 5824
    :catchall_67
    move-exception v3

    :try_start_68
    iget-object v4, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v4}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    throw v3

    .line 5830
    :catchall_6e
    move-exception v3

    monitor-exit v2
    :try_end_70
    .catchall {:try_start_68 .. :try_end_70} :catchall_6e

    :try_start_70
    throw v3

    .line 5831
    :catchall_71
    move-exception v2

    monitor-exit v1
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_71

    throw v2

    .line 5809
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :cond_74
    :goto_74
    const-string v0, "AccountManagerService"

    const-string/jumbo v1, "revokeAppPermission: called with invalid arguments"

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5810
    return-void
.end method

.method private saveAuthTokenToDatabase(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 14
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "authToken"    # Ljava/lang/String;

    .line 2462
    const/4 v0, 0x0

    if-eqz p2, :cond_95

    if-nez p3, :cond_7

    goto/16 :goto_95

    .line 2465
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    move-result-object v1

    .line 2466
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 2465
    invoke-direct {p0, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Landroid/os/UserHandle;)V

    .line 2467
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2468
    :try_start_19
    iget-object v2, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v2}, Lcom/android/server/accounts/AccountsDb;->beginTransaction()V
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_92

    .line 2469
    move v2, v0

    .line 2471
    .local v2, "updateCache":Z
    :try_start_1f
    iget-object v3, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v3, p2}, Lcom/android/server/accounts/AccountsDb;->findDeAccountId(Landroid/accounts/Account;)J

    move-result-wide v3
    :try_end_25
    .catchall {:try_start_1f .. :try_end_25} :catchall_7f

    .line 2472
    .local v3, "accountId":J
    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-gez v7, :cond_40

    .line 2473
    nop

    .line 2483
    :try_start_2c
    iget-object v5, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v5}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 2484
    if-eqz v2, :cond_3e

    .line 2485
    iget-object v5, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_36
    .catchall {:try_start_2c .. :try_end_36} :catchall_92

    .line 2486
    :try_start_36
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->writeAuthTokenIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 2487
    monitor-exit v5

    goto :goto_3e

    :catchall_3b
    move-exception v0

    monitor-exit v5
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_3b

    :cond_3d
    :goto_3d
    :try_start_3d
    throw v0

    :cond_3e
    :goto_3e
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_3d .. :try_end_3f} :catchall_92

    .line 2473
    return v0

    .line 2475
    :cond_40
    :try_start_40
    iget-object v7, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v7, v3, v4, p3}, Lcom/android/server/accounts/AccountsDb;->deleteAuthtokensByAccountIdAndType(JLjava/lang/String;)Z

    .line 2476
    iget-object v7, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v7, v3, v4, p3, p4}, Lcom/android/server/accounts/AccountsDb;->insertAuthToken(JLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v7

    cmp-long v5, v7, v5

    if-ltz v5, :cond_6a

    .line 2477
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->setTransactionSuccessful()V
    :try_end_54
    .catchall {:try_start_40 .. :try_end_54} :catchall_7f

    .line 2478
    const/4 v0, 0x1

    .line 2479
    .end local v2    # "updateCache":Z
    .local v0, "updateCache":Z
    const/4 v2, 0x1

    .line 2483
    :try_start_56
    iget-object v5, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v5}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 2484
    if-eqz v0, :cond_68

    .line 2485
    iget-object v5, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_60
    .catchall {:try_start_56 .. :try_end_60} :catchall_92

    .line 2486
    :try_start_60
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->writeAuthTokenIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 2487
    monitor-exit v5

    goto :goto_68

    :catchall_65
    move-exception v2

    monitor-exit v5
    :try_end_67
    .catchall {:try_start_60 .. :try_end_67} :catchall_65

    :try_start_67
    throw v2

    :cond_68
    :goto_68
    monitor-exit v1

    .line 2479
    return v2

    .line 2481
    .end local v0    # "updateCache":Z
    .restart local v2    # "updateCache":Z
    :cond_6a
    nop

    .line 2483
    iget-object v5, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v5}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 2484
    if-eqz v2, :cond_7d

    .line 2485
    iget-object v5, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_75
    .catchall {:try_start_67 .. :try_end_75} :catchall_92

    .line 2486
    :try_start_75
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->writeAuthTokenIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 2487
    monitor-exit v5

    goto :goto_7d

    :catchall_7a
    move-exception v0

    monitor-exit v5
    :try_end_7c
    .catchall {:try_start_75 .. :try_end_7c} :catchall_7a

    goto :goto_3d

    :cond_7d
    :goto_7d
    :try_start_7d
    monitor-exit v1

    .line 2481
    return v0

    .line 2483
    .end local v3    # "accountId":J
    :catchall_7f
    move-exception v0

    iget-object v3, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v3}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 2484
    if-eqz v2, :cond_3d

    .line 2485
    iget-object v3, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_8a
    .catchall {:try_start_7d .. :try_end_8a} :catchall_92

    .line 2486
    :try_start_8a
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->writeAuthTokenIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 2487
    monitor-exit v3

    goto :goto_3d

    :catchall_8f
    move-exception v0

    monitor-exit v3
    :try_end_91
    .catchall {:try_start_8a .. :try_end_91} :catchall_8f

    goto :goto_3d

    .line 2490
    .end local v2    # "updateCache":Z
    :catchall_92
    move-exception v0

    :try_start_93
    monitor-exit v1
    :try_end_94
    .catchall {:try_start_93 .. :try_end_94} :catchall_92

    throw v0

    .line 2463
    :cond_95
    :goto_95
    return v0
.end method

.method private saveCachedToken(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;J)V
    .registers 21
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "callerPkg"    # Ljava/lang/String;
    .param p4, "callerSigDigest"    # [B
    .param p5, "tokenType"    # Ljava/lang/String;
    .param p6, "token"    # Ljava/lang/String;
    .param p7, "expiryMillis"    # J

    .line 2449
    if-eqz p2, :cond_33

    if-eqz p5, :cond_33

    if-eqz p3, :cond_33

    if-nez p4, :cond_9

    goto :goto_33

    .line 2452
    :cond_9
    invoke-direct {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    move-result-object v0

    .line 2453
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 2452
    move-object v9, p0

    invoke-direct {v9, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Landroid/os/UserHandle;)V

    .line 2454
    move-object v10, p1

    iget-object v11, v10, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v11

    .line 2455
    :try_start_1d
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountTokenCaches:Lcom/android/server/accounts/TokenCache;
    invoke-static {v10}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1300(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/TokenCache;

    move-result-object v1

    move-object v2, p2

    move-object/from16 v3, p6

    move-object/from16 v4, p5

    move-object v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v7, p7

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/accounts/TokenCache;->put(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJ)V

    .line 2457
    monitor-exit v11

    .line 2458
    return-void

    .line 2457
    :catchall_30
    move-exception v0

    monitor-exit v11
    :try_end_32
    .catchall {:try_start_1d .. :try_end_32} :catchall_30

    throw v0

    .line 2450
    :cond_33
    :goto_33
    move-object v9, p0

    move-object v10, p1

    return-void
.end method

.method private static scanArgs([Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p0, "args"    # [Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 5193
    const/4 v0, 0x0

    if-eqz p0, :cond_14

    .line 5194
    array-length v1, p0

    move v2, v0

    :goto_5
    if-ge v2, v1, :cond_14

    aget-object v3, p0, v2

    .line 5195
    .local v3, "arg":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 5196
    const/4 v0, 0x1

    return v0

    .line 5194
    .end local v3    # "arg":Ljava/lang/String;
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 5200
    :cond_14
    return v0
.end method

.method private sendAccountRemovedBroadcast(Landroid/accounts/Account;Ljava/lang/String;I)V
    .registers 7
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 1065
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.accounts.action.ACCOUNT_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1066
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1067
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1068
    const-string v1, "authAccount"

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1069
    const-string v1, "accountType"

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1070
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1071
    return-void
.end method

.method private sendAccountsChangedBroadcast(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 1059
    const-string v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "the accounts changed, sending broadcast of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/accounts/AccountManagerService;->ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

    .line 1060
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1059
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/server/accounts/AccountManagerService;->ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1062
    return-void
.end method

.method private sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V
    .registers 7
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "errorCode"    # I
    .param p3, "errorMessage"    # Ljava/lang/String;

    .line 6142
    :try_start_0
    invoke-interface {p1, p2, p3}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 6149
    goto :goto_15

    .line 6143
    :catch_4
    move-exception v0

    .line 6146
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AccountManagerService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 6147
    const-string v1, "AccountManagerService"

    const-string v2, "failure while notifying response"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6150
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    :goto_15
    return-void
.end method

.method private sendNotificationAccountUpdated(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .registers 8
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 954
    invoke-direct {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->getRequestingPackages(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v0

    .line 956
    .local v0, "packagesToVisibility":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 957
    .local v2, "packageToVisibility":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3b

    .line 958
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_3b

    .line 960
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3, p2}, Lcom/android/server/accounts/AccountManagerService;->notifyPackage(Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 962
    .end local v2    # "packageToVisibility":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_3b
    goto :goto_c

    .line 963
    :cond_3c
    return-void
.end method

.method private sendResponse(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "result"    # Landroid/os/Bundle;

    .line 6129
    :try_start_0
    invoke-interface {p1, p2}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 6136
    goto :goto_15

    .line 6130
    :catch_4
    move-exception v0

    .line 6133
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AccountManagerService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 6134
    const-string v1, "AccountManagerService"

    const-string v2, "failure while notifying response"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6137
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    :goto_15
    return-void
.end method

.method private setAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;IZLcom/android/server/accounts/AccountManagerService$UserAccounts;)Z
    .registers 16
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "newVisibility"    # I
    .param p4, "notify"    # Z
    .param p5, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 803
    iget-object v0, p5, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 804
    :try_start_3
    iget-object v1, p5, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_cc

    .line 807
    const/4 v2, 0x0

    if-eqz p4, :cond_45

    .line 808
    :try_start_9
    invoke-direct {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->isSpecialPackageKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 809
    nop

    .line 810
    invoke-direct {p0, p1, p5}, Lcom/android/server/accounts/AccountManagerService;->getRequestingPackages(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v3

    .line 811
    .local v3, "packagesToVisibility":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {p0, p1, p5}, Lcom/android/server/accounts/AccountManagerService;->getAccountRemovedReceivers(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/List;

    move-result-object v4

    .local v4, "accountRemovedReceivers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_60

    .line 813
    .end local v3    # "packagesToVisibility":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v4    # "accountRemovedReceivers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_19
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static {p5}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v3

    invoke-direct {p0, p2, v3}, Lcom/android/server/accounts/AccountManagerService;->packageExistsForUser(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_26

    .line 814
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_9 .. :try_end_24} :catchall_42

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_cc

    return v2

    .line 816
    :cond_26
    :try_start_26
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 817
    .restart local v3    # "packagesToVisibility":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    nop

    .line 818
    invoke-direct {p0, p1, p2, p5}, Lcom/android/server/accounts/AccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Integer;

    move-result-object v4

    .line 817
    invoke-interface {v3, p2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 820
    .restart local v4    # "accountRemovedReceivers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2, p5}, Lcom/android/server/accounts/AccountManagerService;->shouldNotifyPackageOnAccountRemoval(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Z

    move-result v5

    if-eqz v5, :cond_60

    .line 821
    invoke-interface {v4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_60

    .line 855
    .end local v3    # "packagesToVisibility":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v4    # "accountRemovedReceivers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_42
    move-exception v2

    goto/16 :goto_ca

    .line 826
    :cond_45
    invoke-direct {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->isSpecialPackageKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_58

    .line 827
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static {p5}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v3

    invoke-direct {p0, p2, v3}, Lcom/android/server/accounts/AccountManagerService;->packageExistsForUser(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_58

    .line 829
    monitor-exit v1
    :try_end_56
    .catchall {:try_start_26 .. :try_end_56} :catchall_42

    :try_start_56
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_cc

    return v2

    .line 831
    :cond_58
    :try_start_58
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    .line 832
    .restart local v3    # "packagesToVisibility":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 835
    .restart local v4    # "accountRemovedReceivers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_60
    :goto_60
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/server/accounts/AccountManagerService;->updateAccountVisibilityLocked(Landroid/accounts/Account;Ljava/lang/String;ILcom/android/server/accounts/AccountManagerService$UserAccounts;)Z

    move-result v5

    if-nez v5, :cond_69

    .line 836
    monitor-exit v1
    :try_end_67
    .catchall {:try_start_58 .. :try_end_67} :catchall_42

    :try_start_67
    monitor-exit v0
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_cc

    return v2

    .line 839
    :cond_69
    if-eqz p4, :cond_c6

    .line 840
    nop

    .line 841
    :try_start_6c
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 840
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_74
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 842
    .local v5, "packageToVisibility":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 843
    .local v6, "oldVisibility":I
    nop

    .line 844
    invoke-direct {p0, p1, p2, p5}, Lcom/android/server/accounts/AccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 845
    .local v7, "currentVisibility":I
    invoke-direct {p0, v6}, Lcom/android/server/accounts/AccountManagerService;->isVisible(I)Z

    move-result v8

    invoke-direct {p0, v7}, Lcom/android/server/accounts/AccountManagerService;->isVisible(I)Z

    move-result v9

    if-eq v8, v9, :cond_a6

    .line 846
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {p0, v8, p5}, Lcom/android/server/accounts/AccountManagerService;->notifyPackage(Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 848
    .end local v5    # "packageToVisibility":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v6    # "oldVisibility":I
    .end local v7    # "currentVisibility":I
    :cond_a6
    goto :goto_74

    .line 849
    :cond_a7
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_ab
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_bf

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 850
    .local v5, "packageNameToNotify":Ljava/lang/String;
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static {p5}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v6

    invoke-direct {p0, p1, v5, v6}, Lcom/android/server/accounts/AccountManagerService;->sendAccountRemovedBroadcast(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 851
    .end local v5    # "packageNameToNotify":Ljava/lang/String;
    goto :goto_ab

    .line 852
    :cond_bf
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static {p5}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V

    .line 854
    :cond_c6
    const/4 v2, 0x1

    monitor-exit v1
    :try_end_c8
    .catchall {:try_start_6c .. :try_end_c8} :catchall_42

    :try_start_c8
    monitor-exit v0
    :try_end_c9
    .catchall {:try_start_c8 .. :try_end_c9} :catchall_cc

    return v2

    .line 855
    .end local v3    # "packagesToVisibility":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v4    # "accountRemovedReceivers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_ca
    :try_start_ca
    monitor-exit v1
    :try_end_cb
    .catchall {:try_start_ca .. :try_end_cb} :catchall_42

    :try_start_cb
    throw v2

    .line 856
    :catchall_cc
    move-exception v1

    monitor-exit v0
    :try_end_ce
    .catchall {:try_start_cb .. :try_end_ce} :catchall_cc

    throw v1
.end method

.method private setPasswordInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;I)V
    .registers 22
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "callingUid"    # I

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    .line 2583
    if-nez v10, :cond_b

    .line 2584
    return-void

    .line 2586
    :cond_b
    const/4 v1, 0x0

    .line 2587
    .local v1, "isChanged":Z
    iget-object v12, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v12

    .line 2588
    :try_start_f
    iget-object v13, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_8c

    .line 2589
    :try_start_12
    iget-object v0, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->beginTransaction()V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_89

    .line 2591
    :try_start_17
    iget-object v0, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0, v10}, Lcom/android/server/accounts/AccountsDb;->findDeAccountId(Landroid/accounts/Account;)J

    move-result-wide v2

    move-wide v14, v2

    .line 2592
    .local v14, "accountId":J
    const-wide/16 v2, 0x0

    cmp-long v0, v14, v2

    if-ltz v0, :cond_62

    .line 2593
    iget-object v0, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0, v14, v15, v11}, Lcom/android/server/accounts/AccountsDb;->updateCeAccountPassword(JLjava/lang/String;)I

    .line 2594
    iget-object v0, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0, v14, v15}, Lcom/android/server/accounts/AccountsDb;->deleteAuthTokensByAccountId(J)Z

    .line 2595
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->authTokenCache:Ljava/util/Map;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1200(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2596
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountTokenCaches:Lcom/android/server/accounts/TokenCache;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1300(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/TokenCache;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/server/accounts/TokenCache;->remove(Landroid/accounts/Account;)V

    .line 2597
    iget-object v0, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->setTransactionSuccessful()V
    :try_end_41
    .catchall {:try_start_17 .. :try_end_41} :catchall_76

    .line 2602
    const/16 v16, 0x1

    .line 2603
    .end local v1    # "isChanged":Z
    .local v16, "isChanged":Z
    if-eqz v11, :cond_53

    :try_start_45
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4c

    goto :goto_53

    .line 2605
    :cond_4c
    sget-object v0, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_SET_PASSWORD:Ljava/lang/String;

    goto :goto_55

    .line 2610
    .end local v14    # "accountId":J
    :catchall_4f
    move-exception v0

    move/from16 v1, v16

    goto :goto_77

    .line 2604
    .restart local v14    # "accountId":J
    :cond_53
    :goto_53
    sget-object v0, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_CLEAR_PASSWORD:Ljava/lang/String;

    .line 2605
    :goto_55
    move-object v2, v0

    .line 2606
    .local v2, "action":Ljava/lang/String;
    const-string v3, "accounts"

    move-object v1, v8

    move-wide v4, v14

    move-object v6, v9

    move/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V
    :try_end_60
    .catchall {:try_start_45 .. :try_end_60} :catchall_4f

    .line 2610
    .end local v2    # "action":Ljava/lang/String;
    .end local v14    # "accountId":J
    move/from16 v1, v16

    .end local v16    # "isChanged":Z
    .restart local v1    # "isChanged":Z
    :cond_62
    :try_start_62
    iget-object v0, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 2611
    if-eqz v1, :cond_73

    .line 2613
    invoke-direct {v8, v10, v9}, Lcom/android/server/accounts/AccountManagerService;->sendNotificationAccountUpdated(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 2614
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v0

    invoke-direct {v8, v0}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V

    .line 2617
    :cond_73
    monitor-exit v13
    :try_end_74
    .catchall {:try_start_62 .. :try_end_74} :catchall_89

    .line 2618
    :try_start_74
    monitor-exit v12
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_8c

    .line 2619
    return-void

    .line 2610
    :catchall_76
    move-exception v0

    :goto_77
    :try_start_77
    iget-object v2, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v2}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 2611
    if-eqz v1, :cond_88

    .line 2613
    invoke-direct {v8, v10, v9}, Lcom/android/server/accounts/AccountManagerService;->sendNotificationAccountUpdated(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 2614
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v2

    invoke-direct {v8, v2}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V

    :cond_88
    throw v0

    .line 2617
    :catchall_89
    move-exception v0

    monitor-exit v13
    :try_end_8b
    .catchall {:try_start_77 .. :try_end_8b} :catchall_89

    :try_start_8b
    throw v0

    .line 2618
    :catchall_8c
    move-exception v0

    monitor-exit v12
    :try_end_8e
    .catchall {:try_start_8b .. :try_end_8e} :catchall_8c

    throw v0
.end method

.method private setUserdataInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .line 2695
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2696
    :try_start_3
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v1}, Lcom/android/server/accounts/AccountsDb;->beginTransaction()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_64

    .line 2698
    :try_start_8
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v1, p2}, Lcom/android/server/accounts/AccountsDb;->findDeAccountId(Landroid/accounts/Account;)J

    move-result-wide v1
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_5d

    .line 2699
    .local v1, "accountId":J
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gez v5, :cond_1b

    .line 2713
    :try_start_14
    iget-object v3, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v3}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_64

    .line 2700
    return-void

    .line 2702
    :cond_1b
    :try_start_1b
    iget-object v5, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v5, v1, v2, p3}, Lcom/android/server/accounts/AccountsDb;->findExtrasIdByAccountId(JLjava/lang/String;)J

    move-result-wide v5

    .line 2703
    .local v5, "extrasId":J
    cmp-long v7, v5, v3

    if-gez v7, :cond_37

    .line 2704
    iget-object v7, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v7, v1, v2, p3, p4}, Lcom/android/server/accounts/AccountsDb;->insertExtra(JLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v7
    :try_end_2b
    .catchall {:try_start_1b .. :try_end_2b} :catchall_5d

    move-wide v5, v7

    .line 2705
    cmp-long v3, v5, v3

    if-gez v3, :cond_46

    .line 2713
    :try_start_30
    iget-object v3, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v3}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_30 .. :try_end_36} :catchall_64

    .line 2706
    return-void

    .line 2708
    :cond_37
    :try_start_37
    iget-object v3, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v3, v5, v6, p4}, Lcom/android/server/accounts/AccountsDb;->updateExtra(JLjava/lang/String;)Z

    move-result v3
    :try_end_3d
    .catchall {:try_start_37 .. :try_end_3d} :catchall_5d

    if-nez v3, :cond_46

    .line 2713
    :try_start_3f
    iget-object v3, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v3}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_3f .. :try_end_45} :catchall_64

    .line 2709
    return-void

    .line 2711
    :cond_46
    :try_start_46
    iget-object v3, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v3}, Lcom/android/server/accounts/AccountsDb;->setTransactionSuccessful()V
    :try_end_4b
    .catchall {:try_start_46 .. :try_end_4b} :catchall_5d

    .line 2713
    .end local v1    # "accountId":J
    .end local v5    # "extrasId":J
    :try_start_4b
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v1}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 2714
    nop

    .line 2715
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_54
    .catchall {:try_start_4b .. :try_end_54} :catchall_64

    .line 2716
    :try_start_54
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->writeUserDataIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 2717
    monitor-exit v1
    :try_end_58
    .catchall {:try_start_54 .. :try_end_58} :catchall_5a

    .line 2718
    :try_start_58
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_64

    .line 2719
    return-void

    .line 2717
    :catchall_5a
    move-exception v2

    :try_start_5b
    monitor-exit v1
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    :try_start_5c
    throw v2

    .line 2713
    :catchall_5d
    move-exception v1

    iget-object v2, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v2}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    throw v1

    .line 2718
    :catchall_64
    move-exception v1

    monitor-exit v0
    :try_end_66
    .catchall {:try_start_5c .. :try_end_66} :catchall_64

    throw v1
.end method

.method private shouldNotifyPackageOnAccountRemoval(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Z
    .registers 10
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 1022
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1023
    .local v0, "visibility":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_10

    const/4 v3, 0x2

    if-eq v0, v3, :cond_10

    .line 1025
    return v2

    .line 1028
    :cond_10
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.accounts.action.ACCOUNT_REMOVED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1029
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v4, 0x1000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1030
    invoke-virtual {v3, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1031
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1032
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static {p3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v5

    invoke-virtual {v4, v3, v2, v5}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v4

    .line 1033
    .local v4, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v4, :cond_32

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_32

    goto :goto_33

    :cond_32
    move v1, v2

    :goto_33
    return v1
.end method

.method private showCantAddAccount(II)V
    .registers 9
    .param p1, "errorCode"    # I
    .param p2, "userId"    # I

    .line 3619
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 3620
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 3621
    .local v0, "dpmi":Landroid/app/admin/DevicePolicyManagerInternal;
    const/4 v1, 0x0

    .line 3622
    .local v1, "intent":Landroid/content/Intent;
    if-nez v0, :cond_10

    .line 3623
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getDefaultCantAddAccountIntent(I)Landroid/content/Intent;

    move-result-object v1

    goto :goto_25

    .line 3624
    :cond_10
    const/16 v2, 0x64

    if-ne p1, v2, :cond_1c

    .line 3625
    const-string/jumbo v2, "no_modify_accounts"

    invoke-virtual {v0, p2, v2}, Landroid/app/admin/DevicePolicyManagerInternal;->createUserRestrictionSupportIntent(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_25

    .line 3627
    :cond_1c
    const/16 v2, 0x65

    if-ne p1, v2, :cond_25

    .line 3628
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/app/admin/DevicePolicyManagerInternal;->createShowAdminSupportIntent(IZ)Landroid/content/Intent;

    move-result-object v1

    .line 3630
    :cond_25
    :goto_25
    if-nez v1, :cond_2b

    .line 3631
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getDefaultCantAddAccountIntent(I)Landroid/content/Intent;

    move-result-object v1

    .line 3633
    :cond_2b
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v2

    .line 3635
    .local v2, "identityToken":J
    :try_start_2f
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_39
    .catchall {:try_start_2f .. :try_end_39} :catchall_3e

    .line 3637
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3638
    nop

    .line 3639
    return-void

    .line 3637
    :catchall_3e
    move-exception v4

    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private startChooseAccountActivityWithAccounts(Landroid/accounts/IAccountManagerResponse;[Landroid/accounts/Account;Ljava/lang/String;)V
    .registers 7
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "accounts"    # [Landroid/accounts/Account;
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 4503
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/accounts/ChooseAccountActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4504
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "accounts"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4505
    const-string v1, "accountManagerResponse"

    new-instance v2, Landroid/accounts/AccountManagerResponse;

    invoke-direct {v2, p1}, Landroid/accounts/AccountManagerResponse;-><init>(Landroid/accounts/IAccountManagerResponse;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4507
    const-string v1, "androidPackageName"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4509
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4510
    return-void
.end method

.method private syncDeCeAccountsLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .registers 6
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 1328
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "mUsers lock must be held"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 1329
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->findCeAccountsNotInDe()Ljava/util/List;

    move-result-object v0

    .line 1330
    .local v0, "accountsToRemove":Ljava/util/List;, "Ljava/util/List<Landroid/accounts/Account;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5c

    .line 1331
    const-string v1, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Accounts "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " were previously deleted while user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1332
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " was locked. Removing accounts from CE tables"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1331
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    sget-object v1, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_SYNC_DE_CE_ACCOUNTS:Ljava/lang/String;

    const-string v2, "accounts"

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;)V

    .line 1336
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 1337
    .local v2, "account":Landroid/accounts/Account;
    const/16 v3, 0x3e8

    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/accounts/AccountManagerService;->removeAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;I)Z

    .line 1338
    .end local v2    # "account":Landroid/accounts/Account;
    goto :goto_4a

    .line 1340
    :cond_5c
    return-void
.end method

.method private syncSharedAccounts(I)V
    .registers 10
    .param p1, "userId"    # I

    .line 1429
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getSharedAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object v0

    .line 1430
    .local v0, "sharedAccounts":[Landroid/accounts/Account;
    if-eqz v0, :cond_59

    array-length v1, v0

    if-nez v1, :cond_a

    goto :goto_59

    .line 1431
    :cond_a
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1, v1}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 1432
    .local v1, "accounts":[Landroid/accounts/Account;
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_27

    .line 1433
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    goto :goto_28

    .line 1434
    :cond_27
    move v3, v4

    .line 1435
    .local v3, "parentUserId":I
    :goto_28
    if-gez v3, :cond_46

    .line 1436
    const-string v2, "AccountManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "User "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " has shared accounts, but no parent user"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    return-void

    .line 1439
    :cond_46
    array-length v5, v0

    :goto_47
    if-ge v4, v5, :cond_58

    aget-object v6, v0, v4

    .line 1440
    .local v6, "sa":Landroid/accounts/Account;
    invoke-static {v1, v6}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_52

    .end local v6    # "sa":Landroid/accounts/Account;
    goto :goto_55

    .line 1442
    .restart local v6    # "sa":Landroid/accounts/Account;
    :cond_52
    invoke-virtual {p0, v2, v6, v3, p1}, Lcom/android/server/accounts/AccountManagerService;->copyAccountToUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;II)V

    .line 1439
    .end local v6    # "sa":Landroid/accounts/Account;
    :goto_55
    add-int/lit8 v4, v4, 0x1

    goto :goto_47

    .line 1444
    :cond_58
    return-void

    .line 1430
    .end local v1    # "accounts":[Landroid/accounts/Account;
    .end local v3    # "parentUserId":I
    :cond_59
    :goto_59
    return-void
.end method

.method private unregisterAccountListener([Ljava/lang/String;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .registers 12
    .param p1, "accountTypes"    # [Ljava/lang/String;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .param p3, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 932
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->mReceiversForType:Ljava/util/Map;
    invoke-static {p3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1000(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 933
    if-nez p1, :cond_d

    .line 935
    const/4 v1, 0x0

    :try_start_8
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    move-object p1, v1

    .line 937
    :cond_d
    array-length v1, p1

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_4d

    aget-object v3, p1, v2

    .line 938
    .local v3, "type":Ljava/lang/String;
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->mReceiversForType:Ljava/util/Map;
    invoke-static {p3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1000(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 939
    .local v4, "receivers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v4, :cond_45

    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_45

    .line 942
    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 943
    .local v5, "cnt":Ljava/lang/Integer;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_36

    .line 944
    invoke-interface {v4, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_42

    .line 946
    :cond_36
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, p2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 937
    .end local v3    # "type":Ljava/lang/String;
    .end local v4    # "receivers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v5    # "cnt":Ljava/lang/Integer;
    :goto_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 940
    .restart local v3    # "type":Ljava/lang/String;
    .restart local v4    # "receivers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_45
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "attempt to unregister wrong receiver"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 949
    .end local v3    # "type":Ljava/lang/String;
    .end local v4    # "receivers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_4d
    monitor-exit v0

    .line 950
    return-void

    .line 949
    :catchall_4f
    move-exception v1

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_8 .. :try_end_51} :catchall_4f

    throw v1
.end method

.method private updateAccountVisibilityLocked(Landroid/accounts/Account;Ljava/lang/String;ILcom/android/server/accounts/AccountManagerService$UserAccounts;)Z
    .registers 10
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "newVisibility"    # I
    .param p4, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 862
    iget-object v0, p4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0, p1}, Lcom/android/server/accounts/AccountsDb;->findDeAccountId(Landroid/accounts/Account;)J

    move-result-wide v0

    .line 863
    .local v0, "accountId":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-gez v2, :cond_e

    .line 864
    return v3

    .line 867
    :cond_e
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    .line 869
    .local v2, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_12
    iget-object v4, p4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v4, v0, v1, p2, p3}, Lcom/android/server/accounts/AccountsDb;->setAccountVisibility(JLjava/lang/String;I)Z

    move-result v4
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_31

    if-nez v4, :cond_1f

    .line 871
    nop

    .line 874
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 871
    return v3

    .line 874
    :cond_1f
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 875
    nop

    .line 876
    nop

    .line 877
    invoke-direct {p0, p1, p4}, Lcom/android/server/accounts/AccountManagerService;->getPackagesAndVisibilityForAccountLocked(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v3

    .line 878
    .local v3, "accountVisibility":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, p2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    const/4 v4, 0x1

    return v4

    .line 874
    .end local v3    # "accountVisibility":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catchall_31
    move-exception v3

    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v3
.end method

.method private updateLastAuthenticatedTime(Landroid/accounts/Account;)Z
    .registers 6
    .param p1, "account"    # Landroid/accounts/Account;

    .line 1718
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 1719
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    iget-object v1, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1720
    :try_start_7
    iget-object v2, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_16

    .line 1721
    :try_start_a
    iget-object v3, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v3, p1}, Lcom/android/server/accounts/AccountsDb;->updateAccountLastAuthenticatedTime(Landroid/accounts/Account;)Z

    move-result v3

    monitor-exit v2
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_13

    :try_start_11
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_16

    return v3

    .line 1722
    :catchall_13
    move-exception v3

    :try_start_14
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    :try_start_15
    throw v3

    .line 1723
    :catchall_16
    move-exception v2

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_16

    throw v2
.end method

.method private validateAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Z)V
    .registers 32
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "invalidateAuthenticatorCache"    # Z

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 1112
    const-string v0, "AccountManagerService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1113
    const-string v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "validateAccountsInternal "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isCeDatabaseAttached="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 1114
    invoke-virtual {v2}, Lcom/android/server/accounts/AccountsDb;->isCeDatabaseAttached()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " userLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcom/android/server/accounts/AccountManagerService;->mLocalUnlockedUsers:Landroid/util/SparseBooleanArray;

    .line 1115
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1113
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    :cond_48
    if-eqz p2, :cond_53

    .line 1119
    iget-object v0, v7, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->invalidateCache(I)V

    .line 1122
    :cond_53
    iget-object v0, v7, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    .line 1123
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v1

    .line 1122
    invoke-static {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getAuthenticatorTypeAndUIDForUser(Lcom/android/server/accounts/IAccountAuthenticatorCache;I)Ljava/util/HashMap;

    move-result-object v10

    .line 1124
    .local v10, "knownAuth":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v0

    invoke-direct {v7, v0}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    move-result v11

    .line 1126
    .local v11, "userUnlocked":Z
    iget-object v12, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v12

    .line 1127
    :try_start_68
    iget-object v13, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_342

    .line 1128
    const/4 v1, 0x0

    .line 1131
    .local v1, "accountDeleted":Z
    :try_start_6c
    iget-object v0, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    move-object v14, v0

    .line 1132
    .local v14, "accountsDb":Lcom/android/server/accounts/AccountsDb;
    invoke-virtual {v14}, Lcom/android/server/accounts/AccountsDb;->findMetaAuthUid()Ljava/util/Map;

    move-result-object v0

    move-object v15, v0

    .line 1134
    .local v15, "metaAuthUid":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    move-object v6, v0

    .line 1135
    .local v6, "obsoleteAuthType":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 1136
    .local v0, "knownUids":Landroid/util/SparseBooleanArray;
    invoke-interface {v15}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object/from16 v16, v0

    .line 1136
    .end local v0    # "knownUids":Landroid/util/SparseBooleanArray;
    .local v16, "knownUids":Landroid/util/SparseBooleanArray;
    :goto_84
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_88
    .catchall {:try_start_6c .. :try_end_88} :catchall_339

    if-eqz v0, :cond_db

    :try_start_8a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1137
    .local v0, "authToUidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1138
    .local v3, "type":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1139
    .local v4, "uid":I
    invoke-virtual {v10, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 1140
    .local v5, "knownUid":Ljava/lang/Integer;
    if-eqz v5, :cond_b4

    move-object/from16 v17, v0

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1140
    .end local v0    # "authToUidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local v17, "authToUidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-ne v4, v0, :cond_b6

    .line 1142
    invoke-virtual {v10, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d3

    .line 1160
    .end local v17    # "authToUidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v0    # "authToUidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_b4
    move-object/from16 v17, v0

    .line 1160
    .end local v0    # "authToUidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v17    # "authToUidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_b6
    if-nez v16, :cond_c3

    .line 1161
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v0

    invoke-direct {v7, v0}, Lcom/android/server/accounts/AccountManagerService;->getUidsOfInstalledOrUpdatedPackagesAsUser(I)Landroid/util/SparseBooleanArray;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_c5

    .line 1163
    :cond_c3
    move-object/from16 v0, v16

    .line 1163
    .end local v16    # "knownUids":Landroid/util/SparseBooleanArray;
    .local v0, "knownUids":Landroid/util/SparseBooleanArray;
    :goto_c5
    invoke-virtual {v0, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v16

    if-nez v16, :cond_d1

    .line 1167
    invoke-virtual {v6, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1169
    invoke-virtual {v14, v3, v4}, Lcom/android/server/accounts/AccountsDb;->deleteMetaByAuthTypeAndUid(Ljava/lang/String;I)Z
    :try_end_d1
    .catchall {:try_start_8a .. :try_end_d1} :catchall_d4

    .line 1172
    .end local v3    # "type":Ljava/lang/String;
    .end local v4    # "uid":I
    .end local v5    # "knownUid":Ljava/lang/Integer;
    .end local v17    # "authToUidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_d1
    move-object/from16 v16, v0

    .line 1172
    .end local v0    # "knownUids":Landroid/util/SparseBooleanArray;
    .restart local v16    # "knownUids":Landroid/util/SparseBooleanArray;
    :goto_d3
    goto :goto_84

    .line 1254
    .end local v1    # "accountDeleted":Z
    .end local v6    # "obsoleteAuthType":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v14    # "accountsDb":Lcom/android/server/accounts/AccountsDb;
    .end local v15    # "metaAuthUid":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v16    # "knownUids":Landroid/util/SparseBooleanArray;
    :catchall_d4
    move-exception v0

    move-object/from16 v24, v10

    move/from16 v25, v11

    goto/16 :goto_33e

    .line 1177
    .restart local v1    # "accountDeleted":Z
    .restart local v6    # "obsoleteAuthType":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v14    # "accountsDb":Lcom/android/server/accounts/AccountsDb;
    .restart local v15    # "metaAuthUid":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v16    # "knownUids":Landroid/util/SparseBooleanArray;
    :cond_db
    :try_start_db
    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_e7
    .catchall {:try_start_db .. :try_end_e7} :catchall_339

    if-eqz v2, :cond_103

    :try_start_e9
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1178
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v14, v3, v4}, Lcom/android/server/accounts/AccountsDb;->insertOrReplaceMetaAuthTypeAndUid(Ljava/lang/String;I)J
    :try_end_102
    .catchall {:try_start_e9 .. :try_end_102} :catchall_d4

    .line 1179
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_e3

    .line 1181
    :cond_103
    :try_start_103
    invoke-virtual {v14}, Lcom/android/server/accounts/AccountsDb;->findAllDeAccounts()Ljava/util/Map;

    move-result-object v0
    :try_end_107
    .catchall {:try_start_103 .. :try_end_107} :catchall_339

    move-object v4, v0

    .line 1183
    .local v4, "accountsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Landroid/accounts/Account;>;"
    :try_start_108
    iget-object v0, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1184
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v5, v0

    .line 1186
    .local v5, "accountNamesByType":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    move-object v3, v2

    .line 1187
    .local v3, "accountEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Landroid/accounts/Account;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    move-wide/from16 v19, v17

    .line 1188
    .local v19, "accountId":J
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 1189
    .local v2, "account":Landroid/accounts/Account;
    move-object/from16 v21, v0

    iget-object v0, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_277

    .line 1190
    const-string v0, "AccountManagerService"

    move-object/from16 v22, v3

    new-instance v3, Ljava/lang/StringBuilder;

    .line 1190
    .end local v3    # "accountEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Landroid/accounts/Account;>;"
    .local v22, "accountEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Landroid/accounts/Account;>;"
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_14d
    .catchall {:try_start_108 .. :try_end_14d} :catchall_323

    move-object/from16 v23, v4

    :try_start_14f
    const-string v4, "deleting account "

    .line 1190
    .end local v4    # "accountsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Landroid/accounts/Account;>;"
    .local v23, "accountsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Landroid/accounts/Account;>;"
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " because type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'s registered authenticator no longer exist."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    nop

    .line 1194
    invoke-direct {v7, v2, v8}, Lcom/android/server/accounts/AccountManagerService;->getRequestingPackages(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v0

    move-object v4, v0

    .line 1195
    .local v4, "packagesToVisibility":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    nop

    .line 1196
    invoke-direct {v7, v2, v8}, Lcom/android/server/accounts/AccountManagerService;->getAccountRemovedReceivers(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/List;

    move-result-object v0

    move-object v3, v0

    .line 1197
    .local v3, "accountRemovedReceivers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v14}, Lcom/android/server/accounts/AccountsDb;->beginTransaction()V
    :try_end_17e
    .catchall {:try_start_14f .. :try_end_17e} :catchall_269

    .line 1199
    move-object/from16 v24, v10

    move-wide/from16 v9, v19

    :try_start_182
    invoke-virtual {v14, v9, v10}, Lcom/android/server/accounts/AccountsDb;->deleteDeAccount(J)Z
    :try_end_185
    .catchall {:try_start_182 .. :try_end_185} :catchall_251

    .line 1203
    .end local v10    # "knownAuth":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v19    # "accountId":J
    .local v9, "accountId":J
    .local v24, "knownAuth":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v11, :cond_19f

    .line 1204
    :try_start_187
    invoke-virtual {v14, v9, v10}, Lcom/android/server/accounts/AccountsDb;->deleteCeAccount(J)Z
    :try_end_18a
    .catchall {:try_start_187 .. :try_end_18a} :catchall_18b

    goto :goto_19f

    .line 1208
    :catchall_18b
    move-exception v0

    move-object/from16 v27, v5

    move-object/from16 v20, v6

    move/from16 v25, v11

    move-object/from16 v28, v14

    move-object/from16 v26, v15

    move-object/from16 v19, v22

    move-object/from16 v18, v23

    move-object v11, v2

    move-object v15, v3

    move-object v14, v4

    goto/16 :goto_263

    .line 1206
    :cond_19f
    :goto_19f
    :try_start_19f
    invoke-virtual {v14}, Lcom/android/server/accounts/AccountsDb;->setTransactionSuccessful()V
    :try_end_1a2
    .catchall {:try_start_19f .. :try_end_1a2} :catchall_251

    .line 1208
    :try_start_1a2
    invoke-virtual {v14}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V
    :try_end_1a5
    .catchall {:try_start_1a2 .. :try_end_1a5} :catchall_245

    .line 1209
    nop

    .line 1210
    const/16 v17, 0x1

    .line 1212
    .end local v1    # "accountDeleted":Z
    .local v17, "accountDeleted":Z
    :try_start_1a8
    sget-object v0, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_AUTHENTICATOR_REMOVE:Ljava/lang/String;

    const-string v18, "accounts"
    :try_end_1ac
    .catchall {:try_start_1a8 .. :try_end_1ac} :catchall_238

    move-object v1, v7

    move/from16 v25, v11

    move-object v11, v2

    move-object v2, v0

    .line 1212
    .end local v2    # "account":Landroid/accounts/Account;
    .local v11, "account":Landroid/accounts/Account;
    .local v25, "userUnlocked":Z
    move-object/from16 v26, v15

    move-object/from16 v19, v22

    move-object v15, v3

    move-object/from16 v3, v18

    .line 1212
    .end local v3    # "accountRemovedReceivers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v22    # "accountEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Landroid/accounts/Account;>;"
    .local v15, "accountRemovedReceivers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v19, "accountEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Landroid/accounts/Account;>;"
    .local v26, "metaAuthUid":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object/from16 v27, v5

    move-object/from16 v28, v14

    move-object/from16 v18, v23

    move-object v14, v4

    move-wide v4, v9

    .line 1212
    .end local v4    # "packagesToVisibility":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v5    # "accountNamesByType":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v23    # "accountsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Landroid/accounts/Account;>;"
    .local v14, "packagesToVisibility":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local v18, "accountsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Landroid/accounts/Account;>;"
    .local v27, "accountNamesByType":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .local v28, "accountsDb":Lcom/android/server/accounts/AccountsDb;
    move-object/from16 v20, v6

    move-object v6, v8

    .line 1212
    .end local v6    # "obsoleteAuthType":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v20, "obsoleteAuthType":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :try_start_1c3
    invoke-direct/range {v1 .. v6}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 1215
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userDataCache:Ljava/util/Map;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1100(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1216
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->authTokenCache:Ljava/util/Map;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1200(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1217
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountTokenCaches:Lcom/android/server/accounts/TokenCache;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1300(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/TokenCache;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/android/server/accounts/TokenCache;->remove(Landroid/accounts/Account;)V

    .line 1218
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->visibilityCache:Ljava/util/Map;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$900(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1221
    invoke-interface {v14}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1ea
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_210

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1222
    .local v1, "packageToVisibility":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v7, v2}, Lcom/android/server/accounts/AccountManagerService;->isVisible(I)Z

    move-result v2

    if-eqz v2, :cond_20f

    .line 1223
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v7, v2, v8}, Lcom/android/server/accounts/AccountManagerService;->notifyPackage(Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 1225
    .end local v1    # "packageToVisibility":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_20f
    goto :goto_1ea

    .line 1226
    :cond_210
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_214
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_228

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1227
    .local v1, "packageName":Ljava/lang/String;
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v2

    invoke-direct {v7, v11, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->sendAccountRemovedBroadcast(Landroid/accounts/Account;Ljava/lang/String;I)V
    :try_end_227
    .catchall {:try_start_1c3 .. :try_end_227} :catchall_231

    .line 1228
    .end local v1    # "packageName":Ljava/lang/String;
    goto :goto_214

    .line 1229
    .end local v14    # "packagesToVisibility":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v15    # "accountRemovedReceivers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_228
    nop

    .line 1237
    move/from16 v1, v17

    move-object/from16 v3, v27

    move-object/from16 v2, v28

    goto/16 :goto_2a5

    .line 1250
    .end local v9    # "accountId":J
    .end local v11    # "account":Landroid/accounts/Account;
    .end local v19    # "accountEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Landroid/accounts/Account;>;"
    .end local v27    # "accountNamesByType":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :catchall_231
    move-exception v0

    move/from16 v1, v17

    move-object/from16 v2, v28

    goto/16 :goto_32f

    .line 1250
    .end local v18    # "accountsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Landroid/accounts/Account;>;"
    .end local v20    # "obsoleteAuthType":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v25    # "userUnlocked":Z
    .end local v26    # "metaAuthUid":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v28    # "accountsDb":Lcom/android/server/accounts/AccountsDb;
    .restart local v6    # "obsoleteAuthType":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v11, "userUnlocked":Z
    .local v14, "accountsDb":Lcom/android/server/accounts/AccountsDb;
    .local v15, "metaAuthUid":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v23    # "accountsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Landroid/accounts/Account;>;"
    :catchall_238
    move-exception v0

    move-object/from16 v20, v6

    move/from16 v25, v11

    move-object/from16 v26, v15

    move-object/from16 v18, v23

    move-object v2, v14

    move/from16 v1, v17

    goto :goto_24f

    .line 1250
    .end local v17    # "accountDeleted":Z
    .local v1, "accountDeleted":Z
    :catchall_245
    move-exception v0

    move-object/from16 v20, v6

    move/from16 v25, v11

    move-object/from16 v26, v15

    move-object/from16 v18, v23

    move-object v2, v14

    .line 1250
    .end local v6    # "obsoleteAuthType":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v11    # "userUnlocked":Z
    .end local v14    # "accountsDb":Lcom/android/server/accounts/AccountsDb;
    .end local v15    # "metaAuthUid":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v23    # "accountsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Landroid/accounts/Account;>;"
    .local v2, "accountsDb":Lcom/android/server/accounts/AccountsDb;
    .restart local v18    # "accountsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Landroid/accounts/Account;>;"
    .restart local v20    # "obsoleteAuthType":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v25    # "userUnlocked":Z
    .restart local v26    # "metaAuthUid":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v28    # "accountsDb":Lcom/android/server/accounts/AccountsDb;
    :goto_24f
    goto/16 :goto_32f

    .line 1208
    .end local v18    # "accountsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Landroid/accounts/Account;>;"
    .end local v20    # "obsoleteAuthType":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v25    # "userUnlocked":Z
    .end local v26    # "metaAuthUid":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v28    # "accountsDb":Lcom/android/server/accounts/AccountsDb;
    .local v2, "account":Landroid/accounts/Account;
    .restart local v3    # "accountRemovedReceivers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "packagesToVisibility":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v5    # "accountNamesByType":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .restart local v6    # "obsoleteAuthType":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v9    # "accountId":J
    .restart local v11    # "userUnlocked":Z
    .restart local v14    # "accountsDb":Lcom/android/server/accounts/AccountsDb;
    .restart local v15    # "metaAuthUid":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v22    # "accountEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Landroid/accounts/Account;>;"
    .restart local v23    # "accountsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Landroid/accounts/Account;>;"
    :catchall_251
    move-exception v0

    move-object/from16 v27, v5

    move-object/from16 v20, v6

    move/from16 v25, v11

    move-object/from16 v28, v14

    move-object/from16 v26, v15

    move-object/from16 v19, v22

    move-object/from16 v18, v23

    move-object v11, v2

    move-object v15, v3

    move-object v14, v4

    .end local v2    # "account":Landroid/accounts/Account;
    .end local v3    # "accountRemovedReceivers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "packagesToVisibility":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v5    # "accountNamesByType":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v6    # "obsoleteAuthType":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v22    # "accountEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Landroid/accounts/Account;>;"
    .end local v23    # "accountsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Landroid/accounts/Account;>;"
    .local v11, "account":Landroid/accounts/Account;
    .local v14, "packagesToVisibility":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local v15, "accountRemovedReceivers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v18    # "accountsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Landroid/accounts/Account;>;"
    .restart local v19    # "accountEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Landroid/accounts/Account;>;"
    .restart local v20    # "obsoleteAuthType":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v25    # "userUnlocked":Z
    .restart local v26    # "metaAuthUid":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v27    # "accountNamesByType":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .restart local v28    # "accountsDb":Lcom/android/server/accounts/AccountsDb;
    :goto_263
    move-object/from16 v2, v28

    :try_start_265
    invoke-virtual {v2}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 1208
    .end local v28    # "accountsDb":Lcom/android/server/accounts/AccountsDb;
    .local v2, "accountsDb":Lcom/android/server/accounts/AccountsDb;
    throw v0

    .line 1250
    .end local v2    # "accountsDb":Lcom/android/server/accounts/AccountsDb;
    .end local v9    # "accountId":J
    .end local v18    # "accountsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Landroid/accounts/Account;>;"
    .end local v19    # "accountEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Landroid/accounts/Account;>;"
    .end local v20    # "obsoleteAuthType":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v24    # "knownAuth":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v25    # "userUnlocked":Z
    .end local v26    # "metaAuthUid":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v27    # "accountNamesByType":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .restart local v6    # "obsoleteAuthType":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v10    # "knownAuth":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local v11, "userUnlocked":Z
    .local v14, "accountsDb":Lcom/android/server/accounts/AccountsDb;
    .local v15, "metaAuthUid":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v23    # "accountsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Landroid/accounts/Account;>;"
    :catchall_269
    move-exception v0

    move-object/from16 v20, v6

    move-object/from16 v24, v10

    move/from16 v25, v11

    move-object v2, v14

    move-object/from16 v26, v15

    move-object/from16 v18, v23

    .line 1250
    .end local v6    # "obsoleteAuthType":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v10    # "knownAuth":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v11    # "userUnlocked":Z
    .end local v14    # "accountsDb":Lcom/android/server/accounts/AccountsDb;
    .end local v15    # "metaAuthUid":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v23    # "accountsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Landroid/accounts/Account;>;"
    .restart local v2    # "accountsDb":Lcom/android/server/accounts/AccountsDb;
    .restart local v18    # "accountsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Landroid/accounts/Account;>;"
    .restart local v20    # "obsoleteAuthType":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v24    # "knownAuth":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v25    # "userUnlocked":Z
    .restart local v26    # "metaAuthUid":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto/16 :goto_32f

    .line 1230
    .end local v18    # "accountsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Landroid/accounts/Account;>;"
    .end local v20    # "obsoleteAuthType":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v24    # "knownAuth":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v25    # "userUnlocked":Z
    .end local v26    # "metaAuthUid":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local v2, "account":Landroid/accounts/Account;
    .local v3, "accountEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Landroid/accounts/Account;>;"
    .local v4, "accountsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Landroid/accounts/Account;>;"
    .restart local v5    # "accountNamesByType":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .restart local v6    # "obsoleteAuthType":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v10    # "knownAuth":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v11    # "userUnlocked":Z
    .restart local v14    # "accountsDb":Lcom/android/server/accounts/AccountsDb;
    .restart local v15    # "metaAuthUid":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local v19, "accountId":J
    :cond_277
    move-object/from16 v18, v4

    move-object/from16 v27, v5

    move-object/from16 v24, v10

    move/from16 v25, v11

    move-object/from16 v26, v15

    move-wide/from16 v9, v19

    move-object v11, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v6

    move-object v2, v14

    .end local v3    # "accountEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Landroid/accounts/Account;>;"
    .end local v4    # "accountsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Landroid/accounts/Account;>;"
    .end local v5    # "accountNamesByType":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v6    # "obsoleteAuthType":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v10    # "knownAuth":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v14    # "accountsDb":Lcom/android/server/accounts/AccountsDb;
    .end local v15    # "metaAuthUid":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local v2, "accountsDb":Lcom/android/server/accounts/AccountsDb;
    .restart local v9    # "accountId":J
    .local v11, "account":Landroid/accounts/Account;
    .restart local v18    # "accountsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Landroid/accounts/Account;>;"
    .local v19, "accountEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Landroid/accounts/Account;>;"
    .restart local v20    # "obsoleteAuthType":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v24    # "knownAuth":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v25    # "userUnlocked":Z
    .restart local v26    # "metaAuthUid":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v27    # "accountNamesByType":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    iget-object v0, v11, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v3, v27

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1230
    .end local v27    # "accountNamesByType":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .local v3, "accountNamesByType":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    check-cast v0, Ljava/util/ArrayList;

    .line 1231
    .local v0, "accountNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v0, :cond_2a0

    .line 1232
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v4

    .line 1233
    iget-object v4, v11, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1235
    :cond_2a0
    iget-object v4, v11, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1237
    .end local v0    # "accountNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "accountId":J
    .end local v11    # "account":Landroid/accounts/Account;
    .end local v19    # "accountEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Landroid/accounts/Account;>;"
    :goto_2a5
    nop

    .line 1186
    move-object v14, v2

    move-object v5, v3

    move-object/from16 v4, v18

    move-object/from16 v6, v20

    move-object/from16 v0, v21

    move-object/from16 v10, v24

    move/from16 v11, v25

    move-object/from16 v15, v26

    goto/16 :goto_11b

    .line 1238
    .end local v2    # "accountsDb":Lcom/android/server/accounts/AccountsDb;
    .end local v3    # "accountNamesByType":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v18    # "accountsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Landroid/accounts/Account;>;"
    .end local v20    # "obsoleteAuthType":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v24    # "knownAuth":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v25    # "userUnlocked":Z
    .end local v26    # "metaAuthUid":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v4    # "accountsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Landroid/accounts/Account;>;"
    .restart local v5    # "accountNamesByType":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .restart local v6    # "obsoleteAuthType":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v10    # "knownAuth":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local v11, "userUnlocked":Z
    .restart local v14    # "accountsDb":Lcom/android/server/accounts/AccountsDb;
    .restart local v15    # "metaAuthUid":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_2b6
    move-object/from16 v18, v4

    move-object v3, v5

    move-object/from16 v20, v6

    move-object/from16 v24, v10

    move/from16 v25, v11

    move-object v2, v14

    move-object/from16 v26, v15

    .line 1238
    .end local v4    # "accountsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Landroid/accounts/Account;>;"
    .end local v5    # "accountNamesByType":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v6    # "obsoleteAuthType":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v10    # "knownAuth":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v11    # "userUnlocked":Z
    .end local v14    # "accountsDb":Lcom/android/server/accounts/AccountsDb;
    .end local v15    # "metaAuthUid":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v2    # "accountsDb":Lcom/android/server/accounts/AccountsDb;
    .restart local v3    # "accountNamesByType":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .restart local v18    # "accountsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Landroid/accounts/Account;>;"
    .restart local v20    # "obsoleteAuthType":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v24    # "knownAuth":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v25    # "userUnlocked":Z
    .restart local v26    # "metaAuthUid":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2ca
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1239
    .local v4, "cur":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1240
    .local v5, "accountType":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 1241
    .local v6, "accountNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Landroid/accounts/Account;

    .line 1242
    .local v9, "accountsForType":[Landroid/accounts/Account;
    const/4 v10, 0x0

    .line 1242
    .local v10, "i":I
    :goto_2e9
    array-length v11, v9

    if-ge v10, v11, :cond_304

    .line 1243
    new-instance v11, Landroid/accounts/Account;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 1244
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v11, v14, v5, v15}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v11, v9, v10

    .line 1242
    add-int/lit8 v10, v10, 0x1

    goto :goto_2e9

    .line 1246
    .end local v10    # "i":I
    :cond_304
    iget-object v10, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    invoke-virtual {v10, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1247
    .end local v4    # "cur":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v5    # "accountType":Ljava/lang/String;
    .end local v6    # "accountNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "accountsForType":[Landroid/accounts/Account;
    goto :goto_2ca

    .line 1248
    :cond_30a
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->visibilityCache:Ljava/util/Map;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$900(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v2}, Lcom/android/server/accounts/AccountsDb;->findAllVisibilityValues()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_315
    .catchall {:try_start_265 .. :try_end_315} :catchall_321

    .line 1250
    .end local v3    # "accountNamesByType":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    if-eqz v1, :cond_31e

    .line 1251
    :try_start_317
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v0

    invoke-direct {v7, v0}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V

    .line 1254
    .end local v1    # "accountDeleted":Z
    .end local v2    # "accountsDb":Lcom/android/server/accounts/AccountsDb;
    .end local v16    # "knownUids":Landroid/util/SparseBooleanArray;
    .end local v18    # "accountsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Landroid/accounts/Account;>;"
    .end local v20    # "obsoleteAuthType":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v26    # "metaAuthUid":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_31e
    monitor-exit v13
    :try_end_31f
    .catchall {:try_start_317 .. :try_end_31f} :catchall_340

    .line 1255
    :try_start_31f
    monitor-exit v12
    :try_end_320
    .catchall {:try_start_31f .. :try_end_320} :catchall_349

    .line 1256
    return-void

    .line 1250
    .restart local v1    # "accountDeleted":Z
    .restart local v2    # "accountsDb":Lcom/android/server/accounts/AccountsDb;
    .restart local v16    # "knownUids":Landroid/util/SparseBooleanArray;
    .restart local v18    # "accountsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Landroid/accounts/Account;>;"
    .restart local v20    # "obsoleteAuthType":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v26    # "metaAuthUid":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catchall_321
    move-exception v0

    goto :goto_32f

    .line 1250
    .end local v2    # "accountsDb":Lcom/android/server/accounts/AccountsDb;
    .end local v18    # "accountsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Landroid/accounts/Account;>;"
    .end local v20    # "obsoleteAuthType":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v24    # "knownAuth":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v25    # "userUnlocked":Z
    .end local v26    # "metaAuthUid":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local v4, "accountsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Landroid/accounts/Account;>;"
    .local v6, "obsoleteAuthType":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v10, "knownAuth":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v11    # "userUnlocked":Z
    .restart local v14    # "accountsDb":Lcom/android/server/accounts/AccountsDb;
    .restart local v15    # "metaAuthUid":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catchall_323
    move-exception v0

    move-object/from16 v18, v4

    move-object/from16 v20, v6

    move-object/from16 v24, v10

    move/from16 v25, v11

    move-object v2, v14

    move-object/from16 v26, v15

    .line 1250
    .end local v4    # "accountsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Landroid/accounts/Account;>;"
    .end local v6    # "obsoleteAuthType":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v10    # "knownAuth":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v11    # "userUnlocked":Z
    .end local v14    # "accountsDb":Lcom/android/server/accounts/AccountsDb;
    .end local v15    # "metaAuthUid":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v2    # "accountsDb":Lcom/android/server/accounts/AccountsDb;
    .restart local v18    # "accountsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Landroid/accounts/Account;>;"
    .restart local v20    # "obsoleteAuthType":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v24    # "knownAuth":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v25    # "userUnlocked":Z
    .restart local v26    # "metaAuthUid":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_32f
    if-eqz v1, :cond_338

    .line 1251
    :try_start_331
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v3

    invoke-direct {v7, v3}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V

    :cond_338
    throw v0

    .line 1254
    .end local v1    # "accountDeleted":Z
    .end local v2    # "accountsDb":Lcom/android/server/accounts/AccountsDb;
    .end local v16    # "knownUids":Landroid/util/SparseBooleanArray;
    .end local v18    # "accountsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Landroid/accounts/Account;>;"
    .end local v20    # "obsoleteAuthType":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v24    # "knownAuth":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v25    # "userUnlocked":Z
    .end local v26    # "metaAuthUid":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v10    # "knownAuth":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v11    # "userUnlocked":Z
    :catchall_339
    move-exception v0

    move-object/from16 v24, v10

    move/from16 v25, v11

    .line 1254
    .end local v10    # "knownAuth":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v11    # "userUnlocked":Z
    .restart local v24    # "knownAuth":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v25    # "userUnlocked":Z
    :goto_33e
    monitor-exit v13
    :try_end_33f
    .catchall {:try_start_331 .. :try_end_33f} :catchall_340

    :try_start_33f
    throw v0

    :catchall_340
    move-exception v0

    goto :goto_33e

    .line 1255
    .end local v24    # "knownAuth":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v25    # "userUnlocked":Z
    .restart local v10    # "knownAuth":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v11    # "userUnlocked":Z
    :catchall_342
    move-exception v0

    move-object/from16 v24, v10

    move/from16 v25, v11

    .line 1255
    .end local v10    # "knownAuth":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v11    # "userUnlocked":Z
    .restart local v24    # "knownAuth":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v25    # "userUnlocked":Z
    :goto_347
    monitor-exit v12
    :try_end_348
    .catchall {:try_start_33f .. :try_end_348} :catchall_349

    throw v0

    :catchall_349
    move-exception v0

    goto :goto_347
.end method


# virtual methods
.method public accountAuthenticated(Landroid/accounts/Account;)Z
    .registers 9
    .param p1, "account"    # Landroid/accounts/Account;

    .line 1685
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1686
    .local v0, "callingUid":I
    const-string v1, "AccountManagerService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_24

    .line 1687
    const-string v1, "accountAuthenticated( account: %s, callerUid: %s)"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p1, v5, v4

    .line 1690
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    .line 1687
    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1691
    .local v1, "msg":Ljava/lang/String;
    const-string v5, "AccountManagerService"

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    .end local v1    # "msg":Ljava/lang/String;
    :cond_24
    const-string v1, "account cannot be null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1694
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 1695
    .local v1, "userId":I
    iget-object v5, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v5, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 1703
    invoke-direct {p0, v1, v0}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccounts(II)Z

    move-result v2

    if-eqz v2, :cond_59

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 1704
    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccountsForType(ILjava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_44

    goto :goto_59

    .line 1708
    :cond_44
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v2

    .line 1710
    .local v2, "identityToken":J
    :try_start_48
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v4

    .line 1711
    .local v4, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->updateLastAuthenticatedTime(Landroid/accounts/Account;)Z

    move-result v5
    :try_end_50
    .catchall {:try_start_48 .. :try_end_50} :catchall_54

    .line 1713
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1711
    return v5

    .line 1713
    .end local v4    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_54
    move-exception v4

    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v4

    .line 1705
    .end local v2    # "identityToken":J
    :cond_59
    :goto_59
    return v4

    .line 1696
    :cond_5a
    new-array v2, v2, [Ljava/lang/Object;

    .line 1698
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    iget-object v4, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 1696
    const-string/jumbo v3, "uid %s cannot notify authentication for accounts of type: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1700
    .local v2, "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public addAccount(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;)V
    .registers 33
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "authTokenType"    # Ljava/lang/String;
    .param p4, "requiredFeatures"    # [Ljava/lang/String;
    .param p5, "expectActivityLaunch"    # Z
    .param p6, "optionsIn"    # Landroid/os/Bundle;

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v13, p2

    .line 3136
    move-object/from16 v12, p6

    const/16 v0, 0x10

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 3137
    const/4 v0, 0x1

    invoke-static {v12, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 3138
    const-string v0, "AccountManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 3139
    const-string v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addAccount: accountType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", response "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", authTokenType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p3

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", requiredFeatures "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3142
    invoke-static/range {p4 .. p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", expectActivityLaunch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p5

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", caller\'s uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3144
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3145
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3139
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_75

    .line 3147
    :cond_71
    move-object/from16 v11, p3

    move/from16 v10, p5

    :goto_75
    if-eqz v14, :cond_12c

    .line 3148
    if-eqz v13, :cond_124

    .line 3151
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 3152
    .local v9, "uid":I
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 3153
    .local v8, "userId":I
    invoke-direct {v15, v8, v9}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccounts(II)Z

    move-result v0

    if-nez v0, :cond_94

    .line 3155
    const/16 v1, 0x64

    :try_start_89
    const-string v0, "User is not allowed to add an account!"

    invoke-interface {v14, v1, v0}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_8e
    .catch Landroid/os/RemoteException; {:try_start_89 .. :try_end_8e} :catch_8f

    .line 3158
    goto :goto_90

    .line 3157
    :catch_8f
    move-exception v0

    .line 3159
    :goto_90
    invoke-direct {v15, v1, v8}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    .line 3160
    return-void

    .line 3162
    :cond_94
    invoke-direct {v15, v8, v13, v9}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccountsForType(ILjava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_a7

    .line 3164
    const/16 v1, 0x65

    :try_start_9c
    const-string v0, "User cannot modify accounts of this type (policy)."

    invoke-interface {v14, v1, v0}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_a1
    .catch Landroid/os/RemoteException; {:try_start_9c .. :try_end_a1} :catch_a2

    .line 3167
    goto :goto_a3

    .line 3166
    :catch_a2
    move-exception v0

    .line 3168
    :goto_a3
    invoke-direct {v15, v1, v8}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    .line 3170
    return-void

    .line 3173
    :cond_a7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 3174
    .local v7, "pid":I
    if-nez v12, :cond_b3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_b4

    :cond_b3
    move-object v0, v12

    :goto_b4
    move-object v6, v0

    .line 3175
    .local v6, "options":Landroid/os/Bundle;
    const-string v0, "callerUid"

    invoke-virtual {v6, v0, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3176
    const-string v0, "callerPid"

    invoke-virtual {v6, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3178
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 3179
    .local v5, "usrId":I
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v3, v0

    .line 3181
    .local v3, "identityToken":J
    :try_start_c8
    invoke-virtual {v15, v5}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 3182
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    sget-object v1, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_CALLED_ACCOUNT_ADD:Ljava/lang/String;

    const-string v2, "accounts"

    invoke-direct {v15, v0, v1, v2, v9}, Lcom/android/server/accounts/AccountManagerService;->logRecordWithUid(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;I)V

    .line 3185
    new-instance v2, Lcom/android/server/accounts/AccountManagerService$9;
    :try_end_d5
    .catchall {:try_start_c8 .. :try_end_d5} :catchall_114

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object v1, v2

    move-object/from16 v20, v2

    move-object v2, v15

    move-wide/from16 v21, v3

    move-object v3, v0

    .end local v3    # "identityToken":J
    .local v21, "identityToken":J
    move-object v4, v14

    move/from16 v23, v5

    move-object v5, v13

    .line 3185
    .end local v5    # "usrId":I
    .local v23, "usrId":I
    move-object/from16 v24, v6

    move v6, v10

    .line 3185
    .end local v6    # "options":Landroid/os/Bundle;
    .local v24, "options":Landroid/os/Bundle;
    move/from16 v25, v7

    move/from16 v7, v16

    .line 3185
    .end local v7    # "pid":I
    .local v25, "pid":I
    move/from16 v16, v8

    move-object/from16 v8, v17

    .line 3185
    .end local v8    # "userId":I
    .local v16, "userId":I
    move/from16 v17, v9

    move/from16 v9, v18

    .line 3185
    .end local v9    # "uid":I
    .local v17, "uid":I
    move/from16 v10, v19

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, v24

    move-object/from16 v14, p2

    :try_start_101
    invoke-direct/range {v1 .. v14}, Lcom/android/server/accounts/AccountManagerService$9;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 3200
    move-object/from16 v1, v20

    invoke-virtual {v1}, Lcom/android/server/accounts/AccountManagerService$9;->bind()V
    :try_end_109
    .catchall {:try_start_101 .. :try_end_109} :catchall_110

    .line 3202
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    move-wide/from16 v1, v21

    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3203
    .end local v21    # "identityToken":J
    .local v1, "identityToken":J
    nop

    .line 3204
    return-void

    .line 3202
    .end local v1    # "identityToken":J
    .restart local v21    # "identityToken":J
    :catchall_110
    move-exception v0

    move-wide/from16 v1, v21

    .line 3202
    .end local v21    # "identityToken":J
    .restart local v1    # "identityToken":J
    goto :goto_120

    .line 3202
    .end local v1    # "identityToken":J
    .end local v16    # "userId":I
    .end local v17    # "uid":I
    .end local v23    # "usrId":I
    .end local v24    # "options":Landroid/os/Bundle;
    .end local v25    # "pid":I
    .restart local v3    # "identityToken":J
    .restart local v5    # "usrId":I
    .restart local v6    # "options":Landroid/os/Bundle;
    .restart local v7    # "pid":I
    .restart local v8    # "userId":I
    .restart local v9    # "uid":I
    :catchall_114
    move-exception v0

    move-wide v1, v3

    move/from16 v23, v5

    move-object/from16 v24, v6

    move/from16 v25, v7

    move/from16 v16, v8

    move/from16 v17, v9

    .line 3202
    .end local v3    # "identityToken":J
    .end local v5    # "usrId":I
    .end local v6    # "options":Landroid/os/Bundle;
    .end local v7    # "pid":I
    .end local v8    # "userId":I
    .end local v9    # "uid":I
    .restart local v1    # "identityToken":J
    .restart local v16    # "userId":I
    .restart local v17    # "uid":I
    .restart local v23    # "usrId":I
    .restart local v24    # "options":Landroid/os/Bundle;
    .restart local v25    # "pid":I
    :goto_120
    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v0

    .line 3148
    .end local v1    # "identityToken":J
    .end local v16    # "userId":I
    .end local v17    # "uid":I
    .end local v23    # "usrId":I
    .end local v24    # "options":Landroid/os/Bundle;
    .end local v25    # "pid":I
    :cond_124
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "accountType is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3147
    :cond_12c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "response is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAccountAsUser(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;I)V
    .registers 34
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "authTokenType"    # Ljava/lang/String;
    .param p4, "requiredFeatures"    # [Ljava/lang/String;
    .param p5, "expectActivityLaunch"    # Z
    .param p6, "optionsIn"    # Landroid/os/Bundle;
    .param p7, "userId"    # I

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v13, p2

    move-object/from16 v12, p6

    .line 3210
    move/from16 v11, p7

    const/4 v0, 0x1

    invoke-static {v12, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 3211
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 3212
    .local v10, "callingUid":I
    const-string v1, "AccountManagerService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 3213
    const-string v1, "AccountManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addAccount: accountType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", response "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", authTokenType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", requiredFeatures "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3216
    invoke-static/range {p4 .. p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", expectActivityLaunch "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p5

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", caller\'s uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3218
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3219
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", for user id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3213
    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7e

    .line 3222
    :cond_7a
    move-object/from16 v9, p3

    move/from16 v8, p5

    :goto_7e
    const/4 v1, 0x0

    if-eqz v14, :cond_83

    move v3, v0

    goto :goto_84

    :cond_83
    move v3, v1

    :goto_84
    const-string/jumbo v4, "response cannot be null"

    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3223
    if-eqz v13, :cond_8e

    move v3, v0

    goto :goto_8f

    :cond_8e
    move v3, v1

    :goto_8f
    const-string v4, "accountType cannot be null"

    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3225
    invoke-direct {v15, v10, v11}, Lcom/android/server/accounts/AccountManagerService;->isCrossUser(II)Z

    move-result v3

    if-nez v3, :cond_139

    .line 3234
    invoke-direct {v15, v11, v10}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccounts(II)Z

    move-result v0

    if-nez v0, :cond_ad

    .line 3236
    const/16 v1, 0x64

    :try_start_a2
    const-string v0, "User is not allowed to add an account!"

    invoke-interface {v14, v1, v0}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_a7
    .catch Landroid/os/RemoteException; {:try_start_a2 .. :try_end_a7} :catch_a8

    .line 3239
    goto :goto_a9

    .line 3238
    :catch_a8
    move-exception v0

    .line 3240
    :goto_a9
    invoke-direct {v15, v1, v11}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    .line 3241
    return-void

    .line 3243
    :cond_ad
    invoke-direct {v15, v11, v13, v10}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccountsForType(ILjava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_c0

    .line 3245
    const/16 v1, 0x65

    :try_start_b5
    const-string v0, "User cannot modify accounts of this type (policy)."

    invoke-interface {v14, v1, v0}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_ba
    .catch Landroid/os/RemoteException; {:try_start_b5 .. :try_end_ba} :catch_bb

    .line 3248
    goto :goto_bc

    .line 3247
    :catch_bb
    move-exception v0

    .line 3249
    :goto_bc
    invoke-direct {v15, v1, v11}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    .line 3251
    return-void

    .line 3254
    :cond_c0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 3255
    .local v7, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 3256
    .local v6, "uid":I
    if-nez v12, :cond_d0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_d1

    :cond_d0
    move-object v0, v12

    :goto_d1
    move-object v5, v0

    .line 3257
    .local v5, "options":Landroid/os/Bundle;
    const-string v0, "callerUid"

    invoke-virtual {v5, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3258
    const-string v0, "callerPid"

    invoke-virtual {v5, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3260
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v3, v0

    .line 3262
    .local v3, "identityToken":J
    :try_start_e1
    invoke-virtual {v15, v11}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 3263
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    sget-object v1, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_CALLED_ACCOUNT_ADD:Ljava/lang/String;

    const-string v2, "accounts"

    invoke-direct {v15, v0, v1, v2, v11}, Lcom/android/server/accounts/AccountManagerService;->logRecordWithUid(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;I)V

    .line 3266
    new-instance v2, Lcom/android/server/accounts/AccountManagerService$10;
    :try_end_ee
    .catchall {:try_start_e1 .. :try_end_ee} :catchall_12b

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object v1, v2

    move-object/from16 v20, v2

    move-object v2, v15

    move-wide/from16 v21, v3

    move-object v3, v0

    .end local v3    # "identityToken":J
    .local v21, "identityToken":J
    move-object v4, v14

    move-object/from16 v23, v5

    move-object v5, v13

    .line 3266
    .end local v5    # "options":Landroid/os/Bundle;
    .local v23, "options":Landroid/os/Bundle;
    move/from16 v24, v6

    move v6, v8

    .line 3266
    .end local v6    # "uid":I
    .local v24, "uid":I
    move/from16 v25, v7

    move/from16 v7, v16

    .line 3266
    .end local v7    # "pid":I
    .local v25, "pid":I
    move-object/from16 v8, v17

    move/from16 v9, v18

    move/from16 v16, v10

    move/from16 v10, v19

    .line 3266
    .end local v10    # "callingUid":I
    .local v16, "callingUid":I
    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, v23

    move-object/from16 v14, p2

    :try_start_118
    invoke-direct/range {v1 .. v14}, Lcom/android/server/accounts/AccountManagerService$10;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 3284
    move-object/from16 v1, v20

    invoke-virtual {v1}, Lcom/android/server/accounts/AccountManagerService$10;->bind()V
    :try_end_120
    .catchall {:try_start_118 .. :try_end_120} :catchall_127

    .line 3286
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    move-wide/from16 v1, v21

    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3287
    .end local v21    # "identityToken":J
    .local v1, "identityToken":J
    nop

    .line 3288
    return-void

    .line 3286
    .end local v1    # "identityToken":J
    .restart local v21    # "identityToken":J
    :catchall_127
    move-exception v0

    move-wide/from16 v1, v21

    .line 3286
    .end local v21    # "identityToken":J
    .restart local v1    # "identityToken":J
    goto :goto_135

    .line 3286
    .end local v1    # "identityToken":J
    .end local v16    # "callingUid":I
    .end local v23    # "options":Landroid/os/Bundle;
    .end local v24    # "uid":I
    .end local v25    # "pid":I
    .restart local v3    # "identityToken":J
    .restart local v5    # "options":Landroid/os/Bundle;
    .restart local v6    # "uid":I
    .restart local v7    # "pid":I
    .restart local v10    # "callingUid":I
    :catchall_12b
    move-exception v0

    move-wide v1, v3

    move-object/from16 v23, v5

    move/from16 v24, v6

    move/from16 v25, v7

    move/from16 v16, v10

    .line 3286
    .end local v3    # "identityToken":J
    .end local v5    # "options":Landroid/os/Bundle;
    .end local v6    # "uid":I
    .end local v7    # "pid":I
    .end local v10    # "callingUid":I
    .restart local v1    # "identityToken":J
    .restart local v16    # "callingUid":I
    .restart local v23    # "options":Landroid/os/Bundle;
    .restart local v24    # "uid":I
    .restart local v25    # "pid":I
    :goto_135
    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v0

    .line 3226
    .end local v1    # "identityToken":J
    .end local v16    # "callingUid":I
    .end local v23    # "options":Landroid/os/Bundle;
    .end local v24    # "uid":I
    .end local v25    # "pid":I
    .restart local v10    # "callingUid":I
    :cond_139
    move/from16 v16, v10

    .line 3226
    .end local v10    # "callingUid":I
    .restart local v16    # "callingUid":I
    new-instance v3, Ljava/lang/SecurityException;

    new-array v2, v2, [Ljava/lang/Object;

    .line 3229
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    .line 3230
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    .line 3227
    const-string v0, "User %s trying to add account for %s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 5
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 1622
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/accounts/AccountManagerService;->addAccountExplicitlyWithVisibility(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public addAccountExplicitlyWithVisibility(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;)Z
    .registers 20
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "packageToVisibility"    # Ljava/util/Map;

    move-object v8, p0

    move-object/from16 v9, p1

    .line 464
    const/4 v0, 0x1

    move-object/from16 v10, p3

    invoke-static {v10, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 465
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 466
    .local v11, "callingUid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v12

    .line 467
    .local v12, "userId":I
    const-string v1, "AccountManagerService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 468
    const-string v1, "AccountManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addAccountExplicitly: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", caller\'s uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 468
    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :cond_44
    const-string v1, "account cannot be null"

    invoke-static {v9, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    iget-object v1, v9, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {v8, v1, v11, v12}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 484
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v13, v0

    .line 486
    .local v13, "identityToken":J
    :try_start_56
    invoke-virtual {v8, v12}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v2

    .line 487
    .local v2, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    move-object v1, v8

    move-object v3, v9

    move-object/from16 v4, p2

    move-object v5, v10

    move v6, v11

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/accounts/AccountManagerService;->addAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;ILjava/util/Map;)Z

    move-result v0
    :try_end_66
    .catchall {:try_start_56 .. :try_end_66} :catchall_6a

    .line 490
    invoke-static {v13, v14}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 487
    return v0

    .line 490
    .end local v2    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_6a
    move-exception v0

    invoke-static {v13, v14}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v0

    .line 473
    .end local v13    # "identityToken":J
    :cond_6f
    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 474
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, v9, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v2, v1, v0

    .line 473
    const-string/jumbo v0, "uid %s cannot explicitly add accounts of type: %s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 475
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public addSharedAccountsFromParentUser(IILjava/lang/String;)V
    .registers 8
    .param p1, "parentUserId"    # I
    .param p2, "userId"    # I
    .param p3, "opPackageName"    # Ljava/lang/String;

    .line 4378
    const-string v0, "addSharedAccountsFromParentUser"

    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    .line 4379
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p3}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 4380
    .local v0, "accounts":[Landroid/accounts/Account;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    .line 4381
    .local v3, "account":Landroid/accounts/Account;
    invoke-direct {p0, v3, p2}, Lcom/android/server/accounts/AccountManagerService;->addSharedAccountAsUser(Landroid/accounts/Account;I)Z

    .line 4380
    .end local v3    # "account":Landroid/accounts/Account;
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 4383
    :cond_16
    return-void
.end method

.method public clearPassword(Landroid/accounts/Account;)V
    .registers 8
    .param p1, "account"    # Landroid/accounts/Account;

    .line 2623
    const/16 v0, 0x13

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 2624
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2625
    .local v0, "callingUid":I
    const-string v1, "AccountManagerService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 2626
    const-string v1, "AccountManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearPassword: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", caller\'s uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2628
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2626
    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2630
    :cond_3c
    const-string v1, "account cannot be null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2631
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 2632
    .local v1, "userId":I
    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v3, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_63

    .line 2639
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v2

    .line 2641
    .local v2, "identityToken":J
    :try_start_51
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v4

    .line 2642
    .local v4, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    const/4 v5, 0x0

    invoke-direct {p0, v4, p1, v5, v0}, Lcom/android/server/accounts/AccountManagerService;->setPasswordInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;I)V
    :try_end_59
    .catchall {:try_start_51 .. :try_end_59} :catchall_5e

    .line 2644
    .end local v4    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2645
    nop

    .line 2646
    return-void

    .line 2644
    :catchall_5e
    move-exception v4

    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v4

    .line 2633
    .end local v2    # "identityToken":J
    :cond_63
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 2635
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 2633
    const-string/jumbo v3, "uid %s cannot clear passwords for accounts of type: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2637
    .local v2, "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public confirmCredentialsAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Landroid/os/Bundle;ZI)V
    .registers 28
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "options"    # Landroid/os/Bundle;
    .param p4, "expectActivityLaunch"    # Z
    .param p5, "userId"    # I

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    .line 3658
    move/from16 v12, p5

    const/4 v0, 0x1

    move-object/from16 v11, p3

    invoke-static {v11, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 3659
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 3660
    .local v10, "callingUid":I
    const-string v1, "AccountManagerService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 3661
    const-string v1, "AccountManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "confirmCredentials: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", response "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", expectActivityLaunch "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p4

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", caller\'s uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3665
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3661
    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5a

    .line 3668
    :cond_58
    move/from16 v9, p4

    :goto_5a
    invoke-direct {v13, v10, v12}, Lcom/android/server/accounts/AccountManagerService;->isCrossUser(II)Z

    move-result v1

    if-nez v1, :cond_bc

    .line 3675
    if-eqz v14, :cond_b1

    .line 3676
    if-eqz v15, :cond_a7

    .line 3677
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v7, v0

    .line 3679
    .local v7, "identityToken":J
    :try_start_69
    invoke-virtual {v13, v12}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v3

    .line 3680
    .local v3, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$13;

    iget-object v5, v15, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/16 v16, 0x1

    iget-object v6, v15, Landroid/accounts/Account;->name:Ljava/lang/String;
    :try_end_75
    .catchall {:try_start_69 .. :try_end_75} :catchall_9f

    const/16 v17, 0x1

    const/16 v18, 0x1

    move-object v1, v0

    move-object v2, v13

    move-object v4, v14

    move-object/from16 v19, v6

    move v6, v9

    move-wide/from16 v20, v7

    move/from16 v7, v16

    .end local v7    # "identityToken":J
    .local v20, "identityToken":J
    move-object/from16 v8, v19

    move/from16 v9, v17

    move/from16 v16, v10

    move/from16 v10, v18

    .line 3680
    .end local v10    # "callingUid":I
    .local v16, "callingUid":I
    move-object v11, v15

    move-object/from16 v12, p3

    :try_start_8e
    invoke-direct/range {v1 .. v12}, Lcom/android/server/accounts/AccountManagerService$13;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZLandroid/accounts/Account;Landroid/os/Bundle;)V

    .line 3692
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$13;->bind()V
    :try_end_94
    .catchall {:try_start_8e .. :try_end_94} :catchall_9b

    .line 3694
    .end local v3    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    move-wide/from16 v1, v20

    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3695
    .end local v20    # "identityToken":J
    .local v1, "identityToken":J
    nop

    .line 3696
    return-void

    .line 3694
    .end local v1    # "identityToken":J
    .restart local v20    # "identityToken":J
    :catchall_9b
    move-exception v0

    move-wide/from16 v1, v20

    .line 3694
    .end local v20    # "identityToken":J
    .restart local v1    # "identityToken":J
    goto :goto_a3

    .line 3694
    .end local v1    # "identityToken":J
    .end local v16    # "callingUid":I
    .restart local v7    # "identityToken":J
    .restart local v10    # "callingUid":I
    :catchall_9f
    move-exception v0

    move-wide v1, v7

    move/from16 v16, v10

    .line 3694
    .end local v7    # "identityToken":J
    .end local v10    # "callingUid":I
    .restart local v1    # "identityToken":J
    .restart local v16    # "callingUid":I
    :goto_a3
    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v0

    .line 3676
    .end local v1    # "identityToken":J
    .end local v16    # "callingUid":I
    .restart local v10    # "callingUid":I
    :cond_a7
    move/from16 v16, v10

    .line 3676
    .end local v10    # "callingUid":I
    .restart local v16    # "callingUid":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3675
    .end local v16    # "callingUid":I
    .restart local v10    # "callingUid":I
    :cond_b1
    move/from16 v16, v10

    .line 3675
    .end local v10    # "callingUid":I
    .restart local v16    # "callingUid":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "response is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3669
    .end local v16    # "callingUid":I
    .restart local v10    # "callingUid":I
    :cond_bc
    move/from16 v16, v10

    .line 3669
    .end local v10    # "callingUid":I
    .restart local v16    # "callingUid":I
    new-instance v1, Ljava/lang/SecurityException;

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 3672
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 3673
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    .line 3670
    const-string v0, "User %s trying to confirm account credentials for %s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public copyAccountToUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;II)V
    .registers 27
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "userFrom"    # I
    .param p4, "userTo"    # I

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v13, p2

    move/from16 v12, p3

    .line 1628
    move/from16 v11, p4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 1629
    .local v10, "callingUid":I
    const/4 v0, -0x1

    invoke-direct {v14, v10, v0}, Lcom/android/server/accounts/AccountManagerService;->isCrossUser(II)Z

    move-result v0

    if-nez v0, :cond_b7

    .line 1633
    invoke-virtual {v14, v12}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v16

    .line 1634
    .local v16, "fromAccounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-virtual {v14, v11}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v17

    .line 1635
    .local v17, "toAccounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    if-eqz v16, :cond_8a

    if-nez v17, :cond_25

    .line 1636
    move/from16 v18, v10

    goto/16 :goto_8c

    .line 1648
    :cond_25
    const-string v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Copying account "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v8, v0

    .line 1652
    .local v8, "identityToken":J
    :try_start_52
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$5;

    iget-object v5, v13, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v4, v13, Landroid/accounts/Account;->name:Ljava/lang/String;
    :try_end_5a
    .catchall {:try_start_52 .. :try_end_5a} :catchall_82

    const/16 v18, 0x0

    move-object v1, v0

    move-object v2, v14

    move-object/from16 v3, v16

    move-object/from16 v19, v4

    move-object v4, v15

    move-wide/from16 v20, v8

    move-object/from16 v8, v19

    .end local v8    # "identityToken":J
    .local v20, "identityToken":J
    move/from16 v9, v18

    move/from16 v18, v10

    move-object v10, v13

    .end local v10    # "callingUid":I
    .local v18, "callingUid":I
    move-object v11, v15

    move-object/from16 v12, v17

    move/from16 v13, p3

    :try_start_71
    invoke-direct/range {v1 .. v13}, Lcom/android/server/accounts/AccountManagerService$5;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/accounts/Account;Landroid/accounts/IAccountManagerResponse;Lcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    .line 1677
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$5;->bind()V
    :try_end_77
    .catchall {:try_start_71 .. :try_end_77} :catchall_7e

    .line 1679
    move-wide/from16 v1, v20

    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1680
    .end local v20    # "identityToken":J
    .local v1, "identityToken":J
    nop

    .line 1681
    return-void

    .line 1679
    .end local v1    # "identityToken":J
    .restart local v20    # "identityToken":J
    :catchall_7e
    move-exception v0

    move-wide/from16 v1, v20

    .end local v20    # "identityToken":J
    .restart local v1    # "identityToken":J
    goto :goto_86

    .end local v1    # "identityToken":J
    .end local v18    # "callingUid":I
    .restart local v8    # "identityToken":J
    .restart local v10    # "callingUid":I
    :catchall_82
    move-exception v0

    move-wide v1, v8

    move/from16 v18, v10

    .end local v8    # "identityToken":J
    .end local v10    # "callingUid":I
    .restart local v1    # "identityToken":J
    .restart local v18    # "callingUid":I
    :goto_86
    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v0

    .line 1636
    .end local v1    # "identityToken":J
    .end local v18    # "callingUid":I
    .restart local v10    # "callingUid":I
    :cond_8a
    move/from16 v18, v10

    .end local v10    # "callingUid":I
    .restart local v18    # "callingUid":I
    :goto_8c
    if-eqz v15, :cond_b6

    .line 1637
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v1, v0

    .line 1638
    .local v1, "result":Landroid/os/Bundle;
    const-string v0, "booleanResult"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1640
    :try_start_9a
    invoke-interface {v15, v1}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_9d
    .catch Landroid/os/RemoteException; {:try_start_9a .. :try_end_9d} :catch_9e

    .line 1643
    goto :goto_b6

    .line 1641
    :catch_9e
    move-exception v0

    move-object v2, v0

    .line 1642
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AccountManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to report error back to the client."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "result":Landroid/os/Bundle;
    :cond_b6
    :goto_b6
    return-void

    .line 1630
    .end local v16    # "fromAccounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v17    # "toAccounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v18    # "callingUid":I
    .restart local v10    # "callingUid":I
    :cond_b7
    move/from16 v18, v10

    .end local v10    # "callingUid":I
    .restart local v18    # "callingUid":I
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Calling copyAccountToUser requires android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createRequestAccountAccessIntentSenderAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/IntentSender;
    .registers 15
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userHandle"    # Landroid/os/UserHandle;

    .line 4009
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_72

    .line 4013
    const-string v0, "account cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4014
    const-string/jumbo v0, "packageName cannot be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4015
    const-string/jumbo v0, "userHandle cannot be null"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4017
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 4019
    .local v0, "userId":I
    const/4 v1, 0x0

    const v2, 0x7fffffff

    const-string/jumbo v3, "user must be concrete"

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 4023
    const/4 v1, 0x0

    :try_start_2c
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p2, v0}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v2
    :try_end_32
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2c .. :try_end_32} :catch_5a

    .line 4027
    .local v2, "uid":I
    nop

    .line 4026
    nop

    .line 4029
    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/server/accounts/AccountManagerService;->newRequestAccountAccessIntent(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/RemoteCallback;)Landroid/content/Intent;

    move-result-object v1

    .line 4031
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    move-wide v9, v3

    .line 4033
    .local v9, "identity":J
    :try_start_3d
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v6, 0x54000000

    const/4 v7, 0x0

    new-instance v8, Landroid/os/UserHandle;

    invoke-direct {v8, v0}, Landroid/os/UserHandle;-><init>(I)V

    move-object v5, v1

    invoke-static/range {v3 .. v8}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 4036
    invoke-virtual {v3}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v3
    :try_end_51
    .catchall {:try_start_3d .. :try_end_51} :catchall_55

    .line 4038
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4033
    return-object v3

    .line 4038
    :catchall_55
    move-exception v3

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 4024
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "uid":I
    .end local v9    # "identity":J
    :catch_5a
    move-exception v2

    .line 4025
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "AccountManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4026
    return-object v1

    .line 4010
    .end local v0    # "userId":I
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_72
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can be called only by system UID"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 14
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 5205
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const-string v1, "AccountManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 5206
    :cond_b
    const-string v0, "--checkin"

    invoke-static {p3, v0}, Lcom/android/server/accounts/AccountManagerService;->scanArgs([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "-c"

    invoke-static {p3, v0}, Lcom/android/server/accounts/AccountManagerService;->scanArgs([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1f

    :cond_1e
    :goto_1e
    const/4 v0, 0x1

    :goto_1f
    move v6, v0

    .line 5207
    .local v6, "isCheckinRequest":Z
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 5209
    .local v0, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v7

    .line 5210
    .local v7, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_33
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_70

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/content/pm/UserInfo;

    .line 5211
    .local v9, "user":Landroid/content/pm/UserInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5212
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5213
    iget v1, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, v0

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accounts/AccountManagerService;->dumpUser(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    .line 5214
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 5215
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5216
    .end local v9    # "user":Landroid/content/pm/UserInfo;
    goto :goto_33

    .line 5217
    :cond_70
    return-void
.end method

.method public editProperties(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Z)V
    .registers 23
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "expectActivityLaunch"    # Z

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    .line 3890
    const/16 v0, 0x15

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 3891
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    .line 3892
    .local v14, "callingUid":I
    const-string v0, "AccountManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 3893
    const-string v0, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "editProperties: accountType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", expectActivityLaunch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v15, p3

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", caller\'s uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3897
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3893
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57

    .line 3899
    :cond_55
    move/from16 v15, p3

    :goto_57
    if-eqz v12, :cond_bf

    .line 3900
    if-eqz v13, :cond_b7

    .line 3901
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v10

    .line 3902
    .local v10, "userId":I
    invoke-direct {v11, v13, v14, v10}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_85

    .line 3903
    invoke-direct {v11, v14}, Lcom/android/server/accounts/AccountManagerService;->isSystemUid(I)Z

    move-result v0

    if-eqz v0, :cond_6c

    goto :goto_85

    .line 3904
    :cond_6c
    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 3906
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v13, v0, v1

    .line 3904
    const-string/jumbo v1, "uid %s cannot edit authenticator properites for account type: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3908
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3910
    .end local v0    # "msg":Ljava/lang/String;
    :cond_85
    :goto_85
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v8, v0

    .line 3912
    .local v8, "identityToken":J
    :try_start_8a
    invoke-virtual {v11, v10}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v3

    .line 3913
    .local v3, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$17;
    :try_end_90
    .catchall {:try_start_8a .. :try_end_90} :catchall_af

    const/4 v7, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v1, v0

    move-object v2, v11

    move-object v4, v12

    move-object v5, v13

    move v6, v15

    move-wide v11, v8

    move-object/from16 v8, v16

    .line 3913
    .end local v8    # "identityToken":J
    .local v11, "identityToken":J
    move/from16 v9, v17

    move/from16 v16, v10

    move-object v10, v13

    .line 3913
    .end local v10    # "userId":I
    .local v16, "userId":I
    :try_start_a2
    invoke-direct/range {v1 .. v10}, Lcom/android/server/accounts/AccountManagerService$17;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLjava/lang/String;)V

    .line 3925
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$17;->bind()V
    :try_end_a8
    .catchall {:try_start_a2 .. :try_end_a8} :catchall_ad

    .line 3927
    .end local v3    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-static {v11, v12}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3928
    nop

    .line 3929
    return-void

    .line 3927
    :catchall_ad
    move-exception v0

    goto :goto_b3

    .line 3927
    .end local v11    # "identityToken":J
    .end local v16    # "userId":I
    .restart local v8    # "identityToken":J
    .restart local v10    # "userId":I
    :catchall_af
    move-exception v0

    move-wide v11, v8

    move/from16 v16, v10

    .line 3927
    .end local v8    # "identityToken":J
    .end local v10    # "userId":I
    .restart local v11    # "identityToken":J
    .restart local v16    # "userId":I
    :goto_b3
    invoke-static {v11, v12}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v0

    .line 3900
    .end local v11    # "identityToken":J
    .end local v16    # "userId":I
    :cond_b7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "accountType is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3899
    :cond_bf
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "response is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public finishSessionAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;ZLandroid/os/Bundle;I)V
    .registers 31
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "sessionBundle"    # Landroid/os/Bundle;
    .param p3, "expectActivityLaunch"    # Z
    .param p4, "appInfo"    # Landroid/os/Bundle;
    .param p5, "userId"    # I

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v12, p4

    .line 3492
    move/from16 v11, p5

    const/4 v0, 0x1

    invoke-static {v15, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 3493
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 3494
    .local v10, "callingUid":I
    const-string v1, "AccountManagerService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 3495
    const-string v1, "AccountManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finishSession: response "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", expectActivityLaunch "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", caller\'s uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", caller\'s user id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3499
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3500
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", for user id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3495
    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_66

    .line 3503
    :cond_64
    move/from16 v9, p3

    :goto_66
    const/4 v1, 0x0

    if-eqz v14, :cond_6b

    move v3, v0

    goto :goto_6c

    :cond_6b
    move v3, v1

    :goto_6c
    const-string/jumbo v4, "response cannot be null"

    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3506
    if-eqz v15, :cond_17a

    invoke-virtual/range {p2 .. p2}, Landroid/os/Bundle;->size()I

    move-result v3

    if-eqz v3, :cond_17a

    .line 3511
    invoke-direct {v13, v10, v11}, Lcom/android/server/accounts/AccountManagerService;->isCrossUser(II)Z

    move-result v3

    if-nez v3, :cond_15a

    .line 3519
    invoke-direct {v13, v11, v10}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccounts(II)Z

    move-result v0

    if-nez v0, :cond_91

    .line 3520
    const-string v0, "User is not allowed to add an account!"

    const/16 v1, 0x64

    invoke-direct {v13, v14, v1, v0}, Lcom/android/server/accounts/AccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    .line 3523
    invoke-direct {v13, v1, v11}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    .line 3524
    return-void

    .line 3527
    :cond_91
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    move v8, v0

    .line 3532
    .local v8, "pid":I
    const/16 v1, 0x8

    :try_start_98
    invoke-static {}, Lcom/android/server/accounts/CryptoHelper;->getInstance()Lcom/android/server/accounts/CryptoHelper;

    move-result-object v0

    .line 3533
    .local v0, "cryptoHelper":Lcom/android/server/accounts/CryptoHelper;
    invoke-virtual {v0, v15}, Lcom/android/server/accounts/CryptoHelper;->decryptBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2
    :try_end_a0
    .catch Ljava/security/GeneralSecurityException; {:try_start_98 .. :try_end_a0} :catch_13f

    move-object v7, v2

    .line 3534
    .local v7, "decryptedBundle":Landroid/os/Bundle;
    if-nez v7, :cond_b0

    .line 3535
    :try_start_a3
    const-string v2, "failed to decrypt session bundle"

    invoke-direct {v13, v14, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V
    :try_end_a8
    .catch Ljava/security/GeneralSecurityException; {:try_start_a3 .. :try_end_a8} :catch_a9

    .line 3539
    return-void

    .line 3563
    .end local v0    # "cryptoHelper":Lcom/android/server/accounts/CryptoHelper;
    .end local v7    # "decryptedBundle":Landroid/os/Bundle;
    :catch_a9
    move-exception v0

    move/from16 v16, v8

    move/from16 v17, v10

    goto/16 :goto_144

    .line 3541
    .restart local v0    # "cryptoHelper":Lcom/android/server/accounts/CryptoHelper;
    .restart local v7    # "decryptedBundle":Landroid/os/Bundle;
    :cond_b0
    :try_start_b0
    const-string v2, "accountType"

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    .line 3544
    .local v6, "accountType":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_bb
    .catch Ljava/security/GeneralSecurityException; {:try_start_b0 .. :try_end_bb} :catch_13f

    if-eqz v2, :cond_c4

    .line 3545
    const/4 v2, 0x7

    :try_start_be
    const-string v3, "accountType is empty"

    invoke-direct {v13, v14, v2, v3}, Lcom/android/server/accounts/AccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    .line 3549
    return-void

    .line 3556
    :cond_c4
    if-eqz v12, :cond_c9

    .line 3557
    invoke-virtual {v7, v12}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_c9
    .catch Ljava/security/GeneralSecurityException; {:try_start_be .. :try_end_c9} :catch_a9

    .line 3561
    :cond_c9
    :try_start_c9
    const-string v2, "callerUid"

    invoke-virtual {v7, v2, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3562
    const-string v2, "callerPid"

    invoke-virtual {v7, v2, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_d3
    .catch Ljava/security/GeneralSecurityException; {:try_start_c9 .. :try_end_d3} :catch_13f

    .line 3572
    .end local v0    # "cryptoHelper":Lcom/android/server/accounts/CryptoHelper;
    nop

    .line 3571
    nop

    .line 3574
    invoke-direct {v13, v11, v6, v10}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccountsForType(ILjava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_e6

    .line 3575
    const-string v0, "User cannot modify accounts of this type (policy)."

    const/16 v1, 0x65

    invoke-direct {v13, v14, v1, v0}, Lcom/android/server/accounts/AccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    .line 3579
    invoke-direct {v13, v1, v11}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    .line 3581
    return-void

    .line 3584
    :cond_e6
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v4, v0

    .line 3586
    .local v4, "identityToken":J
    :try_start_eb
    invoke-virtual {v13, v11}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 3587
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    sget-object v1, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_CALLED_ACCOUNT_SESSION_FINISH:Ljava/lang/String;

    const-string v2, "accounts"

    invoke-direct {v13, v0, v1, v2, v10}, Lcom/android/server/accounts/AccountManagerService;->logRecordWithUid(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;I)V

    .line 3592
    new-instance v3, Lcom/android/server/accounts/AccountManagerService$12;
    :try_end_f8
    .catchall {:try_start_eb .. :try_end_f8} :catchall_131

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object v1, v3

    move-object v2, v13

    move-object/from16 v20, v3

    move-object v3, v0

    move-wide/from16 v21, v4

    move-object v4, v14

    .end local v4    # "identityToken":J
    .local v21, "identityToken":J
    move-object v5, v6

    move-object/from16 v23, v6

    move v6, v9

    .line 3592
    .end local v6    # "accountType":Ljava/lang/String;
    .local v23, "accountType":Ljava/lang/String;
    move-object/from16 v24, v7

    move/from16 v7, v16

    .line 3592
    .end local v7    # "decryptedBundle":Landroid/os/Bundle;
    .local v24, "decryptedBundle":Landroid/os/Bundle;
    move/from16 v16, v8

    move-object/from16 v8, v17

    .line 3592
    .end local v8    # "pid":I
    .local v16, "pid":I
    move/from16 v9, v18

    move/from16 v17, v10

    move/from16 v10, v19

    .line 3592
    .end local v10    # "callingUid":I
    .local v17, "callingUid":I
    move-object/from16 v11, v24

    move-object/from16 v12, v23

    :try_start_11e
    invoke-direct/range {v1 .. v12}, Lcom/android/server/accounts/AccountManagerService$12;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZLandroid/os/Bundle;Ljava/lang/String;)V

    .line 3612
    move-object/from16 v1, v20

    invoke-virtual {v1}, Lcom/android/server/accounts/AccountManagerService$12;->bind()V
    :try_end_126
    .catchall {:try_start_11e .. :try_end_126} :catchall_12d

    .line 3614
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    move-wide/from16 v1, v21

    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3615
    .end local v21    # "identityToken":J
    .local v1, "identityToken":J
    nop

    .line 3616
    return-void

    .line 3614
    .end local v1    # "identityToken":J
    .restart local v21    # "identityToken":J
    :catchall_12d
    move-exception v0

    move-wide/from16 v1, v21

    .line 3614
    .end local v21    # "identityToken":J
    .restart local v1    # "identityToken":J
    goto :goto_13b

    .line 3614
    .end local v1    # "identityToken":J
    .end local v16    # "pid":I
    .end local v17    # "callingUid":I
    .end local v23    # "accountType":Ljava/lang/String;
    .end local v24    # "decryptedBundle":Landroid/os/Bundle;
    .restart local v4    # "identityToken":J
    .restart local v6    # "accountType":Ljava/lang/String;
    .restart local v7    # "decryptedBundle":Landroid/os/Bundle;
    .restart local v8    # "pid":I
    .restart local v10    # "callingUid":I
    :catchall_131
    move-exception v0

    move-wide v1, v4

    move-object/from16 v23, v6

    move-object/from16 v24, v7

    move/from16 v16, v8

    move/from16 v17, v10

    .line 3614
    .end local v4    # "identityToken":J
    .end local v6    # "accountType":Ljava/lang/String;
    .end local v7    # "decryptedBundle":Landroid/os/Bundle;
    .end local v8    # "pid":I
    .end local v10    # "callingUid":I
    .restart local v1    # "identityToken":J
    .restart local v16    # "pid":I
    .restart local v17    # "callingUid":I
    .restart local v23    # "accountType":Ljava/lang/String;
    .restart local v24    # "decryptedBundle":Landroid/os/Bundle;
    :goto_13b
    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v0

    .line 3563
    .end local v1    # "identityToken":J
    .end local v16    # "pid":I
    .end local v17    # "callingUid":I
    .end local v23    # "accountType":Ljava/lang/String;
    .end local v24    # "decryptedBundle":Landroid/os/Bundle;
    .restart local v8    # "pid":I
    .restart local v10    # "callingUid":I
    :catch_13f
    move-exception v0

    move/from16 v16, v8

    move/from16 v17, v10

    .line 3564
    .end local v8    # "pid":I
    .end local v10    # "callingUid":I
    .local v0, "e":Ljava/security/GeneralSecurityException;
    .restart local v16    # "pid":I
    .restart local v17    # "callingUid":I
    :goto_144
    const-string v2, "AccountManagerService"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_154

    .line 3565
    const-string v2, "AccountManagerService"

    const-string v3, "Failed to decrypt session bundle!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3567
    :cond_154
    const-string v2, "failed to decrypt session bundle"

    invoke-direct {v13, v14, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    .line 3571
    return-void

    .line 3512
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    .end local v16    # "pid":I
    .end local v17    # "callingUid":I
    .restart local v10    # "callingUid":I
    :cond_15a
    move/from16 v17, v10

    .line 3512
    .end local v10    # "callingUid":I
    .restart local v17    # "callingUid":I
    new-instance v3, Ljava/lang/SecurityException;

    new-array v2, v2, [Ljava/lang/Object;

    .line 3515
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    .line 3516
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    .line 3513
    const-string v0, "User %s trying to finish session for %s without cross user permission"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3507
    .end local v17    # "callingUid":I
    .restart local v10    # "callingUid":I
    :cond_17a
    move/from16 v17, v10

    .line 3507
    .end local v10    # "callingUid":I
    .restart local v17    # "callingUid":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sessionBundle is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAccountByTypeAndFeatures(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 25
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "features"    # [Ljava/lang/String;
    .param p4, "opPackageName"    # Ljava/lang/String;

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    .line 4539
    move-object/from16 v15, p4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 4540
    .local v11, "callingUid":I
    iget-object v0, v12, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v0, v11, v15}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 4541
    const-string v0, "AccountManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 4542
    const-string v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAccount: accountType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", response "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", features "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4544
    invoke-static/range {p3 .. p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", caller\'s uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4546
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4542
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4548
    :cond_58
    if-eqz v13, :cond_c2

    .line 4549
    if-eqz v14, :cond_b8

    .line 4551
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v10

    .line 4553
    .local v10, "userId":I
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v8, v0

    .line 4555
    .local v8, "identityToken":J
    :try_start_65
    invoke-virtual {v12, v10}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v2

    .line 4556
    .local v2, "userAccounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0
    :try_end_6d
    .catchall {:try_start_65 .. :try_end_6d} :catchall_ae

    if-eqz v0, :cond_86

    .line 4557
    const/4 v6, 0x1

    move-object v1, v12

    move-object v3, v14

    move v4, v11

    move-object v5, v15

    :try_start_74
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accounts/AccountManagerService;->getAccountsFromCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object v0

    .line 4560
    .local v0, "accountsWithManagedNotVisible":[Landroid/accounts/Account;
    invoke-direct {v12, v13, v0, v15}, Lcom/android/server/accounts/AccountManagerService;->handleGetAccountsResult(Landroid/accounts/IAccountManagerResponse;[Landroid/accounts/Account;Ljava/lang/String;)V
    :try_end_7b
    .catchall {:try_start_74 .. :try_end_7b} :catchall_7f

    .line 4594
    invoke-static {v8, v9}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 4562
    return-void

    .line 4594
    .end local v0    # "accountsWithManagedNotVisible":[Landroid/accounts/Account;
    .end local v2    # "userAccounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_7f
    move-exception v0

    move-wide v1, v8

    move/from16 v18, v10

    move/from16 v19, v11

    goto :goto_b4

    .line 4565
    .restart local v2    # "userAccounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :cond_86
    :try_start_86
    new-instance v6, Lcom/android/server/accounts/AccountManagerService$19;

    invoke-direct {v6, v12, v13, v15}, Lcom/android/server/accounts/AccountManagerService$19;-><init>(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;)V

    .line 4585
    .local v6, "retrieveAccountsResponse":Landroid/accounts/IAccountManagerResponse;
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;
    :try_end_8d
    .catchall {:try_start_86 .. :try_end_8d} :catchall_ae

    const/4 v1, 0x1

    move-object v3, v0

    move-object v4, v12

    move-object v5, v2

    move-object v7, v14

    move-wide/from16 v16, v8

    move-object/from16 v8, p3

    .line 4585
    .end local v8    # "identityToken":J
    .local v16, "identityToken":J
    move v9, v11

    move/from16 v18, v10

    move-object v10, v15

    .line 4585
    .end local v10    # "userId":I
    .local v18, "userId":I
    move/from16 v19, v11

    move v11, v1

    .line 4585
    .end local v11    # "callingUid":I
    .local v19, "callingUid":I
    :try_start_9d
    invoke-direct/range {v3 .. v11}, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;Z)V

    .line 4592
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->bind()V
    :try_end_a3
    .catchall {:try_start_9d .. :try_end_a3} :catchall_aa

    .line 4594
    .end local v2    # "userAccounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v6    # "retrieveAccountsResponse":Landroid/accounts/IAccountManagerResponse;
    move-wide/from16 v1, v16

    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 4595
    .end local v16    # "identityToken":J
    .local v1, "identityToken":J
    nop

    .line 4596
    return-void

    .line 4594
    .end local v1    # "identityToken":J
    .restart local v16    # "identityToken":J
    :catchall_aa
    move-exception v0

    move-wide/from16 v1, v16

    .line 4594
    .end local v16    # "identityToken":J
    .restart local v1    # "identityToken":J
    goto :goto_b4

    .line 4594
    .end local v1    # "identityToken":J
    .end local v18    # "userId":I
    .end local v19    # "callingUid":I
    .restart local v8    # "identityToken":J
    .restart local v10    # "userId":I
    .restart local v11    # "callingUid":I
    :catchall_ae
    move-exception v0

    move-wide v1, v8

    move/from16 v18, v10

    move/from16 v19, v11

    .line 4594
    .end local v8    # "identityToken":J
    .end local v10    # "userId":I
    .end local v11    # "callingUid":I
    .restart local v1    # "identityToken":J
    .restart local v18    # "userId":I
    .restart local v19    # "callingUid":I
    :goto_b4
    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v0

    .line 4549
    .end local v1    # "identityToken":J
    .end local v18    # "userId":I
    .end local v19    # "callingUid":I
    .restart local v11    # "callingUid":I
    :cond_b8
    move/from16 v19, v11

    .line 4549
    .end local v11    # "callingUid":I
    .restart local v19    # "callingUid":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "accountType is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4548
    .end local v19    # "callingUid":I
    .restart local v11    # "callingUid":I
    :cond_c2
    move/from16 v19, v11

    .line 4548
    .end local v11    # "callingUid":I
    .restart local v19    # "callingUid":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "response is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;)I
    .registers 10
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 598
    const-string v0, "account cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    const-string/jumbo v0, "packageName cannot be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 601
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 602
    .local v1, "userId":I
    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v2

    const/4 v3, 0x2

    if-nez v2, :cond_3e

    .line 603
    invoke-direct {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->isSystemUid(I)Z

    move-result v2

    if-eqz v2, :cond_23

    goto :goto_3e

    .line 604
    :cond_23
    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 606
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 604
    const-string/jumbo v3, "uid %s cannot get secrets for accounts of type: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 608
    .local v2, "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 610
    .end local v2    # "msg":Ljava/lang/String;
    :cond_3e
    :goto_3e
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v4

    .line 612
    .local v4, "identityToken":J
    :try_start_42
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v2

    .line 613
    .local v2, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    const-string v6, "android:accounts:key_legacy_visible"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5e

    .line 614
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/accounts/AccountManagerService;->getAccountVisibilityFromCache(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v6
    :try_end_52
    .catchall {:try_start_42 .. :try_end_52} :catchall_82

    .line 615
    .local v6, "visibility":I
    if-eqz v6, :cond_59

    .line 616
    nop

    .line 631
    invoke-static {v4, v5}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 616
    return v6

    .line 618
    :cond_59
    nop

    .line 631
    invoke-static {v4, v5}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 618
    return v3

    .line 621
    .end local v6    # "visibility":I
    :cond_5e
    :try_start_5e
    const-string v3, "android:accounts:key_legacy_not_visible"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_76

    .line 622
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/accounts/AccountManagerService;->getAccountVisibilityFromCache(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v3
    :try_end_6a
    .catchall {:try_start_5e .. :try_end_6a} :catchall_82

    .line 623
    .local v3, "visibility":I
    if-eqz v3, :cond_71

    .line 624
    nop

    .line 631
    invoke-static {v4, v5}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 624
    return v3

    .line 626
    :cond_71
    const/4 v6, 0x4

    .line 631
    invoke-static {v4, v5}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 626
    return v6

    .line 629
    .end local v3    # "visibility":I
    :cond_76
    :try_start_76
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/accounts/AccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_7e
    .catchall {:try_start_76 .. :try_end_7e} :catchall_82

    .line 631
    invoke-static {v4, v5}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 629
    return v3

    .line 631
    .end local v2    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_82
    move-exception v2

    invoke-static {v4, v5}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getAccounts(ILjava/lang/String;)[Landroid/accounts/Account;
    .registers 13
    .param p1, "userId"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;

    .line 4207
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 4208
    .local v6, "callingUid":I
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v0, v6, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 4209
    invoke-direct {p0, v6, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->getTypesVisibleToCaller(IILjava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 4211
    .local v7, "visibleAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 4212
    sget-object v0, Lcom/android/server/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    return-object v0

    .line 4214
    :cond_16
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v8, v0

    .line 4216
    .local v8, "identityToken":J
    :try_start_1b
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v1

    .line 4217
    .local v1, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    const/4 v5, 0x0

    move-object v0, p0

    move v2, v6

    move-object v3, p2

    move-object v4, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService;->getAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;ILjava/lang/String;Ljava/util/List;Z)[Landroid/accounts/Account;

    move-result-object v0
    :try_end_28
    .catchall {:try_start_1b .. :try_end_28} :catchall_2c

    .line 4224
    invoke-static {v8, v9}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 4217
    return-object v0

    .line 4224
    .end local v1    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_2c
    move-exception v0

    invoke-static {v8, v9}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public getAccounts(Ljava/lang/String;Ljava/lang/String;)[Landroid/accounts/Account;
    .registers 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "opPackageName"    # Ljava/lang/String;

    .line 4449
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public getAccountsAndVisibilityForPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "accountType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Landroid/accounts/Account;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 497
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 498
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 499
    .local v1, "userId":I
    const/16 v2, 0x3e8

    invoke-static {v0, v2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v2

    .line 500
    .local v2, "isSystemUid":Z
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->getTypesForCaller(IIZ)Ljava/util/List;

    move-result-object v3

    .line 502
    .local v3, "managedTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_1a

    invoke-interface {v3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    :cond_1a
    if-nez p2, :cond_3e

    if-eqz v2, :cond_1f

    goto :goto_3e

    .line 504
    :cond_1f
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAccountsAndVisibilityForPackage() called from unauthorized uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " with packageName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 508
    :cond_3e
    :goto_3e
    if-eqz p2, :cond_49

    .line 509
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v4

    .line 510
    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 513
    :cond_49
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v4

    .line 515
    .local v4, "identityToken":J
    :try_start_4d
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v6

    .line 516
    .local v6, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, p1, v3, v7, v6}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAndVisibilityForPackage(Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v7
    :try_end_59
    .catchall {:try_start_4d .. :try_end_59} :catchall_5d

    .line 519
    invoke-static {v4, v5}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 516
    return-object v7

    .line 519
    .end local v6    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_5d
    move-exception v6

    invoke-static {v4, v5}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;
    .registers 13
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "opPackageName"    # Ljava/lang/String;

    .line 4284
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4285
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v1, v0, p3}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 4286
    const/4 v6, -0x1

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v7, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUserForPackage(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object v1

    return-object v1
.end method

.method public getAccountsByFeatures(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 26
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "features"    # [Ljava/lang/String;
    .param p4, "opPackageName"    # Ljava/lang/String;

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    .line 4604
    move-object/from16 v14, p4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    .line 4605
    .local v15, "callingUid":I
    iget-object v0, v10, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v0, v15, v14}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 4606
    const-string v0, "AccountManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 4607
    const-string v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAccounts: accountType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", response "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", features "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4609
    invoke-static/range {p3 .. p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", caller\'s uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4611
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4607
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4613
    :cond_5a
    if-eqz v11, :cond_f3

    .line 4614
    if-eqz v12, :cond_eb

    .line 4615
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    .line 4617
    .local v9, "userId":I
    invoke-direct {v10, v15, v9, v14}, Lcom/android/server/accounts/AccountManagerService;->getTypesVisibleToCaller(IILjava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 4619
    .local v8, "visibleAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v8, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_87

    .line 4620
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v1, v0

    .line 4622
    .local v1, "result":Landroid/os/Bundle;
    const-string v0, "accounts"

    sget-object v2, Lcom/android/server/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 4624
    :try_start_79
    invoke-interface {v11, v1}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_7c
    .catch Landroid/os/RemoteException; {:try_start_79 .. :try_end_7c} :catch_7d

    .line 4627
    goto :goto_86

    .line 4625
    :catch_7d
    move-exception v0

    move-object v2, v0

    .line 4626
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AccountManagerService"

    const-string v3, "Cannot respond to caller do to exception."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4628
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_86
    return-void

    .line 4631
    .end local v1    # "result":Landroid/os/Bundle;
    :cond_87
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v6, v0

    .line 4633
    .local v6, "identityToken":J
    :try_start_8c
    invoke-virtual {v10, v9}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v3

    .line 4634
    .local v3, "userAccounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    if-eqz v13, :cond_bf

    array-length v0, v13

    if-nez v0, :cond_9b

    .line 4635
    move-wide v1, v6

    move-object/from16 v19, v8

    move/from16 v20, v9

    goto :goto_c4

    .line 4642
    :cond_9b
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;
    :try_end_9d
    .catchall {:try_start_8c .. :try_end_9d} :catchall_e1

    const/16 v16, 0x0

    move-object v1, v0

    move-object v2, v10

    move-object v4, v11

    move-object v5, v12

    move-wide/from16 v17, v6

    move-object v6, v13

    .line 4642
    .end local v6    # "identityToken":J
    .local v17, "identityToken":J
    move v7, v15

    move-object/from16 v19, v8

    move-object v8, v14

    .line 4642
    .end local v8    # "visibleAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v19, "visibleAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move/from16 v20, v9

    move/from16 v9, v16

    .line 4642
    .end local v9    # "userId":I
    .local v20, "userId":I
    :try_start_ae
    invoke-direct/range {v1 .. v9}, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;Z)V

    .line 4649
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->bind()V
    :try_end_b4
    .catchall {:try_start_ae .. :try_end_b4} :catchall_bb

    .line 4651
    .end local v3    # "userAccounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    move-wide/from16 v1, v17

    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 4652
    .end local v17    # "identityToken":J
    .local v1, "identityToken":J
    nop

    .line 4653
    return-void

    .line 4651
    .end local v1    # "identityToken":J
    .restart local v17    # "identityToken":J
    :catchall_bb
    move-exception v0

    move-wide/from16 v1, v17

    .line 4651
    .end local v17    # "identityToken":J
    .restart local v1    # "identityToken":J
    goto :goto_e7

    .line 4635
    .end local v1    # "identityToken":J
    .end local v19    # "visibleAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v20    # "userId":I
    .restart local v3    # "userAccounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .restart local v6    # "identityToken":J
    .restart local v8    # "visibleAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "userId":I
    :cond_bf
    move-wide v1, v6

    move-object/from16 v19, v8

    move/from16 v20, v9

    .line 4635
    .end local v6    # "identityToken":J
    .end local v8    # "visibleAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "userId":I
    .restart local v1    # "identityToken":J
    .restart local v19    # "visibleAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v20    # "userId":I
    :goto_c4
    const/4 v9, 0x0

    move-object v4, v10

    move-object v5, v3

    move-object v6, v12

    move v7, v15

    move-object v8, v14

    :try_start_ca
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/accounts/AccountManagerService;->getAccountsFromCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object v0

    .line 4637
    .local v0, "accounts":[Landroid/accounts/Account;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 4638
    .local v4, "result":Landroid/os/Bundle;
    const-string v5, "accounts"

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 4639
    invoke-direct {v10, v11, v4}, Lcom/android/server/accounts/AccountManagerService;->onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    :try_end_db
    .catchall {:try_start_ca .. :try_end_db} :catchall_df

    .line 4651
    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 4640
    return-void

    .line 4651
    .end local v0    # "accounts":[Landroid/accounts/Account;
    .end local v3    # "userAccounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v4    # "result":Landroid/os/Bundle;
    :catchall_df
    move-exception v0

    goto :goto_e7

    .line 4651
    .end local v1    # "identityToken":J
    .end local v19    # "visibleAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v20    # "userId":I
    .restart local v6    # "identityToken":J
    .restart local v8    # "visibleAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "userId":I
    :catchall_e1
    move-exception v0

    move-wide v1, v6

    move-object/from16 v19, v8

    move/from16 v20, v9

    .line 4651
    .end local v6    # "identityToken":J
    .end local v8    # "visibleAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "userId":I
    .restart local v1    # "identityToken":J
    .restart local v19    # "visibleAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v20    # "userId":I
    :goto_e7
    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v0

    .line 4614
    .end local v1    # "identityToken":J
    .end local v19    # "visibleAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v20    # "userId":I
    :cond_eb
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "accountType is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4613
    :cond_f3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "response is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAccountsByTypeForPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Landroid/accounts/Account;
    .registers 20
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "opPackageName"    # Ljava/lang/String;

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    .line 4469
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 4470
    .local v12, "callingUid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v11

    .line 4471
    .local v11, "userId":I
    iget-object v0, v13, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    move-object/from16 v10, p3

    invoke-virtual {v0, v12, v10}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 4472
    const/4 v0, -0x1

    move v1, v0

    .line 4474
    .local v1, "packageUid":I
    :try_start_17
    iget-object v0, v13, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v15, v11}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v5
    :try_end_1d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_17 .. :try_end_1d} :catch_54

    .line 4478
    .end local v1    # "packageUid":I
    .local v5, "packageUid":I
    nop

    .line 4479
    const/16 v0, 0x3e8

    invoke-static {v12, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-nez v1, :cond_31

    if-eqz v14, :cond_31

    .line 4480
    invoke-direct {v13, v14, v12, v11}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_31

    .line 4481
    sget-object v0, Lcom/android/server/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    return-object v0

    .line 4483
    :cond_31
    invoke-static {v12, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-nez v0, :cond_44

    if-nez v14, :cond_44

    .line 4484
    const/4 v7, 0x0

    move-object v1, v13

    move-object v2, v14

    move v3, v11

    move-object v4, v15

    move-object v6, v10

    invoke-direct/range {v1 .. v7}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUserForPackage(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object v0

    return-object v0

    .line 4487
    :cond_44
    const/4 v0, 0x1

    move-object v6, v13

    move-object v7, v14

    move v8, v11

    move-object v9, v15

    move v10, v5

    move v2, v11

    move-object/from16 v11, p3

    .end local v11    # "userId":I
    .local v2, "userId":I
    move v3, v12

    move v12, v0

    .end local v12    # "callingUid":I
    .local v3, "callingUid":I
    invoke-direct/range {v6 .. v12}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUserForPackage(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object v0

    return-object v0

    .line 4475
    .end local v2    # "userId":I
    .end local v3    # "callingUid":I
    .end local v5    # "packageUid":I
    .restart local v1    # "packageUid":I
    .restart local v11    # "userId":I
    .restart local v12    # "callingUid":I
    :catch_54
    move-exception v0

    move v2, v11

    move v3, v12

    .line 4476
    .end local v11    # "userId":I
    .end local v12    # "callingUid":I
    .local v0, "re":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "userId":I
    .restart local v3    # "callingUid":I
    const-string v4, "AccountManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t determine the packageUid for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4477
    sget-object v4, Lcom/android/server/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    return-object v4
.end method

.method public getAccountsForPackage(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "opPackageName"    # Ljava/lang/String;

    .line 4455
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4456
    .local v0, "callingUid":I
    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 4461
    const/4 v3, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    const/4 v8, 0x1

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUserForPackage(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object v1

    return-object v1

    .line 4458
    :cond_1b
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAccountsForPackage() called from unauthorized uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " with uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected getAccountsFromCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;
    .registers 15
    .param p1, "userAccounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "includeManagedNotVisible"    # Z

    .line 5995
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Method should not be called with cacheLock"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 5997
    if-eqz p2, :cond_35

    .line 5999
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6000
    :try_start_12
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/accounts/Account;

    .line 6001
    .local v1, "accounts":[Landroid/accounts/Account;
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_32

    .line 6002
    if-nez v1, :cond_20

    .line 6003
    sget-object v0, Lcom/android/server/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    return-object v0

    .line 6005
    :cond_20
    array-length v0, v1

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, [Landroid/accounts/Account;

    move-object v2, p0

    move-object v3, p1

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accounts/AccountManagerService;->filterAccounts(Lcom/android/server/accounts/AccountManagerService$UserAccounts;[Landroid/accounts/Account;ILjava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object v0

    return-object v0

    .line 6001
    .end local v1    # "accounts":[Landroid/accounts/Account;
    :catchall_32
    move-exception v1

    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v1

    .line 6009
    :cond_35
    const/4 v0, 0x0

    .line 6011
    .local v0, "totalLength":I
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6012
    :try_start_39
    iget-object v2, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_43
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_52

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/accounts/Account;

    .line 6013
    .local v3, "accounts":[Landroid/accounts/Account;
    array-length v4, v3

    add-int/2addr v0, v4

    .line 6014
    .end local v3    # "accounts":[Landroid/accounts/Account;
    goto :goto_43

    .line 6015
    :cond_52
    if-nez v0, :cond_58

    .line 6016
    sget-object v2, Lcom/android/server/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    monitor-exit v1

    return-object v2

    .line 6018
    :cond_58
    new-array v2, v0, [Landroid/accounts/Account;

    move-object v5, v2

    .line 6019
    .local v5, "accountsArray":[Landroid/accounts/Account;
    const/4 v0, 0x0

    .line 6020
    iget-object v2, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_66
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/accounts/Account;

    .line 6021
    .local v3, "accountsOfType":[Landroid/accounts/Account;
    const/4 v4, 0x0

    array-length v6, v3

    invoke-static {v3, v4, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6023
    array-length v4, v3

    add-int/2addr v0, v4

    .line 6024
    .end local v3    # "accountsOfType":[Landroid/accounts/Account;
    goto :goto_66

    .line 6025
    :cond_7a
    monitor-exit v1
    :try_end_7b
    .catchall {:try_start_39 .. :try_end_7b} :catchall_85

    .line 6026
    move-object v3, p0

    move-object v4, p1

    move v6, p3

    move-object v7, p4

    move v8, p5

    invoke-direct/range {v3 .. v8}, Lcom/android/server/accounts/AccountManagerService;->filterAccounts(Lcom/android/server/accounts/AccountManagerService$UserAccounts;[Landroid/accounts/Account;ILjava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object v1

    return-object v1

    .line 6025
    .end local v5    # "accountsArray":[Landroid/accounts/Account;
    :catchall_85
    move-exception v2

    :try_start_86
    monitor-exit v1
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_85

    throw v2
.end method

.method public getAllAccounts()[Landroid/accounts/AccountAndUser;
    .registers 5

    .line 4252
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    .line 4253
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 4254
    .local v1, "userIds":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    array-length v3, v1

    if-ge v2, v3, :cond_20

    .line 4255
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    aput v3, v1, v2

    .line 4254
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 4257
    .end local v2    # "i":I
    :cond_20
    invoke-direct {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getAccounts([I)[Landroid/accounts/AccountAndUser;

    move-result-object v2

    return-object v2
.end method

.method public getAuthToken(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZZLandroid/os/Bundle;)V
    .registers 46
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "authTokenType"    # Ljava/lang/String;
    .param p4, "notifyOnAuthFailure"    # Z
    .param p5, "expectActivityLaunch"    # Z
    .param p6, "loginOptions"    # Landroid/os/Bundle;

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v13, p2

    move-object/from16 v12, p3

    move/from16 v11, p4

    .line 2798
    move-object/from16 v10, p6

    const/4 v0, 0x1

    invoke-static {v10, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 2799
    const-string v1, "AccountManagerService"

    const/4 v7, 0x2

    invoke-static {v1, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 2800
    const-string v1, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAuthToken: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", authTokenType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", notifyOnAuthFailure "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", expectActivityLaunch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p5

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", caller\'s uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2805
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2806
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2800
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6c

    .line 2808
    :cond_6a
    move/from16 v9, p5

    :goto_6c
    if-eqz v14, :cond_70

    move v2, v0

    goto :goto_71

    :cond_70
    const/4 v2, 0x0

    :goto_71
    const-string/jumbo v3, "response cannot be null"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2810
    const/4 v2, 0x7

    if-nez v13, :cond_89

    .line 2811
    :try_start_7a
    const-string v0, "AccountManagerService"

    const-string v1, "getAuthToken called with null account"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2812
    const-string v0, "account is null"

    invoke-interface {v14, v2, v0}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V

    .line 2813
    return-void

    .line 2820
    :catch_87
    move-exception v0

    goto :goto_98

    .line 2815
    :cond_89
    if-nez v12, :cond_b0

    .line 2816
    const-string v0, "AccountManagerService"

    const-string v1, "getAuthToken called with null authTokenType"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2817
    const-string v0, "authTokenType is null"

    invoke-interface {v14, v2, v0}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_97
    .catch Landroid/os/RemoteException; {:try_start_7a .. :try_end_97} :catch_87

    .line 2818
    return-void

    .line 2820
    :goto_98
    nop

    .line 2821
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to report error back to the client."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2822
    return-void

    .line 2823
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_b0
    nop

    .line 2824
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    .line 2825
    .local v8, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2829
    .local v2, "ident":J
    :try_start_b9
    invoke-virtual {v15, v8}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v4

    move-object v5, v4

    .line 2830
    .local v5, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    iget-object v4, v15, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    iget-object v6, v13, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 2831
    invoke-static {v6}, Landroid/accounts/AuthenticatorDescription;->newKey(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v6

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static {v5}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v1

    .line 2830
    invoke-interface {v4, v6, v1}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->getServiceInfo(Landroid/accounts/AuthenticatorDescription;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v1
    :try_end_ce
    .catchall {:try_start_b9 .. :try_end_ce} :catchall_273

    move-object v4, v1

    .line 2833
    .local v4, "authenticatorInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2834
    nop

    .line 2833
    nop

    .line 2836
    if-eqz v4, :cond_e0

    iget-object v1, v4, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v1, Landroid/accounts/AuthenticatorDescription;

    iget-boolean v1, v1, Landroid/accounts/AuthenticatorDescription;->customTokens:Z

    if-eqz v1, :cond_e0

    move v1, v0

    goto :goto_e1

    :cond_e0
    const/4 v1, 0x0

    :goto_e1
    move/from16 v26, v1

    .line 2840
    .local v26, "customTokens":Z
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2841
    .local v1, "callerUid":I
    if-nez v26, :cond_f2

    .line 2842
    invoke-direct {v15, v13, v12, v1, v8}, Lcom/android/server/accounts/AccountManagerService;->permissionIsGranted(Landroid/accounts/Account;Ljava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_f0

    goto :goto_f2

    :cond_f0
    const/4 v6, 0x0

    goto :goto_f3

    :cond_f2
    :goto_f2
    move v6, v0

    :goto_f3
    move/from16 v27, v6

    .line 2845
    .local v27, "permissionGranted":Z
    const-string v6, "androidPackageName"

    invoke-virtual {v10, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2847
    .local v6, "callerPkg":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2849
    :try_start_ff
    iget-object v7, v15, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7
    :try_end_109
    .catchall {:try_start_ff .. :try_end_109} :catchall_262

    .line 2851
    .local v7, "callerOwnedPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2852
    nop

    .line 2851
    nop

    .line 2853
    if-eqz v6, :cond_23a

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_23a

    .line 2862
    const-string v0, "callerUid"

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2863
    const-string v0, "callerPid"

    move/from16 v28, v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 2863
    .end local v1    # "callerUid":I
    .local v28, "callerUid":I
    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2865
    if-eqz v11, :cond_12f

    .line 2866
    const-string/jumbo v0, "notifyOnAuthFailure"

    const/4 v1, 0x1

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2869
    :cond_12f
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v0

    move-wide/from16 v29, v0

    .line 2872
    .local v29, "identityToken":J
    :try_start_135
    invoke-direct {v15, v6}, Lcom/android/server/accounts/AccountManagerService;->calculatePackageSignatureDigest(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_139
    .catchall {:try_start_135 .. :try_end_139} :catchall_226

    move-object/from16 v31, v6

    move-object v6, v0

    .line 2876
    .local v6, "callerPkgSigDigest":[B
    .local v31, "callerPkg":Ljava/lang/String;
    if-nez v26, :cond_189

    if-eqz v27, :cond_189

    .line 2877
    :try_start_140
    invoke-virtual {v15, v5, v13, v12}, Lcom/android/server/accounts/AccountManagerService;->readAuthTokenInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2878
    .local v0, "authToken":Ljava/lang/String;
    if-eqz v0, :cond_189

    .line 2879
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
    :try_end_14b
    .catchall {:try_start_140 .. :try_end_14b} :catchall_179

    .line 2880
    .local v1, "result":Landroid/os/Bundle;
    move-wide/from16 v32, v2

    :try_start_14d
    const-string v2, "authtoken"

    .line 2880
    .end local v2    # "ident":J
    .local v32, "ident":J
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2881
    const-string v2, "authAccount"

    iget-object v3, v13, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2882
    const-string v2, "accountType"

    iget-object v3, v13, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2883
    invoke-direct {v15, v14, v1}, Lcom/android/server/accounts/AccountManagerService;->onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    :try_end_163
    .catchall {:try_start_14d .. :try_end_163} :catchall_169

    .line 3019
    move-wide/from16 v2, v29

    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2884
    .end local v29    # "identityToken":J
    .local v2, "identityToken":J
    return-void

    .line 3019
    .end local v0    # "authToken":Ljava/lang/String;
    .end local v1    # "result":Landroid/os/Bundle;
    .end local v2    # "identityToken":J
    .end local v6    # "callerPkgSigDigest":[B
    .restart local v29    # "identityToken":J
    :catchall_169
    move-exception v0

    move/from16 v34, v28

    move-wide/from16 v1, v29

    move-wide/from16 v35, v32

    move-object/from16 v28, v4

    move-object/from16 v29, v5

    move-object v5, v7

    move/from16 v30, v8

    .line 3019
    .end local v29    # "identityToken":J
    .restart local v2    # "identityToken":J
    goto/16 :goto_236

    .line 3019
    .end local v32    # "ident":J
    .local v2, "ident":J
    .restart local v29    # "identityToken":J
    :catchall_179
    move-exception v0

    move-wide/from16 v35, v2

    move/from16 v34, v28

    move-wide/from16 v1, v29

    move-object/from16 v28, v4

    move-object/from16 v29, v5

    move-object v5, v7

    move/from16 v30, v8

    .line 3019
    .end local v29    # "identityToken":J
    .local v2, "identityToken":J
    .restart local v32    # "ident":J
    goto/16 :goto_236

    .line 2888
    .end local v32    # "ident":J
    .local v2, "ident":J
    .restart local v6    # "callerPkgSigDigest":[B
    .restart local v29    # "identityToken":J
    :cond_189
    move-wide/from16 v32, v2

    move-wide/from16 v2, v29

    .line 2888
    .end local v29    # "identityToken":J
    .local v2, "identityToken":J
    .restart local v32    # "ident":J
    if-eqz v26, :cond_1da

    .line 2894
    move/from16 v34, v28

    move-object v1, v15

    .line 2894
    .end local v28    # "callerUid":I
    .local v34, "callerUid":I
    move-wide v10, v2

    move-wide/from16 v35, v32

    move-object v2, v5

    .line 2894
    .end local v2    # "identityToken":J
    .end local v32    # "ident":J
    .local v10, "identityToken":J
    .local v35, "ident":J
    move-object v3, v13

    move-object/from16 v28, v4

    move-object v4, v12

    .line 2894
    .end local v4    # "authenticatorInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    .local v28, "authenticatorInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    move-object/from16 v29, v5

    move-object/from16 v5, v31

    .line 2894
    .end local v5    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .local v29, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :try_start_19e
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accounts/AccountManagerService;->readCachedTokenInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    .line 2900
    .local v0, "token":Ljava/lang/String;
    if-eqz v0, :cond_1e3

    .line 2901
    const-string v1, "AccountManagerService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1b4

    .line 2902
    const-string v1, "AccountManagerService"

    const-string v2, "getAuthToken: cache hit ofr custom token authenticator."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2904
    :cond_1b4
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2905
    .restart local v1    # "result":Landroid/os/Bundle;
    const-string v2, "authtoken"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2906
    const-string v2, "authAccount"

    iget-object v3, v13, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2907
    const-string v2, "accountType"

    iget-object v3, v13, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2908
    invoke-direct {v15, v14, v1}, Lcom/android/server/accounts/AccountManagerService;->onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    :try_end_1cf
    .catchall {:try_start_19e .. :try_end_1cf} :catchall_1d3

    .line 3019
    invoke-static {v10, v11}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2909
    return-void

    .line 3019
    .end local v0    # "token":Ljava/lang/String;
    .end local v1    # "result":Landroid/os/Bundle;
    .end local v6    # "callerPkgSigDigest":[B
    :catchall_1d3
    move-exception v0

    move-object v5, v7

    move/from16 v30, v8

    move-wide v1, v10

    goto/16 :goto_236

    .line 2913
    .end local v10    # "identityToken":J
    .end local v29    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v34    # "callerUid":I
    .end local v35    # "ident":J
    .restart local v2    # "identityToken":J
    .restart local v4    # "authenticatorInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    .restart local v5    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .restart local v6    # "callerPkgSigDigest":[B
    .local v28, "callerUid":I
    .restart local v32    # "ident":J
    :cond_1da
    move-wide v10, v2

    move-object/from16 v29, v5

    move/from16 v34, v28

    move-wide/from16 v35, v32

    move-object/from16 v28, v4

    .line 2913
    .end local v2    # "identityToken":J
    .end local v4    # "authenticatorInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    .end local v5    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v32    # "ident":J
    .restart local v10    # "identityToken":J
    .local v28, "authenticatorInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    .restart local v29    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .restart local v34    # "callerUid":I
    .restart local v35    # "ident":J
    :cond_1e3
    :try_start_1e3
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$8;

    iget-object v1, v13, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, v13, Landroid/accounts/Account;->name:Ljava/lang/String;
    :try_end_1ea
    .catchall {:try_start_1e3 .. :try_end_1ea} :catchall_220

    const/4 v4, 0x0

    move-object v5, v7

    move-object v7, v0

    .line 2913
    .end local v7    # "callerOwnedPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v5, "callerOwnedPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move/from16 v30, v8

    move-object v8, v15

    .line 2913
    .end local v8    # "userId":I
    .local v30, "userId":I
    move-object/from16 v9, v29

    move-wide/from16 v37, v10

    move-object v10, v14

    .line 2913
    .end local v10    # "identityToken":J
    .local v37, "identityToken":J
    move-object v11, v1

    move/from16 v12, p5

    move v13, v2

    move-object v14, v3

    move v15, v4

    move-object/from16 v16, p6

    move-object/from16 v17, p2

    move-object/from16 v18, p3

    move/from16 v19, p4

    move/from16 v20, v27

    move/from16 v21, v34

    move/from16 v22, v26

    move-object/from16 v23, v31

    move-object/from16 v24, v6

    move-object/from16 v25, v29

    :try_start_20f
    invoke-direct/range {v7 .. v25}, Lcom/android/server/accounts/AccountManagerService$8;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/os/Bundle;Landroid/accounts/Account;Ljava/lang/String;ZZIZLjava/lang/String;[BLcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 3017
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$8;->bind()V
    :try_end_215
    .catchall {:try_start_20f .. :try_end_215} :catchall_21c

    .line 3019
    .end local v6    # "callerPkgSigDigest":[B
    move-wide/from16 v1, v37

    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3020
    .end local v37    # "identityToken":J
    .local v1, "identityToken":J
    nop

    .line 3021
    return-void

    .line 3019
    .end local v1    # "identityToken":J
    .restart local v37    # "identityToken":J
    :catchall_21c
    move-exception v0

    move-wide/from16 v1, v37

    .line 3019
    .end local v37    # "identityToken":J
    .restart local v1    # "identityToken":J
    goto :goto_236

    .line 3019
    .end local v1    # "identityToken":J
    .end local v5    # "callerOwnedPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v30    # "userId":I
    .restart local v7    # "callerOwnedPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "userId":I
    .restart local v10    # "identityToken":J
    :catchall_220
    move-exception v0

    move-object v5, v7

    move/from16 v30, v8

    move-wide v1, v10

    .line 3019
    .end local v7    # "callerOwnedPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "userId":I
    .end local v10    # "identityToken":J
    .restart local v1    # "identityToken":J
    .restart local v5    # "callerOwnedPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v30    # "userId":I
    goto :goto_236

    .line 3019
    .end local v1    # "identityToken":J
    .end local v30    # "userId":I
    .end local v31    # "callerPkg":Ljava/lang/String;
    .end local v34    # "callerUid":I
    .end local v35    # "ident":J
    .local v2, "ident":J
    .restart local v4    # "authenticatorInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    .local v5, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .local v6, "callerPkg":Ljava/lang/String;
    .restart local v7    # "callerOwnedPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "userId":I
    .local v28, "callerUid":I
    .local v29, "identityToken":J
    :catchall_226
    move-exception v0

    move-wide/from16 v35, v2

    move-object/from16 v31, v6

    move/from16 v34, v28

    move-wide/from16 v1, v29

    move-object/from16 v28, v4

    move-object/from16 v29, v5

    move-object v5, v7

    move/from16 v30, v8

    .end local v2    # "ident":J
    .end local v4    # "authenticatorInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    .end local v6    # "callerPkg":Ljava/lang/String;
    .end local v7    # "callerOwnedPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "userId":I
    .restart local v1    # "identityToken":J
    .local v5, "callerOwnedPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v28, "authenticatorInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    .local v29, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .restart local v30    # "userId":I
    .restart local v31    # "callerPkg":Ljava/lang/String;
    .restart local v34    # "callerUid":I
    .restart local v35    # "ident":J
    :goto_236
    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v0

    .line 2854
    .end local v28    # "authenticatorInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    .end local v29    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v30    # "userId":I
    .end local v31    # "callerPkg":Ljava/lang/String;
    .end local v34    # "callerUid":I
    .end local v35    # "ident":J
    .local v1, "callerUid":I
    .restart local v2    # "ident":J
    .restart local v4    # "authenticatorInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    .local v5, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .restart local v6    # "callerPkg":Ljava/lang/String;
    .restart local v7    # "callerOwnedPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "userId":I
    :cond_23a
    move/from16 v34, v1

    move-wide/from16 v35, v2

    move-object/from16 v28, v4

    move-object/from16 v29, v5

    move-object/from16 v31, v6

    move-object v5, v7

    move/from16 v30, v8

    .line 2854
    .end local v1    # "callerUid":I
    .end local v2    # "ident":J
    .end local v4    # "authenticatorInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    .end local v6    # "callerPkg":Ljava/lang/String;
    .end local v7    # "callerOwnedPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "userId":I
    .local v5, "callerOwnedPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v28    # "authenticatorInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    .restart local v29    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .restart local v30    # "userId":I
    .restart local v31    # "callerPkg":Ljava/lang/String;
    .restart local v34    # "callerUid":I
    .restart local v35    # "ident":J
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 2856
    move/from16 v1, v34

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2856
    .end local v34    # "callerUid":I
    .restart local v1    # "callerUid":I
    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v2, 0x1

    aput-object v31, v0, v2

    .line 2854
    const-string v2, "Uid %s is attempting to illegally masquerade as package %s!"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2858
    .local v0, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2851
    .end local v0    # "msg":Ljava/lang/String;
    .end local v28    # "authenticatorInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    .end local v29    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v30    # "userId":I
    .end local v31    # "callerPkg":Ljava/lang/String;
    .end local v35    # "ident":J
    .restart local v2    # "ident":J
    .restart local v4    # "authenticatorInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    .local v5, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .restart local v6    # "callerPkg":Ljava/lang/String;
    .restart local v8    # "userId":I
    :catchall_262
    move-exception v0

    move-wide/from16 v35, v2

    move-object/from16 v28, v4

    move-object/from16 v29, v5

    move-object/from16 v31, v6

    move/from16 v30, v8

    .line 2851
    .end local v2    # "ident":J
    .end local v4    # "authenticatorInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    .end local v5    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v6    # "callerPkg":Ljava/lang/String;
    .end local v8    # "userId":I
    .restart local v28    # "authenticatorInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    .restart local v29    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .restart local v30    # "userId":I
    .restart local v31    # "callerPkg":Ljava/lang/String;
    .restart local v35    # "ident":J
    move-wide/from16 v2, v35

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2851
    .end local v35    # "ident":J
    .restart local v2    # "ident":J
    throw v0

    .line 2833
    .end local v1    # "callerUid":I
    .end local v26    # "customTokens":Z
    .end local v27    # "permissionGranted":Z
    .end local v28    # "authenticatorInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    .end local v29    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v30    # "userId":I
    .end local v31    # "callerPkg":Ljava/lang/String;
    .restart local v8    # "userId":I
    :catchall_273
    move-exception v0

    move/from16 v30, v8

    .line 2833
    .end local v8    # "userId":I
    .restart local v30    # "userId":I
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public getAuthTokenLabel(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;)V
    .registers 21
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "authTokenType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2744
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_6

    move v2, v1

    goto :goto_7

    :cond_6
    move v2, v0

    :goto_7
    const-string v3, "accountType cannot be null"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2745
    if-eqz p3, :cond_10

    move v0, v1

    nop

    :cond_10
    const-string v1, "authTokenType cannot be null"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2747
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getCallingUid()I

    move-result v1

    .line 2748
    .local v1, "callingUid":I
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    .line 2749
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_5a

    .line 2752
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    .line 2753
    .local v13, "userId":I
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v2

    move-wide v11, v2

    .line 2755
    .local v11, "identityToken":J
    move-object/from16 v10, p0

    :try_start_2f
    invoke-virtual {v10, v13}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v4

    .line 2756
    .local v4, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$7;
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_54

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v14, 0x0

    move-object v2, v0

    move-object v3, v10

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move v10, v14

    move-wide v15, v11

    move-object/from16 v11, p2

    .end local v11    # "identityToken":J
    .local v15, "identityToken":J
    move-object/from16 v12, p3

    :try_start_45
    invoke-direct/range {v2 .. v12}, Lcom/android/server/accounts/AccountManagerService$7;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 2784
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$7;->bind()V
    :try_end_4b
    .catchall {:try_start_45 .. :try_end_4b} :catchall_51

    .line 2786
    .end local v4    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    move-wide v2, v15

    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2787
    .end local v15    # "identityToken":J
    .local v2, "identityToken":J
    nop

    .line 2788
    return-void

    .line 2786
    .end local v2    # "identityToken":J
    .restart local v15    # "identityToken":J
    :catchall_51
    move-exception v0

    move-wide v2, v15

    .end local v15    # "identityToken":J
    .restart local v2    # "identityToken":J
    goto :goto_56

    .end local v2    # "identityToken":J
    .restart local v11    # "identityToken":J
    :catchall_54
    move-exception v0

    move-wide v2, v11

    .end local v11    # "identityToken":J
    .restart local v2    # "identityToken":J
    :goto_56
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v0

    .line 2750
    .end local v2    # "identityToken":J
    .end local v13    # "userId":I
    :cond_5a
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "can only call from system"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAuthenticatorTypes(I)[Landroid/accounts/AuthenticatorDescription;
    .registers 7
    .param p1, "userId"    # I

    .line 1569
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1570
    .local v0, "callingUid":I
    const-string v1, "AccountManagerService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 1571
    const-string v1, "AccountManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAuthenticatorTypes: for user id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " caller\'s uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1574
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1571
    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    :cond_37
    invoke-direct {p0, v0, p1}, Lcom/android/server/accounts/AccountManagerService;->isCrossUser(II)Z

    move-result v1

    if-nez v1, :cond_4e

    .line 1585
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v1

    .line 1587
    .local v1, "identityToken":J
    :try_start_41
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getAuthenticatorTypesInternal(I)[Landroid/accounts/AuthenticatorDescription;

    move-result-object v3
    :try_end_45
    .catchall {:try_start_41 .. :try_end_45} :catchall_49

    .line 1590
    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1587
    return-object v3

    .line 1590
    :catchall_49
    move-exception v3

    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v3

    .line 1578
    .end local v1    # "identityToken":J
    :cond_4e
    new-instance v1, Ljava/lang/SecurityException;

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 1581
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 1582
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1579
    const-string v3, "User %s tying to get authenticator types for %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getBindInstantServiceAllowed(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 417
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    invoke-interface {v0, p1}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->getBindInstantServiceAllowed(I)Z

    move-result v0

    return v0
.end method

.method public getPackagesAndVisibilityForAccount(Landroid/accounts/Account;)Ljava/util/Map;
    .registers 10
    .param p1, "account"    # Landroid/accounts/Account;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 552
    const-string v0, "account cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 554
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 555
    .local v1, "userId":I
    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_36

    .line 556
    invoke-direct {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->isSystemUid(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    goto :goto_36

    .line 557
    :cond_1c
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 558
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string/jumbo v3, "uid %s cannot get secrets for account %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 559
    .local v2, "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 562
    .end local v2    # "msg":Ljava/lang/String;
    :cond_36
    :goto_36
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v2

    .line 564
    .local v2, "identityToken":J
    :try_start_3a
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v4

    .line 565
    .local v4, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    iget-object v5, v4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_41
    .catchall {:try_start_3a .. :try_end_41} :catchall_54

    .line 566
    :try_start_41
    iget-object v6, v4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_51

    .line 567
    :try_start_44
    invoke-direct {p0, p1, v4}, Lcom/android/server/accounts/AccountManagerService;->getPackagesAndVisibilityForAccountLocked(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v7

    monitor-exit v6
    :try_end_49
    .catchall {:try_start_44 .. :try_end_49} :catchall_4e

    :try_start_49
    monitor-exit v5
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_51

    .line 571
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 567
    return-object v7

    .line 568
    :catchall_4e
    move-exception v7

    :try_start_4f
    monitor-exit v6
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    :try_start_50
    throw v7

    .line 569
    :catchall_51
    move-exception v6

    monitor-exit v5
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_51

    :try_start_53
    throw v6
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_54

    .line 571
    .end local v4    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_54
    move-exception v4

    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public getPassword(Landroid/accounts/Account;)Ljava/lang/String;
    .registers 8
    .param p1, "account"    # Landroid/accounts/Account;

    .line 1453
    const/16 v0, 0xe

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 1454
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1455
    .local v0, "callingUid":I
    const-string v1, "AccountManagerService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 1456
    const-string v1, "AccountManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPassword: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", caller\'s uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1457
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1458
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1456
    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    :cond_40
    if-eqz p1, :cond_7e

    .line 1461
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 1462
    .local v1, "userId":I
    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v3, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_63

    .line 1469
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v2

    .line 1471
    .local v2, "identityToken":J
    :try_start_52
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v4

    .line 1472
    .local v4, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-direct {p0, v4, p1}, Lcom/android/server/accounts/AccountManagerService;->readPasswordInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v5
    :try_end_5a
    .catchall {:try_start_52 .. :try_end_5a} :catchall_5e

    .line 1474
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1472
    return-object v5

    .line 1474
    .end local v4    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_5e
    move-exception v4

    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v4

    .line 1463
    .end local v2    # "identityToken":J
    :cond_63
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 1465
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 1463
    const-string/jumbo v3, "uid %s cannot get secrets for accounts of type: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1467
    .local v2, "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1460
    .end local v1    # "userId":I
    .end local v2    # "msg":Ljava/lang/String;
    :cond_7e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "account is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getPreviousName(Landroid/accounts/Account;)Ljava/lang/String;
    .registers 7
    .param p1, "account"    # Landroid/accounts/Account;

    .line 1497
    const-string v0, "AccountManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 1498
    const-string v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreviousName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", caller\'s uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1499
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1500
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1498
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    :cond_37
    const-string v0, "account cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1503
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1504
    .local v0, "userId":I
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v1

    .line 1506
    .local v1, "identityToken":J
    :try_start_44
    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v3

    .line 1507
    .local v3, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-direct {p0, v3, p1}, Lcom/android/server/accounts/AccountManagerService;->readPreviousNameInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v4
    :try_end_4c
    .catchall {:try_start_44 .. :try_end_4c} :catchall_50

    .line 1509
    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1507
    return-object v4

    .line 1509
    .end local v3    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_50
    move-exception v3

    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getRunningAccounts()[Landroid/accounts/AccountAndUser;
    .registers 3

    .line 4237
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getRunningUserIds()[I

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_f

    .line 4241
    .local v0, "runningUserIds":[I
    nop

    .line 4240
    nop

    .line 4242
    invoke-direct {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getAccounts([I)[Landroid/accounts/AccountAndUser;

    move-result-object v1

    return-object v1

    .line 4238
    .end local v0    # "runningUserIds":[I
    :catch_f
    move-exception v0

    .line 4240
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getSharedAccountsAsUser(I)[Landroid/accounts/Account;
    .registers 6
    .param p1, "userId"    # I

    .line 4436
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->handleIncomingUser(I)I

    move-result p1

    .line 4437
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 4438
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    iget-object v1, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4439
    :try_start_b
    iget-object v2, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v2}, Lcom/android/server/accounts/AccountsDb;->getSharedAccounts()Ljava/util/List;

    move-result-object v2

    .line 4440
    .local v2, "accountList":Ljava/util/List;, "Ljava/util/List<Landroid/accounts/Account;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Landroid/accounts/Account;

    .line 4441
    .local v3, "accountArray":[Landroid/accounts/Account;
    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 4442
    monitor-exit v1

    return-object v3

    .line 4443
    .end local v2    # "accountList":Ljava/util/List;, "Ljava/util/List<Landroid/accounts/Account;>;"
    .end local v3    # "accountArray":[Landroid/accounts/Account;
    :catchall_1c
    move-exception v2

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_b .. :try_end_1e} :catchall_1c

    throw v2
.end method

.method protected getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .registers 9
    .param p1, "userId"    # I

    .line 1297
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1298
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 1299
    .local v1, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    const/4 v2, 0x0

    .line 1300
    .local v2, "validateAccounts":Z
    if-nez v1, :cond_38

    .line 1301
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService;->mInjector:Lcom/android/server/accounts/AccountManagerService$Injector;

    invoke-virtual {v4, p1}, Lcom/android/server/accounts/AccountManagerService$Injector;->getPreNDatabaseName(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1302
    .local v3, "preNDbFile":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService;->mInjector:Lcom/android/server/accounts/AccountManagerService$Injector;

    invoke-virtual {v5, p1}, Lcom/android/server/accounts/AccountManagerService$Injector;->getDeDatabaseName(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1303
    .local v4, "deDbFile":Ljava/io/File;
    new-instance v5, Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, p1, v3, v4}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;-><init>(Landroid/content/Context;ILjava/io/File;Ljava/io/File;)V

    move-object v1, v5

    .line 1304
    invoke-direct {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->initializeDebugDbSizeAndCompileSqlStatementForLogging(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 1305
    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, p1, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1306
    invoke-direct {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->purgeOldGrants(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 1307
    const/4 v2, 0x1

    .line 1310
    .end local v3    # "preNDbFile":Ljava/io/File;
    .end local v4    # "deDbFile":Ljava/io/File;
    :cond_38
    iget-object v3, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v3}, Lcom/android/server/accounts/AccountsDb;->isCeDatabaseAttached()Z

    move-result v3

    if-nez v3, :cond_85

    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mLocalUnlockedUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_85

    .line 1311
    const-string v3, "AccountManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "User "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is unlocked - opening CE database"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    iget-object v3, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_66
    .catchall {:try_start_3 .. :try_end_66} :catchall_8d

    .line 1313
    :try_start_66
    iget-object v4, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_82

    .line 1314
    :try_start_69
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService;->mInjector:Lcom/android/server/accounts/AccountManagerService$Injector;

    invoke-virtual {v6, p1}, Lcom/android/server/accounts/AccountManagerService$Injector;->getCeDatabaseName(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1315
    .local v5, "ceDatabaseFile":Ljava/io/File;
    iget-object v6, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v6, v5}, Lcom/android/server/accounts/AccountsDb;->attachCeDatabase(Ljava/io/File;)V

    .line 1316
    .end local v5    # "ceDatabaseFile":Ljava/io/File;
    monitor-exit v4
    :try_end_7a
    .catchall {:try_start_69 .. :try_end_7a} :catchall_7f

    .line 1317
    :try_start_7a
    monitor-exit v3
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_82

    .line 1318
    :try_start_7b
    invoke-direct {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->syncDeCeAccountsLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    :try_end_7e
    .catchall {:try_start_7b .. :try_end_7e} :catchall_8d

    goto :goto_85

    .line 1316
    :catchall_7f
    move-exception v5

    :try_start_80
    monitor-exit v4
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_7f

    :try_start_81
    throw v5

    .line 1317
    :catchall_82
    move-exception v4

    monitor-exit v3
    :try_end_84
    .catchall {:try_start_81 .. :try_end_84} :catchall_82

    :try_start_84
    throw v4

    .line 1320
    :cond_85
    :goto_85
    if-eqz v2, :cond_8b

    .line 1321
    const/4 v3, 0x1

    invoke-direct {p0, v1, v3}, Lcom/android/server/accounts/AccountManagerService;->validateAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Z)V

    .line 1323
    :cond_8b
    monitor-exit v0

    return-object v1

    .line 1324
    .end local v1    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v2    # "validateAccounts":Z
    :catchall_8d
    move-exception v1

    monitor-exit v0
    :try_end_8f
    .catchall {:try_start_84 .. :try_end_8f} :catchall_8d

    throw v1
.end method

.method public getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "key"    # Ljava/lang/String;

    .line 1534
    const/16 v0, 0xf

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 1535
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1536
    .local v0, "callingUid":I
    const-string v1, "AccountManagerService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_37

    .line 1537
    const-string v1, "getUserData( account: %s, key: %s, callerUid: %s, pid: %s"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v4

    aput-object p2, v5, v3

    .line 1538
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v6, 0x3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1537
    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1539
    .local v1, "msg":Ljava/lang/String;
    const-string v5, "AccountManagerService"

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    .end local v1    # "msg":Ljava/lang/String;
    :cond_37
    const-string v1, "account cannot be null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1542
    const-string/jumbo v1, "key cannot be null"

    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1543
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 1544
    .local v1, "userId":I
    iget-object v5, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v5, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v5

    if-eqz v5, :cond_94

    .line 1551
    invoke-direct {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_74

    .line 1552
    const-string v2, "AccountManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "User "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " data is locked. callingUid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    return-object v3

    .line 1555
    :cond_74
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v4

    .line 1557
    .local v4, "identityToken":J
    :try_start_78
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v2

    .line 1558
    .local v2, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-direct {p0, v2, p1}, Lcom/android/server/accounts/AccountManagerService;->accountExistsCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Z

    move-result v6
    :try_end_80
    .catchall {:try_start_78 .. :try_end_80} :catchall_8f

    if-nez v6, :cond_87

    .line 1559
    nop

    .line 1563
    invoke-static {v4, v5}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1559
    return-object v3

    .line 1561
    :cond_87
    :try_start_87
    invoke-direct {p0, v2, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->readUserDataInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_8b
    .catchall {:try_start_87 .. :try_end_8b} :catchall_8f

    .line 1563
    invoke-static {v4, v5}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1561
    return-object v3

    .line 1563
    .end local v2    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_8f
    move-exception v2

    invoke-static {v4, v5}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v2

    .line 1545
    .end local v4    # "identityToken":J
    :cond_94
    new-array v2, v2, [Ljava/lang/Object;

    .line 1547
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    iget-object v4, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 1545
    const-string/jumbo v3, "uid %s cannot get user data for accounts of type: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1549
    .local v2, "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method grantAppPermission(Landroid/accounts/Account;Ljava/lang/String;I)V
    .registers 11
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 5773
    if-eqz p1, :cond_5e

    if-nez p2, :cond_5

    goto :goto_5e

    .line 5777
    :cond_5
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 5778
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    iget-object v1, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5779
    :try_start_10
    iget-object v2, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_5b

    .line 5780
    :try_start_13
    iget-object v3, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v3, p1}, Lcom/android/server/accounts/AccountsDb;->findDeAccountId(Landroid/accounts/Account;)J

    move-result-wide v3

    .line 5781
    .local v3, "accountId":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-ltz v5, :cond_24

    .line 5782
    iget-object v5, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v5, v3, v4, p2, p3}, Lcom/android/server/accounts/AccountsDb;->insertGrant(JLjava/lang/String;I)J

    .line 5784
    :cond_24
    nop

    .line 5785
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    move-result-object v5

    .line 5786
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    .line 5784
    invoke-direct {p0, v5, v6}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Landroid/os/UserHandle;)V

    .line 5788
    const/4 v5, 0x1

    invoke-direct {p0, p1, p3, v5}, Lcom/android/server/accounts/AccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;IZ)V

    .line 5789
    .end local v3    # "accountId":J
    monitor-exit v2
    :try_end_39
    .catchall {:try_start_13 .. :try_end_39} :catchall_58

    .line 5790
    :try_start_39
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_5b

    .line 5794
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mAppPermissionChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_40
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;

    .line 5795
    .local v2, "listener":Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    new-instance v4, Lcom/android/server/accounts/-$$Lambda$AccountManagerService$nCdu9dc3c8qBwJIwS0ZQk2waXfY;

    invoke-direct {v4, v2, p1, p3}, Lcom/android/server/accounts/-$$Lambda$AccountManagerService$nCdu9dc3c8qBwJIwS0ZQk2waXfY;-><init>(Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;Landroid/accounts/Account;I)V

    invoke-virtual {v3, v4}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;->post(Ljava/lang/Runnable;)Z

    .line 5796
    .end local v2    # "listener":Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;
    goto :goto_40

    .line 5797
    :cond_57
    return-void

    .line 5789
    :catchall_58
    move-exception v3

    :try_start_59
    monitor-exit v2
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    :try_start_5a
    throw v3

    .line 5790
    :catchall_5b
    move-exception v2

    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_5b

    throw v2

    .line 5774
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :cond_5e
    :goto_5e
    const-string v0, "AccountManagerService"

    const-string v1, "grantAppPermission: called with invalid arguments"

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5775
    return-void
.end method

.method public hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 10
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userHandle"    # Landroid/os/UserHandle;

    .line 3934
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_52

    .line 3937
    const-string v0, "account cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3938
    const-string/jumbo v0, "packageName cannot be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3939
    const-string/jumbo v0, "userHandle cannot be null"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3941
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 3943
    .local v0, "userId":I
    const v1, 0x7fffffff

    const-string/jumbo v2, "user must be concrete"

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 3946
    :try_start_2b
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v1

    .line 3947
    .local v1, "uid":I
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/accounts/AccountManagerService;->hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v2
    :try_end_35
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2b .. :try_end_35} :catch_36

    return v2

    .line 3948
    .end local v1    # "uid":I
    :catch_36
    move-exception v1

    .line 3949
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "AccountManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package not found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3950
    return v3

    .line 3935
    .end local v0    # "userId":I
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_52
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can be called only by system UID"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasFeatures(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "features"    # [Ljava/lang/String;
    .param p4, "opPackageName"    # Ljava/lang/String;

    .line 1878
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1879
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v1, v0, p4}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 1880
    const-string v1, "AccountManagerService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 1881
    const-string v1, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasFeatures: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", features "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1883
    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", caller\'s uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1885
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1881
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1887
    :cond_50
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_56

    move v3, v2

    goto :goto_57

    :cond_56
    move v3, v1

    :goto_57
    const-string v4, "account cannot be null"

    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1888
    if-eqz p1, :cond_60

    move v3, v2

    goto :goto_61

    :cond_60
    move v3, v1

    :goto_61
    const-string/jumbo v4, "response cannot be null"

    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1889
    if-eqz p3, :cond_6b

    move v1, v2

    nop

    :cond_6b
    const-string v2, "features cannot be null"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1890
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 1891
    .local v1, "userId":I
    iget-object v2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v1, p4}, Lcom/android/server/accounts/AccountManagerService;->checkReadAccountsPermitted(ILjava/lang/String;ILjava/lang/String;)V

    .line 1894
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v2

    .line 1896
    .local v2, "identityToken":J
    :try_start_7d
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v6

    .line 1897
    .local v6, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    new-instance v10, Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;

    move-object v4, v10

    move-object v5, p0

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;[Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;->bind()V
    :try_end_8e
    .catchall {:try_start_7d .. :try_end_8e} :catchall_93

    .line 1899
    .end local v6    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1900
    nop

    .line 1901
    return-void

    .line 1899
    :catchall_93
    move-exception v4

    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "authToken"    # Ljava/lang/String;

    .line 2384
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2385
    .local v0, "callerUid":I
    const-string v1, "accountType cannot be null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2386
    const-string v1, "authToken cannot be null"

    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2387
    const-string v1, "AccountManagerService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 2388
    const-string v1, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalidateAuthToken: accountType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", caller\'s uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2390
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2388
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2392
    :cond_41
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 2393
    .local v1, "userId":I
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v2

    .line 2395
    .local v2, "identityToken":J
    :try_start_49
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v4

    .line 2397
    .local v4, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    iget-object v5, v4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_50
    .catchall {:try_start_49 .. :try_end_50} :catchall_a0

    .line 2398
    :try_start_50
    iget-object v6, v4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v6}, Lcom/android/server/accounts/AccountsDb;->beginTransaction()V
    :try_end_55
    .catchall {:try_start_50 .. :try_end_55} :catchall_9d

    .line 2400
    :try_start_55
    invoke-direct {p0, v4, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->invalidateAuthTokenLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 2401
    .local v6, "deletedTokens":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;>;"
    iget-object v7, v4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v7}, Lcom/android/server/accounts/AccountsDb;->setTransactionSuccessful()V
    :try_end_5e
    .catchall {:try_start_55 .. :try_end_5e} :catchall_96

    .line 2403
    :try_start_5e
    iget-object v7, v4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v7}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 2404
    nop

    .line 2403
    nop

    .line 2405
    iget-object v7, v4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_68
    .catchall {:try_start_5e .. :try_end_68} :catchall_9d

    .line 2406
    :try_start_68
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_6c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_85

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    .line 2407
    .local v9, "tokenInfo":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;"
    iget-object v10, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Landroid/accounts/Account;

    .line 2408
    .local v10, "act":Landroid/accounts/Account;
    iget-object v11, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    .line 2409
    .local v11, "tokenType":Ljava/lang/String;
    const/4 v12, 0x0

    invoke-virtual {p0, v4, v10, v11, v12}, Lcom/android/server/accounts/AccountManagerService;->writeAuthTokenIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 2410
    .end local v9    # "tokenInfo":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;"
    .end local v10    # "act":Landroid/accounts/Account;
    .end local v11    # "tokenType":Ljava/lang/String;
    goto :goto_6c

    .line 2412
    :cond_85
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountTokenCaches:Lcom/android/server/accounts/TokenCache;
    invoke-static {v4}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1300(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/TokenCache;

    move-result-object v8

    invoke-virtual {v8, p1, p2}, Lcom/android/server/accounts/TokenCache;->remove(Ljava/lang/String;Ljava/lang/String;)V

    .line 2413
    monitor-exit v7
    :try_end_8d
    .catchall {:try_start_68 .. :try_end_8d} :catchall_93

    .line 2414
    :try_start_8d
    monitor-exit v5
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_9d

    .line 2416
    .end local v4    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v6    # "deletedTokens":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;>;"
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2417
    nop

    .line 2418
    return-void

    .line 2413
    .restart local v4    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .restart local v6    # "deletedTokens":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;>;"
    :catchall_93
    move-exception v8

    :try_start_94
    monitor-exit v7
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_93

    :try_start_95
    throw v8

    .line 2403
    .end local v6    # "deletedTokens":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;>;"
    :catchall_96
    move-exception v6

    iget-object v7, v4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v7}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    throw v6

    .line 2414
    :catchall_9d
    move-exception v6

    monitor-exit v5
    :try_end_9f
    .catchall {:try_start_95 .. :try_end_9f} :catchall_9d

    :try_start_9f
    throw v6
    :try_end_a0
    .catchall {:try_start_9f .. :try_end_a0} :catchall_a0

    .line 2416
    .end local v4    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_a0
    move-exception v4

    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public isCredentialsUpdateSuggested(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;)V
    .registers 22
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "statusToken"    # Ljava/lang/String;

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    .line 3807
    const-string v0, "AccountManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 3808
    const-string v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isCredentialsUpdateSuggested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", response "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", caller\'s uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3810
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3811
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3808
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3813
    :cond_44
    if-eqz v12, :cond_9a

    .line 3816
    if-eqz v13, :cond_90

    .line 3819
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_85

    .line 3823
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v14

    .line 3824
    .local v14, "usrId":I
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v10, v0

    .line 3826
    .local v10, "identityToken":J
    move-object/from16 v15, p0

    :try_start_59
    invoke-virtual {v15, v14}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v3

    .line 3827
    .local v3, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$16;

    iget-object v5, v13, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, v13, Landroid/accounts/Account;->name:Ljava/lang/String;
    :try_end_65
    .catchall {:try_start_59 .. :try_end_65} :catchall_7f

    const/4 v9, 0x0

    move-object v1, v0

    move-object v2, v15

    move-object v4, v12

    move-wide/from16 v16, v10

    move-object v10, v13

    .line 3827
    .end local v10    # "identityToken":J
    .local v16, "identityToken":J
    move-object/from16 v11, p3

    :try_start_6e
    invoke-direct/range {v1 .. v11}, Lcom/android/server/accounts/AccountManagerService$16;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/accounts/Account;Ljava/lang/String;)V

    .line 3881
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$16;->bind()V
    :try_end_74
    .catchall {:try_start_6e .. :try_end_74} :catchall_7b

    .line 3883
    .end local v3    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    move-wide/from16 v1, v16

    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3884
    .end local v16    # "identityToken":J
    .local v1, "identityToken":J
    nop

    .line 3885
    return-void

    .line 3883
    .end local v1    # "identityToken":J
    .restart local v16    # "identityToken":J
    :catchall_7b
    move-exception v0

    move-wide/from16 v1, v16

    .line 3883
    .end local v16    # "identityToken":J
    .restart local v1    # "identityToken":J
    goto :goto_81

    .line 3883
    .end local v1    # "identityToken":J
    .restart local v10    # "identityToken":J
    :catchall_7f
    move-exception v0

    move-wide v1, v10

    .line 3883
    .end local v10    # "identityToken":J
    .restart local v1    # "identityToken":J
    :goto_81
    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v0

    .line 3820
    .end local v1    # "identityToken":J
    .end local v14    # "usrId":I
    :cond_85
    move-object/from16 v15, p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "status token is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3817
    :cond_90
    move-object/from16 v15, p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3814
    :cond_9a
    move-object/from16 v15, p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "response is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onAccountAccessed(Ljava/lang/String;)V
    .registers 12
    .param p1, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4657
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4658
    .local v0, "uid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_d

    .line 4659
    return-void

    .line 4661
    :cond_d
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 4662
    .local v1, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4664
    .local v2, "identity":J
    :try_start_15
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lcom/android/server/accounts/AccountManagerService;->getAccounts(ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_21
    if-ge v6, v5, :cond_3f

    aget-object v7, v4, v6

    .line 4665
    .local v7, "account":Landroid/accounts/Account;
    invoke-virtual {v7}, Landroid/accounts/Account;->getAccessId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3c

    .line 4669
    const/4 v8, 0x0

    invoke-direct {p0, v7, v8, v0}, Lcom/android/server/accounts/AccountManagerService;->hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_3c

    .line 4670
    const-string v8, "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE"

    const/4 v9, 0x1

    invoke-virtual {p0, v7, v8, v0, v9}, Lcom/android/server/accounts/AccountManagerService;->updateAppPermission(Landroid/accounts/Account;Ljava/lang/String;IZ)V
    :try_end_3c
    .catchall {:try_start_15 .. :try_end_3c} :catchall_44

    .line 4664
    .end local v7    # "account":Landroid/accounts/Account;
    :cond_3c
    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    .line 4676
    :cond_3f
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4677
    nop

    .line 4678
    return-void

    .line 4676
    :catchall_44
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 5183
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onServiceChanged(Landroid/accounts/AuthenticatorDescription;IZ)V
    .registers 6
    .param p1, "desc"    # Landroid/accounts/AuthenticatorDescription;
    .param p2, "userId"    # I
    .param p3, "removed"    # Z

    .line 1448
    invoke-virtual {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->validateAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Z)V

    .line 1449
    return-void
.end method

.method public bridge synthetic onServiceChanged(Ljava/lang/Object;IZ)V
    .registers 4

    .line 146
    check-cast p1, Landroid/accounts/AuthenticatorDescription;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->onServiceChanged(Landroid/accounts/AuthenticatorDescription;IZ)V

    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 4684
    new-instance v0, Lcom/android/server/accounts/AccountManagerServiceShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/accounts/AccountManagerServiceShellCommand;-><init>(Lcom/android/server/accounts/AccountManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accounts/AccountManagerServiceShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 4686
    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1077
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/accounts/IAccountManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    .line 1078
    :catch_5
    move-exception v0

    .line 1081
    .local v0, "e":Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_11

    .line 1082
    const-string v1, "AccountManagerService"

    const-string v2, "Account Manager Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1084
    :cond_11
    throw v0
.end method

.method onUnlockUser(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 1417
    const-string v0, "AccountManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1418
    const-string v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserUnlocked "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    :cond_20
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1421
    :try_start_23
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mLocalUnlockedUsers:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1422
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_38

    .line 1423
    if-ge p1, v2, :cond_2d

    return-void

    .line 1424
    :cond_2d
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    new-instance v1, Lcom/android/server/accounts/-$$Lambda$AccountManagerService$ncg6hlXg7I0Ee1EZqbXw8fQH9bY;

    invoke-direct {v1, p0, p1}, Lcom/android/server/accounts/-$$Lambda$AccountManagerService$ncg6hlXg7I0Ee1EZqbXw8fQH9bY;-><init>(Lcom/android/server/accounts/AccountManagerService;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;->post(Ljava/lang/Runnable;)Z

    .line 1425
    return-void

    .line 1422
    :catchall_38
    move-exception v1

    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method onUserUnlocked(Landroid/content/Intent;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1413
    const-string v0, "android.intent.extra.user_handle"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->onUnlockUser(I)V

    .line 1414
    return-void
.end method

.method public peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;

    .line 2495
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2496
    .local v0, "callingUid":I
    const-string v1, "AccountManagerService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 2497
    const-string v1, "AccountManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "peekAuthToken: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", authTokenType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", caller\'s uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2500
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2497
    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2502
    :cond_40
    const-string v1, "account cannot be null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2503
    const-string v1, "authTokenType cannot be null"

    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2504
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 2505
    .local v1, "userId":I
    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v3, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_91

    .line 2512
    invoke-direct {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    move-result v2

    if-nez v2, :cond_7c

    .line 2513
    const-string v2, "AccountManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Authtoken not available - user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " data is locked. callingUid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2515
    const/4 v2, 0x0

    return-object v2

    .line 2517
    :cond_7c
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v2

    .line 2519
    .local v2, "identityToken":J
    :try_start_80
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v4

    .line 2520
    .local v4, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-virtual {p0, v4, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->readAuthTokenInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_88
    .catchall {:try_start_80 .. :try_end_88} :catchall_8c

    .line 2522
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2520
    return-object v5

    .line 2522
    .end local v4    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_8c
    move-exception v4

    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v4

    .line 2506
    .end local v2    # "identityToken":J
    :cond_91
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 2508
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 2506
    const-string/jumbo v3, "uid %s cannot peek the authtokens associated with accounts of type: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2510
    .local v2, "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected readAuthTokenInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "authTokenType"    # Ljava/lang/String;

    .line 6076
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6077
    :try_start_3
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->authTokenCache:Ljava/util/Map;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1200(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 6078
    .local v1, "authTokensForAccount":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_17

    .line 6079
    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    monitor-exit v0

    return-object v2

    .line 6081
    .end local v1    # "authTokensForAccount":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_47

    .line 6083
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6084
    :try_start_1b
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_44

    .line 6085
    :try_start_1e
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->authTokenCache:Ljava/util/Map;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1200(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 6086
    .local v2, "authTokensForAccount":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v2, :cond_38

    .line 6088
    iget-object v3, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v3, p2}, Lcom/android/server/accounts/AccountsDb;->findAuthTokensByAccount(Landroid/accounts/Account;)Ljava/util/Map;

    move-result-object v3

    move-object v2, v3

    .line 6089
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->authTokenCache:Ljava/util/Map;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1200(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6091
    :cond_38
    invoke-interface {v2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_1e .. :try_end_3f} :catchall_41

    :try_start_3f
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_44

    return-object v3

    .line 6092
    .end local v2    # "authTokensForAccount":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_41
    move-exception v2

    :try_start_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    :try_start_43
    throw v2

    .line 6093
    :catchall_44
    move-exception v0

    monitor-exit v1
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_44

    throw v0

    .line 6081
    :catchall_47
    move-exception v1

    :try_start_48
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw v1
.end method

.method protected readCachedTokenInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
    .registers 8
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "tokenType"    # Ljava/lang/String;
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "pkgSigDigest"    # [B

    .line 6052
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6053
    :try_start_3
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountTokenCaches:Lcom/android/server/accounts/TokenCache;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1300(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/TokenCache;

    move-result-object v1

    invoke-virtual {v1, p2, p3, p4, p5}, Lcom/android/server/accounts/TokenCache;->get(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 6055
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public registerAccountListener([Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "accountTypes"    # [Ljava/lang/String;
    .param p2, "opPackageName"    # Ljava/lang/String;

    .line 884
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 885
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v1, v0, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 887
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 888
    .local v1, "userId":I
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v2

    .line 890
    .local v2, "identityToken":J
    :try_start_11
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v4

    .line 891
    .local v4, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/accounts/AccountManagerService;->registerAccountListener([Ljava/lang/String;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_1d

    .line 893
    .end local v4    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 894
    nop

    .line 895
    return-void

    .line 893
    :catchall_1d
    move-exception v4

    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public removeAccount(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Z)V
    .registers 5
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "expectActivityLaunch"    # Z

    .line 2108
    const/16 v0, 0x11

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 2109
    nop

    .line 2113
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 2109
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/accounts/AccountManagerService;->removeAccountAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;ZI)V

    .line 2114
    return-void
.end method

.method public removeAccountAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;ZI)V
    .registers 24
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "expectActivityLaunch"    # Z
    .param p4, "userId"    # I

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    .line 2119
    move/from16 v11, p4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 2120
    .local v12, "callingUid":I
    const-string v0, "AccountManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 2121
    const-string v0, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeAccount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", caller\'s uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2124
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", for user id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2121
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2127
    :cond_50
    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz v10, :cond_56

    move v3, v2

    goto :goto_57

    :cond_56
    move v3, v0

    :goto_57
    const-string v4, "account cannot be null"

    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2128
    if-eqz v9, :cond_60

    move v3, v2

    goto :goto_61

    :cond_60
    move v3, v0

    :goto_61
    const-string/jumbo v4, "response cannot be null"

    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2131
    invoke-direct {v8, v12, v11}, Lcom/android/server/accounts/AccountManagerService;->isCrossUser(II)Z

    move-result v3

    if-nez v3, :cond_145

    .line 2143
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v13

    .line 2144
    .local v13, "user":Landroid/os/UserHandle;
    iget-object v3, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v13}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-direct {v8, v3, v12, v4}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v3

    if-nez v3, :cond_a3

    .line 2145
    invoke-direct {v8, v12}, Lcom/android/server/accounts/AccountManagerService;->isSystemUid(I)Z

    move-result v3

    if-nez v3, :cond_a3

    .line 2146
    invoke-direct {v8, v12}, Lcom/android/server/accounts/AccountManagerService;->isProfileOwner(I)Z

    move-result v3

    if-eqz v3, :cond_8a

    goto :goto_a3

    .line 2147
    :cond_8a
    new-array v1, v1, [Ljava/lang/Object;

    .line 2149
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    iget-object v0, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v0, v1, v2

    .line 2147
    const-string/jumbo v0, "uid %s cannot remove accounts of type: %s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2151
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2153
    .end local v0    # "msg":Ljava/lang/String;
    :cond_a3
    :goto_a3
    invoke-direct {v8, v11, v12}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccounts(II)Z

    move-result v0

    if-nez v0, :cond_b3

    .line 2155
    const/16 v0, 0x64

    :try_start_ab
    const-string v1, "User cannot modify accounts"

    invoke-interface {v9, v0, v1}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_b0
    .catch Landroid/os/RemoteException; {:try_start_ab .. :try_end_b0} :catch_b1

    .line 2158
    goto :goto_b2

    .line 2157
    :catch_b1
    move-exception v0

    .line 2159
    :goto_b2
    return-void

    .line 2161
    :cond_b3
    iget-object v0, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {v8, v11, v0, v12}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccountsForType(ILjava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_c5

    .line 2163
    const/16 v0, 0x65

    :try_start_bd
    const-string v1, "User cannot modify accounts of this type (policy)."

    invoke-interface {v9, v0, v1}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_c2
    .catch Landroid/os/RemoteException; {:try_start_bd .. :try_end_c2} :catch_c3

    .line 2166
    goto :goto_c4

    .line 2165
    :catch_c3
    move-exception v0

    .line 2167
    :goto_c4
    return-void

    .line 2169
    :cond_c5
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v14

    .line 2170
    .local v14, "identityToken":J
    invoke-virtual {v8, v11}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v7

    .line 2171
    .local v7, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-direct {v8, v7, v10}, Lcom/android/server/accounts/AccountManagerService;->getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    move-result-object v0

    invoke-direct {v8, v0, v13}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Landroid/os/UserHandle;)V

    .line 2172
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->credentialsPermissionNotificationIds:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1700(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3

    .line 2174
    :try_start_d9
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->credentialsPermissionNotificationIds:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1700(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_e9
    .catchall {:try_start_d9 .. :try_end_e9} :catchall_13e

    if-eqz v1, :cond_10f

    :try_start_eb
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 2175
    .local v1, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v10, v2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10a

    .line 2176
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->credentialsPermissionNotificationIds:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1700(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accounts/AccountManagerService$NotificationId;

    .line 2177
    .local v2, "id":Lcom/android/server/accounts/AccountManagerService$NotificationId;
    invoke-direct {v8, v2, v13}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Landroid/os/UserHandle;)V
    :try_end_10a
    .catchall {:try_start_eb .. :try_end_10a} :catchall_10b

    .line 2179
    .end local v1    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    .end local v2    # "id":Lcom/android/server/accounts/AccountManagerService$NotificationId;
    :cond_10a
    goto :goto_e5

    .line 2180
    :catchall_10b
    move-exception v0

    move-object/from16 v18, v7

    goto :goto_141

    :cond_10f
    :try_start_10f
    monitor-exit v3
    :try_end_110
    .catchall {:try_start_10f .. :try_end_110} :catchall_13e

    .line 2181
    iget-object v0, v7, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0, v10}, Lcom/android/server/accounts/AccountsDb;->findDeAccountId(Landroid/accounts/Account;)J

    move-result-wide v16

    .line 2182
    .local v16, "accountId":J
    sget-object v2, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_CALLED_ACCOUNT_REMOVE:Ljava/lang/String;

    const-string v3, "accounts"

    move-object v1, v8

    move-wide/from16 v4, v16

    move-object v6, v7

    move-object/from16 v18, v7

    move v7, v12

    .line 2182
    .end local v7    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .local v18, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-direct/range {v1 .. v7}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    .line 2189
    :try_start_124
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;

    move-object v1, v0

    move-object v2, v8

    move-object/from16 v3, v18

    move-object v4, v9

    move-object v5, v10

    move/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Z)V

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;->bind()V
    :try_end_134
    .catchall {:try_start_124 .. :try_end_134} :catchall_139

    .line 2191
    invoke-static {v14, v15}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2192
    nop

    .line 2193
    return-void

    .line 2191
    :catchall_139
    move-exception v0

    invoke-static {v14, v15}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v0

    .line 2180
    .end local v16    # "accountId":J
    .end local v18    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .restart local v7    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_13e
    move-exception v0

    move-object/from16 v18, v7

    .line 2180
    .end local v7    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .restart local v18    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :goto_141
    :try_start_141
    monitor-exit v3
    :try_end_142
    .catchall {:try_start_141 .. :try_end_142} :catchall_143

    throw v0

    :catchall_143
    move-exception v0

    goto :goto_141

    .line 2132
    .end local v13    # "user":Landroid/os/UserHandle;
    .end local v14    # "identityToken":J
    .end local v18    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :cond_145
    new-instance v3, Ljava/lang/SecurityException;

    new-array v1, v1, [Ljava/lang/Object;

    .line 2135
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    .line 2136
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    .line 2133
    const-string v0, "User %s tying remove account for %s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public removeAccountExplicitly(Landroid/accounts/Account;)Z
    .registers 14
    .param p1, "account"    # Landroid/accounts/Account;

    .line 2197
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 2198
    .local v7, "callingUid":I
    const-string v0, "AccountManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 2199
    const-string v0, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeAccountExplicitly: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", caller\'s uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2201
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2199
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2203
    :cond_38
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    .line 2204
    .local v8, "userId":I
    const/4 v0, 0x0

    if-nez p1, :cond_4b

    .line 2209
    const-string v1, "AccountManagerService"

    const-string v2, "account is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2210
    return v0

    .line 2211
    :cond_4b
    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v2, v7, v8}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_79

    .line 2218
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v9

    .line 2219
    .local v9, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    iget-object v0, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0, p1}, Lcom/android/server/accounts/AccountsDb;->findDeAccountId(Landroid/accounts/Account;)J

    move-result-wide v10

    .line 2220
    .local v10, "accountId":J
    sget-object v1, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_CALLED_ACCOUNT_REMOVE:Ljava/lang/String;

    const-string v2, "accounts"

    move-object v0, p0

    move-wide v3, v10

    move-object v5, v9

    move v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    .line 2226
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v0

    .line 2228
    .local v0, "identityToken":J
    :try_start_6c
    invoke-direct {p0, v9, p1, v7}, Lcom/android/server/accounts/AccountManagerService;->removeAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;I)Z

    move-result v2
    :try_end_70
    .catchall {:try_start_6c .. :try_end_70} :catchall_74

    .line 2230
    invoke-static {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2228
    return v2

    .line 2230
    :catchall_74
    move-exception v2

    invoke-static {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v2

    .line 2212
    .end local v0    # "identityToken":J
    .end local v9    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v10    # "accountId":J
    :cond_79
    new-array v1, v1, [Ljava/lang/Object;

    .line 2214
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x1

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v2, v1, v0

    .line 2212
    const-string/jumbo v0, "uid %s cannot explicitly remove accounts of type: %s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2216
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected removeAccountInternal(Landroid/accounts/Account;)V
    .registers 4
    .param p1, "account"    # Landroid/accounts/Account;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2290
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/accounts/AccountManagerService;->removeAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;I)Z

    .line 2291
    return-void
.end method

.method public removeSharedAccountAsUser(Landroid/accounts/Account;I)Z
    .registers 4
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I

    .line 4418
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getCallingUid()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->removeSharedAccountAsUser(Landroid/accounts/Account;II)Z

    move-result v0

    return v0
.end method

.method public renameAccount(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;)V
    .registers 14
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "accountToRename"    # Landroid/accounts/Account;
    .param p3, "newName"    # Ljava/lang/String;

    .line 1963
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1964
    .local v0, "callingUid":I
    const-string v1, "AccountManagerService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 1965
    const-string v1, "AccountManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "renameAccount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", caller\'s uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1967
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1965
    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1969
    :cond_40
    if-eqz p2, :cond_a9

    .line 1970
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 1971
    .local v1, "userId":I
    iget-object v3, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v3, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_8e

    .line 1978
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v2

    .line 1980
    .local v2, "identityToken":J
    :try_start_52
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v4

    .line 1981
    .local v4, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-direct {p0, v4, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->renameAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v5

    .line 1982
    .local v5, "resultingAccount":Landroid/accounts/Account;
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 1983
    .local v6, "result":Landroid/os/Bundle;
    const-string v7, "authAccount"

    iget-object v8, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1984
    const-string v7, "accountType"

    iget-object v8, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1985
    const-string v7, "accountAccessId"

    .line 1986
    invoke-virtual {v5}, Landroid/accounts/Account;->getAccessId()Ljava/lang/String;

    move-result-object v8

    .line 1985
    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_76
    .catchall {:try_start_52 .. :try_end_76} :catchall_89

    .line 1988
    :try_start_76
    invoke-interface {p1, v6}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_79
    .catch Landroid/os/RemoteException; {:try_start_76 .. :try_end_79} :catch_7a
    .catchall {:try_start_76 .. :try_end_79} :catchall_89

    .line 1991
    goto :goto_84

    .line 1989
    :catch_7a
    move-exception v7

    .line 1990
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_7b
    const-string v8, "AccountManagerService"

    invoke-virtual {v7}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_84
    .catchall {:try_start_7b .. :try_end_84} :catchall_89

    .line 1993
    .end local v4    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v5    # "resultingAccount":Landroid/accounts/Account;
    .end local v6    # "result":Landroid/os/Bundle;
    .end local v7    # "e":Landroid/os/RemoteException;
    :goto_84
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1994
    nop

    .line 1995
    return-void

    .line 1993
    :catchall_89
    move-exception v4

    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v4

    .line 1972
    .end local v2    # "identityToken":J
    :cond_8e
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 1974
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 1972
    const-string/jumbo v3, "uid %s cannot rename accounts of type: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1976
    .local v2, "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1969
    .end local v1    # "userId":I
    .end local v2    # "msg":Ljava/lang/String;
    :cond_a9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "account is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public renameSharedAccountAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .registers 16
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "newName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 4402
    invoke-direct {p0, p3}, Lcom/android/server/accounts/AccountManagerService;->handleIncomingUser(I)I

    move-result p3

    .line 4403
    invoke-virtual {p0, p3}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v7

    .line 4404
    .local v7, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    iget-object v0, v7, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0, p1}, Lcom/android/server/accounts/AccountsDb;->findSharedAccountId(Landroid/accounts/Account;)J

    move-result-wide v8

    .line 4405
    .local v8, "sharedTableAccountId":J
    iget-object v0, v7, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/accounts/AccountsDb;->renameSharedAccount(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v10

    .line 4406
    .local v10, "r":I
    if-lez v10, :cond_29

    .line 4407
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getCallingUid()I

    move-result v11

    .line 4408
    .local v11, "callingUid":I
    sget-object v1, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_ACCOUNT_RENAME:Ljava/lang/String;

    const-string/jumbo v2, "shared_accounts"

    move-object v0, p0

    move-wide v3, v8

    move-object v5, v7

    move v6, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    .line 4411
    invoke-direct {p0, v7, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->renameAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Landroid/accounts/Account;

    .line 4413
    .end local v11    # "callingUid":I
    :cond_29
    if-lez v10, :cond_2d

    const/4 v0, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v0, 0x0

    :goto_2e
    return v0
.end method

.method public setAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .registers 14
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "newVisibility"    # I

    .line 763
    const-string v0, "account cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    const-string/jumbo v0, "packageName cannot be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 766
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 767
    .local v1, "userId":I
    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_3e

    .line 768
    invoke-direct {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->isSystemUid(I)Z

    move-result v2

    if-eqz v2, :cond_22

    goto :goto_3e

    .line 769
    :cond_22
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 771
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 769
    const-string/jumbo v3, "uid %s cannot get secrets for accounts of type: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 773
    .local v2, "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 775
    .end local v2    # "msg":Ljava/lang/String;
    :cond_3e
    :goto_3e
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v2

    .line 777
    .local v2, "identityToken":J
    :try_start_42
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v9

    .line 778
    .local v9, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    const/4 v8, 0x1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/server/accounts/AccountManagerService;->setAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;IZLcom/android/server/accounts/AccountManagerService$UserAccounts;)Z

    move-result v4
    :try_end_4f
    .catchall {:try_start_42 .. :try_end_4f} :catchall_53

    .line 781
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 778
    return v4

    .line 781
    .end local v9    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_53
    move-exception v4

    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "authToken"    # Ljava/lang/String;

    .line 2528
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2529
    .local v0, "callingUid":I
    const-string v1, "AccountManagerService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 2530
    const-string v1, "AccountManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAuthToken: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", authTokenType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", caller\'s uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2533
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2530
    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2535
    :cond_40
    const-string v1, "account cannot be null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2536
    const-string v1, "authTokenType cannot be null"

    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2537
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 2538
    .local v1, "userId":I
    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v3, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 2545
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v2

    .line 2547
    .local v2, "identityToken":J
    :try_start_5a
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v4

    .line 2548
    .local v4, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-direct {p0, v4, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->saveAuthTokenToDatabase(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_61
    .catchall {:try_start_5a .. :try_end_61} :catchall_66

    .line 2550
    .end local v4    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2551
    nop

    .line 2552
    return-void

    .line 2550
    :catchall_66
    move-exception v4

    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v4

    .line 2539
    .end local v2    # "identityToken":J
    :cond_6b
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 2541
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 2539
    const-string/jumbo v3, "uid %s cannot set auth tokens associated with accounts of type: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2543
    .local v2, "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method setBindInstantServiceAllowed(IZ)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "allowed"    # Z

    .line 421
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    invoke-interface {v0, p1, p2}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->setBindInstantServiceAllowed(IZ)V

    .line 422
    return-void
.end method

.method public setPassword(Landroid/accounts/Account;Ljava/lang/String;)V
    .registers 8
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "password"    # Ljava/lang/String;

    .line 2556
    const/16 v0, 0x12

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 2557
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2558
    .local v0, "callingUid":I
    const-string v1, "AccountManagerService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 2559
    const-string v1, "AccountManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAuthToken: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", caller\'s uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2561
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2559
    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2563
    :cond_3d
    const-string v1, "account cannot be null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2564
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 2565
    .local v1, "userId":I
    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v3, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_63

    .line 2572
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v2

    .line 2574
    .local v2, "identityToken":J
    :try_start_52
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v4

    .line 2575
    .local v4, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-direct {p0, v4, p1, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->setPasswordInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;I)V
    :try_end_59
    .catchall {:try_start_52 .. :try_end_59} :catchall_5e

    .line 2577
    .end local v4    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2578
    nop

    .line 2579
    return-void

    .line 2577
    :catchall_5e
    move-exception v4

    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v4

    .line 2566
    .end local v2    # "identityToken":J
    :cond_63
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 2568
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 2566
    const-string/jumbo v3, "uid %s cannot set secrets for accounts of type: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2570
    .local v2, "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 2650
    const/16 v0, 0x14

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 2651
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2652
    .local v0, "callingUid":I
    const-string v1, "AccountManagerService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 2653
    const-string v1, "AccountManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setUserData: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", caller\'s uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2656
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2653
    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2658
    :cond_45
    if-eqz p2, :cond_97

    .line 2659
    if-eqz p1, :cond_8f

    .line 2660
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 2661
    .local v1, "userId":I
    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v3, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_74

    .line 2668
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v2

    .line 2670
    .local v2, "identityToken":J
    :try_start_59
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v4

    .line 2671
    .local v4, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-direct {p0, v4, p1}, Lcom/android/server/accounts/AccountManagerService;->accountExistsCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Z

    move-result v5
    :try_end_61
    .catchall {:try_start_59 .. :try_end_61} :catchall_6f

    if-nez v5, :cond_67

    .line 2676
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2672
    return-void

    .line 2674
    :cond_67
    :try_start_67
    invoke-direct {p0, v4, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->setUserdataInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_6f

    .line 2676
    .end local v4    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2677
    nop

    .line 2678
    return-void

    .line 2676
    :catchall_6f
    move-exception v4

    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v4

    .line 2662
    .end local v2    # "identityToken":J
    :cond_74
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 2664
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 2662
    const-string/jumbo v3, "uid %s cannot set user data for accounts of type: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2666
    .local v2, "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2659
    .end local v1    # "userId":I
    .end local v2    # "msg":Ljava/lang/String;
    :cond_8f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "account is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2658
    :cond_97
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "key is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public someUserHasAccount(Landroid/accounts/Account;)Z
    .registers 8
    .param p1, "account"    # Landroid/accounts/Account;

    .line 4076
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    invoke-static {v1, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 4079
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4081
    .local v0, "token":J
    :try_start_10
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService;->getAllAccounts()[Landroid/accounts/AccountAndUser;

    move-result-object v2

    .line 4082
    .local v2, "allAccounts":[Landroid/accounts/AccountAndUser;
    array-length v3, v2

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .local v3, "i":I
    :goto_17
    if-ltz v3, :cond_2b

    .line 4083
    aget-object v5, v2, v3

    iget-object v5, v5, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    invoke-virtual {v5, p1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_21
    .catchall {:try_start_10 .. :try_end_21} :catchall_30

    if-eqz v5, :cond_28

    .line 4084
    nop

    .line 4089
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4084
    return v4

    .line 4082
    :cond_28
    add-int/lit8 v3, v3, -0x1

    goto :goto_17

    .line 4087
    .end local v3    # "i":I
    :cond_2b
    const/4 v3, 0x0

    .line 4089
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4087
    return v3

    .line 4089
    .end local v2    # "allAccounts":[Landroid/accounts/AccountAndUser;
    :catchall_30
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 4077
    .end local v0    # "token":J
    :cond_35
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Only system can check for accounts across users"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startAddAccountSession(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;)V
    .registers 33
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "authTokenType"    # Ljava/lang/String;
    .param p4, "requiredFeatures"    # [Ljava/lang/String;
    .param p5, "expectActivityLaunch"    # Z
    .param p6, "optionsIn"    # Landroid/os/Bundle;

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v13, p2

    .line 3298
    move-object/from16 v12, p6

    const/4 v0, 0x1

    invoke-static {v12, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 3299
    const-string v1, "AccountManagerService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 3300
    const-string v1, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startAddAccountSession: accountType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", authTokenType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p3

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", requiredFeatures "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3304
    invoke-static/range {p4 .. p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", expectActivityLaunch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p5

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", caller\'s uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3306
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3307
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3300
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_71

    .line 3309
    :cond_6d
    move-object/from16 v11, p3

    move/from16 v10, p5

    :goto_71
    const/4 v1, 0x0

    if-eqz v14, :cond_76

    move v2, v0

    goto :goto_77

    :cond_76
    move v2, v1

    :goto_77
    const-string/jumbo v3, "response cannot be null"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3310
    if-eqz v13, :cond_80

    goto :goto_81

    :cond_80
    move v0, v1

    :goto_81
    const-string v1, "accountType cannot be null"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3312
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 3313
    .local v9, "uid":I
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 3314
    .local v8, "userId":I
    invoke-direct {v15, v8, v9}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccounts(II)Z

    move-result v0

    if-nez v0, :cond_a1

    .line 3316
    const/16 v1, 0x64

    :try_start_96
    const-string v0, "User is not allowed to add an account!"

    invoke-interface {v14, v1, v0}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_9b
    .catch Landroid/os/RemoteException; {:try_start_96 .. :try_end_9b} :catch_9c

    .line 3319
    goto :goto_9d

    .line 3318
    :catch_9c
    move-exception v0

    .line 3320
    :goto_9d
    invoke-direct {v15, v1, v8}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    .line 3321
    return-void

    .line 3323
    :cond_a1
    invoke-direct {v15, v8, v13, v9}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccountsForType(ILjava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_b4

    .line 3325
    const/16 v1, 0x65

    :try_start_a9
    const-string v0, "User cannot modify accounts of this type (policy)."

    invoke-interface {v14, v1, v0}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_ae
    .catch Landroid/os/RemoteException; {:try_start_a9 .. :try_end_ae} :catch_af

    .line 3328
    goto :goto_b0

    .line 3327
    :catch_af
    move-exception v0

    .line 3329
    :goto_b0
    invoke-direct {v15, v1, v8}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    .line 3331
    return-void

    .line 3333
    :cond_b4
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 3334
    .local v7, "pid":I
    if-nez v12, :cond_c0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_c1

    :cond_c0
    move-object v0, v12

    :goto_c1
    move-object v6, v0

    .line 3335
    .local v6, "options":Landroid/os/Bundle;
    const-string v0, "callerUid"

    invoke-virtual {v6, v0, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3336
    const-string v0, "callerPid"

    invoke-virtual {v6, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3339
    const-string v0, "androidPackageName"

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3340
    .local v5, "callerPkg":Ljava/lang/String;
    const-string v0, "android.permission.GET_PASSWORD"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v15, v5, v9, v0}, Lcom/android/server/accounts/AccountManagerService;->isPermitted(Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result v16

    .line 3343
    .local v16, "isPasswordForwardingAllowed":Z
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v3, v0

    .line 3345
    .local v3, "identityToken":J
    :try_start_e1
    invoke-virtual {v15, v8}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 3346
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    sget-object v1, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_CALLED_START_ACCOUNT_ADD:Ljava/lang/String;

    const-string v2, "accounts"

    invoke-direct {v15, v0, v1, v2, v9}, Lcom/android/server/accounts/AccountManagerService;->logRecordWithUid(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;I)V

    .line 3348
    new-instance v2, Lcom/android/server/accounts/AccountManagerService$11;
    :try_end_ee
    .catchall {:try_start_e1 .. :try_end_ee} :catchall_12b

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object v1, v2

    move-object/from16 v20, v2

    move-object v2, v15

    move-wide/from16 v21, v3

    move-object v3, v0

    .line 3348
    .end local v3    # "identityToken":J
    .local v21, "identityToken":J
    move-object v4, v14

    move-object/from16 v23, v5

    move-object v5, v13

    .line 3348
    .end local v5    # "callerPkg":Ljava/lang/String;
    .local v23, "callerPkg":Ljava/lang/String;
    move-object/from16 v24, v6

    move v6, v10

    .line 3348
    .end local v6    # "options":Landroid/os/Bundle;
    .local v24, "options":Landroid/os/Bundle;
    move/from16 v25, v7

    move-object/from16 v7, v17

    .line 3348
    .end local v7    # "pid":I
    .local v25, "pid":I
    move/from16 v17, v8

    move/from16 v8, v18

    .line 3348
    .end local v8    # "userId":I
    .local v17, "userId":I
    move/from16 v18, v9

    move/from16 v9, v19

    .line 3348
    .end local v9    # "uid":I
    .local v18, "uid":I
    move/from16 v10, v16

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, v24

    move-object/from16 v14, p2

    :try_start_118
    invoke-direct/range {v1 .. v14}, Lcom/android/server/accounts/AccountManagerService$11;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZLjava/lang/String;ZZZLjava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 3370
    move-object/from16 v1, v20

    invoke-virtual {v1}, Lcom/android/server/accounts/AccountManagerService$11;->bind()V
    :try_end_120
    .catchall {:try_start_118 .. :try_end_120} :catchall_127

    .line 3372
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    move-wide/from16 v1, v21

    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3373
    .end local v21    # "identityToken":J
    .local v1, "identityToken":J
    nop

    .line 3374
    return-void

    .line 3372
    .end local v1    # "identityToken":J
    .restart local v21    # "identityToken":J
    :catchall_127
    move-exception v0

    move-wide/from16 v1, v21

    .line 3372
    .end local v21    # "identityToken":J
    .restart local v1    # "identityToken":J
    goto :goto_137

    .line 3372
    .end local v1    # "identityToken":J
    .end local v17    # "userId":I
    .end local v18    # "uid":I
    .end local v23    # "callerPkg":Ljava/lang/String;
    .end local v24    # "options":Landroid/os/Bundle;
    .end local v25    # "pid":I
    .restart local v3    # "identityToken":J
    .restart local v5    # "callerPkg":Ljava/lang/String;
    .restart local v6    # "options":Landroid/os/Bundle;
    .restart local v7    # "pid":I
    .restart local v8    # "userId":I
    .restart local v9    # "uid":I
    :catchall_12b
    move-exception v0

    move-wide v1, v3

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    move/from16 v25, v7

    move/from16 v17, v8

    move/from16 v18, v9

    .line 3372
    .end local v3    # "identityToken":J
    .end local v5    # "callerPkg":Ljava/lang/String;
    .end local v6    # "options":Landroid/os/Bundle;
    .end local v7    # "pid":I
    .end local v8    # "userId":I
    .end local v9    # "uid":I
    .restart local v1    # "identityToken":J
    .restart local v17    # "userId":I
    .restart local v18    # "uid":I
    .restart local v23    # "callerPkg":Ljava/lang/String;
    .restart local v24    # "options":Landroid/os/Bundle;
    .restart local v25    # "pid":I
    :goto_137
    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public startUpdateCredentialsSession(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;)V
    .registers 29
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "authTokenType"    # Ljava/lang/String;
    .param p4, "expectActivityLaunch"    # Z
    .param p5, "loginOptions"    # Landroid/os/Bundle;

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v13, p2

    .line 3745
    move-object/from16 v12, p5

    const/4 v0, 0x1

    invoke-static {v12, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 3746
    const-string v0, "AccountManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 3747
    const-string v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startUpdateCredentialsSession: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", response "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", authTokenType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p3

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", expectActivityLaunch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p4

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", caller\'s uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3750
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3751
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3747
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_65

    .line 3753
    :cond_61
    move-object/from16 v11, p3

    move/from16 v10, p4

    :goto_65
    if-eqz v15, :cond_d8

    .line 3756
    if-eqz v13, :cond_d0

    .line 3760
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 3761
    .local v9, "uid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    .line 3764
    .local v8, "userId":I
    const-string v0, "androidPackageName"

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3765
    .local v7, "callerPkg":Ljava/lang/String;
    const-string v0, "android.permission.GET_PASSWORD"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v14, v7, v9, v0}, Lcom/android/server/accounts/AccountManagerService;->isPermitted(Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result v16

    .line 3768
    .local v16, "isPasswordForwardingAllowed":Z
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v5, v0

    .line 3770
    .local v5, "identityToken":J
    :try_start_86
    invoke-virtual {v14, v8}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v3

    .line 3771
    .local v3, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$15;

    iget-object v4, v13, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v2, v13, Landroid/accounts/Account;->name:Ljava/lang/String;
    :try_end_90
    .catchall {:try_start_86 .. :try_end_90} :catchall_c4

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object v1, v0

    move-object/from16 v19, v2

    move-object v2, v14

    move-object/from16 v20, v4

    move-object v4, v15

    move-wide/from16 v21, v5

    move-object/from16 v5, v20

    .end local v5    # "identityToken":J
    .local v21, "identityToken":J
    move v6, v10

    move-object/from16 v20, v7

    move-object/from16 v7, v19

    .line 3771
    .end local v7    # "callerPkg":Ljava/lang/String;
    .local v20, "callerPkg":Ljava/lang/String;
    move/from16 v19, v8

    move/from16 v8, v17

    .line 3771
    .end local v8    # "userId":I
    .local v19, "userId":I
    move/from16 v17, v9

    move/from16 v9, v18

    .line 3771
    .end local v9    # "uid":I
    .local v17, "uid":I
    move/from16 v10, v16

    move-object v11, v13

    move-object/from16 v12, p3

    move-object/from16 v13, p5

    :try_start_b3
    invoke-direct/range {v1 .. v13}, Lcom/android/server/accounts/AccountManagerService$15;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZLjava/lang/String;ZZZLandroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3796
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$15;->bind()V
    :try_end_b9
    .catchall {:try_start_b3 .. :try_end_b9} :catchall_c0

    .line 3798
    .end local v3    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    move-wide/from16 v1, v21

    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3799
    .end local v21    # "identityToken":J
    .local v1, "identityToken":J
    nop

    .line 3800
    return-void

    .line 3798
    .end local v1    # "identityToken":J
    .restart local v21    # "identityToken":J
    :catchall_c0
    move-exception v0

    move-wide/from16 v1, v21

    .line 3798
    .end local v21    # "identityToken":J
    .restart local v1    # "identityToken":J
    goto :goto_cc

    .line 3798
    .end local v1    # "identityToken":J
    .end local v17    # "uid":I
    .end local v19    # "userId":I
    .end local v20    # "callerPkg":Ljava/lang/String;
    .restart local v5    # "identityToken":J
    .restart local v7    # "callerPkg":Ljava/lang/String;
    .restart local v8    # "userId":I
    .restart local v9    # "uid":I
    :catchall_c4
    move-exception v0

    move-wide v1, v5

    move-object/from16 v20, v7

    move/from16 v19, v8

    move/from16 v17, v9

    .line 3798
    .end local v5    # "identityToken":J
    .end local v7    # "callerPkg":Ljava/lang/String;
    .end local v8    # "userId":I
    .end local v9    # "uid":I
    .restart local v1    # "identityToken":J
    .restart local v17    # "uid":I
    .restart local v19    # "userId":I
    .restart local v20    # "callerPkg":Ljava/lang/String;
    :goto_cc
    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v0

    .line 3757
    .end local v1    # "identityToken":J
    .end local v16    # "isPasswordForwardingAllowed":Z
    .end local v17    # "uid":I
    .end local v19    # "userId":I
    .end local v20    # "callerPkg":Ljava/lang/String;
    :cond_d0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3754
    :cond_d8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "response is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterAccountListener([Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "accountTypes"    # [Ljava/lang/String;
    .param p2, "opPackageName"    # Ljava/lang/String;

    .line 918
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 919
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v1, v0, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 920
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 921
    .local v1, "userId":I
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v2

    .line 923
    .local v2, "identityToken":J
    :try_start_11
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v4

    .line 924
    .local v4, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/accounts/AccountManagerService;->unregisterAccountListener([Ljava/lang/String;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_1d

    .line 926
    .end local v4    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 927
    nop

    .line 928
    return-void

    .line 926
    :catchall_1d
    move-exception v4

    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public updateAppPermission(Landroid/accounts/Account;Ljava/lang/String;IZ)V
    .registers 8
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5752
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getCallingUid()I

    move-result v0

    .line 5754
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_16

    .line 5758
    if-eqz p4, :cond_12

    .line 5759
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->grantAppPermission(Landroid/accounts/Account;Ljava/lang/String;I)V

    goto :goto_15

    .line 5761
    :cond_12
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->revokeAppPermission(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 5763
    :goto_15
    return-void

    .line 5755
    :cond_16
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1}, Ljava/lang/SecurityException;-><init>()V

    throw v1
.end method

.method public updateCredentials(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;)V
    .registers 28
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "authTokenType"    # Ljava/lang/String;
    .param p4, "expectActivityLaunch"    # Z
    .param p5, "loginOptions"    # Landroid/os/Bundle;

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    .line 3702
    const/4 v0, 0x1

    move-object/from16 v13, p5

    invoke-static {v13, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 3703
    const-string v0, "AccountManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 3704
    const-string v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCredentials: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", response "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", authTokenType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p3

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", expectActivityLaunch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p4

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", caller\'s uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3708
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3709
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3704
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_63

    .line 3711
    :cond_5f
    move-object/from16 v12, p3

    move/from16 v11, p4

    :goto_63
    if-eqz v14, :cond_ba

    .line 3712
    if-eqz v15, :cond_b2

    .line 3713
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v10

    .line 3714
    .local v10, "userId":I
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v8, v0

    .line 3716
    .local v8, "identityToken":J
    move-object/from16 v7, p0

    :try_start_72
    invoke-virtual {v7, v10}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v3

    .line 3717
    .local v3, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$14;

    iget-object v5, v15, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/16 v16, 0x1

    iget-object v6, v15, Landroid/accounts/Account;->name:Ljava/lang/String;
    :try_end_7e
    .catchall {:try_start_72 .. :try_end_7e} :catchall_aa

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object v1, v0

    move-object v2, v7

    move-object v4, v14

    move-object/from16 v19, v6

    move v6, v11

    move/from16 v7, v16

    move-wide/from16 v20, v8

    move-object/from16 v8, v19

    .end local v8    # "identityToken":J
    .local v20, "identityToken":J
    move/from16 v9, v17

    move/from16 v16, v10

    move/from16 v10, v18

    .line 3717
    .end local v10    # "userId":I
    .local v16, "userId":I
    move-object v11, v15

    move-object/from16 v12, p3

    move-object/from16 v13, p5

    :try_start_99
    invoke-direct/range {v1 .. v13}, Lcom/android/server/accounts/AccountManagerService$14;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZLandroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3732
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$14;->bind()V
    :try_end_9f
    .catchall {:try_start_99 .. :try_end_9f} :catchall_a6

    .line 3734
    .end local v3    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    move-wide/from16 v1, v20

    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3735
    .end local v20    # "identityToken":J
    .local v1, "identityToken":J
    nop

    .line 3736
    return-void

    .line 3734
    .end local v1    # "identityToken":J
    .restart local v20    # "identityToken":J
    :catchall_a6
    move-exception v0

    move-wide/from16 v1, v20

    .line 3734
    .end local v20    # "identityToken":J
    .restart local v1    # "identityToken":J
    goto :goto_ae

    .line 3734
    .end local v1    # "identityToken":J
    .end local v16    # "userId":I
    .restart local v8    # "identityToken":J
    .restart local v10    # "userId":I
    :catchall_aa
    move-exception v0

    move-wide v1, v8

    move/from16 v16, v10

    .line 3734
    .end local v8    # "identityToken":J
    .end local v10    # "userId":I
    .restart local v1    # "identityToken":J
    .restart local v16    # "userId":I
    :goto_ae
    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v0

    .line 3712
    .end local v1    # "identityToken":J
    .end local v16    # "userId":I
    :cond_b2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3711
    :cond_ba
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "response is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public validateAccounts(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 1100
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 1103
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->validateAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Z)V

    .line 1104
    return-void
.end method

.method protected writeAuthTokenIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .line 6061
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->authTokenCache:Ljava/util/Map;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1200(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 6062
    .local v0, "authTokensForAccount":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_19

    .line 6063
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v1, p2}, Lcom/android/server/accounts/AccountsDb;->findAuthTokensByAccount(Landroid/accounts/Account;)Ljava/util/Map;

    move-result-object v0

    .line 6064
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->authTokenCache:Ljava/util/Map;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1200(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6066
    :cond_19
    if-nez p4, :cond_1f

    .line 6067
    invoke-interface {v0, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    .line 6069
    :cond_1f
    invoke-interface {v0, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6071
    :goto_22
    return-void
.end method

.method protected writeUserDataIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .line 6034
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userDataCache:Ljava/util/Map;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1100(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 6035
    .local v0, "userDataForAccount":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_19

    .line 6036
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v1, p2}, Lcom/android/server/accounts/AccountsDb;->findUserExtrasForAccount(Landroid/accounts/Account;)Ljava/util/Map;

    move-result-object v0

    .line 6037
    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userDataCache:Ljava/util/Map;
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1100(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6039
    :cond_19
    if-nez p4, :cond_1f

    .line 6040
    invoke-interface {v0, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    .line 6042
    :cond_1f
    invoke-interface {v0, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6044
    :goto_22
    return-void
.end method
