.class public Lcom/android/server/locksettings/LockSettingsService;
.super Lcom/android/internal/widget/ILockSettings$Stub;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/locksettings/LockSettingsService$LocalService;,
        Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;,
        Lcom/android/server/locksettings/LockSettingsService$GateKeeperDiedRecipient;,
        Lcom/android/server/locksettings/LockSettingsService$Injector;,
        Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;,
        Lcom/android/server/locksettings/LockSettingsService$Lifecycle;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_PASSWORD:Ljava/lang/String; = "default_password"

.field private static final PERMISSION:Ljava/lang/String; = "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

.field private static final PROFILE_KEY_IV_SIZE:I = 0xc

.field private static final READ_CONTACTS_PROTECTED_SETTINGS:[Ljava/lang/String;

.field private static final READ_PASSWORD_PROTECTED_SETTINGS:[Ljava/lang/String;

.field private static final SEPARATE_PROFILE_CHALLENGE_KEY:Ljava/lang/String; = "lockscreen.profilechallenge"

.field private static final SETTINGS_TO_BACKUP:[Ljava/lang/String;

.field private static final SYNTHETIC_PASSWORD_ENABLED_BY_DEFAULT:I = 0x1

.field private static final SYSTEM_CREDENTIAL_UIDS:[I

.field private static final TAG:Ljava/lang/String; = "LockSettingsService"

.field private static final VALID_SETTINGS:[Ljava/lang/String;

.field private static mSavePassword:Ljava/lang/String;


# instance fields
.field private final mActivityManager:Landroid/app/IActivityManager;

.field protected mAuthSecretService:Landroid/hardware/authsecret/V1_0/IAuthSecret;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceProvisionedObserver:Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;

.field private mFirstCallToVold:Z

.field protected mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

.field protected final mHandler:Landroid/os/Handler;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

.field private final mSeparateChallengeLock:Ljava/lang/Object;

.field private mSpCache:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSpManager"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;",
            ">;"
        }
    .end annotation
.end field

.field private final mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

.field protected final mStorage:Lcom/android/server/locksettings/LockSettingsStorage;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

.field private final mStrongAuthTracker:Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 189
    const-string v0, "default_password"

    sput-object v0, Lcom/android/server/locksettings/LockSettingsService;->mSavePassword:Ljava/lang/String;

    .line 200
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_72

    sput-object v0, Lcom/android/server/locksettings/LockSettingsService;->SYSTEM_CREDENTIAL_UIDS:[I

    .line 2194
    const-string/jumbo v1, "lockscreen.lockedoutpermanently"

    const-string/jumbo v2, "lockscreen.patterneverchosen"

    const-string/jumbo v3, "lockscreen.password_type"

    const-string/jumbo v4, "lockscreen.password_type_alternate"

    const-string/jumbo v5, "lockscreen.password_salt"

    const-string/jumbo v6, "lockscreen.disabled"

    const-string/jumbo v7, "lockscreen.options"

    const-string/jumbo v8, "lockscreen.biometric_weak_fallback"

    const-string/jumbo v9, "lockscreen.biometricweakeverchosen"

    const-string/jumbo v10, "lockscreen.power_button_instantly_locks"

    const-string/jumbo v11, "lockscreen.passwordhistory"

    const-string/jumbo v12, "lock_pattern_autolock"

    const-string/jumbo v13, "lock_biometric_weak_flags"

    const-string/jumbo v14, "lock_pattern_visible_pattern"

    const-string/jumbo v15, "lock_pattern_tactile_feedback_enabled"

    filled-new-array/range {v1 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/LockSettingsService;->VALID_SETTINGS:[Ljava/lang/String;

    .line 2213
    const-string/jumbo v0, "lock_screen_owner_info_enabled"

    const-string/jumbo v1, "lock_screen_owner_info"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/LockSettingsService;->READ_CONTACTS_PROTECTED_SETTINGS:[Ljava/lang/String;

    .line 2219
    const-string/jumbo v0, "lockscreen.password_salt"

    const-string/jumbo v1, "lockscreen.passwordhistory"

    const-string/jumbo v2, "lockscreen.password_type"

    const-string/jumbo v3, "lockscreen.profilechallenge"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/LockSettingsService;->READ_PASSWORD_PROTECTED_SETTINGS:[Ljava/lang/String;

    .line 2226
    const-string/jumbo v0, "lock_screen_owner_info_enabled"

    const-string/jumbo v1, "lock_screen_owner_info"

    const-string/jumbo v2, "lock_pattern_visible_pattern"

    const-string/jumbo v3, "lockscreen.power_button_instantly_locks"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/LockSettingsService;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    return-void

    nop

    nop

    :array_72
    .array-data 4
        0x3f2
        0x3f8
        0x0
        0x3e8
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 418
    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;-><init>(Lcom/android/server/locksettings/LockSettingsService$Injector;)V

    .line 419
    return-void
.end method

.method protected constructor <init>(Lcom/android/server/locksettings/LockSettingsService$Injector;)V
    .registers 9
    .param p1, "injector"    # Lcom/android/server/locksettings/LockSettingsService$Injector;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 422
    invoke-direct {p0}, Lcom/android/internal/widget/ILockSettings$Stub;-><init>()V

    .line 167
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    .line 170
    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;

    invoke-direct {v0, p0}, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;-><init>(Lcom/android/server/locksettings/LockSettingsService;)V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mDeviceProvisionedObserver:Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;

    .line 636
    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$2;

    invoke-direct {v0, p0}, Lcom/android/server/locksettings/LockSettingsService$2;-><init>(Lcom/android/server/locksettings/LockSettingsService;)V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 2266
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpCache:Landroid/util/SparseArray;

    .line 423
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 424
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 425
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getKeyStore()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mKeyStore:Landroid/security/KeyStore;

    .line 426
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {p1, v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getRecoverableKeyStoreManager(Landroid/security/KeyStore;)Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    .line 427
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    .line 428
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getStrongAuth()Lcom/android/server/locksettings/LockSettingsStrongAuth;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    .line 429
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getActivityManager()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mActivityManager:Landroid/app/IActivityManager;

    .line 431
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 432
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mFirstCallToVold:Z

    .line 434
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 435
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 436
    const-string v1, "android.intent.action.USER_STARTING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 437
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 438
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 441
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getStorage()Lcom/android/server/locksettings/LockSettingsStorage;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 442
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 443
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 444
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getStrongAuthTracker()Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuthTracker:Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;

    .line 445
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuthTracker:Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v1, v2}, Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;->register(Lcom/android/server/locksettings/LockSettingsStrongAuth;)V

    .line 447
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p1, v1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getSyntheticPasswordManager(Lcom/android/server/locksettings/LockSettingsStorage;)Lcom/android/server/locksettings/SyntheticPasswordManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 449
    const-class v1, Lcom/android/internal/widget/LockSettingsInternal;

    new-instance v2, Lcom/android/server/locksettings/LockSettingsService$LocalService;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/locksettings/LockSettingsService$LocalService;-><init>(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/LockSettingsService$1;)V

    invoke-static {v1, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 450
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/locksettings/LockSettingsService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsService;

    .line 156
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->migrateOldDataAfterSystemReady()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/locksettings/LockSettingsService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsService;
    .param p1, "x1"    # I

    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->tryRemoveUserFromSpCacheLater(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/locksettings/LockSettingsService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsService;

    .line 156
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/locksettings/LockSettingsService;[BI)J
    .registers 5
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsService;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 156
    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->addEscrowToken([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/android/server/locksettings/LockSettingsService;JI)Z
    .registers 5
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I

    .line 156
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->removeEscrowToken(JI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/locksettings/LockSettingsService;JI)Z
    .registers 5
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I

    .line 156
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->isEscrowTokenActive(JI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/locksettings/LockSettingsService;Ljava/lang/String;IJ[BII)Z
    .registers 9
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # J
    .param p5, "x4"    # [B
    .param p6, "x5"    # I
    .param p7, "x6"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 156
    invoke-direct/range {p0 .. p7}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialWithToken(Ljava/lang/String;IJ[BII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/locksettings/LockSettingsService;J[BI)Z
    .registers 6
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsService;
    .param p1, "x1"    # J
    .param p3, "x2"    # [B
    .param p4, "x3"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 156
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsService;->unlockUserWithToken(J[BI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/locksettings/LockSettingsService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsService;
    .param p1, "x1"    # I

    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->ensureProfileKeystoreUnlocked(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/locksettings/LockSettingsService;Landroid/os/UserHandle;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsService;
    .param p1, "x1"    # Landroid/os/UserHandle;

    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->hideEncryptionNotification(Landroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/locksettings/LockSettingsService;)Landroid/os/UserManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsService;

    .line 156
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/locksettings/LockSettingsService;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsService;
    .param p1, "x1"    # I

    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/locksettings/LockSettingsService;Landroid/os/UserHandle;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsService;
    .param p1, "x1"    # Landroid/os/UserHandle;

    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->showEncryptionNotificationForProfile(Landroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/locksettings/LockSettingsService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsService;
    .param p1, "x1"    # I

    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->tryDeriveAuthTokenForUnsecuredPrimaryUser(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/locksettings/LockSettingsService;IZ)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 156
    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->removeUser(IZ)V

    return-void
.end method

.method private activateEscrowTokens(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V
    .registers 12
    .param p1, "auth"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p2, "userId"    # I

    .line 2693
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 2694
    :try_start_3
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->disableEscrowTokenOnNonManagedDevicesIfNeeded(I)V

    .line 2695
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getPendingTokensForUser(I)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 2696
    .local v2, "handle":J
    const-string v4, "LockSettingsService"

    const-string v5, "activateEscrowTokens: %x %d "

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2697
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v4, v2, v3, p1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->activateTokenBasedSyntheticPassword(JLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Z

    .line 2698
    .end local v2    # "handle":J
    goto :goto_10

    .line 2699
    :cond_42
    monitor-exit v0

    .line 2700
    return-void

    .line 2699
    :catchall_44
    move-exception v1

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_3 .. :try_end_46} :catchall_44

    throw v1
.end method

.method private addEscrowToken([BI)J
    .registers 12
    .param p1, "token"    # [B
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2661
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 2662
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->enableSyntheticPasswordLocked()V

    .line 2665
    const/4 v1, 0x0

    .line 2666
    .local v1, "auth":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v2

    if-nez v2, :cond_33

    .line 2667
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->shouldMigrateToSyntheticPasswordLocked(I)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 2668
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v3, p0

    move v8, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/locksettings/LockSettingsService;->initializeSyntheticPasswordLocked([BLjava/lang/String;III)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-result-object v2

    move-object v1, v2

    goto :goto_33

    .line 2672
    :cond_1f
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v4

    .line 2673
    .local v4, "pwdHandle":J
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v8, 0x0

    move v7, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;JLjava/lang/String;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-object v1, v2

    .line 2677
    .end local v4    # "pwdHandle":J
    :cond_33
    :goto_33
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 2678
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->disableEscrowTokenOnNonManagedDevicesIfNeeded(I)V

    .line 2679
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v2, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasEscrowData(I)Z

    move-result v2

    if-eqz v2, :cond_45

    goto :goto_4d

    .line 2680
    :cond_45
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Escrow token is disabled on the current user"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2683
    :cond_4d
    :goto_4d
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createTokenBasedSyntheticPassword([BI)J

    move-result-wide v2

    .line 2684
    .local v2, "handle":J
    if-eqz v1, :cond_5a

    .line 2685
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v4, v2, v3, v1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->activateTokenBasedSyntheticPassword(JLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Z

    .line 2687
    :cond_5a
    monitor-exit v0

    return-wide v2

    .line 2688
    .end local v1    # "auth":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .end local v2    # "handle":J
    :catchall_5c
    move-exception v1

    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_3 .. :try_end_5e} :catchall_5c

    throw v1
.end method

.method private addUserKeyAuth(I[B[B)V
    .registers 9
    .param p1, "userId"    # I
    .param p2, "token"    # [B
    .param p3, "secret"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1619
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1620
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v1

    .line 1621
    .local v1, "storageManager":Landroid/os/storage/IStorageManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1623
    .local v2, "callingId":J
    :try_start_10
    iget v4, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-interface {v1, p1, v4, p2, p3}, Landroid/os/storage/IStorageManager;->addUserKeyAuth(II[B[B)V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_1a

    .line 1625
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1626
    nop

    .line 1627
    return-void

    .line 1625
    :catchall_1a
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private checkCryptKeeperPermissions()Z
    .registers 5

    .line 1122
    const/4 v0, 0x0

    .line 1124
    .local v0, "permission_err":Z
    :try_start_1
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v3, "no permission to get the password"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_b} :catch_c

    .line 1129
    goto :goto_e

    .line 1127
    :catch_c
    move-exception v1

    .line 1128
    .local v1, "e":Ljava/lang/SecurityException;
    const/4 v0, 0x1

    .line 1130
    .end local v1    # "e":Ljava/lang/SecurityException;
    :goto_e
    return v0
.end method

.method private final checkPasswordHavePermission(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 919
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_28

    .line 920
    const v0, 0x534e4554

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "28251513"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 922
    :cond_28
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string v2, "LockSettingsHave"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    return-void
.end method

.method private final checkPasswordReadPermission(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 915
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string v2, "LockSettingsRead"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    return-void
.end method

.method private final checkReadPermission(Ljava/lang/String;I)V
    .registers 9
    .param p1, "requestedKey"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 926
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 928
    .local v0, "callingUid":I
    const/4 v1, 0x0

    move v2, v1

    .line 928
    .local v2, "i":I
    :goto_6
    sget-object v3, Lcom/android/server/locksettings/LockSettingsService;->READ_CONTACTS_PROTECTED_SETTINGS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_55

    .line 929
    sget-object v3, Lcom/android/server/locksettings/LockSettingsService;->READ_CONTACTS_PROTECTED_SETTINGS:[Ljava/lang/String;

    aget-object v3, v3, v2

    .line 930
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_52

    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.READ_CONTACTS"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_20

    .end local v3    # "key":Ljava/lang/String;
    goto :goto_52

    .line 932
    .restart local v3    # "key":Ljava/lang/String;
    :cond_20
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " needs permission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "android.permission.READ_CONTACTS"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " to read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 928
    .end local v3    # "key":Ljava/lang/String;
    :cond_52
    :goto_52
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 938
    .end local v2    # "i":I
    :cond_55
    nop

    .line 938
    .local v1, "i":I
    :goto_56
    sget-object v2, Lcom/android/server/locksettings/LockSettingsService;->READ_PASSWORD_PROTECTED_SETTINGS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_a5

    .line 939
    sget-object v2, Lcom/android/server/locksettings/LockSettingsService;->READ_PASSWORD_PROTECTED_SETTINGS:[Ljava/lang/String;

    aget-object v2, v2, v1

    .line 940
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a2

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_70

    .end local v2    # "key":Ljava/lang/String;
    goto :goto_a2

    .line 942
    .restart local v2    # "key":Ljava/lang/String;
    :cond_70
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " needs permission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " to read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 938
    .end local v2    # "key":Ljava/lang/String;
    :cond_a2
    :goto_a2
    add-int/lit8 v1, v1, 0x1

    goto :goto_56

    .line 947
    .end local v1    # "i":I
    :cond_a5
    return-void
.end method

.method private final checkWritePermission(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 911
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string v2, "LockSettingsWrite"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    return-void
.end method

.method private clearUserKeyProtection(I)V
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1598
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/locksettings/LockSettingsService;->addUserKeyAuth(I[B[B)V

    .line 1599
    return-void
.end method

.method private convertResponse(Landroid/service/gatekeeper/GateKeeperResponse;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 3
    .param p1, "gateKeeperResponse"    # Landroid/service/gatekeeper/GateKeeperResponse;

    .line 1483
    invoke-static {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->fromGateKeeperResponse(Landroid/service/gatekeeper/GateKeeperResponse;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0
.end method

.method private disableEscrowTokenOnNonManagedDevicesIfNeeded(I)V
    .registers 8
    .param p1, "userId"    # I

    .line 2821
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2824
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 2825
    const-string v2, "LockSettingsService"

    const-string v3, "Managed profile can have escrow token"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_8c

    .line 2858
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2826
    return-void

    .line 2828
    :cond_1b
    :try_start_1b
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v2}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    .line 2830
    .local v2, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 2831
    const-string v3, "LockSettingsService"

    const-string v4, "Corp-owned device can have escrow token"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catchall {:try_start_1b .. :try_end_2e} :catchall_8c

    .line 2858
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2832
    return-void

    .line 2835
    :cond_32
    :try_start_32
    invoke-virtual {v2, p1}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_43

    .line 2836
    const-string v3, "LockSettingsService"

    const-string v4, "User with profile owner can have escrow token"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catchall {:try_start_32 .. :try_end_3f} :catchall_8c

    .line 2858
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2837
    return-void

    .line 2842
    :cond_43
    :try_start_43
    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->isDeviceProvisioned()Z

    move-result v3

    if-nez v3, :cond_54

    .line 2843
    const-string v3, "LockSettingsService"

    const-string v4, "Postpone disabling escrow tokens until device is provisioned"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catchall {:try_start_43 .. :try_end_50} :catchall_8c

    .line 2858
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2844
    return-void

    .line 2848
    :cond_54
    :try_start_54
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.hardware.type.automotive"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3
    :try_end_60
    .catchall {:try_start_54 .. :try_end_60} :catchall_8c

    if-eqz v3, :cond_66

    .line 2858
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2849
    return-void

    .line 2853
    :cond_66
    :try_start_66
    const-string v3, "LockSettingsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Disabling escrow token on user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2854
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v3

    if-eqz v3, :cond_87

    .line 2855
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v3, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyEscrowData(I)V
    :try_end_87
    .catchall {:try_start_66 .. :try_end_87} :catchall_8c

    .line 2858
    .end local v2    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_87
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2859
    nop

    .line 2860
    return-void

    .line 2858
    :catchall_8c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private doVerifyCredential(Ljava/lang/String;IZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 24
    .param p1, "credential"    # Ljava/lang/String;
    .param p2, "credentialType"    # I
    .param p3, "hasChallenge"    # Z
    .param p4, "challenge"    # J
    .param p6, "userId"    # I
    .param p7, "progressCallback"    # Lcom/android/internal/widget/ICheckCredentialProgressCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v10, p0

    move/from16 v11, p2

    move/from16 v12, p6

    .line 1713
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b7

    .line 1716
    const/4 v0, 0x0

    const/16 v1, -0x270f

    if-ne v12, v1, :cond_29

    iget-object v2, v10, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "device_provisioned"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_29

    .line 1718
    const-string v0, "LockSettingsService"

    const-string v1, "FRP credential can only be verified prior to provisioning."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v0

    .line 1721
    :cond_29
    const/4 v2, 0x0

    .line 1722
    .local v2, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-direct/range {p0 .. p7}, Lcom/android/server/locksettings/LockSettingsService;->spBasedDoVerifyCredential(Ljava/lang/String;IZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v8

    .line 1725
    .end local v2    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .local v8, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    if-eqz v8, :cond_41

    .line 1726
    invoke-virtual {v8}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_3e

    .line 1727
    iget-object v0, v10, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    move-object/from16 v13, p1

    invoke-virtual {v0, v11, v13, v12}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->lockScreenSecretAvailable(ILjava/lang/String;I)V

    goto :goto_40

    .line 1730
    :cond_3e
    move-object/from16 v13, p1

    :goto_40
    return-object v8

    .line 1733
    :cond_41
    move-object/from16 v13, p1

    if-ne v12, v1, :cond_4f

    .line 1734
    const-string v0, "LockSettingsService"

    const-string v1, "Unexpected FRP credential type, should be SP based."

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v0

    .line 1738
    :cond_4f
    iget-object v1, v10, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v1, v12}, Lcom/android/server/locksettings/LockSettingsStorage;->readCredentialHash(I)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    move-result-object v14

    .line 1739
    .local v14, "storedHash":Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    iget v1, v14, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    if-eq v1, v11, :cond_7c

    .line 1740
    const-string v0, "LockSettingsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doVerifyCredential type mismatch with stored credential?? stored: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v14, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " passed in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1742
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v0

    .line 1745
    :cond_7c
    iget v1, v14, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_87

    iget-boolean v1, v14, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->isBaseZeroPattern:Z

    if-eqz v1, :cond_87

    move v0, v2

    nop

    :cond_87
    move v15, v0

    .line 1749
    .local v15, "shouldReEnrollBaseZero":Z
    if-eqz v15, :cond_90

    .line 1750
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->patternStringToBaseZero(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1752
    .local v0, "credentialToVerify":Ljava/lang/String;
    move-object v3, v0

    goto :goto_91

    .end local v0    # "credentialToVerify":Ljava/lang/String;
    :cond_90
    move-object v3, v13

    .line 1755
    .local v3, "credentialToVerify":Ljava/lang/String;
    :goto_91
    move-object v0, v10

    move v1, v12

    move-object v2, v14

    move/from16 v4, p3

    move-wide/from16 v5, p4

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/server/locksettings/LockSettingsService;->verifyCredential(ILcom/android/server/locksettings/LockSettingsStorage$CredentialHash;Ljava/lang/String;ZJLcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    .line 1758
    .end local v8    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .local v0, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v1

    if-nez v1, :cond_b6

    .line 1759
    iget-object v1, v10, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v1, v12}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->reportSuccessfulStrongAuthUnlock(I)V

    .line 1760
    if-eqz v15, :cond_b6

    .line 1761
    iget v6, v14, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    const/high16 v8, 0x10000

    move-object v4, v10

    move-object v5, v13

    move-object v7, v3

    move v9, v12

    invoke-direct/range {v4 .. v9}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialInternal(Ljava/lang/String;ILjava/lang/String;II)V

    .line 1766
    :cond_b6
    return-object v0

    .line 1714
    .end local v0    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .end local v3    # "credentialToVerify":Ljava/lang/String;
    .end local v14    # "storedHash":Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .end local v15    # "shouldReEnrollBaseZero":Z
    :cond_b7
    move-object/from16 v13, p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Credential can\'t be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enableSyntheticPasswordLocked()V
    .registers 5

    .line 2425
    const-string v0, "enable-sp"

    const-wide/16 v1, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 2426
    return-void
.end method

.method private enforceShell()V
    .registers 3

    .line 2084
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->isCallerShell()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2087
    return-void

    .line 2085
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller must be shell"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enrollCredential([BLjava/lang/String;Ljava/lang/String;I)[B
    .registers 11
    .param p1, "enrolledHandle"    # [B
    .param p2, "enrolledCredential"    # Ljava/lang/String;
    .param p3, "toEnroll"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1550
    invoke-direct {p0, p4}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 1551
    const/4 v0, 0x0

    if-nez p2, :cond_9

    .line 1552
    nop

    .line 1553
    move-object v1, v0

    goto :goto_d

    :cond_9
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 1554
    .local v1, "enrolledCredentialBytes":[B
    :goto_d
    if-nez p3, :cond_12

    .line 1555
    nop

    .line 1556
    move-object v2, v0

    goto :goto_16

    :cond_12
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 1557
    .local v2, "toEnrollBytes":[B
    :goto_16
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    invoke-interface {v3, p4, p1, v1, v2}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v3

    .line 1560
    .local v3, "response":Landroid/service/gatekeeper/GateKeeperResponse;
    if-nez v3, :cond_21

    .line 1561
    return-object v0

    .line 1564
    :cond_21
    invoke-virtual {v3}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v0

    .line 1565
    .local v0, "hash":[B
    if-eqz v0, :cond_2b

    .line 1566
    invoke-direct {p0, p3, p4}, Lcom/android/server/locksettings/LockSettingsService;->setKeystorePassword(Ljava/lang/String;I)V

    goto :goto_32

    .line 1569
    :cond_2b
    const-string v4, "LockSettingsService"

    const-string v5, "Throttled while enrolling a password"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    :goto_32
    return-object v0
.end method

.method private ensureProfileKeystoreUnlocked(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 551
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    .line 552
    .local v0, "ks":Landroid/security/KeyStore;
    invoke-virtual {v0, p1}, Landroid/security/KeyStore;->state(I)Landroid/security/KeyStore$State;

    move-result-object v1

    sget-object v2, Landroid/security/KeyStore$State;->LOCKED:Landroid/security/KeyStore$State;

    if-ne v1, v2, :cond_2c

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 553
    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/locksettings/LockSettingsService;->tiedManagedProfileReadyToUnlock(Landroid/content/pm/UserInfo;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 554
    const-string v1, "LockSettingsService"

    const-string v2, "Managed profile got unlocked, will unlock its keystore"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    const/4 v1, 0x1

    :try_start_20
    invoke-direct {p0, p1, v1}, Lcom/android/server/locksettings/LockSettingsService;->unlockChildProfile(IZ)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_23} :catch_24

    .line 562
    goto :goto_2c

    .line 560
    :catch_24
    move-exception v1

    .line 561
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "LockSettingsService"

    const-string v3, "Failed to unlock child profile"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2c
    :goto_2c
    return-void
.end method

.method private fixateNewestUserKeyAuth(I)V
    .registers 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1632
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v0

    .line 1633
    .local v0, "storageManager":Landroid/os/storage/IStorageManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1635
    .local v1, "callingId":J
    :try_start_a
    invoke-interface {v0, p1}, Landroid/os/storage/IStorageManager;->fixateNewestUserKeyAuth(I)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_12

    .line 1637
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1638
    nop

    .line 1639
    return-void

    .line 1637
    :catchall_12
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private getDecryptedPasswordsForAllTiedProfiles(I)Ljava/util/Map;
    .registers 12
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1268
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1269
    const/4 v0, 0x0

    return-object v0

    .line 1271
    :cond_e
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1272
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    .line 1273
    .local v1, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 1274
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1e
    if-ge v3, v2, :cond_64

    .line 1275
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 1278
    .local v4, "profile":Landroid/content/pm/UserInfo;
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-nez v5, :cond_33

    invoke-static {v4}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUser(Landroid/content/pm/UserInfo;)Z

    move-result v5

    if-nez v5, :cond_33

    .line 1280
    goto :goto_61

    .line 1282
    :cond_33
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    .line 1283
    .local v5, "managedUserId":I
    iget-object v6, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v5}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_3e

    .line 1284
    goto :goto_61

    .line 1287
    :cond_3e
    :try_start_3e
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v5}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_49
    .catch Ljava/security/KeyStoreException; {:try_start_3e .. :try_end_49} :catch_4a
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_3e .. :try_end_49} :catch_4a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3e .. :try_end_49} :catch_4a
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_3e .. :try_end_49} :catch_4a
    .catch Ljava/security/InvalidKeyException; {:try_start_3e .. :try_end_49} :catch_4a
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3e .. :try_end_49} :catch_4a
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_3e .. :try_end_49} :catch_4a
    .catch Ljavax/crypto/BadPaddingException; {:try_start_3e .. :try_end_49} :catch_4a
    .catch Ljava/security/cert/CertificateException; {:try_start_3e .. :try_end_49} :catch_4a
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_49} :catch_4a

    .line 1294
    goto :goto_61

    .line 1288
    :catch_4a
    move-exception v6

    .line 1292
    .local v6, "e":Ljava/lang/Exception;
    const-string v7, "LockSettingsService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getDecryptedPasswordsForAllTiedProfiles failed for user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1274
    .end local v4    # "profile":Landroid/content/pm/UserInfo;
    .end local v5    # "managedUserId":I
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_61
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 1296
    .end local v3    # "i":I
    :cond_64
    return-object v0
.end method

.method private getFrpStringUnchecked(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 1057
    const-string/jumbo v0, "lockscreen.password_type"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1058
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->readFrpPasswordQuality()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1060
    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method private getSyntheticPasswordHandleLocked(I)J
    .registers 5
    .param p1, "userId"    # I

    .line 2399
    const-string/jumbo v0, "sp-handle"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v0

    return-wide v0
.end method

.method private hideEncryptionNotification(Landroid/os/UserHandle;)V
    .registers 5
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 529
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 531
    return-void
.end method

.method private isCallerShell()Z
    .registers 3

    .line 2079
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2080
    .local v0, "callingUid":I
    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_d

    if-nez v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v1, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v1, 0x1

    :goto_e
    return v1
.end method

.method private isEscrowTokenActive(JI)Z
    .registers 6
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 2703
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 2704
    :try_start_3
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->existsHandle(JI)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 2705
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method private isManagedProfileWithSeparatedLock(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 1368
    invoke-static {p1}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1369
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    return v0

    .line 1372
    :cond_d
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1373
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 v0, 0x1

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    .line 1372
    :goto_24
    return v0
.end method

.method private isManagedProfileWithUnifiedLock(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 1358
    invoke-static {p1}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    .line 1359
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    .line 1362
    :cond_f
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1363
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-nez v0, :cond_24

    goto :goto_25

    :cond_24
    const/4 v1, 0x0

    .line 1362
    :goto_25
    return v1
.end method

.method private isSyntheticPasswordBasedCredentialLocked(I)Z
    .registers 11
    .param p1, "userId"    # I

    .line 2404
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, -0x270f

    if-ne p1, v2, :cond_17

    .line 2405
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v2}, Lcom/android/server/locksettings/LockSettingsStorage;->readPersistentDataBlock()Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    move-result-object v2

    iget v2, v2, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->type:I

    .line 2406
    .local v2, "type":I
    if-eq v2, v1, :cond_15

    const/4 v3, 0x2

    if-ne v2, v3, :cond_14

    goto :goto_15

    :cond_14
    goto :goto_16

    :cond_15
    :goto_15
    move v0, v1

    :goto_16
    return v0

    .line 2408
    .end local v2    # "type":I
    :cond_17
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v2

    .line 2410
    .local v2, "handle":J
    const-string v4, "enable-sp"

    const-wide/16 v5, 0x1

    invoke-virtual {p0, v4, v5, v6, v0}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v4

    .line 2412
    .local v4, "enabled":J
    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_2f

    cmp-long v6, v2, v6

    if-eqz v6, :cond_2f

    move v0, v1

    nop

    :cond_2f
    return v0
.end method

.method private isUserSecure(I)Z
    .registers 7
    .param p1, "userId"    # I

    .line 1096
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 1097
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1098
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v1

    .line 1099
    .local v1, "handle":J
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v3, v1, v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getCredentialType(JI)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_18

    const/4 v3, 0x1

    goto :goto_19

    :cond_18
    const/4 v3, 0x0

    :goto_19
    monitor-exit v0

    return v3

    .line 1102
    .end local v1    # "handle":J
    :cond_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_23

    .line 1103
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasCredential(I)Z

    move-result v0

    return v0

    .line 1102
    :catchall_23
    move-exception v1

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public static synthetic lambda$notifyActivePasswordMetricsAvailable$0(Lcom/android/server/locksettings/LockSettingsService;Landroid/app/admin/PasswordMetrics;I)V
    .registers 5
    .param p1, "metrics"    # Landroid/app/admin/PasswordMetrics;
    .param p2, "userId"    # I

    .line 1938
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    .line 1939
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 1940
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(Landroid/app/admin/PasswordMetrics;I)V

    .line 1941
    return-void
.end method

.method public static synthetic lambda$notifyPasswordChanged$1(Lcom/android/server/locksettings/LockSettingsService;I)V
    .registers 4
    .param p1, "userId"    # I

    .line 1951
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    .line 1952
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 1953
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->reportPasswordChanged(I)V

    .line 1954
    return-void
.end method

.method public static synthetic lambda$tryRemoveUserFromSpCacheLater$2(Lcom/android/server/locksettings/LockSettingsService;I)V
    .registers 5
    .param p1, "userId"    # I

    .line 2294
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->shouldCacheSpForUser(I)Z

    move-result v0

    if-nez v0, :cond_29

    .line 2300
    const-string v0, "LockSettingsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing SP from cache for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2301
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 2302
    :try_start_1f
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 2303
    monitor-exit v0

    goto :goto_29

    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_1f .. :try_end_28} :catchall_26

    throw v1

    .line 2305
    :cond_29
    :goto_29
    return-void
.end method

.method private maybeShowEncryptionNotificationForUser(I)V
    .registers 8
    .param p1, "userId"    # I

    .line 457
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 458
    .local v0, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-nez v1, :cond_d

    .line 462
    return-void

    .line 465
    :cond_d
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    .line 466
    .local v1, "userHandle":Landroid/os/UserHandle;
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v2

    .line 467
    .local v2, "isSecure":Z
    if-eqz v2, :cond_3e

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, v1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(Landroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_3e

    .line 468
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 469
    .local v3, "parent":Landroid/content/pm/UserInfo;
    if-eqz v3, :cond_3e

    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 470
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(Landroid/os/UserHandle;)Z

    move-result v4

    if-eqz v4, :cond_3e

    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 471
    invoke-virtual {v4, v1}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v4

    if-nez v4, :cond_3e

    .line 474
    invoke-direct {p0, v1}, Lcom/android/server/locksettings/LockSettingsService;->showEncryptionNotificationForProfile(Landroid/os/UserHandle;)V

    .line 477
    .end local v3    # "parent":Landroid/content/pm/UserInfo;
    :cond_3e
    return-void
.end method

.method private migrateFrpCredential()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 863
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->readPersistentDataBlock()Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    move-result-object v0

    sget-object v1, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->NONE:Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    if-eq v0, v1, :cond_b

    .line 864
    return-void

    .line 866
    :cond_b
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 867
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->userOwnsFrpCredential(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z

    move-result v2

    if-eqz v2, :cond_5c

    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v2}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 868
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v2

    .line 869
    :try_start_34
    iget v0, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 870
    const-string/jumbo v0, "lockscreen.password_type"

    const-wide/16 v3, 0x0

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0, v3, v4, v5}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v3

    long-to-int v0, v3

    .line 873
    .local v0, "actualQuality":I
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    .line 874
    invoke-direct {p0, v4}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v4

    .line 876
    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->redactActualQualityToMostLenientEquivalentQuality(I)I

    move-result v6

    .line 873
    invoke-virtual {v3, v4, v5, v1, v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->migrateFrpPasswordLocked(JLandroid/content/pm/UserInfo;I)V

    .line 878
    .end local v0    # "actualQuality":I
    :cond_57
    monitor-exit v2

    .line 879
    return-void

    .line 878
    :catchall_59
    move-exception v0

    monitor-exit v2
    :try_end_5b
    .catchall {:try_start_34 .. :try_end_5b} :catchall_59

    throw v0

    .line 881
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_5c
    goto :goto_15

    .line 882
    :cond_5d
    return-void
.end method

.method private migrateOldData()V
    .registers 19

    .line 691
    move-object/from16 v1, p0

    const-string/jumbo v0, "migrated"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_37

    .line 692
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 693
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v4, Lcom/android/server/locksettings/LockSettingsService;->VALID_SETTINGS:[Ljava/lang/String;

    array-length v5, v4

    move v6, v3

    :goto_17
    if-ge v6, v5, :cond_27

    aget-object v7, v4, v6

    .line 694
    .local v7, "validSetting":Ljava/lang/String;
    invoke-static {v0, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 695
    .local v8, "value":Ljava/lang/String;
    if-eqz v8, :cond_24

    .line 696
    invoke-virtual {v1, v7, v8, v3}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 693
    .end local v7    # "validSetting":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    :cond_24
    add-int/lit8 v6, v6, 0x1

    goto :goto_17

    .line 700
    :cond_27
    const-string/jumbo v4, "migrated"

    const-string/jumbo v5, "true"

    invoke-virtual {v1, v4, v5, v3}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 701
    const-string v4, "LockSettingsService"

    const-string v5, "Migrated lock settings to new location"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_37
    const-string/jumbo v0, "migrated_user_specific"

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c1

    .line 706
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 707
    .local v7, "cr":Landroid/content/ContentResolver;
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v8

    .line 708
    .local v8, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    move v0, v3

    .line 708
    .local v0, "user":I
    :goto_4d
    move v9, v0

    .line 708
    .end local v0    # "user":I
    .local v9, "user":I
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_b1

    .line 710
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    iget v10, v0, Landroid/content/pm/UserInfo;->id:I

    .line 711
    .local v10, "userId":I
    const-string/jumbo v11, "lock_screen_owner_info"

    .line 712
    .local v11, "OWNER_INFO":Ljava/lang/String;
    const-string/jumbo v0, "lock_screen_owner_info"

    invoke-static {v7, v0, v10}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    .line 713
    .local v12, "ownerInfo":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7a

    .line 714
    const-string/jumbo v0, "lock_screen_owner_info"

    invoke-virtual {v1, v0, v12, v10}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 715
    const-string/jumbo v0, "lock_screen_owner_info"

    const-string v13, ""

    invoke-static {v7, v0, v13, v10}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 721
    :cond_7a
    const-string/jumbo v0, "lock_screen_owner_info_enabled"

    move-object v13, v0

    .line 724
    .local v13, "OWNER_INFO_ENABLED":Ljava/lang/String;
    const-wide/16 v14, 0x1

    :try_start_80
    const-string/jumbo v0, "lock_screen_owner_info_enabled"

    invoke-static {v7, v0, v10}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 725
    .local v0, "ivalue":I
    if-eqz v0, :cond_8c

    const/16 v16, 0x1

    goto :goto_8e

    :cond_8c
    move/from16 v16, v3

    .line 726
    .local v16, "enabled":Z
    :goto_8e
    const-string/jumbo v6, "lock_screen_owner_info_enabled"

    if-eqz v16, :cond_95

    move-wide v4, v14

    goto :goto_97

    :cond_95
    const-wide/16 v4, 0x0

    :goto_97
    invoke-virtual {v1, v6, v4, v5, v10}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V
    :try_end_9a
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_80 .. :try_end_9a} :catch_9b

    .line 732
    .end local v0    # "ivalue":I
    goto :goto_a8

    .line 727
    .end local v16    # "enabled":Z
    :catch_9b
    move-exception v0

    .line 729
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a8

    .line 730
    const-string/jumbo v4, "lock_screen_owner_info_enabled"

    invoke-virtual {v1, v4, v14, v15, v10}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 733
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_a8
    :goto_a8
    const-string/jumbo v0, "lock_screen_owner_info_enabled"

    invoke-static {v7, v0, v3, v10}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 708
    .end local v10    # "userId":I
    .end local v11    # "OWNER_INFO":Ljava/lang/String;
    .end local v12    # "ownerInfo":Ljava/lang/String;
    .end local v13    # "OWNER_INFO_ENABLED":Ljava/lang/String;
    add-int/lit8 v0, v9, 0x1

    .line 708
    .end local v9    # "user":I
    .local v0, "user":I
    goto :goto_4d

    .line 736
    .end local v0    # "user":I
    :cond_b1
    const-string/jumbo v0, "migrated_user_specific"

    const-string/jumbo v4, "true"

    invoke-virtual {v1, v0, v4, v3}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 737
    const-string v0, "LockSettingsService"

    const-string v4, "Migrated per-user lock settings to new location"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    .end local v7    # "cr":Landroid/content/ContentResolver;
    .end local v8    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_c1
    const-string/jumbo v0, "migrated_biometric_weak"

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_117

    .line 742
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 743
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    move v4, v3

    .line 743
    .local v4, "i":I
    :goto_d1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_107

    .line 744
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    .line 745
    .local v5, "userId":I
    const-string/jumbo v6, "lockscreen.password_type"

    const-wide/16 v7, 0x0

    invoke-virtual {v1, v6, v7, v8, v5}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v9

    .line 748
    .local v9, "type":J
    const-string/jumbo v6, "lockscreen.password_type_alternate"

    invoke-virtual {v1, v6, v7, v8, v5}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v11

    .line 751
    .local v11, "alternateType":J
    const-wide/32 v6, 0x8000

    cmp-long v6, v9, v6

    if-nez v6, :cond_fc

    .line 752
    const-string/jumbo v6, "lockscreen.password_type"

    invoke-virtual {v1, v6, v11, v12, v5}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 756
    :cond_fc
    const-string/jumbo v6, "lockscreen.password_type_alternate"

    const-wide/16 v7, 0x0

    invoke-virtual {v1, v6, v7, v8, v5}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 743
    .end local v5    # "userId":I
    .end local v9    # "type":J
    .end local v11    # "alternateType":J
    add-int/lit8 v4, v4, 0x1

    goto :goto_d1

    .line 760
    .end local v4    # "i":I
    :cond_107
    const-string/jumbo v4, "migrated_biometric_weak"

    const-string/jumbo v5, "true"

    invoke-virtual {v1, v4, v5, v3}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 761
    const-string v4, "LockSettingsService"

    const-string v5, "Migrated biometric weak to use the fallback instead"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    .end local v0    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_117
    const-string/jumbo v0, "migrated_lockscreen_disabled"

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_170

    .line 768
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 769
    .restart local v0    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 770
    .local v4, "userCount":I
    const/4 v5, 0x0

    .line 771
    .local v5, "switchableUsers":I
    move v6, v5

    move v5, v3

    .line 771
    .local v5, "i":I
    .local v6, "switchableUsers":I
    :goto_12d
    if-ge v5, v4, :cond_140

    .line 772
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    move-result v7

    if-eqz v7, :cond_13d

    .line 773
    add-int/lit8 v6, v6, 0x1

    .line 771
    :cond_13d
    add-int/lit8 v5, v5, 0x1

    goto :goto_12d

    .line 777
    .end local v5    # "i":I
    :cond_140
    const/4 v5, 0x1

    if-le v6, v5, :cond_160

    .line 778
    move v5, v3

    .line 778
    .restart local v5    # "i":I
    :goto_144
    if-ge v5, v4, :cond_160

    .line 779
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    .line 781
    .local v7, "id":I
    const-string/jumbo v8, "lockscreen.disabled"

    invoke-virtual {v1, v8, v3, v7}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v8

    if-eqz v8, :cond_15d

    .line 782
    const-string/jumbo v8, "lockscreen.disabled"

    invoke-virtual {v1, v8, v3, v7}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    .line 778
    .end local v7    # "id":I
    :cond_15d
    add-int/lit8 v5, v5, 0x1

    goto :goto_144

    .line 787
    .end local v5    # "i":I
    :cond_160
    const-string/jumbo v5, "migrated_lockscreen_disabled"

    const-string/jumbo v7, "true"

    invoke-virtual {v1, v5, v7, v3}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 788
    const-string v5, "LockSettingsService"

    const-string v7, "Migrated lockscreen disabled flag"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    .end local v0    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v4    # "userCount":I
    .end local v6    # "switchableUsers":I
    :cond_170
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v4

    .line 792
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    move v0, v3

    .line 792
    .local v0, "i":I
    :goto_177
    move v5, v0

    .line 792
    .end local v0    # "i":I
    .restart local v5    # "i":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_207

    .line 793
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 794
    .local v6, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_1d2

    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    iget v7, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v7}, Lcom/android/server/locksettings/LockSettingsStorage;->hasChildProfileLock(I)Z

    move-result v0

    if-eqz v0, :cond_1d2

    .line 801
    const-string/jumbo v0, "lockscreen.password_type"

    iget v7, v6, Landroid/content/pm/UserInfo;->id:I

    const-wide/16 v8, 0x0

    invoke-virtual {v1, v0, v8, v9, v7}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v10

    .line 803
    .local v10, "quality":J
    cmp-long v0, v10, v8

    const-wide/32 v12, 0x50000

    if-nez v0, :cond_1b7

    .line 805
    const-string v0, "LockSettingsService"

    const-string v7, "Migrated tied profile lock type"

    invoke-static {v0, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    const-string/jumbo v0, "lockscreen.password_type"

    iget v7, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v0, v12, v13, v7}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    goto :goto_1d4

    .line 808
    :cond_1b7
    cmp-long v0, v10, v12

    if-eqz v0, :cond_1d4

    .line 810
    const-string v0, "LockSettingsService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid tied profile lock type: "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v10    # "quality":J
    goto :goto_1d4

    .line 814
    :cond_1d2
    const-wide/16 v8, 0x0

    :cond_1d4
    :goto_1d4
    :try_start_1d4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "profile_key_name_encrypt_"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 815
    .local v0, "alias":Ljava/lang/String;
    const-string v7, "AndroidKeyStore"

    .line 816
    invoke-static {v7}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v7

    .line 817
    .local v7, "keyStore":Ljava/security/KeyStore;
    invoke-virtual {v7, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 818
    invoke-virtual {v7, v0}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1fa

    .line 819
    invoke-virtual {v7, v0}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_1fa
    .catch Ljava/security/KeyStoreException; {:try_start_1d4 .. :try_end_1fa} :catch_1fb
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1d4 .. :try_end_1fa} :catch_1fb
    .catch Ljava/security/cert/CertificateException; {:try_start_1d4 .. :try_end_1fa} :catch_1fb
    .catch Ljava/io/IOException; {:try_start_1d4 .. :try_end_1fa} :catch_1fb

    .line 824
    .end local v0    # "alias":Ljava/lang/String;
    .end local v7    # "keyStore":Ljava/security/KeyStore;
    :cond_1fa
    goto :goto_203

    .line 821
    :catch_1fb
    move-exception v0

    .line 823
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "LockSettingsService"

    const-string v10, "Unable to remove tied profile key"

    invoke-static {v7, v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 792
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v6    # "userInfo":Landroid/content/pm/UserInfo;
    :goto_203
    add-int/lit8 v0, v5, 0x1

    .line 792
    .end local v5    # "i":I
    .local v0, "i":I
    goto/16 :goto_177

    .line 827
    .end local v0    # "i":I
    :cond_207
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v5, "android.hardware.type.watch"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 831
    .local v0, "isWatch":Z
    if-eqz v0, :cond_246

    const-string/jumbo v5, "migrated_wear_lockscreen_disabled"

    invoke-virtual {v1, v5, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_246

    .line 832
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 833
    .local v2, "userCount":I
    move v5, v3

    .line 833
    .restart local v5    # "i":I
    :goto_223
    if-ge v5, v2, :cond_236

    .line 834
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    .line 835
    .local v6, "id":I
    const-string/jumbo v7, "lockscreen.disabled"

    invoke-virtual {v1, v7, v3, v6}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    .line 833
    .end local v6    # "id":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_223

    .line 837
    .end local v5    # "i":I
    :cond_236
    const-string/jumbo v5, "migrated_wear_lockscreen_disabled"

    const-string/jumbo v6, "true"

    invoke-virtual {v1, v5, v6, v3}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 838
    const-string v3, "LockSettingsService"

    const-string v5, "Migrated lockscreen_disabled for Wear devices"

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    .end local v2    # "userCount":I
    :cond_246
    return-void
.end method

.method private migrateOldDataAfterSystemReady()V
    .registers 4

    .line 845
    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->frpCredentialEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_23

    const-string/jumbo v0, "migrated_frp"

    .line 846
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    if-nez v0, :cond_23

    .line 847
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->migrateFrpCredential()V

    .line 848
    const-string/jumbo v0, "migrated_frp"

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    .line 849
    const-string v0, "LockSettingsService"

    const-string v1, "Migrated migrated_frp."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_23} :catch_24

    .line 853
    :cond_23
    goto :goto_2c

    .line 851
    :catch_24
    move-exception v0

    .line 852
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LockSettingsService"

    const-string v2, "Unable to migrateOldDataAfterSystemReady"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 854
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2c
    return-void
.end method

.method private notifyActivePasswordMetricsAvailable(Ljava/lang/String;I)V
    .registers 6
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1929
    if-nez p1, :cond_8

    .line 1930
    new-instance v0, Landroid/app/admin/PasswordMetrics;

    invoke-direct {v0}, Landroid/app/admin/PasswordMetrics;-><init>()V

    .local v0, "metrics":Landroid/app/admin/PasswordMetrics;
    goto :goto_14

    .line 1932
    .end local v0    # "metrics":Landroid/app/admin/PasswordMetrics;
    :cond_8
    invoke-static {p1}, Landroid/app/admin/PasswordMetrics;->computeForPassword(Ljava/lang/String;)Landroid/app/admin/PasswordMetrics;

    move-result-object v0

    .line 1933
    .restart local v0    # "metrics":Landroid/app/admin/PasswordMetrics;
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    iput v1, v0, Landroid/app/admin/PasswordMetrics;->quality:I

    .line 1937
    :goto_14
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$Hh44Kcp05cKI6Hc6dJfQupn4QY8;

    invoke-direct {v2, p0, v0, p2}, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$Hh44Kcp05cKI6Hc6dJfQupn4QY8;-><init>(Lcom/android/server/locksettings/LockSettingsService;Landroid/app/admin/PasswordMetrics;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1942
    return-void
.end method

.method private notifyPasswordChanged(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 1950
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$cIsW_BZK9p1jhG1yw78i-3W9E4Y;

    invoke-direct {v1, p0, p1}, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$cIsW_BZK9p1jhG1yw78i-3W9E4Y;-><init>(Lcom/android/server/locksettings/LockSettingsService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1955
    return-void
.end method

.method private notifySeparateProfileChallengeChanged(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 980
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 982
    .local v0, "dpmi":Landroid/app/admin/DevicePolicyManagerInternal;
    if-eqz v0, :cond_d

    .line 983
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManagerInternal;->reportSeparateProfileChallengeChanged(I)V

    .line 985
    :cond_d
    return-void
.end method

.method private onAuthTokenKnownForUser(ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "auth"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    .line 2271
    const-string v0, "LockSettingsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caching SP for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2272
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 2273
    :try_start_19
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2274
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_5b

    .line 2275
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->tryRemoveUserFromSpCacheLater(I)V

    .line 2278
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mAuthSecretService:Landroid/hardware/authsecret/V1_0/IAuthSecret;

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 2280
    :try_start_32
    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveVendorAuthSecret()[B

    move-result-object v0

    .line 2281
    .local v0, "rawSecret":[B
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 2282
    .local v1, "secret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3d
    array-length v3, v0

    if-ge v2, v3, :cond_4c

    .line 2283
    aget-byte v3, v0, v2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2282
    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    .line 2285
    .end local v2    # "i":I
    :cond_4c
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mAuthSecretService:Landroid/hardware/authsecret/V1_0/IAuthSecret;

    invoke-interface {v2, v1}, Landroid/hardware/authsecret/V1_0/IAuthSecret;->primaryUserCredential(Ljava/util/ArrayList;)V
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_51} :catch_52

    .line 2288
    .end local v0    # "rawSecret":[B
    .end local v1    # "secret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    goto :goto_5a

    .line 2286
    :catch_52
    move-exception v0

    .line 2287
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LockSettingsService"

    const-string v2, "Failed to pass primary user secret to AuthSecret HAL"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2290
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_5a
    :goto_5a
    return-void

    .line 2274
    :catchall_5b
    move-exception v1

    :try_start_5c
    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw v1
.end method

.method private readFrpPasswordQuality()I
    .registers 2

    .line 1064
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->readPersistentDataBlock()Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    move-result-object v0

    iget v0, v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->qualityForUi:I

    return v0
.end method

.method private redactActualQualityToMostLenientEquivalentQuality(I)I
    .registers 4
    .param p1, "quality"    # I

    .line 893
    const/high16 v0, 0x20000

    if-eq p1, v0, :cond_16

    const/high16 v1, 0x30000

    if-eq p1, v1, :cond_16

    const/high16 v0, 0x40000

    if-eq p1, v0, :cond_15

    const/high16 v1, 0x50000

    if-eq p1, v1, :cond_15

    const/high16 v1, 0x60000

    if-eq p1, v1, :cond_15

    .line 906
    return p1

    .line 897
    :cond_15
    return v0

    .line 900
    :cond_16
    return v0
.end method

.method private removeEscrowToken(JI)Z
    .registers 8
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 2709
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 2710
    :try_start_3
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v1

    cmp-long v1, p1, v1

    const/4 v2, 0x0

    if-nez v1, :cond_15

    .line 2711
    const-string v1, "LockSettingsService"

    const-string v3, "Cannot remove password handle"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2712
    monitor-exit v0

    return v2

    .line 2714
    :cond_15
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->removePendingToken(JI)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_20

    .line 2715
    monitor-exit v0

    return v3

    .line 2717
    :cond_20
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->existsHandle(JI)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 2718
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyTokenBasedSyntheticPassword(JI)V

    .line 2719
    monitor-exit v0

    return v3

    .line 2721
    :cond_2f
    monitor-exit v0

    return v2

    .line 2723
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw v1
.end method

.method private removeKeystoreProfileKey(I)V
    .registers 6
    .param p1, "targetUserId"    # I

    .line 2037
    :try_start_0
    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 2038
    .local v0, "keyStore":Ljava/security/KeyStore;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 2039
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "profile_key_name_encrypt_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 2040
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "profile_key_name_decrypt_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_34
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_34} :catch_35
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_34} :catch_35
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_34} :catch_35
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_34} :catch_35

    .line 2045
    .end local v0    # "keyStore":Ljava/security/KeyStore;
    goto :goto_4c

    .line 2041
    :catch_35
    move-exception v0

    .line 2044
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "LockSettingsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to remove keystore profile key for user:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2046
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4c
    return-void
.end method

.method private removeUser(IZ)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "unknownUser"    # Z

    .line 2013
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->removeUser(I)V

    .line 2014
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->removeUser(I)V

    .line 2015
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->removeUser(I)V

    .line 2016
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->tryRemoveUserFromSpCacheLater(I)V

    .line 2018
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    .line 2019
    .local v0, "ks":Landroid/security/KeyStore;
    invoke-virtual {v0, p1}, Landroid/security/KeyStore;->onUserRemoved(I)V

    .line 2022
    :try_start_19
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    .line 2023
    .local v1, "gk":Landroid/service/gatekeeper/IGateKeeperService;
    if-eqz v1, :cond_22

    .line 2024
    invoke-interface {v1, p1}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_22} :catch_23

    .line 2028
    .end local v1    # "gk":Landroid/service/gatekeeper/IGateKeeperService;
    :cond_22
    goto :goto_2c

    .line 2026
    :catch_23
    move-exception v1

    .line 2027
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "LockSettingsService"

    const-string/jumbo v3, "unable to clear GK secure user id"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2029
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_2c
    if-nez p2, :cond_3a

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 2030
    :cond_3a
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->removeKeystoreProfileKey(I)V

    .line 2032
    :cond_3d
    return-void
.end method

.method private static secretFromCredential(Ljava/lang/String;)[B
    .registers 4
    .param p0, "credential"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1603
    :try_start_0
    const-string v0, "SHA-512"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 1605
    .local v0, "digest":Ljava/security/MessageDigest;
    const-string v1, "Android FBE credential hash"

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 1606
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 1608
    .local v1, "personalization":[B
    const/16 v2, 0x80

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    move-object v1, v2

    .line 1609
    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 1610
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 1611
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2
    :try_end_25
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_25} :catch_26

    return-object v2

    .line 1612
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v1    # "personalization":[B
    :catch_26
    move-exception v0

    .line 1613
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "NoSuchAlgorithmException for SHA-512"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private setAuthlessUserKeyProtection(I[B)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1576
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/locksettings/LockSettingsService;->addUserKeyAuth(I[B[B)V

    .line 1577
    return-void
.end method

.method private setKeystorePassword(Ljava/lang/String;I)V
    .registers 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .line 1146
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    .line 1147
    .local v0, "ks":Landroid/security/KeyStore;
    invoke-virtual {v0, p2, p1}, Landroid/security/KeyStore;->onUserPasswordChanged(ILjava/lang/String;)Z

    .line 1148
    return-void
.end method

.method private setLockCredentialInternal(Ljava/lang/String;ILjava/lang/String;II)V
    .registers 25
    .param p1, "credential"    # Ljava/lang/String;
    .param p2, "credentialType"    # I
    .param p3, "savedCredential"    # Ljava/lang/String;
    .param p4, "requestedQuality"    # I
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v9, p0

    move/from16 v10, p2

    .line 1395
    move/from16 v11, p5

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1396
    const/4 v0, 0x0

    .line 1398
    .end local p3    # "savedCredential":Ljava/lang/String;
    .local v0, "savedCredential":Ljava/lang/String;
    move-object v7, v0

    goto :goto_11

    .line 1398
    .end local v0    # "savedCredential":Ljava/lang/String;
    .restart local p3    # "savedCredential":Ljava/lang/String;
    :cond_f
    move-object/from16 v7, p3

    .line 1398
    .end local p3    # "savedCredential":Ljava/lang/String;
    .local v7, "savedCredential":Ljava/lang/String;
    :goto_11
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1399
    const/4 v0, 0x0

    .line 1401
    .end local p1    # "credential":Ljava/lang/String;
    .local v0, "credential":Ljava/lang/String;
    move-object v12, v0

    goto :goto_1c

    .line 1401
    .end local v0    # "credential":Ljava/lang/String;
    .restart local p1    # "credential":Ljava/lang/String;
    :cond_1a
    move-object/from16 v12, p1

    .line 1401
    .end local p1    # "credential":Ljava/lang/String;
    .local v12, "credential":Ljava/lang/String;
    :goto_1c
    iget-object v8, v9, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v8

    .line 1402
    :try_start_1f
    invoke-direct {v9, v11}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1403
    move-object v1, v9

    move-object v2, v12

    move v3, v10

    move-object v4, v7

    move/from16 v5, p4

    move v6, v11

    invoke-direct/range {v1 .. v6}, Lcom/android/server/locksettings/LockSettingsService;->spBasedSetLockCredentialInternalLocked(Ljava/lang/String;ILjava/lang/String;II)V

    .line 1405
    monitor-exit v8

    return-void

    .line 1407
    :cond_31
    monitor-exit v8
    :try_end_32
    .catchall {:try_start_1f .. :try_end_32} :catchall_135

    .line 1409
    const/4 v0, -0x1

    const/4 v13, 0x0

    if-ne v10, v0, :cond_64

    .line 1410
    if-eqz v12, :cond_3f

    .line 1411
    const-string v0, "LockSettingsService"

    const-string v1, "CredentialType is none, but credential is non-null."

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    :cond_3f
    invoke-direct {v9, v11}, Lcom/android/server/locksettings/LockSettingsService;->clearUserKeyProtection(I)V

    .line 1414
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v0

    invoke-interface {v0, v11}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V

    .line 1415
    iget-object v0, v9, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-static {}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->createEmptyHash()Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    move-result-object v1

    invoke-virtual {v0, v1, v11}, Lcom/android/server/locksettings/LockSettingsStorage;->writeCredentialHash(Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;I)V

    .line 1416
    invoke-direct {v9, v13, v11}, Lcom/android/server/locksettings/LockSettingsService;->setKeystorePassword(Ljava/lang/String;I)V

    .line 1417
    invoke-direct {v9, v11}, Lcom/android/server/locksettings/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    .line 1418
    invoke-direct {v9, v11, v13}, Lcom/android/server/locksettings/LockSettingsService;->synchronizeUnifiedWorkChallengeForProfiles(ILjava/util/Map;)V

    .line 1419
    invoke-direct {v9, v13, v11}, Lcom/android/server/locksettings/LockSettingsService;->notifyActivePasswordMetricsAvailable(Ljava/lang/String;I)V

    .line 1420
    iget-object v0, v9, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, v10, v12, v11}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->lockScreenSecretChanged(ILjava/lang/String;I)V

    .line 1421
    return-void

    .line 1423
    :cond_64
    if-eqz v12, :cond_12d

    .line 1427
    iget-object v0, v9, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, v11}, Lcom/android/server/locksettings/LockSettingsStorage;->readCredentialHash(I)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    move-result-object v14

    .line 1428
    .local v14, "currentHandle":Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    invoke-direct {v9, v11}, Lcom/android/server/locksettings/LockSettingsService;->isManagedProfileWithUnifiedLock(I)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 1430
    if-nez v7, :cond_9e

    .line 1432
    :try_start_74
    invoke-virtual {v9, v11}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Ljava/lang/String;

    move-result-object v0
    :try_end_78
    .catch Ljava/io/FileNotFoundException; {:try_start_74 .. :try_end_78} :catch_85
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_74 .. :try_end_78} :catch_7b
    .catch Ljava/security/InvalidKeyException; {:try_start_74 .. :try_end_78} :catch_7b
    .catch Ljava/security/KeyStoreException; {:try_start_74 .. :try_end_78} :catch_7b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_74 .. :try_end_78} :catch_7b
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_74 .. :try_end_78} :catch_7b
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_74 .. :try_end_78} :catch_7b
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_74 .. :try_end_78} :catch_7b
    .catch Ljavax/crypto/BadPaddingException; {:try_start_74 .. :try_end_78} :catch_7b
    .catch Ljava/security/cert/CertificateException; {:try_start_74 .. :try_end_78} :catch_7b
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_78} :catch_7b

    .line 1440
    .end local v7    # "savedCredential":Ljava/lang/String;
    .local v0, "savedCredential":Ljava/lang/String;
    nop

    .line 1450
    .end local v0    # "savedCredential":Ljava/lang/String;
    .local v15, "savedCredential":Ljava/lang/String;
    :goto_79
    move-object v15, v0

    goto :goto_9f

    .line 1435
    .end local v15    # "savedCredential":Ljava/lang/String;
    .restart local v7    # "savedCredential":Ljava/lang/String;
    :catch_7b
    move-exception v0

    move-object v1, v0

    .line 1439
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "LockSettingsService"

    const-string v2, "Failed to decrypt child profile key"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1439
    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_8e

    .line 1433
    :catch_85
    move-exception v0

    move-object v1, v0

    .line 1434
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v1, "LockSettingsService"

    const-string v2, "Child profile key not found"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_8e
    goto :goto_9e

    .line 1443
    :cond_8f
    iget-object v0, v14, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    if-nez v0, :cond_9e

    .line 1444
    if-eqz v7, :cond_9c

    .line 1445
    const-string v0, "LockSettingsService"

    const-string v1, "Saved credential provided, but none stored"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    :cond_9c
    const/4 v0, 0x0

    .line 1447
    .end local v7    # "savedCredential":Ljava/lang/String;
    .local v0, "savedCredential":Ljava/lang/String;
    goto :goto_79

    .line 1450
    .end local v0    # "savedCredential":Ljava/lang/String;
    .restart local v7    # "savedCredential":Ljava/lang/String;
    :cond_9e
    :goto_9e
    move-object v15, v7

    .line 1450
    .end local v7    # "savedCredential":Ljava/lang/String;
    .restart local v15    # "savedCredential":Ljava/lang/String;
    :goto_9f
    iget-object v8, v9, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v8

    .line 1451
    :try_start_a2
    invoke-virtual {v9, v11}, Lcom/android/server/locksettings/LockSettingsService;->shouldMigrateToSyntheticPasswordLocked(I)Z

    move-result v0

    if-eqz v0, :cond_c0

    .line 1452
    iget-object v2, v14, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    iget v4, v14, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    move-object v1, v9

    move-object v3, v15

    move/from16 v5, p4

    move v6, v11

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/locksettings/LockSettingsService;->initializeSyntheticPasswordLocked([BLjava/lang/String;III)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    .line 1454
    move-object v1, v9

    move-object v2, v12

    move v3, v10

    move-object v4, v15

    move/from16 v5, p4

    move v6, v11

    invoke-direct/range {v1 .. v6}, Lcom/android/server/locksettings/LockSettingsService;->spBasedSetLockCredentialInternalLocked(Ljava/lang/String;ILjava/lang/String;II)V

    .line 1456
    monitor-exit v8

    return-void

    .line 1458
    :cond_c0
    monitor-exit v8
    :try_end_c1
    .catchall {:try_start_a2 .. :try_end_c1} :catchall_12a

    .line 1460
    iget-object v0, v14, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    invoke-direct {v9, v0, v15, v12, v11}, Lcom/android/server/locksettings/LockSettingsService;->enrollCredential([BLjava/lang/String;Ljava/lang/String;I)[B

    move-result-object v0

    .line 1462
    .local v0, "enrolledHandle":[B
    if-eqz v0, :cond_109

    .line 1463
    invoke-static {v0, v10}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->create([BI)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    move-result-object v8

    .line 1464
    .local v8, "willStore":Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    iget-object v1, v9, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v1, v8, v11}, Lcom/android/server/locksettings/LockSettingsStorage;->writeCredentialHash(Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;I)V

    .line 1466
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    const-wide/16 v3, 0x0

    iget-object v5, v8, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    .line 1467
    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    move v2, v11

    invoke-interface/range {v1 .. v6}, Landroid/service/gatekeeper/IGateKeeperService;->verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v7

    .line 1468
    .local v7, "gkResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    invoke-direct {v9, v7}, Lcom/android/server/locksettings/LockSettingsService;->convertResponse(Landroid/service/gatekeeper/GateKeeperResponse;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    invoke-direct {v9, v11, v12, v1}, Lcom/android/server/locksettings/LockSettingsService;->setUserKeyProtection(ILjava/lang/String;Lcom/android/internal/widget/VerifyCredentialResponse;)V

    .line 1469
    invoke-direct {v9, v11}, Lcom/android/server/locksettings/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    .line 1471
    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    const/16 v16, 0x0

    move-object v1, v9

    move-object v2, v12

    move v3, v10

    move-object/from16 v17, v7

    move v7, v11

    .line 1471
    .end local v7    # "gkResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    .local v17, "gkResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    move-object/from16 v18, v8

    move-object/from16 v8, v16

    .line 1471
    .end local v8    # "willStore":Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .local v18, "willStore":Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    invoke-direct/range {v1 .. v8}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Ljava/lang/String;IZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 1472
    invoke-direct {v9, v11, v13}, Lcom/android/server/locksettings/LockSettingsService;->synchronizeUnifiedWorkChallengeForProfiles(ILjava/util/Map;)V

    .line 1473
    iget-object v1, v9, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v1, v10, v12, v11}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->lockScreenSecretChanged(ILjava/lang/String;I)V

    .line 1475
    .end local v17    # "gkResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    .end local v18    # "willStore":Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    nop

    .line 1480
    return-void

    .line 1476
    :cond_109
    new-instance v1, Landroid/os/RemoteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to enroll "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1477
    const/4 v3, 0x2

    if-ne v10, v3, :cond_11c

    .line 1478
    const-string/jumbo v3, "password"

    goto :goto_11f

    :cond_11c
    const-string/jumbo v3, "pattern"

    :goto_11f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1458
    .end local v0    # "enrolledHandle":[B
    :catchall_12a
    move-exception v0

    :try_start_12b
    monitor-exit v8
    :try_end_12c
    .catchall {:try_start_12b .. :try_end_12c} :catchall_12a

    throw v0

    .line 1424
    .end local v14    # "currentHandle":Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .end local v15    # "savedCredential":Ljava/lang/String;
    .local v7, "savedCredential":Ljava/lang/String;
    :cond_12d
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "Null credential with mismatched credential type"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1407
    :catchall_135
    move-exception v0

    :try_start_136
    monitor-exit v8
    :try_end_137
    .catchall {:try_start_136 .. :try_end_137} :catchall_135

    throw v0
.end method

.method private setLockCredentialWithAuthTokenLocked(Ljava/lang/String;ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;II)J
    .registers 19
    .param p1, "credential"    # Ljava/lang/String;
    .param p2, "credentialType"    # I
    .param p3, "auth"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p4, "requestedQuality"    # I
    .param p5, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSpManager"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p0

    move-object v8, p1

    .line 2511
    move/from16 v9, p5

    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v2

    move-object v3, v8

    move v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move v7, v9

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;Ljava/lang/String;ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;II)J

    move-result-wide v10

    .line 2514
    .local v10, "newHandle":J
    if-eqz v8, :cond_5b

    .line 2516
    const/4 v7, 0x0

    .line 2518
    .local v7, "profilePasswords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasSidForUser(I)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 2524
    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v2

    const-wide/16 v4, 0x0

    move-object/from16 v3, p3

    move v6, v9

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 2548
    move-object/from16 v12, p3

    goto :goto_77

    .line 2528
    :cond_31
    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v2

    move-object/from16 v12, p3

    invoke-virtual {v1, v2, v12, v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->newSidForUser(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V

    .line 2529
    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v2

    const-wide/16 v4, 0x0

    move-object v3, v12

    move v6, v9

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 2530
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveDiskEncryptionKey()[B

    move-result-object v1

    invoke-direct {v0, v9, v1}, Lcom/android/server/locksettings/LockSettingsService;->setAuthlessUserKeyProtection(I[B)V

    .line 2531
    invoke-direct {v0, v9}, Lcom/android/server/locksettings/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    .line 2532
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveKeyStorePassword()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v9}, Lcom/android/server/locksettings/LockSettingsService;->setKeystorePassword(Ljava/lang/String;I)V

    goto :goto_77

    .line 2537
    .end local v7    # "profilePasswords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_5b
    move-object/from16 v12, p3

    invoke-direct {v0, v9}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordsForAllTiedProfiles(I)Ljava/util/Map;

    move-result-object v7

    .line 2540
    .restart local v7    # "profilePasswords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->clearSidForUser(I)V

    .line 2541
    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    invoke-interface {v1, v9}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V

    .line 2544
    invoke-direct {v0, v9}, Lcom/android/server/locksettings/LockSettingsService;->clearUserKeyProtection(I)V

    .line 2545
    invoke-direct {v0, v9}, Lcom/android/server/locksettings/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    .line 2546
    const/4 v1, 0x0

    invoke-direct {v0, v1, v9}, Lcom/android/server/locksettings/LockSettingsService;->setKeystorePassword(Ljava/lang/String;I)V

    .line 2548
    :goto_77
    const-string/jumbo v1, "sp-handle"

    invoke-virtual {v0, v1, v10, v11, v9}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 2549
    invoke-direct {v0, v9, v7}, Lcom/android/server/locksettings/LockSettingsService;->synchronizeUnifiedWorkChallengeForProfiles(ILjava/util/Map;)V

    .line 2551
    invoke-direct {v0, v8, v9}, Lcom/android/server/locksettings/LockSettingsService;->notifyActivePasswordMetricsAvailable(Ljava/lang/String;I)V

    .line 2552
    return-wide v10
.end method

.method private setLockCredentialWithToken(Ljava/lang/String;IJ[BII)Z
    .registers 12
    .param p1, "credential"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "tokenHandle"    # J
    .param p5, "token"    # [B
    .param p6, "requestedQuality"    # I
    .param p7, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2729
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 2730
    :try_start_3
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasEscrowData(I)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 2733
    invoke-direct/range {p0 .. p7}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialWithTokenInternal(Ljava/lang/String;IJ[BII)Z

    move-result v1

    .line 2735
    .local v1, "result":Z
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_2e

    .line 2736
    if-eqz v1, :cond_25

    .line 2737
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2738
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_17
    invoke-direct {p0, p7, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->setSeparateProfileChallengeEnabledLocked(IZLjava/lang/String;)V

    .line 2739
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_22

    .line 2740
    invoke-direct {p0, p7}, Lcom/android/server/locksettings/LockSettingsService;->notifyPasswordChanged(I)V

    .line 2741
    invoke-direct {p0, p7}, Lcom/android/server/locksettings/LockSettingsService;->notifySeparateProfileChallengeChanged(I)V

    goto :goto_25

    .line 2739
    :catchall_22
    move-exception v2

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v2

    .line 2743
    :cond_25
    :goto_25
    return v1

    .line 2731
    .end local v1    # "result":Z
    :cond_26
    :try_start_26
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Escrow token is disabled on the current user"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2735
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_2e

    throw v1
.end method

.method private setLockCredentialWithTokenInternal(Ljava/lang/String;IJ[BII)Z
    .registers 21
    .param p1, "credential"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "tokenHandle"    # J
    .param p5, "token"    # [B
    .param p6, "requestedQuality"    # I
    .param p7, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v7, p0

    .line 2749
    move/from16 v8, p7

    iget-object v9, v7, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v9

    .line 2750
    :try_start_6
    iget-object v1, v7, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 2751
    invoke-virtual {v7}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v2

    .line 2750
    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    move v6, v8

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapTokenBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;J[BI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v0

    .line 2752
    .local v0, "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    iget-object v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    const/4 v2, 0x0

    if-nez v1, :cond_23

    .line 2753
    const-string v1, "LockSettingsService"

    const-string v3, "Invalid escrow token supplied"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2754
    monitor-exit v9

    return v2

    .line 2756
    :cond_23
    iget-object v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v1

    if-eqz v1, :cond_34

    .line 2759
    const-string v1, "LockSettingsService"

    const-string v3, "Obsolete token: synthetic password derived but it fails GK verification."

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2761
    monitor-exit v9

    return v2

    .line 2766
    :cond_34
    const-string/jumbo v1, "lockscreen.password_type"
    :try_end_37
    .catchall {:try_start_6 .. :try_end_37} :catchall_59

    move/from16 v10, p6

    int-to-long v2, v10

    :try_start_3a
    invoke-virtual {v7, v1, v2, v3, v8}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 2767
    invoke-direct {v7, v8}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v1

    move-wide v11, v1

    .line 2768
    .local v11, "oldHandle":J
    iget-object v4, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-object v1, v7

    move-object v2, p1

    move v3, p2

    move v5, v10

    move v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialWithAuthTokenLocked(Ljava/lang/String;ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;II)J

    .line 2770
    iget-object v1, v7, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, v11, v12, v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyPasswordBasedSyntheticPassword(JI)V

    .line 2771
    .end local v11    # "oldHandle":J
    monitor-exit v9
    :try_end_52
    .catchall {:try_start_3a .. :try_end_52} :catchall_5e

    .line 2772
    iget-object v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-direct {v7, v8, v1}, Lcom/android/server/locksettings/LockSettingsService;->onAuthTokenKnownForUser(ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)V

    .line 2773
    const/4 v1, 0x1

    return v1

    .line 2771
    .end local v0    # "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    :catchall_59
    move-exception v0

    move/from16 v10, p6

    :goto_5c
    :try_start_5c
    monitor-exit v9
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5e

    throw v0

    :catchall_5e
    move-exception v0

    goto :goto_5c
.end method

.method private setSeparateProfileChallengeEnabledLocked(IZLjava/lang/String;)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "enabled"    # Z
    .param p3, "managedUserPassword"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSeparateChallengeLock"
    .end annotation

    .line 970
    const-string/jumbo v0, "lockscreen.profilechallenge"

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    .line 971
    if-eqz p2, :cond_11

    .line 972
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->removeChildProfileLock(I)V

    .line 973
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->removeKeystoreProfileKey(I)V

    goto :goto_14

    .line 975
    :cond_11
    invoke-virtual {p0, p1, p3}, Lcom/android/server/locksettings/LockSettingsService;->tieManagedProfileLockIfNecessary(ILjava/lang/String;)V

    .line 977
    :goto_14
    return-void
.end method

.method private setStringUnchecked(Ljava/lang/String;ILjava/lang/String;)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "value"    # Ljava/lang/String;

    .line 1006
    const/16 v0, -0x270f

    if-eq p2, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    const-string v1, "cannot store lock settings for FRP user"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1008
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1, p3, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->writeKeyValue(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1009
    sget-object v0, Lcom/android/server/locksettings/LockSettingsService;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1010
    const-string v0, "com.android.providers.settings"

    invoke-static {v0}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    .line 1012
    :cond_1e
    return-void
.end method

.method private setUserKeyProtection(ILjava/lang/String;Lcom/android/internal/widget/VerifyCredentialResponse;)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "credential"    # Ljava/lang/String;
    .param p3, "vcr"    # Lcom/android/internal/widget/VerifyCredentialResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1582
    if-eqz p3, :cond_39

    .line 1585
    invoke-virtual {p3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_1e

    .line 1589
    invoke-virtual {p3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v0

    .line 1590
    .local v0, "token":[B
    if-eqz v0, :cond_16

    .line 1593
    invoke-static {p2}, Lcom/android/server/locksettings/LockSettingsService;->secretFromCredential(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/locksettings/LockSettingsService;->addUserKeyAuth(I[B[B)V

    .line 1594
    return-void

    .line 1591
    :cond_16
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "Empty payload verifying a credential we just set"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1586
    .end local v0    # "token":[B
    :cond_1e
    new-instance v0, Landroid/os/RemoteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-OK response verifying a credential we just set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1587
    invoke-virtual {p3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1583
    :cond_39
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "Null response verifying a credential we just set"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private shouldCacheSpForUser(I)Z
    .registers 5
    .param p1, "userId"    # I

    .line 2312
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "user_setup_complete"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_12

    .line 2314
    const/4 v0, 0x1

    return v0

    .line 2320
    :cond_12
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 2322
    .local v0, "dpmi":Landroid/app/admin/DevicePolicyManagerInternal;
    if-nez v0, :cond_1d

    .line 2323
    return v2

    .line 2325
    :cond_1d
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManagerInternal;->canUserHaveUntrustedCredentialReset(I)Z

    move-result v1

    return v1
.end method

.method private showEncryptionNotification(Landroid/os/UserHandle;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .registers 10
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "message"    # Ljava/lang/CharSequence;
    .param p4, "detail"    # Ljava/lang/CharSequence;
    .param p5, "intent"    # Landroid/app/PendingIntent;

    .line 507
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 509
    :cond_7
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/notification/SystemNotificationChannels;->SECURITY:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v1, 0x10804fc

    .line 511
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 512
    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 513
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 514
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const v3, 0x106016f

    .line 515
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 517
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 518
    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 519
    invoke-virtual {v0, p4}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 520
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 521
    invoke-virtual {v0, p5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 522
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 523
    .local v0, "notification":Landroid/app/Notification;
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v2, 0x0

    const/16 v3, 0x9

    invoke-virtual {v1, v2, v3, v0, p1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 525
    return-void
.end method

.method private showEncryptionNotificationForProfile(Landroid/os/UserHandle;)V
    .registers 15
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 480
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 481
    .local v0, "r":Landroid/content/res/Resources;
    const v1, 0x10406ea

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 483
    .local v1, "title":Ljava/lang/CharSequence;
    const v2, 0x10405b4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 485
    .local v8, "message":Ljava/lang/CharSequence;
    const v2, 0x10405b3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 488
    .local v9, "detail":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/app/KeyguardManager;

    .line 489
    .local v10, "km":Landroid/app/KeyguardManager;
    nop

    .line 490
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 489
    const/4 v3, 0x0

    invoke-virtual {v10, v3, v3, v2}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v11

    .line 491
    .local v11, "unlockIntent":Landroid/content/Intent;
    if-nez v11, :cond_34

    .line 492
    return-void

    .line 494
    :cond_34
    const/high16 v2, 0x10800000

    invoke-virtual {v11, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 496
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {v2, v3, v11, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    .line 499
    .local v12, "intent":Landroid/app/PendingIntent;
    move-object v2, p0

    move-object v3, p1

    move-object v4, v1

    move-object v5, v8

    move-object v6, v9

    move-object v7, v12

    invoke-direct/range {v2 .. v7}, Lcom/android/server/locksettings/LockSettingsService;->showEncryptionNotification(Landroid/os/UserHandle;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 500
    return-void
.end method

.method private spBasedDoVerifyCredential(Ljava/lang/String;IZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 24
    .param p1, "userCredential"    # Ljava/lang/String;
    .param p2, "credentialType"    # I
    .param p3, "hasChallenge"    # Z
    .param p4, "challenge"    # J
    .param p6, "userId"    # I
    .param p7, "progressCallback"    # Lcom/android/internal/widget/ICheckCredentialProgressCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v13, p6

    .line 2432
    const/4 v0, -0x1

    if-ne v2, v0, :cond_c

    .line 2433
    const/4 v0, 0x0

    .line 2438
    .end local p1    # "userCredential":Ljava/lang/String;
    .local v0, "userCredential":Ljava/lang/String;
    move-object v14, v0

    goto :goto_e

    .line 2438
    .end local v0    # "userCredential":Ljava/lang/String;
    .restart local p1    # "userCredential":Ljava/lang/String;
    :cond_c
    move-object/from16 v14, p1

    .line 2438
    .end local p1    # "userCredential":Ljava/lang/String;
    .local v14, "userCredential":Ljava/lang/String;
    :goto_e
    iget-object v15, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v15

    .line 2439
    :try_start_11
    invoke-direct {v1, v13}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v0

    const/4 v12, 0x0

    if-nez v0, :cond_1a

    .line 2440
    monitor-exit v15
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_f2

    return-object v12

    .line 2442
    :cond_1a
    const/16 v0, -0x270f

    if-ne v13, v0, :cond_31

    .line 2443
    :try_start_1e
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3
    :try_end_24
    .catchall {:try_start_1e .. :try_end_24} :catchall_2c

    move-object/from16 v10, p7

    :try_start_26
    invoke-virtual {v0, v3, v14, v2, v10}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyFrpCredential(Landroid/service/gatekeeper/IGateKeeperService;Ljava/lang/String;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    monitor-exit v15

    return-object v0

    .line 2469
    :catchall_2c
    move-exception v0

    move-object/from16 v10, p7

    goto/16 :goto_f3

    .line 2447
    :cond_31
    move-object/from16 v10, p7

    invoke-direct {v1, v13}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v5

    .line 2448
    .local v5, "handle":J
    iget-object v3, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 2449
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v4

    .line 2448
    move-object v7, v14

    move v8, v13

    move-object v9, v10

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;JLjava/lang/String;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v0

    .line 2451
    .local v0, "authResult":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    iget v3, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->credentialType:I

    if-eq v3, v2, :cond_53

    .line 2452
    const-string v3, "LockSettingsService"

    const-string v4, "Credential type mismatch."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2453
    sget-object v3, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    monitor-exit v15

    return-object v3

    .line 2455
    :cond_53
    iget-object v3, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 2457
    .local v3, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v4

    if-nez v4, :cond_7e

    .line 2460
    iget-object v7, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v8

    iget-object v9, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-wide/from16 v10, p4

    move-object v4, v12

    move v12, v13

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v7

    move-object v3, v7

    .line 2462
    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v7

    if-eqz v7, :cond_7f

    .line 2465
    const-string v4, "LockSettingsService"

    const-string/jumbo v7, "verifyChallenge with SP failed."

    invoke-static {v4, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2466
    sget-object v4, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    monitor-exit v15

    return-object v4

    .line 2469
    .end local v5    # "handle":J
    :cond_7e
    move-object v4, v12

    :cond_7f
    monitor-exit v15
    :try_end_80
    .catchall {:try_start_26 .. :try_end_80} :catchall_f2

    .line 2471
    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v5

    if-nez v5, :cond_df

    .line 2472
    invoke-direct {v1, v14, v13}, Lcom/android/server/locksettings/LockSettingsService;->notifyActivePasswordMetricsAvailable(Ljava/lang/String;I)V

    .line 2473
    iget-object v5, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-virtual {v5}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveKeyStorePassword()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5, v13}, Lcom/android/server/locksettings/LockSettingsService;->unlockKeystore(Ljava/lang/String;I)V

    .line 2475
    iget-object v5, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-virtual {v5}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveDiskEncryptionKey()[B

    move-result-object v5

    .line 2476
    .local v5, "secret":[B
    const-string v6, "LockSettingsService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unlocking user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " with secret only, length "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2477
    invoke-direct {v1, v13, v4, v5}, Lcom/android/server/locksettings/LockSettingsService;->unlockUser(I[B[B)V

    .line 2479
    iget-object v4, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-direct {v1, v4, v13}, Lcom/android/server/locksettings/LockSettingsService;->activateEscrowTokens(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V

    .line 2481
    invoke-direct {v1, v13}, Lcom/android/server/locksettings/LockSettingsService;->isManagedProfileWithSeparatedLock(I)Z

    move-result v4

    if-eqz v4, :cond_d4

    .line 2482
    iget-object v4, v1, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "trust"

    .line 2483
    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/trust/TrustManager;

    .line 2484
    .local v4, "trustManager":Landroid/app/trust/TrustManager;
    const/4 v6, 0x0

    invoke-virtual {v4, v13, v6}, Landroid/app/trust/TrustManager;->setDeviceLockedForUser(IZ)V

    .line 2486
    .end local v4    # "trustManager":Landroid/app/trust/TrustManager;
    :cond_d4
    iget-object v4, v1, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v4, v13}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->reportSuccessfulStrongAuthUnlock(I)V

    .line 2488
    iget-object v4, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-direct {v1, v13, v4}, Lcom/android/server/locksettings/LockSettingsService;->onAuthTokenKnownForUser(ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)V

    .line 2489
    .end local v5    # "secret":[B
    goto :goto_f1

    :cond_df
    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_f1

    .line 2490
    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v4

    if-lez v4, :cond_f1

    .line 2491
    const/16 v4, 0x8

    invoke-virtual {v1, v4, v13}, Lcom/android/server/locksettings/LockSettingsService;->requireStrongAuth(II)V

    .line 2495
    :cond_f1
    :goto_f1
    return-object v3

    .line 2469
    .end local v0    # "authResult":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    .end local v3    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catchall_f2
    move-exception v0

    :goto_f3
    :try_start_f3
    monitor-exit v15
    :try_end_f4
    .catchall {:try_start_f3 .. :try_end_f4} :catchall_f2

    throw v0
.end method

.method private spBasedSetLockCredentialInternalLocked(Ljava/lang/String;ILjava/lang/String;II)V
    .registers 22
    .param p1, "credential"    # Ljava/lang/String;
    .param p2, "credentialType"    # I
    .param p3, "savedCredential"    # Ljava/lang/String;
    .param p4, "requestedQuality"    # I
    .param p5, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSpManager"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v7, p0

    move/from16 v8, p2

    .line 2559
    move/from16 v6, p5

    invoke-direct {v7, v6}, Lcom/android/server/locksettings/LockSettingsService;->isManagedProfileWithUnifiedLock(I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 2562
    :try_start_c
    invoke-virtual {v7, v6}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_10} :catch_1b
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_c .. :try_end_10} :catch_11
    .catch Ljava/security/InvalidKeyException; {:try_start_c .. :try_end_10} :catch_11
    .catch Ljava/security/KeyStoreException; {:try_start_c .. :try_end_10} :catch_11
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_c .. :try_end_10} :catch_11
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_c .. :try_end_10} :catch_11
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_c .. :try_end_10} :catch_11
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_c .. :try_end_10} :catch_11
    .catch Ljavax/crypto/BadPaddingException; {:try_start_c .. :try_end_10} :catch_11
    .catch Ljava/security/cert/CertificateException; {:try_start_c .. :try_end_10} :catch_11
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_10} :catch_11

    .line 2570
    .end local p3    # "savedCredential":Ljava/lang/String;
    .local v0, "savedCredential":Ljava/lang/String;
    goto :goto_27

    .line 2565
    .end local v0    # "savedCredential":Ljava/lang/String;
    .restart local p3    # "savedCredential":Ljava/lang/String;
    :catch_11
    move-exception v0

    move-object v1, v0

    .line 2569
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "LockSettingsService"

    const-string v2, "Failed to decrypt child profile key"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2569
    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_25

    .line 2563
    :catch_1b
    move-exception v0

    move-object v1, v0

    .line 2564
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v1, "LockSettingsService"

    const-string v2, "Child profile key not found"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2570
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    nop

    .line 2572
    :cond_25
    :goto_25
    move-object/from16 v0, p3

    .line 2572
    .end local p3    # "savedCredential":Ljava/lang/String;
    .local v0, "savedCredential":Ljava/lang/String;
    :goto_27
    invoke-direct {v7, v6}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v4

    .line 2573
    .local v4, "handle":J
    iget-object v9, v7, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 2574
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v10

    const/4 v15, 0x0

    .line 2573
    move-wide v11, v4

    move-object v13, v0

    move v14, v6

    invoke-virtual/range {v9 .. v15}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;JLjava/lang/String;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v9

    .line 2575
    .local v9, "authResult":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    iget-object v10, v9, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 2576
    .local v10, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    iget-object v1, v9, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    .line 2579
    .local v1, "auth":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    if-eqz v0, :cond_62

    if-nez v1, :cond_62

    .line 2580
    new-instance v2, Landroid/os/RemoteException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to enroll "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2581
    const/4 v11, 0x2

    if-ne v8, v11, :cond_54

    .line 2582
    const-string/jumbo v11, "password"

    goto :goto_57

    :cond_54
    const-string/jumbo v11, "pattern"

    :goto_57
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2585
    :cond_62
    const/4 v2, 0x0

    .line 2586
    .local v2, "untrustedReset":Z
    if-eqz v1, :cond_6b

    .line 2587
    invoke-direct {v7, v6, v1}, Lcom/android/server/locksettings/LockSettingsService;->onAuthTokenKnownForUser(ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)V

    .line 2602
    .end local v1    # "auth":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .end local v2    # "untrustedReset":Z
    .local v11, "auth":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .local v12, "untrustedReset":Z
    :goto_68
    move-object v11, v1

    move v12, v2

    goto :goto_86

    .line 2588
    .end local v11    # "auth":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .end local v12    # "untrustedReset":Z
    .restart local v1    # "auth":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .restart local v2    # "untrustedReset":Z
    :cond_6b
    if-eqz v10, :cond_b8

    .line 2589
    invoke-virtual {v10}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    const/4 v11, -0x1

    if-ne v3, v11, :cond_b8

    .line 2592
    const-string v3, "LockSettingsService"

    const-string v11, "Untrusted credential change invoked"

    invoke-static {v3, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2594
    iget-object v3, v7, Lcom/android/server/locksettings/LockSettingsService;->mSpCache:Landroid/util/SparseArray;

    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    .line 2595
    const/4 v2, 0x1

    goto :goto_68

    .line 2602
    .end local v1    # "auth":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .end local v2    # "untrustedReset":Z
    .restart local v11    # "auth":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .restart local v12    # "untrustedReset":Z
    :goto_86
    if-eqz v11, :cond_ac

    .line 2603
    if-eqz v12, :cond_93

    .line 2608
    iget-object v1, v7, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v2

    invoke-virtual {v1, v2, v11, v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->newSidForUser(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V

    .line 2610
    :cond_93
    move-object v1, v7

    move-object/from16 v2, p1

    move v3, v8

    move-wide v13, v4

    move-object v4, v11

    .line 2610
    .end local v4    # "handle":J
    .local v13, "handle":J
    move/from16 v5, p4

    move v15, v6

    invoke-direct/range {v1 .. v6}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialWithAuthTokenLocked(Ljava/lang/String;ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;II)J

    .line 2612
    iget-object v1, v7, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, v13, v14, v15}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyPasswordBasedSyntheticPassword(JI)V

    .line 2620
    iget-object v1, v7, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    move-object/from16 v3, p1

    invoke-virtual {v1, v8, v3, v15}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->lockScreenSecretChanged(ILjava/lang/String;I)V

    .line 2621
    return-void

    .line 2614
    .end local v13    # "handle":J
    .restart local v4    # "handle":J
    :cond_ac
    move-object/from16 v3, p1

    move-wide v13, v4

    move v15, v6

    .line 2614
    .end local v4    # "handle":J
    .restart local v13    # "handle":J
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Untrusted credential reset not possible without cached SP"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2597
    .end local v11    # "auth":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .end local v12    # "untrustedReset":Z
    .end local v13    # "handle":J
    .restart local v1    # "auth":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .restart local v2    # "untrustedReset":Z
    .restart local v4    # "handle":J
    :cond_b8
    move-object/from16 v3, p1

    move-wide v13, v4

    move v15, v6

    .line 2597
    .end local v4    # "handle":J
    .restart local v13    # "handle":J
    const-string v4, "LockSettingsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "spBasedSetLockCredentialInternalLocked: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2598
    if-eqz v10, :cond_cf

    const-string/jumbo v6, "rate limit exceeded"

    goto :goto_d1

    :cond_cf
    const-string v6, "failed"

    :goto_d1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2597
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2599
    return-void
.end method

.method private synchronizeUnifiedWorkChallengeForProfiles(ILjava/util/Map;)V
    .registers 15
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1314
    .local p2, "profilePasswordMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-static {p1}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1315
    return-void

    .line 1318
    :cond_7
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1319
    return-void

    .line 1321
    :cond_14
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v0

    .line 1322
    .local v0, "isSecure":Z
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    .line 1323
    .local v1, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 1324
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_23
    if-ge v3, v2, :cond_86

    .line 1325
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 1328
    .local v4, "profile":Landroid/content/pm/UserInfo;
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-nez v5, :cond_39

    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v5}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v5

    if-eqz v5, :cond_83

    .line 1330
    :cond_39
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    .line 1331
    .local v5, "managedUserId":I
    iget-object v6, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v5}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_44

    .line 1332
    goto :goto_83

    .line 1334
    :cond_44
    if-eqz v0, :cond_4b

    .line 1335
    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/android/server/locksettings/LockSettingsService;->tieManagedProfileLockIfNecessary(ILjava/lang/String;)V

    goto :goto_83

    .line 1339
    :cond_4b
    if-eqz p2, :cond_6b

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6b

    .line 1340
    const/4 v7, 0x0

    const/4 v8, -0x1

    .line 1341
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Ljava/lang/String;

    const/4 v10, 0x0

    .line 1340
    move-object v6, p0

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialInternal(Ljava/lang/String;ILjava/lang/String;II)V

    goto :goto_7b

    .line 1344
    :cond_6b
    const-string v6, "LockSettingsService"

    const-string v7, "clear tied profile challenges, but no password supplied."

    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v6, p0

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialInternal(Ljava/lang/String;ILjava/lang/String;II)V

    .line 1349
    :goto_7b
    iget-object v6, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v6, v5}, Lcom/android/server/locksettings/LockSettingsStorage;->removeChildProfileLock(I)V

    .line 1350
    invoke-direct {p0, v5}, Lcom/android/server/locksettings/LockSettingsService;->removeKeystoreProfileKey(I)V

    .line 1324
    .end local v4    # "profile":Landroid/content/pm/UserInfo;
    .end local v5    # "managedUserId":I
    :cond_83
    :goto_83
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    .line 1354
    .end local v3    # "i":I
    :cond_86
    return-void
.end method

.method private tiedManagedProfileReadyToUnlock(Landroid/content/pm/UserInfo;)Z
    .registers 4
    .param p1, "userInfo"    # Landroid/content/pm/UserInfo;

    .line 1257
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-nez v0, :cond_e

    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v0

    if-eqz v0, :cond_36

    :cond_e
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    .line 1259
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    .line 1260
    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasChildProfileLock(I)Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    .line 1263
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserRunning(I)Z

    move-result v0

    if-nez v0, :cond_34

    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v0

    if-eqz v0, :cond_36

    :cond_34
    const/4 v0, 0x1

    goto :goto_37

    :cond_36
    const/4 v0, 0x0

    .line 1257
    :goto_37
    return v0
.end method

.method private tryDeriveAuthTokenForUnsecuredPrimaryUser(I)V
    .registers 11
    .param p1, "userId"    # I

    .line 612
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 614
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v1

    if-nez v1, :cond_b

    .line 615
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_5e

    return-void

    .line 619
    :cond_b
    :try_start_b
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v4

    .line 620
    .local v4, "handle":J
    const/4 v1, 0x0

    .line 621
    .local v1, "noCredential":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 623
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    const/4 v8, 0x0

    .line 622
    move-object v6, v1

    move v7, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;JLjava/lang/String;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v2

    .line 624
    .local v2, "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    iget-object v3, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    if-eqz v3, :cond_3d

    .line 625
    const-string v3, "LockSettingsService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Retrieved auth token for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    iget-object v3, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-direct {p0, p1, v3}, Lcom/android/server/locksettings/LockSettingsService;->onAuthTokenKnownForUser(ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)V

    goto :goto_53

    .line 628
    :cond_3d
    const-string v3, "LockSettingsService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Auth token not available for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_53} :catch_54
    .catchall {:try_start_b .. :try_end_53} :catchall_5e

    .line 632
    .end local v1    # "noCredential":Ljava/lang/String;
    .end local v2    # "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    .end local v4    # "handle":J
    :goto_53
    goto :goto_5c

    .line 630
    :catch_54
    move-exception v1

    .line 631
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_55
    const-string v2, "LockSettingsService"

    const-string v3, "Failure retrieving auth token"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 633
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_5c
    monitor-exit v0

    .line 634
    return-void

    .line 633
    :catchall_5e
    move-exception v1

    monitor-exit v0
    :try_end_60
    .catchall {:try_start_55 .. :try_end_60} :catchall_5e

    throw v1
.end method

.method private tryRemoveUserFromSpCacheLater(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 2293
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$lWTrcqR9gZxL-pxwBbtvTGqAifU;

    invoke-direct {v1, p0, p1}, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$lWTrcqR9gZxL-pxwBbtvTGqAifU;-><init>(Lcom/android/server/locksettings/LockSettingsService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2306
    return-void
.end method

.method private unlockChildProfile(IZ)V
    .registers 11
    .param p1, "profileHandle"    # I
    .param p2, "ignoreUserNotAuthenticated"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1187
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Ljava/lang/String;IZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_e
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_e} :catch_f

    .line 1201
    goto :goto_31

    .line 1190
    :catch_f
    move-exception v0

    .line 1194
    .local v0, "e":Ljava/lang/Exception;
    instance-of v1, v0, Ljava/io/FileNotFoundException;

    if-eqz v1, :cond_1c

    .line 1195
    const-string v1, "LockSettingsService"

    const-string v2, "Child profile key not found"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    .line 1196
    :cond_1c
    if-eqz p2, :cond_2a

    instance-of v1, v0, Landroid/security/keystore/UserNotAuthenticatedException;

    if-eqz v1, :cond_2a

    .line 1197
    const-string v1, "LockSettingsService"

    const-string v2, "Parent keystore seems locked, ignoring"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    .line 1199
    :cond_2a
    const-string v1, "LockSettingsService"

    const-string v2, "Failed to decrypt child profile key"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1202
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_31
    return-void
.end method

.method private unlockKeystore(Ljava/lang/String;I)V
    .registers 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .line 1152
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    .line 1153
    .local v0, "ks":Landroid/security/KeyStore;
    invoke-virtual {v0, p2, p1}, Landroid/security/KeyStore;->unlock(ILjava/lang/String;)Z

    .line 1154
    return-void
.end method

.method private unlockUser(I[B[B)V
    .registers 11
    .param p1, "userId"    # I
    .param p2, "token"    # [B
    .param p3, "secret"    # [B

    .line 1206
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1207
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$3;

    invoke-direct {v1, p0, v0}, Lcom/android/server/locksettings/LockSettingsService$3;-><init>(Lcom/android/server/locksettings/LockSettingsService;Ljava/util/concurrent/CountDownLatch;)V

    .line 1226
    .local v1, "listener":Landroid/os/IProgressListener;
    :try_start_b
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v2, p1, p2, p3, v1}, Landroid/app/IActivityManager;->unlockUser(I[B[BLandroid/os/IProgressListener;)Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_60

    .line 1229
    nop

    .line 1232
    const-wide/16 v2, 0xf

    :try_start_13
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_18} :catch_19

    .line 1235
    goto :goto_21

    .line 1233
    :catch_19
    move-exception v2

    .line 1234
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 1239
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_21
    :try_start_21
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-nez v2, :cond_56

    invoke-static {p1}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v2

    if-nez v2, :cond_56

    .line 1241
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    .line 1242
    .local v2, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_56

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 1244
    .local v4, "pi":Landroid/content/pm/UserInfo;
    invoke-direct {p0, v4}, Lcom/android/server/locksettings/LockSettingsService;->tiedManagedProfileReadyToUnlock(Landroid/content/pm/UserInfo;)Z

    move-result v5

    if-eqz v5, :cond_55

    .line 1245
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/android/server/locksettings/LockSettingsService;->unlockChildProfile(IZ)V
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_55} :catch_57

    .line 1247
    .end local v4    # "pi":Landroid/content/pm/UserInfo;
    :cond_55
    goto :goto_3d

    .line 1251
    .end local v2    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_56
    goto :goto_5f

    .line 1249
    :catch_57
    move-exception v2

    .line 1250
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "LockSettingsService"

    const-string v4, "Failed to unlock child profile"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1252
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_5f
    return-void

    .line 1227
    :catch_60
    move-exception v2

    .line 1228
    .restart local v2    # "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method private unlockUserWithToken(J[BI)Z
    .registers 13
    .param p1, "tokenHandle"    # J
    .param p3, "token"    # [B
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2779
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 2780
    :try_start_3
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasEscrowData(I)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 2783
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    move-wide v4, p1

    move-object v6, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapTokenBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;J[BI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v1

    .line 2785
    .local v1, "authResult":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    iget-object v2, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    if-nez v2, :cond_26

    .line 2786
    const-string v2, "LockSettingsService"

    const-string v3, "Invalid escrow token supplied"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2787
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 2789
    :cond_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_40

    .line 2790
    const/4 v0, 0x0

    iget-object v2, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-virtual {v2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveDiskEncryptionKey()[B

    move-result-object v2

    invoke-direct {p0, p4, v0, v2}, Lcom/android/server/locksettings/LockSettingsService;->unlockUser(I[B[B)V

    .line 2791
    iget-object v0, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-direct {p0, p4, v0}, Lcom/android/server/locksettings/LockSettingsService;->onAuthTokenKnownForUser(ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)V

    .line 2792
    const/4 v0, 0x1

    return v0

    .line 2781
    .end local v1    # "authResult":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    :cond_38
    :try_start_38
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Escrow token is disabled on the current user"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2789
    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_38 .. :try_end_42} :catchall_40

    throw v1
.end method

.method private verifyCredential(ILcom/android/server/locksettings/LockSettingsStorage$CredentialHash;Ljava/lang/String;ZJLcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 26
    .param p1, "userId"    # I
    .param p2, "storedHash"    # Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .param p3, "credential"    # Ljava/lang/String;
    .param p4, "hasChallenge"    # Z
    .param p5, "challenge"    # J
    .param p7, "progressCallback"    # Lcom/android/internal/widget/ICheckCredentialProgressCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v12, p0

    move/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    .line 1814
    if-eqz v14, :cond_f

    iget-object v0, v14, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    array-length v0, v0

    if-nez v0, :cond_18

    :cond_f
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1816
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v0

    .line 1819
    :cond_18
    if-eqz v14, :cond_168

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    goto/16 :goto_168

    .line 1825
    :cond_22
    invoke-static {}, Landroid/os/StrictMode;->noteDiskRead()V

    .line 1827
    iget v0, v14, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->version:I

    const/high16 v7, 0x50000

    const/high16 v8, 0x10000

    const/4 v9, 0x1

    if-nez v0, :cond_a4

    .line 1829
    iget v0, v14, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    if-ne v0, v9, :cond_3b

    .line 1830
    invoke-static/range {p3 .. p3}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v0

    .line 1830
    .local v0, "hash":[B
    goto :goto_47

    .line 1832
    .end local v0    # "hash":[B
    :cond_3b
    iget-object v0, v12, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v15, v13}, Lcom/android/internal/widget/LockPatternUtils;->legacyPasswordToHash(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 1833
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 1835
    .restart local v0    # "hash":[B
    :goto_47
    iget-object v1, v14, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_a1

    .line 1836
    iget v1, v14, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    if-ne v1, v9, :cond_5b

    .line 1837
    invoke-static/range {p3 .. p3}, Lcom/android/internal/widget/LockPatternUtils;->patternStringToBaseZero(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v12, v1, v13}, Lcom/android/server/locksettings/LockSettingsService;->unlockKeystore(Ljava/lang/String;I)V

    goto :goto_5e

    .line 1839
    :cond_5b
    invoke-direct {v12, v15, v13}, Lcom/android/server/locksettings/LockSettingsService;->unlockKeystore(Ljava/lang/String;I)V

    .line 1843
    :goto_5e
    const-string v1, "LockSettingsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unlocking user with fake token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    .line 1845
    .local v10, "fakeToken":[B
    invoke-direct {v12, v13, v10, v10}, Lcom/android/server/locksettings/LockSettingsService;->unlockUser(I[B[B)V

    .line 1848
    iget v3, v14, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    const/4 v4, 0x0

    .line 1849
    iget v1, v14, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    if-ne v1, v9, :cond_89

    .line 1850
    nop

    .line 1848
    move v5, v8

    goto :goto_8b

    .line 1851
    :cond_89
    nop

    .line 1848
    move v5, v7

    :goto_8b
    move-object v1, v12

    move-object v2, v15

    move v6, v13

    invoke-direct/range {v1 .. v6}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialInternal(Ljava/lang/String;ILjava/lang/String;II)V

    .line 1853
    if-nez p4, :cond_a0

    .line 1854
    invoke-direct {v12, v15, v13}, Lcom/android/server/locksettings/LockSettingsService;->notifyActivePasswordMetricsAvailable(Ljava/lang/String;I)V

    .line 1856
    iget-object v1, v12, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    iget v2, v14, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    invoke-virtual {v1, v2, v15, v13}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->lockScreenSecretAvailable(ILjava/lang/String;I)V

    .line 1858
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v1

    .line 1863
    .end local v10    # "fakeToken":[B
    :cond_a0
    goto :goto_a4

    .line 1864
    :cond_a1
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v1

    .line 1867
    .end local v0    # "hash":[B
    :cond_a4
    :goto_a4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    iget-object v5, v14, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    .line 1868
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    move v2, v13

    move-wide/from16 v3, p5

    invoke-interface/range {v1 .. v6}, Landroid/service/gatekeeper/IGateKeeperService;->verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v11

    .line 1869
    .local v11, "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    invoke-direct {v12, v11}, Lcom/android/server/locksettings/LockSettingsService;->convertResponse(Landroid/service/gatekeeper/GateKeeperResponse;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v10

    .line 1870
    .local v10, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v11}, Landroid/service/gatekeeper/GateKeeperResponse;->getShouldReEnroll()Z

    move-result v16

    .line 1872
    .local v16, "shouldReEnroll":Z
    invoke-virtual {v10}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_154

    .line 1876
    if-eqz p7, :cond_c8

    .line 1877
    invoke-interface/range {p7 .. p7}, Lcom/android/internal/widget/ICheckCredentialProgressCallback;->onCredentialVerified()V

    .line 1879
    :cond_c8
    invoke-direct {v12, v15, v13}, Lcom/android/server/locksettings/LockSettingsService;->notifyActivePasswordMetricsAvailable(Ljava/lang/String;I)V

    .line 1880
    invoke-direct {v12, v15, v13}, Lcom/android/server/locksettings/LockSettingsService;->unlockKeystore(Ljava/lang/String;I)V

    .line 1882
    const-string v0, "LockSettingsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unlocking user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " with token length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1883
    invoke-virtual {v10}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1882
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1884
    invoke-virtual {v10}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v0

    invoke-static/range {p3 .. p3}, Lcom/android/server/locksettings/LockSettingsService;->secretFromCredential(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v12, v13, v0, v1}, Lcom/android/server/locksettings/LockSettingsService;->unlockUser(I[B[B)V

    .line 1886
    invoke-direct/range {p0 .. p1}, Lcom/android/server/locksettings/LockSettingsService;->isManagedProfileWithSeparatedLock(I)Z

    move-result v0

    if-eqz v0, :cond_111

    .line 1887
    iget-object v0, v12, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "trust"

    .line 1888
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/trust/TrustManager;

    .line 1889
    .local v0, "trustManager":Landroid/app/trust/TrustManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v13, v1}, Landroid/app/trust/TrustManager;->setDeviceLockedForUser(IZ)V

    .line 1891
    .end local v0    # "trustManager":Landroid/app/trust/TrustManager;
    :cond_111
    iget v0, v14, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    if-ne v0, v9, :cond_118

    .line 1892
    nop

    .line 1893
    move v5, v8

    goto :goto_119

    :cond_118
    move v5, v7

    .line 1895
    .local v5, "reEnrollQuality":I
    :goto_119
    if-eqz v16, :cond_127

    .line 1896
    iget v3, v14, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    move-object v1, v12

    move-object v2, v15

    move-object v4, v15

    move v6, v13

    invoke-direct/range {v1 .. v6}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialInternal(Ljava/lang/String;ILjava/lang/String;II)V

    .line 1911
    move-object v2, v10

    move-object v3, v11

    goto :goto_145

    .line 1901
    :cond_127
    iget-object v1, v12, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v1

    .line 1902
    :try_start_12a
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/locksettings/LockSettingsService;->shouldMigrateToSyntheticPasswordLocked(I)Z

    move-result v0

    if-eqz v0, :cond_142

    .line 1903
    iget-object v7, v14, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    iget v9, v14, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I
    :try_end_134
    .catchall {:try_start_12a .. :try_end_134} :catchall_14d

    move-object v6, v12

    move-object v8, v15

    move-object v2, v10

    move v10, v5

    .line 1903
    .end local v10    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .local v2, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    move-object v3, v11

    move v11, v13

    .line 1903
    .end local v11    # "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    .local v3, "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    :try_start_13a
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/locksettings/LockSettingsService;->initializeSyntheticPasswordLocked([BLjava/lang/String;III)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-result-object v0

    .line 1906
    .local v0, "auth":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    invoke-direct {v12, v0, v13}, Lcom/android/server/locksettings/LockSettingsService;->activateEscrowTokens(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V

    .line 1906
    .end local v0    # "auth":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    goto :goto_144

    .line 1908
    .end local v2    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .end local v3    # "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    .restart local v10    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .restart local v11    # "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    :cond_142
    move-object v2, v10

    move-object v3, v11

    .line 1908
    .end local v10    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .end local v11    # "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    .restart local v2    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .restart local v3    # "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    :goto_144
    monitor-exit v1
    :try_end_145
    .catchall {:try_start_13a .. :try_end_145} :catchall_152

    .line 1911
    :goto_145
    iget-object v0, v12, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    iget v1, v14, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    invoke-virtual {v0, v1, v15, v13}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->lockScreenSecretAvailable(ILjava/lang/String;I)V

    .line 1914
    .end local v5    # "reEnrollQuality":I
    goto :goto_167

    .line 1908
    .end local v2    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .end local v3    # "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    .restart local v5    # "reEnrollQuality":I
    .restart local v10    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .restart local v11    # "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    :catchall_14d
    move-exception v0

    move-object v2, v10

    move-object v3, v11

    .line 1908
    .end local v10    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .end local v11    # "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    .restart local v2    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .restart local v3    # "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    :goto_150
    :try_start_150
    monitor-exit v1
    :try_end_151
    .catchall {:try_start_150 .. :try_end_151} :catchall_152

    throw v0

    :catchall_152
    move-exception v0

    goto :goto_150

    .line 1914
    .end local v2    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .end local v3    # "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    .end local v5    # "reEnrollQuality":I
    .restart local v10    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .restart local v11    # "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    :cond_154
    move-object v2, v10

    move-object v3, v11

    .line 1914
    .end local v10    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .end local v11    # "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    .restart local v2    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .restart local v3    # "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v0

    if-ne v0, v9, :cond_167

    .line 1915
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v0

    if-lez v0, :cond_167

    .line 1916
    const/16 v0, 0x8

    invoke-virtual {v12, v0, v13}, Lcom/android/server/locksettings/LockSettingsService;->requireStrongAuth(II)V

    .line 1920
    :cond_167
    :goto_167
    return-object v2

    .line 1820
    .end local v2    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .end local v3    # "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    .end local v16    # "shouldReEnroll":Z
    :cond_168
    :goto_168
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v0
.end method


# virtual methods
.method public checkCredential(Ljava/lang/String;IILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 13
    .param p1, "credential"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "userId"    # I
    .param p4, "progressCallback"    # Lcom/android/internal/widget/ICheckCredentialProgressCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1688
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 1689
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Ljava/lang/String;IZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    .line 1691
    .local v0, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v1

    if-nez v1, :cond_1a

    if-nez p3, :cond_1a

    .line 1693
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->retainPassword(Ljava/lang/String;)V

    .line 1695
    :cond_1a
    return-object v0
.end method

.method public checkPrivacyPasswordPattern(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 5
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 3019
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 3020
    invoke-static {p1, p2, p3}, Landroid/security/MiuiLockPatternUtils;->checkPrivacyPasswordPattern(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public checkVoldPassword(I)Z
    .registers 10
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1959
    iget-boolean v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mFirstCallToVold:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1960
    return v1

    .line 1962
    :cond_6
    iput-boolean v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mFirstCallToVold:Z

    .line 1964
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 1974
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v0

    .line 1976
    .local v0, "service":Landroid/os/storage/IStorageManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1978
    .local v2, "identity":J
    :try_start_15
    invoke-interface {v0}, Landroid/os/storage/IStorageManager;->getPassword()Ljava/lang/String;

    move-result-object v4

    .line 1979
    .local v4, "password":Ljava/lang/String;
    invoke-interface {v0}, Landroid/os/storage/IStorageManager;->clearPassword()V
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_52

    .line 1981
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1982
    nop

    .line 1981
    nop

    .line 1983
    if-nez v4, :cond_24

    .line 1984
    return v1

    .line 1988
    :cond_24
    const/4 v5, 0x0

    const/4 v6, 0x1

    :try_start_26
    iget-object v7, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_39

    .line 1989
    invoke-virtual {p0, v4, v6, p1, v5}, Lcom/android/server/locksettings/LockSettingsService;->checkCredential(Ljava/lang/String;IILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v7

    .line 1991
    invoke-virtual {v7}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v7
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_36} :catch_3a

    if-nez v7, :cond_39

    .line 1992
    return v6

    .line 1996
    :cond_39
    goto :goto_3b

    .line 1995
    :catch_3a
    move-exception v7

    .line 1999
    :goto_3b
    :try_start_3b
    iget-object v7, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_4f

    .line 2000
    const/4 v7, 0x2

    invoke-virtual {p0, v4, v7, p1, v5}, Lcom/android/server/locksettings/LockSettingsService;->checkCredential(Ljava/lang/String;IILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v5

    .line 2002
    invoke-virtual {v5}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v5
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_4c} :catch_50

    if-nez v5, :cond_4f

    .line 2003
    return v6

    .line 2007
    :cond_4f
    goto :goto_51

    .line 2006
    :catch_50
    move-exception v5

    .line 2009
    :goto_51
    return v1

    .line 1981
    .end local v4    # "password":Ljava/lang/String;
    :catchall_52
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public closeSession(Ljava/lang/String;)V
    .registers 3
    .param p1, "sessionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2171
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->closeSession(Ljava/lang/String;)V

    .line 2172
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 14
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 2797
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v1, "LockSettingsService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 2799
    :cond_b
    const-string v0, "Current lock settings service state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2800
    const-string v0, "SP Enabled = %b"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 2801
    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isSyntheticPasswordEnabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 2800
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2803
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 2804
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    move v2, v4

    .local v2, "user":I
    :goto_30
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_8c

    .line 2805
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    .line 2806
    .local v3, "userId":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    User "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2807
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v5

    .line 2808
    :try_start_55
    const-string v6, "        SP Handle = %x"

    new-array v7, v1, [Ljava/lang/Object;

    .line 2809
    invoke-direct {p0, v3}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v4

    .line 2808
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2810
    monitor-exit v5
    :try_end_6b
    .catchall {:try_start_55 .. :try_end_6b} :catchall_89

    .line 2812
    :try_start_6b
    const-string v5, "        SID = %x"

    new-array v6, v1, [Ljava/lang/Object;

    .line 2813
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v7

    invoke-interface {v7, v3}, Landroid/service/gatekeeper/IGateKeeperService;->getSecureUserId(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v4

    .line 2812
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_84
    .catch Landroid/os/RemoteException; {:try_start_6b .. :try_end_84} :catch_85

    .line 2816
    goto :goto_86

    .line 2814
    :catch_85
    move-exception v5

    .line 2804
    .end local v3    # "userId":I
    :goto_86
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 2810
    .restart local v3    # "userId":I
    :catchall_89
    move-exception v1

    :try_start_8a
    monitor-exit v5
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_89

    throw v1

    .line 2818
    .end local v2    # "user":I
    .end local v3    # "userId":I
    :cond_8c
    return-void
.end method

.method public generateKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2181
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->generateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;ZI)Z
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z
    .param p3, "userId"    # I

    .line 1016
    invoke-direct {p0, p1, p3}, Lcom/android/server/locksettings/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    .line 1017
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/locksettings/LockSettingsService;->getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1018
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1019
    nop

    .line 1018
    move v1, p2

    goto :goto_26

    .line 1019
    :cond_11
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    goto :goto_25

    :cond_23
    const/4 v1, 0x0

    goto :goto_26

    :cond_25
    :goto_25
    const/4 v1, 0x1

    .line 1018
    :goto_26
    return v1
.end method

.method protected getDecryptedPasswordForTiedProfile(I)Ljava/lang/String;
    .registers 11
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1163
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->readChildProfileLock(I)[B

    move-result-object v0

    .line 1164
    .local v0, "storedData":[B
    if-eqz v0, :cond_53

    .line 1167
    const/4 v1, 0x0

    const/16 v2, 0xc

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 1168
    .local v1, "iv":[B
    array-length v3, v0

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 1171
    .local v2, "encryptedPassword":[B
    const-string v3, "AndroidKeyStore"

    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    .line 1172
    .local v3, "keyStore":Ljava/security/KeyStore;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 1173
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "profile_key_name_decrypt_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v4

    check-cast v4, Ljavax/crypto/SecretKey;

    .line 1176
    .local v4, "decryptionKey":Ljavax/crypto/SecretKey;
    const-string v5, "AES/GCM/NoPadding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    .line 1179
    .local v5, "cipher":Ljavax/crypto/Cipher;
    const/4 v6, 0x2

    new-instance v7, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v8, 0x80

    invoke-direct {v7, v8, v1}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    invoke-virtual {v5, v6, v4, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 1180
    invoke-virtual {v5, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6

    .line 1181
    .local v6, "decryptionResult":[B
    new-instance v7, Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v7, v6, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v7

    .line 1165
    .end local v1    # "iv":[B
    .end local v2    # "encryptedPassword":[B
    .end local v3    # "keyStore":Ljava/security/KeyStore;
    .end local v4    # "decryptionKey":Ljavax/crypto/SecretKey;
    .end local v5    # "cipher":Ljavax/crypto/Cipher;
    .end local v6    # "decryptionResult":[B
    :cond_53
    new-instance v1, Ljava/io/FileNotFoundException;

    const-string v2, "Child profile lock file not found"

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected declared-synchronized getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 2243
    :try_start_1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

    if-eqz v0, :cond_9

    .line 2244
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_2e

    monitor-exit p0

    return-object v0

    .line 2247
    :cond_9
    :try_start_9
    const-string v0, "android.service.gatekeeper.IGateKeeperService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2248
    .local v0, "service":Landroid/os/IBinder;
    const/4 v1, 0x0

    if-eqz v0, :cond_25

    .line 2249
    new-instance v2, Lcom/android/server/locksettings/LockSettingsService$GateKeeperDiedRecipient;

    invoke-direct {v2, p0, v1}, Lcom/android/server/locksettings/LockSettingsService$GateKeeperDiedRecipient;-><init>(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/LockSettingsService$1;)V

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 2250
    invoke-static {v0}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

    .line 2251
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;
    :try_end_23
    .catchall {:try_start_9 .. :try_end_23} :catchall_2e

    monitor-exit p0

    return-object v1

    .line 2254
    :cond_25
    :try_start_25
    const-string v2, "LockSettingsService"

    const-string v3, "Unable to acquire GateKeeperService"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_2e

    .line 2255
    monitor-exit p0

    return-object v1

    .line 2242
    .end local v0    # "service":Landroid/os/IBinder;
    :catchall_2e
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/locksettings/LockSettingsService;
    throw v0
.end method

.method public getHashFactor(Ljava/lang/String;I)[B
    .registers 14
    .param p1, "currentCredential"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2631
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 2632
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2633
    const/4 p1, 0x0

    .line 2635
    :cond_a
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isManagedProfileWithUnifiedLock(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    .line 2637
    :try_start_11
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Ljava/lang/String;

    move-result-object v0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_15} :catch_17

    move-object p1, v0

    .line 2641
    goto :goto_20

    .line 2638
    :catch_17
    move-exception v0

    .line 2639
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "LockSettingsService"

    const-string v3, "Failed to get work profile credential"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2640
    return-object v1

    .line 2643
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_20
    :goto_20
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 2644
    :try_start_23
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v2

    if-nez v2, :cond_32

    .line 2645
    const-string v2, "LockSettingsService"

    const-string v3, "Synthetic password not enabled"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2646
    monitor-exit v0

    return-object v1

    .line 2648
    :cond_32
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v6

    .line 2649
    .local v6, "handle":J
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 2650
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v5

    const/4 v10, 0x0

    .line 2649
    move-object v8, p1

    move v9, p2

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;JLjava/lang/String;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v2

    .line 2651
    .local v2, "auth":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    iget-object v3, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    if-nez v3, :cond_50

    .line 2652
    const-string v3, "LockSettingsService"

    const-string v4, "Current credential is incorrect"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2653
    monitor-exit v0

    return-object v1

    .line 2655
    :cond_50
    iget-object v1, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-virtual {v1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->derivePasswordHashFactor()[B

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 2656
    .end local v2    # "auth":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    .end local v6    # "handle":J
    :catchall_58
    move-exception v1

    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_23 .. :try_end_5a} :catchall_58

    throw v1
.end method

.method public getKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2191
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyChainSnapshot()Landroid/security/keystore/recovery/KeyChainSnapshot;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2113
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->getKeyChainSnapshot()Landroid/security/keystore/recovery/KeyChainSnapshot;

    move-result-object v0

    return-object v0
.end method

.method public getLong(Ljava/lang/String;JI)J
    .registers 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J
    .param p4, "userId"    # I

    .line 1024
    invoke-direct {p0, p1, p4}, Lcom/android/server/locksettings/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    .line 1025
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p4}, Lcom/android/server/locksettings/LockSettingsService;->getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1026
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    move-wide v1, p2

    goto :goto_14

    :cond_10
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    :goto_14
    return-wide v1
.end method

.method public getPassword()Ljava/lang/String;
    .registers 4

    .line 1137
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkCryptKeeperPermissions()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1138
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_DEVICE_ADMINS"

    const-string/jumbo v2, "no crypt_keeper or admin permission to get the password"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    :cond_10
    sget-object v0, Lcom/android/server/locksettings/LockSettingsService;->mSavePassword:Ljava/lang/String;

    return-object v0
.end method

.method public getRecoverySecretTypes()[I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2145
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->getRecoverySecretTypes()[I

    move-result-object v0

    return-object v0
.end method

.method public getRecoveryStatus()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2134
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->getRecoveryStatus()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getSeparateProfileChallengeEnabled(I)Z
    .registers 5
    .param p1, "userId"    # I

    .line 951
    const-string/jumbo v0, "lockscreen.profilechallenge"

    invoke-direct {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    .line 952
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 953
    :try_start_9
    const-string/jumbo v1, "lockscreen.profilechallenge"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, p1}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 954
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 1031
    invoke-direct {p0, p1, p3}, Lcom/android/server/locksettings/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    .line 1032
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 1036
    const-string/jumbo v0, "lock_pattern_autolock"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1037
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1039
    .local v0, "ident":J
    :try_start_d
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, p3}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_18

    const-string v2, "1"

    goto :goto_1a

    :cond_18
    const-string v2, "0"
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_1e

    .line 1041
    :goto_1a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1039
    return-object v2

    .line 1041
    :catchall_1e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1045
    .end local v0    # "ident":J
    :cond_23
    const/16 v0, -0x270f

    if-ne p3, v0, :cond_2c

    .line 1046
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getFrpStringUnchecked(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1049
    :cond_2c
    const-string/jumbo v0, "legacy_lock_pattern_enabled"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1050
    const-string/jumbo p1, "lock_pattern_autolock"

    .line 1053
    :cond_38
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->readKeyValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStrongAuthForUser(I)I
    .registers 3
    .param p1, "userId"    # I

    .line 2074
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 2075
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuthTracker:Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v0

    return v0
.end method

.method public havePassword(I)Z
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1069
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordHavePermission(I)V

    .line 1070
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 1071
    :try_start_6
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1072
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v1

    .line 1073
    .local v1, "handle":J
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v3, v1, v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getCredentialType(JI)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1b

    const/4 v3, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v3, 0x0

    :goto_1c
    monitor-exit v0

    return v3

    .line 1076
    .end local v1    # "handle":J
    :cond_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_26

    .line 1078
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasPassword(I)Z

    move-result v0

    return v0

    .line 1076
    :catchall_26
    move-exception v1

    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v1
.end method

.method public havePattern(I)Z
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1083
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordHavePermission(I)V

    .line 1084
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 1085
    :try_start_6
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1086
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v1

    .line 1087
    .local v1, "handle":J
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v3, v1, v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getCredentialType(JI)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v4, 0x0

    :goto_1b
    monitor-exit v0

    return v4

    .line 1090
    .end local v1    # "handle":J
    :cond_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_25

    .line 1092
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasPattern(I)Z

    move-result v0

    return v0

    .line 1090
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public importKey(Ljava/lang/String;[B)Ljava/lang/String;
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "keyBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2186
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->importKey(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initRecoveryServiceWithSigFile(Ljava/lang/String;[B[B)V
    .registers 5
    .param p1, "rootCertificateAlias"    # Ljava/lang/String;
    .param p2, "recoveryServiceCertFile"    # [B
    .param p3, "recoveryServiceSigFile"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2107
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->initRecoveryServiceWithSigFile(Ljava/lang/String;[B[B)V

    .line 2109
    return-void
.end method

.method protected initializeSyntheticPasswordLocked([BLjava/lang/String;III)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .registers 16
    .param p1, "credentialHash"    # [B
    .param p2, "credential"    # Ljava/lang/String;
    .param p3, "credentialType"    # I
    .param p4, "requestedQuality"    # I
    .param p5, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSpManager"
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2369
    const-string v0, "LockSettingsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initialize SyntheticPassword for user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2370
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 2371
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    .line 2370
    invoke-virtual {v0, v1, p1, p2, p5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->newSyntheticPasswordAndSid(Landroid/service/gatekeeper/IGateKeeperService;[BLjava/lang/String;I)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-result-object v0

    .line 2372
    .local v0, "auth":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    invoke-direct {p0, p5, v0}, Lcom/android/server/locksettings/LockSettingsService;->onAuthTokenKnownForUser(ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)V

    .line 2373
    const/4 v1, 0x0

    if-nez v0, :cond_2e

    .line 2374
    const-string v2, "LockSettingsService"

    const-string v3, "initializeSyntheticPasswordLocked returns null auth token"

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2375
    return-object v1

    .line 2377
    :cond_2e
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    move-object v4, p2

    move v5, p3

    move-object v6, v0

    move v7, p4

    move v8, p5

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;Ljava/lang/String;ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;II)J

    move-result-wide v8

    .line 2379
    .local v8, "handle":J
    if-eqz p2, :cond_66

    .line 2380
    if-nez p1, :cond_4a

    .line 2383
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->newSidForUser(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V

    .line 2385
    :cond_4a
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    const-wide/16 v5, 0x0

    move-object v4, v0

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 2386
    invoke-virtual {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveDiskEncryptionKey()[B

    move-result-object v1

    invoke-direct {p0, p5, v1}, Lcom/android/server/locksettings/LockSettingsService;->setAuthlessUserKeyProtection(I[B)V

    .line 2387
    invoke-virtual {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveKeyStorePassword()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p5}, Lcom/android/server/locksettings/LockSettingsService;->setKeystorePassword(Ljava/lang/String;I)V

    goto :goto_73

    .line 2389
    :cond_66
    invoke-direct {p0, p5}, Lcom/android/server/locksettings/LockSettingsService;->clearUserKeyProtection(I)V

    .line 2390
    invoke-direct {p0, v1, p5}, Lcom/android/server/locksettings/LockSettingsService;->setKeystorePassword(Ljava/lang/String;I)V

    .line 2391
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    invoke-interface {v1, p5}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V

    .line 2393
    :goto_73
    invoke-direct {p0, p5}, Lcom/android/server/locksettings/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    .line 2394
    const-string/jumbo v1, "sp-handle"

    invoke-virtual {p0, v1, v8, v9, p5}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 2395
    return-object v0
.end method

.method public onCleanupUser(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 534
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->hideEncryptionNotification(Landroid/os/UserHandle;)V

    .line 538
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsService;->requireStrongAuth(II)V

    .line 539
    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 19
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v9, p0

    .line 2093
    invoke-direct {v9}, Lcom/android/server/locksettings/LockSettingsService;->enforceShell()V

    .line 2094
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v10, v0

    .line 2096
    .local v10, "origId":J
    :try_start_9
    new-instance v1, Lcom/android/server/locksettings/LockSettingsShellCommand;

    iget-object v0, v9, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, v9, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v0, v2}, Lcom/android/server/locksettings/LockSettingsShellCommand;-><init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V

    move-object v2, v9

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/locksettings/LockSettingsShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I
    :try_end_24
    .catchall {:try_start_9 .. :try_end_24} :catchall_29

    .line 2099
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2100
    nop

    .line 2101
    return-void

    .line 2099
    :catchall_29
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public onStartUser(I)V
    .registers 2
    .param p1, "userId"    # I

    .line 542
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->maybeShowEncryptionNotificationForUser(I)V

    .line 543
    return-void
.end method

.method public onUnlockUser(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 569
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/locksettings/LockSettingsService$1;-><init>(Lcom/android/server/locksettings/LockSettingsService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 609
    return-void
.end method

.method public recoverKeyChainSnapshot(Ljava/lang/String;[BLjava/util/List;)Ljava/util/Map;
    .registers 5
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "recoveryKeyBlob"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/List<",
            "Landroid/security/keystore/recovery/WrappedApplicationKey;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2165
    .local p3, "applicationKeys":Ljava/util/List;, "Ljava/util/List<Landroid/security/keystore/recovery/WrappedApplicationKey;>;"
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->recoverKeyChainSnapshot(Ljava/lang/String;[BLjava/util/List;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .registers 3
    .param p1, "tracker"    # Landroid/app/trust/IStrongAuthTracker;

    .line 2050
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 2051
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    .line 2052
    return-void
.end method

.method public removeKey(Ljava/lang/String;)V
    .registers 3
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2176
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->removeKey(Ljava/lang/String;)V

    .line 2177
    return-void
.end method

.method public requireStrongAuth(II)V
    .registers 4
    .param p1, "strongAuthReason"    # I
    .param p2, "userId"    # I

    .line 2062
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 2063
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->requireStrongAuth(II)V

    .line 2064
    return-void
.end method

.method public resetKeyStore(I)V
    .registers 19
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1643
    move/from16 v2, p1

    invoke-direct/range {p0 .. p1}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 1645
    const/4 v0, -0x1

    .line 1646
    .local v0, "managedUserId":I
    const/4 v3, 0x0

    .line 1647
    .local v3, "managedUserDecryptedPassword":Ljava/lang/String;
    iget-object v4, v1, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4, v2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v4

    .line 1648
    .local v4, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v6, v3

    move v3, v0

    .end local v0    # "managedUserId":I
    .local v3, "managedUserId":I
    .local v6, "managedUserDecryptedPassword":Ljava/lang/String;
    :goto_15
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v7, -0x1

    if-eqz v0, :cond_76

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/content/pm/UserInfo;

    .line 1650
    .local v8, "pi":Landroid/content/pm/UserInfo;
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_75

    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v9, v8, Landroid/content/pm/UserInfo;->id:I

    .line 1651
    invoke-virtual {v0, v9}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-nez v0, :cond_75

    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    iget v9, v8, Landroid/content/pm/UserInfo;->id:I

    .line 1652
    invoke-virtual {v0, v9}, Lcom/android/server/locksettings/LockSettingsStorage;->hasChildProfileLock(I)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 1654
    if-ne v3, v7, :cond_4c

    .line 1655
    :try_start_3f
    iget v0, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v0}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 1656
    iget v0, v8, Landroid/content/pm/UserInfo;->id:I

    move v3, v0

    goto :goto_6c

    .line 1662
    :catch_4a
    move-exception v0

    goto :goto_6d

    .line 1659
    :cond_4c
    const-string v0, "LockSettingsService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "More than one managed profile, uid1:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", uid2:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_3f .. :try_end_6c} :catch_4a
    .catch Ljava/security/InvalidKeyException; {:try_start_3f .. :try_end_6c} :catch_4a
    .catch Ljava/security/KeyStoreException; {:try_start_3f .. :try_end_6c} :catch_4a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3f .. :try_end_6c} :catch_4a
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_3f .. :try_end_6c} :catch_4a
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3f .. :try_end_6c} :catch_4a
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_3f .. :try_end_6c} :catch_4a
    .catch Ljavax/crypto/BadPaddingException; {:try_start_3f .. :try_end_6c} :catch_4a
    .catch Ljava/security/cert/CertificateException; {:try_start_3f .. :try_end_6c} :catch_4a
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_6c} :catch_4a

    .line 1667
    :goto_6c
    goto :goto_75

    .line 1662
    :goto_6d
    nop

    .line 1666
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "LockSettingsService"

    const-string v9, "Failed to decrypt child profile key"

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1669
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v8    # "pi":Landroid/content/pm/UserInfo;
    :cond_75
    :goto_75
    goto :goto_15

    .line 1672
    :cond_76
    :try_start_76
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    move-result-object v0

    array-length v5, v0

    const/4 v9, 0x0

    :goto_7e
    if-ge v9, v5, :cond_99

    aget v10, v0, v9

    .line 1673
    .local v10, "profileId":I
    sget-object v11, Lcom/android/server/locksettings/LockSettingsService;->SYSTEM_CREDENTIAL_UIDS:[I

    array-length v12, v11

    const/4 v13, 0x0

    :goto_86
    if-ge v13, v12, :cond_96

    aget v14, v11, v13

    .line 1674
    .local v14, "uid":I
    iget-object v15, v1, Lcom/android/server/locksettings/LockSettingsService;->mKeyStore:Landroid/security/KeyStore;

    invoke-static {v10, v14}, Landroid/os/UserHandle;->getUid(II)I

    move-result v8

    invoke-virtual {v15, v8}, Landroid/security/KeyStore;->clearUid(I)Z
    :try_end_93
    .catchall {:try_start_76 .. :try_end_93} :catchall_a1

    .line 1673
    .end local v14    # "uid":I
    add-int/lit8 v13, v13, 0x1

    goto :goto_86

    .line 1672
    .end local v10    # "profileId":I
    :cond_96
    add-int/lit8 v9, v9, 0x1

    goto :goto_7e

    .line 1678
    :cond_99
    if-eq v3, v7, :cond_a0

    if-eqz v6, :cond_a0

    .line 1680
    invoke-virtual {v1, v3, v6}, Lcom/android/server/locksettings/LockSettingsService;->tieProfileLockToParent(ILjava/lang/String;)V

    .line 1683
    :cond_a0
    return-void

    .line 1678
    :catchall_a1
    move-exception v0

    if-eq v3, v7, :cond_a9

    if-eqz v6, :cond_a9

    .line 1680
    invoke-virtual {v1, v3, v6}, Lcom/android/server/locksettings/LockSettingsService;->tieProfileLockToParent(ILjava/lang/String;)V

    :cond_a9
    throw v0
.end method

.method public retainPassword(Ljava/lang/String;)V
    .registers 3
    .param p1, "password"    # Ljava/lang/String;

    .line 1107
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1108
    if-eqz p1, :cond_b

    .line 1109
    sput-object p1, Lcom/android/server/locksettings/LockSettingsService;->mSavePassword:Ljava/lang/String;

    goto :goto_f

    .line 1111
    :cond_b
    const-string v0, "default_password"

    sput-object v0, Lcom/android/server/locksettings/LockSettingsService;->mSavePassword:Ljava/lang/String;

    .line 1113
    :cond_f
    :goto_f
    return-void
.end method

.method public sanitizePassword()V
    .registers 2

    .line 1116
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1117
    const-string v0, "default_password"

    sput-object v0, Lcom/android/server/locksettings/LockSettingsService;->mSavePassword:Ljava/lang/String;

    .line 1119
    :cond_a
    return-void
.end method

.method public savePrivacyPasswordPattern(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 3009
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 3010
    invoke-static {p1, p2, p3}, Landroid/security/MiuiLockPatternUtils;->savePrivacyPasswordPattern(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3011
    return-void
.end method

.method public setBoolean(Ljava/lang/String;ZI)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .param p3, "userId"    # I

    .line 989
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 990
    if-eqz p2, :cond_8

    const-string v0, "1"

    goto :goto_a

    :cond_8
    const-string v0, "0"

    :goto_a
    invoke-direct {p0, p1, p3, v0}, Lcom/android/server/locksettings/LockSettingsService;->setStringUnchecked(Ljava/lang/String;ILjava/lang/String;)V

    .line 991
    return-void
.end method

.method public setLockCredential(Ljava/lang/String;ILjava/lang/String;II)V
    .registers 9
    .param p1, "credential"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "savedCredential"    # Ljava/lang/String;
    .param p4, "requestedQuality"    # I
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1382
    invoke-direct {p0, p5}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 1383
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1384
    :try_start_6
    invoke-direct/range {p0 .. p5}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialInternal(Ljava/lang/String;ILjava/lang/String;II)V

    .line 1385
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p5, v1, v2}, Lcom/android/server/locksettings/LockSettingsService;->setSeparateProfileChallengeEnabledLocked(IZLjava/lang/String;)V

    .line 1386
    invoke-direct {p0, p5}, Lcom/android/server/locksettings/LockSettingsService;->notifyPasswordChanged(I)V

    .line 1387
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_16

    .line 1388
    invoke-direct {p0, p5}, Lcom/android/server/locksettings/LockSettingsService;->notifySeparateProfileChallengeChanged(I)V

    .line 1389
    return-void

    .line 1387
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public setLong(Ljava/lang/String;JI)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "userId"    # I

    .line 995
    invoke-direct {p0, p4}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 996
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p4, v0}, Lcom/android/server/locksettings/LockSettingsService;->setStringUnchecked(Ljava/lang/String;ILjava/lang/String;)V

    .line 997
    return-void
.end method

.method public setRawLockPassword([BI)V
    .registers 5
    .param p1, "hash"    # [B
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2998
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 2999
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const/4 v1, 0x2

    invoke-static {p1, v1}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->create([BI)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->writeCredentialHash(Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;I)V

    .line 3001
    return-void
.end method

.method public setRecoverySecretTypes([I)V
    .registers 3
    .param p1, "secretTypes"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2140
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->setRecoverySecretTypes([I)V

    .line 2141
    return-void
.end method

.method public setRecoveryStatus(Ljava/lang/String;I)V
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2129
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->setRecoveryStatus(Ljava/lang/String;I)V

    .line 2130
    return-void
.end method

.method public setSeparateProfileChallengeEnabled(IZLjava/lang/String;)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "enabled"    # Z
    .param p3, "managedUserPassword"    # Ljava/lang/String;

    .line 960
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 961
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 962
    :try_start_6
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->setSeparateProfileChallengeEnabledLocked(IZLjava/lang/String;)V

    .line 963
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_e

    .line 964
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->notifySeparateProfileChallengeChanged(I)V

    .line 965
    return-void

    .line 963
    :catchall_e
    move-exception v1

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v1
.end method

.method public setServerParams([B)V
    .registers 3
    .param p1, "serverParams"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2124
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->setServerParams([B)V

    .line 2125
    return-void
.end method

.method public setSnapshotCreatedPendingIntent(Landroid/app/PendingIntent;)V
    .registers 3
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2119
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->setSnapshotCreatedPendingIntent(Landroid/app/PendingIntent;)V

    .line 2120
    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 1001
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 1002
    invoke-direct {p0, p1, p3, p2}, Lcom/android/server/locksettings/LockSettingsService;->setStringUnchecked(Ljava/lang/String;ILjava/lang/String;)V

    .line 1003
    return-void
.end method

.method protected shouldMigrateToSyntheticPasswordLocked(I)Z
    .registers 10
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2417
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v0

    .line 2419
    .local v0, "handle":J
    const-string v2, "enable-sp"

    const/4 v3, 0x0

    const-wide/16 v4, 0x1

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v4

    .line 2421
    .local v4, "enabled":J
    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_19

    cmp-long v2, v0, v6

    if-nez v2, :cond_19

    const/4 v3, 0x1

    nop

    :cond_19
    return v3
.end method

.method public startRecoverySessionWithCertPath(Ljava/lang/String;Ljava/lang/String;Landroid/security/keystore/recovery/RecoveryCertPath;[B[BLjava/util/List;)[B
    .registers 14
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "rootCertificateAlias"    # Ljava/lang/String;
    .param p3, "verifierCertPath"    # Landroid/security/keystore/recovery/RecoveryCertPath;
    .param p4, "vaultParams"    # [B
    .param p5, "vaultChallenge"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/security/keystore/recovery/RecoveryCertPath;",
            "[B[B",
            "Ljava/util/List<",
            "Landroid/security/keystore/recovery/KeyChainProtectionParams;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2155
    .local p6, "secrets":Ljava/util/List;, "Ljava/util/List<Landroid/security/keystore/recovery/KeyChainProtectionParams;>;"
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->startRecoverySessionWithCertPath(Ljava/lang/String;Ljava/lang/String;Landroid/security/keystore/recovery/RecoveryCertPath;[B[BLjava/util/List;)[B

    move-result-object v0

    return-object v0
.end method

.method public systemReady()V
    .registers 6

    .line 663
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    .line 664
    const v0, 0x534e4554

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "28251513"

    aput-object v3, v2, v1

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, ""

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 666
    :cond_28
    invoke-direct {p0, v1}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 667
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->migrateOldData()V

    .line 669
    :try_start_2e
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    .line 670
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->initWeaverService()V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_36} :catch_37

    .line 673
    goto :goto_3f

    .line 671
    :catch_37
    move-exception v0

    .line 672
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "LockSettingsService"

    const-string v3, "Failure retrieving IGateKeeperService"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 676
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_3f
    :try_start_3f
    invoke-static {}, Landroid/hardware/authsecret/V1_0/IAuthSecret;->getService()Landroid/hardware/authsecret/V1_0/IAuthSecret;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mAuthSecretService:Landroid/hardware/authsecret/V1_0/IAuthSecret;
    :try_end_45
    .catch Ljava/util/NoSuchElementException; {:try_start_3f .. :try_end_45} :catch_4f
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_45} :catch_46

    goto :goto_57

    .line 679
    :catch_46
    move-exception v0

    .line 680
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v2, "LockSettingsService"

    const-string v3, "Failed to get AuthSecret HAL"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_58

    .line 677
    :catch_4f
    move-exception v0

    .line 678
    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string v2, "LockSettingsService"

    const-string v3, "Device doesn\'t implement AuthSecret HAL"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    .end local v0    # "e":Ljava/util/NoSuchElementException;
    :goto_57
    nop

    .line 682
    :goto_58
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mDeviceProvisionedObserver:Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->onSystemReady()V

    .line 684
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->prefetchUser(I)V

    .line 685
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->systemReady()V

    .line 686
    return-void
.end method

.method public tieManagedProfileLockIfNecessary(ILjava/lang/String;)V
    .registers 13
    .param p1, "managedUserId"    # I
    .param p2, "managedUserPassword"    # Ljava/lang/String;

    .line 284
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {p1}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v0

    if-nez v0, :cond_13

    .line 286
    return-void

    .line 289
    :cond_13
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 290
    return-void

    .line 293
    :cond_1c
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasChildProfileLock(I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 294
    return-void

    .line 297
    :cond_25
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 298
    .local v0, "parentId":I
    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v1

    if-nez v1, :cond_34

    .line 300
    return-void

    .line 306
    :cond_34
    :try_start_34
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/service/gatekeeper/IGateKeeperService;->getSecureUserId(I)J

    move-result-wide v1
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_3c} :catch_7e

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_43

    .line 307
    return-void

    .line 312
    :cond_43
    nop

    .line 314
    const/4 v1, 0x0

    new-array v1, v1, [B

    .line 316
    .local v1, "randomLockSeed":[B
    :try_start_47
    const-string v2, "SHA1PRNG"

    invoke-static {v2}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v2

    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v2

    move-object v1, v2

    .line 317
    invoke-static {v1}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    .line 318
    .local v2, "newPassword":Ljava/lang/String;
    const/high16 v9, 0x50000

    .line 319
    .local v9, "quality":I
    const/4 v5, 0x2

    const/high16 v7, 0x50000

    move-object v3, p0

    move-object v4, v2

    move-object v6, p2

    move v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialInternal(Ljava/lang/String;ILjava/lang/String;II)V

    .line 324
    const-string/jumbo v3, "lockscreen.password_type"

    const-wide/32 v4, 0x50000

    invoke-virtual {p0, v3, v4, v5, p1}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 325
    invoke-virtual {p0, p1, v2}, Lcom/android/server/locksettings/LockSettingsService;->tieProfileLockToParent(ILjava/lang/String;)V
    :try_end_74
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_47 .. :try_end_74} :catch_75
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_74} :catch_75

    .line 329
    .end local v2    # "newPassword":Ljava/lang/String;
    .end local v9    # "quality":I
    goto :goto_7d

    .line 326
    :catch_75
    move-exception v2

    .line 327
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "LockSettingsService"

    const-string v4, "Fail to tie managed profile"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 330
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_7d
    return-void

    .line 309
    .end local v1    # "randomLockSeed":[B
    :catch_7e
    move-exception v1

    .line 310
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "LockSettingsService"

    const-string v3, "Failed to talk to GateKeeper service"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 311
    return-void
.end method

.method protected tieProfileLockToParent(ILjava/lang/String;)V
    .registers 13
    .param p1, "userId"    # I
    .param p2, "password"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1489
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 1493
    .local v0, "randomLockSeed":[B
    :try_start_6
    const-string v1, "AES"

    invoke-static {v1}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    .line 1494
    .local v1, "keyGenerator":Ljavax/crypto/KeyGenerator;
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v2}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/SecureRandom;)V

    .line 1495
    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v2

    .line 1496
    .local v2, "secretKey":Ljavax/crypto/SecretKey;
    const-string v3, "AndroidKeyStore"

    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    .line 1497
    .local v3, "keyStore":Ljava/security/KeyStore;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_22
    .catch Ljava/security/cert/CertificateException; {:try_start_6 .. :try_end_22} :catch_136
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_6 .. :try_end_22} :catch_136
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_22} :catch_136
    .catch Ljavax/crypto/BadPaddingException; {:try_start_6 .. :try_end_22} :catch_136
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_6 .. :try_end_22} :catch_136
    .catch Ljava/security/KeyStoreException; {:try_start_6 .. :try_end_22} :catch_136
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_6 .. :try_end_22} :catch_136
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_22} :catch_136
    .catch Ljava/security/InvalidKeyException; {:try_start_6 .. :try_end_22} :catch_136

    .line 1499
    :try_start_22
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "profile_key_name_encrypt_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v6, v2}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    new-instance v7, Landroid/security/keystore/KeyProtection$Builder;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    const-string v9, "GCM"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    .line 1503
    invoke-virtual {v7, v9}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v7

    const-string v9, "NoPadding"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    .line 1504
    invoke-virtual {v7, v9}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v7

    .line 1505
    invoke-virtual {v7}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object v7

    .line 1499
    invoke-virtual {v3, v5, v6, v7}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 1506
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "profile_key_name_decrypt_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v6, v2}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    new-instance v7, Landroid/security/keystore/KeyProtection$Builder;

    const/4 v9, 0x2

    invoke-direct {v7, v9}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    const-string v9, "GCM"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    .line 1510
    invoke-virtual {v7, v9}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v7

    const-string v9, "NoPadding"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    .line 1511
    invoke-virtual {v7, v9}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v7

    .line 1512
    invoke-virtual {v7, v8}, Landroid/security/keystore/KeyProtection$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v7

    const/16 v9, 0x1e

    .line 1513
    invoke-virtual {v7, v9}, Landroid/security/keystore/KeyProtection$Builder;->setUserAuthenticationValidityDurationSeconds(I)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v7

    .line 1514
    invoke-virtual {v7, v8}, Landroid/security/keystore/KeyProtection$Builder;->setCriticalToDeviceEncryption(Z)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v7

    .line 1515
    invoke-virtual {v7}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object v7

    .line 1506
    invoke-virtual {v3, v5, v6, v7}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 1517
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "profile_key_name_encrypt_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v4

    check-cast v4, Ljavax/crypto/SecretKey;

    .line 1519
    .local v4, "keyStoreEncryptionKey":Ljavax/crypto/SecretKey;
    const-string v5, "AES/GCM/NoPadding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    .line 1522
    .local v5, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v5, v8, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 1523
    invoke-virtual {v5, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6

    .line 1524
    .local v6, "encryptionResult":[B
    invoke-virtual {v5}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v7
    :try_end_c9
    .catchall {:try_start_22 .. :try_end_c9} :catchall_11f

    .line 1524
    .end local v4    # "keyStoreEncryptionKey":Ljavax/crypto/SecretKey;
    .end local v5    # "cipher":Ljavax/crypto/Cipher;
    move-object v4, v7

    .line 1527
    .local v4, "iv":[B
    :try_start_ca
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "profile_key_name_encrypt_"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_df
    .catch Ljava/security/cert/CertificateException; {:try_start_ca .. :try_end_df} :catch_136
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_ca .. :try_end_df} :catch_136
    .catch Ljava/io/IOException; {:try_start_ca .. :try_end_df} :catch_136
    .catch Ljavax/crypto/BadPaddingException; {:try_start_ca .. :try_end_df} :catch_136
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_ca .. :try_end_df} :catch_136
    .catch Ljava/security/KeyStoreException; {:try_start_ca .. :try_end_df} :catch_136
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_ca .. :try_end_df} :catch_136
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_ca .. :try_end_df} :catch_136
    .catch Ljava/security/InvalidKeyException; {:try_start_ca .. :try_end_df} :catch_136

    .line 1528
    nop

    .line 1527
    .end local v1    # "keyGenerator":Ljavax/crypto/KeyGenerator;
    .end local v2    # "secretKey":Ljavax/crypto/SecretKey;
    .end local v3    # "keyStore":Ljava/security/KeyStore;
    nop

    .line 1533
    nop

    .line 1532
    nop

    .line 1534
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1536
    .local v1, "outputStream":Ljava/io/ByteArrayOutputStream;
    :try_start_e8
    array-length v2, v4

    const/16 v3, 0xc

    if-ne v2, v3, :cond_fe

    .line 1539
    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1540
    invoke-virtual {v1, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_f3
    .catch Ljava/io/IOException; {:try_start_e8 .. :try_end_f3} :catch_116

    .line 1543
    nop

    .line 1544
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/android/server/locksettings/LockSettingsStorage;->writeChildProfileLock(I[B)V

    .line 1545
    return-void

    .line 1537
    :cond_fe
    :try_start_fe
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid iv length: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_116
    .catch Ljava/io/IOException; {:try_start_fe .. :try_end_116} :catch_116

    .line 1541
    :catch_116
    move-exception v2

    .line 1542
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v5, "Failed to concatenate byte arrays"

    invoke-direct {v3, v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1527
    .end local v4    # "iv":[B
    .end local v6    # "encryptionResult":[B
    .local v1, "keyGenerator":Ljavax/crypto/KeyGenerator;
    .local v2, "secretKey":Ljavax/crypto/SecretKey;
    .restart local v3    # "keyStore":Ljava/security/KeyStore;
    :catchall_11f
    move-exception v4

    :try_start_120
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "profile_key_name_encrypt_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    throw v4
    :try_end_136
    .catch Ljava/security/cert/CertificateException; {:try_start_120 .. :try_end_136} :catch_136
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_120 .. :try_end_136} :catch_136
    .catch Ljava/io/IOException; {:try_start_120 .. :try_end_136} :catch_136
    .catch Ljavax/crypto/BadPaddingException; {:try_start_120 .. :try_end_136} :catch_136
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_120 .. :try_end_136} :catch_136
    .catch Ljava/security/KeyStoreException; {:try_start_120 .. :try_end_136} :catch_136
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_120 .. :try_end_136} :catch_136
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_120 .. :try_end_136} :catch_136
    .catch Ljava/security/InvalidKeyException; {:try_start_120 .. :try_end_136} :catch_136

    .line 1529
    .end local v1    # "keyGenerator":Ljavax/crypto/KeyGenerator;
    .end local v2    # "secretKey":Ljavax/crypto/SecretKey;
    .end local v3    # "keyStore":Ljava/security/KeyStore;
    :catch_136
    move-exception v1

    .line 1532
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed to encrypt key"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public unregisterStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .registers 3
    .param p1, "tracker"    # Landroid/app/trust/IStrongAuthTracker;

    .line 2056
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 2057
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->unregisterStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    .line 2058
    return-void
.end method

.method public userPresent(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 2068
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 2069
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->reportUnlock(I)V

    .line 2070
    return-void
.end method

.method public verifyCredential(Ljava/lang/String;IJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 14
    .param p1, "credential"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "challenge"    # J
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1701
    invoke-direct {p0, p5}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 1702
    const/4 v3, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Ljava/lang/String;IZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0
.end method

.method public verifyTiedProfileChallenge(Ljava/lang/String;IJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 19
    .param p1, "credential"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "challenge"    # J
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v9, p0

    .line 1772
    move/from16 v10, p5

    invoke-direct {v9, v10}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 1773
    invoke-direct {v9, v10}, Lcom/android/server/locksettings/LockSettingsService;->isManagedProfileWithUnifiedLock(I)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 1776
    iget-object v0, v9, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, v10}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v11, v0, Landroid/content/pm/UserInfo;->id:I

    .line 1778
    .local v11, "parentProfileId":I
    const/4 v4, 0x1

    const/4 v8, 0x0

    move-object v1, v9

    move-object v2, p1

    move v3, p2

    move-wide/from16 v5, p3

    move v7, v11

    invoke-direct/range {v1 .. v8}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Ljava/lang/String;IZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v12

    .line 1785
    .local v12, "parentResponse":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v12}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v0

    if-eqz v0, :cond_27

    .line 1787
    return-object v12

    .line 1792
    :cond_27
    :try_start_27
    invoke-virtual {v9, v10}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v8, 0x0

    move-object v1, v9

    move-wide/from16 v5, p3

    move v7, v10

    invoke-direct/range {v1 .. v8}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Ljava/lang/String;IZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0
    :try_end_36
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_27 .. :try_end_36} :catch_37
    .catch Ljava/security/InvalidKeyException; {:try_start_27 .. :try_end_36} :catch_37
    .catch Ljava/security/KeyStoreException; {:try_start_27 .. :try_end_36} :catch_37
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_27 .. :try_end_36} :catch_37
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_27 .. :try_end_36} :catch_37
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_27 .. :try_end_36} :catch_37
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_27 .. :try_end_36} :catch_37
    .catch Ljavax/crypto/BadPaddingException; {:try_start_27 .. :try_end_36} :catch_37
    .catch Ljava/security/cert/CertificateException; {:try_start_27 .. :try_end_36} :catch_37
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_36} :catch_37

    return-object v0

    .line 1797
    :catch_37
    move-exception v0

    .line 1801
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "LockSettingsService"

    const-string v2, "Failed to decrypt child profile key"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1802
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "Unable to get tied profile token"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1774
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v11    # "parentProfileId":I
    .end local v12    # "parentResponse":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_47
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "User id must be managed profile with unified lock"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
