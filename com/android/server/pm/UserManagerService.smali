.class public Lcom/android/server/pm/UserManagerService;
.super Landroid/os/IUserManager$Stub;
.source "UserManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/UserManagerService$Shell;,
        Lcom/android/server/pm/UserManagerService$LocalService;,
        Lcom/android/server/pm/UserManagerService$MainHandler;,
        Lcom/android/server/pm/UserManagerService$LifeCycle;,
        Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback;,
        Lcom/android/server/pm/UserManagerService$UserData;
    }
.end annotation


# static fields
.field private static final ALLOWED_FLAGS_FOR_CREATE_USERS_PERMISSION:I = 0x32c

.field private static final ATTR_CREATION_TIME:Ljava/lang/String; = "created"

.field private static final ATTR_FLAGS:Ljava/lang/String; = "flags"

.field private static final ATTR_GUEST_TO_REMOVE:Ljava/lang/String; = "guestToRemove"

.field private static final ATTR_ICON_PATH:Ljava/lang/String; = "icon"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_KEY:Ljava/lang/String; = "key"

.field private static final ATTR_LAST_LOGGED_IN_FINGERPRINT:Ljava/lang/String; = "lastLoggedInFingerprint"

.field private static final ATTR_LAST_LOGGED_IN_TIME:Ljava/lang/String; = "lastLoggedIn"

.field private static final ATTR_MULTIPLE:Ljava/lang/String; = "m"

.field private static final ATTR_NEXT_SERIAL_NO:Ljava/lang/String; = "nextSerialNumber"

.field private static final ATTR_PARTIAL:Ljava/lang/String; = "partial"

.field private static final ATTR_PROFILE_BADGE:Ljava/lang/String; = "profileBadge"

.field private static final ATTR_PROFILE_GROUP_ID:Ljava/lang/String; = "profileGroupId"

.field private static final ATTR_RESTRICTED_PROFILE_PARENT_ID:Ljava/lang/String; = "restrictedProfileParentId"

.field private static final ATTR_SEED_ACCOUNT_NAME:Ljava/lang/String; = "seedAccountName"

.field private static final ATTR_SEED_ACCOUNT_TYPE:Ljava/lang/String; = "seedAccountType"

.field private static final ATTR_SERIAL_NO:Ljava/lang/String; = "serialNumber"

.field private static final ATTR_TYPE_BOOLEAN:Ljava/lang/String; = "b"

.field private static final ATTR_TYPE_BUNDLE:Ljava/lang/String; = "B"

.field private static final ATTR_TYPE_BUNDLE_ARRAY:Ljava/lang/String; = "BA"

.field private static final ATTR_TYPE_INTEGER:Ljava/lang/String; = "i"

.field private static final ATTR_TYPE_STRING:Ljava/lang/String; = "s"

.field private static final ATTR_TYPE_STRING_ARRAY:Ljava/lang/String; = "sa"

.field private static final ATTR_USER_VERSION:Ljava/lang/String; = "version"

.field private static final ATTR_VALUE_TYPE:Ljava/lang/String; = "type"

.field static final DBG:Z = false

.field private static final DBG_WITH_STACKTRACE:Z = false

.field private static final EPOCH_PLUS_30_YEARS:J = 0xdc46c32800L

.field private static final LOG_TAG:Ljava/lang/String; = "UserManagerService"

.field private static final MAX_MANAGED_PROFILES:I = 0x1

.field static final MAX_RECENTLY_REMOVED_IDS_SIZE:I = 0x64
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MAX_USER_ID:I = 0x53e2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MIN_USER_ID:I = 0xa
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final RELEASE_DELETED_USER_ID:Z = false

.field private static final RESTRICTIONS_FILE_PREFIX:Ljava/lang/String; = "res_"

.field private static final TAG_ACCOUNT:Ljava/lang/String; = "account"

.field private static final TAG_DEVICE_OWNER_USER_ID:Ljava/lang/String; = "deviceOwnerUserId"

.field private static final TAG_DEVICE_POLICY_GLOBAL_RESTRICTIONS:Ljava/lang/String; = "device_policy_global_restrictions"

.field private static final TAG_DEVICE_POLICY_RESTRICTIONS:Ljava/lang/String; = "device_policy_restrictions"

.field private static final TAG_ENTRY:Ljava/lang/String; = "entry"

.field private static final TAG_GLOBAL_RESTRICTION_OWNER_ID:Ljava/lang/String; = "globalRestrictionOwnerUserId"

.field private static final TAG_GUEST_RESTRICTIONS:Ljava/lang/String; = "guestRestrictions"

.field private static final TAG_NAME:Ljava/lang/String; = "name"

.field private static final TAG_RESTRICTIONS:Ljava/lang/String; = "restrictions"

.field private static final TAG_SEED_ACCOUNT_OPTIONS:Ljava/lang/String; = "seedAccountOptions"

.field private static final TAG_USER:Ljava/lang/String; = "user"

.field private static final TAG_USERS:Ljava/lang/String; = "users"

.field private static final TAG_VALUE:Ljava/lang/String; = "value"

.field private static final TRON_DEMO_CREATED:Ljava/lang/String; = "users_demo_created"

.field private static final TRON_GUEST_CREATED:Ljava/lang/String; = "users_guest_created"

.field private static final TRON_USER_CREATED:Ljava/lang/String; = "users_user_created"

.field private static final USER_INFO_DIR:Ljava/lang/String;

.field private static final USER_LIST_FILENAME:Ljava/lang/String; = "userlist.xml"

.field private static final USER_PHOTO_FILENAME:Ljava/lang/String; = "photo.png"

.field private static final USER_PHOTO_FILENAME_TMP:Ljava/lang/String; = "photo.png.tmp"

.field private static final USER_VERSION:I = 0x7

.field static final WRITE_USER_DELAY:I = 0x7d0

.field static final WRITE_USER_MSG:I = 0x1

.field private static final XML_SUFFIX:Ljava/lang/String; = ".xml"

.field private static final mUserRestriconToken:Landroid/os/IBinder;

.field private static sInstance:Lcom/android/server/pm/UserManagerService;


# instance fields
.field private final ACTION_DISABLE_QUIET_MODE_AFTER_UNLOCK:Ljava/lang/String;

.field private mAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field private final mAppRestrictionsLock:Ljava/lang/Object;

.field private final mAppliedUserRestrictions:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRestrictionsLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final mBaseUserRestrictions:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRestrictionsLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRestrictionsLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDeviceOwnerUserId:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRestrictionsLock"
    .end annotation
.end field

.field private final mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRestrictionsLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRestrictionsLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisableQuietModeCallback:Landroid/content/BroadcastReceiver;

.field private mForceEphemeralUsers:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUsersLock"
    .end annotation
.end field

.field private final mGuestRestrictions:Landroid/os/Bundle;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mGuestRestrictions"
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mIsDeviceManaged:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUsersLock"
    .end annotation
.end field

.field private final mIsUserManaged:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUsersLock"
    .end annotation
.end field

.field private final mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNextSerialNumber:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mPackagesLock"
    .end annotation
.end field

.field private final mPackagesLock:Ljava/lang/Object;

.field private final mPm:Lcom/android/server/pm/PackageManagerService;

.field private final mRecentlyRemovedIds:Ljava/util/LinkedList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUsersLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemovingUserIds:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUsersLock"
    .end annotation
.end field

.field private final mRestrictionsLock:Ljava/lang/Object;

.field private final mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

.field private mUserIds:[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUsersLock"
    .end annotation
.end field

.field private final mUserListFile:Ljava/io/File;

.field private final mUserRestrictionsListeners:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUserRestrictionsListeners"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/UserManagerInternal$UserRestrictionsListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserStates:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUserStates"
    .end annotation
.end field

.field private mUserVersion:I

.field private final mUsers:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUsersLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/UserManagerService$UserData;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsersDir:Ljava/io/File;

.field private final mUsersLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "users"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserManagerService;->USER_INFO_DIR:Ljava/lang/String;

    .line 246
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sput-object v0, Lcom/android/server/pm/UserManagerService;->mUserRestriconToken:Landroid/os/IBinder;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 504
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/UserManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/UserDataPreparer;Ljava/lang/Object;Ljava/io/File;)V

    .line 505
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/UserDataPreparer;Ljava/lang/Object;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p3, "userDataPreparer"    # Lcom/android/server/pm/UserDataPreparer;
    .param p4, "packagesLock"    # Ljava/lang/Object;

    .line 514
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/UserManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/UserDataPreparer;Ljava/lang/Object;Ljava/io/File;)V

    .line 515
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/UserDataPreparer;Ljava/lang/Object;Ljava/io/File;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p3, "userDataPreparer"    # Lcom/android/server/pm/UserDataPreparer;
    .param p4, "packagesLock"    # Ljava/lang/Object;
    .param p5, "dataDir"    # Ljava/io/File;

    .line 518
    invoke-direct {p0}, Landroid/os/IUserManager$Stub;-><init>()V

    .line 236
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/server/LockGuard;->installNewLock(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    .line 237
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    .line 239
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mAppRestrictionsLock:Ljava/lang/Object;

    .line 281
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    .line 295
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    .line 310
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    .line 319
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mAppliedUserRestrictions:Landroid/util/SparseArray;

    .line 327
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    .line 333
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    .line 340
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    .line 343
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    .line 351
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    .line 357
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRecentlyRemovedIds:Ljava/util/LinkedList;

    .line 364
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 373
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mIsUserManaged:Landroid/util/SparseBooleanArray;

    .line 376
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserRestrictionsListeners:Ljava/util/ArrayList;

    .line 382
    const-string v1, "com.android.server.pm.DISABLE_QUIET_MODE_AFTER_UNLOCK"

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->ACTION_DISABLE_QUIET_MODE_AFTER_UNLOCK:Ljava/lang/String;

    .line 385
    new-instance v1, Lcom/android/server/pm/UserManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/pm/UserManagerService$1;-><init>(Lcom/android/server/pm/UserManagerService;)V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDisableQuietModeCallback:Landroid/content/BroadcastReceiver;

    .line 434
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    .line 519
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    .line 520
    iput-object p2, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 521
    iput-object p4, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    .line 522
    new-instance v1, Lcom/android/server/pm/UserManagerService$MainHandler;

    invoke-direct {v1, p0}, Lcom/android/server/pm/UserManagerService$MainHandler;-><init>(Lcom/android/server/pm/UserManagerService;)V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    .line 523
    iput-object p3, p0, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    .line 524
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 525
    :try_start_90
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/android/server/pm/UserManagerService;->USER_INFO_DIR:Ljava/lang/String;

    invoke-direct {v2, p5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    .line 526
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 528
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 529
    .local v2, "userZeroDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 530
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1fd

    const/4 v5, -0x1

    invoke-static {v3, v4, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 533
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    const-string/jumbo v5, "userlist.xml"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    .line 534
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->initDefaultGuestRestrictions()V

    .line 535
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->readUserListLP()V

    .line 536
    sput-object p0, Lcom/android/server/pm/UserManagerService;->sInstance:Lcom/android/server/pm/UserManagerService;

    .line 537
    .end local v2    # "userZeroDir":Ljava/io/File;
    monitor-exit v1
    :try_end_cd
    .catchall {:try_start_90 .. :try_end_cd} :catchall_eb

    .line 538
    new-instance v1, Lcom/android/server/pm/UserManagerService$LocalService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/pm/UserManagerService$LocalService;-><init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$1;)V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    .line 539
    const-class v1, Landroid/os/UserManagerInternal;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-static {v1, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 540
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 541
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 542
    return-void

    .line 537
    :catchall_eb
    move-exception v0

    :try_start_ec
    monitor-exit v1
    :try_end_ed
    .catchall {:try_start_ec .. :try_end_ed} :catchall_eb

    throw v0
.end method

.method static synthetic access$000(Lcom/android/server/pm/UserManagerService;IZLandroid/content/IntentSender;)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # Landroid/content/IntentSender;

    .line 139
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->setQuietModeEnabled(IZLandroid/content/IntentSender;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/pm/UserManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;

    .line 139
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;

    .line 139
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/pm/UserManagerService;I)Lcom/android/server/pm/UserManagerService$UserData;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"    # I

    .line 139
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$UserData;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"    # Lcom/android/server/pm/UserManagerService$UserData;

    .line 139
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/pm/UserManagerService;ILandroid/os/Bundle;ZI)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/Bundle;
    .param p3, "x3"    # Z
    .param p4, "x4"    # I

    .line 139
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/UserManagerService;->setDevicePolicyUserRestrictionsInner(ILandroid/os/Bundle;ZI)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;

    .line 139
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/pm/UserManagerService;ILandroid/os/Bundle;Landroid/util/SparseArray;)Z
    .registers 5
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/Bundle;
    .param p3, "x3"    # Landroid/util/SparseArray;

    .line 139
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->updateRestrictionsIfNeededLR(ILandroid/os/Bundle;Landroid/util/SparseArray;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/pm/UserManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"    # I

    .line 139
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->invalidateEffectiveUserRestrictionsLR(I)V

    return-void
.end method

.method static synthetic access$1802(Lcom/android/server/pm/UserManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"    # Z

    .line 139
    iput-boolean p1, p0, Lcom/android/server/pm/UserManagerService;->mIsDeviceManaged:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseBooleanArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;

    .line 139
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mIsUserManaged:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;

    .line 139
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/pm/UserManagerService;Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"    # Landroid/content/pm/UserInfo;
    .param p2, "x2"    # Landroid/graphics/Bitmap;

    .line 139
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->writeBitmapLP(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/pm/UserManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"    # I

    .line 139
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->sendUserInfoChangedBroadcast(I)V

    return-void
.end method

.method static synthetic access$2202(Lcom/android/server/pm/UserManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"    # Z

    .line 139
    iput-boolean p1, p0, Lcom/android/server/pm/UserManagerService;->mForceEphemeralUsers:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/server/pm/UserManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;

    .line 139
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->removeNonSystemUsers()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/pm/UserManagerService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;

    .line 139
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/pm/UserManagerService;I)Landroid/content/pm/UserInfo;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"    # I

    .line 139
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/pm/UserManagerService;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .registers 6
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # [Ljava/lang/String;

    .line 139
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/UserManagerService;->createUserInternalUnchecked(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/pm/UserManagerService;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"    # I

    .line 139
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserUnchecked(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseIntArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;

    .line 139
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/pm/UserManagerService;I)Landroid/content/pm/UserInfo;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"    # I

    .line 139
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/pm/UserManagerService;I)Lcom/android/server/pm/UserManagerService$UserData;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"    # I

    .line 139
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/pm/UserManagerService;I)Landroid/content/pm/UserInfo;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"    # I

    .line 139
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()Landroid/os/IBinder;
    .registers 1

    .line 139
    sget-object v0, Lcom/android/server/pm/UserManagerService;->mUserRestriconToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/pm/UserManagerService;)Lcom/android/internal/app/IAppOpsService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;

    .line 139
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/pm/UserManagerService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;

    .line 139
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserRestrictionsListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;

    .line 139
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/pm/UserManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"    # I

    .line 139
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserState(I)V

    return-void
.end method

.method private broadcastProfileAvailabilityChanges(Landroid/os/UserHandle;Landroid/os/UserHandle;Z)V
    .registers 7
    .param p1, "profileHandle"    # Landroid/os/UserHandle;
    .param p2, "parentHandle"    # Landroid/os/UserHandle;
    .param p3, "inQuietMode"    # Z

    .line 810
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 811
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p3, :cond_d

    .line 812
    const-string v1, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_12

    .line 814
    :cond_d
    const-string v1, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 816
    :goto_12
    const-string v1, "android.intent.extra.QUIET_MODE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 817
    const-string v1, "android.intent.extra.USER"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 818
    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 819
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 820
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 821
    return-void
.end method

.method private static final checkManageOrCreateUsersPermission(I)V
    .registers 4
    .param p0, "creationFlags"    # I

    .line 1888
    and-int/lit16 v0, p0, -0x32d

    if-nez v0, :cond_22

    .line 1889
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageOrCreateUsersPermission()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_28

    .line 1890
    :cond_b
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You either need MANAGE_USERS or CREATE_USERS permission to create an user with flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1893
    :cond_22
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1897
    :goto_28
    return-void

    .line 1894
    :cond_29
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You need MANAGE_USERS permission to create an user  with flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final checkManageOrCreateUsersPermission(Ljava/lang/String;)V
    .registers 4
    .param p0, "message"    # Ljava/lang/String;

    .line 1875
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageOrCreateUsersPermission()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1879
    return-void

    .line 1876
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You either need MANAGE_USERS or CREATE_USERS permission to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkManageOrInteractPermIfCallerInOtherProfileGroup(ILjava/lang/String;)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 1143
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1144
    .local v0, "callingUserId":I
    if-eq v0, p1, :cond_37

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroupNoChecks(II)Z

    move-result v1

    if-nez v1, :cond_37

    .line 1145
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_37

    .line 1148
    :cond_13
    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    .line 1149
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1148
    invoke-static {v1, v2}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1153
    return-void

    .line 1150
    :cond_20
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You need INTERACT_ACROSS_USERS or MANAGE_USERS permission to: check "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1146
    :cond_37
    :goto_37
    return-void
.end method

.method private static final checkManageUserAndAcrossUsersFullPermission(Ljava/lang/String;)V
    .registers 5
    .param p0, "message"    # Ljava/lang/String;

    .line 1826
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1828
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_33

    if-nez v0, :cond_b

    goto :goto_33

    .line 1833
    :cond_b
    const-string v1, "android.permission.MANAGE_USERS"

    invoke-static {v1, v0}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1c

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 1834
    invoke-static {v1, v0}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1836
    return-void

    .line 1839
    :cond_1c
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You need MANAGE_USERS and INTERACT_ACROSS_USERS_FULL permission to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1830
    :cond_33
    :goto_33
    return-void
.end method

.method private static final checkManageUsersPermission(Ljava/lang/String;)V
    .registers 4
    .param p0, "message"    # Ljava/lang/String;

    .line 1859
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1862
    return-void

    .line 1860
    :cond_7
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

.method private static checkSystemOrRoot(Ljava/lang/String;)V
    .registers 5
    .param p0, "message"    # Ljava/lang/String;

    .line 1931
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1932
    .local v0, "uid":I
    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-nez v1, :cond_26

    if-nez v0, :cond_f

    goto :goto_26

    .line 1933
    :cond_f
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Only system may: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1935
    :cond_26
    :goto_26
    return-void
.end method

.method private static cleanAppRestrictionsForPackageLAr(Ljava/lang/String;I)V
    .registers 5
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .line 2551
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    .line 2552
    .local v0, "dir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2553
    .local v1, "resFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 2554
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 2556
    :cond_16
    return-void
.end method

.method private computeEffectiveUserRestrictionsLR(I)Landroid/os/Bundle;
    .registers 6
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRestrictionsLock"
    .end annotation

    .line 1462
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    .line 1463
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-static {v0}, Lcom/android/server/pm/UserRestrictionsUtils;->nonNull(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 1464
    .local v0, "baseRestrictions":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    invoke-static {v1}, Lcom/android/server/pm/UserRestrictionsUtils;->mergeAll(Landroid/util/SparseArray;)Landroid/os/Bundle;

    move-result-object v1

    .line 1465
    .local v1, "global":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 1467
    .local v2, "local":Landroid/os/Bundle;
    invoke-static {v1}, Lcom/android/server/pm/UserRestrictionsUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-static {v2}, Lcom/android/server/pm/UserRestrictionsUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 1469
    return-object v0

    .line 1471
    :cond_27
    invoke-static {v0}, Lcom/android/server/pm/UserRestrictionsUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 1472
    .local v3, "effective":Landroid/os/Bundle;
    invoke-static {v3, v1}, Lcom/android/server/pm/UserRestrictionsUtils;->merge(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 1473
    invoke-static {v3, v2}, Lcom/android/server/pm/UserRestrictionsUtils;->merge(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 1475
    return-object v3
.end method

.method private createUserInternal(Ljava/lang/String;II)Landroid/content/pm/UserInfo;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "parentId"    # I

    .line 2585
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/pm/UserManagerService;->createUserInternal(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method private createUserInternal(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "parentId"    # I
    .param p4, "disallowedPackages"    # [Ljava/lang/String;

    .line 2590
    and-int/lit8 v0, p2, 0x20

    if-eqz v0, :cond_8

    .line 2591
    const-string/jumbo v0, "no_add_managed_profile"

    goto :goto_b

    .line 2592
    :cond_8
    const-string/jumbo v0, "no_add_user"

    .line 2593
    .local v0, "restriction":Ljava/lang/String;
    :goto_b
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 2594
    const-string v1, "UserManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot add user. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is enabled."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2595
    const/4 v1, 0x0

    return-object v1

    .line 2597
    :cond_32
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/UserManagerService;->createUserInternalUnchecked(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v1

    return-object v1
.end method

.method private createUserInternalUnchecked(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .registers 31
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "parentId"    # I
    .param p4, "disallowedPackages"    # [Ljava/lang/String;

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    .line 2602
    const-class v0, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    .line 2603
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    .line 2604
    .local v4, "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    invoke-interface {v4}, Lcom/android/server/storage/DeviceStorageMonitorInternal;->isMemoryLow()Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_1e

    .line 2605
    const-string v0, "UserManagerService"

    const-string v6, "Cannot add user. Not enough space on disk."

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2606
    return-object v5

    .line 2608
    :cond_1e
    and-int/lit8 v0, v2, 0x4

    const/4 v6, 0x0

    if-eqz v0, :cond_25

    const/4 v0, 0x1

    goto :goto_26

    :cond_25
    move v0, v6

    :goto_26
    move v8, v0

    .line 2611
    .local v8, "isGuest":Z
    const v0, 0x800020

    and-int/2addr v0, v2

    if-eqz v0, :cond_2f

    const/4 v0, 0x1

    goto :goto_30

    :cond_2f
    move v0, v6

    :goto_30
    move v9, v0

    .line 2614
    .local v9, "isManagedProfile":Z
    and-int/lit8 v0, v2, 0x8

    if-eqz v0, :cond_37

    const/4 v0, 0x1

    goto :goto_38

    :cond_37
    move v0, v6

    :goto_38
    move v10, v0

    .line 2615
    .local v10, "isRestricted":Z
    and-int/lit16 v0, v2, 0x200

    if-eqz v0, :cond_3f

    const/4 v0, 0x1

    goto :goto_40

    :cond_3f
    move v0, v6

    :goto_40
    move v11, v0

    .line 2616
    .local v11, "isDemo":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 2621
    .local v12, "ident":J
    :try_start_45
    iget-object v14, v1, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v14
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_2cc

    .line 2622
    const/4 v15, 0x0

    .line 2623
    .local v15, "parent":Lcom/android/server/pm/UserManagerService$UserData;
    const/16 v0, -0x2710

    if-eq v3, v0, :cond_66

    .line 2624
    :try_start_4d
    iget-object v7, v1, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_61

    .line 2625
    :try_start_50
    invoke-direct {v1, v3}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v16

    move-object/from16 v15, v16

    .line 2626
    monitor-exit v7
    :try_end_57
    .catchall {:try_start_50 .. :try_end_57} :catchall_5e

    .line 2627
    if-nez v15, :cond_66

    :try_start_59
    monitor-exit v14
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_61

    .line 2750
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2627
    return-object v5

    .line 2626
    :catchall_5e
    move-exception v0

    :try_start_5f
    monitor-exit v7
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    :try_start_60
    throw v0

    .line 2722
    .end local v15    # "parent":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_61
    move-exception v0

    move-object/from16 v17, v4

    goto/16 :goto_2c4

    .line 2629
    .restart local v15    # "parent":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_66
    if-eqz v9, :cond_89

    invoke-virtual {v1, v3, v6}, Lcom/android/server/pm/UserManagerService;->canAddMoreManagedProfiles(IZ)Z

    move-result v7

    if-nez v7, :cond_89

    .line 2630
    const-string v0, "UserManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot add more managed profiles for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2631
    monitor-exit v14
    :try_end_85
    .catchall {:try_start_60 .. :try_end_85} :catchall_61

    .line 2750
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2631
    return-object v5

    .line 2633
    :cond_89
    if-nez v8, :cond_9a

    if-nez v9, :cond_9a

    if-nez v11, :cond_9a

    :try_start_8f
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->isUserLimitReached()Z

    move-result v7

    if-eqz v7, :cond_9a

    .line 2636
    monitor-exit v14
    :try_end_96
    .catchall {:try_start_8f .. :try_end_96} :catchall_61

    .line 2750
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2636
    return-object v5

    .line 2639
    :cond_9a
    if-eqz v8, :cond_a7

    :try_start_9c
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->findCurrentGuestUser()Landroid/content/pm/UserInfo;

    move-result-object v7

    if-eqz v7, :cond_a7

    .line 2640
    monitor-exit v14
    :try_end_a3
    .catchall {:try_start_9c .. :try_end_a3} :catchall_61

    .line 2750
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2640
    return-object v5

    .line 2643
    :cond_a7
    if-eqz v10, :cond_bd

    :try_start_a9
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v7

    if-nez v7, :cond_bd

    if-eqz v3, :cond_bd

    .line 2645
    const-string v0, "UserManagerService"

    const-string v6, "Cannot add restricted profile - parent user must be owner"

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2646
    monitor-exit v14
    :try_end_b9
    .catchall {:try_start_a9 .. :try_end_b9} :catchall_61

    .line 2750
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2646
    return-object v5

    .line 2648
    :cond_bd
    if-eqz v10, :cond_f6

    :try_start_bf
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v7

    if-eqz v7, :cond_f6

    .line 2649
    if-nez v15, :cond_d3

    .line 2650
    const-string v0, "UserManagerService"

    const-string v6, "Cannot add restricted profile - parent user must be specified"

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2652
    monitor-exit v14
    :try_end_cf
    .catchall {:try_start_bf .. :try_end_cf} :catchall_61

    .line 2750
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2652
    return-object v5

    .line 2654
    :cond_d3
    :try_start_d3
    iget-object v7, v15, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->canHaveProfile()Z

    move-result v7

    if-nez v7, :cond_f6

    .line 2655
    const-string v0, "UserManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot add restricted profile - profiles cannot be created for the specified parent user id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2657
    monitor-exit v14
    :try_end_f2
    .catchall {:try_start_d3 .. :try_end_f2} :catchall_61

    .line 2750
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2657
    return-object v5

    .line 2662
    :cond_f6
    :try_start_f6
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v7
    :try_end_fa
    .catchall {:try_start_f6 .. :try_end_fa} :catchall_2c1

    if-eqz v7, :cond_116

    if-nez v8, :cond_116

    if-nez v9, :cond_116

    .line 2663
    :try_start_100
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->getPrimaryUser()Landroid/content/pm/UserInfo;

    move-result-object v7

    if-nez v7, :cond_116

    .line 2664
    or-int/lit8 v2, v2, 0x1

    .line 2665
    .end local p2    # "flags":I
    .local v2, "flags":I
    iget-object v7, v1, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_10b
    .catchall {:try_start_100 .. :try_end_10b} :catchall_61

    .line 2666
    :try_start_10b
    iget-boolean v6, v1, Lcom/android/server/pm/UserManagerService;->mIsDeviceManaged:Z

    if-nez v6, :cond_111

    .line 2667
    or-int/lit8 v2, v2, 0x2

    .line 2669
    :cond_111
    monitor-exit v7

    goto :goto_116

    :catchall_113
    move-exception v0

    monitor-exit v7
    :try_end_115
    .catchall {:try_start_10b .. :try_end_115} :catchall_113

    :try_start_115
    throw v0
    :try_end_116
    .catchall {:try_start_115 .. :try_end_116} :catchall_61

    .line 2675
    :cond_116
    :goto_116
    :try_start_116
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->getNextAvailableId()I

    move-result v6

    invoke-static {v2, v6}, Lcom/android/server/pm/UserManagerServiceInjector;->checkAndGetNewUserId(II)I

    move-result v6

    .line 2676
    .local v6, "userId":I
    invoke-virtual {v1, v6}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v7
    :try_end_122
    .catchall {:try_start_116 .. :try_end_122} :catchall_2c1

    if-eqz v7, :cond_146

    .line 2677
    :try_start_124
    const-string v0, "UserManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "user "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is exist, we could not create same user"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2678
    monitor-exit v14
    :try_end_141
    .catchall {:try_start_124 .. :try_end_141} :catchall_61

    .line 2750
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2678
    const/4 v0, 0x0

    return-object v0

    .line 2681
    :cond_146
    :try_start_146
    invoke-static {v6}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 2682
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x1120078

    .line 2683
    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    .line 2685
    .local v5, "ephemeralGuests":Z
    iget-object v7, v1, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_15b
    .catchall {:try_start_146 .. :try_end_15b} :catchall_2c1

    .line 2687
    if-eqz v8, :cond_15f

    if-nez v5, :cond_175

    :cond_15f
    :try_start_15f
    iget-boolean v0, v1, Lcom/android/server/pm/UserManagerService;->mForceEphemeralUsers:Z
    :try_end_161
    .catchall {:try_start_15f .. :try_end_161} :catchall_2b8

    if-nez v0, :cond_175

    if-eqz v15, :cond_178

    :try_start_165
    iget-object v0, v15, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 2688
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v0
    :try_end_16b
    .catchall {:try_start_165 .. :try_end_16b} :catchall_16e

    if-eqz v0, :cond_178

    goto :goto_175

    .line 2704
    :catchall_16e
    move-exception v0

    move-object/from16 v17, v4

    move/from16 v18, v5

    goto/16 :goto_2bd

    .line 2689
    :cond_175
    :goto_175
    or-int/lit16 v0, v2, 0x100

    .line 2692
    .end local v2    # "flags":I
    .local v0, "flags":I
    move v2, v0

    .line 2692
    .end local v0    # "flags":I
    .restart local v2    # "flags":I
    :cond_178
    :try_start_178
    new-instance v0, Landroid/content/pm/UserInfo;
    :try_end_17a
    .catchall {:try_start_178 .. :try_end_17a} :catchall_2b0

    move-object/from16 v17, v4

    move/from16 v18, v5

    const/4 v5, 0x0

    move-object/from16 v4, p1

    :try_start_181
    invoke-direct {v0, v6, v4, v5, v2}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 2693
    .end local v4    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .end local v5    # "ephemeralGuests":Z
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    .local v17, "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .local v18, "ephemeralGuests":Z
    iget v5, v1, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I
    :try_end_186
    .catchall {:try_start_181 .. :try_end_186} :catchall_2ac

    move/from16 v19, v2

    add-int/lit8 v2, v5, 0x1

    .line 2693
    .end local v2    # "flags":I
    .local v19, "flags":I
    :try_start_18a
    iput v2, v1, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    iput v5, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    .line 2694
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 2695
    .local v20, "now":J
    const-wide v22, 0xdc46c32800L

    cmp-long v2, v20, v22

    if-lez v2, :cond_19e

    move-wide/from16 v4, v20

    goto :goto_1a2

    :cond_19e
    const-wide/16 v22, 0x0

    move-wide/from16 v4, v22

    :goto_1a2
    iput-wide v4, v0, Landroid/content/pm/UserInfo;->creationTime:J

    .line 2696
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/content/pm/UserInfo;->partial:Z

    .line 2697
    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    iput-object v2, v0, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    .line 2698
    if-eqz v9, :cond_1b7

    const/16 v2, -0x2710

    if-eq v3, v2, :cond_1b7

    .line 2699
    invoke-virtual {v1, v3}, Lcom/android/server/pm/UserManagerService;->getFreeProfileBadgeLU(I)I

    move-result v2

    iput v2, v0, Landroid/content/pm/UserInfo;->profileBadge:I

    .line 2701
    :cond_1b7
    new-instance v2, Lcom/android/server/pm/UserManagerService$UserData;

    invoke-direct {v2}, Lcom/android/server/pm/UserManagerService$UserData;-><init>()V

    .line 2702
    .local v2, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    iput-object v0, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 2703
    iget-object v4, v1, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2704
    .end local v20    # "now":J
    monitor-exit v7
    :try_end_1c4
    .catchall {:try_start_18a .. :try_end_1c4} :catchall_2a8

    .line 2705
    :try_start_1c4
    invoke-direct {v1, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 2706
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V
    :try_end_1ca
    .catchall {:try_start_1c4 .. :try_end_1ca} :catchall_2a2

    .line 2707
    if-eqz v15, :cond_206

    .line 2708
    if-eqz v9, :cond_1eb

    .line 2709
    :try_start_1ce
    iget-object v4, v15, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v5, -0x2710

    if-ne v4, v5, :cond_1e1

    .line 2710
    iget-object v4, v15, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v5, v15, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    iput v5, v4, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 2711
    invoke-direct {v1, v15}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 2713
    :cond_1e1
    iget-object v4, v15, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->profileGroupId:I

    iput v4, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    goto :goto_206

    .line 2722
    .end local v0    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v2    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .end local v6    # "userId":I
    .end local v15    # "parent":Lcom/android/server/pm/UserManagerService$UserData;
    .end local v18    # "ephemeralGuests":Z
    :catchall_1e8
    move-exception v0

    goto/16 :goto_2a5

    .line 2714
    .restart local v0    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v2    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .restart local v6    # "userId":I
    .restart local v15    # "parent":Lcom/android/server/pm/UserManagerService$UserData;
    .restart local v18    # "ephemeralGuests":Z
    :cond_1eb
    if-eqz v10, :cond_206

    .line 2715
    iget-object v4, v15, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    const/16 v5, -0x2710

    if-ne v4, v5, :cond_200

    .line 2716
    iget-object v4, v15, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v5, v15, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    iput v5, v4, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    .line 2717
    invoke-direct {v1, v15}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 2719
    :cond_200
    iget-object v4, v15, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    iput v4, v0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I
    :try_end_206
    .catchall {:try_start_1ce .. :try_end_206} :catchall_1e8

    .line 2722
    .end local v15    # "parent":Lcom/android/server/pm/UserManagerService$UserData;
    .end local v18    # "ephemeralGuests":Z
    :cond_206
    :goto_206
    :try_start_206
    monitor-exit v14
    :try_end_207
    .catchall {:try_start_206 .. :try_end_207} :catchall_2a2

    move-object v4, v0

    .line 2722
    .end local v0    # "userInfo":Landroid/content/pm/UserInfo;
    .local v4, "userInfo":Landroid/content/pm/UserInfo;
    move v5, v6

    .line 2723
    .end local v6    # "userId":I
    .local v5, "userId":I
    :try_start_209
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-class v6, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    move-object v6, v0

    .line 2724
    .local v6, "storage":Landroid/os/storage/StorageManager;
    iget v0, v4, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v7

    invoke-virtual {v6, v5, v0, v7}, Landroid/os/storage/StorageManager;->createUserKey(IIZ)V

    .line 2725
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    iget v7, v4, Landroid/content/pm/UserInfo;->serialNumber:I

    const/4 v14, 0x3

    invoke-virtual {v0, v5, v7, v14}, Lcom/android/server/pm/UserDataPreparer;->prepareUserData(III)V

    .line 2727
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;
    :try_end_227
    .catchall {:try_start_209 .. :try_end_227} :catchall_29e

    move-object/from16 v7, p4

    :try_start_229
    invoke-virtual {v0, v5, v7}, Lcom/android/server/pm/PackageManagerService;->createNewUser(I[Ljava/lang/String;)V

    .line 2728
    const/4 v0, 0x0

    iput-boolean v0, v4, Landroid/content/pm/UserInfo;->partial:Z

    .line 2729
    iget-object v14, v1, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v14
    :try_end_232
    .catchall {:try_start_229 .. :try_end_232} :catchall_29c

    .line 2730
    :try_start_232
    invoke-direct {v1, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 2731
    monitor-exit v14
    :try_end_236
    .catchall {:try_start_232 .. :try_end_236} :catchall_295

    .line 2732
    :try_start_236
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->updateUserIds()V

    .line 2733
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v14, v0

    .line 2734
    .local v14, "restrictions":Landroid/os/Bundle;
    if-eqz v8, :cond_24e

    .line 2735
    iget-object v15, v1, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v15
    :try_end_244
    .catchall {:try_start_236 .. :try_end_244} :catchall_29c

    .line 2736
    :try_start_244
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 2737
    monitor-exit v15

    goto :goto_24e

    :catchall_24b
    move-exception v0

    monitor-exit v15
    :try_end_24d
    .catchall {:try_start_244 .. :try_end_24d} :catchall_24b

    :try_start_24d
    throw v0

    .line 2739
    :cond_24e
    :goto_24e
    iget-object v15, v1, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v15
    :try_end_251
    .catchall {:try_start_24d .. :try_end_251} :catchall_29c

    .line 2740
    :try_start_251
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, v5, v14}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2741
    monitor-exit v15
    :try_end_257
    .catchall {:try_start_251 .. :try_end_257} :catchall_28e

    .line 2742
    :try_start_257
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/pm/PackageManagerService;->onNewUserCreated(I)V

    .line 2743
    new-instance v0, Landroid/content/Intent;

    const-string v15, "android.intent.action.USER_ADDED"

    invoke-direct {v0, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2744
    .local v0, "addedIntent":Landroid/content/Intent;
    const-string v15, "android.intent.extra.user_handle"

    invoke-virtual {v0, v15, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2745
    iget-object v15, v1, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v24, v2

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 2745
    .end local v2    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .local v24, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    const-string v3, "android.permission.MANAGE_USERS"

    invoke-virtual {v15, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2747
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    if-eqz v8, :cond_27b

    const-string/jumbo v3, "users_guest_created"

    goto :goto_284

    .line 2748
    :cond_27b
    if-eqz v11, :cond_281

    const-string/jumbo v3, "users_demo_created"

    goto :goto_284

    :cond_281
    const-string/jumbo v3, "users_user_created"

    .line 2747
    :goto_284
    const/4 v15, 0x1

    invoke-static {v2, v3, v15}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_288
    .catchall {:try_start_257 .. :try_end_288} :catchall_29c

    .line 2750
    .end local v0    # "addedIntent":Landroid/content/Intent;
    .end local v6    # "storage":Landroid/os/storage/StorageManager;
    .end local v14    # "restrictions":Landroid/os/Bundle;
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2751
    nop

    .line 2750
    nop

    .line 2752
    return-object v4

    .line 2741
    .end local v24    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .restart local v2    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .restart local v6    # "storage":Landroid/os/storage/StorageManager;
    .restart local v14    # "restrictions":Landroid/os/Bundle;
    :catchall_28e
    move-exception v0

    move-object/from16 v24, v2

    .line 2741
    .end local v2    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .restart local v24    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :goto_291
    :try_start_291
    monitor-exit v15
    :try_end_292
    .catchall {:try_start_291 .. :try_end_292} :catchall_293

    :try_start_292
    throw v0
    :try_end_293
    .catchall {:try_start_292 .. :try_end_293} :catchall_29c

    :catchall_293
    move-exception v0

    goto :goto_291

    .line 2731
    .end local v14    # "restrictions":Landroid/os/Bundle;
    .end local v24    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .restart local v2    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_295
    move-exception v0

    move-object/from16 v24, v2

    .line 2731
    .end local v2    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .restart local v24    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :goto_298
    :try_start_298
    monitor-exit v14
    :try_end_299
    .catchall {:try_start_298 .. :try_end_299} :catchall_29a

    :try_start_299
    throw v0
    :try_end_29a
    .catchall {:try_start_299 .. :try_end_29a} :catchall_29c

    :catchall_29a
    move-exception v0

    goto :goto_298

    .line 2750
    .end local v4    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v5    # "userId":I
    .end local v6    # "storage":Landroid/os/storage/StorageManager;
    .end local v24    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_29c
    move-exception v0

    goto :goto_2d1

    :catchall_29e
    move-exception v0

    move-object/from16 v7, p4

    goto :goto_2d1

    .line 2722
    :catchall_2a2
    move-exception v0

    move-object/from16 v7, p4

    .line 2722
    .end local v19    # "flags":I
    .local v2, "flags":I
    :goto_2a5
    move/from16 v2, v19

    goto :goto_2c4

    .line 2704
    .end local v2    # "flags":I
    .local v6, "userId":I
    .restart local v15    # "parent":Lcom/android/server/pm/UserManagerService$UserData;
    .restart local v18    # "ephemeralGuests":Z
    .restart local v19    # "flags":I
    :catchall_2a8
    move-exception v0

    move/from16 v2, v19

    goto :goto_2bd

    .line 2704
    .end local v19    # "flags":I
    .restart local v2    # "flags":I
    :catchall_2ac
    move-exception v0

    move/from16 v19, v2

    .line 2704
    .end local v2    # "flags":I
    .restart local v19    # "flags":I
    goto :goto_2bd

    .line 2704
    .end local v17    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .end local v18    # "ephemeralGuests":Z
    .end local v19    # "flags":I
    .restart local v2    # "flags":I
    .local v4, "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .local v5, "ephemeralGuests":Z
    :catchall_2b0
    move-exception v0

    move/from16 v19, v2

    move-object/from16 v17, v4

    move/from16 v18, v5

    .line 2704
    .end local v2    # "flags":I
    .end local v4    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .end local v5    # "ephemeralGuests":Z
    .restart local v17    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .restart local v18    # "ephemeralGuests":Z
    .restart local v19    # "flags":I
    goto :goto_2bd

    .line 2704
    .end local v17    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .end local v18    # "ephemeralGuests":Z
    .end local v19    # "flags":I
    .restart local v2    # "flags":I
    .restart local v4    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .restart local v5    # "ephemeralGuests":Z
    :catchall_2b8
    move-exception v0

    move-object/from16 v17, v4

    move/from16 v18, v5

    .line 2704
    .end local v4    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .end local v5    # "ephemeralGuests":Z
    .restart local v17    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .restart local v18    # "ephemeralGuests":Z
    :goto_2bd
    :try_start_2bd
    monitor-exit v7
    :try_end_2be
    .catchall {:try_start_2bd .. :try_end_2be} :catchall_2bf

    :try_start_2be
    throw v0

    :catchall_2bf
    move-exception v0

    goto :goto_2bd

    .line 2722
    .end local v2    # "flags":I
    .end local v6    # "userId":I
    .end local v15    # "parent":Lcom/android/server/pm/UserManagerService$UserData;
    .end local v17    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .end local v18    # "ephemeralGuests":Z
    .restart local v4    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .restart local p2    # "flags":I
    :catchall_2c1
    move-exception v0

    move-object/from16 v17, v4

    .line 2722
    .end local v4    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .end local p2    # "flags":I
    .restart local v2    # "flags":I
    .restart local v17    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    :goto_2c4
    monitor-exit v14
    :try_end_2c5
    .catchall {:try_start_2be .. :try_end_2c5} :catchall_2ca

    :try_start_2c5
    throw v0
    :try_end_2c6
    .catchall {:try_start_2c5 .. :try_end_2c6} :catchall_2c6

    .line 2750
    :catchall_2c6
    move-exception v0

    move/from16 v19, v2

    goto :goto_2d1

    .line 2722
    :catchall_2ca
    move-exception v0

    goto :goto_2c4

    .line 2750
    .end local v2    # "flags":I
    .end local v17    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .restart local v4    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .restart local p2    # "flags":I
    :catchall_2cc
    move-exception v0

    move-object/from16 v17, v4

    move/from16 v19, v2

    .line 2750
    .end local v4    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .end local p2    # "flags":I
    .restart local v17    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    .restart local v19    # "flags":I
    :goto_2d1
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private static debug(Ljava/lang/String;)V
    .registers 4
    .param p0, "message"    # Ljava/lang/String;

    .line 4059
    const-string v0, "UserManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4061
    return-void
.end method

.method private static dumpTimeAgo(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;JJ)V
    .registers 8
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "nowTime"    # J
    .param p4, "time"    # J

    .line 3707
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-nez v0, :cond_c

    .line 3708
    const-string v0, "<unknown>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1d

    .line 3710
    :cond_c
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3711
    sub-long v0, p2, p4

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 3712
    const-string v0, " ago"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3713
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3715
    :goto_1d
    return-void
.end method

.method private ensureCanModifyQuietMode(Ljava/lang/String;IZ)V
    .registers 8
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "startIntent"    # Z

    .line 869
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 870
    return-void

    .line 872
    :cond_7
    if-nez p3, :cond_2f

    .line 876
    const-string v0, "android.permission.MODIFY_QUIET_MODE"

    invoke-static {v0, p2}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result v0

    .line 878
    .local v0, "hasModifyQuietModePermission":Z
    if-eqz v0, :cond_12

    .line 879
    return-void

    .line 882
    :cond_12
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->verifyCallingPackage(Ljava/lang/String;I)V

    .line 883
    const-class v1, Landroid/content/pm/ShortcutServiceInternal;

    .line 884
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutServiceInternal;

    .line 885
    .local v1, "shortcutInternal":Landroid/content/pm/ShortcutServiceInternal;
    if-eqz v1, :cond_27

    .line 886
    nop

    .line 887
    invoke-virtual {v1, p1, p2}, Landroid/content/pm/ShortcutServiceInternal;->isForegroundDefaultLauncher(Ljava/lang/String;I)Z

    move-result v2

    .line 888
    .local v2, "isForegroundLauncher":Z
    if-eqz v2, :cond_27

    .line 889
    return-void

    .line 892
    .end local v2    # "isForegroundLauncher":Z
    :cond_27
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Can\'t modify quiet mode, caller is neither foreground default launcher nor has MANAGE_USERS/MODIFY_QUIET_MODE permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 873
    .end local v0    # "hasModifyQuietModePermission":Z
    .end local v1    # "shortcutInternal":Landroid/content/pm/ShortcutServiceInternal;
    :cond_2f
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "MANAGE_USERS permission is required to start intent after disabling quiet mode."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private fallbackToSingleUserLP()V
    .registers 11

    .line 2154
    const/16 v0, 0x10

    .line 2157
    .local v0, "flags":I
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v1

    if-nez v1, :cond_a

    .line 2158
    or-int/lit8 v0, v0, 0x3

    .line 2161
    :cond_a
    new-instance v1, Landroid/content/pm/UserInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v2, v0}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 2162
    .local v1, "system":Landroid/content/pm/UserInfo;
    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->putUserInfo(Landroid/content/pm/UserInfo;)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v2

    .line 2163
    .local v2, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    const/16 v4, 0xa

    iput v4, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    .line 2164
    const/4 v4, 0x7

    iput v4, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 2166
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 2168
    .local v4, "restrictions":Landroid/os/Bundle;
    :try_start_21
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1070020

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 2170
    .local v5, "defaultFirstUserRestrictions":[Ljava/lang/String;
    array-length v6, v5

    move v7, v3

    :goto_30
    if-ge v7, v6, :cond_41

    aget-object v8, v5, v7

    .line 2171
    .local v8, "userRestriction":Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3e

    .line 2172
    const/4 v9, 0x1

    invoke-virtual {v4, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_3e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_21 .. :try_end_3e} :catch_42

    .line 2170
    .end local v8    # "userRestriction":Ljava/lang/String;
    :cond_3e
    add-int/lit8 v7, v7, 0x1

    goto :goto_30

    .line 2177
    .end local v5    # "defaultFirstUserRestrictions":[Ljava/lang/String;
    :cond_41
    goto :goto_4a

    .line 2175
    :catch_42
    move-exception v5

    .line 2176
    .local v5, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v6, "UserManagerService"

    const-string v7, "Couldn\'t find resource: config_defaultFirstUserRestrictions"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2179
    .end local v5    # "e":Landroid/content/res/Resources$NotFoundException;
    :goto_4a
    invoke-virtual {v4}, Landroid/os/Bundle;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5d

    .line 2180
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2181
    :try_start_53
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v6, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2182
    monitor-exit v5

    goto :goto_5d

    :catchall_5a
    move-exception v3

    monitor-exit v5
    :try_end_5c
    .catchall {:try_start_53 .. :try_end_5c} :catchall_5a

    throw v3

    .line 2185
    :cond_5d
    :goto_5d
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->updateUserIds()V

    .line 2186
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->initDefaultGuestRestrictions()V

    .line 2188
    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 2189
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    .line 2190
    return-void
.end method

.method private findCurrentGuestUser()Landroid/content/pm/UserInfo;
    .registers 7

    .line 2803
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2804
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 2805
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_2f

    .line 2806
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v3, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 2807
    .local v3, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v4

    if-eqz v4, :cond_2c

    iget-boolean v4, v3, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-nez v4, :cond_2c

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_2c

    .line 2808
    monitor-exit v0

    return-object v3

    .line 2805
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 2811
    .end local v1    # "size":I
    .end local v2    # "i":I
    :cond_2f
    monitor-exit v0

    .line 2812
    const/4 v0, 0x0

    return-object v0

    .line 2811
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw v1
.end method

.method private getAliveUsersExcludingGuestsCountLU()I
    .registers 7

    .line 1804
    const/4 v0, 0x0

    .line 1805
    .local v0, "aliveUserCount":I
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1807
    .local v1, "totalUserCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v1, :cond_29

    .line 1808
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v3, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 1809
    .local v3, "user":Landroid/content/pm/UserInfo;
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_26

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v4

    if-nez v4, :cond_26

    .line 1810
    add-int/lit8 v0, v0, 0x1

    .line 1807
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1813
    .end local v2    # "i":I
    :cond_29
    return v0
.end method

.method private getEffectiveUserRestrictions(I)Landroid/os/Bundle;
    .registers 5
    .param p1, "userId"    # I

    .line 1487
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1488
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 1489
    .local v1, "restrictions":Landroid/os/Bundle;
    if-nez v1, :cond_17

    .line 1490
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->computeEffectiveUserRestrictionsLR(I)Landroid/os/Bundle;

    move-result-object v2

    move-object v1, v2

    .line 1491
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1493
    :cond_17
    monitor-exit v0

    return-object v1

    .line 1494
    .end local v1    # "restrictions":Landroid/os/Bundle;
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method private getEnforcingUserLocked(I)Landroid/os/UserManager$EnforcingUser;
    .registers 4
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRestrictionsLock"
    .end annotation

    .line 1587
    iget v0, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    if-ne v0, p1, :cond_6

    const/4 v0, 0x2

    goto :goto_7

    .line 1588
    :cond_6
    const/4 v0, 0x4

    .line 1589
    .local v0, "source":I
    :goto_7
    new-instance v1, Landroid/os/UserManager$EnforcingUser;

    invoke-direct {v1, p1, v0}, Landroid/os/UserManager$EnforcingUser;-><init>(II)V

    return-object v1
.end method

.method public static getInstance()Lcom/android/server/pm/UserManagerService;
    .registers 2

    .line 440
    const-class v0, Lcom/android/server/pm/UserManagerService;

    monitor-enter v0

    .line 441
    :try_start_3
    sget-object v1, Lcom/android/server/pm/UserManagerService;->sInstance:Lcom/android/server/pm/UserManagerService;

    monitor-exit v0

    return-object v1

    .line 442
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method static getMaxManagedProfiles()I
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4067
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 4068
    return v1

    .line 4070
    :cond_6
    const-string/jumbo v0, "persist.sys.max_profiles"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getOwnerName()Ljava/lang/String;
    .registers 3

    .line 2193
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104045a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getProfileIdsLU(IZ)Landroid/util/IntArray;
    .registers 10
    .param p1, "userId"    # I
    .param p2, "enabledOnly"    # Z

    .line 712
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 713
    .local v0, "user":Landroid/content/pm/UserInfo;
    new-instance v1, Landroid/util/IntArray;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/IntArray;-><init>(I)V

    .line 714
    .local v1, "result":Landroid/util/IntArray;
    if-nez v0, :cond_12

    .line 716
    return-object v1

    .line 718
    :cond_12
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 719
    .local v2, "userSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_19
    if-ge v3, v2, :cond_4d

    .line 720
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 721
    .local v4, "profile":Landroid/content/pm/UserInfo;
    invoke-static {v0, v4}, Lcom/android/server/pm/UserManagerService;->isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z

    move-result v5

    if-nez v5, :cond_2c

    .line 722
    goto :goto_4a

    .line 724
    :cond_2c
    if-eqz p2, :cond_35

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_35

    .line 725
    goto :goto_4a

    .line 727
    :cond_35
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 728
    goto :goto_4a

    .line 730
    :cond_40
    iget-boolean v5, v4, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v5, :cond_45

    .line 731
    goto :goto_4a

    .line 733
    :cond_45
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v5}, Landroid/util/IntArray;->add(I)V

    .line 719
    .end local v4    # "profile":Landroid/content/pm/UserInfo;
    :goto_4a
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 735
    .end local v3    # "i":I
    :cond_4d
    return-object v1
.end method

.method private getProfileParentLU(I)Landroid/content/pm/UserInfo;
    .registers 6
    .param p1, "userHandle"    # I

    .line 790
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 791
    .local v0, "profile":Landroid/content/pm/UserInfo;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 792
    return-object v1

    .line 794
    :cond_8
    iget v2, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 795
    .local v2, "parentUserId":I
    if-eq v2, p1, :cond_16

    const/16 v3, -0x2710

    if-ne v2, v3, :cond_11

    goto :goto_16

    .line 798
    :cond_11
    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    return-object v1

    .line 796
    :cond_16
    :goto_16
    return-object v1
.end method

.method private getProfilesLU(IZZ)Ljava/util/List;
    .registers 10
    .param p1, "userId"    # I
    .param p2, "enabledOnly"    # Z
    .param p3, "fullInfo"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 690
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->getProfileIdsLU(IZ)Landroid/util/IntArray;

    move-result-object v0

    .line 691
    .local v0, "profileIds":Landroid/util/IntArray;
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 692
    .local v1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3a

    .line 693
    invoke-virtual {v0, v2}, Landroid/util/IntArray;->get(I)I

    move-result v3

    .line 694
    .local v3, "profileId":I
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 696
    .local v4, "userInfo":Landroid/content/pm/UserInfo;
    if-nez p3, :cond_30

    .line 697
    new-instance v5, Landroid/content/pm/UserInfo;

    invoke-direct {v5, v4}, Landroid/content/pm/UserInfo;-><init>(Landroid/content/pm/UserInfo;)V

    move-object v4, v5

    .line 698
    const/4 v5, 0x0

    iput-object v5, v4, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 699
    iput-object v5, v4, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    goto :goto_34

    .line 701
    :cond_30
    invoke-direct {p0, v4}, Lcom/android/server/pm/UserManagerService;->userWithName(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 703
    :goto_34
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 692
    .end local v3    # "profileId":I
    .end local v4    # "userInfo":Landroid/content/pm/UserInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 705
    .end local v2    # "i":I
    :cond_3a
    return-object v1
.end method

.method private getUidForPackage(Ljava/lang/String;)I
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3107
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3109
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x400000

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_12} :catch_1b
    .catchall {:try_start_4 .. :try_end_12} :catchall_16

    .line 3114
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3109
    return v2

    .line 3114
    :catchall_16
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 3111
    :catch_1b
    move-exception v2

    .line 3112
    .local v2, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, -0x1

    .line 3114
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3112
    return v3
.end method

.method private getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;
    .registers 4
    .param p1, "userId"    # I

    .line 1222
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerService$UserData;

    .line 1224
    .local v0, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v0, :cond_1a

    iget-object v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v1, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 1225
    const/4 v1, 0x0

    return-object v1

    .line 1227
    :cond_1a
    return-object v0
.end method

.method private getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;
    .registers 4
    .param p1, "userId"    # I

    .line 1246
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1247
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerService$UserData;

    monitor-exit v0

    return-object v1

    .line 1248
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method private getUserInfoLU(I)Landroid/content/pm/UserInfo;
    .registers 7
    .param p1, "userId"    # I

    .line 1212
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerService$UserData;

    .line 1214
    .local v0, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    const/4 v1, 0x0

    if-eqz v0, :cond_30

    iget-object v2, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v2, v2, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v2, :cond_30

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_30

    .line 1215
    const-string v2, "UserManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUserInfo: unknown user #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    return-object v1

    .line 1218
    :cond_30
    if-eqz v0, :cond_35

    iget-object v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    nop

    :cond_35
    return-object v1
.end method

.method private getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;
    .registers 5
    .param p1, "userId"    # I

    .line 1235
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1236
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerService$UserData;

    .line 1237
    .local v1, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v1, :cond_10

    iget-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    monitor-exit v0

    return-object v2

    .line 1238
    .end local v1    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method private static final hasManageOrCreateUsersPermission()Z
    .registers 2

    .line 1916
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1917
    .local v0, "callingUid":I
    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-nez v1, :cond_21

    if-eqz v0, :cond_21

    const-string v1, "android.permission.MANAGE_USERS"

    .line 1919
    invoke-static {v1, v0}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_21

    const-string v1, "android.permission.CREATE_USERS"

    .line 1920
    invoke-static {v1, v0}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 v1, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 v1, 0x1

    .line 1917
    :goto_22
    return v1
.end method

.method private static final hasManageUsersPermission()Z
    .registers 2

    .line 1904
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1905
    .local v0, "callingUid":I
    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-nez v1, :cond_19

    if-eqz v0, :cond_19

    const-string v1, "android.permission.MANAGE_USERS"

    .line 1907
    invoke-static {v1, v0}, Lcom/android/server/pm/UserManagerService;->hasPermissionGranted(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_19

    :cond_17
    const/4 v1, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v1, 0x1

    .line 1905
    :goto_1a
    return v1
.end method

.method private static hasPermissionGranted(Ljava/lang/String;I)Z
    .registers 4
    .param p0, "permission"    # Ljava/lang/String;
    .param p1, "uid"    # I

    .line 1844
    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-static {p0, p1, v1, v0}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v1

    if-nez v1, :cond_9

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method private initDefaultGuestRestrictions()V
    .registers 5

    .line 1355
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v0

    .line 1356
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 1357
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    const-string/jumbo v2, "no_config_wifi"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1358
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    const-string/jumbo v2, "no_install_unknown_sources"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1359
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    const-string/jumbo v2, "no_outgoing_calls"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1360
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    const-string/jumbo v2, "no_sms"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1362
    :cond_2c
    monitor-exit v0

    .line 1363
    return-void

    .line 1362
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v1
.end method

.method private invalidateEffectiveUserRestrictionsLR(I)V
    .registers 3
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRestrictionsLock"
    .end annotation

    .line 1483
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1484
    return-void
.end method

.method private static isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z
    .registers 4
    .param p0, "user"    # Landroid/content/pm/UserInfo;
    .param p1, "profile"    # Landroid/content/pm/UserInfo;

    .line 803
    iget v0, p0, Landroid/content/pm/UserInfo;->id:I

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    if-eq v0, v1, :cond_15

    iget v0, p0, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_13

    iget v0, p0, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget v1, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne v0, v1, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method private isSameProfileGroupNoChecks(II)Z
    .registers 9
    .param p1, "userId"    # I
    .param p2, "otherUserId"    # I

    .line 761
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 762
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 763
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    const/4 v2, 0x0

    if-eqz v1, :cond_28

    iget v3, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v4, -0x2710

    if-ne v3, v4, :cond_11

    goto :goto_28

    .line 766
    :cond_11
    invoke-direct {p0, p2}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 767
    .local v3, "otherUserInfo":Landroid/content/pm/UserInfo;
    if-eqz v3, :cond_26

    iget v5, v3, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne v5, v4, :cond_1c

    goto :goto_26

    .line 771
    :cond_1c
    iget v4, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget v5, v3, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne v4, v5, :cond_24

    const/4 v2, 0x1

    nop

    :cond_24
    monitor-exit v0

    return v2

    .line 769
    :cond_26
    :goto_26
    monitor-exit v0

    return v2

    .line 764
    .end local v3    # "otherUserInfo":Landroid/content/pm/UserInfo;
    :cond_28
    :goto_28
    monitor-exit v0

    return v2

    .line 772
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method private isUserLimitReached()Z
    .registers 3

    .line 1768
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1769
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->getAliveUsersExcludingGuestsCountLU()I

    move-result v1

    .line 1770
    .local v1, "count":I
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_12

    .line 1771
    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v0

    if-lt v1, v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0

    .line 1770
    .end local v1    # "count":I
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private static packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "packageName"    # Ljava/lang/String;

    .line 3468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "res_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private propagateUserRestrictionsLR(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "newRestrictions"    # Landroid/os/Bundle;
    .param p3, "prevRestrictions"    # Landroid/os/Bundle;

    .line 1692
    invoke-static {p2, p3}, Lcom/android/server/pm/UserRestrictionsUtils;->areEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1693
    return-void

    .line 1696
    :cond_7
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1697
    .local v0, "newRestrictionsFinal":Landroid/os/Bundle;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1699
    .local v1, "prevRestrictionsFinal":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/pm/UserManagerService$3;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/android/server/pm/UserManagerService$3;-><init>(Lcom/android/server/pm/UserManagerService;ILandroid/os/Bundle;Landroid/os/Bundle;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1720
    return-void
.end method

.method static readApplicationRestrictionsLAr(Landroid/util/AtomicFile;)Landroid/os/Bundle;
    .registers 8
    .param p0, "restrictionsFile"    # Landroid/util/AtomicFile;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mAppRestrictionsLock"
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3129
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3130
    .local v0, "restrictions":Landroid/os/Bundle;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3131
    .local v1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_15

    .line 3132
    return-object v0

    .line 3135
    :cond_15
    const/4 v2, 0x0

    .line 3137
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_16
    invoke-virtual {p0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    move-object v2, v3

    .line 3138
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 3139
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 3140
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3141
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_51

    .line 3142
    const-string v4, "UserManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to read restrictions file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3143
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3142
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_4c} :catch_62
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_16 .. :try_end_4c} :catch_62
    .catchall {:try_start_16 .. :try_end_4c} :catchall_60

    .line 3144
    nop

    .line 3152
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3144
    return-object v0

    .line 3146
    :cond_51
    :goto_51
    :try_start_51
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_5c

    .line 3147
    invoke-static {v0, v1, v3}, Lcom/android/server/pm/UserManagerService;->readEntry(Landroid/os/Bundle;Ljava/util/ArrayList;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_5b} :catch_62
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_51 .. :try_end_5b} :catch_62
    .catchall {:try_start_51 .. :try_end_5b} :catchall_60

    goto :goto_51

    .line 3152
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_5c
    :goto_5c
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3153
    goto :goto_7e

    .line 3152
    :catchall_60
    move-exception v3

    goto :goto_7f

    .line 3149
    :catch_62
    move-exception v3

    .line 3150
    .local v3, "e":Ljava/lang/Exception;
    :try_start_63
    const-string v4, "UserManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7d
    .catchall {:try_start_63 .. :try_end_7d} :catchall_60

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_5c

    .line 3154
    :goto_7e
    return-object v0

    .line 3152
    :goto_7f
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3
.end method

.method private static readApplicationRestrictionsLAr(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 6
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mAppRestrictionsLock"
    .end annotation

    .line 3120
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    .line 3121
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    .line 3122
    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 3123
    .local v0, "restrictionsFile":Landroid/util/AtomicFile;
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->readApplicationRestrictionsLAr(Landroid/util/AtomicFile;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1
.end method

.method private static readBundleEntry(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)Landroid/os/Bundle;
    .registers 5
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 3203
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3204
    .local v0, "childBundle":Landroid/os/Bundle;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 3205
    .local v1, "outerDepth":I
    :goto_9
    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 3206
    invoke-static {v0, p1, p0}, Lcom/android/server/pm/UserManagerService;->readEntry(Landroid/os/Bundle;Ljava/util/ArrayList;Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_9

    .line 3208
    :cond_13
    return-object v0
.end method

.method private static readEntry(Landroid/os/Bundle;Ljava/util/ArrayList;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 11
    .param p0, "restrictions"    # Landroid/os/Bundle;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3159
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 3160
    .local v0, "type":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_d1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "entry"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d1

    .line 3161
    const-string/jumbo v2, "key"

    const/4 v3, 0x0

    invoke-interface {p2, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3162
    .local v2, "key":Ljava/lang/String;
    const-string/jumbo v4, "type"

    invoke-interface {p2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3163
    .local v4, "valType":Ljava/lang/String;
    const-string/jumbo v5, "m"

    invoke-interface {p2, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3164
    .local v3, "multiple":Ljava/lang/String;
    if-eqz v3, :cond_66

    .line 3165
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 3166
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 3167
    .local v5, "count":I
    :cond_32
    :goto_32
    if-lez v5, :cond_59

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    move v0, v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_59

    .line 3168
    if-ne v0, v1, :cond_32

    .line 3169
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "value"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 3170
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3171
    add-int/lit8 v5, v5, -0x1

    goto :goto_32

    .line 3174
    :cond_59
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 3175
    .local v1, "valueStrings":[Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 3176
    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 3177
    .end local v1    # "valueStrings":[Ljava/lang/String;
    .end local v5    # "count":I
    goto :goto_d1

    :cond_66
    const-string v1, "B"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_76

    .line 3178
    invoke-static {p2, p1}, Lcom/android/server/pm/UserManagerService;->readBundleEntry(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_d1

    .line 3179
    :cond_76
    const-string v1, "BA"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a6

    .line 3180
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 3181
    .local v1, "outerDepth":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3182
    .local v5, "bundleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :goto_87
    invoke-static {p2, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v6

    if-eqz v6, :cond_95

    .line 3183
    invoke-static {p2, p1}, Lcom/android/server/pm/UserManagerService;->readBundleEntry(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v6

    .line 3184
    .local v6, "childBundle":Landroid/os/Bundle;
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3185
    .end local v6    # "childBundle":Landroid/os/Bundle;
    goto :goto_87

    .line 3186
    :cond_95
    nop

    .line 3187
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Landroid/os/Bundle;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/os/Parcelable;

    .line 3186
    invoke-virtual {p0, v2, v6}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 3188
    .end local v1    # "outerDepth":I
    .end local v5    # "bundleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    goto :goto_d1

    .line 3189
    :cond_a6
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 3190
    .local v1, "value":Ljava/lang/String;
    const-string v5, "b"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_be

    .line 3191
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {p0, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_d1

    .line 3192
    :cond_be
    const-string v5, "i"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ce

    .line 3193
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_d1

    .line 3195
    :cond_ce
    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3199
    .end local v1    # "value":Ljava/lang/String;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "multiple":Ljava/lang/String;
    .end local v4    # "valType":Ljava/lang/String;
    :cond_d1
    :goto_d1
    return-void
.end method

.method private readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .registers 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attr"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .line 2528
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2529
    .local v0, "valueString":Ljava/lang/String;
    if-nez v0, :cond_8

    return p3

    .line 2531
    :cond_8
    :try_start_8
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_c} :catch_d

    return v1

    .line 2532
    :catch_d
    move-exception v1

    .line 2533
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    return p3
.end method

.method private readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .registers 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attr"    # Ljava/lang/String;
    .param p3, "defaultValue"    # J

    .line 2538
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2539
    .local v0, "valueString":Ljava/lang/String;
    if-nez v0, :cond_8

    return-wide p3

    .line 2541
    :cond_8
    :try_start_8
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_c} :catch_d

    return-wide v1

    .line 2542
    :catch_d
    move-exception v1

    .line 2543
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    return-wide p3
.end method

.method private readUserLP(I)Lcom/android/server/pm/UserManagerService$UserData;
    .registers 9
    .param p1, "id"    # I

    .line 2376
    const/4 v0, 0x0

    move-object v1, v0

    .line 2378
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_2
    new-instance v2, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2379
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 2380
    .local v2, "userFile":Landroid/util/AtomicFile;
    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    move-object v1, v3

    .line 2381
    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/UserManagerService;->readUserLP(ILjava/io/InputStream;)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v3
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2c} :catch_3b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2c} :catch_32
    .catchall {:try_start_2 .. :try_end_2c} :catchall_30

    .line 2387
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2381
    return-object v3

    .line 2387
    .end local v2    # "userFile":Landroid/util/AtomicFile;
    :catchall_30
    move-exception v0

    goto :goto_48

    .line 2384
    :catch_32
    move-exception v2

    .line 2385
    .local v2, "pe":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_33
    const-string v3, "UserManagerService"

    const-string v4, "Error reading user list"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "pe":Lorg/xmlpull/v1/XmlPullParserException;
    goto :goto_43

    .line 2382
    :catch_3b
    move-exception v2

    .line 2383
    .local v2, "ioe":Ljava/io/IOException;
    const-string v3, "UserManagerService"

    const-string v4, "Error reading user list"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_33 .. :try_end_43} :catchall_30

    .line 2387
    .end local v2    # "ioe":Ljava/io/IOException;
    :goto_43
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2388
    nop

    .line 2389
    return-object v0

    .line 2387
    :goto_48
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0
.end method

.method private readUserListLP()V
    .registers 15

    .line 1977
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1978
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->fallbackToSingleUserLP()V

    .line 1979
    return-void

    .line 1981
    :cond_c
    const/4 v0, 0x0

    .line 1982
    .local v0, "fis":Ljava/io/FileInputStream;
    new-instance v1, Landroid/util/AtomicFile;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 1984
    .local v1, "userListFile":Landroid/util/AtomicFile;
    :try_start_14
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    move-object v0, v2

    .line 1985
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 1986
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1988
    :goto_26
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .line 1988
    .local v4, "type":I
    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eq v3, v6, :cond_32

    if-eq v4, v5, :cond_32

    .line 1988
    .end local v4    # "type":I
    goto :goto_26

    .line 1993
    .restart local v4    # "type":I
    :cond_32
    if-eq v4, v6, :cond_42

    .line 1994
    const-string v3, "UserManagerService"

    const-string v5, "Unable to read user list"

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1995
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->fallbackToSingleUserLP()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_3e} :catch_125
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_14 .. :try_end_3e} :catch_125
    .catchall {:try_start_14 .. :try_end_3e} :catchall_123

    .line 2065
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1996
    return-void

    .line 1999
    :cond_42
    const/4 v3, -0x1

    :try_start_43
    iput v3, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    .line 2000
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v7, "users"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v7, 0x0

    if-eqz v3, :cond_71

    .line 2001
    const-string/jumbo v3, "nextSerialNumber"

    invoke-interface {v2, v7, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2002
    .local v3, "lastSerialNumber":Ljava/lang/String;
    if-eqz v3, :cond_62

    .line 2003
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    .line 2005
    :cond_62
    const-string/jumbo v8, "version"

    invoke-interface {v2, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2006
    .local v8, "versionNumber":Ljava/lang/String;
    if-eqz v8, :cond_71

    .line 2007
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 2013
    .end local v3    # "lastSerialNumber":Ljava/lang/String;
    .end local v8    # "versionNumber":Ljava/lang/String;
    :cond_71
    move-object v3, v7

    .line 2015
    .local v3, "oldDevicePolicyGlobalUserRestrictions":Landroid/os/Bundle;
    :cond_72
    :goto_72
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    move v4, v8

    if-eq v8, v5, :cond_11c

    .line 2016
    if-ne v4, v6, :cond_72

    .line 2017
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 2018
    .local v8, "name":Ljava/lang/String;
    const-string/jumbo v9, "user"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_bd

    .line 2019
    const-string v9, "id"

    invoke-interface {v2, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2021
    .local v9, "id":Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-direct {p0, v10}, Lcom/android/server/pm/UserManagerService;->readUserLP(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v10

    .line 2023
    .local v10, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v10, :cond_bc

    .line 2024
    iget-object v11, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_9b} :catch_125
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_43 .. :try_end_9b} :catch_125
    .catchall {:try_start_43 .. :try_end_9b} :catchall_123

    .line 2025
    :try_start_9b
    iget-object v12, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    iget-object v13, v10, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v13, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v12, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2026
    iget v12, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    if-ltz v12, :cond_b0

    iget v12, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    iget-object v13, v10, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v13, v13, Landroid/content/pm/UserInfo;->id:I

    if-gt v12, v13, :cond_b7

    .line 2028
    :cond_b0
    iget-object v12, v10, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v12, v12, Landroid/content/pm/UserInfo;->id:I

    add-int/2addr v12, v5

    iput v12, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    .line 2030
    :cond_b7
    monitor-exit v11

    goto :goto_bc

    :catchall_b9
    move-exception v5

    monitor-exit v11
    :try_end_bb
    .catchall {:try_start_9b .. :try_end_bb} :catchall_b9

    :try_start_bb
    throw v5

    .line 2032
    .end local v9    # "id":Ljava/lang/String;
    .end local v10    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_bc
    :goto_bc
    goto :goto_11a

    :cond_bd
    const-string v9, "guestRestrictions"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_eb

    .line 2033
    :cond_c5
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    move v4, v9

    if-eq v9, v5, :cond_11a

    const/4 v9, 0x3

    if-eq v4, v9, :cond_11a

    .line 2035
    if-ne v4, v6, :cond_c5

    .line 2036
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "restrictions"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11a

    .line 2037
    iget-object v9, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v9
    :try_end_e1
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_e1} :catch_125
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_bb .. :try_end_e1} :catch_125
    .catchall {:try_start_bb .. :try_end_e1} :catchall_123

    .line 2038
    :try_start_e1
    iget-object v10, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    .line 2039
    invoke-static {v2, v10}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V

    .line 2040
    monitor-exit v9

    goto :goto_11a

    :catchall_e8
    move-exception v5

    monitor-exit v9
    :try_end_ea
    .catchall {:try_start_e1 .. :try_end_ea} :catchall_e8

    :try_start_ea
    throw v5

    .line 2045
    :cond_eb
    const-string v9, "deviceOwnerUserId"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_10b

    const-string v9, "globalRestrictionOwnerUserId"

    .line 2047
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_fc

    goto :goto_10b

    .line 2052
    :cond_fc
    const-string v9, "device_policy_restrictions"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11a

    .line 2054
    nop

    .line 2055
    invoke-static {v2}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/Bundle;

    move-result-object v9

    move-object v3, v9

    .line 2055
    .end local v8    # "name":Ljava/lang/String;
    goto :goto_11a

    .line 2048
    .restart local v8    # "name":Ljava/lang/String;
    :cond_10b
    :goto_10b
    const-string v9, "id"

    invoke-interface {v2, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2049
    .local v9, "ownerUserId":Ljava/lang/String;
    if-eqz v9, :cond_119

    .line 2050
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    .line 2052
    .end local v9    # "ownerUserId":Ljava/lang/String;
    :cond_119
    nop

    .line 2057
    .end local v8    # "name":Ljava/lang/String;
    :cond_11a
    :goto_11a
    goto/16 :goto_72

    .line 2060
    :cond_11c
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->updateUserIds()V

    .line 2061
    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->upgradeIfNecessaryLP(Landroid/os/Bundle;)V
    :try_end_122
    .catch Ljava/io/IOException; {:try_start_ea .. :try_end_122} :catch_125
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_ea .. :try_end_122} :catch_125
    .catchall {:try_start_ea .. :try_end_122} :catchall_123

    .line 2061
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "oldDevicePolicyGlobalUserRestrictions":Landroid/os/Bundle;
    .end local v4    # "type":I
    goto :goto_129

    .line 2065
    :catchall_123
    move-exception v2

    goto :goto_12e

    .line 2062
    :catch_125
    move-exception v2

    .line 2063
    .local v2, "e":Ljava/lang/Exception;
    :try_start_126
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->fallbackToSingleUserLP()V
    :try_end_129
    .catchall {:try_start_126 .. :try_end_129} :catchall_123

    .line 2065
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_129
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2066
    nop

    .line 2067
    return-void

    .line 2065
    :goto_12e
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method private removeNonSystemUsers()V
    .registers 7

    .line 4025
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4026
    .local v0, "usersToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4027
    :try_start_8
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 4028
    .local v2, "userSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v2, :cond_25

    .line 4029
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 4030
    .local v4, "ui":Landroid/content/pm/UserInfo;
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    if-eqz v5, :cond_22

    .line 4031
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4028
    .end local v4    # "ui":Landroid/content/pm/UserInfo;
    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 4034
    .end local v2    # "userSize":I
    .end local v3    # "i":I
    :cond_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_3d

    .line 4035
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 4036
    .local v2, "ui":Landroid/content/pm/UserInfo;
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v3}, Lcom/android/server/pm/UserManagerService;->removeUser(I)Z

    .line 4037
    .end local v2    # "ui":Landroid/content/pm/UserInfo;
    goto :goto_2a

    .line 4038
    :cond_3c
    return-void

    .line 4034
    :catchall_3d
    move-exception v2

    :try_start_3e
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v2
.end method

.method private removeUserState(I)V
    .registers 7
    .param p1, "userHandle"    # I

    .line 3000
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->destroyUserKey(I)V
    :try_end_d
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_d} :catch_e

    .line 3005
    goto :goto_2a

    .line 3001
    :catch_e
    move-exception v0

    .line 3003
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "UserManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Destroying key for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " failed, continuing anyway"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3009
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_2a
    :try_start_2a
    invoke-static {}, Landroid/security/GateKeeper;->getService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v0

    .line 3010
    .local v0, "gk":Landroid/service/gatekeeper/IGateKeeperService;
    if-eqz v0, :cond_33

    .line 3011
    invoke-interface {v0, p1}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_33} :catch_34

    .line 3015
    .end local v0    # "gk":Landroid/service/gatekeeper/IGateKeeperService;
    :cond_33
    goto :goto_3d

    .line 3013
    :catch_34
    move-exception v0

    .line 3014
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "UserManagerService"

    const-string/jumbo v2, "unable to clear GK secure user id"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3018
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_3d
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/pm/PackageManagerService;->cleanUpUser(Lcom/android/server/pm/UserManagerService;I)V

    .line 3021
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/android/server/pm/UserDataPreparer;->destroyUserData(II)V

    .line 3025
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3026
    :try_start_4b
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3027
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mIsUserManaged:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 3028
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_4b .. :try_end_56} :catchall_bb

    .line 3029
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    monitor-enter v1

    .line 3030
    :try_start_59
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 3031
    monitor-exit v1
    :try_end_5f
    .catchall {:try_start_59 .. :try_end_5f} :catchall_b8

    .line 3032
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3033
    :try_start_62
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3034
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mAppliedUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3035
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3036
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3037
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_86

    .line 3038
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3039
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsForAllUsersLR()V

    .line 3041
    :cond_86
    monitor-exit v0
    :try_end_87
    .catchall {:try_start_62 .. :try_end_87} :catchall_b5

    .line 3043
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3044
    :try_start_8a
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    .line 3045
    monitor-exit v1
    :try_end_8e
    .catchall {:try_start_8a .. :try_end_8e} :catchall_b2

    .line 3047
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ".xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 3048
    .local v0, "userFile":Landroid/util/AtomicFile;
    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    .line 3049
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->updateUserIds()V

    .line 3055
    return-void

    .line 3045
    .end local v0    # "userFile":Landroid/util/AtomicFile;
    :catchall_b2
    move-exception v0

    :try_start_b3
    monitor-exit v1
    :try_end_b4
    .catchall {:try_start_b3 .. :try_end_b4} :catchall_b2

    throw v0

    .line 3041
    :catchall_b5
    move-exception v1

    :try_start_b6
    monitor-exit v0
    :try_end_b7
    .catchall {:try_start_b6 .. :try_end_b7} :catchall_b5

    throw v1

    .line 3031
    :catchall_b8
    move-exception v0

    :try_start_b9
    monitor-exit v1
    :try_end_ba
    .catchall {:try_start_b9 .. :try_end_ba} :catchall_b8

    throw v0

    .line 3028
    :catchall_bb
    move-exception v1

    :try_start_bc
    monitor-exit v0
    :try_end_bd
    .catchall {:try_start_bc .. :try_end_bd} :catchall_bb

    throw v1
.end method

.method private removeUserUnchecked(I)Z
    .registers 11
    .param p1, "userHandle"    # I

    .line 2885
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2888
    .local v0, "ident":J
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 2889
    .local v2, "currentUser":I
    const/4 v3, 0x0

    if-ne v2, p1, :cond_17

    .line 2890
    const-string v4, "UserManagerService"

    const-string v5, "Current user cannot be removed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_9a

    .line 2891
    nop

    .line 2943
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2891
    return v3

    .line 2893
    :cond_17
    :try_start_17
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_9a

    .line 2894
    :try_start_1a
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_97

    .line 2895
    :try_start_1d
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/UserManagerService$UserData;

    .line 2896
    .local v6, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz p1, :cond_8e

    if-eqz v6, :cond_8e

    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    if-eqz v7, :cond_32

    goto :goto_8e

    .line 2900
    :cond_32
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->addRemovingUserIdLocked(I)V

    .line 2901
    monitor-exit v5
    :try_end_36
    .catchall {:try_start_1d .. :try_end_36} :catchall_94

    .line 2906
    :try_start_36
    iget-object v5, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    const/4 v7, 0x1

    iput-boolean v7, v5, Landroid/content/pm/UserInfo;->partial:Z

    .line 2909
    iget-object v5, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v8, v5, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v8, v8, 0x40

    iput v8, v5, Landroid/content/pm/UserInfo;->flags:I

    .line 2910
    invoke-direct {p0, v6}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 2911
    monitor-exit v4
    :try_end_47
    .catchall {:try_start_36 .. :try_end_47} :catchall_97

    .line 2913
    :try_start_47
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v4, p1}, Lcom/android/internal/app/IAppOpsService;->removeUser(I)V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_4c} :catch_4d
    .catchall {:try_start_47 .. :try_end_4c} :catchall_9a

    .line 2916
    goto :goto_55

    .line 2914
    :catch_4d
    move-exception v4

    .line 2915
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_4e
    const-string v5, "UserManagerService"

    const-string v8, "Unable to notify AppOpsService of removing user"

    invoke-static {v5, v8, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2918
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_55
    iget-object v4, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v5, -0x2710

    if-eq v4, v5, :cond_70

    iget-object v4, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 2919
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_70

    .line 2922
    iget-object v4, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget-object v5, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v4, v5}, Lcom/android/server/pm/UserManagerService;->sendProfileRemovedBroadcast(II)V
    :try_end_70
    .catchall {:try_start_4e .. :try_end_70} :catchall_9a

    .line 2928
    :cond_70
    :try_start_70
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    new-instance v5, Lcom/android/server/pm/UserManagerService$5;

    invoke-direct {v5, p0}, Lcom/android/server/pm/UserManagerService$5;-><init>(Lcom/android/server/pm/UserManagerService;)V

    invoke-interface {v4, p1, v7, v5}, Landroid/app/IActivityManager;->stopUser(IZLandroid/app/IStopUserCallback;)I

    move-result v4
    :try_end_7d
    .catch Landroid/os/RemoteException; {:try_start_70 .. :try_end_7d} :catch_88
    .catchall {:try_start_70 .. :try_end_7d} :catchall_9a

    .line 2940
    .local v4, "res":I
    nop

    .line 2939
    nop

    .line 2941
    if-nez v4, :cond_83

    .line 2943
    move v3, v7

    goto :goto_84

    .line 2941
    :cond_83
    nop

    .line 2943
    :goto_84
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2941
    return v3

    .line 2938
    .end local v4    # "res":I
    :catch_88
    move-exception v4

    .line 2939
    .local v4, "e":Landroid/os/RemoteException;
    nop

    .line 2943
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2939
    return v3

    .line 2897
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_8e
    :goto_8e
    :try_start_8e
    monitor-exit v5
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_94

    :try_start_8f
    monitor-exit v4
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_97

    .line 2943
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2897
    return v3

    .line 2901
    .end local v6    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_94
    move-exception v3

    :try_start_95
    monitor-exit v5
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_94

    :try_start_96
    throw v3

    .line 2911
    :catchall_97
    move-exception v3

    monitor-exit v4
    :try_end_99
    .catchall {:try_start_96 .. :try_end_99} :catchall_97

    :try_start_99
    throw v3
    :try_end_9a
    .catchall {:try_start_99 .. :try_end_9a} :catchall_9a

    .line 2943
    .end local v2    # "currentUser":I
    :catchall_9a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private runList(Ljava/io/PrintWriter;)I
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3581
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 3582
    .local v0, "am":Landroid/app/IActivityManager;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    .line 3583
    .local v2, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-nez v2, :cond_12

    .line 3584
    const-string v1, "Error: couldn\'t get users"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3585
    const/4 v1, 0x1

    return v1

    .line 3587
    :cond_12
    const-string v3, "Users:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3588
    move v3, v1

    .local v3, "i":I
    :goto_18
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_55

    .line 3589
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v0, v4, v1}, Landroid/app/IActivityManager;->isUserRunning(II)Z

    move-result v4

    if-eqz v4, :cond_2f

    const-string v4, " running"

    goto :goto_31

    :cond_2f
    const-string v4, ""

    .line 3590
    .local v4, "running":Ljava/lang/String;
    :goto_31
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3588
    .end local v4    # "running":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 3592
    .end local v3    # "i":I
    :cond_55
    return v1
.end method

.method private scanNextAvailableIdLocked()I
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUsersLock"
    .end annotation

    .line 3459
    const/16 v0, 0xa

    .local v0, "i":I
    :goto_2
    const/16 v1, 0x53e2

    if-ge v0, v1, :cond_1a

    .line 3460
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_17

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_17

    .line 3461
    return v0

    .line 3459
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3464
    .end local v0    # "i":I
    :cond_1a
    const/4 v0, -0x1

    return v0
.end method

.method private scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V
    .registers 6
    .param p1, "UserData"    # Lcom/android/server/pm/UserManagerService$UserData;

    .line 2202
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 2203
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2204
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2206
    .end local v0    # "msg":Landroid/os/Message;
    :cond_16
    return-void
.end method

.method private sendProfileRemovedBroadcast(II)V
    .registers 7
    .param p1, "parentUserId"    # I
    .param p2, "removedUserId"    # I

    .line 3058
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3059
    .local v0, "managedProfileIntent":Landroid/content/Intent;
    const/high16 v1, 0x50000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3061
    const-string v1, "android.intent.extra.USER"

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3062
    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3063
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 3064
    return-void
.end method

.method private sendUserInfoChangedBroadcast(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 1290
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.USER_INFO_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1291
    .local v0, "changedIntent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1292
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1293
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1294
    return-void
.end method

.method private setDevicePolicyUserRestrictionsInner(ILandroid/os/Bundle;ZI)V
    .registers 11
    .param p1, "userId"    # I
    .param p2, "restrictions"    # Landroid/os/Bundle;
    .param p3, "isDeviceOwner"    # Z
    .param p4, "cameraRestrictionScope"    # I

    .line 1390
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1391
    .local v0, "global":Landroid/os/Bundle;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1394
    .local v1, "local":Landroid/os/Bundle;
    invoke-static {p2, p3, p4, v0, v1}, Lcom/android/server/pm/UserRestrictionsUtils;->sortToGlobalAndLocal(Landroid/os/Bundle;ZILandroid/os/Bundle;Landroid/os/Bundle;)V

    .line 1398
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1400
    :try_start_10
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    invoke-direct {p0, p1, v0, v3}, Lcom/android/server/pm/UserManagerService;->updateRestrictionsIfNeededLR(ILandroid/os/Bundle;Landroid/util/SparseArray;)Z

    move-result v3

    .line 1402
    .local v3, "globalChanged":Z
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-direct {p0, p1, v1, v4}, Lcom/android/server/pm/UserManagerService;->updateRestrictionsIfNeededLR(ILandroid/os/Bundle;Landroid/util/SparseArray;)Z

    move-result v4

    .line 1405
    .local v4, "localChanged":Z
    if-eqz p3, :cond_21

    .line 1408
    iput p1, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    goto :goto_29

    .line 1410
    :cond_21
    iget v5, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    if-ne v5, p1, :cond_29

    .line 1415
    const/16 v5, -0x2710

    iput v5, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    .line 1418
    :cond_29
    :goto_29
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_10 .. :try_end_2a} :catchall_50

    .line 1426
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1427
    if-nez v4, :cond_31

    if-eqz v3, :cond_38

    .line 1428
    :cond_31
    :try_start_31
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 1430
    :cond_38
    monitor-exit v5
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_4d

    .line 1432
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1433
    if-eqz v3, :cond_44

    .line 1434
    :try_start_3e
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsForAllUsersLR()V

    goto :goto_49

    .line 1438
    :catchall_42
    move-exception v5

    goto :goto_4b

    .line 1435
    :cond_44
    if-eqz v4, :cond_49

    .line 1436
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsLR(I)V

    .line 1438
    :cond_49
    :goto_49
    monitor-exit v2

    .line 1439
    return-void

    .line 1438
    :goto_4b
    monitor-exit v2
    :try_end_4c
    .catchall {:try_start_3e .. :try_end_4c} :catchall_42

    throw v5

    .line 1430
    :catchall_4d
    move-exception v2

    :try_start_4e
    monitor-exit v5
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw v2

    .line 1418
    .end local v3    # "globalChanged":Z
    .end local v4    # "localChanged":Z
    :catchall_50
    move-exception v3

    :try_start_51
    monitor-exit v2
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw v3
.end method

.method private setQuietModeEnabled(IZLandroid/content/IntentSender;)V
    .registers 10
    .param p1, "userHandle"    # I
    .param p2, "enableQuietMode"    # Z
    .param p3, "target"    # Landroid/content/IntentSender;

    .line 900
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 901
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 902
    .local v1, "profile":Landroid/content/pm/UserInfo;
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 904
    .local v2, "parent":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_82

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_82

    .line 907
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result v3

    if-ne v3, p2, :cond_31

    .line 908
    const-string v3, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Quiet mode is already "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    monitor-exit v0

    return-void

    .line 911
    :cond_31
    iget v3, v1, Landroid/content/pm/UserInfo;->flags:I

    xor-int/lit16 v3, v3, 0x80

    iput v3, v1, Landroid/content/pm/UserInfo;->flags:I

    .line 912
    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v3

    .line 913
    .local v3, "profileUserData":Lcom/android/server/pm/UserManagerService$UserData;
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_9e

    .line 914
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 915
    :try_start_41
    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 916
    monitor-exit v4
    :try_end_45
    .catchall {:try_start_41 .. :try_end_45} :catchall_7f

    .line 918
    const/4 v0, 0x0

    if-eqz p2, :cond_5e

    .line 919
    :try_start_48
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, p1, v5, v0}, Landroid/app/IActivityManager;->stopUser(IZLandroid/app/IStopUserCallback;)I

    .line 920
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 921
    invoke-virtual {v0, p1}, Landroid/app/ActivityManagerInternal;->killForegroundAppsForUser(I)V

    goto :goto_6e

    .line 929
    :catch_5c
    move-exception v0

    goto :goto_6f

    .line 923
    :cond_5e
    if-eqz p3, :cond_66

    .line 924
    new-instance v0, Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback;

    invoke-direct {v0, p0, p3}, Lcom/android/server/pm/UserManagerService$DisableQuietModeUserUnlockedCallback;-><init>(Lcom/android/server/pm/UserManagerService;Landroid/content/IntentSender;)V

    goto :goto_67

    .line 925
    :cond_66
    nop

    .line 926
    .local v0, "callback":Landroid/os/IProgressListener;
    :goto_67
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4, p1, v0}, Landroid/app/IActivityManager;->startUserInBackgroundWithListener(ILandroid/os/IProgressListener;)Z
    :try_end_6e
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_6e} :catch_5c

    .line 932
    .end local v0    # "callback":Landroid/os/IProgressListener;
    :goto_6e
    goto :goto_73

    .line 929
    :goto_6f
    nop

    .line 931
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 933
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_73
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-direct {p0, v0, v4, p2}, Lcom/android/server/pm/UserManagerService;->broadcastProfileAvailabilityChanges(Landroid/os/UserHandle;Landroid/os/UserHandle;Z)V

    .line 935
    return-void

    .line 916
    :catchall_7f
    move-exception v0

    :try_start_80
    monitor-exit v4
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_7f

    throw v0

    .line 905
    .end local v3    # "profileUserData":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_82
    :try_start_82
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "User "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is not a profile"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 913
    .end local v1    # "profile":Landroid/content/pm/UserInfo;
    .end local v2    # "parent":Landroid/content/pm/UserInfo;
    :catchall_9e
    move-exception v1

    monitor-exit v0
    :try_end_a0
    .catchall {:try_start_82 .. :try_end_a0} :catchall_9e

    throw v1
.end method

.method private showConfirmCredentialToDisableQuietMode(ILandroid/content/IntentSender;)V
    .registers 9
    .param p1, "userHandle"    # I
    .param p2, "target"    # Landroid/content/IntentSender;

    .line 957
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 962
    .local v0, "km":Landroid/app/KeyguardManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v1

    .line 964
    .local v1, "unlockIntent":Landroid/content/Intent;
    if-nez v1, :cond_13

    .line 965
    return-void

    .line 967
    :cond_13
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.server.pm.DISABLE_QUIET_MODE_AFTER_UNLOCK"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 969
    .local v2, "callBackIntent":Landroid/content/Intent;
    if-eqz p2, :cond_21

    .line 970
    const-string v3, "android.intent.extra.INTENT"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 972
    :cond_21
    const-string v3, "android.intent.extra.USER_ID"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 973
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 974
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 975
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v5, 0x54000000

    invoke-static {v3, v4, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 984
    .local v3, "pendingIntent":Landroid/app/PendingIntent;
    const-string v4, "android.intent.extra.INTENT"

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 985
    const/high16 v4, 0x10800000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 986
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 987
    return-void
.end method

.method private updateRestrictionsIfNeededLR(ILandroid/os/Bundle;Landroid/util/SparseArray;)Z
    .registers 6
    .param p1, "userId"    # I
    .param p2, "restrictions"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Landroid/util/SparseArray<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation

    .line 1448
    .local p3, "restrictionsArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Bundle;>;"
    nop

    .line 1449
    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-static {v0, p2}, Lcom/android/server/pm/UserRestrictionsUtils;->areEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1450
    .local v0, "changed":Z
    if-eqz v0, :cond_1c

    .line 1451
    invoke-static {p2}, Lcom/android/server/pm/UserRestrictionsUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 1452
    invoke-virtual {p3, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1c

    .line 1454
    :cond_19
    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 1457
    :cond_1c
    :goto_1c
    return v0
.end method

.method private updateUserIds()V
    .registers 9

    .line 3343
    const/4 v0, 0x0

    .line 3344
    .local v0, "num":I
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3345
    :try_start_4
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_48

    .line 3346
    .local v2, "userSize":I
    const/4 v3, 0x0

    move v4, v0

    move v0, v3

    .local v0, "i":I
    .local v4, "num":I
    :goto_d
    if-ge v0, v2, :cond_22

    .line 3347
    :try_start_f
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v5, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v5, v5, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v5, :cond_1f

    .line 3348
    add-int/lit8 v4, v4, 0x1

    .line 3346
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 3351
    .end local v0    # "i":I
    :cond_22
    new-array v0, v4, [I

    .line 3352
    .local v0, "newUsers":[I
    const/4 v5, 0x0

    .line 3353
    .local v5, "n":I
    nop

    .local v3, "i":I
    :goto_26
    if-ge v3, v2, :cond_44

    .line 3354
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v6, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v6, v6, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v6, :cond_41

    .line 3355
    add-int/lit8 v6, v5, 0x1

    .local v6, "n":I
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    aput v7, v0, v5

    .line 3353
    .end local v5    # "n":I
    move v5, v6

    .end local v6    # "n":I
    .restart local v5    # "n":I
    :cond_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 3358
    .end local v3    # "i":I
    :cond_44
    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    .line 3359
    .end local v0    # "newUsers":[I
    .end local v2    # "userSize":I
    .end local v5    # "n":I
    monitor-exit v1

    .line 3360
    return-void

    .line 3359
    .end local v4    # "num":I
    .local v0, "num":I
    :catchall_48
    move-exception v2

    move v4, v0

    move-object v0, v2

    .end local v0    # "num":I
    .restart local v4    # "num":I
    :goto_4b
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_f .. :try_end_4c} :catchall_4d

    throw v0

    :catchall_4d
    move-exception v0

    goto :goto_4b
.end method

.method private updateUserRestrictionsInternalLR(Landroid/os/Bundle;I)V
    .registers 8
    .param p1, "newBaseRestrictions"    # Landroid/os/Bundle;
    .param p2, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRestrictionsLock"
    .end annotation

    .line 1641
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mAppliedUserRestrictions:Landroid/util/SparseArray;

    .line 1642
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 1641
    invoke-static {v0}, Lcom/android/server/pm/UserRestrictionsUtils;->nonNull(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 1645
    .local v0, "prevAppliedRestrictions":Landroid/os/Bundle;
    if-eqz p1, :cond_3c

    .line 1647
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 1649
    .local v1, "prevBaseRestrictions":Landroid/os/Bundle;
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, p1, :cond_1c

    move v4, v3

    goto :goto_1d

    :cond_1c
    move v4, v2

    :goto_1d
    invoke-static {v4}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1650
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, p1, :cond_2a

    move v2, v3

    nop

    :cond_2a
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1653
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    invoke-direct {p0, p2, p1, v2}, Lcom/android/server/pm/UserManagerService;->updateRestrictionsIfNeededLR(ILandroid/os/Bundle;Landroid/util/SparseArray;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 1654
    invoke-direct {p0, p2}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 1658
    .end local v1    # "prevBaseRestrictions":Landroid/os/Bundle;
    :cond_3c
    invoke-direct {p0, p2}, Lcom/android/server/pm/UserManagerService;->computeEffectiveUserRestrictionsLR(I)Landroid/os/Bundle;

    move-result-object v1

    .line 1660
    .local v1, "effective":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1668
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    if-eqz v2, :cond_53

    .line 1669
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/pm/UserManagerService$2;

    invoke-direct {v3, p0, v1, p2}, Lcom/android/server/pm/UserManagerService$2;-><init>(Lcom/android/server/pm/UserManagerService;Landroid/os/Bundle;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1681
    :cond_53
    invoke-direct {p0, p2, v1, v0}, Lcom/android/server/pm/UserManagerService;->propagateUserRestrictionsLR(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    .line 1683
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mAppliedUserRestrictions:Landroid/util/SparseArray;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v2, p2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1684
    return-void
.end method

.method private upgradeIfNecessaryLP(Landroid/os/Bundle;)V
    .registers 11
    .param p1, "oldGlobalUserRestrictions"    # Landroid/os/Bundle;

    .line 2074
    iget v0, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 2075
    .local v0, "originalVersion":I
    iget v1, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 2076
    .local v1, "userVersion":I
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge v1, v2, :cond_2d

    .line 2078
    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v2

    .line 2079
    .local v2, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    const-string v4, "Primary"

    iget-object v5, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v5, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 2080
    iget-object v4, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    .line 2081
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x104045a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 2082
    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 2084
    :cond_2c
    const/4 v1, 0x1

    .line 2087
    .end local v2    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_2d
    const/4 v2, 0x2

    if-ge v1, v2, :cond_48

    .line 2089
    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v2

    .line 2090
    .restart local v2    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    iget-object v4, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v4, v4, 0x10

    if-nez v4, :cond_47

    .line 2091
    iget-object v4, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v5, v4, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v4, Landroid/content/pm/UserInfo;->flags:I

    .line 2092
    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 2094
    :cond_47
    const/4 v1, 0x2

    .line 2098
    .end local v2    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_48
    const/4 v2, 0x4

    if-ge v1, v2, :cond_4c

    .line 2099
    const/4 v1, 0x4

    .line 2102
    :cond_4c
    const/4 v2, 0x5

    if-ge v1, v2, :cond_53

    .line 2103
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->initDefaultGuestRestrictions()V

    .line 2104
    const/4 v1, 0x5

    .line 2107
    :cond_53
    const/4 v2, 0x6

    const/16 v4, -0x2710

    if-ge v1, v2, :cond_90

    .line 2108
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v2

    .line 2109
    .local v2, "splitSystemUser":Z
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2110
    move v6, v3

    .local v6, "i":I
    :goto_60
    :try_start_60
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_8a

    .line 2111
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/UserManagerService$UserData;

    .line 2113
    .local v7, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-nez v2, :cond_87

    iget-object v8, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v8

    if-eqz v8, :cond_87

    iget-object v8, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v8, v8, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    if-ne v8, v4, :cond_87

    .line 2116
    iget-object v8, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iput v3, v8, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    .line 2117
    invoke-direct {p0, v7}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 2110
    .end local v7    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_87
    add-int/lit8 v6, v6, 0x1

    goto :goto_60

    .line 2120
    .end local v6    # "i":I
    :cond_8a
    monitor-exit v5

    .line 2121
    const/4 v1, 0x6

    .end local v2    # "splitSystemUser":Z
    goto :goto_90

    .line 2120
    .restart local v2    # "splitSystemUser":Z
    :catchall_8d
    move-exception v3

    monitor-exit v5
    :try_end_8f
    .catchall {:try_start_60 .. :try_end_8f} :catchall_8d

    throw v3

    .line 2124
    .end local v2    # "splitSystemUser":Z
    :cond_90
    :goto_90
    const/4 v2, 0x7

    if-ge v1, v2, :cond_b6

    .line 2126
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2127
    :try_start_96
    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result v5

    if-nez v5, :cond_a7

    iget v5, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    if-eq v5, v4, :cond_a7

    .line 2129
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    iget v5, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    invoke-virtual {v4, v5, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2134
    :cond_a7
    const-string v4, "ensure_verify_apps"

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    invoke-static {v4, v5, v6}, Lcom/android/server/pm/UserRestrictionsUtils;->moveRestriction(Ljava/lang/String;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 2137
    monitor-exit v3

    .line 2138
    const/4 v1, 0x7

    goto :goto_b6

    .line 2137
    :catchall_b3
    move-exception v2

    monitor-exit v3
    :try_end_b5
    .catchall {:try_start_96 .. :try_end_b5} :catchall_b3

    throw v2

    .line 2141
    :cond_b6
    :goto_b6
    if-ge v1, v2, :cond_d9

    .line 2142
    const-string v3, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "User version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " didn\'t upgrade as expected to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e2

    .line 2145
    :cond_d9
    iput v1, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 2147
    iget v2, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    if-ge v0, v2, :cond_e2

    .line 2148
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    .line 2151
    :cond_e2
    :goto_e2
    return-void
.end method

.method private userWithName(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;
    .registers 4
    .param p1, "orig"    # Landroid/content/pm/UserInfo;

    .line 1060
    if-eqz p1, :cond_16

    iget-object v0, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-nez v0, :cond_16

    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    if-nez v0, :cond_16

    .line 1061
    new-instance v0, Landroid/content/pm/UserInfo;

    invoke-direct {v0, p1}, Landroid/content/pm/UserInfo;-><init>(Landroid/content/pm/UserInfo;)V

    .line 1062
    .local v0, "withName":Landroid/content/pm/UserInfo;
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->getOwnerName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 1063
    return-object v0

    .line 1065
    .end local v0    # "withName":Landroid/content/pm/UserInfo;
    :cond_16
    return-object p1
.end method

.method private verifyCallingPackage(Ljava/lang/String;I)V
    .registers 7
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingUid"    # I

    .line 4122
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;II)I

    move-result v0

    .line 4123
    .local v0, "packageUid":I
    if-ne v0, p2, :cond_e

    .line 4127
    return-void

    .line 4124
    :cond_e
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Specified package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " does not match the calling uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static writeApplicationRestrictionsLAr(Landroid/os/Bundle;Landroid/util/AtomicFile;)V
    .registers 8
    .param p0, "restrictions"    # Landroid/os/Bundle;
    .param p1, "restrictionsFile"    # Landroid/util/AtomicFile;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mAppRestrictionsLock"
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3223
    const/4 v0, 0x0

    move-object v1, v0

    .line 3225
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {p1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v1, v2

    .line 3226
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3228
    .local v2, "bos":Ljava/io/BufferedOutputStream;
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 3229
    .local v3, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 3230
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v0, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3231
    const-string v5, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 3233
    const-string/jumbo v4, "restrictions"

    invoke-interface {v3, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3234
    invoke-static {p0, v3}, Lcom/android/server/pm/UserManagerService;->writeBundle(Landroid/os/Bundle;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 3235
    const-string/jumbo v4, "restrictions"

    invoke-interface {v3, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3237
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 3238
    invoke-virtual {p1, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3c} :catch_3d

    .line 3242
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v3    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    goto :goto_48

    .line 3239
    :catch_3d
    move-exception v0

    .line 3240
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p1, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 3241
    const-string v2, "UserManagerService"

    const-string v3, "Error writing application restrictions list"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3243
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_48
    return-void
.end method

.method private static writeApplicationRestrictionsLAr(Ljava/lang/String;Landroid/os/Bundle;I)V
    .registers 7
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "restrictions"    # Landroid/os/Bundle;
    .param p2, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mAppRestrictionsLock"
    .end annotation

    .line 3214
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    .line 3215
    invoke-static {p2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    .line 3216
    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 3217
    .local v0, "restrictionsFile":Landroid/util/AtomicFile;
    invoke-static {p1, v0}, Lcom/android/server/pm/UserManagerService;->writeApplicationRestrictionsLAr(Landroid/os/Bundle;Landroid/util/AtomicFile;)V

    .line 3218
    return-void
.end method

.method private writeBitmapLP(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;)V
    .registers 10
    .param p1, "info"    # Landroid/content/pm/UserInfo;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .line 1939
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1940
    .local v0, "dir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "photo.png"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1941
    .local v1, "file":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "photo.png.tmp"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1942
    .local v2, "tmp":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_31

    .line 1943
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 1944
    nop

    .line 1945
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1f9

    .line 1944
    const/4 v5, -0x1

    invoke-static {v3, v4, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 1950
    :cond_31
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v6, v5

    .line 1950
    .local v6, "os":Ljava/io/FileOutputStream;
    invoke-virtual {p2, v3, v4, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 1951
    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_53

    invoke-static {v1}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 1952
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;
    :try_end_53
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_53} :catch_5c

    .line 1955
    :cond_53
    :try_start_53
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_57
    .catch Ljava/io/FileNotFoundException; {:try_start_53 .. :try_end_56} :catch_5c

    .line 1958
    goto :goto_58

    .line 1956
    :catch_57
    move-exception v3

    .line 1959
    :goto_58
    :try_start_58
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_5b
    .catch Ljava/io/FileNotFoundException; {:try_start_58 .. :try_end_5b} :catch_5c

    .line 1962
    .end local v0    # "dir":Ljava/io/File;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "tmp":Ljava/io/File;
    .end local v6    # "os":Ljava/io/FileOutputStream;
    goto :goto_64

    .line 1960
    :catch_5c
    move-exception v0

    .line 1961
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v1, "UserManagerService"

    const-string v2, "Error setting photo for user "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1963
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_64
    return-void
.end method

.method private static writeBundle(Landroid/os/Bundle;Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 12
    .param p0, "restrictions"    # Landroid/os/Bundle;
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3247
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3248
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 3249
    .local v2, "value":Ljava/lang/Object;
    const-string v3, "entry"

    const/4 v4, 0x0

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3250
    const-string/jumbo v3, "key"

    invoke-interface {p1, v4, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3252
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_39

    .line 3253
    const-string/jumbo v3, "type"

    const-string v5, "b"

    invoke-interface {p1, v4, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3254
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_ef

    .line 3255
    :cond_39
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_4e

    .line 3256
    const-string/jumbo v3, "type"

    const-string v5, "i"

    invoke-interface {p1, v4, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3257
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_ef

    .line 3258
    :cond_4e
    if-eqz v2, :cond_db

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_56

    goto/16 :goto_db

    .line 3261
    :cond_56
    instance-of v3, v2, Landroid/os/Bundle;

    if-eqz v3, :cond_6a

    .line 3262
    const-string/jumbo v3, "type"

    const-string v5, "B"

    invoke-interface {p1, v4, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3263
    move-object v3, v2

    check-cast v3, Landroid/os/Bundle;

    invoke-static {v3, p1}, Lcom/android/server/pm/UserManagerService;->writeBundle(Landroid/os/Bundle;Lorg/xmlpull/v1/XmlSerializer;)V

    goto/16 :goto_ef

    .line 3264
    :cond_6a
    instance-of v3, v2, [Landroid/os/Parcelable;

    const/4 v5, 0x0

    if-eqz v3, :cond_a7

    .line 3265
    const-string/jumbo v3, "type"

    const-string v6, "BA"

    invoke-interface {p1, v4, v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3266
    move-object v3, v2

    check-cast v3, [Landroid/os/Parcelable;

    .line 3267
    .local v3, "array":[Landroid/os/Parcelable;
    array-length v6, v3

    :goto_7b
    if-ge v5, v6, :cond_a6

    aget-object v7, v3, v5

    .line 3268
    .local v7, "parcelable":Landroid/os/Parcelable;
    instance-of v8, v7, Landroid/os/Bundle;

    if-eqz v8, :cond_9e

    .line 3271
    const-string v8, "entry"

    invoke-interface {p1, v4, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3272
    const-string/jumbo v8, "type"

    const-string v9, "B"

    invoke-interface {p1, v4, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3273
    move-object v8, v7

    check-cast v8, Landroid/os/Bundle;

    invoke-static {v8, p1}, Lcom/android/server/pm/UserManagerService;->writeBundle(Landroid/os/Bundle;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 3274
    const-string v8, "entry"

    invoke-interface {p1, v4, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3267
    .end local v7    # "parcelable":Landroid/os/Parcelable;
    add-int/lit8 v5, v5, 0x1

    goto :goto_7b

    .line 3269
    .restart local v7    # "parcelable":Landroid/os/Parcelable;
    :cond_9e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v4, "bundle-array can only hold Bundles"

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3276
    .end local v3    # "array":[Landroid/os/Parcelable;
    .end local v7    # "parcelable":Landroid/os/Parcelable;
    :cond_a6
    goto :goto_ef

    .line 3277
    :cond_a7
    const-string/jumbo v3, "type"

    const-string/jumbo v6, "sa"

    invoke-interface {p1, v4, v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3278
    move-object v3, v2

    check-cast v3, [Ljava/lang/String;

    .line 3279
    .local v3, "values":[Ljava/lang/String;
    const-string/jumbo v6, "m"

    array-length v7, v3

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3280
    array-length v6, v3

    :goto_bf
    if-ge v5, v6, :cond_ef

    aget-object v7, v3, v5

    .line 3281
    .local v7, "choice":Ljava/lang/String;
    const-string/jumbo v8, "value"

    invoke-interface {p1, v4, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3282
    if-eqz v7, :cond_cd

    move-object v8, v7

    goto :goto_cf

    :cond_cd
    const-string v8, ""

    :goto_cf
    invoke-interface {p1, v8}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3283
    const-string/jumbo v8, "value"

    invoke-interface {p1, v4, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3280
    .end local v7    # "choice":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_bf

    .line 3259
    .end local v3    # "values":[Ljava/lang/String;
    :cond_db
    :goto_db
    const-string/jumbo v3, "type"

    const-string/jumbo v5, "s"

    invoke-interface {p1, v4, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3260
    if-eqz v2, :cond_ea

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    goto :goto_ec

    :cond_ea
    const-string v3, ""

    :goto_ec
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3286
    :cond_ef
    :goto_ef
    const-string v3, "entry"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3287
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    goto/16 :goto_8

    .line 3288
    :cond_f6
    return-void
.end method

.method private writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V
    .registers 8
    .param p1, "userData"    # Lcom/android/server/pm/UserManagerService$UserData;

    .line 2212
    const/4 v0, 0x0

    .line 2213
    .local v0, "fos":Ljava/io/FileOutputStream;
    new-instance v1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ".xml"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 2215
    .local v1, "userFile":Landroid/util/AtomicFile;
    :try_start_22
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v0, v2

    .line 2216
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2217
    .local v2, "bos":Ljava/io/BufferedOutputStream;
    invoke-virtual {p0, p1, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;Ljava/io/OutputStream;)V

    .line 2218
    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_32} :catch_33

    .line 2222
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    goto :goto_51

    .line 2219
    :catch_33
    move-exception v2

    .line 2220
    .local v2, "ioe":Ljava/lang/Exception;
    const-string v3, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error writing user info "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2221
    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 2223
    .end local v2    # "ioe":Ljava/lang/Exception;
    :goto_51
    return-void
.end method

.method private writeUserListLP()V
    .registers 12

    .line 2326
    const/4 v0, 0x0

    .line 2327
    .local v0, "fos":Ljava/io/FileOutputStream;
    new-instance v1, Landroid/util/AtomicFile;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 2329
    .local v1, "userListFile":Landroid/util/AtomicFile;
    :try_start_8
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v0, v2

    .line 2330
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2333
    .local v2, "bos":Ljava/io/BufferedOutputStream;
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 2334
    .local v3, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2335
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v3, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2336
    const-string v5, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 2338
    const-string/jumbo v4, "users"

    invoke-interface {v3, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2339
    const-string/jumbo v4, "nextSerialNumber"

    iget v5, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2340
    const-string/jumbo v4, "version"

    iget v5, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2342
    const-string v4, "guestRestrictions"

    invoke-interface {v3, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2343
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v4
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_54} :catch_ca

    .line 2344
    :try_start_54
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    const-string/jumbo v7, "restrictions"

    .line 2345
    invoke-static {v3, v5, v7}, Lcom/android/server/pm/UserRestrictionsUtils;->writeRestrictions(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 2346
    monitor-exit v4
    :try_end_5d
    .catchall {:try_start_54 .. :try_end_5d} :catchall_c7

    .line 2347
    :try_start_5d
    const-string v4, "guestRestrictions"

    invoke-interface {v3, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2348
    const-string v4, "deviceOwnerUserId"

    invoke-interface {v3, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2349
    const-string v4, "id"

    iget v5, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2350
    const-string v4, "deviceOwnerUserId"

    invoke-interface {v3, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2352
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_7a} :catch_ca

    .line 2353
    :try_start_7a
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    new-array v5, v5, [I

    .line 2354
    .local v5, "userIdsToWrite":[I
    const/4 v7, 0x0

    move v8, v7

    .line 2354
    .local v8, "i":I
    :goto_84
    array-length v9, v5

    if-ge v8, v9, :cond_98

    .line 2355
    iget-object v9, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v9, v9, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 2356
    .local v9, "user":Landroid/content/pm/UserInfo;
    iget v10, v9, Landroid/content/pm/UserInfo;->id:I

    aput v10, v5, v8

    .line 2354
    .end local v9    # "user":Landroid/content/pm/UserInfo;
    add-int/lit8 v8, v8, 0x1

    goto :goto_84

    .line 2358
    .end local v8    # "i":I
    :cond_98
    monitor-exit v4
    :try_end_99
    .catchall {:try_start_7a .. :try_end_99} :catchall_c4

    move-object v4, v5

    .line 2359
    .end local v5    # "userIdsToWrite":[I
    .local v4, "userIdsToWrite":[I
    :try_start_9a
    array-length v5, v4

    :goto_9b
    if-ge v7, v5, :cond_b7

    aget v8, v4, v7

    .line 2360
    .local v8, "id":I
    const-string/jumbo v9, "user"

    invoke-interface {v3, v6, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2361
    const-string v9, "id"

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v6, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2362
    const-string/jumbo v9, "user"

    invoke-interface {v3, v6, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2359
    .end local v8    # "id":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_9b

    .line 2365
    :cond_b7
    const-string/jumbo v5, "users"

    invoke-interface {v3, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2367
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2368
    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_c3} :catch_ca

    .line 2372
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v3    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v4    # "userIdsToWrite":[I
    goto :goto_d5

    .line 2358
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v3    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catchall_c4
    move-exception v5

    :try_start_c5
    monitor-exit v4
    :try_end_c6
    .catchall {:try_start_c5 .. :try_end_c6} :catchall_c4

    :try_start_c6
    throw v5
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_c7} :catch_ca

    .line 2346
    :catchall_c7
    move-exception v5

    :try_start_c8
    monitor-exit v4
    :try_end_c9
    .catchall {:try_start_c8 .. :try_end_c9} :catchall_c7

    :try_start_c9
    throw v5
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_ca} :catch_ca

    .line 2369
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v3    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_ca
    move-exception v2

    .line 2370
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 2371
    const-string v3, "UserManagerService"

    const-string v4, "Error writing user list"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2373
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_d5
    return-void
.end method


# virtual methods
.method addRemovingUserIdLocked(I)V
    .registers 4
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUsersLock"
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2953
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2954
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRecentlyRemovedIds:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 2956
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRecentlyRemovedIds:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_1e

    .line 2957
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRecentlyRemovedIds:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 2959
    :cond_1e
    return-void
.end method

.method applyUserRestrictionsForAllUsersLR()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRestrictionsLock"
    .end annotation

    .line 1734
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1738
    new-instance v0, Lcom/android/server/pm/UserManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/pm/UserManagerService$4;-><init>(Lcom/android/server/pm/UserManagerService;)V

    .line 1760
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1761
    return-void
.end method

.method applyUserRestrictionsLR(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 1724
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->updateUserRestrictionsInternalLR(Landroid/os/Bundle;I)V

    .line 1725
    return-void
.end method

.method public canAddMoreManagedProfiles(IZ)Z
    .registers 11
    .param p1, "userId"    # I
    .param p2, "allowedToRemoveOne"    # Z

    .line 1776
    const-string v0, "check if more managed profiles can be added."

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1777
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 1778
    return v1

    .line 1780
    :cond_d
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.software.managed_users"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1782
    return v1

    .line 1785
    :cond_1c
    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    .line 1786
    .local v0, "managedProfilesCount":I
    if-lez v0, :cond_2c

    if-eqz p2, :cond_2c

    move v3, v2

    goto :goto_2d

    :cond_2c
    move v3, v1

    .line 1787
    .local v3, "profilesRemovedCount":I
    :goto_2d
    sub-int v4, v0, v3

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getMaxManagedProfiles()I

    move-result v5

    if-lt v4, v5, :cond_36

    .line 1788
    return v1

    .line 1790
    :cond_36
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1791
    :try_start_39
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    .line 1792
    .local v5, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v5, :cond_58

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->canHaveProfile()Z

    move-result v6

    if-nez v6, :cond_46

    goto :goto_58

    .line 1795
    :cond_46
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->getAliveUsersExcludingGuestsCountLU()I

    move-result v6

    sub-int/2addr v6, v3

    .line 1798
    .local v6, "usersCountAfterRemoving":I
    if-eq v6, v2, :cond_55

    .line 1799
    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v7

    if-ge v6, v7, :cond_54

    goto :goto_55

    :cond_54
    goto :goto_56

    :cond_55
    :goto_55
    move v1, v2

    :goto_56
    monitor-exit v4

    .line 1798
    return v1

    .line 1793
    .end local v6    # "usersCountAfterRemoving":I
    :cond_58
    :goto_58
    monitor-exit v4

    return v1

    .line 1800
    .end local v5    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_5a
    move-exception v1

    monitor-exit v4
    :try_end_5c
    .catchall {:try_start_39 .. :try_end_5c} :catchall_5a

    throw v1
.end method

.method public canHaveRestrictedProfile(I)Z
    .registers 6
    .param p1, "userId"    # I

    .line 1177
    const-string v0, "canHaveRestrictedProfile"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1178
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1179
    :try_start_8
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1180
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    const/4 v2, 0x0

    if-eqz v1, :cond_2e

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->canHaveProfile()Z

    move-result v3

    if-nez v3, :cond_16

    goto :goto_2e

    .line 1183
    :cond_16
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 1184
    monitor-exit v0

    return v2

    .line 1187
    :cond_1e
    iget-boolean v3, p0, Lcom/android/server/pm/UserManagerService;->mIsDeviceManaged:Z

    if-nez v3, :cond_2c

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mIsUserManaged:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_2c

    const/4 v2, 0x1

    nop

    :cond_2c
    monitor-exit v0

    return v2

    .line 1181
    :cond_2e
    :goto_2e
    monitor-exit v0

    return v2

    .line 1188
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_30

    throw v1
.end method

.method cleanupPartialUsers()V
    .registers 8

    .line 568
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 569
    .local v0, "partials":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 570
    :try_start_8
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 571
    .local v2, "userSize":I
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_10
    if-ge v4, v2, :cond_3a

    .line 572
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v5, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 573
    .local v5, "ui":Landroid/content/pm/UserInfo;
    iget-boolean v6, v5, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v6, :cond_2a

    iget-boolean v6, v5, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-nez v6, :cond_2a

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v6

    if-eqz v6, :cond_37

    :cond_2a
    if-eqz v4, :cond_37

    .line 574
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v6}, Lcom/android/server/pm/UserManagerService;->addRemovingUserIdLocked(I)V

    .line 576
    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/content/pm/UserInfo;->partial:Z

    .line 571
    .end local v5    # "ui":Landroid/content/pm/UserInfo;
    :cond_37
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 579
    .end local v2    # "userSize":I
    .end local v4    # "i":I
    :cond_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_8 .. :try_end_3b} :catchall_79

    .line 580
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 581
    .local v1, "partialsSize":I
    nop

    .local v3, "i":I
    :goto_40
    move v2, v3

    .end local v3    # "i":I
    .local v2, "i":I
    if-ge v2, v1, :cond_78

    .line 582
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 583
    .local v3, "ui":Landroid/content/pm/UserInfo;
    const-string v4, "UserManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing partially created user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " (name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v4}, Lcom/android/server/pm/UserManagerService;->removeUserState(I)V

    .line 581
    .end local v3    # "ui":Landroid/content/pm/UserInfo;
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    goto :goto_40

    .line 587
    .end local v3    # "i":I
    :cond_78
    return-void

    .line 579
    .end local v1    # "partialsSize":I
    :catchall_79
    move-exception v2

    :try_start_7a
    monitor-exit v1
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_79

    throw v2
.end method

.method public clearSeedAccountData()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3523
    const-string v0, "Cannot clear seed account information"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 3524
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3526
    :try_start_8
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_24

    .line 3527
    :try_start_b
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v2

    .line 3528
    .local v2, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-nez v2, :cond_18

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_21

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_24

    return-void

    .line 3529
    :cond_18
    :try_start_18
    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerService$UserData;->clearSeedAccountData()V

    .line 3530
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_21

    .line 3531
    :try_start_1c
    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 3532
    .end local v2    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_24

    .line 3533
    return-void

    .line 3530
    :catchall_21
    move-exception v2

    :try_start_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    :try_start_23
    throw v2

    .line 3532
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public createProfileForUser(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .param p4, "disallowedPackages"    # [Ljava/lang/String;

    .line 2561
    invoke-static {p2}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(I)V

    .line 2562
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/UserManagerService;->createUserInternal(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public createProfileForUserEvenWhenDisallowed(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .param p4, "disallowedPackages"    # [Ljava/lang/String;

    .line 2568
    invoke-static {p2}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(I)V

    .line 2569
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/UserManagerService;->createUserInternalUnchecked(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public createRestrictedProfile(Ljava/lang/String;I)Landroid/content/pm/UserInfo;
    .registers 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "parentUserId"    # I

    .line 2777
    const-string/jumbo v0, "setupRestrictedProfile"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    .line 2778
    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/android/server/pm/UserManagerService;->createProfileForUser(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 2780
    .local v1, "user":Landroid/content/pm/UserInfo;
    if-nez v1, :cond_10

    .line 2781
    return-object v0

    .line 2783
    :cond_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2785
    .local v2, "identity":J
    :try_start_14
    const-string/jumbo v0, "no_modify_accounts"

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    const/4 v5, 0x1

    invoke-virtual {p0, v0, v5, v4}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 2788
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "location_mode"

    const/4 v6, 0x0

    iget v7, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0, v4, v6, v7}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2791
    const-string/jumbo v0, "no_share_location"

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0, v5, v4}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V
    :try_end_34
    .catchall {:try_start_14 .. :try_end_34} :catchall_39

    .line 2793
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2794
    nop

    .line 2795
    return-object v1

    .line 2793
    :catchall_39
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 2580
    invoke-static {p2}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(I)V

    .line 2581
    const/16 v0, -0x2710

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->createUserInternal(Ljava/lang/String;II)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 26
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v10, p2

    .line 3598
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-string v2, "UserManagerService"

    invoke-static {v0, v2, v10}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 3600
    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 3601
    .local v11, "now":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    .line 3602
    .local v13, "nowRealtime":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 3603
    .local v3, "sb":Ljava/lang/StringBuilder;
    iget-object v15, v1, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v15

    .line 3604
    :try_start_1f
    iget-object v8, v1, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_2c5

    .line 3605
    :try_start_22
    const-string v0, "Users:"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3606
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_28
    move v9, v0

    .end local v0    # "i":I
    .local v9, "i":I
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v9, v0, :cond_1d6

    .line 3607
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerService$UserData;

    move-object v6, v0

    .line 3608
    .local v6, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-nez v6, :cond_45

    .line 3609
    nop

    .line 3606
    move-object/from16 v20, v8

    move/from16 v21, v9

    move-wide/from16 v18, v13

    goto/16 :goto_1ac

    .line 3611
    :cond_45
    iget-object v0, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    move-object v7, v0

    .line 3612
    .local v7, "userInfo":Landroid/content/pm/UserInfo;
    iget v0, v7, Landroid/content/pm/UserInfo;->id:I

    move v4, v0

    .line 3613
    .local v4, "userId":I
    const-string v0, "  "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3614
    const-string v0, " serialNo="

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v7, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3615
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0
    :try_end_63
    .catchall {:try_start_22 .. :try_end_63} :catchall_2bc

    if-eqz v0, :cond_72

    .line 3616
    :try_start_65
    const-string v0, " <removing> "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_6a
    .catchall {:try_start_65 .. :try_end_6a} :catchall_6b

    goto :goto_72

    .line 3678
    .end local v4    # "userId":I
    .end local v6    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .end local v7    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v9    # "i":I
    :catchall_6b
    move-exception v0

    move-object/from16 v20, v8

    move-wide/from16 v18, v13

    goto/16 :goto_2c1

    .line 3618
    .restart local v4    # "userId":I
    .restart local v6    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .restart local v7    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v9    # "i":I
    :cond_72
    :goto_72
    :try_start_72
    iget-boolean v0, v7, Landroid/content/pm/UserInfo;->partial:Z
    :try_end_74
    .catchall {:try_start_72 .. :try_end_74} :catchall_2bc

    if-eqz v0, :cond_7b

    .line 3619
    :try_start_76
    const-string v0, " <partial>"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_7b
    .catchall {:try_start_76 .. :try_end_7b} :catchall_6b

    .line 3621
    :cond_7b
    :try_start_7b
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3622
    const-string v0, "    State: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3624
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    monitor-enter v2
    :try_end_86
    .catchall {:try_start_7b .. :try_end_86} :catchall_2bc

    .line 3625
    :try_start_86
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    move v5, v0

    .line 3626
    .local v5, "state":I
    monitor-exit v2
    :try_end_8f
    .catchall {:try_start_86 .. :try_end_8f} :catchall_1c9

    .line 3627
    :try_start_8f
    invoke-static {v5}, Lcom/android/server/am/UserState;->stateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3628
    const-string v0, "    Created: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_9b
    .catchall {:try_start_8f .. :try_end_9b} :catchall_2bc

    .line 3629
    :try_start_9b
    iget-wide v0, v7, Landroid/content/pm/UserInfo;->creationTime:J
    :try_end_9d
    .catchall {:try_start_9b .. :try_end_9d} :catchall_1c0

    move-object v2, v10

    move/from16 v16, v4

    move/from16 v17, v5

    move-wide v4, v11

    .end local v4    # "userId":I
    .end local v5    # "state":I
    .local v16, "userId":I
    .local v17, "state":I
    move-wide/from16 v18, v13

    move-object v13, v6

    move-object v14, v7

    move-wide v6, v0

    .end local v6    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .end local v7    # "userInfo":Landroid/content/pm/UserInfo;
    .local v13, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .local v14, "userInfo":Landroid/content/pm/UserInfo;
    .local v18, "nowRealtime":J
    :try_start_a8
    invoke-static/range {v2 .. v7}, Lcom/android/server/pm/UserManagerService;->dumpTimeAgo(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;JJ)V

    .line 3631
    const-string v0, "    Last logged in: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3632
    iget-wide v0, v14, Landroid/content/pm/UserInfo;->lastLoggedInTime:J
    :try_end_b2
    .catchall {:try_start_a8 .. :try_end_b2} :catchall_1b9

    move-object v4, v10

    move-object v5, v3

    move-wide v6, v11

    move-object/from16 v20, v8

    move/from16 v21, v9

    move-wide v8, v0

    .end local v9    # "i":I
    .local v21, "i":I
    :try_start_ba
    invoke-static/range {v4 .. v9}, Lcom/android/server/pm/UserManagerService;->dumpTimeAgo(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;JJ)V

    .line 3634
    const-string v0, "    Last logged in fingerprint: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3635
    iget-object v0, v14, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3637
    const-string v0, "    Start time: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3638
    iget-wide v8, v13, Lcom/android/server/pm/UserManagerService$UserData;->startRealtime:J

    move-object v4, v10

    move-object v5, v3

    move-wide/from16 v6, v18

    invoke-static/range {v4 .. v9}, Lcom/android/server/pm/UserManagerService;->dumpTimeAgo(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;JJ)V

    .line 3640
    const-string v0, "    Unlock time: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3641
    iget-wide v8, v13, Lcom/android/server/pm/UserManagerService$UserData;->unlockRealtime:J

    move-object v4, v10

    move-object v5, v3

    move-wide/from16 v6, v18

    invoke-static/range {v4 .. v9}, Lcom/android/server/pm/UserManagerService;->dumpTimeAgo(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;JJ)V

    .line 3643
    const-string v0, "    Has profile owner: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_e8
    .catchall {:try_start_ba .. :try_end_e8} :catchall_1b7

    .line 3644
    move-object/from16 v1, p0

    :try_start_ea
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mIsUserManaged:Landroid/util/SparseBooleanArray;

    move/from16 v4, v16

    invoke-virtual {v0, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .end local v16    # "userId":I
    .restart local v4    # "userId":I
    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3645
    const-string v0, "    Restrictions:"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3646
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_fd
    .catchall {:try_start_ea .. :try_end_fd} :catchall_2c3

    .line 3647
    :try_start_fd
    const-string v0, "      "

    iget-object v5, v1, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    iget v6, v14, Landroid/content/pm/UserInfo;->id:I

    .line 3648
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 3647
    invoke-static {v10, v0, v5}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3649
    const-string v0, "    Device policy global restrictions:"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3650
    const-string v0, "      "

    iget-object v5, v1, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    iget v6, v14, Landroid/content/pm/UserInfo;->id:I

    .line 3651
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 3650
    invoke-static {v10, v0, v5}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3652
    const-string v0, "    Device policy local restrictions:"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3653
    const-string v0, "      "

    iget-object v5, v1, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    iget v6, v14, Landroid/content/pm/UserInfo;->id:I

    .line 3654
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 3653
    invoke-static {v10, v0, v5}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3655
    const-string v0, "    Effective restrictions:"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3656
    const-string v0, "      "

    iget-object v5, v1, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    iget v6, v14, Landroid/content/pm/UserInfo;->id:I

    .line 3657
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 3656
    invoke-static {v10, v0, v5}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3658
    monitor-exit v2
    :try_end_149
    .catchall {:try_start_fd .. :try_end_149} :catchall_1b4

    .line 3660
    :try_start_149
    iget-object v0, v13, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    if-eqz v0, :cond_166

    .line 3661
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Account name: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3662
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3665
    :cond_166
    iget-object v0, v13, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    if-eqz v0, :cond_1ac

    .line 3666
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Seed account name: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3667
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3668
    iget-object v0, v13, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    if-eqz v0, :cond_1a0

    .line 3669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "         account type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3670
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3672
    :cond_1a0
    iget-object v0, v13, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_1ac

    .line 3673
    const-string v0, "         account options exist"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3674
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_1ac
    .catchall {:try_start_149 .. :try_end_1ac} :catchall_2c3

    .line 3606
    .end local v4    # "userId":I
    .end local v13    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .end local v14    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v17    # "state":I
    :cond_1ac
    :goto_1ac
    add-int/lit8 v0, v21, 0x1

    .end local v21    # "i":I
    .restart local v0    # "i":I
    move-wide/from16 v13, v18

    move-object/from16 v8, v20

    goto/16 :goto_28

    .line 3658
    .end local v0    # "i":I
    .restart local v4    # "userId":I
    .restart local v13    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .restart local v14    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v17    # "state":I
    .restart local v21    # "i":I
    :catchall_1b4
    move-exception v0

    :try_start_1b5
    monitor-exit v2
    :try_end_1b6
    .catchall {:try_start_1b5 .. :try_end_1b6} :catchall_1b4

    :try_start_1b6
    throw v0
    :try_end_1b7
    .catchall {:try_start_1b6 .. :try_end_1b7} :catchall_2c3

    .line 3678
    .end local v4    # "userId":I
    .end local v13    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .end local v14    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v17    # "state":I
    .end local v21    # "i":I
    :catchall_1b7
    move-exception v0

    goto :goto_1bc

    :catchall_1b9
    move-exception v0

    move-object/from16 v20, v8

    :goto_1bc
    move-object/from16 v1, p0

    goto/16 :goto_2c1

    .end local v18    # "nowRealtime":J
    .local v13, "nowRealtime":J
    :catchall_1c0
    move-exception v0

    move-object/from16 v20, v8

    move-wide/from16 v18, v13

    move-object/from16 v1, p0

    goto/16 :goto_2c1

    .line 3626
    .restart local v4    # "userId":I
    .restart local v6    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .restart local v7    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v9    # "i":I
    :catchall_1c9
    move-exception v0

    move-object/from16 v20, v8

    move/from16 v21, v9

    move-wide/from16 v18, v13

    move-object v13, v6

    move-object v14, v7

    .end local v6    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .end local v7    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v9    # "i":I
    .local v13, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .restart local v14    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v18    # "nowRealtime":J
    .restart local v21    # "i":I
    :goto_1d2
    :try_start_1d2
    monitor-exit v2
    :try_end_1d3
    .catchall {:try_start_1d2 .. :try_end_1d3} :catchall_1d4

    :try_start_1d3
    throw v0

    :catchall_1d4
    move-exception v0

    goto :goto_1d2

    .line 3678
    .end local v4    # "userId":I
    .end local v14    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v18    # "nowRealtime":J
    .end local v21    # "i":I
    .local v13, "nowRealtime":J
    :cond_1d6
    move-object/from16 v20, v8

    move-wide/from16 v18, v13

    .end local v13    # "nowRealtime":J
    .restart local v18    # "nowRealtime":J
    monitor-exit v20
    :try_end_1db
    .catchall {:try_start_1d3 .. :try_end_1db} :catchall_2c3

    .line 3679
    :try_start_1db
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3680
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Device owner id:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3681
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3682
    const-string v0, "  Guest restrictions:"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3683
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v2
    :try_end_1ff
    .catchall {:try_start_1db .. :try_end_1ff} :catchall_2ca

    .line 3684
    :try_start_1ff
    const-string v0, "    "

    iget-object v4, v1, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-static {v10, v0, v4}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3685
    monitor-exit v2
    :try_end_207
    .catchall {:try_start_1ff .. :try_end_207} :catchall_2b9

    .line 3686
    :try_start_207
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_20a
    .catchall {:try_start_207 .. :try_end_20a} :catchall_2ca

    .line 3687
    :try_start_20a
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3688
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Device managed: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v1, Lcom/android/server/pm/UserManagerService;->mIsDeviceManaged:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3689
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-lez v0, :cond_244

    .line 3690
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3691
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Recently removed userIds: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/pm/UserManagerService;->mRecentlyRemovedIds:Ljava/util/LinkedList;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3693
    :cond_244
    monitor-exit v2
    :try_end_245
    .catchall {:try_start_20a .. :try_end_245} :catchall_2b6

    .line 3694
    :try_start_245
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    monitor-enter v2
    :try_end_248
    .catchall {:try_start_245 .. :try_end_248} :catchall_2ca

    .line 3695
    :try_start_248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Started users state: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3696
    monitor-exit v2
    :try_end_25f
    .catchall {:try_start_248 .. :try_end_25f} :catchall_2b3

    .line 3698
    :try_start_25f
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 3699
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Max users: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3700
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Supports switchable users: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  All guests ephemeral: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x1120078

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3703
    monitor-exit v15
    :try_end_2b2
    .catchall {:try_start_25f .. :try_end_2b2} :catchall_2ca

    .line 3704
    return-void

    .line 3696
    :catchall_2b3
    move-exception v0

    :try_start_2b4
    monitor-exit v2
    :try_end_2b5
    .catchall {:try_start_2b4 .. :try_end_2b5} :catchall_2b3

    :try_start_2b5
    throw v0
    :try_end_2b6
    .catchall {:try_start_2b5 .. :try_end_2b6} :catchall_2ca

    .line 3693
    :catchall_2b6
    move-exception v0

    :try_start_2b7
    monitor-exit v2
    :try_end_2b8
    .catchall {:try_start_2b7 .. :try_end_2b8} :catchall_2b6

    :try_start_2b8
    throw v0
    :try_end_2b9
    .catchall {:try_start_2b8 .. :try_end_2b9} :catchall_2ca

    .line 3685
    :catchall_2b9
    move-exception v0

    :try_start_2ba
    monitor-exit v2
    :try_end_2bb
    .catchall {:try_start_2ba .. :try_end_2bb} :catchall_2b9

    :try_start_2bb
    throw v0
    :try_end_2bc
    .catchall {:try_start_2bb .. :try_end_2bc} :catchall_2ca

    .line 3678
    .end local v18    # "nowRealtime":J
    .restart local v13    # "nowRealtime":J
    :catchall_2bc
    move-exception v0

    move-object/from16 v20, v8

    move-wide/from16 v18, v13

    .end local v13    # "nowRealtime":J
    .restart local v18    # "nowRealtime":J
    :goto_2c1
    :try_start_2c1
    monitor-exit v20
    :try_end_2c2
    .catchall {:try_start_2c1 .. :try_end_2c2} :catchall_2c3

    :try_start_2c2
    throw v0

    :catchall_2c3
    move-exception v0

    goto :goto_2c1

    .line 3703
    .end local v18    # "nowRealtime":J
    .restart local v13    # "nowRealtime":J
    :catchall_2c5
    move-exception v0

    move-wide/from16 v18, v13

    .end local v13    # "nowRealtime":J
    .restart local v18    # "nowRealtime":J
    :goto_2c8
    monitor-exit v15
    :try_end_2c9
    .catchall {:try_start_2c2 .. :try_end_2c9} :catchall_2ca

    throw v0

    :catchall_2ca
    move-exception v0

    goto :goto_2c8
.end method

.method public evictCredentialEncryptionKey(I)V
    .registers 7
    .param p1, "userId"    # I

    .line 1035
    const-string v0, "evict CE key"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1036
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 1037
    .local v0, "am":Landroid/app/IActivityManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1039
    .local v1, "identity":J
    :try_start_d
    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->restartUserInBackground(I)I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_17
    .catchall {:try_start_d .. :try_end_10} :catchall_15

    .line 1043
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1044
    nop

    .line 1045
    return-void

    .line 1043
    :catchall_15
    move-exception v3

    goto :goto_1d

    .line 1040
    :catch_17
    move-exception v3

    .line 1041
    .local v3, "re":Landroid/os/RemoteException;
    :try_start_18
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_15

    .line 1043
    .end local v3    # "re":Landroid/os/RemoteException;
    :goto_1d
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public exists(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 1253
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->exists(I)Z

    move-result v0

    return v0
.end method

.method finishRemoveUser(I)V
    .registers 15
    .param p1, "userHandle"    # I

    .line 2965
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2967
    .local v0, "ident":J
    :try_start_4
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2968
    .local v2, "addedIntent":Landroid/content/Intent;
    const-string v3, "android.intent.extra.user_handle"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2969
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v7, "android.permission.MANAGE_USERS"

    new-instance v8, Lcom/android/server/pm/UserManagerService$6;

    invoke-direct {v8, p0, p1}, Lcom/android/server/pm/UserManagerService$6;-><init>(Lcom/android/server/pm/UserManagerService;I)V

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, v2

    invoke-virtual/range {v4 .. v12}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_28

    .line 2994
    .end local v2    # "addedIntent":Landroid/content/Intent;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2995
    nop

    .line 2996
    return-void

    .line 2994
    :catchall_28
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3068
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->getApplicationRestrictionsForUser(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationRestrictionsForUser(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 3073
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-ne v0, p2, :cond_14

    .line 3074
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUidForPackage(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-nez v0, :cond_28

    .line 3075
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get application restrictions for other user/app "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkSystemOrRoot(Ljava/lang/String;)V

    .line 3077
    :cond_28
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mAppRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3079
    :try_start_2b
    invoke-static {p1, p2}, Lcom/android/server/pm/UserManagerService;->readApplicationRestrictionsLAr(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 3080
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_31

    throw v1
.end method

.method public getCredentialOwnerProfile(I)I
    .registers 5
    .param p1, "userHandle"    # I

    .line 740
    const-string v0, "get the credential owner"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 741
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 742
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 743
    :try_start_10
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 744
    .local v1, "profileParent":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_1a

    .line 745
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    monitor-exit v0

    return v2

    .line 747
    .end local v1    # "profileParent":Landroid/content/pm/UserInfo;
    :cond_1a
    monitor-exit v0

    goto :goto_1f

    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_10 .. :try_end_1e} :catchall_1c

    throw v1

    .line 750
    :cond_1f
    :goto_1f
    return p1
.end method

.method public getDefaultGuestRestrictions()Landroid/os/Bundle;
    .registers 4

    .line 1367
    const-string v0, "getDefaultGuestRestrictions"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1368
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v0

    .line 1369
    :try_start_8
    new-instance v1, Landroid/os/Bundle;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    monitor-exit v0

    return-object v1

    .line 1370
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_11

    throw v1
.end method

.method getFreeProfileBadgeLU(I)I
    .registers 10
    .param p1, "parentUserId"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4077
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getMaxManagedProfiles()I

    move-result v0

    .line 4078
    .local v0, "maxManagedProfiles":I
    new-array v1, v0, [Z

    .line 4079
    .local v1, "usedBadges":[Z
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 4080
    .local v2, "userSize":I
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_e
    if-ge v4, v2, :cond_3a

    .line 4081
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v5, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 4083
    .local v5, "ui":Landroid/content/pm/UserInfo;
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v6

    if-eqz v6, :cond_37

    iget v6, v5, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne v6, p1, :cond_37

    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    .line 4085
    invoke-virtual {v6, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    if-nez v6, :cond_37

    iget v6, v5, Landroid/content/pm/UserInfo;->profileBadge:I

    if-ge v6, v0, :cond_37

    .line 4087
    iget v6, v5, Landroid/content/pm/UserInfo;->profileBadge:I

    const/4 v7, 0x1

    aput-boolean v7, v1, v6

    .line 4080
    .end local v5    # "ui":Landroid/content/pm/UserInfo;
    :cond_37
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 4090
    .end local v4    # "i":I
    :cond_3a
    move v4, v3

    .restart local v4    # "i":I
    :goto_3b
    if-ge v4, v0, :cond_45

    .line 4091
    aget-boolean v5, v1, v4

    if-nez v5, :cond_42

    .line 4092
    return v4

    .line 4090
    :cond_42
    add-int/lit8 v4, v4, 0x1

    goto :goto_3b

    .line 4095
    .end local v4    # "i":I
    :cond_45
    return v3
.end method

.method public getManagedProfileBadge(I)I
    .registers 6
    .param p1, "userId"    # I

    .line 1071
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1072
    .local v0, "callingUserId":I
    if-eq v0, p1, :cond_1b

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 1073
    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroupNoChecks(II)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_1b

    .line 1074
    :cond_13
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "You need MANAGE_USERS permission to: check if specified user a managed profile outside your profile group"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1079
    :cond_1b
    :goto_1b
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1080
    :try_start_1e
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 1081
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_27

    iget v3, v2, Landroid/content/pm/UserInfo;->profileBadge:I

    goto :goto_28

    :cond_27
    const/4 v3, 0x0

    :goto_28
    monitor-exit v1

    return v3

    .line 1082
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_2a
    move-exception v2

    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_1e .. :try_end_2c} :catchall_2a

    throw v2
.end method

.method getNextAvailableId()I
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3435
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3436
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->scanNextAvailableIdLocked()I

    move-result v1

    .line 3437
    .local v1, "nextId":I
    if-ltz v1, :cond_b

    .line 3438
    monitor-exit v0

    return v1

    .line 3442
    :cond_b
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-lez v2, :cond_41

    .line 3443
    const-string v2, "UserManagerService"

    const-string v3, "All available IDs are used. Recycling LRU ids."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3444
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 3445
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRecentlyRemovedIds:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 3446
    .local v3, "recentlyRemovedId":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3447
    .end local v3    # "recentlyRemovedId":Ljava/lang/Integer;
    goto :goto_25

    .line 3448
    :cond_3c
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->scanNextAvailableIdLocked()I

    move-result v2

    move v1, v2

    .line 3450
    :cond_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_4e

    move v0, v1

    .line 3451
    .end local v1    # "nextId":I
    .local v0, "nextId":I
    if-ltz v0, :cond_46

    .line 3454
    return v0

    .line 3452
    :cond_46
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No user id available!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3450
    .end local v0    # "nextId":I
    :catchall_4e
    move-exception v1

    :try_start_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw v1
.end method

.method public getPrimaryUser()Landroid/content/pm/UserInfo;
    .registers 7

    .line 623
    const-string/jumbo v0, "query users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 624
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 625
    :try_start_9
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 626
    .local v1, "userSize":I
    const/4 v2, 0x0

    .line 626
    .local v2, "i":I
    :goto_10
    if-ge v2, v1, :cond_31

    .line 627
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v3, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 628
    .local v3, "ui":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v4

    if-eqz v4, :cond_2e

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_2e

    .line 629
    monitor-exit v0

    return-object v3

    .line 626
    .end local v3    # "ui":Landroid/content/pm/UserInfo;
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 632
    .end local v1    # "userSize":I
    .end local v2    # "i":I
    :cond_31
    monitor-exit v0

    .line 633
    const/4 v0, 0x0

    return-object v0

    .line 632
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_9 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public getProfileIds(IZ)[I
    .registers 7
    .param p1, "userId"    # I
    .param p2, "enabledOnly"    # Z

    .line 675
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p1, v0, :cond_1a

    .line 676
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getting profiles related to user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    .line 678
    :cond_1a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 680
    .local v0, "ident":J
    :try_start_1e
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_31

    .line 681
    :try_start_21
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->getProfileIdsLU(IZ)Landroid/util/IntArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/IntArray;->toArray()[I

    move-result-object v3

    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_2e

    .line 684
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 681
    return-object v3

    .line 682
    :catchall_2e
    move-exception v3

    :try_start_2f
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    :try_start_30
    throw v3
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_31

    .line 684
    :catchall_31
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getProfileParent(I)Landroid/content/pm/UserInfo;
    .registers 4
    .param p1, "userHandle"    # I

    .line 777
    const-string v0, "get the profile parent"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 778
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 779
    :try_start_8
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 780
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public getProfileParentId(I)I
    .registers 3
    .param p1, "userHandle"    # I

    .line 785
    const-string v0, "get the profile parent"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 786
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->getProfileParentId(I)I

    move-result v0

    return v0
.end method

.method public getProfiles(IZ)Ljava/util/List;
    .registers 8
    .param p1, "userId"    # I
    .param p2, "enabledOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 657
    const/4 v0, 0x1

    .line 658
    .local v0, "returnFullInfo":Z
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    if-eq p1, v1, :cond_1c

    .line 659
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getting profiles related to user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    goto :goto_20

    .line 661
    :cond_1c
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v0

    .line 663
    :goto_20
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 665
    .local v1, "ident":J
    :try_start_24
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_33

    .line 666
    :try_start_27
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->getProfilesLU(IZZ)Ljava/util/List;

    move-result-object v4

    monitor-exit v3
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_30

    .line 669
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 666
    return-object v4

    .line 667
    :catchall_30
    move-exception v4

    :try_start_31
    monitor-exit v3
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    :try_start_32
    throw v4
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_33

    .line 669
    :catchall_33
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getSeedAccountName()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3496
    const-string v0, "Cannot get seed account information"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 3497
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3498
    :try_start_8
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    .line 3499
    .local v1, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    monitor-exit v0

    return-object v2

    .line 3500
    .end local v1    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public getSeedAccountOptions()Landroid/os/PersistableBundle;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3514
    const-string v0, "Cannot get seed account information"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 3515
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3516
    :try_start_8
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    .line 3517
    .local v1, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    monitor-exit v0

    return-object v2

    .line 3518
    .end local v1    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public getSeedAccountType()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3505
    const-string v0, "Cannot get seed account information"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 3506
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3507
    :try_start_8
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    .line 3508
    .local v1, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    monitor-exit v0

    return-object v2

    .line 3509
    .end local v1    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public getUserAccount(I)Ljava/lang/String;
    .registers 4
    .param p1, "userId"    # I

    .line 591
    const-string v0, "get user account"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUserAndAcrossUsersFullPermission(Ljava/lang/String;)V

    .line 592
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 593
    :try_start_8
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v1, v1, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 594
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public getUserCreationTime(I)J
    .registers 7
    .param p1, "userHandle"    # I

    .line 3320
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 3321
    .local v0, "callingUserId":I
    const/4 v1, 0x0

    .line 3322
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3323
    if-ne v0, p1, :cond_12

    .line 3324
    :try_start_a
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    move-object v1, v3

    goto :goto_21

    .line 3331
    :catchall_10
    move-exception v3

    goto :goto_30

    .line 3326
    :cond_12
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 3327
    .local v3, "parent":Landroid/content/pm/UserInfo;
    if-eqz v3, :cond_21

    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    if-ne v4, v0, :cond_21

    .line 3328
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    move-object v1, v4

    .line 3331
    .end local v3    # "parent":Landroid/content/pm/UserInfo;
    :cond_21
    :goto_21
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_a .. :try_end_22} :catchall_10

    .line 3332
    if-eqz v1, :cond_27

    .line 3336
    iget-wide v2, v1, Landroid/content/pm/UserInfo;->creationTime:J

    return-wide v2

    .line 3333
    :cond_27
    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "userHandle can only be the calling user or a managed profile associated with this user"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3331
    :goto_30
    :try_start_30
    monitor-exit v2
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_10

    throw v3
.end method

.method public getUserHandle(I)I
    .registers 9
    .param p1, "userSerialNumber"    # I

    .line 3308
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3309
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_1a

    aget v4, v1, v3

    .line 3310
    .local v4, "userId":I
    invoke-direct {p0, v4}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    .line 3311
    .local v5, "info":Landroid/content/pm/UserInfo;
    if-eqz v5, :cond_17

    iget v6, v5, Landroid/content/pm/UserInfo;->serialNumber:I

    if-ne v6, p1, :cond_17

    monitor-exit v0

    return v4

    .line 3309
    .end local v4    # "userId":I
    .end local v5    # "info":Landroid/content/pm/UserInfo;
    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 3314
    :cond_1a
    const/4 v1, -0x1

    monitor-exit v0

    return v1

    .line 3315
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public getUserIcon(I)Landroid/os/ParcelFileDescriptor;
    .registers 10
    .param p1, "targetUserId"    # I

    .line 1299
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1300
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1301
    .local v1, "targetUserInfo":Landroid/content/pm/UserInfo;
    const/4 v2, 0x0

    if-eqz v1, :cond_4c

    iget-boolean v3, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v3, :cond_f

    goto :goto_4c

    .line 1306
    :cond_f
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 1307
    .local v3, "callingUserId":I
    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 1308
    .local v4, "callingGroupId":I
    iget v5, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 1309
    .local v5, "targetGroupId":I
    const/16 v6, -0x2710

    if-eq v4, v6, :cond_23

    if-ne v4, v5, :cond_23

    const/4 v6, 0x1

    goto :goto_24

    :cond_23
    const/4 v6, 0x0

    .line 1311
    .local v6, "sameGroup":Z
    :goto_24
    if-eq v3, p1, :cond_2d

    if-nez v6, :cond_2d

    .line 1312
    const-string v7, "get the icon of a user who is not related"

    invoke-static {v7}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1315
    :cond_2d
    iget-object v7, v1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-nez v7, :cond_33

    .line 1316
    monitor-exit v0

    return-object v2

    .line 1318
    :cond_33
    iget-object v7, v1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    .end local v1    # "targetUserInfo":Landroid/content/pm/UserInfo;
    .end local v3    # "callingUserId":I
    .end local v4    # "callingGroupId":I
    .end local v5    # "targetGroupId":I
    .end local v6    # "sameGroup":Z
    move-object v1, v7

    .line 1319
    .local v1, "iconPath":Ljava/lang/String;
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_64

    .line 1322
    :try_start_37
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    invoke-static {v0, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_42
    .catch Ljava/io/FileNotFoundException; {:try_start_37 .. :try_end_42} :catch_43

    return-object v0

    .line 1324
    :catch_43
    move-exception v0

    .line 1325
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v3, "UserManagerService"

    const-string v4, "Couldn\'t find icon file"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1327
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    return-object v2

    .line 1302
    .local v1, "targetUserInfo":Landroid/content/pm/UserInfo;
    :cond_4c
    :goto_4c
    :try_start_4c
    const-string v3, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getUserIcon: unknown user #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    monitor-exit v0

    return-object v2

    .line 1319
    .end local v1    # "targetUserInfo":Landroid/content/pm/UserInfo;
    :catchall_64
    move-exception v1

    monitor-exit v0
    :try_end_66
    .catchall {:try_start_4c .. :try_end_66} :catchall_64

    throw v1
.end method

.method public getUserIds()[I
    .registers 3

    .line 1971
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1972
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    monitor-exit v0

    return-object v1

    .line 1973
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getUserInfo(I)Landroid/content/pm/UserInfo;
    .registers 4
    .param p1, "userId"    # I

    .line 1049
    const-string/jumbo v0, "query user"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    .line 1050
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1051
    :try_start_9
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->userWithName(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1052
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public getUserRestrictionSource(Ljava/lang/String;I)I
    .registers 7
    .param p1, "restrictionKey"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1539
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->getUserRestrictionSources(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 1541
    .local v0, "enforcingUsers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserManager$EnforcingUser;>;"
    const/4 v1, 0x0

    .line 1542
    .local v1, "result":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_b
    if-ltz v2, :cond_1b

    .line 1543
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager$EnforcingUser;

    invoke-virtual {v3}, Landroid/os/UserManager$EnforcingUser;->getUserRestrictionSource()I

    move-result v3

    or-int/2addr v1, v3

    .line 1542
    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    .line 1545
    .end local v2    # "i":I
    :cond_1b
    return v1
.end method

.method public getUserRestrictionSources(Ljava/lang/String;I)Ljava/util/List;
    .registers 10
    .param p1, "restrictionKey"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/os/UserManager$EnforcingUser;",
            ">;"
        }
    .end annotation

    .line 1551
    const-string v0, "getUserRestrictionSource"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1554
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1555
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1558
    :cond_10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1561
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserManager$EnforcingUser;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->hasBaseUserRestriction(Ljava/lang/String;I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_26

    .line 1562
    new-instance v1, Landroid/os/UserManager$EnforcingUser;

    const/16 v3, -0x2710

    invoke-direct {v1, v3, v2}, Landroid/os/UserManager$EnforcingUser;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1566
    :cond_26
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1568
    :try_start_29
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 1569
    .local v3, "profileOwnerRestrictions":Landroid/os/Bundle;
    invoke-static {v3, p1}, Lcom/android/server/pm/UserRestrictionsUtils;->contains(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 1570
    invoke-direct {p0, p2}, Lcom/android/server/pm/UserManagerService;->getEnforcingUserLocked(I)Landroid/os/UserManager$EnforcingUser;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1574
    :cond_3e
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    sub-int/2addr v4, v2

    .local v4, "i":I
    :goto_45
    move v2, v4

    .end local v4    # "i":I
    .local v2, "i":I
    if-ltz v2, :cond_66

    .line 1575
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 1576
    .local v4, "globalRestrictions":Landroid/os/Bundle;
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 1577
    .local v5, "profileUserId":I
    invoke-static {v4, p1}, Lcom/android/server/pm/UserRestrictionsUtils;->contains(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_63

    .line 1578
    invoke-direct {p0, v5}, Lcom/android/server/pm/UserManagerService;->getEnforcingUserLocked(I)Landroid/os/UserManager$EnforcingUser;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1574
    .end local v4    # "globalRestrictions":Landroid/os/Bundle;
    .end local v5    # "profileUserId":I
    :cond_63
    add-int/lit8 v4, v2, -0x1

    .end local v2    # "i":I
    .local v4, "i":I
    goto :goto_45

    .line 1581
    .end local v3    # "profileOwnerRestrictions":Landroid/os/Bundle;
    .end local v4    # "i":I
    :cond_66
    monitor-exit v1

    .line 1582
    return-object v0

    .line 1581
    :catchall_68
    move-exception v2

    monitor-exit v1
    :try_end_6a
    .catchall {:try_start_29 .. :try_end_6a} :catchall_68

    throw v2
.end method

.method public getUserRestrictions(I)Landroid/os/Bundle;
    .registers 3
    .param p1, "userId"    # I

    .line 1598
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getEffectiveUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/UserRestrictionsUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getUserSerialNumber(I)I
    .registers 4
    .param p1, "userHandle"    # I

    .line 3292
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3293
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v1

    if-nez v1, :cond_c

    const/4 v1, -0x1

    monitor-exit v0

    return v1

    .line 3294
    :cond_c
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/UserInfo;->serialNumber:I

    monitor-exit v0

    return v1

    .line 3295
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public getUserStartRealtime()J
    .registers 6

    .line 1121
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1122
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1123
    :try_start_b
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v2

    .line 1124
    .local v2, "user":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v2, :cond_15

    .line 1125
    iget-wide v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->startRealtime:J

    monitor-exit v1

    return-wide v3

    .line 1127
    :cond_15
    const-wide/16 v3, 0x0

    monitor-exit v1

    return-wide v3

    .line 1128
    .end local v2    # "user":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_19
    move-exception v2

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_b .. :try_end_1b} :catchall_19

    throw v2
.end method

.method public getUserUnlockRealtime()J
    .registers 5

    .line 1133
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1134
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    .line 1135
    .local v1, "user":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v1, :cond_15

    .line 1136
    iget-wide v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->unlockRealtime:J

    monitor-exit v0

    return-wide v2

    .line 1138
    :cond_15
    const-wide/16 v2, 0x0

    monitor-exit v0

    return-wide v2

    .line 1139
    .end local v1    # "user":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public getUsers(Z)Ljava/util/List;
    .registers 9
    .param p1, "excludeDying"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 638
    const-string/jumbo v0, "query users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    .line 639
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 640
    :try_start_9
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 641
    .local v1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 642
    .local v2, "userSize":I
    const/4 v3, 0x0

    .line 642
    .local v3, "i":I
    :goto_1b
    if-ge v3, v2, :cond_42

    .line 643
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v4, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 644
    .local v4, "ui":Landroid/content/pm/UserInfo;
    iget-boolean v5, v4, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v5, :cond_2c

    .line 645
    goto :goto_3f

    .line 647
    :cond_2c
    if-eqz p1, :cond_38

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-nez v5, :cond_3f

    .line 648
    :cond_38
    invoke-direct {p0, v4}, Lcom/android/server/pm/UserManagerService;->userWithName(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 642
    .end local v4    # "ui":Landroid/content/pm/UserInfo;
    :cond_3f
    :goto_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 651
    .end local v3    # "i":I
    :cond_42
    monitor-exit v0

    return-object v1

    .line 652
    .end local v1    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    .end local v2    # "userSize":I
    :catchall_44
    move-exception v1

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_9 .. :try_end_46} :catchall_44

    throw v1
.end method

.method public hasBaseUserRestriction(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "restrictionKey"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1603
    const-string v0, "hasBaseUserRestriction"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1604
    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 1605
    return v1

    .line 1607
    :cond_d
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1608
    :try_start_10
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 1609
    .local v2, "bundle":Landroid/os/Bundle;
    if-eqz v2, :cond_22

    invoke-virtual {v2, p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_22

    const/4 v1, 0x1

    nop

    :cond_22
    monitor-exit v0

    return v1

    .line 1610
    .end local v2    # "bundle":Landroid/os/Bundle;
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_10 .. :try_end_26} :catchall_24

    throw v1
.end method

.method hasManagedProfile(I)Z
    .registers 9
    .param p1, "userId"    # I

    .line 4104
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4105
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 4106
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 4107
    .local v2, "userSize":I
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_f
    if-ge v4, v2, :cond_2b

    .line 4108
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v5, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 4109
    .local v5, "profile":Landroid/content/pm/UserInfo;
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    if-eq p1, v6, :cond_28

    invoke-static {v1, v5}, Lcom/android/server/pm/UserManagerService;->isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z

    move-result v6

    if-eqz v6, :cond_28

    .line 4110
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 4107
    .end local v5    # "profile":Landroid/content/pm/UserInfo;
    :cond_28
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 4113
    .end local v4    # "i":I
    :cond_2b
    monitor-exit v0

    return v3

    .line 4114
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v2    # "userSize":I
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method public hasRestrictedProfiles()Z
    .registers 8

    .line 1193
    const-string v0, "hasRestrictedProfiles"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1194
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1195
    .local v0, "callingUserId":I
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1196
    :try_start_c
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 1197
    .local v2, "userSize":I
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_14
    if-ge v4, v2, :cond_2e

    .line 1198
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v5, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 1199
    .local v5, "profile":Landroid/content/pm/UserInfo;
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    if-eq v0, v6, :cond_2b

    iget v6, v5, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    if-ne v6, v0, :cond_2b

    .line 1201
    monitor-exit v1

    const/4 v1, 0x1

    return v1

    .line 1197
    .end local v5    # "profile":Landroid/content/pm/UserInfo;
    :cond_2b
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 1204
    .end local v4    # "i":I
    :cond_2e
    monitor-exit v1

    return v3

    .line 1205
    .end local v2    # "userSize":I
    :catchall_30
    move-exception v2

    monitor-exit v1
    :try_end_32
    .catchall {:try_start_c .. :try_end_32} :catchall_30

    throw v2
.end method

.method public hasUserRestriction(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "restrictionKey"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1500
    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1501
    return v1

    .line 1503
    :cond_8
    invoke-direct {p0, p2}, Lcom/android/server/pm/UserManagerService;->getEffectiveUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v0

    .line 1504
    .local v0, "restrictions":Landroid/os/Bundle;
    if-eqz v0, :cond_16

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v1, 0x1

    nop

    :cond_16
    return v1
.end method

.method public hasUserRestrictionOnAnyUser(Ljava/lang/String;)Z
    .registers 9
    .param p1, "restrictionKey"    # Ljava/lang/String;

    .line 1510
    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1511
    return v1

    .line 1513
    :cond_8
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    .line 1514
    .local v2, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    move v3, v1

    .local v3, "i":I
    :goto_e
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2c

    .line 1515
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    .line 1516
    .local v4, "userId":I
    invoke-direct {p0, v4}, Lcom/android/server/pm/UserManagerService;->getEffectiveUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v5

    .line 1517
    .local v5, "restrictions":Landroid/os/Bundle;
    if-eqz v5, :cond_29

    invoke-virtual {v5, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_29

    .line 1518
    return v0

    .line 1514
    .end local v4    # "userId":I
    .end local v5    # "restrictions":Landroid/os/Bundle;
    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 1521
    .end local v3    # "i":I
    :cond_2c
    return v1
.end method

.method public isDemoUser(I)Z
    .registers 6
    .param p1, "userId"    # I

    .line 1157
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1158
    .local v0, "callingUserId":I
    if-eq v0, p1, :cond_29

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_29

    .line 1159
    :cond_d
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You need MANAGE_USERS permission to query if u="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is a demo user"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1162
    :cond_29
    :goto_29
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1163
    :try_start_2c
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 1164
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_3a

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isDemo()Z

    move-result v3

    if-eqz v3, :cond_3a

    const/4 v3, 0x1

    goto :goto_3b

    :cond_3a
    const/4 v3, 0x0

    :goto_3b
    monitor-exit v1

    return v3

    .line 1165
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_3d
    move-exception v2

    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_2c .. :try_end_3f} :catchall_3d

    throw v2
.end method

.method public isManagedProfile(I)Z
    .registers 6
    .param p1, "userId"    # I

    .line 1087
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1088
    .local v0, "callingUserId":I
    if-eq v0, p1, :cond_1b

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 1089
    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroupNoChecks(II)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_1b

    .line 1090
    :cond_13
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "You need MANAGE_USERS permission to: check if specified user a managed profile outside your profile group"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1095
    :cond_1b
    :goto_1b
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1096
    :try_start_1e
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 1097
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_2c

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_2c

    const/4 v3, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v3, 0x0

    :goto_2d
    monitor-exit v1

    return v3

    .line 1098
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_2f
    move-exception v2

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_1e .. :try_end_31} :catchall_2f

    throw v2
.end method

.method public isQuietModeEnabled(I)Z
    .registers 5
    .param p1, "userHandle"    # I

    .line 939
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 941
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_20

    .line 942
    :try_start_6
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 943
    .local v2, "info":Landroid/content/pm/UserInfo;
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_1d

    .line 944
    if-eqz v2, :cond_1a

    :try_start_d
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_1a

    .line 947
    :cond_14
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 945
    :cond_1a
    :goto_1a
    const/4 v1, 0x0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_d .. :try_end_1c} :catchall_20

    return v1

    .line 943
    .end local v2    # "info":Landroid/content/pm/UserInfo;
    :catchall_1d
    move-exception v2

    :try_start_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    :try_start_1f
    throw v2

    .line 948
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_20

    throw v1
.end method

.method public isRestricted()Z
    .registers 3

    .line 1170
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1171
    :try_start_3
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1172
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public isSameProfileGroup(II)Z
    .registers 4
    .param p1, "userId"    # I
    .param p2, "otherUserId"    # I

    .line 755
    if-ne p1, p2, :cond_4

    const/4 v0, 0x1

    return v0

    .line 756
    :cond_4
    const-string v0, "check if in the same profile group"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 757
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroupNoChecks(II)Z

    move-result v0

    return v0
.end method

.method isUserInitialized(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 3740
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->isUserInitialized(I)Z

    move-result v0

    return v0
.end method

.method public isUserNameSet(I)Z
    .registers 5
    .param p1, "userHandle"    # I

    .line 3300
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3301
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 3302
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_f

    iget-object v2, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz v2, :cond_f

    const/4 v2, 0x1

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    :goto_10
    monitor-exit v0

    return v2

    .line 3303
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public isUserRunning(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 1115
    const-string/jumbo v0, "isUserRunning"

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 1116
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->isUserRunning(I)Z

    move-result v0

    return v0
.end method

.method public isUserUnlocked(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 1109
    const-string/jumbo v0, "isUserUnlocked"

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 1110
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->isUserUnlocked(I)Z

    move-result v0

    return v0
.end method

.method public isUserUnlockingOrUnlocked(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 1103
    const-string/jumbo v0, "isUserUnlockingOrUnlocked"

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    .line 1104
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    return v0
.end method

.method public makeInitialized(I)V
    .registers 8
    .param p1, "userId"    # I

    .line 1331
    const-string/jumbo v0, "makeInitialized"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1332
    const/4 v0, 0x0

    .line 1334
    .local v0, "scheduleWriteUser":Z
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1335
    :try_start_a
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserManagerService$UserData;

    .line 1336
    .local v2, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v2, :cond_34

    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v3, v3, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v3, :cond_1b

    goto :goto_34

    .line 1340
    :cond_1b
    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v3, v3, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v3, v3, 0x10

    if-nez v3, :cond_2c

    .line 1341
    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v4, v3, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v3, Landroid/content/pm/UserInfo;->flags:I

    .line 1342
    const/4 v0, 0x1

    .line 1344
    :cond_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_a .. :try_end_2d} :catchall_4d

    move-object v1, v2

    .line 1345
    .end local v2    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .local v1, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v0, :cond_33

    .line 1346
    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 1348
    :cond_33
    return-void

    .line 1337
    .end local v1    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .restart local v2    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_34
    :goto_34
    :try_start_34
    const-string v3, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "makeInitialized: unknown user #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    monitor-exit v1

    return-void

    .line 1344
    .end local v2    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_4d
    move-exception v2

    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_34 .. :try_end_4f} :catchall_4d

    throw v2
.end method

.method public markGuestForDeletion(I)Z
    .registers 9
    .param p1, "userHandle"    # I

    .line 2823
    const-string v0, "Only the system can remove users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 2824
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "no_remove_user"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 2826
    const-string v0, "UserManagerService"

    const-string v1, "Cannot remove user. DISALLOW_REMOVE_USER is enabled."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2827
    return v2

    .line 2830
    :cond_1f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2833
    .local v0, "ident":J
    :try_start_23
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_6e

    .line 2834
    :try_start_26
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_6b

    .line 2835
    :try_start_29
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/UserManagerService$UserData;

    .line 2836
    .local v5, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz p1, :cond_62

    if-eqz v5, :cond_62

    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    if-eqz v6, :cond_3e

    goto :goto_62

    .line 2839
    :cond_3e
    monitor-exit v4
    :try_end_3f
    .catchall {:try_start_29 .. :try_end_3f} :catchall_68

    .line 2840
    :try_start_3f
    iget-object v4, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v4

    if-nez v4, :cond_4c

    .line 2841
    monitor-exit v3
    :try_end_48
    .catchall {:try_start_3f .. :try_end_48} :catchall_6b

    .line 2855
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2841
    return v2

    .line 2848
    :cond_4c
    :try_start_4c
    iget-object v2, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/content/pm/UserInfo;->guestToRemove:Z

    .line 2851
    iget-object v2, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v6, v2, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v6, v6, 0x40

    iput v6, v2, Landroid/content/pm/UserInfo;->flags:I

    .line 2852
    invoke-direct {p0, v5}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 2853
    monitor-exit v3
    :try_end_5d
    .catchall {:try_start_4c .. :try_end_5d} :catchall_6b

    .line 2855
    .end local v5    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2856
    nop

    .line 2857
    return v4

    .line 2837
    .restart local v5    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_62
    :goto_62
    :try_start_62
    monitor-exit v4
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_68

    :try_start_63
    monitor-exit v3
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_6b

    .line 2855
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2837
    return v2

    .line 2839
    .end local v5    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_68
    move-exception v2

    :try_start_69
    monitor-exit v4
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_68

    :try_start_6a
    throw v2

    .line 2853
    :catchall_6b
    move-exception v2

    monitor-exit v3
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_6b

    :try_start_6d
    throw v2
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6e

    .line 2855
    :catchall_6e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onBeforeStartUser(I)V
    .registers 7
    .param p1, "userId"    # I

    .line 3367
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 3368
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    if-nez v0, :cond_7

    .line 3369
    return-void

    .line 3371
    :cond_7
    iget v1, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    .line 3373
    .local v1, "userSerial":I
    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    .line 3374
    .local v2, "migrateAppsData":Z
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    invoke-virtual {v4, p1, v1, v3}, Lcom/android/server/pm/UserDataPreparer;->prepareUserData(III)V

    .line 3375
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4, p1, v3, v2}, Lcom/android/server/pm/PackageManagerService;->reconcileAppsData(IIZ)V

    .line 3377
    if-eqz p1, :cond_2a

    .line 3378
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3379
    :try_start_22
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsLR(I)V

    .line 3380
    monitor-exit v3

    goto :goto_2a

    :catchall_27
    move-exception v4

    monitor-exit v3
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_27

    throw v4

    .line 3382
    :cond_2a
    :goto_2a
    return-void
.end method

.method public onBeforeUnlockUser(I)V
    .registers 7
    .param p1, "userId"    # I

    .line 3389
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 3390
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    if-nez v0, :cond_7

    .line 3391
    return-void

    .line 3393
    :cond_7
    iget v1, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    .line 3395
    .local v1, "userSerial":I
    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 3396
    .local v2, "migrateAppsData":Z
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    const/4 v4, 0x2

    invoke-virtual {v3, p1, v1, v4}, Lcom/android/server/pm/UserDataPreparer;->prepareUserData(III)V

    .line 3397
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3, p1, v4, v2}, Lcom/android/server/pm/PackageManagerService;->reconcileAppsData(IIZ)V

    .line 3398
    return-void
.end method

.method onShellCommand(Lcom/android/server/pm/UserManagerService$Shell;Ljava/lang/String;)I
    .registers 8
    .param p1, "shell"    # Lcom/android/server/pm/UserManagerService$Shell;
    .param p2, "cmd"    # Ljava/lang/String;

    .line 3564
    if-nez p2, :cond_7

    .line 3565
    invoke-virtual {p1, p2}, Lcom/android/server/pm/UserManagerService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 3568
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/pm/UserManagerService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 3570
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, -0x1

    :try_start_c
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x32b09e

    if-eq v2, v3, :cond_16

    goto :goto_21

    :cond_16
    const-string/jumbo v2, "list"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/4 v2, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    move v2, v1

    :goto_22
    if-eqz v2, :cond_25

    .line 3576
    goto :goto_3f

    .line 3572
    :cond_25
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->runList(Ljava/io/PrintWriter;)I

    move-result v2
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_29} :catch_2a

    return v2

    .line 3574
    :catch_2a
    move-exception v2

    .line 3575
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3577
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_3f
    return v1
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 3560
    new-instance v0, Lcom/android/server/pm/UserManagerService$Shell;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/UserManagerService$Shell;-><init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$1;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/UserManagerService$Shell;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 3561
    return-void
.end method

.method public onUserLoggedIn(I)V
    .registers 7
    .param p1, "userId"    # I

    .line 3415
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v0

    .line 3416
    .local v0, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v0, :cond_28

    iget-object v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v1, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v1, :cond_d

    goto :goto_28

    .line 3421
    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 3422
    .local v1, "now":J
    const-wide v3, 0xdc46c32800L

    cmp-long v3, v1, v3

    if-lez v3, :cond_1e

    .line 3423
    iget-object v3, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iput-wide v1, v3, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    .line 3425
    :cond_1e
    iget-object v3, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    sget-object v4, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    iput-object v4, v3, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    .line 3426
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 3427
    return-void

    .line 3417
    .end local v1    # "now":J
    :cond_28
    :goto_28
    const-string v1, "UserManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "userForeground: unknown user #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3418
    return-void
.end method

.method putUserInfo(Landroid/content/pm/UserInfo;)Lcom/android/server/pm/UserManagerService$UserData;
    .registers 6
    .param p1, "userInfo"    # Landroid/content/pm/UserInfo;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2757
    new-instance v0, Lcom/android/server/pm/UserManagerService$UserData;

    invoke-direct {v0}, Lcom/android/server/pm/UserManagerService$UserData;-><init>()V

    .line 2758
    .local v0, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    iput-object p1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 2759
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v1

    .line 2760
    :try_start_a
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    iget v3, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2761
    monitor-exit v1

    .line 2762
    return-object v0

    .line 2761
    :catchall_13
    move-exception v2

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_13

    throw v2
.end method

.method readUserLP(ILjava/io/InputStream;)Lcom/android/server/pm/UserManagerService$UserData;
    .registers 64
    .param p1, "id"    # I
    .param p2, "is"    # Ljava/io/InputStream;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 2395
    const/4 v0, 0x0

    .line 2396
    .local v0, "flags":I
    move v3, v2

    .line 2397
    .local v3, "serialNumber":I
    const/4 v4, 0x0

    .line 2398
    .local v4, "name":Ljava/lang/String;
    const/4 v5, 0x0

    .line 2399
    .local v5, "account":Ljava/lang/String;
    const/4 v6, 0x0

    .line 2400
    .local v6, "iconPath":Ljava/lang/String;
    const-wide/16 v7, 0x0

    .line 2401
    .local v7, "creationTime":J
    const-wide/16 v9, 0x0

    .line 2402
    .local v9, "lastLoggedInTime":J
    const/4 v11, 0x0

    .line 2403
    .local v11, "lastLoggedInFingerprint":Ljava/lang/String;
    const/16 v12, -0x2710

    .line 2404
    .local v12, "profileGroupId":I
    const/4 v13, 0x0

    .line 2405
    .local v13, "profileBadge":I
    const/16 v14, -0x2710

    .line 2406
    .local v14, "restrictedProfileParentId":I
    const/4 v15, 0x0

    .line 2407
    .local v15, "partial":Z
    const/16 v16, 0x0

    .line 2408
    .local v16, "guestToRemove":Z
    const/16 v17, 0x0

    .line 2409
    .local v17, "persistSeedData":Z
    const/16 v18, 0x0

    .line 2410
    .local v18, "seedAccountName":Ljava/lang/String;
    const/16 v19, 0x0

    .line 2411
    .local v19, "seedAccountType":Ljava/lang/String;
    const/16 v20, 0x0

    .line 2412
    .local v20, "seedAccountOptions":Landroid/os/PersistableBundle;
    const/16 v21, 0x0

    .line 2413
    .local v21, "baseRestrictions":Landroid/os/Bundle;
    const/16 v22, 0x0

    .line 2414
    .local v22, "localRestrictions":Landroid/os/Bundle;
    const/16 v23, 0x0

    .line 2416
    .local v23, "globalRestrictions":Landroid/os/Bundle;
    move/from16 v24, v3

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 2417
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    .local v24, "serialNumber":I
    move/from16 v25, v0

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 2417
    .end local v0    # "flags":I
    .local v25, "flags":I
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v26, v4

    move-object/from16 v4, p2

    invoke-interface {v3, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2419
    .end local v4    # "name":Ljava/lang/String;
    .local v26, "name":Ljava/lang/String;
    :goto_39
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move/from16 v27, v0

    .line 2419
    .local v27, "type":I
    const/4 v4, 0x2

    if-eq v0, v4, :cond_4a

    move/from16 v0, v27

    const/4 v4, 0x1

    if-eq v0, v4, :cond_4c

    .line 2419
    .end local v27    # "type":I
    move-object/from16 v4, p2

    goto :goto_39

    .line 2424
    .restart local v27    # "type":I
    :cond_4a
    move/from16 v0, v27

    .line 2424
    .end local v27    # "type":I
    .local v0, "type":I
    :cond_4c
    const/4 v4, 0x2

    if-eq v0, v4, :cond_6b

    .line 2425
    const-string v4, "UserManagerService"

    move-object/from16 v28, v5

    new-instance v5, Ljava/lang/StringBuilder;

    .line 2425
    .end local v5    # "account":Ljava/lang/String;
    .local v28, "account":Ljava/lang/String;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v29, v6

    const-string v6, "Unable to read user "

    .line 2425
    .end local v6    # "iconPath":Ljava/lang/String;
    .local v29, "iconPath":Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2426
    const/4 v4, 0x0

    return-object v4

    .line 2429
    .end local v28    # "account":Ljava/lang/String;
    .end local v29    # "iconPath":Ljava/lang/String;
    .restart local v5    # "account":Ljava/lang/String;
    .restart local v6    # "iconPath":Ljava/lang/String;
    :cond_6b
    move-object/from16 v28, v5

    move-object/from16 v29, v6

    .line 2429
    .end local v5    # "account":Ljava/lang/String;
    .end local v6    # "iconPath":Ljava/lang/String;
    .restart local v28    # "account":Ljava/lang/String;
    .restart local v29    # "iconPath":Ljava/lang/String;
    const/4 v4, 0x2

    if-ne v0, v4, :cond_1e7

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "user"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e7

    .line 2430
    const-string v4, "id"

    const/4 v5, -0x1

    invoke-direct {v1, v3, v4, v5}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v4

    .line 2431
    .local v4, "storedId":I
    if-eq v4, v2, :cond_91

    .line 2432
    const-string v5, "UserManagerService"

    const-string v6, "User id does not match the file name"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2433
    const/4 v5, 0x0

    return-object v5

    .line 2435
    :cond_91
    const/4 v5, 0x0

    const-string/jumbo v6, "serialNumber"

    invoke-direct {v1, v3, v6, v2}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v6

    .line 2436
    .end local v24    # "serialNumber":I
    .local v6, "serialNumber":I
    const-string v5, "flags"

    move/from16 v30, v0

    const/4 v0, 0x0

    .line 2436
    .end local v0    # "type":I
    .local v30, "type":I
    invoke-direct {v1, v3, v5, v0}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    .line 2437
    .end local v25    # "flags":I
    .local v5, "flags":I
    const-string v0, "icon"

    move/from16 v31, v4

    const/4 v4, 0x0

    invoke-interface {v3, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2438
    .end local v4    # "storedId":I
    .end local v29    # "iconPath":Ljava/lang/String;
    .local v0, "iconPath":Ljava/lang/String;
    .local v31, "storedId":I
    const-string v4, "created"

    move/from16 v33, v5

    move/from16 v32, v6

    const-wide/16 v5, 0x0

    .line 2438
    .end local v5    # "flags":I
    .end local v6    # "serialNumber":I
    .local v32, "serialNumber":I
    .local v33, "flags":I
    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/server/pm/UserManagerService;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v7

    .line 2439
    const-string/jumbo v4, "lastLoggedIn"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/server/pm/UserManagerService;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v9

    .line 2440
    const-string/jumbo v4, "lastLoggedInFingerprint"

    const/4 v5, 0x0

    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2442
    const-string/jumbo v4, "profileGroupId"

    const/16 v5, -0x2710

    invoke-direct {v1, v3, v4, v5}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v12

    .line 2444
    const-string/jumbo v4, "profileBadge"

    const/4 v6, 0x0

    invoke-direct {v1, v3, v4, v6}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v13

    .line 2445
    const-string/jumbo v4, "restrictedProfileParentId"

    invoke-direct {v1, v3, v4, v5}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v14

    .line 2447
    const-string/jumbo v4, "partial"

    const/4 v5, 0x0

    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2448
    .local v4, "valueString":Ljava/lang/String;
    const-string/jumbo v6, "true"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f1

    .line 2449
    const/4 v6, 0x1

    .line 2451
    .end local v15    # "partial":Z
    .local v6, "partial":Z
    move v15, v6

    .line 2451
    .end local v6    # "partial":Z
    .restart local v15    # "partial":Z
    :cond_f1
    const-string v6, "guestToRemove"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2452
    const-string/jumbo v6, "true"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_103

    .line 2453
    const/4 v6, 0x1

    .line 2456
    .end local v16    # "guestToRemove":Z
    .local v6, "guestToRemove":Z
    move/from16 v16, v6

    .line 2456
    .end local v6    # "guestToRemove":Z
    .restart local v16    # "guestToRemove":Z
    :cond_103
    const-string/jumbo v6, "seedAccountName"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2457
    const-string/jumbo v6, "seedAccountType"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 2458
    if-nez v18, :cond_115

    if-eqz v19, :cond_117

    .line 2459
    :cond_115
    const/16 v17, 0x1

    .line 2462
    :cond_117
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    .line 2463
    .local v5, "outerDepth":I
    :goto_11b
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    move/from16 v34, v6

    .line 2463
    .end local v30    # "type":I
    .local v34, "type":I
    move-object/from16 v35, v0

    const/4 v0, 0x1

    if-eq v6, v0, :cond_1c2

    .line 2463
    .end local v0    # "iconPath":Ljava/lang/String;
    .local v35, "iconPath":Ljava/lang/String;
    const/4 v6, 0x3

    move/from16 v0, v34

    if-ne v0, v6, :cond_136

    .line 2464
    .end local v34    # "type":I
    .local v0, "type":I
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v5, :cond_132

    goto :goto_136

    .line 2493
    .end local v4    # "valueString":Ljava/lang/String;
    .end local v5    # "outerDepth":I
    .end local v31    # "storedId":I
    :cond_132
    move/from16 v36, v0

    goto/16 :goto_1c4

    .line 2465
    .restart local v4    # "valueString":Ljava/lang/String;
    .restart local v5    # "outerDepth":I
    .restart local v31    # "storedId":I
    :cond_136
    :goto_136
    const/4 v6, 0x3

    if-eq v0, v6, :cond_1b6

    const/4 v6, 0x4

    if-ne v0, v6, :cond_143

    .line 2466
    nop

    .line 2462
    move/from16 v36, v0

    move-object/from16 v37, v4

    goto/16 :goto_1ba

    .line 2468
    :cond_143
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 2469
    .local v6, "tag":Ljava/lang/String;
    move/from16 v36, v0

    const-string/jumbo v0, "name"

    .line 2469
    .end local v0    # "type":I
    .local v36, "type":I
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_162

    .line 2470
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 2471
    .end local v36    # "type":I
    .restart local v0    # "type":I
    move-object/from16 v37, v4

    const/4 v4, 0x4

    if-ne v0, v4, :cond_15f

    .line 2472
    .end local v4    # "valueString":Ljava/lang/String;
    .local v37, "valueString":Ljava/lang/String;
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v26

    .line 2489
    .end local v0    # "type":I
    .end local v6    # "tag":Ljava/lang/String;
    .restart local v30    # "type":I
    :cond_15f
    :goto_15f
    move/from16 v30, v0

    goto :goto_1b2

    .line 2474
    .end local v30    # "type":I
    .end local v37    # "valueString":Ljava/lang/String;
    .restart local v4    # "valueString":Ljava/lang/String;
    .restart local v6    # "tag":Ljava/lang/String;
    .restart local v36    # "type":I
    :cond_162
    move-object/from16 v37, v4

    .line 2474
    .end local v4    # "valueString":Ljava/lang/String;
    .restart local v37    # "valueString":Ljava/lang/String;
    const-string/jumbo v0, "restrictions"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_174

    .line 2475
    invoke-static {v3}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/Bundle;

    move-result-object v21

    .line 2489
    .end local v6    # "tag":Ljava/lang/String;
    .end local v36    # "type":I
    .restart local v30    # "type":I
    :cond_171
    :goto_171
    move/from16 v30, v36

    goto :goto_1b2

    .line 2476
    .end local v30    # "type":I
    .restart local v6    # "tag":Ljava/lang/String;
    .restart local v36    # "type":I
    :cond_174
    const-string v0, "device_policy_restrictions"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_181

    .line 2477
    invoke-static {v3}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/Bundle;

    move-result-object v22

    goto :goto_171

    .line 2478
    :cond_181
    const-string v0, "device_policy_global_restrictions"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18e

    .line 2479
    invoke-static {v3}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/Bundle;

    move-result-object v23

    goto :goto_171

    .line 2480
    :cond_18e
    const-string v0, "account"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a2

    .line 2481
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 2482
    .end local v36    # "type":I
    .restart local v0    # "type":I
    const/4 v4, 0x4

    if-ne v0, v4, :cond_15f

    .line 2483
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v28

    goto :goto_15f

    .line 2485
    .end local v0    # "type":I
    .restart local v36    # "type":I
    :cond_1a2
    const-string/jumbo v0, "seedAccountOptions"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_171

    .line 2486
    invoke-static {v3}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v20

    .line 2487
    const/16 v17, 0x1

    .line 2487
    .end local v6    # "tag":Ljava/lang/String;
    goto :goto_171

    .line 2489
    .end local v36    # "type":I
    .restart local v30    # "type":I
    :goto_1b2
    nop

    .line 2462
    move-object/from16 v0, v35

    goto :goto_1be

    .line 2462
    .end local v30    # "type":I
    .end local v37    # "valueString":Ljava/lang/String;
    .restart local v0    # "type":I
    .restart local v4    # "valueString":Ljava/lang/String;
    :cond_1b6
    move/from16 v36, v0

    move-object/from16 v37, v4

    .line 2462
    .end local v0    # "type":I
    .end local v4    # "valueString":Ljava/lang/String;
    .restart local v36    # "type":I
    .restart local v37    # "valueString":Ljava/lang/String;
    :goto_1ba
    move-object/from16 v0, v35

    move/from16 v30, v36

    .line 2462
    .end local v35    # "iconPath":Ljava/lang/String;
    .end local v36    # "type":I
    .end local v37    # "valueString":Ljava/lang/String;
    .local v0, "iconPath":Ljava/lang/String;
    .restart local v4    # "valueString":Ljava/lang/String;
    .restart local v30    # "type":I
    :goto_1be
    move-object/from16 v4, v37

    goto/16 :goto_11b

    .line 2493
    .end local v0    # "iconPath":Ljava/lang/String;
    .end local v4    # "valueString":Ljava/lang/String;
    .end local v5    # "outerDepth":I
    .end local v30    # "type":I
    .end local v31    # "storedId":I
    .restart local v34    # "type":I
    .restart local v35    # "iconPath":Ljava/lang/String;
    :cond_1c2
    move/from16 v36, v34

    .line 2493
    .end local v34    # "type":I
    .restart local v36    # "type":I
    :goto_1c4
    move-object/from16 v38, v3

    move v3, v13

    move v1, v14

    move/from16 v13, v16

    move/from16 v42, v17

    move-object/from16 v40, v18

    move-object/from16 v41, v19

    move-object/from16 v43, v20

    move-object/from16 v44, v21

    move-object/from16 v45, v22

    move-object/from16 v46, v23

    move-object/from16 v4, v26

    move-object/from16 v39, v28

    move/from16 v6, v33

    move-object/from16 v5, v35

    move v14, v12

    move-object v12, v11

    move-wide v10, v9

    move-wide v8, v7

    move/from16 v7, v32

    goto :goto_20d

    .end local v32    # "serialNumber":I
    .end local v33    # "flags":I
    .end local v35    # "iconPath":Ljava/lang/String;
    .end local v36    # "type":I
    .local v0, "type":I
    .restart local v24    # "serialNumber":I
    .restart local v25    # "flags":I
    .restart local v29    # "iconPath":Ljava/lang/String;
    :cond_1e7
    move/from16 v30, v0

    .line 2493
    .end local v0    # "type":I
    .restart local v30    # "type":I
    move-object/from16 v38, v3

    move v3, v13

    move v1, v14

    move/from16 v13, v16

    move/from16 v42, v17

    move-object/from16 v40, v18

    move-object/from16 v41, v19

    move-object/from16 v43, v20

    move-object/from16 v44, v21

    move-object/from16 v45, v22

    move-object/from16 v46, v23

    move/from16 v6, v25

    move-object/from16 v4, v26

    move-object/from16 v39, v28

    move-object/from16 v5, v29

    move/from16 v36, v30

    move v14, v12

    move-object v12, v11

    move-wide v10, v9

    move-wide v8, v7

    move/from16 v7, v24

    .end local v9    # "lastLoggedInTime":J
    .end local v11    # "lastLoggedInFingerprint":Ljava/lang/String;
    .end local v16    # "guestToRemove":Z
    .end local v17    # "persistSeedData":Z
    .end local v18    # "seedAccountName":Ljava/lang/String;
    .end local v19    # "seedAccountType":Ljava/lang/String;
    .end local v20    # "seedAccountOptions":Landroid/os/PersistableBundle;
    .end local v21    # "baseRestrictions":Landroid/os/Bundle;
    .end local v22    # "localRestrictions":Landroid/os/Bundle;
    .end local v23    # "globalRestrictions":Landroid/os/Bundle;
    .end local v24    # "serialNumber":I
    .end local v25    # "flags":I
    .end local v26    # "name":Ljava/lang/String;
    .end local v28    # "account":Ljava/lang/String;
    .end local v29    # "iconPath":Ljava/lang/String;
    .end local v30    # "type":I
    .local v1, "restrictedProfileParentId":I
    .local v3, "profileBadge":I
    .local v4, "name":Ljava/lang/String;
    .local v5, "iconPath":Ljava/lang/String;
    .local v6, "flags":I
    .local v7, "serialNumber":I
    .local v8, "creationTime":J
    .local v10, "lastLoggedInTime":J
    .local v12, "lastLoggedInFingerprint":Ljava/lang/String;
    .local v13, "guestToRemove":Z
    .local v14, "profileGroupId":I
    .restart local v36    # "type":I
    .local v38, "parser":Lorg/xmlpull/v1/XmlPullParser;
    .local v39, "account":Ljava/lang/String;
    .local v40, "seedAccountName":Ljava/lang/String;
    .local v41, "seedAccountType":Ljava/lang/String;
    .local v42, "persistSeedData":Z
    .local v43, "seedAccountOptions":Landroid/os/PersistableBundle;
    .local v44, "baseRestrictions":Landroid/os/Bundle;
    .local v45, "localRestrictions":Landroid/os/Bundle;
    .local v46, "globalRestrictions":Landroid/os/Bundle;
    :goto_20d
    new-instance v0, Landroid/content/pm/UserInfo;

    invoke-direct {v0, v2, v4, v5, v6}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v47, v0

    .line 2494
    .local v47, "userInfo":Landroid/content/pm/UserInfo;
    move-object/from16 v48, v4

    move-object/from16 v4, v47

    iput v7, v4, Landroid/content/pm/UserInfo;->serialNumber:I

    .line 2495
    .end local v47    # "userInfo":Landroid/content/pm/UserInfo;
    .local v4, "userInfo":Landroid/content/pm/UserInfo;
    .local v48, "name":Ljava/lang/String;
    iput-wide v8, v4, Landroid/content/pm/UserInfo;->creationTime:J

    .line 2496
    iput-wide v10, v4, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    .line 2497
    iput-object v12, v4, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    .line 2498
    iput-boolean v15, v4, Landroid/content/pm/UserInfo;->partial:Z

    .line 2499
    iput-boolean v13, v4, Landroid/content/pm/UserInfo;->guestToRemove:Z

    .line 2500
    iput v14, v4, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 2501
    iput v3, v4, Landroid/content/pm/UserInfo;->profileBadge:I

    .line 2502
    iput v1, v4, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    .line 2505
    new-instance v0, Lcom/android/server/pm/UserManagerService$UserData;

    invoke-direct {v0}, Lcom/android/server/pm/UserManagerService$UserData;-><init>()V

    move-object/from16 v49, v0

    .line 2506
    .local v49, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    move/from16 v50, v1

    move-object/from16 v1, v49

    iput-object v4, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 2507
    .end local v49    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .local v1, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .local v50, "restrictedProfileParentId":I
    move/from16 v51, v3

    move-object/from16 v3, v39

    iput-object v3, v1, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    .line 2508
    .end local v39    # "account":Ljava/lang/String;
    .local v3, "account":Ljava/lang/String;
    .local v51, "profileBadge":I
    move-object/from16 v52, v3

    move-object/from16 v3, v40

    iput-object v3, v1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    .line 2509
    .end local v40    # "seedAccountName":Ljava/lang/String;
    .local v3, "seedAccountName":Ljava/lang/String;
    .local v52, "account":Ljava/lang/String;
    move-object/from16 v53, v3

    move-object/from16 v3, v41

    iput-object v3, v1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    .line 2510
    .end local v41    # "seedAccountType":Ljava/lang/String;
    .local v3, "seedAccountType":Ljava/lang/String;
    .local v53, "seedAccountName":Ljava/lang/String;
    move-object/from16 v54, v3

    move/from16 v3, v42

    iput-boolean v3, v1, Lcom/android/server/pm/UserManagerService$UserData;->persistSeedData:Z

    .line 2511
    .end local v42    # "persistSeedData":Z
    .local v3, "persistSeedData":Z
    .local v54, "seedAccountType":Ljava/lang/String;
    move/from16 v55, v3

    move-object/from16 v3, v43

    iput-object v3, v1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    .line 2513
    .end local v43    # "seedAccountOptions":Landroid/os/PersistableBundle;
    .local v3, "seedAccountOptions":Landroid/os/PersistableBundle;
    .local v55, "persistSeedData":Z
    move-object/from16 v56, v3

    move-object/from16 v57, v4

    move/from16 v16, v50

    move-object/from16 v3, p0

    iget-object v4, v3, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    .line 2513
    .end local v3    # "seedAccountOptions":Landroid/os/PersistableBundle;
    .end local v4    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v50    # "restrictedProfileParentId":I
    .local v16, "restrictedProfileParentId":I
    .local v56, "seedAccountOptions":Landroid/os/PersistableBundle;
    .local v57, "userInfo":Landroid/content/pm/UserInfo;
    monitor-enter v4

    .line 2514
    move-object/from16 v58, v5

    move-object/from16 v5, v44

    if-eqz v5, :cond_274

    .line 2515
    .end local v44    # "baseRestrictions":Landroid/os/Bundle;
    .local v5, "baseRestrictions":Landroid/os/Bundle;
    .local v58, "iconPath":Ljava/lang/String;
    :try_start_266
    iget-object v0, v3, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_26b
    .catchall {:try_start_266 .. :try_end_26b} :catchall_26c

    goto :goto_274

    .line 2523
    :catchall_26c
    move-exception v0

    move-object/from16 v59, v5

    move-object/from16 v60, v45

    .line 2523
    .end local v45    # "localRestrictions":Landroid/os/Bundle;
    .end local v46    # "globalRestrictions":Landroid/os/Bundle;
    .local v5, "globalRestrictions":Landroid/os/Bundle;
    .local v59, "baseRestrictions":Landroid/os/Bundle;
    .local v60, "localRestrictions":Landroid/os/Bundle;
    :goto_271
    move-object/from16 v5, v46

    goto :goto_291

    .line 2517
    .end local v59    # "baseRestrictions":Landroid/os/Bundle;
    .end local v60    # "localRestrictions":Landroid/os/Bundle;
    .local v5, "baseRestrictions":Landroid/os/Bundle;
    .restart local v45    # "localRestrictions":Landroid/os/Bundle;
    .restart local v46    # "globalRestrictions":Landroid/os/Bundle;
    :cond_274
    :goto_274
    move-object/from16 v59, v5

    move-object/from16 v5, v45

    if-eqz v5, :cond_284

    .line 2518
    .end local v45    # "localRestrictions":Landroid/os/Bundle;
    .local v5, "localRestrictions":Landroid/os/Bundle;
    .restart local v59    # "baseRestrictions":Landroid/os/Bundle;
    :try_start_27a
    iget-object v0, v3, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_27f
    .catchall {:try_start_27a .. :try_end_27f} :catchall_280

    goto :goto_284

    .line 2523
    :catchall_280
    move-exception v0

    move-object/from16 v60, v5

    goto :goto_271

    .line 2520
    :cond_284
    :goto_284
    move-object/from16 v60, v5

    move-object/from16 v5, v46

    if-eqz v5, :cond_28f

    .line 2521
    .end local v46    # "globalRestrictions":Landroid/os/Bundle;
    .local v5, "globalRestrictions":Landroid/os/Bundle;
    .restart local v60    # "localRestrictions":Landroid/os/Bundle;
    :try_start_28a
    iget-object v0, v3, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2523
    :cond_28f
    monitor-exit v4

    .line 2524
    return-object v1

    .line 2523
    :goto_291
    monitor-exit v4
    :try_end_292
    .catchall {:try_start_28a .. :try_end_292} :catchall_293

    throw v0

    :catchall_293
    move-exception v0

    goto :goto_291
.end method

.method reconcileUsers(Ljava/lang/String;)V
    .registers 4
    .param p1, "volumeUuid"    # Ljava/lang/String;

    .line 3406
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/pm/UserDataPreparer;->reconcileUsers(Ljava/lang/String;Ljava/util/List;)V

    .line 3407
    return-void
.end method

.method public removeUser(I)Z
    .registers 8
    .param p1, "userHandle"    # I

    .line 2867
    const-string v0, "UserManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeUser u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2868
    const-string v0, "Only the system can remove users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    .line 2871
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2872
    :try_start_1f
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 2873
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    const/4 v2, 0x0

    if-eqz v1, :cond_2e

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_2e

    const/4 v3, 0x1

    goto :goto_2f

    :cond_2e
    move v3, v2

    .line 2873
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    :goto_2f
    move v1, v3

    .line 2874
    .local v1, "isManagedProfile":Z
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_1f .. :try_end_31} :catchall_69

    .line 2875
    if-eqz v1, :cond_37

    .line 2876
    const-string/jumbo v0, "no_remove_managed_profile"

    goto :goto_3a

    :cond_37
    const-string/jumbo v0, "no_remove_user"

    .line 2877
    .local v0, "restriction":Ljava/lang/String;
    :goto_3a
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/pm/UserManagerService;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_64

    .line 2878
    const-string v3, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot remove user. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is enabled."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2879
    return v2

    .line 2881
    :cond_64
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserUnchecked(I)Z

    move-result v2

    return v2

    .line 2874
    .end local v0    # "restriction":Ljava/lang/String;
    .end local v1    # "isManagedProfile":Z
    :catchall_69
    move-exception v1

    :try_start_6a
    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    throw v1
.end method

.method public removeUserEvenWhenDisallowed(I)Z
    .registers 3
    .param p1, "userHandle"    # I

    .line 2574
    const-string v0, "Only the system can remove users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    .line 2575
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserUnchecked(I)Z

    move-result v0

    return v0
.end method

.method removeUserInfo(I)V
    .registers 4
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2767
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2768
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 2769
    monitor-exit v0

    .line 2770
    return-void

    .line 2769
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public requestQuietModeEnabled(Ljava/lang/String;ZILandroid/content/IntentSender;)Z
    .registers 10
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "enableQuietMode"    # Z
    .param p3, "userHandle"    # I
    .param p4, "target"    # Landroid/content/IntentSender;

    .line 826
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    if-eqz p2, :cond_11

    if-nez p4, :cond_8

    goto :goto_11

    .line 829
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "target should only be specified when we are disabling quiet mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 833
    :cond_11
    :goto_11
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p4, :cond_1b

    move v3, v2

    goto :goto_1c

    :cond_1b
    move v3, v1

    :goto_1c
    invoke-direct {p0, p1, v0, v3}, Lcom/android/server/pm/UserManagerService;->ensureCanModifyQuietMode(Ljava/lang/String;IZ)V

    .line 834
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 836
    .local v3, "identity":J
    if-eqz p2, :cond_2f

    .line 837
    :try_start_25
    invoke-direct {p0, p3, v2, p4}, Lcom/android/server/pm/UserManagerService;->setQuietModeEnabled(IZLandroid/content/IntentSender;)V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_2d

    .line 838
    nop

    .line 852
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 838
    return v2

    .line 852
    :catchall_2d
    move-exception v0

    goto :goto_52

    .line 840
    :cond_2f
    :try_start_2f
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 841
    invoke-virtual {v0, p3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 842
    invoke-static {p3}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_3f

    move v0, v2

    goto :goto_40

    :cond_3f
    move v0, v1

    .line 843
    .local v0, "needToShowConfirmCredential":Z
    :goto_40
    if-eqz v0, :cond_4a

    .line 844
    invoke-direct {p0, p3, p4}, Lcom/android/server/pm/UserManagerService;->showConfirmCredentialToDisableQuietMode(ILandroid/content/IntentSender;)V
    :try_end_45
    .catchall {:try_start_2f .. :try_end_45} :catchall_2d

    .line 845
    nop

    .line 852
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 845
    return v1

    .line 847
    :cond_4a
    :try_start_4a
    invoke-direct {p0, p3, v1, p4}, Lcom/android/server/pm/UserManagerService;->setQuietModeEnabled(IZLandroid/content/IntentSender;)V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_2d

    .line 848
    nop

    .line 852
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 848
    return v2

    .line 852
    .end local v0    # "needToShowConfirmCredential":Z
    :goto_52
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;I)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "restrictions"    # Landroid/os/Bundle;
    .param p3, "userId"    # I

    .line 3086
    const-string/jumbo v0, "set application restrictions"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkSystemOrRoot(Ljava/lang/String;)V

    .line 3087
    if-eqz p2, :cond_c

    .line 3088
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->setDefusable(Z)V

    .line 3090
    :cond_c
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mAppRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3091
    if-eqz p2, :cond_1e

    :try_start_11
    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_1e

    .line 3095
    :cond_18
    invoke-static {p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->writeApplicationRestrictionsLAr(Ljava/lang/String;Landroid/os/Bundle;I)V

    goto :goto_21

    .line 3097
    :catchall_1c
    move-exception v1

    goto :goto_3b

    .line 3092
    :cond_1e
    :goto_1e
    invoke-static {p1, p3}, Lcom/android/server/pm/UserManagerService;->cleanAppRestrictionsForPackageLAr(Ljava/lang/String;I)V

    .line 3097
    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_11 .. :try_end_22} :catchall_1c

    .line 3100
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.APPLICATION_RESTRICTIONS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3101
    .local v0, "changeIntent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3102
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3103
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3104
    return-void

    .line 3097
    .end local v0    # "changeIntent":Landroid/content/Intent;
    :goto_3b
    :try_start_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_1c

    throw v1
.end method

.method public setDefaultGuestRestrictions(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "restrictions"    # Landroid/os/Bundle;

    .line 1375
    const-string/jumbo v0, "setDefaultGuestRestrictions"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1376
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v0

    .line 1377
    :try_start_9
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->clear()V

    .line 1378
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1379
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_1f

    .line 1380
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1381
    :try_start_17
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    .line 1382
    monitor-exit v1

    .line 1383
    return-void

    .line 1382
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_1c

    throw v0

    .line 1379
    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public setSeedAccountData(ILjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Z)V
    .registers 12
    .param p1, "userId"    # I
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "accountType"    # Ljava/lang/String;
    .param p4, "accountOptions"    # Landroid/os/PersistableBundle;
    .param p5, "persist"    # Z

    .line 3474
    const-string v0, "Require MANAGE_USERS permission to set user seed data"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 3475
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3477
    :try_start_8
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_3d

    .line 3478
    :try_start_b
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v2

    .line 3479
    .local v2, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-nez v2, :cond_2a

    .line 3480
    const-string v3, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No such user for settings seed data u="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3481
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_b .. :try_end_28} :catchall_3a

    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_3d

    return-void

    .line 3483
    :cond_2a
    :try_start_2a
    iput-object p2, v2, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    .line 3484
    iput-object p3, v2, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    .line 3485
    iput-object p4, v2, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    .line 3486
    iput-boolean p5, v2, Lcom/android/server/pm/UserManagerService$UserData;->persistSeedData:Z

    .line 3487
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_2a .. :try_end_33} :catchall_3a

    .line 3488
    if-eqz p5, :cond_38

    .line 3489
    :try_start_35
    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 3491
    .end local v2    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_35 .. :try_end_39} :catchall_3d

    .line 3492
    return-void

    .line 3487
    :catchall_3a
    move-exception v2

    :try_start_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    :try_start_3c
    throw v2

    .line 3491
    :catchall_3d
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method public setUserAccount(ILjava/lang/String;)V
    .registers 10
    .param p1, "userId"    # I
    .param p2, "accountName"    # Ljava/lang/String;

    .line 599
    const-string/jumbo v0, "set user account"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUserAndAcrossUsersFullPermission(Ljava/lang/String;)V

    .line 600
    const/4 v0, 0x0

    .line 601
    .local v0, "userToUpdate":Lcom/android/server/pm/UserManagerService$UserData;
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 602
    :try_start_a
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_46

    .line 603
    :try_start_d
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    .line 604
    .local v3, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-nez v3, :cond_30

    .line 605
    const-string v4, "UserManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "User not found for setting user account: u"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_d .. :try_end_2e} :catchall_43

    :try_start_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_46

    return-void

    .line 608
    :cond_30
    :try_start_30
    iget-object v4, v3, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    .line 609
    .local v4, "currentAccount":Ljava/lang/String;
    invoke-static {v4, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3b

    .line 610
    iput-object p2, v3, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    .line 611
    move-object v0, v3

    .line 613
    .end local v3    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    .end local v4    # "currentAccount":Ljava/lang/String;
    :cond_3b
    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_30 .. :try_end_3c} :catchall_43

    .line 615
    if-eqz v0, :cond_41

    .line 616
    :try_start_3e
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 618
    :cond_41
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_3e .. :try_end_42} :catchall_46

    .line 619
    return-void

    .line 613
    :catchall_43
    move-exception v3

    :try_start_44
    monitor-exit v2
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    :try_start_45
    throw v3

    .line 618
    :catchall_46
    move-exception v2

    monitor-exit v1
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_46

    throw v2
.end method

.method public setUserAdmin(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 1006
    const-string/jumbo v0, "set user admin"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUserAndAcrossUsersFullPermission(Ljava/lang/String;)V

    .line 1008
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1010
    :try_start_9
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_3d

    .line 1011
    :try_start_c
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 1012
    .local v2, "info":Landroid/content/pm/UserInfo;
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_3a

    .line 1013
    if-eqz v2, :cond_38

    :try_start_13
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v1

    if-eqz v1, :cond_1a

    goto :goto_38

    .line 1018
    :cond_1a
    iget v1, v2, Landroid/content/pm/UserInfo;->flags:I

    xor-int/lit8 v1, v1, 0x2

    iput v1, v2, Landroid/content/pm/UserInfo;->flags:I

    .line 1019
    iget v1, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 1020
    .end local v2    # "info":Landroid/content/pm/UserInfo;
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_13 .. :try_end_2a} :catchall_3d

    .line 1024
    const-string/jumbo v0, "no_sms"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 1025
    const-string/jumbo v0, "no_outgoing_calls"

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 1026
    return-void

    .line 1015
    .restart local v2    # "info":Landroid/content/pm/UserInfo;
    :cond_38
    :goto_38
    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_3d

    return-void

    .line 1012
    .end local v2    # "info":Landroid/content/pm/UserInfo;
    :catchall_3a
    move-exception v2

    :try_start_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    :try_start_3c
    throw v2

    .line 1020
    :catchall_3d
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method public setUserEnabled(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 991
    const-string v0, "enable user"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 992
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 994
    :try_start_8
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_2c

    .line 995
    :try_start_b
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 996
    .local v2, "info":Landroid/content/pm/UserInfo;
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_29

    .line 997
    if-eqz v2, :cond_27

    :try_start_12
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_27

    .line 998
    iget v1, v2, Landroid/content/pm/UserInfo;->flags:I

    xor-int/lit8 v1, v1, 0x40

    iput v1, v2, Landroid/content/pm/UserInfo;->flags:I

    .line 999
    iget v1, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 1001
    .end local v2    # "info":Landroid/content/pm/UserInfo;
    :cond_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 1002
    return-void

    .line 996
    :catchall_29
    move-exception v2

    :try_start_2a
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    :try_start_2b
    throw v2

    .line 1001
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method public setUserIcon(ILandroid/graphics/Bitmap;)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .line 1279
    const-string/jumbo v0, "update users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1280
    const-string/jumbo v0, "no_set_user_icon"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1281
    const-string v0, "UserManagerService"

    const-string v1, "Cannot set user icon. DISALLOW_SET_USER_ICON is enabled."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    return-void

    .line 1284
    :cond_17
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/UserManagerService$LocalService;->setUserIcon(ILandroid/graphics/Bitmap;)V

    .line 1285
    return-void
.end method

.method public setUserName(ILjava/lang/String;)V
    .registers 9
    .param p1, "userId"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 1258
    const-string/jumbo v0, "rename users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1259
    const/4 v0, 0x0

    .line 1260
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1261
    :try_start_a
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v2

    .line 1262
    .local v2, "userData":Lcom/android/server/pm/UserManagerService$UserData;
    if-eqz v2, :cond_32

    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v3, v3, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v3, :cond_17

    goto :goto_32

    .line 1266
    :cond_17
    if-eqz p2, :cond_2b

    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v3, v3, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 1267
    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iput-object p2, v3, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 1268
    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 1269
    const/4 v0, 0x1

    .line 1271
    .end local v2    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_a .. :try_end_2c} :catchall_4b

    .line 1272
    if-eqz v0, :cond_31

    .line 1273
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->sendUserInfoChangedBroadcast(I)V

    .line 1275
    :cond_31
    return-void

    .line 1263
    .restart local v2    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_32
    :goto_32
    :try_start_32
    const-string v3, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setUserName: unknown user #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    monitor-exit v1

    return-void

    .line 1271
    .end local v2    # "userData":Lcom/android/server/pm/UserManagerService$UserData;
    :catchall_4b
    move-exception v2

    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_32 .. :try_end_4d} :catchall_4b

    throw v2
.end method

.method public setUserRestriction(Ljava/lang/String;ZI)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .param p3, "userId"    # I

    .line 1615
    const-string/jumbo v0, "setUserRestriction"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1616
    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1617
    return-void

    .line 1619
    :cond_d
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1622
    :try_start_10
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    .line 1623
    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 1622
    invoke-static {v1}, Lcom/android/server/pm/UserRestrictionsUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 1624
    .local v1, "newRestrictions":Landroid/os/Bundle;
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1626
    invoke-direct {p0, v1, p3}, Lcom/android/server/pm/UserManagerService;->updateUserRestrictionsInternalLR(Landroid/os/Bundle;I)V

    .line 1627
    .end local v1    # "newRestrictions":Landroid/os/Bundle;
    monitor-exit v0

    .line 1628
    return-void

    .line 1627
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_10 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public someUserHasSeedAccount(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3538
    const-string v0, "Cannot check seed account information"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 3539
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3540
    :try_start_8
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 3541
    .local v1, "userSize":I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_10
    if-ge v3, v1, :cond_43

    .line 3542
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    .line 3543
    .local v4, "data":Lcom/android/server/pm/UserManagerService$UserData;
    iget-object v5, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isInitialized()Z

    move-result v5

    if-eqz v5, :cond_23

    .end local v4    # "data":Lcom/android/server/pm/UserManagerService$UserData;
    goto :goto_40

    .line 3544
    .restart local v4    # "data":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_23
    iget-object v5, v4, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    if-eqz v5, :cond_40

    iget-object v5, v4, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_30

    .line 3545
    goto :goto_40

    .line 3547
    :cond_30
    iget-object v5, v4, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    if-eqz v5, :cond_40

    iget-object v5, v4, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3d

    .line 3548
    goto :goto_40

    .line 3550
    :cond_3d
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 3541
    .end local v4    # "data":Lcom/android/server/pm/UserManagerService$UserData;
    :cond_40
    :goto_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 3552
    .end local v1    # "userSize":I
    .end local v3    # "i":I
    :cond_43
    monitor-exit v0

    .line 3553
    return v2

    .line 3552
    :catchall_45
    move-exception v1

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_8 .. :try_end_47} :catchall_45

    throw v1
.end method

.method systemReady()V
    .registers 7

    .line 545
    const-string v0, "appops"

    .line 546
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 545
    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/UserManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 548
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 549
    const/4 v1, 0x0

    :try_start_10
    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsLR(I)V

    .line 550
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_40

    .line 552
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->findCurrentGuestUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 553
    .local v0, "currentGuestUser":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_2e

    const-string/jumbo v1, "no_config_wifi"

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 558
    const-string/jumbo v1, "no_config_wifi"

    const/4 v2, 0x1

    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 561
    :cond_2e
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mDisableQuietModeCallback:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.android.server.pm.DISABLE_QUIET_MODE_AFTER_UNLOCK"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 564
    return-void

    .line 550
    .end local v0    # "currentGuestUser":Landroid/content/pm/UserInfo;
    :catchall_40
    move-exception v1

    :try_start_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw v1
.end method

.method writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;Ljava/io/OutputStream;)V
    .registers 9
    .param p1, "userData"    # Lcom/android/server/pm/UserManagerService$UserData;
    .param p2, "os"    # Ljava/io/OutputStream;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2236
    new-instance v0, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v0}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 2237
    .local v0, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2238
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2239
    const-string v2, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 2241
    iget-object v1, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 2242
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    const-string/jumbo v2, "user"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2243
    const-string v2, "id"

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2244
    const-string/jumbo v2, "serialNumber"

    iget v4, v1, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2245
    const-string v2, "flags"

    iget v4, v1, Landroid/content/pm/UserInfo;->flags:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2246
    const-string v2, "created"

    iget-wide v4, v1, Landroid/content/pm/UserInfo;->creationTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2247
    const-string/jumbo v2, "lastLoggedIn"

    iget-wide v4, v1, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    .line 2248
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    .line 2247
    invoke-interface {v0, v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2249
    iget-object v2, v1, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    if-eqz v2, :cond_69

    .line 2250
    const-string/jumbo v2, "lastLoggedInFingerprint"

    iget-object v4, v1, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    invoke-interface {v0, v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2253
    :cond_69
    iget-object v2, v1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v2, :cond_74

    .line 2254
    const-string v2, "icon"

    iget-object v4, v1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    invoke-interface {v0, v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2256
    :cond_74
    iget-boolean v2, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v2, :cond_81

    .line 2257
    const-string/jumbo v2, "partial"

    const-string/jumbo v4, "true"

    invoke-interface {v0, v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2259
    :cond_81
    iget-boolean v2, v1, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-eqz v2, :cond_8d

    .line 2260
    const-string v2, "guestToRemove"

    const-string/jumbo v4, "true"

    invoke-interface {v0, v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2262
    :cond_8d
    iget v2, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v4, -0x2710

    if-eq v2, v4, :cond_9f

    .line 2263
    const-string/jumbo v2, "profileGroupId"

    iget v5, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 2264
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 2263
    invoke-interface {v0, v3, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2266
    :cond_9f
    const-string/jumbo v2, "profileBadge"

    iget v5, v1, Landroid/content/pm/UserInfo;->profileBadge:I

    .line 2267
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 2266
    invoke-interface {v0, v3, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2268
    iget v2, v1, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    if-eq v2, v4, :cond_bb

    .line 2269
    const-string/jumbo v2, "restrictedProfileParentId"

    iget v4, v1, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    .line 2270
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 2269
    invoke-interface {v0, v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2273
    :cond_bb
    iget-boolean v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->persistSeedData:Z

    if-eqz v2, :cond_d7

    .line 2274
    iget-object v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    if-eqz v2, :cond_cb

    .line 2275
    const-string/jumbo v2, "seedAccountName"

    iget-object v4, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    invoke-interface {v0, v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2277
    :cond_cb
    iget-object v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    if-eqz v2, :cond_d7

    .line 2278
    const-string/jumbo v2, "seedAccountType"

    iget-object v4, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    invoke-interface {v0, v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2281
    :cond_d7
    iget-object v2, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz v2, :cond_ec

    .line 2282
    const-string/jumbo v2, "name"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2283
    iget-object v2, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2284
    const-string/jumbo v2, "name"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2286
    :cond_ec
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2287
    :try_start_ef
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    .line 2288
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    const-string/jumbo v5, "restrictions"

    .line 2287
    invoke-static {v0, v4, v5}, Lcom/android/server/pm/UserRestrictionsUtils;->writeRestrictions(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 2289
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    .line 2290
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    const-string v5, "device_policy_restrictions"

    .line 2289
    invoke-static {v0, v4, v5}, Lcom/android/server/pm/UserRestrictionsUtils;->writeRestrictions(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 2292
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    .line 2293
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    const-string v5, "device_policy_global_restrictions"

    .line 2292
    invoke-static {v0, v4, v5}, Lcom/android/server/pm/UserRestrictionsUtils;->writeRestrictions(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 2295
    monitor-exit v2
    :try_end_11e
    .catchall {:try_start_ef .. :try_end_11e} :catchall_154

    .line 2297
    iget-object v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    if-eqz v2, :cond_131

    .line 2298
    const-string v2, "account"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2299
    iget-object v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2300
    const-string v2, "account"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2303
    :cond_131
    iget-boolean v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->persistSeedData:Z

    if-eqz v2, :cond_14a

    iget-object v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    if-eqz v2, :cond_14a

    .line 2304
    const-string/jumbo v2, "seedAccountOptions"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2305
    iget-object v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    invoke-virtual {v2, v0}, Landroid/os/PersistableBundle;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 2306
    const-string/jumbo v2, "seedAccountOptions"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2309
    :cond_14a
    const-string/jumbo v2, "user"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2311
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2312
    return-void

    .line 2295
    :catchall_154
    move-exception v3

    :try_start_155
    monitor-exit v2
    :try_end_156
    .catchall {:try_start_155 .. :try_end_156} :catchall_154

    throw v3
.end method
