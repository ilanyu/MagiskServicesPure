.class public final Lcom/android/server/pm/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/Settings$RuntimePermissionPersistence;,
        Lcom/android/server/pm/Settings$VersionInfo;,
        Lcom/android/server/pm/Settings$RestoredPermissionGrant;,
        Lcom/android/server/pm/Settings$KernelPackageState;,
        Lcom/android/server/pm/Settings$DatabaseVersion;
    }
.end annotation


# static fields
.field private static final ATTR_APP_LINK_GENERATION:Ljava/lang/String; = "app-link-generation"

.field private static final ATTR_BLOCKED:Ljava/lang/String; = "blocked"

.field private static final ATTR_BLOCK_UNINSTALL:Ljava/lang/String; = "blockUninstall"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final ATTR_CE_DATA_INODE:Ljava/lang/String; = "ceDataInode"

.field private static final ATTR_CODE:Ljava/lang/String; = "code"

.field private static final ATTR_DATABASE_VERSION:Ljava/lang/String; = "databaseVersion"

.field private static final ATTR_DOMAIN_VERIFICATON_STATE:Ljava/lang/String; = "domainVerificationStatus"

.field private static final ATTR_ENABLED:Ljava/lang/String; = "enabled"

.field private static final ATTR_ENABLED_CALLER:Ljava/lang/String; = "enabledCaller"

.field private static final ATTR_ENFORCEMENT:Ljava/lang/String; = "enforcement"

.field private static final ATTR_FINGERPRINT:Ljava/lang/String; = "fingerprint"

.field private static final ATTR_FLAGS:Ljava/lang/String; = "flags"

.field private static final ATTR_GRANTED:Ljava/lang/String; = "granted"

.field private static final ATTR_HARMFUL_APP_WARNING:Ljava/lang/String; = "harmful-app-warning"

.field private static final ATTR_HIDDEN:Ljava/lang/String; = "hidden"

.field private static final ATTR_INSTALLED:Ljava/lang/String; = "inst"

.field private static final ATTR_INSTALL_REASON:Ljava/lang/String; = "install-reason"

.field private static final ATTR_INSTANT_APP:Ljava/lang/String; = "instant-app"

.field public static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_NOT_LAUNCHED:Ljava/lang/String; = "nl"

.field public static final ATTR_PACKAGE:Ljava/lang/String; = "package"

.field private static final ATTR_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final ATTR_REVOKE_ON_UPGRADE:Ljava/lang/String; = "rou"

.field private static final ATTR_SDK_VERSION:Ljava/lang/String; = "sdkVersion"

.field private static final ATTR_STOPPED:Ljava/lang/String; = "stopped"

.field private static final ATTR_SUSPENDED:Ljava/lang/String; = "suspended"

.field private static final ATTR_SUSPENDING_PACKAGE:Ljava/lang/String; = "suspending-package"

.field private static final ATTR_SUSPEND_DIALOG_MESSAGE:Ljava/lang/String; = "suspend_dialog_message"

.field private static final ATTR_USER:Ljava/lang/String; = "user"

.field private static final ATTR_USER_FIXED:Ljava/lang/String; = "fixed"

.field private static final ATTR_USER_SET:Ljava/lang/String; = "set"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final ATTR_VIRTUAL_PRELOAD:Ljava/lang/String; = "virtual-preload"

.field private static final ATTR_VOLUME_UUID:Ljava/lang/String; = "volumeUuid"

.field public static final CURRENT_DATABASE_VERSION:I = 0x3

.field private static final DEBUG_KERNEL:Z = false

.field private static final DEBUG_MU:Z = false

.field private static final DEBUG_PARSER:Z = false

.field private static final DEBUG_STOPPED:Z = false

.field static final FLAG_DUMP_SPEC:[Ljava/lang/Object;

.field private static PRE_M_APP_INFO_FLAG_CANT_SAVE_STATE:I = 0x0

.field private static PRE_M_APP_INFO_FLAG_FORWARD_LOCK:I = 0x0

.field private static PRE_M_APP_INFO_FLAG_HIDDEN:I = 0x0

.field private static PRE_M_APP_INFO_FLAG_PRIVILEGED:I = 0x0

.field private static final PRIVATE_FLAG_DUMP_SPEC:[Ljava/lang/Object;

.field private static final RUNTIME_PERMISSIONS_FILE_NAME:Ljava/lang/String; = "runtime-permissions.xml"

.field private static final TAG:Ljava/lang/String; = "PackageSettings"

.field private static final TAG_ALL_INTENT_FILTER_VERIFICATION:Ljava/lang/String; = "all-intent-filter-verifications"

.field private static final TAG_BLOCK_UNINSTALL:Ljava/lang/String; = "block-uninstall"

.field private static final TAG_BLOCK_UNINSTALL_PACKAGES:Ljava/lang/String; = "block-uninstall-packages"

.field private static final TAG_CHILD_PACKAGE:Ljava/lang/String; = "child-package"

.field static final TAG_CROSS_PROFILE_INTENT_FILTERS:Ljava/lang/String; = "crossProfile-intent-filters"

.field private static final TAG_DEFAULT_APPS:Ljava/lang/String; = "default-apps"

.field private static final TAG_DEFAULT_BROWSER:Ljava/lang/String; = "default-browser"

.field private static final TAG_DEFAULT_DIALER:Ljava/lang/String; = "default-dialer"

.field private static final TAG_DISABLED_COMPONENTS:Ljava/lang/String; = "disabled-components"

.field private static final TAG_DOMAIN_VERIFICATION:Ljava/lang/String; = "domain-verification"

.field private static final TAG_ENABLED_COMPONENTS:Ljava/lang/String; = "enabled-components"

.field public static final TAG_ITEM:Ljava/lang/String; = "item"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "pkg"

.field private static final TAG_PACKAGE_RESTRICTIONS:Ljava/lang/String; = "package-restrictions"

.field private static final TAG_PERMISSIONS:Ljava/lang/String; = "perms"

.field private static final TAG_PERMISSION_ENTRY:Ljava/lang/String; = "perm"

.field private static final TAG_PERSISTENT_PREFERRED_ACTIVITIES:Ljava/lang/String; = "persistent-preferred-activities"

.field private static final TAG_READ_EXTERNAL_STORAGE:Ljava/lang/String; = "read-external-storage"

.field private static final TAG_RESTORED_RUNTIME_PERMISSIONS:Ljava/lang/String; = "restored-perms"

.field private static final TAG_RUNTIME_PERMISSIONS:Ljava/lang/String; = "runtime-permissions"

.field private static final TAG_SHARED_USER:Ljava/lang/String; = "shared-user"

.field private static final TAG_SUSPENDED_APP_EXTRAS:Ljava/lang/String; = "suspended-app-extras"

.field private static final TAG_SUSPENDED_LAUNCHER_EXTRAS:Ljava/lang/String; = "suspended-launcher-extras"

.field private static final TAG_USES_STATIC_LIB:Ljava/lang/String; = "uses-static-lib"

.field private static final TAG_VERSION:Ljava/lang/String; = "version"

.field private static final USER_RUNTIME_GRANT_MASK:I = 0xb

.field private static mFirstAvailableUid:I


# instance fields
.field private final mBackupSettingsFilename:Ljava/io/File;

.field private final mBackupStoppedPackagesFilename:Ljava/io/File;

.field private final mBlockUninstallPackages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final mCrossProfileIntentResolvers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/CrossProfileIntentResolver;",
            ">;"
        }
    .end annotation
.end field

.field final mDefaultBrowserApp:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mDefaultDialerApp:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisabledSysPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field final mInstallerPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mKernelMapping:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/Settings$KernelPackageState;",
            ">;"
        }
    .end annotation
.end field

.field private final mKernelMappingFilename:Ljava/io/File;

.field public final mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

.field private final mKeySetRefs:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field final mNextAppLinkGeneration:Landroid/util/SparseIntArray;

.field private final mOtherUserIds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageListFilename:Ljava/io/File;

.field final mPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field final mPackagesToBeCleaned:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackageCleanItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mPastSignatures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field final mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

.field final mPersistentPreferredActivities:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/PersistentPreferredIntentResolver;",
            ">;"
        }
    .end annotation
.end field

.field final mPreferredActivities:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/PreferredIntentResolver;",
            ">;"
        }
    .end annotation
.end field

.field mReadExternalStorageEnforced:Ljava/lang/Boolean;

.field final mReadMessages:Ljava/lang/StringBuilder;

.field private final mRenamedPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/IntentFilterVerificationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mRestoredUserGrants:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/pm/Settings$RestoredPermissionGrant;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

.field private final mSettingsFilename:Ljava/io/File;

.field final mSharedUsers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/SharedUserSetting;",
            ">;"
        }
    .end annotation
.end field

.field private final mStoppedPackagesFilename:Ljava/io/File;

.field private final mSystemDir:Ljava/io/File;

.field private final mUserIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

.field private mVersion:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/Settings$VersionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 18

    .line 317
    const/4 v0, 0x0

    sput v0, Lcom/android/server/pm/Settings;->mFirstAvailableUid:I

    .line 3674
    const/high16 v1, 0x8000000

    sput v1, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_HIDDEN:I

    .line 3675
    const/high16 v1, 0x10000000

    sput v1, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_CANT_SAVE_STATE:I

    .line 3676
    const/high16 v1, 0x20000000

    sput v1, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_FORWARD_LOCK:I

    .line 3677
    const/high16 v1, 0x40000000    # 2.0f

    sput v1, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_PRIVILEGED:I

    .line 4429
    const/16 v1, 0x1e

    new-array v2, v1, [Ljava/lang/Object;

    .line 4430
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v0

    const-string v4, "SYSTEM"

    aput-object v4, v2, v3

    .line 4431
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    const-string v5, "DEBUGGABLE"

    const/4 v6, 0x3

    aput-object v5, v2, v6

    .line 4432
    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v5

    const-string v7, "HAS_CODE"

    const/4 v8, 0x5

    aput-object v7, v2, v8

    .line 4433
    const/16 v7, 0x8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x6

    aput-object v9, v2, v10

    const-string v9, "PERSISTENT"

    const/4 v11, 0x7

    aput-object v9, v2, v11

    .line 4434
    const/16 v9, 0x10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v2, v7

    const-string v12, "FACTORY_TEST"

    const/16 v13, 0x9

    aput-object v12, v2, v13

    .line 4435
    const/16 v12, 0x20

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v15, 0xa

    aput-object v14, v2, v15

    const-string v14, "ALLOW_TASK_REPARENTING"

    const/16 v16, 0xb

    aput-object v14, v2, v16

    .line 4436
    const/16 v14, 0x40

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v17, 0xc

    aput-object v14, v2, v17

    const-string v14, "ALLOW_CLEAR_USER_DATA"

    const/16 v17, 0xd

    aput-object v14, v2, v17

    .line 4437
    const/16 v14, 0x80

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v17, 0xe

    aput-object v14, v2, v17

    const-string v14, "UPDATED_SYSTEM_APP"

    const/16 v17, 0xf

    aput-object v14, v2, v17

    .line 4438
    const/16 v14, 0x100

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v2, v9

    const-string v14, "TEST_ONLY"

    const/16 v17, 0x11

    aput-object v14, v2, v17

    .line 4439
    const/16 v14, 0x4000

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v17, 0x12

    aput-object v14, v2, v17

    const-string v14, "VM_SAFE_MODE"

    const/16 v17, 0x13

    aput-object v14, v2, v17

    .line 4440
    const v14, 0x8000

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v17, 0x14

    aput-object v14, v2, v17

    const-string v14, "ALLOW_BACKUP"

    const/16 v17, 0x15

    aput-object v14, v2, v17

    .line 4441
    const/high16 v14, 0x10000

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v17, 0x16

    aput-object v14, v2, v17

    const-string v14, "KILL_AFTER_RESTORE"

    const/16 v17, 0x17

    aput-object v14, v2, v17

    .line 4442
    const/high16 v14, 0x20000

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v17, 0x18

    aput-object v14, v2, v17

    const-string v14, "RESTORE_ANY_VERSION"

    const/16 v17, 0x19

    aput-object v14, v2, v17

    .line 4443
    const/high16 v14, 0x40000

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v17, 0x1a

    aput-object v14, v2, v17

    const-string v14, "EXTERNAL_STORAGE"

    const/16 v17, 0x1b

    aput-object v14, v2, v17

    .line 4444
    const/high16 v14, 0x100000

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v17, 0x1c

    aput-object v14, v2, v17

    const-string v14, "LARGE_HEAP"

    const/16 v17, 0x1d

    aput-object v14, v2, v17

    sput-object v2, Lcom/android/server/pm/Settings;->FLAG_DUMP_SPEC:[Ljava/lang/Object;

    .line 4447
    const/16 v2, 0x28

    new-array v2, v2, [Ljava/lang/Object;

    .line 4448
    const/16 v14, 0x400

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v2, v0

    const-string v0, "PRIVATE_FLAG_ACTIVITIES_RESIZE_MODE_RESIZEABLE"

    aput-object v0, v2, v3

    .line 4449
    const/16 v0, 0x1000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    const-string v0, "PRIVATE_FLAG_ACTIVITIES_RESIZE_MODE_RESIZEABLE_VIA_SDK_VERSION"

    aput-object v0, v2, v6

    .line 4450
    const/16 v0, 0x800

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v5

    const-string v0, "PRIVATE_FLAG_ACTIVITIES_RESIZE_MODE_UNRESIZEABLE"

    aput-object v0, v2, v8

    .line 4451
    const/16 v0, 0x2000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v10

    const-string v0, "BACKUP_IN_FOREGROUND"

    aput-object v0, v2, v11

    .line 4452
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v7

    const-string v0, "CANT_SAVE_STATE"

    aput-object v0, v2, v13

    .line 4453
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v15

    const-string v0, "DEFAULT_TO_DEVICE_PROTECTED_STORAGE"

    aput-object v0, v2, v16

    .line 4454
    const/16 v0, 0x40

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v4, 0xc

    aput-object v0, v2, v4

    const-string v0, "DIRECT_BOOT_AWARE"

    const/16 v4, 0xd

    aput-object v0, v2, v4

    .line 4455
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v4, 0xe

    aput-object v0, v2, v4

    const-string v0, "FORWARD_LOCK"

    const/16 v4, 0xf

    aput-object v0, v2, v4

    .line 4456
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v9

    const-string v0, "HAS_DOMAIN_URLS"

    const/16 v4, 0x11

    aput-object v0, v2, v4

    .line 4457
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v3, 0x12

    aput-object v0, v2, v3

    const-string v0, "HIDDEN"

    const/16 v3, 0x13

    aput-object v0, v2, v3

    .line 4458
    const/16 v0, 0x80

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v3, 0x14

    aput-object v0, v2, v3

    const-string v0, "EPHEMERAL"

    const/16 v3, 0x15

    aput-object v0, v2, v3

    .line 4459
    const v0, 0x8000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v3, 0x16

    aput-object v0, v2, v3

    const-string v0, "ISOLATED_SPLIT_LOADING"

    const/16 v3, 0x17

    aput-object v0, v2, v3

    .line 4460
    const/high16 v0, 0x20000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v3, 0x18

    aput-object v0, v2, v3

    const-string v0, "OEM"

    const/16 v3, 0x19

    aput-object v0, v2, v3

    .line 4461
    const/16 v0, 0x100

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v3, 0x1a

    aput-object v0, v2, v3

    const-string v0, "PARTIALLY_DIRECT_BOOT_AWARE"

    const/16 v3, 0x1b

    aput-object v0, v2, v3

    .line 4462
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v3, 0x1c

    aput-object v0, v2, v3

    const-string v0, "PRIVILEGED"

    const/16 v3, 0x1d

    aput-object v0, v2, v3

    .line 4463
    const/16 v0, 0x200

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "REQUIRED_FOR_SYSTEM_USER"

    const/16 v1, 0x1f

    aput-object v0, v2, v1

    .line 4464
    const/16 v0, 0x4000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v12

    const-string v0, "STATIC_SHARED_LIBRARY"

    const/16 v1, 0x21

    aput-object v0, v2, v1

    .line 4465
    const/high16 v0, 0x40000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x22

    aput-object v0, v2, v1

    const-string v0, "VENDOR"

    const/16 v1, 0x23

    aput-object v0, v2, v1

    .line 4466
    const/high16 v0, 0x80000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x24

    aput-object v0, v2, v1

    const-string v0, "PRODUCT"

    const/16 v1, 0x25

    aput-object v0, v2, v1

    .line 4467
    const/high16 v0, 0x10000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x26

    aput-object v0, v2, v1

    const-string v0, "VIRTUAL_PRELOAD"

    const/16 v1, 0x27

    aput-object v0, v2, v1

    sput-object v2, Lcom/android/server/pm/Settings;->PRIVATE_FLAG_DUMP_SPEC:[Ljava/lang/Object;

    .line 4447
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/permission/PermissionSettings;Ljava/lang/Object;)V
    .registers 4
    .param p1, "permissions"    # Lcom/android/server/pm/permission/PermissionSettings;
    .param p2, "lock"    # Ljava/lang/Object;

    .line 425
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/pm/Settings;-><init>(Ljava/io/File;Lcom/android/server/pm/permission/PermissionSettings;Ljava/lang/Object;)V

    .line 426
    return-void
.end method

.method constructor <init>(Ljava/io/File;Lcom/android/server/pm/permission/PermissionSettings;Ljava/lang/Object;)V
    .registers 8
    .param p1, "dataDir"    # Ljava/io/File;
    .param p2, "permission"    # Lcom/android/server/pm/permission/PermissionSettings;
    .param p3, "lock"    # Ljava/lang/Object;

    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    .line 276
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Landroid/util/ArraySet;

    .line 279
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mKernelMapping:Landroid/util/ArrayMap;

    .line 282
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    .line 286
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Landroid/util/SparseArray;

    .line 289
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    .line 313
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mRestoredUserGrants:Landroid/util/SparseArray;

    .line 320
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    .line 364
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Landroid/util/SparseArray;

    .line 369
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Landroid/util/SparseArray;

    .line 373
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    .line 376
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    .line 378
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    .line 379
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mOtherUserIds:Landroid/util/SparseArray;

    .line 383
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    .line 385
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    .line 390
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    .line 396
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    .line 399
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mDefaultBrowserApp:Landroid/util/SparseArray;

    .line 402
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mDefaultDialerApp:Landroid/util/SparseArray;

    .line 405
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mNextAppLinkGeneration:Landroid/util/SparseIntArray;

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    .line 416
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    .line 420
    new-instance v0, Lcom/android/server/pm/KeySetManagerService;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Lcom/android/server/pm/KeySetManagerService;-><init>(Landroid/util/ArrayMap;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    .line 429
    iput-object p3, p0, Lcom/android/server/pm/Settings;->mLock:Ljava/lang/Object;

    .line 430
    iput-object p2, p0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    .line 431
    new-instance v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mLock:Ljava/lang/Object;

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;-><init>(Lcom/android/server/pm/Settings;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    .line 433
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "system"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    .line 434
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 435
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    const/16 v2, 0x1fd

    invoke-static {v0, v2, v1, v1}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 439
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string/jumbo v2, "packages.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    .line 440
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string/jumbo v2, "packages-backup.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    .line 441
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string/jumbo v2, "packages.list"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    .line 442
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    const/16 v1, 0x1a0

    const/16 v2, 0x3e8

    const/16 v3, 0x408

    invoke-static {v0, v1, v2, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    .line 444
    new-instance v0, Ljava/io/File;

    const-string v1, "/config/sdcardfs"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 445
    .local v0, "kernelDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_113

    move-object v1, v0

    goto :goto_114

    :cond_113
    const/4 v1, 0x0

    :goto_114
    iput-object v1, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    .line 448
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string/jumbo v3, "packages-stopped.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    .line 449
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string/jumbo v3, "packages-stopped-backup.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    .line 450
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/pm/Settings;I)Ljava/io/File;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/pm/Settings;
    .param p1, "x1"    # I

    .line 131
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->getUserRuntimePermissionsFile(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/pm/Settings;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/Settings;

    .line 131
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRestoredUserGrants:Landroid/util/SparseArray;

    return-object v0
.end method

.method private addPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;)V
    .registers 7
    .param p1, "p"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "sharedUser"    # Lcom/android/server/pm/SharedUserSetting;

    .line 949
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 950
    if-eqz p2, :cond_8b

    .line 951
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    const/4 v1, 0x6

    if-eqz v0, :cond_45

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eq v0, p2, :cond_45

    .line 952
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " but is now "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; I am not changing its files so it will probably fail!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 956
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/SharedUserSetting;->removePackage(Lcom/android/server/pm/PackageSetting;)V

    goto :goto_82

    .line 957
    :cond_45
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    iget v2, p2, Lcom/android/server/pm/SharedUserSetting;->userId:I

    if-eq v0, v2, :cond_82

    .line 958
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was user id "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " but is now user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with id "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; I am not changing its files so it will probably fail!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 965
    :cond_82
    :goto_82
    invoke-virtual {p2, p1}, Lcom/android/server/pm/SharedUserSetting;->addPackage(Lcom/android/server/pm/PackageSetting;)V

    .line 966
    iput-object p2, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 967
    iget v0, p2, Lcom/android/server/pm/SharedUserSetting;->userId:I

    iput v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 972
    :cond_8b
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {p0, v0}, Lcom/android/server/pm/Settings;->getUserIdLPr(I)Ljava/lang/Object;

    move-result-object v0

    .line 973
    .local v0, "userIdPs":Ljava/lang/Object;
    if-nez p2, :cond_9d

    .line 974
    if-eqz v0, :cond_a6

    if-eq v0, p1, :cond_a6

    .line 975
    iget v1, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-direct {p0, v1, p1}, Lcom/android/server/pm/Settings;->replaceUserIdLPw(ILjava/lang/Object;)V

    goto :goto_a6

    .line 978
    :cond_9d
    if-eqz v0, :cond_a6

    if-eq v0, p2, :cond_a6

    .line 979
    iget v1, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-direct {p0, v1, p2}, Lcom/android/server/pm/Settings;->replaceUserIdLPw(ILjava/lang/Object;)V

    .line 983
    :cond_a6
    :goto_a6
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/IntentFilterVerificationInfo;

    .line 984
    .local v1, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    if-eqz v1, :cond_bc

    .line 988
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 989
    invoke-virtual {p1, v1}, Lcom/android/server/pm/PackageSetting;->setIntentFilterVerificationInfo(Landroid/content/pm/IntentFilterVerificationInfo;)V

    .line 991
    :cond_bc
    return-void
.end method

.method private addUserIdLPw(ILjava/lang/Object;Ljava/lang/Object;)Z
    .registers 10
    .param p1, "uid"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "name"    # Ljava/lang/Object;

    .line 1142
    const/4 v0, 0x0

    const/16 v1, 0x4e1f

    if-le p1, v1, :cond_6

    .line 1143
    return v0

    .line 1146
    :cond_6
    const/4 v1, 0x6

    const/16 v2, 0x2710

    if-lt p1, v2, :cond_49

    .line 1147
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1148
    .local v2, "N":I
    add-int/lit16 v3, p1, -0x2710

    .line 1149
    .local v3, "index":I
    :goto_13
    if-lt v3, v2, :cond_1e

    .line 1150
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1151
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 1153
    :cond_1e
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_43

    .line 1154
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding duplicate user id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1157
    return v0

    .line 1159
    :cond_43
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1160
    .end local v2    # "N":I
    .end local v3    # "index":I
    goto :goto_73

    .line 1161
    :cond_49
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mOtherUserIds:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6e

    .line 1162
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding duplicate shared id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1165
    return v0

    .line 1167
    :cond_6e
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mOtherUserIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1169
    :goto_73
    const/4 v0, 0x1

    return v0
.end method

.method private applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V
    .registers 35
    .param p1, "service"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "flags"    # I
    .param p4, "cn"    # Landroid/content/ComponentName;
    .param p5, "scheme"    # Ljava/lang/String;
    .param p6, "ssp"    # Landroid/os/PatternMatcher;
    .param p7, "auth"    # Landroid/content/IntentFilter$AuthorityEntry;
    .param p8, "path"    # Landroid/os/PatternMatcher;
    .param p9, "userId"    # I

    move-object/from16 v7, p2

    move-object/from16 v8, p5

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    .line 3437
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p9

    move-object v4, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerService;->updateFlagsForResolve(IILandroid/content/Intent;IZ)I

    move-result v1

    .line 3438
    .end local p3    # "flags":I
    .local v1, "flags":I
    move-object/from16 v2, p1

    iget-object v0, v2, Lcom/android/server/pm/PackageManagerService;->mActivities:Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;

    .line 3439
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    .line 3438
    const/4 v4, 0x0

    invoke-virtual {v0, v7, v3, v1, v4}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v3

    .line 3442
    .local v3, "ri":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    .line 3443
    .local v0, "systemMatch":I
    const/4 v5, 0x0

    .line 3444
    .local v5, "thirdPartyMatch":I
    if-eqz v3, :cond_1bc

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    const/4 v11, 0x1

    if-le v6, v11, :cond_1bc

    .line 3445
    const/4 v6, 0x0

    .line 3446
    .local v6, "haveAct":Z
    const/4 v12, 0x0

    .line 3447
    .local v12, "haveNonSys":Landroid/content/ComponentName;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    new-array v13, v13, [Landroid/content/ComponentName;

    .line 3448
    .local v13, "set":[Landroid/content/ComponentName;
    move/from16 v20, v6

    move v6, v0

    move v0, v4

    .local v0, "i":I
    .local v6, "systemMatch":I
    .local v20, "haveAct":Z
    :goto_3c
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v14

    if-ge v0, v14, :cond_91

    .line 3449
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ResolveInfo;

    iget-object v14, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 3450
    .local v14, "ai":Landroid/content/pm/ActivityInfo;
    new-instance v15, Landroid/content/ComponentName;

    iget-object v4, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v11, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v15, v4, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v15, v13, v0

    .line 3451
    iget-object v4, v14, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v11, 0x1

    and-int/2addr v4, v11

    if-nez v4, :cond_6a

    .line 3452
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget v4, v4, Landroid/content/pm/ResolveInfo;->match:I

    if-lt v4, v5, :cond_8d

    .line 3458
    aget-object v12, v13, v0

    .line 3459
    goto :goto_91

    .line 3461
    :cond_6a
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v15, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8d

    .line 3462
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    iget-object v15, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8d

    .line 3465
    const/4 v4, 0x1

    .line 3466
    .end local v20    # "haveAct":Z
    .local v4, "haveAct":Z
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ResolveInfo;

    iget v6, v15, Landroid/content/pm/ResolveInfo;->match:I

    .line 3448
    .end local v14    # "ai":Landroid/content/pm/ActivityInfo;
    move/from16 v20, v4

    .end local v4    # "haveAct":Z
    .restart local v20    # "haveAct":Z
    :cond_8d
    add-int/lit8 v0, v0, 0x1

    const/4 v4, 0x0

    goto :goto_3c

    .line 3472
    .end local v0    # "i":I
    :cond_91
    :goto_91
    if-eqz v12, :cond_96

    if-ge v5, v6, :cond_96

    .line 3477
    const/4 v12, 0x0

    .line 3479
    :cond_96
    if-eqz v20, :cond_14d

    if-nez v12, :cond_14d

    .line 3480
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move-object v4, v0

    .line 3481
    .local v4, "filter":Landroid/content/IntentFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_ad

    .line 3482
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3484
    :cond_ad
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_cb

    .line 3485
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_bb
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_cb

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 3486
    .local v11, "cat":Ljava/lang/String;
    invoke-virtual {v4, v11}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 3487
    .end local v11    # "cat":Ljava/lang/String;
    goto :goto_bb

    .line 3489
    :cond_cb
    const/high16 v0, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_d5

    .line 3490
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 3492
    :cond_d5
    if-eqz v8, :cond_da

    .line 3493
    invoke-virtual {v4, v8}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 3495
    :cond_da
    if-eqz p6, :cond_e7

    .line 3496
    invoke-virtual/range {p6 .. p6}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p6 .. p6}, Landroid/os/PatternMatcher;->getType()I

    move-result v14

    invoke-virtual {v4, v0, v14}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 3498
    :cond_e7
    if-eqz v9, :cond_ec

    .line 3499
    invoke-virtual {v4, v9}, Landroid/content/IntentFilter;->addDataAuthority(Landroid/content/IntentFilter$AuthorityEntry;)V

    .line 3501
    :cond_ec
    if-eqz v10, :cond_f1

    .line 3502
    invoke-virtual {v4, v10}, Landroid/content/IntentFilter;->addDataPath(Landroid/os/PatternMatcher;)V

    .line 3504
    :cond_f1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12e

    .line 3506
    :try_start_f7
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_fe
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_f7 .. :try_end_fe} :catch_104

    .line 3509
    nop

    .line 3511
    move/from16 v23, v1

    move-object/from16 v1, p4

    goto :goto_132

    .line 3507
    :catch_104
    move-exception v0

    .line 3508
    .local v0, "ex":Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string v14, "PackageSettings"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v0

    const-string v0, "Malformed mimetype "

    .end local v0    # "ex":Landroid/content/IntentFilter$MalformedMimeTypeException;
    .local v22, "ex":Landroid/content/IntentFilter$MalformedMimeTypeException;
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " for "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v23, v1

    move-object/from16 v1, p4

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .end local v1    # "flags":I
    .local v23, "flags":I
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v22    # "ex":Landroid/content/IntentFilter$MalformedMimeTypeException;
    goto :goto_132

    .line 3511
    .end local v23    # "flags":I
    .restart local v1    # "flags":I
    :cond_12e
    move/from16 v23, v1

    move-object/from16 v1, p4

    .end local v1    # "flags":I
    .restart local v23    # "flags":I
    :goto_132
    new-instance v0, Lcom/android/server/pm/PreferredActivity;

    const/16 v19, 0x1

    move-object v14, v0

    move-object v15, v4

    move/from16 v16, v6

    move-object/from16 v17, v13

    move-object/from16 v18, v1

    invoke-direct/range {v14 .. v19}, Lcom/android/server/pm/PreferredActivity;-><init>(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;Z)V

    .line 3512
    .local v0, "pa":Lcom/android/server/pm/PreferredActivity;
    move-object/from16 v14, p0

    move/from16 v15, p9

    invoke-virtual {v14, v15}, Lcom/android/server/pm/Settings;->editPreferredActivitiesLPw(I)Lcom/android/server/pm/PreferredIntentResolver;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/pm/PreferredIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    .line 3513
    .end local v0    # "pa":Lcom/android/server/pm/PreferredActivity;
    .end local v4    # "filter":Landroid/content/IntentFilter;
    goto :goto_1bb

    .end local v23    # "flags":I
    .restart local v1    # "flags":I
    :cond_14d
    move-object/from16 v14, p0

    move/from16 v15, p9

    move/from16 v23, v1

    move-object/from16 v1, p4

    .end local v1    # "flags":I
    .restart local v23    # "flags":I
    if-nez v12, :cond_199

    .line 3514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3515
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v2, "No component "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3516
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3517
    const-string v2, " found setting preferred "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3518
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3519
    const-string v2, "; possible matches are "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3520
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_177
    move/from16 v2, v21

    .end local v21    # "i":I
    .local v2, "i":I
    array-length v4, v13

    if-ge v2, v4, :cond_18f

    .line 3521
    if-lez v2, :cond_183

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3522
    :cond_183
    aget-object v4, v13, v2

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3520
    add-int/lit8 v21, v2, 0x1

    .end local v2    # "i":I
    .restart local v21    # "i":I
    goto :goto_177

    .line 3524
    .end local v21    # "i":I
    :cond_18f
    const-string v2, "PackageSettings"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3525
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    goto :goto_1bb

    .line 3526
    :cond_199
    const-string v0, "PackageSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not setting preferred "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "; found third party match "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3527
    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3526
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3529
    .end local v12    # "haveNonSys":Landroid/content/ComponentName;
    .end local v13    # "set":[Landroid/content/ComponentName;
    .end local v20    # "haveAct":Z
    :goto_1bb
    goto :goto_1e7

    .line 3530
    .end local v6    # "systemMatch":I
    .end local v23    # "flags":I
    .local v0, "systemMatch":I
    .restart local v1    # "flags":I
    :cond_1bc
    move-object/from16 v14, p0

    move/from16 v15, p9

    move/from16 v23, v1

    move-object/from16 v1, p4

    .end local v1    # "flags":I
    .restart local v23    # "flags":I
    const-string v2, "PackageSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No potential matches found for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " while setting preferred "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3531
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3530
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3533
    move v6, v0

    .end local v0    # "systemMatch":I
    .restart local v6    # "systemMatch":I
    :goto_1e7
    return-void
.end method

.method private applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V
    .registers 31
    .param p1, "service"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "tmpPa"    # Landroid/content/IntentFilter;
    .param p3, "cn"    # Landroid/content/ComponentName;
    .param p4, "userId"    # I

    move-object/from16 v0, p2

    .line 3331
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3332
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0xc0000

    .line 3334
    .local v2, "flags":I
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3335
    move v14, v2

    move v2, v3

    .local v2, "i":I
    .local v14, "flags":I
    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countCategories()I

    move-result v4

    if-ge v2, v4, :cond_2f

    .line 3336
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    move-result-object v4

    .line 3337
    .local v4, "cat":Ljava/lang/String;
    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 3338
    const/high16 v5, 0x10000

    or-int/2addr v14, v5

    goto :goto_2c

    .line 3340
    :cond_29
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3335
    .end local v4    # "cat":Ljava/lang/String;
    :goto_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 3344
    .end local v2    # "i":I
    :cond_2f
    const/4 v2, 0x1

    .line 3345
    .local v2, "doNonData":Z
    const/4 v4, 0x0

    .line 3347
    .local v4, "hasSchemes":Z
    move/from16 v16, v2

    move v2, v3

    move v15, v4

    .end local v4    # "hasSchemes":Z
    .local v2, "ischeme":I
    .local v15, "hasSchemes":Z
    .local v16, "doNonData":Z
    :goto_35
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v4

    if-ge v2, v4, :cond_19c

    .line 3348
    const/4 v4, 0x1

    .line 3349
    .local v4, "doScheme":Z
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v13

    .line 3350
    .local v13, "scheme":Ljava/lang/String;
    if-eqz v13, :cond_4a

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4a

    .line 3351
    const/4 v5, 0x1

    .line 3353
    .end local v15    # "hasSchemes":Z
    .local v5, "hasSchemes":Z
    move v15, v5

    .end local v5    # "hasSchemes":Z
    .restart local v15    # "hasSchemes":Z
    :cond_4a
    move/from16 v17, v4

    move v4, v3

    .local v4, "issp":I
    .local v17, "doScheme":Z
    :goto_4d
    move v12, v4

    .end local v4    # "issp":I
    .local v12, "issp":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataSchemeSpecificParts()I

    move-result v4

    if-ge v12, v4, :cond_9b

    .line 3354
    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    move-object v11, v4

    .line 3355
    .local v11, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v11, v13}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3356
    invoke-virtual {v0, v12}, Landroid/content/IntentFilter;->getDataSchemeSpecificPart(I)Landroid/os/PatternMatcher;

    move-result-object v10

    .line 3357
    .local v10, "ssp":Landroid/os/PatternMatcher;
    invoke-virtual {v10}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Landroid/net/Uri$Builder;->opaquePart(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3358
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v9, v4

    .line 3359
    .local v9, "finalIntent":Landroid/content/Intent;
    invoke-virtual {v11}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3360
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object v6, v9

    move v7, v14

    move-object/from16 v8, p3

    move-object/from16 v20, v9

    move-object v9, v13

    .end local v9    # "finalIntent":Landroid/content/Intent;
    .local v20, "finalIntent":Landroid/content/Intent;
    move-object/from16 v21, v10

    .end local v10    # "ssp":Landroid/os/PatternMatcher;
    .local v21, "ssp":Landroid/os/PatternMatcher;
    move-object/from16 v22, v11

    move-object/from16 v11, v18

    .end local v11    # "builder":Landroid/net/Uri$Builder;
    .local v22, "builder":Landroid/net/Uri$Builder;
    move/from16 v18, v12

    move-object/from16 v12, v19

    .end local v12    # "issp":I
    .local v18, "issp":I
    move-object v3, v13

    move/from16 v13, p4

    .end local v13    # "scheme":Ljava/lang/String;
    .local v3, "scheme":Ljava/lang/String;
    invoke-direct/range {v4 .. v13}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    .line 3362
    const/16 v17, 0x0

    .line 3353
    .end local v20    # "finalIntent":Landroid/content/Intent;
    .end local v21    # "ssp":Landroid/os/PatternMatcher;
    .end local v22    # "builder":Landroid/net/Uri$Builder;
    add-int/lit8 v4, v18, 0x1

    .end local v18    # "issp":I
    .restart local v4    # "issp":I
    move-object v13, v3

    const/4 v3, 0x0

    goto :goto_4d

    .line 3364
    .end local v3    # "scheme":Ljava/lang/String;
    .end local v4    # "issp":I
    .restart local v13    # "scheme":Ljava/lang/String;
    :cond_9b
    move-object v3, v13

    .end local v13    # "scheme":Ljava/lang/String;
    .restart local v3    # "scheme":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "iauth":I
    :goto_9d
    move v13, v4

    .end local v4    # "iauth":I
    .local v13, "iauth":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v4

    if-ge v13, v4, :cond_162

    .line 3365
    const/4 v4, 0x1

    .line 3366
    .local v4, "doAuth":Z
    invoke-virtual {v0, v13}, Landroid/content/IntentFilter;->getDataAuthority(I)Landroid/content/IntentFilter$AuthorityEntry;

    move-result-object v12

    .line 3367
    .local v12, "auth":Landroid/content/IntentFilter$AuthorityEntry;
    move/from16 v18, v17

    move/from16 v17, v4

    const/4 v4, 0x0

    .local v4, "ipath":I
    .local v17, "doAuth":Z
    .local v18, "doScheme":Z
    :goto_ae
    move v11, v4

    .end local v4    # "ipath":I
    .local v11, "ipath":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataPaths()I

    move-result v4

    if-ge v11, v4, :cond_111

    .line 3368
    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    move-object v10, v4

    .line 3369
    .local v10, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v10, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3370
    invoke-virtual {v12}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_cb

    .line 3371
    invoke-virtual {v12}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3373
    :cond_cb
    invoke-virtual {v0, v11}, Landroid/content/IntentFilter;->getDataPath(I)Landroid/os/PatternMatcher;

    move-result-object v9

    .line 3374
    .local v9, "path":Landroid/os/PatternMatcher;
    invoke-virtual {v9}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3375
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v8, v4

    .line 3376
    .local v8, "finalIntent":Landroid/content/Intent;
    invoke-virtual {v10}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3377
    const/16 v19, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object v6, v8

    move v7, v14

    move-object/from16 v20, v8

    move-object/from16 v8, p3

    .end local v8    # "finalIntent":Landroid/content/Intent;
    .restart local v20    # "finalIntent":Landroid/content/Intent;
    move-object/from16 v21, v9

    move-object v9, v3

    .end local v9    # "path":Landroid/os/PatternMatcher;
    .local v21, "path":Landroid/os/PatternMatcher;
    move-object/from16 v22, v10

    move-object/from16 v10, v19

    .end local v10    # "builder":Landroid/net/Uri$Builder;
    .restart local v22    # "builder":Landroid/net/Uri$Builder;
    move/from16 v19, v11

    move-object v11, v12

    .end local v11    # "ipath":I
    .local v19, "ipath":I
    move-object/from16 v24, v12

    move-object/from16 v12, v21

    .end local v12    # "auth":Landroid/content/IntentFilter$AuthorityEntry;
    .local v24, "auth":Landroid/content/IntentFilter$AuthorityEntry;
    move/from16 v25, v13

    move/from16 v13, p4

    .end local v13    # "iauth":I
    .local v25, "iauth":I
    invoke-direct/range {v4 .. v13}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    .line 3379
    const/16 v23, 0x0

    move/from16 v18, v23

    move/from16 v17, v23

    .line 3367
    .end local v20    # "finalIntent":Landroid/content/Intent;
    .end local v21    # "path":Landroid/os/PatternMatcher;
    .end local v22    # "builder":Landroid/net/Uri$Builder;
    add-int/lit8 v4, v19, 0x1

    .end local v19    # "ipath":I
    .restart local v4    # "ipath":I
    move-object/from16 v12, v24

    move/from16 v13, v25

    goto :goto_ae

    .line 3381
    .end local v4    # "ipath":I
    .end local v24    # "auth":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v25    # "iauth":I
    .restart local v12    # "auth":Landroid/content/IntentFilter$AuthorityEntry;
    .restart local v13    # "iauth":I
    :cond_111
    move-object/from16 v24, v12

    move/from16 v25, v13

    const/16 v23, 0x0

    .end local v12    # "auth":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v13    # "iauth":I
    .restart local v24    # "auth":Landroid/content/IntentFilter$AuthorityEntry;
    .restart local v25    # "iauth":I
    if-eqz v17, :cond_15c

    .line 3382
    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    move-object v13, v4

    .line 3383
    .local v13, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v13, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3384
    move-object/from16 v12, v24

    invoke-virtual {v12}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v4

    .end local v24    # "auth":Landroid/content/IntentFilter$AuthorityEntry;
    .restart local v12    # "auth":Landroid/content/IntentFilter$AuthorityEntry;
    if-eqz v4, :cond_131

    .line 3385
    invoke-virtual {v12}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3387
    :cond_131
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v11, v4

    .line 3388
    .local v11, "finalIntent":Landroid/content/Intent;
    invoke-virtual {v13}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v11, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3389
    const/4 v10, 0x0

    const/16 v19, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object v6, v11

    move v7, v14

    move-object/from16 v8, p3

    move-object v9, v3

    move-object/from16 v20, v11

    move-object v11, v12

    .end local v11    # "finalIntent":Landroid/content/Intent;
    .restart local v20    # "finalIntent":Landroid/content/Intent;
    move-object/from16 v21, v12

    move-object/from16 v12, v19

    .end local v12    # "auth":Landroid/content/IntentFilter$AuthorityEntry;
    .local v21, "auth":Landroid/content/IntentFilter$AuthorityEntry;
    move-object/from16 v19, v13

    move/from16 v13, p4

    .end local v13    # "builder":Landroid/net/Uri$Builder;
    .local v19, "builder":Landroid/net/Uri$Builder;
    invoke-direct/range {v4 .. v13}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    .line 3391
    const/4 v4, 0x0

    .line 3364
    .end local v17    # "doAuth":Z
    .end local v18    # "doScheme":Z
    .end local v19    # "builder":Landroid/net/Uri$Builder;
    .end local v20    # "finalIntent":Landroid/content/Intent;
    .end local v21    # "auth":Landroid/content/IntentFilter$AuthorityEntry;
    .local v4, "doScheme":Z
    move/from16 v17, v4

    goto :goto_15e

    .end local v4    # "doScheme":Z
    .restart local v18    # "doScheme":Z
    :cond_15c
    move/from16 v17, v18

    .end local v18    # "doScheme":Z
    .local v17, "doScheme":Z
    :goto_15e
    add-int/lit8 v4, v25, 0x1

    .end local v25    # "iauth":I
    .local v4, "iauth":I
    goto/16 :goto_9d

    .line 3394
    .end local v4    # "iauth":I
    :cond_162
    const/16 v23, 0x0

    if-eqz v17, :cond_194

    .line 3395
    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    move-object v13, v4

    .line 3396
    .restart local v13    # "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v13, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3397
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v12, v4

    .line 3398
    .local v12, "finalIntent":Landroid/content/Intent;
    invoke-virtual {v13}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3399
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v18, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object v6, v12

    move v7, v14

    move-object/from16 v8, p3

    move-object v9, v3

    move-object/from16 v19, v12

    move-object/from16 v12, v18

    .end local v12    # "finalIntent":Landroid/content/Intent;
    .local v19, "finalIntent":Landroid/content/Intent;
    move-object/from16 v18, v13

    move/from16 v13, p4

    .end local v13    # "builder":Landroid/net/Uri$Builder;
    .local v18, "builder":Landroid/net/Uri$Builder;
    invoke-direct/range {v4 .. v13}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    .line 3402
    .end local v18    # "builder":Landroid/net/Uri$Builder;
    .end local v19    # "finalIntent":Landroid/content/Intent;
    :cond_194
    const/16 v16, 0x0

    .line 3347
    .end local v3    # "scheme":Ljava/lang/String;
    .end local v17    # "doScheme":Z
    add-int/lit8 v2, v2, 0x1

    move/from16 v3, v23

    goto/16 :goto_35

    .line 3405
    .end local v2    # "ischeme":I
    :cond_19c
    move/from16 v23, v3

    move/from16 v2, v23

    .local v2, "idata":I
    :goto_1a0
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v3

    if-ge v2, v3, :cond_226

    .line 3406
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object v3

    .line 3407
    .local v3, "mimeType":Ljava/lang/String;
    if-eqz v15, :cond_204

    .line 3408
    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    move-object v13, v4

    .line 3409
    .restart local v13    # "builder":Landroid/net/Uri$Builder;
    move/from16 v4, v23

    .local v4, "ischeme":I
    :goto_1b4
    move v12, v4

    .end local v4    # "ischeme":I
    .local v12, "ischeme":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v4

    if-ge v12, v4, :cond_203

    .line 3410
    invoke-virtual {v0, v12}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v11

    .line 3411
    .local v11, "scheme":Ljava/lang/String;
    if-eqz v11, :cond_1fa

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1fa

    .line 3412
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v10, v4

    .line 3413
    .local v10, "finalIntent":Landroid/content/Intent;
    invoke-virtual {v13, v11}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3414
    invoke-virtual {v13}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v10, v4, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 3415
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object v6, v10

    move v7, v14

    move-object/from16 v8, p3

    move-object v9, v11

    move-object/from16 v20, v10

    move-object/from16 v10, v17

    .end local v10    # "finalIntent":Landroid/content/Intent;
    .restart local v20    # "finalIntent":Landroid/content/Intent;
    move-object/from16 v17, v11

    move-object/from16 v11, v18

    .end local v11    # "scheme":Ljava/lang/String;
    .local v17, "scheme":Ljava/lang/String;
    move/from16 v18, v12

    move-object/from16 v12, v19

    .end local v12    # "ischeme":I
    .local v18, "ischeme":I
    move-object/from16 v19, v13

    move/from16 v13, p4

    .end local v13    # "builder":Landroid/net/Uri$Builder;
    .local v19, "builder":Landroid/net/Uri$Builder;
    invoke-direct/range {v4 .. v13}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    .end local v17    # "scheme":Ljava/lang/String;
    .end local v20    # "finalIntent":Landroid/content/Intent;
    goto :goto_1fe

    .line 3409
    .end local v18    # "ischeme":I
    .end local v19    # "builder":Landroid/net/Uri$Builder;
    .restart local v12    # "ischeme":I
    .restart local v13    # "builder":Landroid/net/Uri$Builder;
    :cond_1fa
    move/from16 v18, v12

    move-object/from16 v19, v13

    .end local v12    # "ischeme":I
    .end local v13    # "builder":Landroid/net/Uri$Builder;
    .restart local v18    # "ischeme":I
    .restart local v19    # "builder":Landroid/net/Uri$Builder;
    :goto_1fe
    add-int/lit8 v4, v18, 0x1

    .end local v18    # "ischeme":I
    .restart local v4    # "ischeme":I
    move-object/from16 v13, v19

    goto :goto_1b4

    .line 3419
    .end local v4    # "ischeme":I
    .end local v19    # "builder":Landroid/net/Uri$Builder;
    :cond_203
    goto :goto_220

    .line 3420
    :cond_204
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v13, v4

    .line 3421
    .local v13, "finalIntent":Landroid/content/Intent;
    invoke-virtual {v13, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3422
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object v6, v13

    move v7, v14

    move-object/from16 v8, p3

    move-object/from16 v17, v13

    move/from16 v13, p4

    .end local v13    # "finalIntent":Landroid/content/Intent;
    .local v17, "finalIntent":Landroid/content/Intent;
    invoke-direct/range {v4 .. v13}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    .line 3425
    .end local v17    # "finalIntent":Landroid/content/Intent;
    :goto_220
    const/16 v16, 0x0

    .line 3405
    .end local v3    # "mimeType":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1a0

    .line 3428
    .end local v2    # "idata":I
    :cond_226
    if-eqz v16, :cond_239

    .line 3429
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object v4, v1

    move v5, v14

    move-object/from16 v6, p3

    move/from16 v11, p4

    invoke-direct/range {v2 .. v11}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    .line 3432
    :cond_239
    return-void
.end method

.method static createNewSetting(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILandroid/os/UserHandle;ZZZLjava/lang/String;Ljava/util/List;Lcom/android/server/pm/UserManagerService;[Ljava/lang/String;[J)Lcom/android/server/pm/PackageSetting;
    .registers 69
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "originalPkg"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "disabledPkg"    # Lcom/android/server/pm/PackageSetting;
    .param p3, "realPkgName"    # Ljava/lang/String;
    .param p4, "sharedUser"    # Lcom/android/server/pm/SharedUserSetting;
    .param p5, "codePath"    # Ljava/io/File;
    .param p6, "resourcePath"    # Ljava/io/File;
    .param p7, "legacyNativeLibraryPath"    # Ljava/lang/String;
    .param p8, "primaryCpuAbi"    # Ljava/lang/String;
    .param p9, "secondaryCpuAbi"    # Ljava/lang/String;
    .param p10, "versionCode"    # J
    .param p12, "pkgFlags"    # I
    .param p13, "pkgPrivateFlags"    # I
    .param p14, "installUser"    # Landroid/os/UserHandle;
    .param p15, "allowInstall"    # Z
    .param p16, "instantApp"    # Z
    .param p17, "virtualPreload"    # Z
    .param p18, "parentPkgName"    # Ljava/lang/String;
    .param p20, "userManager"    # Lcom/android/server/pm/UserManagerService;
    .param p21, "usesStaticLibraries"    # [Ljava/lang/String;
    .param p22, "usesStaticLibrariesVersions"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            "Lcom/android/server/pm/PackageSetting;",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/SharedUserSetting;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JII",
            "Landroid/os/UserHandle;",
            "ZZZ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/UserManagerService;",
            "[",
            "Ljava/lang/String;",
            "[J)",
            "Lcom/android/server/pm/PackageSetting;"
        }
    .end annotation

    .local p19, "childPkgNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move/from16 v15, p12

    move-object/from16 v14, p14

    move-object/from16 v12, p19

    .line 680
    if-eqz v0, :cond_64

    .line 683
    new-instance v3, Lcom/android/server/pm/PackageSetting;

    move-object/from16 v13, p0

    invoke-direct {v3, v0, v13}, Lcom/android/server/pm/PackageSetting;-><init>(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)V

    .line 684
    .local v3, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    nop

    .line 685
    if-eqz v12, :cond_1e

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1f

    :cond_1e
    const/4 v4, 0x0

    :goto_1f
    iput-object v4, v3, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    .line 686
    move-object/from16 v11, p5

    iput-object v11, v3, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    .line 687
    move-object/from16 v10, p7

    iput-object v10, v3, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    .line 688
    move-object/from16 v9, p18

    iput-object v9, v3, Lcom/android/server/pm/PackageSetting;->parentPackageName:Ljava/lang/String;

    .line 689
    iput v15, v3, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    .line 690
    move/from16 v8, p13

    iput v8, v3, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    .line 691
    move-object/from16 v7, p8

    iput-object v7, v3, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    .line 692
    move-object/from16 v6, p6

    iput-object v6, v3, Lcom/android/server/pm/PackageSetting;->resourcePath:Ljava/io/File;

    .line 693
    move-object/from16 v5, p9

    iput-object v5, v3, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    .line 696
    new-instance v4, Lcom/android/server/pm/PackageSignatures;

    invoke-direct {v4}, Lcom/android/server/pm/PackageSignatures;-><init>()V

    iput-object v4, v3, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 697
    move-wide/from16 v0, p10

    iput-wide v0, v3, Lcom/android/server/pm/PackageSetting;->versionCode:J

    .line 698
    move-object/from16 v4, p21

    iput-object v4, v3, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    .line 699
    move-object/from16 v2, p22

    iput-object v2, v3, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    .line 701
    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V

    .line 782
    move-object/from16 v13, p20

    move-object v6, v14

    move/from16 v21, v15

    move-object/from16 v0, p2

    move-object/from16 v2, p4

    goto/16 :goto_17f

    .line 703
    .end local v3    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    :cond_64
    move-object/from16 v13, p0

    move-object/from16 v11, p5

    move-object/from16 v6, p6

    move-object/from16 v10, p7

    move-object/from16 v7, p8

    move-wide/from16 v0, p10

    move/from16 v8, p13

    move-object/from16 v9, p18

    move-object/from16 v2, p22

    new-instance v22, Lcom/android/server/pm/PackageSetting;

    const/16 v16, 0x0

    const/16 v18, 0x0

    move-object/from16 v3, v22

    move-object v4, v13

    move-object/from16 v5, p3

    move-object v6, v11

    move-object/from16 v7, p6

    move-object v8, v10

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, v16

    move-wide v12, v0

    move v14, v15

    move/from16 v21, v15

    move/from16 v15, p13

    move-object/from16 v16, p18

    move-object/from16 v17, p19

    move-object/from16 v19, p21

    move-object/from16 v20, v2

    invoke-direct/range {v3 .. v20}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/util/List;I[Ljava/lang/String;[J)V

    .line 708
    .restart local v3    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V

    .line 709
    move-object/from16 v2, p4

    iput-object v2, v3, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 711
    and-int/lit8 v4, v21, 0x1

    if-nez v4, :cond_12d

    .line 717
    invoke-static/range {p20 .. p20}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v4

    .line 718
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v5, 0x0

    move-object/from16 v6, p14

    if-eqz v6, :cond_b9

    invoke-virtual/range {p14 .. p14}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    goto :goto_ba

    :cond_b9
    move v7, v5

    .line 719
    .local v7, "installUserId":I
    :goto_ba
    if-eqz v4, :cond_12a

    if-eqz p15, :cond_12a

    .line 720
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_c2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_12a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/UserInfo;

    .line 727
    .local v10, "user":Landroid/content/pm/UserInfo;
    const/4 v11, 0x1

    if-eqz v6, :cond_e8

    const/4 v12, -0x1

    if-ne v7, v12, :cond_df

    iget v12, v10, Landroid/content/pm/UserInfo;->id:I

    .line 729
    move-object/from16 v13, p20

    invoke-static {v13, v12}, Lcom/android/server/pm/Settings;->isAdbInstallDisallowed(Lcom/android/server/pm/UserManagerService;I)Z

    move-result v12

    if-eqz v12, :cond_ea

    goto :goto_e1

    :cond_df
    move-object/from16 v13, p20

    :goto_e1
    iget v12, v10, Landroid/content/pm/UserInfo;->id:I

    if-ne v7, v12, :cond_e6

    goto :goto_ea

    :cond_e6
    move v12, v5

    goto :goto_eb

    :cond_e8
    move-object/from16 v13, p20

    :cond_ea
    :goto_ea
    move v12, v11

    .line 731
    .local v12, "installed":Z
    :goto_eb
    iget v14, v10, Landroid/content/pm/UserInfo;->id:I

    const-wide/16 v25, 0x0

    const/16 v27, 0x0

    if-eqz v12, :cond_fe

    iget v15, v10, Landroid/content/pm/UserInfo;->id:I

    .line 734
    invoke-static {v6, v15}, Lcom/android/server/pm/SettingsInjector;->shouldInstallInXSpace(Landroid/os/UserHandle;I)Z

    move-result v15

    if-eqz v15, :cond_fe

    move/from16 v28, v11

    goto :goto_100

    :cond_fe
    move/from16 v28, v5

    :goto_100
    const/16 v29, 0x1

    const/16 v30, 0x1

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    .line 731
    move-object/from16 v23, v3

    move/from16 v24, v14

    move/from16 v37, p16

    move/from16 v38, p17

    invoke-virtual/range {v23 .. v45}, Lcom/android/server/pm/PackageSetting;->setUserState(IJIZZZZZLjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;ZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;IIILjava/lang/String;)V

    .line 752
    .end local v10    # "user":Landroid/content/pm/UserInfo;
    .end local v12    # "installed":Z
    goto :goto_c2

    .line 755
    .end local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v7    # "installUserId":I
    :cond_12a
    move-object/from16 v13, p20

    goto :goto_131

    :cond_12d
    move-object/from16 v13, p20

    move-object/from16 v6, p14

    :goto_131
    if-eqz v2, :cond_13a

    .line 756
    iget v4, v2, Lcom/android/server/pm/SharedUserSetting;->userId:I

    iput v4, v3, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 782
    move-object/from16 v0, p2

    goto :goto_17f

    .line 759
    :cond_13a
    move-object/from16 v0, p2

    if-eqz v0, :cond_17f

    .line 764
    new-instance v1, Lcom/android/server/pm/PackageSignatures;

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    invoke-direct {v1, v4}, Lcom/android/server/pm/PackageSignatures;-><init>(Lcom/android/server/pm/PackageSignatures;)V

    iput-object v1, v3, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 765
    iget v1, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    iput v1, v3, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 767
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/pm/permission/PermissionsState;->copyFrom(Lcom/android/server/pm/permission/PermissionsState;)V

    .line 769
    invoke-static/range {p20 .. p20}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v1

    .line 770
    .local v1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v1, :cond_17f

    .line 771
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_160
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_17f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 772
    .local v5, "user":Landroid/content/pm/UserInfo;
    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    .line 773
    .local v7, "userId":I
    nop

    .line 774
    invoke-virtual {v0, v7}, Lcom/android/server/pm/PackageSetting;->getDisabledComponents(I)Landroid/util/ArraySet;

    move-result-object v9

    .line 773
    invoke-virtual {v3, v9, v7}, Lcom/android/server/pm/PackageSetting;->setDisabledComponentsCopy(Landroid/util/ArraySet;I)V

    .line 775
    nop

    .line 776
    invoke-virtual {v0, v7}, Lcom/android/server/pm/PackageSetting;->getEnabledComponents(I)Landroid/util/ArraySet;

    move-result-object v9

    .line 775
    invoke-virtual {v3, v9, v7}, Lcom/android/server/pm/PackageSetting;->setEnabledComponentsCopy(Landroid/util/ArraySet;I)V

    .line 777
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    .end local v7    # "userId":I
    goto :goto_160

    .line 782
    .end local v1    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_17f
    :goto_17f
    return-object v3
.end method

.method private static dumpSplitNames(Ljava/io/PrintWriter;Landroid/content/pm/PackageParser$Package;)V
    .registers 4
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 5045
    if-nez p1, :cond_9

    .line 5046
    const-string/jumbo v0, "unknown"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_51

    .line 5049
    :cond_9
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5050
    const-string v0, "base"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5051
    iget v0, p1, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    if-eqz v0, :cond_21

    .line 5052
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p1, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5054
    :cond_21
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    if-eqz v0, :cond_4c

    .line 5055
    const/4 v0, 0x0

    .line 5055
    .local v0, "i":I
    :goto_26
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_4c

    .line 5056
    const-string v1, ", "

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5057
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5058
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->splitRevisionCodes:[I

    aget v1, v1, v0

    if-eqz v1, :cond_49

    .line 5059
    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->splitRevisionCodes:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 5055
    :cond_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 5063
    .end local v0    # "i":I
    :cond_4c
    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5065
    :goto_51
    return-void
.end method

.method private static getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;
    .registers 4
    .param p0, "userManager"    # Lcom/android/server/pm/UserManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/UserManagerService;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 4391
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4393
    .local v0, "id":J
    const/4 v2, 0x0

    :try_start_5
    invoke-virtual {p0, v2}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v2
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_9} :catch_12
    .catchall {:try_start_5 .. :try_end_9} :catchall_d

    .line 4397
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4393
    return-object v2

    .line 4397
    :catchall_d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 4394
    :catch_12
    move-exception v2

    .line 4397
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4398
    nop

    .line 4399
    const/4 v2, 0x0

    return-object v2
.end method

.method private getUserPackagesStateBackupFile(I)Ljava/io/File;
    .registers 5
    .param p1, "userId"    # I

    .line 1394
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "package-restrictions-backup.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getUserPackagesStateFile(I)Ljava/io/File;
    .registers 6
    .param p1, "userId"    # I

    .line 1382
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string/jumbo v3, "users"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1383
    .local v0, "userDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "package-restrictions.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private getUserRuntimePermissionsFile(I)Ljava/io/File;
    .registers 6
    .param p1, "userId"    # I

    .line 1389
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string/jumbo v3, "users"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1390
    .local v0, "userDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "runtime-permissions.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method static isAdbInstallDisallowed(Lcom/android/server/pm/UserManagerService;I)Z
    .registers 3
    .param p0, "userManager"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "userId"    # I

    .line 926
    const-string/jumbo v0, "no_debugging_features"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private newUserIdLPw(Ljava/lang/Object;)I
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 4233
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4234
    .local v0, "N":I
    sget v1, Lcom/android/server/pm/Settings;->mFirstAvailableUid:I

    .local v1, "i":I
    :goto_8
    const/16 v2, 0x2710

    if-ge v1, v0, :cond_1e

    .line 4235
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1b

    .line 4236
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4237
    add-int/2addr v2, v1

    return v2

    .line 4234
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 4242
    .end local v1    # "i":I
    :cond_1e
    const/16 v1, 0x270f

    if-le v0, v1, :cond_24

    .line 4243
    const/4 v1, -0x1

    return v1

    .line 4246
    :cond_24
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4247
    add-int/2addr v2, v0

    return v2
.end method

.method private static permissionFlagsToString(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "flags"    # I

    .line 5093
    const/4 v0, 0x0

    .line 5094
    .local v0, "flagsString":Ljava/lang/StringBuilder;
    :goto_1
    if-eqz p1, :cond_28

    .line 5095
    if-nez v0, :cond_13

    .line 5096
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v1

    .line 5097
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5098
    const-string v1, "[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5100
    :cond_13
    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    shl-int/2addr v1, v2

    .line 5101
    .local v1, "flag":I
    not-int v2, v1

    and-int/2addr p1, v2

    .line 5102
    invoke-static {v1}, Landroid/content/pm/PackageManager;->permissionFlagToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5103
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5104
    .end local v1    # "flag":I
    goto :goto_1

    .line 5105
    :cond_28
    if-eqz v0, :cond_34

    .line 5106
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 5109
    :cond_34
    const-string v1, ""

    return-object v1
.end method

.method static printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V
    .registers 6
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "val"    # I
    .param p2, "spec"    # [Ljava/lang/Object;

    .line 4418
    const-string v0, "[ "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4419
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    array-length v1, p2

    if-ge v0, v1, :cond_24

    .line 4420
    aget-object v1, p2, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4421
    .local v1, "mask":I
    and-int v2, p1, v1

    if-eqz v2, :cond_21

    .line 4422
    add-int/lit8 v2, v0, 0x1

    aget-object v2, p2, v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 4423
    const-string v2, " "

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4419
    .end local v1    # "mask":I
    :cond_21
    add-int/lit8 v0, v0, 0x2

    goto :goto_6

    .line 4426
    .end local v0    # "i":I
    :cond_24
    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4427
    return-void
.end method

.method private readComponentsLPr(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/ArraySet;
    .registers 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1862
    const/4 v0, 0x0

    .line 1864
    .local v0, "components":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 1866
    .local v1, "outerDepth":I
    :cond_5
    :goto_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .line 1866
    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_3f

    const/4 v2, 0x3

    if-ne v3, v2, :cond_16

    .line 1868
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_3f

    .line 1869
    :cond_16
    if-eq v3, v2, :cond_5

    const/4 v2, 0x4

    if-ne v3, v2, :cond_1c

    .line 1871
    goto :goto_5

    .line 1873
    :cond_1c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1874
    .local v2, "tagName":Ljava/lang/String;
    const-string/jumbo v4, "item"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1875
    const/4 v4, 0x0

    const-string/jumbo v5, "name"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1876
    .local v4, "componentName":Ljava/lang/String;
    if-eqz v4, :cond_3e

    .line 1877
    if-nez v0, :cond_3b

    .line 1878
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v5

    .line 1880
    :cond_3b
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1882
    .end local v4    # "componentName":Ljava/lang/String;
    :cond_3e
    goto :goto_5

    .line 1884
    .end local v2    # "tagName":Ljava/lang/String;
    :cond_3f
    return-object v0
.end method

.method private readCrossProfileIntentFiltersLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    .registers 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1503
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1505
    .local v0, "outerDepth":I
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .line 1505
    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_4e

    const/4 v1, 0x3

    if-ne v2, v1, :cond_15

    .line 1506
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_4e

    .line 1507
    :cond_15
    if-eq v2, v1, :cond_4

    const/4 v1, 0x4

    if-ne v2, v1, :cond_1b

    .line 1508
    goto :goto_4

    .line 1510
    :cond_1b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1511
    .local v1, "tagName":Ljava/lang/String;
    const-string/jumbo v3, "item"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 1512
    new-instance v3, Lcom/android/server/pm/CrossProfileIntentFilter;

    invoke-direct {v3, p1}, Lcom/android/server/pm/CrossProfileIntentFilter;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1513
    .local v3, "cpif":Lcom/android/server/pm/CrossProfileIntentFilter;
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->editCrossProfileIntentResolverLPw(I)Lcom/android/server/pm/CrossProfileIntentResolver;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/pm/CrossProfileIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    .line 1514
    .end local v3    # "cpif":Lcom/android/server/pm/CrossProfileIntentFilter;
    goto :goto_4d

    .line 1515
    :cond_35
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element under crossProfile-intent-filters: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1517
    .local v3, "msg":Ljava/lang/String;
    const/4 v4, 0x5

    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1518
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1520
    .end local v1    # "tagName":Ljava/lang/String;
    .end local v3    # "msg":Ljava/lang/String;
    :goto_4d
    goto :goto_4

    .line 1521
    :cond_4e
    return-void
.end method

.method private readDefaultPreferredActivitiesLPw(Lcom/android/server/pm/PackageManagerService;Lorg/xmlpull/v1/XmlPullParser;I)V
    .registers 11
    .param p1, "service"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3538
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 3540
    .local v0, "outerDepth":I
    :cond_4
    :goto_4
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .line 3540
    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_81

    const/4 v1, 0x3

    if-ne v2, v1, :cond_15

    .line 3541
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_81

    .line 3542
    :cond_15
    if-eq v2, v1, :cond_4

    const/4 v1, 0x4

    if-ne v2, v1, :cond_1b

    .line 3543
    goto :goto_4

    .line 3546
    :cond_1b
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 3547
    .local v1, "tagName":Ljava/lang/String;
    const-string/jumbo v3, "item"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x5

    if-eqz v3, :cond_65

    .line 3548
    new-instance v3, Lcom/android/server/pm/PreferredActivity;

    invoke-direct {v3, p2}, Lcom/android/server/pm/PreferredActivity;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3549
    .local v3, "tmpPa":Lcom/android/server/pm/PreferredActivity;
    iget-object v5, v3, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    invoke-virtual {v5}, Lcom/android/server/pm/PreferredComponent;->getParseError()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3e

    .line 3550
    iget-object v4, v3, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v4, v4, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    invoke-direct {p0, p1, v3, v4, p3}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V

    goto :goto_64

    .line 3553
    :cond_3e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in package manager settings: <preferred-activity> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    .line 3555
    invoke-virtual {v6}, Lcom/android/server/pm/PreferredComponent;->getParseError()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3556
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3553
    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3558
    .end local v3    # "tmpPa":Lcom/android/server/pm/PreferredActivity;
    :goto_64
    goto :goto_80

    .line 3559
    :cond_65
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <preferred-activities>: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3560
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3559
    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3561
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3563
    .end local v1    # "tagName":Ljava/lang/String;
    :goto_80
    goto :goto_4

    .line 3564
    :cond_81
    return-void
.end method

.method private readDisabledComponentsLPw(Lcom/android/server/pm/PackageSettingBase;Lorg/xmlpull/v1/XmlPullParser;I)V
    .registers 11
    .param p1, "packageSetting"    # Lcom/android/server/pm/PackageSettingBase;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 3998
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 4000
    .local v0, "outerDepth":I
    :cond_4
    :goto_4
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .line 4000
    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_70

    const/4 v1, 0x3

    if-ne v2, v1, :cond_15

    .line 4001
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_70

    .line 4002
    :cond_15
    if-eq v2, v1, :cond_4

    const/4 v1, 0x4

    if-ne v2, v1, :cond_1b

    .line 4003
    goto :goto_4

    .line 4006
    :cond_1b
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 4007
    .local v1, "tagName":Ljava/lang/String;
    const-string/jumbo v3, "item"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x5

    if-eqz v3, :cond_54

    .line 4008
    const/4 v3, 0x0

    const-string/jumbo v5, "name"

    invoke-interface {p2, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4009
    .local v3, "name":Ljava/lang/String;
    if-eqz v3, :cond_3b

    .line 4010
    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, p3}, Lcom/android/server/pm/PackageSettingBase;->addDisabledComponent(Ljava/lang/String;I)V

    goto :goto_53

    .line 4012
    :cond_3b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in package manager settings: <disabled-components> has no name at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4014
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4012
    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 4016
    .end local v3    # "name":Ljava/lang/String;
    :goto_53
    goto :goto_6c

    .line 4017
    :cond_54
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <disabled-components>: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4018
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4017
    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 4020
    :goto_6c
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4021
    .end local v1    # "tagName":Ljava/lang/String;
    goto :goto_4

    .line 4022
    :cond_70
    return-void
.end method

.method private readDisabledSysPackageLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 39
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 3568
    move-object/from16 v2, p1

    const-string/jumbo v0, "name"

    const/4 v3, 0x0

    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 3569
    .local v15, "name":Ljava/lang/String;
    const-string/jumbo v0, "realName"

    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 3570
    .local v22, "realName":Ljava/lang/String;
    const-string v0, "codePath"

    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 3571
    .local v13, "codePathStr":Ljava/lang/String;
    const-string/jumbo v0, "resourcePath"

    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3573
    .local v0, "resourcePathStr":Ljava/lang/String;
    const-string/jumbo v4, "requiredCpuAbi"

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 3574
    .local v23, "legacyCpuAbiStr":Ljava/lang/String;
    const-string/jumbo v4, "nativeLibraryPath"

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 3576
    .local v24, "legacyNativeLibraryPathStr":Ljava/lang/String;
    const-string/jumbo v4, "parentPackageName"

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 3578
    .local v25, "parentPackageName":Ljava/lang/String;
    const-string/jumbo v4, "primaryCpuAbi"

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3579
    .local v4, "primaryCpuAbiStr":Ljava/lang/String;
    const-string/jumbo v5, "secondaryCpuAbi"

    invoke-interface {v2, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 3580
    .local v26, "secondaryCpuAbiStr":Ljava/lang/String;
    const-string v5, "cpuAbiOverride"

    invoke-interface {v2, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 3582
    .local v27, "cpuAbiOverrideStr":Ljava/lang/String;
    if-nez v4, :cond_4f

    if-eqz v23, :cond_4f

    .line 3583
    move-object/from16 v4, v23

    .line 3586
    .end local v4    # "primaryCpuAbiStr":Ljava/lang/String;
    .local v28, "primaryCpuAbiStr":Ljava/lang/String;
    :cond_4f
    move-object/from16 v28, v4

    if-nez v0, :cond_54

    .line 3587
    move-object v0, v13

    .line 3589
    .end local v0    # "resourcePathStr":Ljava/lang/String;
    .local v14, "resourcePathStr":Ljava/lang/String;
    :cond_54
    move-object v14, v0

    const-string/jumbo v0, "version"

    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3590
    .local v12, "version":Ljava/lang/String;
    const-wide/16 v4, 0x0

    .line 3591
    .local v4, "versionCode":J
    if-eqz v12, :cond_67

    .line 3593
    :try_start_60
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6
    :try_end_64
    .catch Ljava/lang/NumberFormatException; {:try_start_60 .. :try_end_64} :catch_66

    move-wide v4, v6

    .line 3595
    goto :goto_67

    .line 3594
    :catch_66
    move-exception v0

    .line 3598
    .end local v4    # "versionCode":J
    .local v29, "versionCode":J
    :cond_67
    :goto_67
    move-wide/from16 v29, v4

    const/4 v0, 0x0

    .line 3599
    .local v0, "pkgFlags":I
    const/4 v4, 0x0

    .line 3600
    .local v4, "pkgPrivateFlags":I
    const/4 v11, 0x1

    or-int/lit8 v31, v0, 0x1

    .line 3601
    .end local v0    # "pkgFlags":I
    .local v31, "pkgFlags":I
    invoke-static {v13}, Lcom/android/server/pm/PackageManagerService;->locationIsPrivileged(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 3602
    or-int/lit8 v0, v4, 0x8

    .line 3604
    .end local v4    # "pkgPrivateFlags":I
    .local v0, "pkgPrivateFlags":I
    move/from16 v32, v0

    goto :goto_7b

    .line 3604
    .end local v0    # "pkgPrivateFlags":I
    .restart local v4    # "pkgPrivateFlags":I
    :cond_79
    move/from16 v32, v4

    .line 3604
    .end local v4    # "pkgPrivateFlags":I
    .local v32, "pkgPrivateFlags":I
    :goto_7b
    new-instance v0, Lcom/android/server/pm/PackageSetting;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v4, v0

    move-object v5, v15

    move-object/from16 v6, v22

    move-object/from16 v9, v24

    move-object/from16 v10, v28

    move-object/from16 v11, v26

    move-object/from16 v33, v12

    move-object/from16 v12, v27

    .end local v12    # "version":Ljava/lang/String;
    .local v33, "version":Ljava/lang/String;
    move-object/from16 v34, v13

    move-object/from16 v35, v14

    move-wide/from16 v13, v29

    .line 3604
    .end local v13    # "codePathStr":Ljava/lang/String;
    .end local v14    # "resourcePathStr":Ljava/lang/String;
    .local v34, "codePathStr":Ljava/lang/String;
    .local v35, "resourcePathStr":Ljava/lang/String;
    move-object/from16 v36, v15

    move/from16 v15, v31

    .line 3604
    .end local v15    # "name":Ljava/lang/String;
    .local v36, "name":Ljava/lang/String;
    move/from16 v16, v32

    move-object/from16 v17, v25

    invoke-direct/range {v4 .. v21}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/util/List;I[Ljava/lang/String;[J)V

    .line 3608
    .local v4, "ps":Lcom/android/server/pm/PackageSetting;
    const-string v0, "ft"

    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3609
    .local v5, "timeStampStr":Ljava/lang/String;
    const/16 v6, 0x10

    if-eqz v5, :cond_c2

    .line 3611
    :try_start_b8
    invoke-static {v5, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v7

    .line 3612
    .local v7, "timeStamp":J
    invoke-virtual {v4, v7, v8}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V
    :try_end_bf
    .catch Ljava/lang/NumberFormatException; {:try_start_b8 .. :try_end_bf} :catch_c0

    .line 3612
    .end local v7    # "timeStamp":J
    goto :goto_c1

    .line 3613
    :catch_c0
    move-exception v0

    .line 3614
    :goto_c1
    goto :goto_d4

    .line 3616
    :cond_c2
    const-string/jumbo v0, "ts"

    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3617
    if-eqz v5, :cond_d4

    .line 3619
    :try_start_cb
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 3620
    .restart local v7    # "timeStamp":J
    invoke-virtual {v4, v7, v8}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V
    :try_end_d2
    .catch Ljava/lang/NumberFormatException; {:try_start_cb .. :try_end_d2} :catch_d3

    .line 3622
    .end local v7    # "timeStamp":J
    goto :goto_d4

    .line 3621
    :catch_d3
    move-exception v0

    .line 3625
    :cond_d4
    :goto_d4
    const-string/jumbo v0, "it"

    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3626
    if-eqz v5, :cond_e5

    .line 3628
    :try_start_dd
    invoke-static {v5, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v7

    iput-wide v7, v4, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J
    :try_end_e3
    .catch Ljava/lang/NumberFormatException; {:try_start_dd .. :try_end_e3} :catch_e4

    .line 3630
    goto :goto_e5

    .line 3629
    :catch_e4
    move-exception v0

    .line 3632
    :cond_e5
    :goto_e5
    const-string/jumbo v0, "ut"

    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3633
    if-eqz v5, :cond_f6

    .line 3635
    :try_start_ee
    invoke-static {v5, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    iput-wide v6, v4, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J
    :try_end_f4
    .catch Ljava/lang/NumberFormatException; {:try_start_ee .. :try_end_f4} :catch_f5

    .line 3637
    goto :goto_f6

    .line 3636
    :catch_f5
    move-exception v0

    .line 3639
    :cond_f6
    :goto_f6
    const-string/jumbo v0, "userId"

    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3640
    .local v0, "idStr":Ljava/lang/String;
    const/4 v6, 0x0

    if-eqz v0, :cond_105

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    goto :goto_106

    :cond_105
    move v7, v6

    :goto_106
    iput v7, v4, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 3641
    iget v7, v4, Lcom/android/server/pm/PackageSetting;->appId:I

    if-gtz v7, :cond_11c

    .line 3642
    const-string/jumbo v7, "sharedUserId"

    invoke-interface {v2, v3, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3643
    .local v7, "sharedIdStr":Ljava/lang/String;
    if-eqz v7, :cond_11a

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    nop

    :cond_11a
    iput v6, v4, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 3646
    .end local v7    # "sharedIdStr":Ljava/lang/String;
    :cond_11c
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    .line 3648
    .local v6, "outerDepth":I
    :cond_120
    :goto_120
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    move v8, v7

    .line 3648
    .local v8, "type":I
    const/4 v9, 0x1

    if-eq v7, v9, :cond_19e

    const/4 v7, 0x3

    if-ne v8, v7, :cond_131

    .line 3649
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    if-le v10, v6, :cond_19e

    .line 3650
    :cond_131
    if-eq v8, v7, :cond_120

    const/4 v7, 0x4

    if-ne v8, v7, :cond_137

    .line 3651
    goto :goto_120

    .line 3654
    :cond_137
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v10, "perms"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14c

    .line 3655
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Lcom/android/server/pm/Settings;->readInstallPermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/permission/PermissionsState;)V

    goto :goto_120

    .line 3656
    :cond_14c
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v10, "child-package"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_170

    .line 3657
    const-string/jumbo v7, "name"

    invoke-interface {v2, v3, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3658
    .local v7, "childPackageName":Ljava/lang/String;
    iget-object v10, v4, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    if-nez v10, :cond_16a

    .line 3659
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v4, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    .line 3661
    :cond_16a
    iget-object v10, v4, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3662
    .end local v7    # "childPackageName":Ljava/lang/String;
    goto :goto_120

    :cond_170
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v10, "uses-static-lib"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_181

    .line 3663
    invoke-virtual {v1, v2, v4}, Lcom/android/server/pm/Settings;->readUsesStaticLibLPw(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/PackageSetting;)V

    goto :goto_120

    .line 3665
    :cond_181
    const/4 v7, 0x5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown element under <updated-package>: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3666
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3665
    invoke-static {v7, v10}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3667
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_120

    .line 3671
    :cond_19e
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    move-object/from16 v7, v36

    invoke-virtual {v3, v7, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3672
    .end local v36    # "name":Ljava/lang/String;
    .local v7, "name":Ljava/lang/String;
    return-void
.end method

.method private readDomainVerificationLPw(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/PackageSettingBase;)V
    .registers 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "packageSetting"    # Lcom/android/server/pm/PackageSettingBase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1525
    new-instance v0, Landroid/content/pm/IntentFilterVerificationInfo;

    invoke-direct {v0, p1}, Landroid/content/pm/IntentFilterVerificationInfo;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1526
    .local v0, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    invoke-virtual {p2, v0}, Lcom/android/server/pm/PackageSettingBase;->setIntentFilterVerificationInfo(Landroid/content/pm/IntentFilterVerificationInfo;)V

    .line 1530
    return-void
.end method

.method private readEnabledComponentsLPw(Lcom/android/server/pm/PackageSettingBase;Lorg/xmlpull/v1/XmlPullParser;I)V
    .registers 11
    .param p1, "packageSetting"    # Lcom/android/server/pm/PackageSettingBase;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 4026
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 4028
    .local v0, "outerDepth":I
    :cond_4
    :goto_4
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .line 4028
    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_70

    const/4 v1, 0x3

    if-ne v2, v1, :cond_15

    .line 4029
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_70

    .line 4030
    :cond_15
    if-eq v2, v1, :cond_4

    const/4 v1, 0x4

    if-ne v2, v1, :cond_1b

    .line 4031
    goto :goto_4

    .line 4034
    :cond_1b
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 4035
    .local v1, "tagName":Ljava/lang/String;
    const-string/jumbo v3, "item"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x5

    if-eqz v3, :cond_54

    .line 4036
    const/4 v3, 0x0

    const-string/jumbo v5, "name"

    invoke-interface {p2, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4037
    .local v3, "name":Ljava/lang/String;
    if-eqz v3, :cond_3b

    .line 4038
    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, p3}, Lcom/android/server/pm/PackageSettingBase;->addEnabledComponent(Ljava/lang/String;I)V

    goto :goto_53

    .line 4040
    :cond_3b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in package manager settings: <enabled-components> has no name at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4042
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4040
    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 4044
    .end local v3    # "name":Ljava/lang/String;
    :goto_53
    goto :goto_6c

    .line 4045
    :cond_54
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <enabled-components>: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4046
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4045
    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 4048
    :goto_6c
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4049
    .end local v1    # "tagName":Ljava/lang/String;
    goto :goto_4

    .line 4050
    :cond_70
    return-void
.end method

.method private readPackageLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 92
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v14, p0

    .line 3680
    move-object/from16 v13, p1

    const/4 v1, 0x0

    .line 3681
    .local v1, "name":Ljava/lang/String;
    const/4 v2, 0x0

    .line 3682
    .local v2, "realName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 3683
    .local v3, "idStr":Ljava/lang/String;
    const/4 v4, 0x0

    .line 3684
    .local v4, "sharedIdStr":Ljava/lang/String;
    const/4 v5, 0x0

    .line 3685
    .local v5, "codePathStr":Ljava/lang/String;
    const/4 v6, 0x0

    .line 3686
    .local v6, "resourcePathStr":Ljava/lang/String;
    const/4 v7, 0x0

    .line 3687
    .local v7, "legacyCpuAbiString":Ljava/lang/String;
    const/4 v8, 0x0

    .line 3688
    .local v8, "legacyNativeLibraryPathStr":Ljava/lang/String;
    const/4 v9, 0x0

    .line 3689
    .local v9, "primaryCpuAbiString":Ljava/lang/String;
    const/4 v10, 0x0

    .line 3690
    .local v10, "secondaryCpuAbiString":Ljava/lang/String;
    const/4 v11, 0x0

    .line 3691
    .local v11, "cpuAbiOverrideString":Ljava/lang/String;
    const/4 v12, 0x0

    .line 3692
    .local v12, "systemStr":Ljava/lang/String;
    const/16 v16, 0x0

    .line 3693
    .local v16, "installerPackageName":Ljava/lang/String;
    const/16 v17, 0x0

    .line 3694
    .local v17, "isOrphaned":Ljava/lang/String;
    const/16 v18, 0x0

    .line 3695
    .local v18, "volumeUuid":Ljava/lang/String;
    const/16 v19, 0x0

    .line 3696
    .local v19, "categoryHintString":Ljava/lang/String;
    const/16 v20, 0x0

    .line 3697
    .local v20, "updateAvailable":Ljava/lang/String;
    const/16 v21, -0x1

    .line 3698
    .local v21, "categoryHint":I
    const/4 v15, 0x0

    .line 3699
    .local v15, "uidError":Ljava/lang/String;
    const/16 v22, 0x0

    .line 3700
    .local v22, "pkgFlags":I
    const/16 v23, 0x0

    .line 3701
    .local v23, "pkgPrivateFlags":I
    const-wide/16 v24, 0x0

    .line 3702
    .local v24, "timeStamp":J
    const-wide/16 v26, 0x0

    .line 3703
    .local v26, "firstInstallTime":J
    const-wide/16 v28, 0x0

    .line 3704
    .local v28, "lastUpdateTime":J
    const/16 v30, 0x0

    .line 3705
    .local v30, "packageSetting":Lcom/android/server/pm/PackageSetting;
    const/16 v31, 0x0

    .line 3706
    .local v31, "version":Ljava/lang/String;
    const-wide/16 v32, 0x0

    .line 3709
    .local v32, "versionCode":J
    move-object/from16 v34, v11

    .line 3709
    .end local v11    # "cpuAbiOverrideString":Ljava/lang/String;
    .local v34, "cpuAbiOverrideString":Ljava/lang/String;
    const/4 v11, 0x0

    :try_start_30
    const-string/jumbo v0, "name"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_37
    .catch Ljava/lang/NumberFormatException; {:try_start_30 .. :try_end_37} :catch_835

    move-object v1, v0

    .line 3710
    :try_start_38
    const-string/jumbo v0, "realName"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 3711
    const-string/jumbo v0, "userId"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_47
    .catch Ljava/lang/NumberFormatException; {:try_start_38 .. :try_end_47} :catch_80d

    move-object v3, v0

    .line 3712
    :try_start_48
    const-string/jumbo v0, "uidError"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_4f
    .catch Ljava/lang/NumberFormatException; {:try_start_48 .. :try_end_4f} :catch_7e2

    move-object/from16 v36, v0

    .line 3713
    .end local v15    # "uidError":Ljava/lang/String;
    .local v36, "uidError":Ljava/lang/String;
    :try_start_51
    const-string/jumbo v0, "sharedUserId"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_58
    .catch Ljava/lang/NumberFormatException; {:try_start_51 .. :try_end_58} :catch_7d9

    move-object v4, v0

    .line 3714
    :try_start_59
    const-string v0, "codePath"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_5f
    .catch Ljava/lang/NumberFormatException; {:try_start_59 .. :try_end_5f} :catch_7ae

    move-object v5, v0

    .line 3715
    :try_start_60
    const-string/jumbo v0, "resourcePath"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_67
    .catch Ljava/lang/NumberFormatException; {:try_start_60 .. :try_end_67} :catch_77c

    move-object/from16 v37, v0

    .line 3717
    .end local v6    # "resourcePathStr":Ljava/lang/String;
    .local v37, "resourcePathStr":Ljava/lang/String;
    :try_start_69
    const-string/jumbo v0, "requiredCpuAbi"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_70
    .catch Ljava/lang/NumberFormatException; {:try_start_69 .. :try_end_70} :catch_750

    move-object/from16 v38, v0

    .line 3719
    .end local v7    # "legacyCpuAbiString":Ljava/lang/String;
    .local v38, "legacyCpuAbiString":Ljava/lang/String;
    :try_start_72
    const-string/jumbo v0, "parentPackageName"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 3721
    .local v15, "parentPackageName":Ljava/lang/String;
    const-string/jumbo v0, "nativeLibraryPath"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_80
    .catch Ljava/lang/NumberFormatException; {:try_start_72 .. :try_end_80} :catch_743

    .line 3722
    .end local v8    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .local v6, "legacyNativeLibraryPathStr":Ljava/lang/String;
    :try_start_80
    const-string/jumbo v0, "primaryCpuAbi"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_87
    .catch Ljava/lang/NumberFormatException; {:try_start_80 .. :try_end_87} :catch_736

    move-object v7, v0

    .line 3723
    .end local v9    # "primaryCpuAbiString":Ljava/lang/String;
    .local v7, "primaryCpuAbiString":Ljava/lang/String;
    :try_start_88
    const-string/jumbo v0, "secondaryCpuAbi"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_8f
    .catch Ljava/lang/NumberFormatException; {:try_start_88 .. :try_end_8f} :catch_708

    .line 3724
    .end local v10    # "secondaryCpuAbiString":Ljava/lang/String;
    .local v8, "secondaryCpuAbiString":Ljava/lang/String;
    :try_start_8f
    const-string v0, "cpuAbiOverride"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_95
    .catch Ljava/lang/NumberFormatException; {:try_start_8f .. :try_end_95} :catch_6fb

    .line 3725
    .end local v34    # "cpuAbiOverrideString":Ljava/lang/String;
    .local v9, "cpuAbiOverrideString":Ljava/lang/String;
    :try_start_95
    const-string/jumbo v0, "updateAvailable"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_9c
    .catch Ljava/lang/NumberFormatException; {:try_start_95 .. :try_end_9c} :catch_6d0

    move-object/from16 v20, v0

    .line 3727
    if-nez v7, :cond_a7

    if-eqz v38, :cond_a7

    .line 3728
    move-object/from16 v0, v38

    .line 3731
    .end local v7    # "primaryCpuAbiString":Ljava/lang/String;
    .local v0, "primaryCpuAbiString":Ljava/lang/String;
    move-object/from16 v34, v0

    goto :goto_a9

    .line 3731
    .end local v0    # "primaryCpuAbiString":Ljava/lang/String;
    .restart local v7    # "primaryCpuAbiString":Ljava/lang/String;
    :cond_a7
    move-object/from16 v34, v7

    .line 3731
    .end local v7    # "primaryCpuAbiString":Ljava/lang/String;
    .local v34, "primaryCpuAbiString":Ljava/lang/String;
    :goto_a9
    :try_start_a9
    const-string/jumbo v0, "version"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_b0
    .catch Ljava/lang/NumberFormatException; {:try_start_a9 .. :try_end_b0} :catch_6a9

    move-object v10, v0

    .line 3732
    .end local v31    # "version":Ljava/lang/String;
    .local v10, "version":Ljava/lang/String;
    if-eqz v10, :cond_bb

    .line 3734
    :try_start_b3
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v39
    :try_end_b7
    .catch Ljava/lang/NumberFormatException; {:try_start_b3 .. :try_end_b7} :catch_ba

    move-wide/from16 v31, v39

    .line 3736
    .end local v32    # "versionCode":J
    .local v31, "versionCode":J
    goto :goto_bd

    .line 3735
    .end local v31    # "versionCode":J
    .restart local v32    # "versionCode":J
    :catch_ba
    move-exception v0

    .line 3738
    :cond_bb
    move-wide/from16 v31, v32

    .line 3738
    .end local v32    # "versionCode":J
    .restart local v31    # "versionCode":J
    :goto_bd
    :try_start_bd
    const-string v0, "installer"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_c3
    .catch Ljava/lang/NumberFormatException; {:try_start_bd .. :try_end_c3} :catch_684

    move-object/from16 v33, v0

    .line 3739
    .end local v16    # "installerPackageName":Ljava/lang/String;
    .local v33, "installerPackageName":Ljava/lang/String;
    :try_start_c5
    const-string/jumbo v0, "isOrphaned"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_cc
    .catch Ljava/lang/NumberFormatException; {:try_start_c5 .. :try_end_cc} :catch_676

    move-object/from16 v57, v0

    .line 3740
    .end local v17    # "isOrphaned":Ljava/lang/String;
    .local v57, "isOrphaned":Ljava/lang/String;
    :try_start_ce
    const-string/jumbo v0, "volumeUuid"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_d5
    .catch Ljava/lang/NumberFormatException; {:try_start_ce .. :try_end_d5} :catch_668

    move-object/from16 v58, v0

    .line 3741
    .end local v18    # "volumeUuid":Ljava/lang/String;
    .local v58, "volumeUuid":Ljava/lang/String;
    :try_start_d7
    const-string v0, "categoryHint"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_dd
    .catch Ljava/lang/NumberFormatException; {:try_start_d7 .. :try_end_dd} :catch_65a

    move-object v7, v0

    .line 3742
    .end local v19    # "categoryHintString":Ljava/lang/String;
    .local v7, "categoryHintString":Ljava/lang/String;
    if-eqz v7, :cond_e9

    .line 3744
    :try_start_e0
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_e4
    .catch Ljava/lang/NumberFormatException; {:try_start_e0 .. :try_end_e4} :catch_e8

    .line 3746
    .end local v21    # "categoryHint":I
    .local v0, "categoryHint":I
    nop

    .line 3749
    move/from16 v21, v0

    goto :goto_e9

    .line 3745
    .end local v0    # "categoryHint":I
    .restart local v21    # "categoryHint":I
    :catch_e8
    move-exception v0

    .line 3749
    :cond_e9
    :goto_e9
    :try_start_e9
    const-string/jumbo v0, "publicFlags"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_f0
    .catch Ljava/lang/NumberFormatException; {:try_start_e9 .. :try_end_f0} :catch_63b

    move-object v12, v0

    .line 3750
    if-eqz v12, :cond_124

    .line 3752
    :try_start_f3
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_f7
    .catch Ljava/lang/NumberFormatException; {:try_start_f3 .. :try_end_f7} :catch_fa

    move/from16 v22, v0

    .line 3754
    goto :goto_fb

    .line 3753
    :catch_fa
    move-exception v0

    .line 3755
    :goto_fb
    :try_start_fb
    const-string/jumbo v0, "privateFlags"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_102
    .catch Ljava/lang/NumberFormatException; {:try_start_fb .. :try_end_102} :catch_113

    move-object v12, v0

    .line 3756
    if-eqz v12, :cond_10f

    .line 3758
    :try_start_105
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_109
    .catch Ljava/lang/NumberFormatException; {:try_start_105 .. :try_end_109} :catch_10d

    .line 3760
    .end local v23    # "pkgPrivateFlags":I
    .local v0, "pkgPrivateFlags":I
    nop

    .line 3799
    move/from16 v23, v0

    goto :goto_10f

    .line 3759
    .end local v0    # "pkgPrivateFlags":I
    .restart local v23    # "pkgPrivateFlags":I
    :catch_10d
    move-exception v0

    .line 3760
    nop

    .line 3799
    .end local v12    # "systemStr":Ljava/lang/String;
    .local v19, "systemStr":Ljava/lang/String;
    :cond_10f
    :goto_10f
    move-object/from16 v19, v12

    goto/16 :goto_18b

    .line 3891
    .end local v15    # "parentPackageName":Ljava/lang/String;
    .end local v19    # "systemStr":Ljava/lang/String;
    .restart local v12    # "systemStr":Ljava/lang/String;
    :catch_113
    move-exception v0

    move-object/from16 v19, v12

    move-object v11, v14

    move-wide/from16 v60, v24

    move-wide/from16 v62, v26

    move-wide/from16 v64, v28

    move-object/from16 v12, v37

    const/4 v13, 0x5

    move-object/from16 v25, v2

    goto/16 :goto_85b

    .line 3764
    .restart local v15    # "parentPackageName":Ljava/lang/String;
    :cond_124
    :try_start_124
    const-string v0, "flags"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_12a
    .catch Ljava/lang/NumberFormatException; {:try_start_124 .. :try_end_12a} :catch_63b

    move-object v12, v0

    .line 3765
    if-eqz v12, :cond_16d

    .line 3767
    :try_start_12d
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_131
    .catch Ljava/lang/NumberFormatException; {:try_start_12d .. :try_end_131} :catch_134

    move/from16 v22, v0

    .line 3769
    goto :goto_135

    .line 3768
    :catch_134
    move-exception v0

    .line 3770
    :goto_135
    :try_start_135
    sget v0, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_HIDDEN:I

    and-int v0, v22, v0

    if-eqz v0, :cond_13d

    .line 3771
    or-int/lit8 v23, v23, 0x1

    .line 3773
    :cond_13d
    sget v0, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_CANT_SAVE_STATE:I

    and-int v0, v22, v0

    if-eqz v0, :cond_147

    .line 3774
    or-int/lit8 v0, v23, 0x2

    .line 3776
    .end local v23    # "pkgPrivateFlags":I
    .restart local v0    # "pkgPrivateFlags":I
    move/from16 v23, v0

    .line 3776
    .end local v0    # "pkgPrivateFlags":I
    .restart local v23    # "pkgPrivateFlags":I
    :cond_147
    sget v0, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_FORWARD_LOCK:I

    and-int v0, v22, v0

    if-eqz v0, :cond_151

    .line 3777
    or-int/lit8 v0, v23, 0x4

    .line 3779
    .end local v23    # "pkgPrivateFlags":I
    .restart local v0    # "pkgPrivateFlags":I
    move/from16 v23, v0

    .line 3779
    .end local v0    # "pkgPrivateFlags":I
    .restart local v23    # "pkgPrivateFlags":I
    :cond_151
    sget v0, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_PRIVILEGED:I

    and-int v0, v22, v0

    if-eqz v0, :cond_15b

    .line 3780
    or-int/lit8 v0, v23, 0x8

    .line 3782
    .end local v23    # "pkgPrivateFlags":I
    .restart local v0    # "pkgPrivateFlags":I
    move/from16 v23, v0

    .line 3782
    .end local v0    # "pkgPrivateFlags":I
    .restart local v23    # "pkgPrivateFlags":I
    :cond_15b
    sget v0, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_HIDDEN:I

    sget v16, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_CANT_SAVE_STATE:I

    or-int v0, v0, v16

    sget v16, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_FORWARD_LOCK:I

    or-int v0, v0, v16

    sget v16, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_PRIVILEGED:I
    :try_end_167
    .catch Ljava/lang/NumberFormatException; {:try_start_135 .. :try_end_167} :catch_113

    or-int v0, v0, v16

    not-int v0, v0

    and-int v0, v22, v0

    goto :goto_188

    .line 3788
    :cond_16d
    :try_start_16d
    const-string/jumbo v0, "system"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_174
    .catch Ljava/lang/NumberFormatException; {:try_start_16d .. :try_end_174} :catch_63b

    move-object v12, v0

    .line 3789
    if-eqz v12, :cond_186

    .line 3790
    :try_start_177
    const-string/jumbo v0, "true"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_17e
    .catch Ljava/lang/NumberFormatException; {:try_start_177 .. :try_end_17e} :catch_113

    if-eqz v0, :cond_182

    .line 3791
    const/4 v0, 0x1

    goto :goto_183

    :cond_182
    const/4 v0, 0x0

    :goto_183
    or-int v0, v22, v0

    goto :goto_188

    .line 3795
    :cond_186
    or-int/lit8 v0, v22, 0x1

    .line 3799
    .end local v12    # "systemStr":Ljava/lang/String;
    .end local v22    # "pkgFlags":I
    .local v0, "pkgFlags":I
    .restart local v19    # "systemStr":Ljava/lang/String;
    :goto_188
    move/from16 v22, v0

    goto :goto_10f

    .line 3799
    .end local v0    # "pkgFlags":I
    .restart local v22    # "pkgFlags":I
    :goto_18b
    :try_start_18b
    const-string v0, "ft"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_191
    .catch Ljava/lang/NumberFormatException; {:try_start_18b .. :try_end_191} :catch_62c

    move-object v12, v0

    .line 3800
    .local v12, "timeStampStr":Ljava/lang/String;
    const/16 v11, 0x10

    if-eqz v12, :cond_1a2

    .line 3802
    :try_start_196
    invoke-static {v12, v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v16
    :try_end_19a
    .catch Ljava/lang/NumberFormatException; {:try_start_196 .. :try_end_19a} :catch_1a0

    move-wide/from16 v24, v16

    .line 3804
    .end local v24    # "timeStamp":J
    .local v60, "timeStamp":J
    :goto_19c
    nop

    .line 3814
    :cond_19d
    :goto_19d
    move-wide/from16 v60, v24

    goto :goto_1b6

    .line 3803
    .end local v60    # "timeStamp":J
    .restart local v24    # "timeStamp":J
    :catch_1a0
    move-exception v0

    goto :goto_19c

    .line 3806
    :cond_1a2
    :try_start_1a2
    const-string/jumbo v0, "ts"

    const/4 v11, 0x0

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1aa
    .catch Ljava/lang/NumberFormatException; {:try_start_1a2 .. :try_end_1aa} :catch_62c

    move-object v12, v0

    .line 3807
    if-eqz v12, :cond_19d

    .line 3809
    :try_start_1ad
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16
    :try_end_1b1
    .catch Ljava/lang/NumberFormatException; {:try_start_1ad .. :try_end_1b1} :catch_1b4

    move-wide/from16 v24, v16

    .line 3811
    goto :goto_19d

    .line 3810
    :catch_1b4
    move-exception v0

    goto :goto_19d

    .line 3814
    .end local v24    # "timeStamp":J
    .restart local v60    # "timeStamp":J
    :goto_1b6
    :try_start_1b6
    const-string/jumbo v0, "it"

    const/4 v11, 0x0

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1be
    .catch Ljava/lang/NumberFormatException; {:try_start_1b6 .. :try_end_1be} :catch_60c

    move-object v11, v0

    .line 3815
    .end local v12    # "timeStampStr":Ljava/lang/String;
    .local v11, "timeStampStr":Ljava/lang/String;
    if-eqz v11, :cond_1cb

    .line 3817
    const/16 v12, 0x10

    :try_start_1c3
    invoke-static {v11, v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v16
    :try_end_1c7
    .catch Ljava/lang/NumberFormatException; {:try_start_1c3 .. :try_end_1c7} :catch_1ca

    move-wide/from16 v26, v16

    .line 3819
    goto :goto_1cb

    .line 3818
    :catch_1ca
    move-exception v0

    .line 3821
    .end local v26    # "firstInstallTime":J
    .local v62, "firstInstallTime":J
    :cond_1cb
    :goto_1cb
    move-wide/from16 v62, v26

    :try_start_1cd
    const-string/jumbo v0, "ut"

    const/4 v12, 0x0

    invoke-interface {v13, v12, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1d5
    .catch Ljava/lang/NumberFormatException; {:try_start_1cd .. :try_end_1d5} :catch_5ea

    move-object v11, v0

    .line 3822
    if-eqz v11, :cond_1e2

    .line 3824
    const/16 v12, 0x10

    :try_start_1da
    invoke-static {v11, v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v16
    :try_end_1de
    .catch Ljava/lang/NumberFormatException; {:try_start_1da .. :try_end_1de} :catch_1e1

    move-wide/from16 v28, v16

    .line 3826
    goto :goto_1e2

    .line 3825
    :catch_1e1
    move-exception v0

    .line 3831
    .end local v28    # "lastUpdateTime":J
    .local v64, "lastUpdateTime":J
    :cond_1e2
    :goto_1e2
    move-wide/from16 v64, v28

    if-eqz v3, :cond_1f4

    :try_start_1e6
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1f5

    .line 3891
    .end local v11    # "timeStampStr":Ljava/lang/String;
    .end local v15    # "parentPackageName":Ljava/lang/String;
    :catch_1eb
    move-exception v0

    move-object/from16 v25, v2

    move-object v11, v14

    move-object/from16 v12, v37

    .line 3891
    .end local v2    # "realName":Ljava/lang/String;
    .end local v37    # "resourcePathStr":Ljava/lang/String;
    .local v12, "resourcePathStr":Ljava/lang/String;
    .local v25, "realName":Ljava/lang/String;
    :goto_1f1
    const/4 v13, 0x5

    goto/16 :goto_85b

    .line 3831
    .end local v12    # "resourcePathStr":Ljava/lang/String;
    .end local v25    # "realName":Ljava/lang/String;
    .restart local v2    # "realName":Ljava/lang/String;
    .restart local v11    # "timeStampStr":Ljava/lang/String;
    .restart local v15    # "parentPackageName":Ljava/lang/String;
    .restart local v37    # "resourcePathStr":Ljava/lang/String;
    :cond_1f4
    const/4 v0, 0x0

    .line 3832
    .local v0, "userId":I
    :goto_1f5
    if-eqz v4, :cond_1fc

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12
    :try_end_1fb
    .catch Ljava/lang/NumberFormatException; {:try_start_1e6 .. :try_end_1fb} :catch_1eb

    goto :goto_1fd

    :cond_1fc
    const/4 v12, 0x0

    :goto_1fd
    move/from16 v24, v12

    .line 3833
    .local v24, "sharedUserId":I
    if-nez v37, :cond_203

    .line 3834
    move-object v12, v5

    .line 3834
    .end local v37    # "resourcePathStr":Ljava/lang/String;
    .restart local v12    # "resourcePathStr":Ljava/lang/String;
    goto :goto_205

    .line 3836
    .end local v12    # "resourcePathStr":Ljava/lang/String;
    .restart local v37    # "resourcePathStr":Ljava/lang/String;
    :cond_203
    move-object/from16 v12, v37

    .line 3836
    .end local v37    # "resourcePathStr":Ljava/lang/String;
    .restart local v12    # "resourcePathStr":Ljava/lang/String;
    :goto_205
    if-eqz v2, :cond_213

    .line 3837
    :try_start_207
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v16
    :try_end_20b
    .catch Ljava/lang/NumberFormatException; {:try_start_207 .. :try_end_20b} :catch_20e

    move-object/from16 v2, v16

    goto :goto_213

    .line 3891
    .end local v0    # "userId":I
    .end local v11    # "timeStampStr":Ljava/lang/String;
    .end local v15    # "parentPackageName":Ljava/lang/String;
    .end local v24    # "sharedUserId":I
    :catch_20e
    move-exception v0

    move-object/from16 v25, v2

    move-object v11, v14

    goto :goto_1f1

    .line 3839
    .end local v2    # "realName":Ljava/lang/String;
    .restart local v0    # "userId":I
    .restart local v11    # "timeStampStr":Ljava/lang/String;
    .restart local v15    # "parentPackageName":Ljava/lang/String;
    .restart local v24    # "sharedUserId":I
    .restart local v25    # "realName":Ljava/lang/String;
    :cond_213
    :goto_213
    move-object/from16 v25, v2

    if-nez v1, :cond_255

    .line 3840
    :try_start_217
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_21c
    .catch Ljava/lang/NumberFormatException; {:try_start_217 .. :try_end_21c} :catch_24e

    move-object/from16 v66, v3

    :try_start_21e
    const-string v3, "Error in package manager settings: <package> has no name at "

    .line 3840
    .end local v3    # "idStr":Ljava/lang/String;
    .local v66, "idStr":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3842
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_22e
    .catch Ljava/lang/NumberFormatException; {:try_start_21e .. :try_end_22e} :catch_288

    .line 3840
    const/4 v3, 0x5

    :try_start_22f
    invoke-static {v3, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_232
    .catch Ljava/lang/NumberFormatException; {:try_start_22f .. :try_end_232} :catch_247

    .line 3895
    move-object/from16 v76, v4

    move-object/from16 v75, v5

    move-object/from16 v35, v7

    move-object/from16 v59, v10

    move-object v7, v12

    move-object v5, v14

    move-wide/from16 v3, v60

    move-wide/from16 v10, v62

    move-wide/from16 v12, v64

    move-object/from16 v2, v66

    move-object v14, v1

    goto/16 :goto_456

    .line 3891
    .end local v0    # "userId":I
    .end local v11    # "timeStampStr":Ljava/lang/String;
    .end local v15    # "parentPackageName":Ljava/lang/String;
    .end local v24    # "sharedUserId":I
    :catch_247
    move-exception v0

    move v13, v3

    move-object v11, v14

    move-object/from16 v3, v66

    goto/16 :goto_85b

    .line 3891
    .end local v66    # "idStr":Ljava/lang/String;
    .restart local v3    # "idStr":Ljava/lang/String;
    :catch_24e
    move-exception v0

    move-object/from16 v66, v3

    move-object v11, v14

    const/4 v13, 0x5

    .line 3891
    .end local v3    # "idStr":Ljava/lang/String;
    .restart local v66    # "idStr":Ljava/lang/String;
    goto/16 :goto_85b

    .line 3843
    .end local v66    # "idStr":Ljava/lang/String;
    .restart local v0    # "userId":I
    .restart local v3    # "idStr":Ljava/lang/String;
    .restart local v11    # "timeStampStr":Ljava/lang/String;
    .restart local v15    # "parentPackageName":Ljava/lang/String;
    .restart local v24    # "sharedUserId":I
    :cond_255
    move-object/from16 v66, v3

    .line 3843
    .end local v3    # "idStr":Ljava/lang/String;
    .restart local v66    # "idStr":Ljava/lang/String;
    if-nez v5, :cond_28e

    .line 3844
    :try_start_259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in package manager settings: <package> has no codePath at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3846
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_26e
    .catch Ljava/lang/NumberFormatException; {:try_start_259 .. :try_end_26e} :catch_288

    .line 3844
    const/4 v3, 0x5

    :try_start_26f
    invoke-static {v3, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_272
    .catch Ljava/lang/NumberFormatException; {:try_start_26f .. :try_end_272} :catch_247

    .line 3895
    move-object/from16 v76, v4

    move-object/from16 v75, v5

    move-object/from16 v35, v7

    move-object/from16 v59, v10

    move-object v7, v12

    move-object v5, v14

    move-wide/from16 v10, v62

    move-wide/from16 v12, v64

    move-object/from16 v2, v66

    move-object v14, v1

    move v1, v3

    move-wide/from16 v3, v60

    goto/16 :goto_562

    .line 3891
    .end local v0    # "userId":I
    .end local v11    # "timeStampStr":Ljava/lang/String;
    .end local v15    # "parentPackageName":Ljava/lang/String;
    .end local v24    # "sharedUserId":I
    :catch_288
    move-exception v0

    move-object v11, v14

    move-object/from16 v3, v66

    goto/16 :goto_1f1

    .line 3847
    .restart local v0    # "userId":I
    .restart local v11    # "timeStampStr":Ljava/lang/String;
    .restart local v15    # "parentPackageName":Ljava/lang/String;
    .restart local v24    # "sharedUserId":I
    :cond_28e
    const/4 v3, 0x5

    if-lez v0, :cond_3e9

    .line 3848
    :try_start_291
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2
    :try_end_295
    .catch Ljava/lang/NumberFormatException; {:try_start_291 .. :try_end_295} :catch_3c8

    move-object/from16 v67, v4

    :try_start_297
    new-instance v4, Ljava/io/File;

    .line 3848
    .end local v4    # "sharedIdStr":Ljava/lang/String;
    .local v67, "sharedIdStr":Ljava/lang/String;
    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_29c
    .catch Ljava/lang/NumberFormatException; {:try_start_297 .. :try_end_29c} :catch_3a7

    move-object/from16 v68, v5

    :try_start_29e
    new-instance v5, Ljava/io/File;

    .line 3848
    .end local v5    # "codePathStr":Ljava/lang/String;
    .local v68, "codePathStr":Ljava/lang/String;
    invoke-direct {v5, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2a3
    .catch Ljava/lang/NumberFormatException; {:try_start_29e .. :try_end_2a3} :catch_384

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v69, v1

    move-object v1, v14

    .line 3848
    .end local v1    # "name":Ljava/lang/String;
    .local v69, "name":Ljava/lang/String;
    move/from16 v26, v3

    move-object/from16 v70, v66

    move-object/from16 v3, v25

    .line 3848
    .end local v66    # "idStr":Ljava/lang/String;
    .local v70, "idStr":Ljava/lang/String;
    move-object/from16 v71, v67

    .line 3848
    .end local v67    # "sharedIdStr":Ljava/lang/String;
    .local v71, "sharedIdStr":Ljava/lang/String;
    move-object/from16 v72, v68

    .line 3848
    .end local v68    # "codePathStr":Ljava/lang/String;
    .local v72, "codePathStr":Ljava/lang/String;
    move-object/from16 v35, v7

    move-object/from16 v7, v34

    .line 3848
    .end local v7    # "categoryHintString":Ljava/lang/String;
    .local v35, "categoryHintString":Ljava/lang/String;
    move-object/from16 v59, v10

    move v10, v0

    .line 3848
    .end local v10    # "version":Ljava/lang/String;
    .local v59, "version":Ljava/lang/String;
    move-object/from16 v26, v11

    move-object/from16 v73, v12

    move-wide/from16 v11, v31

    .line 3848
    .end local v11    # "timeStampStr":Ljava/lang/String;
    .end local v12    # "resourcePathStr":Ljava/lang/String;
    .local v26, "timeStampStr":Ljava/lang/String;
    .local v73, "resourcePathStr":Ljava/lang/String;
    move/from16 v13, v22

    move/from16 v14, v23

    :try_start_2c7
    invoke-virtual/range {v1 .. v18}, Lcom/android/server/pm/Settings;->addPackageLPw(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJIILjava/lang/String;Ljava/util/List;[Ljava/lang/String;[J)Lcom/android/server/pm/PackageSetting;

    move-result-object v1
    :try_end_2cb
    .catch Ljava/lang/NumberFormatException; {:try_start_2c7 .. :try_end_2cb} :catch_36a

    .line 3856
    .end local v30    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    .local v1, "packageSetting":Lcom/android/server/pm/PackageSetting;
    if-nez v1, :cond_30a

    .line 3857
    const/4 v2, 0x6

    :try_start_2ce
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure adding uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " while parsing settings at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3859
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3857
    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_2ee
    .catch Ljava/lang/NumberFormatException; {:try_start_2ce .. :try_end_2ee} :catch_2f5

    .line 3895
    move-wide/from16 v3, v60

    move-wide/from16 v10, v62

    move-wide/from16 v12, v64

    goto :goto_317

    .line 3891
    .end local v0    # "userId":I
    .end local v15    # "parentPackageName":Ljava/lang/String;
    .end local v24    # "sharedUserId":I
    .end local v26    # "timeStampStr":Ljava/lang/String;
    :catch_2f5
    move-exception v0

    move-object/from16 v30, v1

    .line 3891
    .end local v35    # "categoryHintString":Ljava/lang/String;
    .end local v59    # "version":Ljava/lang/String;
    .end local v69    # "name":Ljava/lang/String;
    .end local v70    # "idStr":Ljava/lang/String;
    .end local v71    # "sharedIdStr":Ljava/lang/String;
    .end local v72    # "codePathStr":Ljava/lang/String;
    .end local v73    # "resourcePathStr":Ljava/lang/String;
    .local v1, "name":Ljava/lang/String;
    .restart local v3    # "idStr":Ljava/lang/String;
    .restart local v4    # "sharedIdStr":Ljava/lang/String;
    .restart local v5    # "codePathStr":Ljava/lang/String;
    .restart local v7    # "categoryHintString":Ljava/lang/String;
    .restart local v10    # "version":Ljava/lang/String;
    .restart local v12    # "resourcePathStr":Ljava/lang/String;
    .restart local v30    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    :goto_2f8
    move-object/from16 v7, v35

    move-object/from16 v10, v59

    move-object/from16 v1, v69

    move-object/from16 v3, v70

    move-object/from16 v4, v71

    move-object/from16 v5, v72

    move-object/from16 v12, v73

    move-object/from16 v11, p0

    goto/16 :goto_1f1

    .line 3861
    .end local v3    # "idStr":Ljava/lang/String;
    .end local v4    # "sharedIdStr":Ljava/lang/String;
    .end local v5    # "codePathStr":Ljava/lang/String;
    .end local v7    # "categoryHintString":Ljava/lang/String;
    .end local v10    # "version":Ljava/lang/String;
    .end local v12    # "resourcePathStr":Ljava/lang/String;
    .end local v30    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    .restart local v0    # "userId":I
    .local v1, "packageSetting":Lcom/android/server/pm/PackageSetting;
    .restart local v15    # "parentPackageName":Ljava/lang/String;
    .restart local v24    # "sharedUserId":I
    .restart local v26    # "timeStampStr":Ljava/lang/String;
    .restart local v35    # "categoryHintString":Ljava/lang/String;
    .restart local v59    # "version":Ljava/lang/String;
    .restart local v69    # "name":Ljava/lang/String;
    .restart local v70    # "idStr":Ljava/lang/String;
    .restart local v71    # "sharedIdStr":Ljava/lang/String;
    .restart local v72    # "codePathStr":Ljava/lang/String;
    .restart local v73    # "resourcePathStr":Ljava/lang/String;
    :cond_30a
    move-wide/from16 v3, v60

    :try_start_30c
    invoke-virtual {v1, v3, v4}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V
    :try_end_30f
    .catch Ljava/lang/NumberFormatException; {:try_start_30c .. :try_end_30f} :catch_34e

    .line 3862
    .end local v60    # "timeStamp":J
    .local v3, "timeStamp":J
    move-wide/from16 v10, v62

    :try_start_311
    iput-wide v10, v1, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J
    :try_end_313
    .catch Ljava/lang/NumberFormatException; {:try_start_311 .. :try_end_313} :catch_332

    .line 3863
    .end local v62    # "firstInstallTime":J
    .local v10, "firstInstallTime":J
    move-wide/from16 v12, v64

    :try_start_315
    iput-wide v12, v1, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J
    :try_end_317
    .catch Ljava/lang/NumberFormatException; {:try_start_315 .. :try_end_317} :catch_328

    .line 3895
    .end local v0    # "userId":I
    .end local v24    # "sharedUserId":I
    .end local v26    # "timeStampStr":Ljava/lang/String;
    .end local v64    # "lastUpdateTime":J
    .local v12, "lastUpdateTime":J
    :goto_317
    move-object/from16 v30, v1

    move-object/from16 v14, v69

    move-object/from16 v2, v70

    move-object/from16 v76, v71

    move-object/from16 v75, v72

    move-object/from16 v7, v73

    const/4 v1, 0x5

    move-object/from16 v5, p0

    goto/16 :goto_562

    .line 3891
    .end local v15    # "parentPackageName":Ljava/lang/String;
    :catch_328
    move-exception v0

    move-object/from16 v30, v1

    move-wide/from16 v60, v3

    move-wide/from16 v62, v10

    move-wide/from16 v64, v12

    goto :goto_2f8

    .line 3891
    .end local v12    # "lastUpdateTime":J
    .restart local v64    # "lastUpdateTime":J
    :catch_332
    move-exception v0

    move-wide/from16 v12, v64

    move-object/from16 v30, v1

    move-wide/from16 v60, v3

    move-wide/from16 v62, v10

    move-object/from16 v7, v35

    move-object/from16 v10, v59

    move-object/from16 v1, v69

    move-object/from16 v3, v70

    move-object/from16 v4, v71

    move-object/from16 v5, v72

    move-object/from16 v12, v73

    move-object/from16 v11, p0

    const/4 v13, 0x5

    .end local v64    # "lastUpdateTime":J
    .restart local v12    # "lastUpdateTime":J
    goto/16 :goto_85b

    .line 3891
    .end local v10    # "firstInstallTime":J
    .end local v12    # "lastUpdateTime":J
    .restart local v62    # "firstInstallTime":J
    .restart local v64    # "lastUpdateTime":J
    :catch_34e
    move-exception v0

    move-wide/from16 v10, v62

    move-wide/from16 v12, v64

    move-object/from16 v30, v1

    move-wide/from16 v60, v3

    move-object/from16 v7, v35

    move-object/from16 v10, v59

    move-object/from16 v1, v69

    move-object/from16 v3, v70

    move-object/from16 v4, v71

    move-object/from16 v5, v72

    move-object/from16 v12, v73

    move-object/from16 v11, p0

    const/4 v13, 0x5

    .end local v62    # "firstInstallTime":J
    .end local v64    # "lastUpdateTime":J
    .restart local v10    # "firstInstallTime":J
    .restart local v12    # "lastUpdateTime":J
    goto/16 :goto_85b

    .line 3891
    .end local v1    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    .end local v3    # "timeStamp":J
    .end local v10    # "firstInstallTime":J
    .end local v12    # "lastUpdateTime":J
    .restart local v30    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    .restart local v60    # "timeStamp":J
    .restart local v62    # "firstInstallTime":J
    .restart local v64    # "lastUpdateTime":J
    :catch_36a
    move-exception v0

    move-wide/from16 v3, v60

    move-wide/from16 v10, v62

    move-wide/from16 v12, v64

    move-object/from16 v7, v35

    move-object/from16 v10, v59

    move-object/from16 v1, v69

    move-object/from16 v3, v70

    move-object/from16 v4, v71

    move-object/from16 v5, v72

    move-object/from16 v12, v73

    move-object/from16 v11, p0

    const/4 v13, 0x5

    .end local v60    # "timeStamp":J
    .end local v62    # "firstInstallTime":J
    .end local v64    # "lastUpdateTime":J
    .restart local v3    # "timeStamp":J
    .restart local v10    # "firstInstallTime":J
    .restart local v12    # "lastUpdateTime":J
    goto/16 :goto_85b

    .line 3891
    .end local v3    # "timeStamp":J
    .end local v35    # "categoryHintString":Ljava/lang/String;
    .end local v59    # "version":Ljava/lang/String;
    .end local v69    # "name":Ljava/lang/String;
    .end local v70    # "idStr":Ljava/lang/String;
    .end local v71    # "sharedIdStr":Ljava/lang/String;
    .end local v72    # "codePathStr":Ljava/lang/String;
    .end local v73    # "resourcePathStr":Ljava/lang/String;
    .local v1, "name":Ljava/lang/String;
    .restart local v7    # "categoryHintString":Ljava/lang/String;
    .local v10, "version":Ljava/lang/String;
    .local v12, "resourcePathStr":Ljava/lang/String;
    .restart local v60    # "timeStamp":J
    .restart local v62    # "firstInstallTime":J
    .restart local v64    # "lastUpdateTime":J
    .restart local v66    # "idStr":Ljava/lang/String;
    .restart local v67    # "sharedIdStr":Ljava/lang/String;
    .restart local v68    # "codePathStr":Ljava/lang/String;
    :catch_384
    move-exception v0

    move-object/from16 v69, v1

    move-object/from16 v35, v7

    move-object/from16 v59, v10

    move-object/from16 v73, v12

    move-wide/from16 v3, v60

    move-wide/from16 v10, v62

    move-wide/from16 v12, v64

    move-object/from16 v70, v66

    move-object/from16 v71, v67

    move-object/from16 v72, v68

    move-object v11, v14

    move-object/from16 v10, v59

    move-object/from16 v3, v70

    move-object/from16 v4, v71

    move-object/from16 v5, v72

    move-object/from16 v12, v73

    const/4 v13, 0x5

    .end local v1    # "name":Ljava/lang/String;
    .end local v7    # "categoryHintString":Ljava/lang/String;
    .end local v60    # "timeStamp":J
    .end local v62    # "firstInstallTime":J
    .end local v64    # "lastUpdateTime":J
    .end local v66    # "idStr":Ljava/lang/String;
    .end local v67    # "sharedIdStr":Ljava/lang/String;
    .end local v68    # "codePathStr":Ljava/lang/String;
    .restart local v3    # "timeStamp":J
    .local v10, "firstInstallTime":J
    .local v12, "lastUpdateTime":J
    .restart local v35    # "categoryHintString":Ljava/lang/String;
    .restart local v59    # "version":Ljava/lang/String;
    .restart local v69    # "name":Ljava/lang/String;
    .restart local v70    # "idStr":Ljava/lang/String;
    .restart local v71    # "sharedIdStr":Ljava/lang/String;
    .restart local v72    # "codePathStr":Ljava/lang/String;
    .restart local v73    # "resourcePathStr":Ljava/lang/String;
    goto/16 :goto_85b

    .line 3891
    .end local v3    # "timeStamp":J
    .end local v35    # "categoryHintString":Ljava/lang/String;
    .end local v59    # "version":Ljava/lang/String;
    .end local v69    # "name":Ljava/lang/String;
    .end local v70    # "idStr":Ljava/lang/String;
    .end local v71    # "sharedIdStr":Ljava/lang/String;
    .end local v72    # "codePathStr":Ljava/lang/String;
    .end local v73    # "resourcePathStr":Ljava/lang/String;
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v5    # "codePathStr":Ljava/lang/String;
    .restart local v7    # "categoryHintString":Ljava/lang/String;
    .local v10, "version":Ljava/lang/String;
    .local v12, "resourcePathStr":Ljava/lang/String;
    .restart local v60    # "timeStamp":J
    .restart local v62    # "firstInstallTime":J
    .restart local v64    # "lastUpdateTime":J
    .restart local v66    # "idStr":Ljava/lang/String;
    .restart local v67    # "sharedIdStr":Ljava/lang/String;
    :catch_3a7
    move-exception v0

    move-object/from16 v69, v1

    move-object/from16 v72, v5

    move-object/from16 v35, v7

    move-object/from16 v59, v10

    move-object/from16 v73, v12

    move-wide/from16 v3, v60

    move-wide/from16 v10, v62

    move-wide/from16 v12, v64

    move-object/from16 v70, v66

    move-object/from16 v71, v67

    move-object v11, v14

    move-object/from16 v10, v59

    move-object/from16 v3, v70

    move-object/from16 v4, v71

    move-object/from16 v12, v73

    const/4 v13, 0x5

    .end local v1    # "name":Ljava/lang/String;
    .end local v5    # "codePathStr":Ljava/lang/String;
    .end local v7    # "categoryHintString":Ljava/lang/String;
    .end local v60    # "timeStamp":J
    .end local v62    # "firstInstallTime":J
    .end local v64    # "lastUpdateTime":J
    .end local v66    # "idStr":Ljava/lang/String;
    .end local v67    # "sharedIdStr":Ljava/lang/String;
    .restart local v3    # "timeStamp":J
    .local v10, "firstInstallTime":J
    .local v12, "lastUpdateTime":J
    .restart local v35    # "categoryHintString":Ljava/lang/String;
    .restart local v59    # "version":Ljava/lang/String;
    .restart local v69    # "name":Ljava/lang/String;
    .restart local v70    # "idStr":Ljava/lang/String;
    .restart local v71    # "sharedIdStr":Ljava/lang/String;
    .restart local v72    # "codePathStr":Ljava/lang/String;
    .restart local v73    # "resourcePathStr":Ljava/lang/String;
    goto/16 :goto_85b

    .line 3891
    .end local v3    # "timeStamp":J
    .end local v35    # "categoryHintString":Ljava/lang/String;
    .end local v59    # "version":Ljava/lang/String;
    .end local v69    # "name":Ljava/lang/String;
    .end local v70    # "idStr":Ljava/lang/String;
    .end local v71    # "sharedIdStr":Ljava/lang/String;
    .end local v72    # "codePathStr":Ljava/lang/String;
    .end local v73    # "resourcePathStr":Ljava/lang/String;
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v4    # "sharedIdStr":Ljava/lang/String;
    .restart local v5    # "codePathStr":Ljava/lang/String;
    .restart local v7    # "categoryHintString":Ljava/lang/String;
    .local v10, "version":Ljava/lang/String;
    .local v12, "resourcePathStr":Ljava/lang/String;
    .restart local v60    # "timeStamp":J
    .restart local v62    # "firstInstallTime":J
    .restart local v64    # "lastUpdateTime":J
    .restart local v66    # "idStr":Ljava/lang/String;
    :catch_3c8
    move-exception v0

    move-object/from16 v69, v1

    move-object/from16 v71, v4

    move-object/from16 v72, v5

    move-object/from16 v35, v7

    move-object/from16 v59, v10

    move-object/from16 v73, v12

    move-wide/from16 v3, v60

    move-wide/from16 v10, v62

    move-wide/from16 v12, v64

    move-object/from16 v70, v66

    move-object v11, v14

    move-object/from16 v10, v59

    move-object/from16 v3, v70

    move-object/from16 v4, v71

    move-object/from16 v12, v73

    const/4 v13, 0x5

    .end local v1    # "name":Ljava/lang/String;
    .end local v4    # "sharedIdStr":Ljava/lang/String;
    .end local v5    # "codePathStr":Ljava/lang/String;
    .end local v7    # "categoryHintString":Ljava/lang/String;
    .end local v60    # "timeStamp":J
    .end local v62    # "firstInstallTime":J
    .end local v64    # "lastUpdateTime":J
    .end local v66    # "idStr":Ljava/lang/String;
    .restart local v3    # "timeStamp":J
    .local v10, "firstInstallTime":J
    .local v12, "lastUpdateTime":J
    .restart local v35    # "categoryHintString":Ljava/lang/String;
    .restart local v59    # "version":Ljava/lang/String;
    .restart local v69    # "name":Ljava/lang/String;
    .restart local v70    # "idStr":Ljava/lang/String;
    .restart local v71    # "sharedIdStr":Ljava/lang/String;
    .restart local v72    # "codePathStr":Ljava/lang/String;
    .restart local v73    # "resourcePathStr":Ljava/lang/String;
    goto/16 :goto_85b

    .line 3865
    .end local v3    # "timeStamp":J
    .end local v35    # "categoryHintString":Ljava/lang/String;
    .end local v59    # "version":Ljava/lang/String;
    .end local v69    # "name":Ljava/lang/String;
    .end local v70    # "idStr":Ljava/lang/String;
    .end local v71    # "sharedIdStr":Ljava/lang/String;
    .end local v72    # "codePathStr":Ljava/lang/String;
    .end local v73    # "resourcePathStr":Ljava/lang/String;
    .restart local v0    # "userId":I
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v4    # "sharedIdStr":Ljava/lang/String;
    .restart local v5    # "codePathStr":Ljava/lang/String;
    .restart local v7    # "categoryHintString":Ljava/lang/String;
    .local v10, "version":Ljava/lang/String;
    .restart local v11    # "timeStampStr":Ljava/lang/String;
    .local v12, "resourcePathStr":Ljava/lang/String;
    .restart local v15    # "parentPackageName":Ljava/lang/String;
    .restart local v24    # "sharedUserId":I
    .restart local v60    # "timeStamp":J
    .restart local v62    # "firstInstallTime":J
    .restart local v64    # "lastUpdateTime":J
    .restart local v66    # "idStr":Ljava/lang/String;
    :cond_3e9
    move-object/from16 v69, v1

    move-object/from16 v71, v4

    move-object/from16 v72, v5

    move-object/from16 v35, v7

    move-object/from16 v59, v10

    move-object/from16 v26, v11

    move-object/from16 v73, v12

    move-wide/from16 v3, v60

    move-wide/from16 v10, v62

    move-wide/from16 v12, v64

    move-object/from16 v70, v66

    .end local v1    # "name":Ljava/lang/String;
    .end local v4    # "sharedIdStr":Ljava/lang/String;
    .end local v5    # "codePathStr":Ljava/lang/String;
    .end local v7    # "categoryHintString":Ljava/lang/String;
    .end local v11    # "timeStampStr":Ljava/lang/String;
    .end local v60    # "timeStamp":J
    .end local v62    # "firstInstallTime":J
    .end local v64    # "lastUpdateTime":J
    .end local v66    # "idStr":Ljava/lang/String;
    .restart local v3    # "timeStamp":J
    .local v10, "firstInstallTime":J
    .local v12, "lastUpdateTime":J
    .restart local v26    # "timeStampStr":Ljava/lang/String;
    .restart local v35    # "categoryHintString":Ljava/lang/String;
    .restart local v59    # "version":Ljava/lang/String;
    .restart local v69    # "name":Ljava/lang/String;
    .restart local v70    # "idStr":Ljava/lang/String;
    .restart local v71    # "sharedIdStr":Ljava/lang/String;
    .restart local v72    # "codePathStr":Ljava/lang/String;
    .restart local v73    # "resourcePathStr":Ljava/lang/String;
    move-object/from16 v1, v71

    if-eqz v1, :cond_52a

    .line 3866
    .end local v71    # "sharedIdStr":Ljava/lang/String;
    .local v1, "sharedIdStr":Ljava/lang/String;
    if-lez v24, :cond_4cc

    .line 3867
    :try_start_405
    new-instance v2, Lcom/android/server/pm/PackageSetting;
    :try_end_407
    .catch Ljava/lang/NumberFormatException; {:try_start_405 .. :try_end_407} :catch_4af

    move-object/from16 v14, v69

    :try_start_409
    invoke-virtual {v14}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v40

    .line 3867
    .end local v69    # "name":Ljava/lang/String;
    .local v14, "name":Ljava/lang/String;
    new-instance v5, Ljava/io/File;
    :try_end_40f
    .catch Ljava/lang/NumberFormatException; {:try_start_409 .. :try_end_40f} :catch_494

    move-object/from16 v7, v72

    :try_start_411
    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3867
    .end local v72    # "codePathStr":Ljava/lang/String;
    .local v7, "codePathStr":Ljava/lang/String;
    move/from16 v74, v0

    new-instance v0, Ljava/io/File;
    :try_end_418
    .catch Ljava/lang/NumberFormatException; {:try_start_411 .. :try_end_418} :catch_479

    .line 3867
    .end local v0    # "userId":I
    .local v74, "userId":I
    move-object/from16 v75, v7

    move-object/from16 v7, v73

    :try_start_41c
    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3867
    .end local v73    # "resourcePathStr":Ljava/lang/String;
    .local v7, "resourcePathStr":Ljava/lang/String;
    .local v75, "codePathStr":Ljava/lang/String;
    const/16 v53, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    move-object/from16 v39, v2

    move-object/from16 v41, v25

    move-object/from16 v42, v5

    move-object/from16 v43, v0

    move-object/from16 v44, v6

    move-object/from16 v45, v34

    move-object/from16 v46, v8

    move-object/from16 v47, v9

    move-wide/from16 v48, v31

    move/from16 v50, v22

    move/from16 v51, v23

    move-object/from16 v52, v15

    move/from16 v54, v24

    invoke-direct/range {v39 .. v56}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/util/List;I[Ljava/lang/String;[J)V
    :try_end_442
    .catch Ljava/lang/NumberFormatException; {:try_start_41c .. :try_end_442} :catch_462

    .line 3873
    .end local v30    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    .local v2, "packageSetting":Lcom/android/server/pm/PackageSetting;
    :try_start_442
    invoke-virtual {v2, v3, v4}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V

    .line 3874
    iput-wide v10, v2, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    .line 3875
    iput-wide v12, v2, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J
    :try_end_449
    .catch Ljava/lang/NumberFormatException; {:try_start_442 .. :try_end_449} :catch_45e

    .line 3876
    move-object/from16 v5, p0

    :try_start_44b
    iget-object v0, v5, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_450
    .catch Ljava/lang/NumberFormatException; {:try_start_44b .. :try_end_450} :catch_459

    .line 3895
    move-object/from16 v76, v1

    move-object/from16 v30, v2

    move-object/from16 v2, v70

    .line 3895
    .end local v1    # "sharedIdStr":Ljava/lang/String;
    .end local v24    # "sharedUserId":I
    .end local v26    # "timeStampStr":Ljava/lang/String;
    .end local v70    # "idStr":Ljava/lang/String;
    .end local v74    # "userId":I
    .local v2, "idStr":Ljava/lang/String;
    .restart local v30    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    .local v76, "sharedIdStr":Ljava/lang/String;
    :goto_456
    const/4 v1, 0x5

    goto/16 :goto_562

    .line 3891
    .end local v15    # "parentPackageName":Ljava/lang/String;
    .end local v30    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    .end local v76    # "sharedIdStr":Ljava/lang/String;
    .restart local v1    # "sharedIdStr":Ljava/lang/String;
    .local v2, "packageSetting":Lcom/android/server/pm/PackageSetting;
    .restart local v70    # "idStr":Ljava/lang/String;
    :catch_459
    move-exception v0

    move-object/from16 v30, v2

    goto/16 :goto_515

    :catch_45e
    move-exception v0

    move-object/from16 v30, v2

    goto :goto_463

    .line 3891
    .end local v2    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    .restart local v30    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    :catch_462
    move-exception v0

    .line 3891
    .end local v14    # "name":Ljava/lang/String;
    .end local v35    # "categoryHintString":Ljava/lang/String;
    .end local v59    # "version":Ljava/lang/String;
    .end local v70    # "idStr":Ljava/lang/String;
    .end local v75    # "codePathStr":Ljava/lang/String;
    .local v1, "name":Ljava/lang/String;
    .local v3, "idStr":Ljava/lang/String;
    .restart local v4    # "sharedIdStr":Ljava/lang/String;
    .restart local v5    # "codePathStr":Ljava/lang/String;
    .local v7, "categoryHintString":Ljava/lang/String;
    .local v10, "version":Ljava/lang/String;
    .local v12, "resourcePathStr":Ljava/lang/String;
    .restart local v60    # "timeStamp":J
    .restart local v62    # "firstInstallTime":J
    .restart local v64    # "lastUpdateTime":J
    :goto_463
    move-wide/from16 v60, v3

    move-wide/from16 v62, v10

    move-wide/from16 v64, v12

    move-object/from16 v10, v59

    move-object/from16 v3, v70

    move-object/from16 v5, v75

    move-object/from16 v11, p0

    const/4 v13, 0x5

    move-object v4, v1

    move-object v12, v7

    move-object v1, v14

    move-object/from16 v7, v35

    goto/16 :goto_85b

    .end local v4    # "sharedIdStr":Ljava/lang/String;
    .end local v5    # "codePathStr":Ljava/lang/String;
    .end local v60    # "timeStamp":J
    .end local v62    # "firstInstallTime":J
    .end local v64    # "lastUpdateTime":J
    .local v1, "sharedIdStr":Ljava/lang/String;
    .local v3, "timeStamp":J
    .local v7, "codePathStr":Ljava/lang/String;
    .local v10, "firstInstallTime":J
    .local v12, "lastUpdateTime":J
    .restart local v14    # "name":Ljava/lang/String;
    .restart local v35    # "categoryHintString":Ljava/lang/String;
    .restart local v59    # "version":Ljava/lang/String;
    .restart local v70    # "idStr":Ljava/lang/String;
    .restart local v73    # "resourcePathStr":Ljava/lang/String;
    :catch_479
    move-exception v0

    move-object/from16 v75, v7

    move-object/from16 v7, v73

    move-wide/from16 v60, v3

    move-wide/from16 v62, v10

    move-wide/from16 v64, v12

    move-object/from16 v10, v59

    move-object/from16 v3, v70

    move-object/from16 v5, v75

    move-object/from16 v11, p0

    const/4 v13, 0x5

    move-object v4, v1

    move-object v12, v7

    move-object v1, v14

    move-object/from16 v7, v35

    .end local v73    # "resourcePathStr":Ljava/lang/String;
    .local v7, "resourcePathStr":Ljava/lang/String;
    .restart local v75    # "codePathStr":Ljava/lang/String;
    goto/16 :goto_85b

    .line 3891
    .end local v7    # "resourcePathStr":Ljava/lang/String;
    .end local v75    # "codePathStr":Ljava/lang/String;
    .restart local v72    # "codePathStr":Ljava/lang/String;
    .restart local v73    # "resourcePathStr":Ljava/lang/String;
    :catch_494
    move-exception v0

    move-object/from16 v75, v72

    move-object/from16 v7, v73

    move-wide/from16 v60, v3

    move-wide/from16 v62, v10

    move-wide/from16 v64, v12

    move-object/from16 v10, v59

    move-object/from16 v3, v70

    move-object/from16 v5, v75

    move-object/from16 v11, p0

    const/4 v13, 0x5

    move-object v4, v1

    move-object v12, v7

    move-object v1, v14

    move-object/from16 v7, v35

    .end local v72    # "codePathStr":Ljava/lang/String;
    .end local v73    # "resourcePathStr":Ljava/lang/String;
    .restart local v7    # "resourcePathStr":Ljava/lang/String;
    .restart local v75    # "codePathStr":Ljava/lang/String;
    goto/16 :goto_85b

    .line 3891
    .end local v7    # "resourcePathStr":Ljava/lang/String;
    .end local v14    # "name":Ljava/lang/String;
    .end local v75    # "codePathStr":Ljava/lang/String;
    .restart local v69    # "name":Ljava/lang/String;
    .restart local v72    # "codePathStr":Ljava/lang/String;
    .restart local v73    # "resourcePathStr":Ljava/lang/String;
    :catch_4af
    move-exception v0

    move-object/from16 v14, v69

    move-object/from16 v75, v72

    move-object/from16 v7, v73

    move-wide/from16 v60, v3

    move-wide/from16 v62, v10

    move-wide/from16 v64, v12

    move-object/from16 v10, v59

    move-object/from16 v3, v70

    move-object/from16 v5, v75

    move-object/from16 v11, p0

    const/4 v13, 0x5

    move-object v4, v1

    move-object v12, v7

    move-object v1, v14

    move-object/from16 v7, v35

    .end local v69    # "name":Ljava/lang/String;
    .end local v72    # "codePathStr":Ljava/lang/String;
    .end local v73    # "resourcePathStr":Ljava/lang/String;
    .restart local v7    # "resourcePathStr":Ljava/lang/String;
    .restart local v14    # "name":Ljava/lang/String;
    .restart local v75    # "codePathStr":Ljava/lang/String;
    goto/16 :goto_85b

    .line 3881
    .end local v7    # "resourcePathStr":Ljava/lang/String;
    .end local v14    # "name":Ljava/lang/String;
    .end local v75    # "codePathStr":Ljava/lang/String;
    .restart local v0    # "userId":I
    .restart local v15    # "parentPackageName":Ljava/lang/String;
    .restart local v24    # "sharedUserId":I
    .restart local v26    # "timeStampStr":Ljava/lang/String;
    .restart local v69    # "name":Ljava/lang/String;
    .restart local v72    # "codePathStr":Ljava/lang/String;
    .restart local v73    # "resourcePathStr":Ljava/lang/String;
    :cond_4cc
    move/from16 v74, v0

    move-object/from16 v14, v69

    move-object/from16 v75, v72

    move-object/from16 v7, v73

    move-object/from16 v5, p0

    .line 3881
    .end local v0    # "userId":I
    .end local v69    # "name":Ljava/lang/String;
    .end local v72    # "codePathStr":Ljava/lang/String;
    .end local v73    # "resourcePathStr":Ljava/lang/String;
    .restart local v7    # "resourcePathStr":Ljava/lang/String;
    .restart local v14    # "name":Ljava/lang/String;
    .restart local v74    # "userId":I
    .restart local v75    # "codePathStr":Ljava/lang/String;
    :try_start_4d6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in package manager settings: package "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has bad sharedId "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " at "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3884
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_4fb
    .catch Ljava/lang/NumberFormatException; {:try_start_4d6 .. :try_end_4fb} :catch_514

    .line 3881
    const/4 v2, 0x5

    :try_start_4fc
    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_4ff
    .catch Ljava/lang/NumberFormatException; {:try_start_4fc .. :try_end_4ff} :catch_506

    .line 3895
    move-object/from16 v76, v1

    move v1, v2

    move-object/from16 v2, v70

    goto/16 :goto_562

    .line 3891
    .end local v15    # "parentPackageName":Ljava/lang/String;
    .end local v24    # "sharedUserId":I
    .end local v26    # "timeStampStr":Ljava/lang/String;
    .end local v74    # "userId":I
    :catch_506
    move-exception v0

    move-wide/from16 v60, v3

    move-wide/from16 v62, v10

    move-wide/from16 v64, v12

    move-object/from16 v10, v59

    move-object/from16 v3, v70

    move-object v4, v1

    move v13, v2

    goto :goto_521

    :catch_514
    move-exception v0

    .line 3891
    .end local v14    # "name":Ljava/lang/String;
    .end local v35    # "categoryHintString":Ljava/lang/String;
    .end local v59    # "version":Ljava/lang/String;
    .end local v70    # "idStr":Ljava/lang/String;
    .end local v75    # "codePathStr":Ljava/lang/String;
    .local v1, "name":Ljava/lang/String;
    .local v3, "idStr":Ljava/lang/String;
    .restart local v4    # "sharedIdStr":Ljava/lang/String;
    .restart local v5    # "codePathStr":Ljava/lang/String;
    .local v7, "categoryHintString":Ljava/lang/String;
    .local v10, "version":Ljava/lang/String;
    .local v12, "resourcePathStr":Ljava/lang/String;
    .restart local v60    # "timeStamp":J
    .restart local v62    # "firstInstallTime":J
    .restart local v64    # "lastUpdateTime":J
    :goto_515
    move-wide/from16 v60, v3

    move-wide/from16 v62, v10

    move-wide/from16 v64, v12

    move-object/from16 v10, v59

    move-object/from16 v3, v70

    const/4 v13, 0x5

    move-object v4, v1

    :goto_521
    move-object v11, v5

    move-object v12, v7

    move-object v1, v14

    :goto_524
    move-object/from16 v7, v35

    move-object/from16 v5, v75

    goto/16 :goto_85b

    .line 3887
    .end local v4    # "sharedIdStr":Ljava/lang/String;
    .end local v5    # "codePathStr":Ljava/lang/String;
    .end local v7    # "categoryHintString":Ljava/lang/String;
    .end local v60    # "timeStamp":J
    .end local v62    # "firstInstallTime":J
    .end local v64    # "lastUpdateTime":J
    .restart local v0    # "userId":I
    .local v1, "sharedIdStr":Ljava/lang/String;
    .local v3, "timeStamp":J
    .local v10, "firstInstallTime":J
    .local v12, "lastUpdateTime":J
    .restart local v15    # "parentPackageName":Ljava/lang/String;
    .restart local v24    # "sharedUserId":I
    .restart local v26    # "timeStampStr":Ljava/lang/String;
    .restart local v35    # "categoryHintString":Ljava/lang/String;
    .restart local v59    # "version":Ljava/lang/String;
    .restart local v69    # "name":Ljava/lang/String;
    .restart local v70    # "idStr":Ljava/lang/String;
    .restart local v72    # "codePathStr":Ljava/lang/String;
    .restart local v73    # "resourcePathStr":Ljava/lang/String;
    :cond_52a
    move/from16 v74, v0

    move-object/from16 v14, v69

    move-object/from16 v75, v72

    move-object/from16 v7, v73

    const/4 v2, 0x5

    move-object/from16 v5, p0

    .line 3887
    .end local v0    # "userId":I
    .end local v69    # "name":Ljava/lang/String;
    .end local v72    # "codePathStr":Ljava/lang/String;
    .end local v73    # "resourcePathStr":Ljava/lang/String;
    .local v7, "resourcePathStr":Ljava/lang/String;
    .restart local v14    # "name":Ljava/lang/String;
    .restart local v74    # "userId":I
    .restart local v75    # "codePathStr":Ljava/lang/String;
    :try_start_535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_53a
    .catch Ljava/lang/NumberFormatException; {:try_start_535 .. :try_end_53a} :catch_5cf

    :try_start_53a
    const-string v2, "Error in package manager settings: package "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has bad userId "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_547
    .catch Ljava/lang/NumberFormatException; {:try_start_53a .. :try_end_547} :catch_5ba

    move-object/from16 v2, v70

    :try_start_549
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_54c
    .catch Ljava/lang/NumberFormatException; {:try_start_549 .. :try_end_54c} :catch_5a2

    .end local v70    # "idStr":Ljava/lang/String;
    .local v2, "idStr":Ljava/lang/String;
    move-object/from16 v76, v1

    :try_start_54e
    const-string v1, " at "

    .line 3887
    .end local v1    # "sharedIdStr":Ljava/lang/String;
    .restart local v76    # "sharedIdStr":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3889
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_55e
    .catch Ljava/lang/NumberFormatException; {:try_start_54e .. :try_end_55e} :catch_591

    .line 3887
    const/4 v1, 0x5

    :try_start_55f
    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_562
    .catch Ljava/lang/NumberFormatException; {:try_start_55f .. :try_end_562} :catch_583

    .line 3895
    .end local v24    # "sharedUserId":I
    .end local v26    # "timeStampStr":Ljava/lang/String;
    .end local v74    # "userId":I
    :goto_562
    nop

    .line 3896
    move-wide/from16 v60, v3

    move-object v15, v7

    move-object/from16 v16, v9

    move-wide/from16 v62, v10

    move-wide/from16 v64, v12

    move-object/from16 v10, v20

    move-object/from16 v3, v33

    move-object/from16 v4, v57

    move v13, v1

    move-object v12, v2

    move-object v11, v5

    move-object v7, v6

    move-object v9, v8

    move/from16 v6, v21

    move-object/from16 v1, v30

    move-object/from16 v8, v34

    move-object/from16 v2, v36

    move-object/from16 v5, v58

    goto/16 :goto_8a2

    .line 3891
    .end local v15    # "parentPackageName":Ljava/lang/String;
    :catch_583
    move-exception v0

    move-wide/from16 v60, v3

    move-wide/from16 v62, v10

    move-wide/from16 v64, v12

    move-object/from16 v10, v59

    move-object/from16 v4, v76

    move v13, v1

    move-object v3, v2

    goto :goto_521

    :catch_591
    move-exception v0

    move-wide/from16 v60, v3

    move-wide/from16 v62, v10

    move-wide/from16 v64, v12

    move-object v1, v14

    move-object/from16 v10, v59

    move-object/from16 v4, v76

    const/4 v13, 0x5

    move-object v3, v2

    move-object v11, v5

    move-object v12, v7

    goto :goto_524

    .end local v76    # "sharedIdStr":Ljava/lang/String;
    .restart local v1    # "sharedIdStr":Ljava/lang/String;
    :catch_5a2
    move-exception v0

    move-object/from16 v76, v1

    move-wide/from16 v60, v3

    move-wide/from16 v62, v10

    move-wide/from16 v64, v12

    move-object v1, v14

    move-object/from16 v10, v59

    move-object/from16 v4, v76

    const/4 v13, 0x5

    move-object v3, v2

    move-object v11, v5

    move-object v12, v7

    move-object/from16 v7, v35

    move-object/from16 v5, v75

    .end local v1    # "sharedIdStr":Ljava/lang/String;
    .restart local v76    # "sharedIdStr":Ljava/lang/String;
    goto/16 :goto_85b

    .line 3891
    .end local v2    # "idStr":Ljava/lang/String;
    .end local v76    # "sharedIdStr":Ljava/lang/String;
    .restart local v1    # "sharedIdStr":Ljava/lang/String;
    .restart local v70    # "idStr":Ljava/lang/String;
    :catch_5ba
    move-exception v0

    move-object/from16 v76, v1

    move-object/from16 v2, v70

    move-wide/from16 v60, v3

    move-wide/from16 v62, v10

    move-wide/from16 v64, v12

    move-object v1, v14

    move-object/from16 v10, v59

    move-object/from16 v4, v76

    const/4 v13, 0x5

    move-object v3, v2

    move-object v11, v5

    move-object v12, v7

    goto :goto_5e4

    :catch_5cf
    move-exception v0

    move-object/from16 v76, v1

    move v1, v2

    move-object/from16 v2, v70

    move-wide/from16 v60, v3

    move-wide/from16 v62, v10

    move-wide/from16 v64, v12

    move-object/from16 v10, v59

    move-object/from16 v4, v76

    move v13, v1

    move-object v3, v2

    move-object v11, v5

    move-object v12, v7

    move-object v1, v14

    .end local v14    # "name":Ljava/lang/String;
    .end local v35    # "categoryHintString":Ljava/lang/String;
    .end local v59    # "version":Ljava/lang/String;
    .end local v75    # "codePathStr":Ljava/lang/String;
    .local v3, "idStr":Ljava/lang/String;
    .restart local v4    # "sharedIdStr":Ljava/lang/String;
    .restart local v5    # "codePathStr":Ljava/lang/String;
    .local v7, "categoryHintString":Ljava/lang/String;
    .local v10, "version":Ljava/lang/String;
    .local v12, "resourcePathStr":Ljava/lang/String;
    .restart local v60    # "timeStamp":J
    .restart local v62    # "firstInstallTime":J
    .restart local v64    # "lastUpdateTime":J
    :goto_5e4
    move-object/from16 v7, v35

    move-object/from16 v5, v75

    .line 3891
    .end local v1    # "sharedIdStr":Ljava/lang/String;
    .end local v70    # "idStr":Ljava/lang/String;
    .restart local v2    # "idStr":Ljava/lang/String;
    .restart local v76    # "sharedIdStr":Ljava/lang/String;
    goto/16 :goto_85b

    .line 3891
    .end local v12    # "resourcePathStr":Ljava/lang/String;
    .end local v25    # "realName":Ljava/lang/String;
    .end local v64    # "lastUpdateTime":J
    .end local v76    # "sharedIdStr":Ljava/lang/String;
    .local v1, "name":Ljava/lang/String;
    .local v2, "realName":Ljava/lang/String;
    .restart local v28    # "lastUpdateTime":J
    .restart local v37    # "resourcePathStr":Ljava/lang/String;
    :catch_5ea
    move-exception v0

    move-object/from16 v76, v4

    move-object/from16 v75, v5

    move-object/from16 v35, v7

    move-object/from16 v59, v10

    move-object v5, v14

    move-wide/from16 v10, v62

    const/4 v13, 0x5

    move-object v14, v1

    move-object v1, v3

    move-wide/from16 v3, v60

    move-object/from16 v25, v2

    move-wide/from16 v64, v28

    move-object/from16 v12, v37

    move-object/from16 v10, v59

    move-object/from16 v4, v76

    move-object v3, v1

    move-object v11, v5

    move-object v1, v14

    move-object/from16 v5, v75

    .end local v4    # "sharedIdStr":Ljava/lang/String;
    .end local v5    # "codePathStr":Ljava/lang/String;
    .end local v7    # "categoryHintString":Ljava/lang/String;
    .end local v60    # "timeStamp":J
    .end local v62    # "firstInstallTime":J
    .local v1, "idStr":Ljava/lang/String;
    .local v3, "timeStamp":J
    .local v10, "firstInstallTime":J
    .restart local v14    # "name":Ljava/lang/String;
    .restart local v35    # "categoryHintString":Ljava/lang/String;
    .restart local v59    # "version":Ljava/lang/String;
    .restart local v75    # "codePathStr":Ljava/lang/String;
    .restart local v76    # "sharedIdStr":Ljava/lang/String;
    goto/16 :goto_85b

    .line 3891
    .end local v14    # "name":Ljava/lang/String;
    .end local v35    # "categoryHintString":Ljava/lang/String;
    .end local v59    # "version":Ljava/lang/String;
    .end local v75    # "codePathStr":Ljava/lang/String;
    .end local v76    # "sharedIdStr":Ljava/lang/String;
    .local v1, "name":Ljava/lang/String;
    .local v3, "idStr":Ljava/lang/String;
    .restart local v4    # "sharedIdStr":Ljava/lang/String;
    .restart local v5    # "codePathStr":Ljava/lang/String;
    .restart local v7    # "categoryHintString":Ljava/lang/String;
    .local v10, "version":Ljava/lang/String;
    .local v26, "firstInstallTime":J
    .restart local v60    # "timeStamp":J
    :catch_60c
    move-exception v0

    move-object/from16 v76, v4

    move-object/from16 v75, v5

    move-object/from16 v35, v7

    move-object/from16 v59, v10

    move-object v5, v14

    const/4 v13, 0x5

    move-object v14, v1

    move-object v1, v3

    move-wide/from16 v3, v60

    move-object/from16 v25, v2

    move-object v11, v5

    move-wide/from16 v62, v26

    move-wide/from16 v64, v28

    move-object/from16 v12, v37

    move-object/from16 v5, v75

    move-object/from16 v4, v76

    move-object v3, v1

    move-object v1, v14

    .end local v4    # "sharedIdStr":Ljava/lang/String;
    .end local v5    # "codePathStr":Ljava/lang/String;
    .end local v7    # "categoryHintString":Ljava/lang/String;
    .end local v10    # "version":Ljava/lang/String;
    .end local v60    # "timeStamp":J
    .local v1, "idStr":Ljava/lang/String;
    .local v3, "timeStamp":J
    .restart local v14    # "name":Ljava/lang/String;
    .restart local v35    # "categoryHintString":Ljava/lang/String;
    .restart local v59    # "version":Ljava/lang/String;
    .restart local v75    # "codePathStr":Ljava/lang/String;
    .restart local v76    # "sharedIdStr":Ljava/lang/String;
    goto/16 :goto_85b

    .line 3891
    .end local v14    # "name":Ljava/lang/String;
    .end local v35    # "categoryHintString":Ljava/lang/String;
    .end local v59    # "version":Ljava/lang/String;
    .end local v75    # "codePathStr":Ljava/lang/String;
    .end local v76    # "sharedIdStr":Ljava/lang/String;
    .local v1, "name":Ljava/lang/String;
    .local v3, "idStr":Ljava/lang/String;
    .restart local v4    # "sharedIdStr":Ljava/lang/String;
    .restart local v5    # "codePathStr":Ljava/lang/String;
    .restart local v7    # "categoryHintString":Ljava/lang/String;
    .restart local v10    # "version":Ljava/lang/String;
    .local v24, "timeStamp":J
    :catch_62c
    move-exception v0

    move-object/from16 v76, v4

    move-object/from16 v75, v5

    move-object/from16 v35, v7

    move-object/from16 v59, v10

    move-object v5, v14

    const/4 v13, 0x5

    move-object v14, v1

    move-object v1, v3

    move-object v11, v5

    goto :goto_64b

    .line 3891
    .end local v19    # "systemStr":Ljava/lang/String;
    .local v12, "systemStr":Ljava/lang/String;
    :catch_63b
    move-exception v0

    move-object/from16 v76, v4

    move-object/from16 v75, v5

    move-object/from16 v35, v7

    move-object/from16 v59, v10

    move-object v5, v14

    const/4 v13, 0x5

    move-object v14, v1

    move-object v1, v3

    move-object v11, v5

    move-object/from16 v19, v12

    .end local v2    # "realName":Ljava/lang/String;
    .end local v24    # "timeStamp":J
    .end local v26    # "firstInstallTime":J
    .end local v28    # "lastUpdateTime":J
    .end local v37    # "resourcePathStr":Ljava/lang/String;
    .local v12, "resourcePathStr":Ljava/lang/String;
    .restart local v19    # "systemStr":Ljava/lang/String;
    .restart local v25    # "realName":Ljava/lang/String;
    .restart local v60    # "timeStamp":J
    .restart local v62    # "firstInstallTime":J
    .restart local v64    # "lastUpdateTime":J
    :goto_64b
    move-object v1, v14

    move-wide/from16 v60, v24

    move-wide/from16 v62, v26

    move-wide/from16 v64, v28

    move-object/from16 v12, v37

    move-object/from16 v5, v75

    move-object/from16 v25, v2

    .line 3891
    .end local v3    # "idStr":Ljava/lang/String;
    .end local v4    # "sharedIdStr":Ljava/lang/String;
    .end local v5    # "codePathStr":Ljava/lang/String;
    .end local v7    # "categoryHintString":Ljava/lang/String;
    .end local v10    # "version":Ljava/lang/String;
    .local v1, "idStr":Ljava/lang/String;
    .restart local v14    # "name":Ljava/lang/String;
    .restart local v35    # "categoryHintString":Ljava/lang/String;
    .restart local v59    # "version":Ljava/lang/String;
    .restart local v75    # "codePathStr":Ljava/lang/String;
    .restart local v76    # "sharedIdStr":Ljava/lang/String;
    goto/16 :goto_85b

    .line 3891
    .end local v14    # "name":Ljava/lang/String;
    .end local v25    # "realName":Ljava/lang/String;
    .end local v35    # "categoryHintString":Ljava/lang/String;
    .end local v59    # "version":Ljava/lang/String;
    .end local v60    # "timeStamp":J
    .end local v62    # "firstInstallTime":J
    .end local v64    # "lastUpdateTime":J
    .end local v75    # "codePathStr":Ljava/lang/String;
    .end local v76    # "sharedIdStr":Ljava/lang/String;
    .local v1, "name":Ljava/lang/String;
    .restart local v2    # "realName":Ljava/lang/String;
    .restart local v3    # "idStr":Ljava/lang/String;
    .restart local v4    # "sharedIdStr":Ljava/lang/String;
    .restart local v5    # "codePathStr":Ljava/lang/String;
    .restart local v10    # "version":Ljava/lang/String;
    .local v12, "systemStr":Ljava/lang/String;
    .local v19, "categoryHintString":Ljava/lang/String;
    .restart local v24    # "timeStamp":J
    .restart local v26    # "firstInstallTime":J
    .restart local v28    # "lastUpdateTime":J
    .restart local v37    # "resourcePathStr":Ljava/lang/String;
    :catch_65a
    move-exception v0

    move-object/from16 v76, v4

    move-object/from16 v75, v5

    move-object/from16 v59, v10

    move-object v5, v14

    const/4 v13, 0x5

    move-object v14, v1

    move-object v1, v3

    move-object v11, v5

    move-object v1, v14

    goto :goto_697

    .line 3891
    .end local v58    # "volumeUuid":Ljava/lang/String;
    .restart local v18    # "volumeUuid":Ljava/lang/String;
    :catch_668
    move-exception v0

    move-object/from16 v76, v4

    move-object/from16 v75, v5

    move-object/from16 v59, v10

    move-object v5, v14

    const/4 v13, 0x5

    move-object v14, v1

    move-object v1, v3

    move-object v11, v5

    move-object v1, v14

    goto :goto_695

    .line 3891
    .end local v57    # "isOrphaned":Ljava/lang/String;
    .restart local v17    # "isOrphaned":Ljava/lang/String;
    :catch_676
    move-exception v0

    move-object/from16 v76, v4

    move-object/from16 v75, v5

    move-object/from16 v59, v10

    move-object v5, v14

    const/4 v13, 0x5

    move-object v14, v1

    move-object v1, v3

    move-object v11, v5

    move-object v1, v14

    goto :goto_693

    .line 3891
    .end local v33    # "installerPackageName":Ljava/lang/String;
    .restart local v16    # "installerPackageName":Ljava/lang/String;
    :catch_684
    move-exception v0

    move-object/from16 v76, v4

    move-object/from16 v75, v5

    move-object/from16 v59, v10

    move-object v5, v14

    const/4 v13, 0x5

    move-object v14, v1

    move-object v1, v3

    move-object v11, v5

    move-object v1, v14

    move-object/from16 v33, v16

    .line 3891
    .end local v2    # "realName":Ljava/lang/String;
    .end local v16    # "installerPackageName":Ljava/lang/String;
    .end local v17    # "isOrphaned":Ljava/lang/String;
    .end local v18    # "volumeUuid":Ljava/lang/String;
    .end local v24    # "timeStamp":J
    .end local v26    # "firstInstallTime":J
    .end local v28    # "lastUpdateTime":J
    .end local v37    # "resourcePathStr":Ljava/lang/String;
    .restart local v7    # "categoryHintString":Ljava/lang/String;
    .local v12, "resourcePathStr":Ljava/lang/String;
    .local v19, "systemStr":Ljava/lang/String;
    .restart local v25    # "realName":Ljava/lang/String;
    .restart local v33    # "installerPackageName":Ljava/lang/String;
    .restart local v57    # "isOrphaned":Ljava/lang/String;
    .restart local v58    # "volumeUuid":Ljava/lang/String;
    .restart local v60    # "timeStamp":J
    .restart local v62    # "firstInstallTime":J
    .restart local v64    # "lastUpdateTime":J
    :goto_693
    move-object/from16 v57, v17

    :goto_695
    move-object/from16 v58, v18

    :goto_697
    move-object/from16 v7, v19

    move-wide/from16 v60, v24

    move-wide/from16 v62, v26

    move-wide/from16 v64, v28

    move-object/from16 v5, v75

    move-object/from16 v25, v2

    move-object/from16 v19, v12

    move-object/from16 v12, v37

    .end local v3    # "idStr":Ljava/lang/String;
    .end local v4    # "sharedIdStr":Ljava/lang/String;
    .end local v5    # "codePathStr":Ljava/lang/String;
    .end local v10    # "version":Ljava/lang/String;
    .local v1, "idStr":Ljava/lang/String;
    .restart local v14    # "name":Ljava/lang/String;
    .restart local v59    # "version":Ljava/lang/String;
    .restart local v75    # "codePathStr":Ljava/lang/String;
    .restart local v76    # "sharedIdStr":Ljava/lang/String;
    goto/16 :goto_85b

    .line 3891
    .end local v7    # "categoryHintString":Ljava/lang/String;
    .end local v14    # "name":Ljava/lang/String;
    .end local v25    # "realName":Ljava/lang/String;
    .end local v33    # "installerPackageName":Ljava/lang/String;
    .end local v57    # "isOrphaned":Ljava/lang/String;
    .end local v58    # "volumeUuid":Ljava/lang/String;
    .end local v59    # "version":Ljava/lang/String;
    .end local v60    # "timeStamp":J
    .end local v62    # "firstInstallTime":J
    .end local v64    # "lastUpdateTime":J
    .end local v75    # "codePathStr":Ljava/lang/String;
    .end local v76    # "sharedIdStr":Ljava/lang/String;
    .local v1, "name":Ljava/lang/String;
    .restart local v2    # "realName":Ljava/lang/String;
    .restart local v3    # "idStr":Ljava/lang/String;
    .restart local v4    # "sharedIdStr":Ljava/lang/String;
    .restart local v5    # "codePathStr":Ljava/lang/String;
    .local v12, "systemStr":Ljava/lang/String;
    .restart local v16    # "installerPackageName":Ljava/lang/String;
    .restart local v17    # "isOrphaned":Ljava/lang/String;
    .restart local v18    # "volumeUuid":Ljava/lang/String;
    .local v19, "categoryHintString":Ljava/lang/String;
    .restart local v24    # "timeStamp":J
    .restart local v26    # "firstInstallTime":J
    .restart local v28    # "lastUpdateTime":J
    .local v31, "version":Ljava/lang/String;
    .restart local v32    # "versionCode":J
    .restart local v37    # "resourcePathStr":Ljava/lang/String;
    :catch_6a9
    move-exception v0

    move-object/from16 v76, v4

    move-object/from16 v75, v5

    move-object v5, v14

    const/4 v13, 0x5

    move-object v14, v1

    move-object v1, v3

    move-object v11, v5

    move-object v1, v14

    move-object/from16 v57, v17

    move-object/from16 v58, v18

    move-object/from16 v7, v19

    move-wide/from16 v60, v24

    move-wide/from16 v62, v26

    move-wide/from16 v64, v28

    move-object/from16 v10, v31

    move-wide/from16 v31, v32

    move-object/from16 v5, v75

    move-object/from16 v25, v2

    move-object/from16 v19, v12

    move-object/from16 v33, v16

    move-object/from16 v12, v37

    .end local v3    # "idStr":Ljava/lang/String;
    .end local v4    # "sharedIdStr":Ljava/lang/String;
    .end local v5    # "codePathStr":Ljava/lang/String;
    .local v1, "idStr":Ljava/lang/String;
    .restart local v14    # "name":Ljava/lang/String;
    .restart local v75    # "codePathStr":Ljava/lang/String;
    .restart local v76    # "sharedIdStr":Ljava/lang/String;
    goto/16 :goto_85b

    .line 3891
    .end local v14    # "name":Ljava/lang/String;
    .end local v34    # "primaryCpuAbiString":Ljava/lang/String;
    .end local v75    # "codePathStr":Ljava/lang/String;
    .end local v76    # "sharedIdStr":Ljava/lang/String;
    .local v1, "name":Ljava/lang/String;
    .restart local v3    # "idStr":Ljava/lang/String;
    .restart local v4    # "sharedIdStr":Ljava/lang/String;
    .restart local v5    # "codePathStr":Ljava/lang/String;
    .local v7, "primaryCpuAbiString":Ljava/lang/String;
    :catch_6d0
    move-exception v0

    move-object/from16 v76, v4

    const/4 v13, 0x5

    move-object/from16 v89, v14

    move-object v14, v1

    move-object v1, v3

    move-object v3, v5

    move-object/from16 v5, v89

    move-object v11, v5

    move-object/from16 v34, v7

    move-object/from16 v57, v17

    move-object/from16 v58, v18

    move-object/from16 v7, v19

    move-wide/from16 v60, v24

    move-wide/from16 v62, v26

    move-wide/from16 v64, v28

    move-object/from16 v10, v31

    move-wide/from16 v31, v32

    move-object/from16 v25, v2

    move-object v5, v3

    move-object/from16 v19, v12

    move-object/from16 v33, v16

    move-object/from16 v12, v37

    move-object v3, v1

    move-object v1, v14

    goto/16 :goto_7ac

    .end local v9    # "cpuAbiOverrideString":Ljava/lang/String;
    .local v34, "cpuAbiOverrideString":Ljava/lang/String;
    :catch_6fb
    move-exception v0

    move-object/from16 v76, v4

    const/4 v13, 0x5

    move-object/from16 v89, v14

    move-object v14, v1

    move-object v1, v3

    move-object v3, v5

    move-object/from16 v5, v89

    move-object v11, v5

    goto :goto_715

    .line 3891
    .end local v8    # "secondaryCpuAbiString":Ljava/lang/String;
    .local v10, "secondaryCpuAbiString":Ljava/lang/String;
    :catch_708
    move-exception v0

    move-object/from16 v76, v4

    const/4 v13, 0x5

    move-object/from16 v89, v14

    move-object v14, v1

    move-object v1, v3

    move-object v3, v5

    move-object/from16 v5, v89

    move-object v11, v5

    move-object v8, v10

    .line 3891
    .end local v2    # "realName":Ljava/lang/String;
    .end local v16    # "installerPackageName":Ljava/lang/String;
    .end local v17    # "isOrphaned":Ljava/lang/String;
    .end local v18    # "volumeUuid":Ljava/lang/String;
    .end local v24    # "timeStamp":J
    .end local v26    # "firstInstallTime":J
    .end local v28    # "lastUpdateTime":J
    .end local v32    # "versionCode":J
    .end local v37    # "resourcePathStr":Ljava/lang/String;
    .local v7, "categoryHintString":Ljava/lang/String;
    .restart local v8    # "secondaryCpuAbiString":Ljava/lang/String;
    .restart local v9    # "cpuAbiOverrideString":Ljava/lang/String;
    .local v10, "version":Ljava/lang/String;
    .local v12, "resourcePathStr":Ljava/lang/String;
    .local v19, "systemStr":Ljava/lang/String;
    .restart local v25    # "realName":Ljava/lang/String;
    .local v31, "versionCode":J
    .restart local v33    # "installerPackageName":Ljava/lang/String;
    .local v34, "primaryCpuAbiString":Ljava/lang/String;
    .restart local v57    # "isOrphaned":Ljava/lang/String;
    .restart local v58    # "volumeUuid":Ljava/lang/String;
    .restart local v60    # "timeStamp":J
    .restart local v62    # "firstInstallTime":J
    .restart local v64    # "lastUpdateTime":J
    :goto_715
    move-object/from16 v57, v17

    move-object/from16 v58, v18

    move-wide/from16 v60, v24

    move-wide/from16 v62, v26

    move-wide/from16 v64, v28

    move-object/from16 v10, v31

    move-wide/from16 v31, v32

    move-object/from16 v9, v34

    move-object/from16 v25, v2

    move-object v5, v3

    move-object/from16 v34, v7

    move-object/from16 v33, v16

    move-object/from16 v7, v19

    move-object v3, v1

    move-object/from16 v19, v12

    move-object v1, v14

    move-object/from16 v12, v37

    goto/16 :goto_7ac

    .end local v7    # "categoryHintString":Ljava/lang/String;
    .end local v8    # "secondaryCpuAbiString":Ljava/lang/String;
    .end local v25    # "realName":Ljava/lang/String;
    .end local v33    # "installerPackageName":Ljava/lang/String;
    .end local v57    # "isOrphaned":Ljava/lang/String;
    .end local v58    # "volumeUuid":Ljava/lang/String;
    .end local v60    # "timeStamp":J
    .end local v62    # "firstInstallTime":J
    .end local v64    # "lastUpdateTime":J
    .restart local v2    # "realName":Ljava/lang/String;
    .local v9, "primaryCpuAbiString":Ljava/lang/String;
    .local v10, "secondaryCpuAbiString":Ljava/lang/String;
    .local v12, "systemStr":Ljava/lang/String;
    .restart local v16    # "installerPackageName":Ljava/lang/String;
    .restart local v17    # "isOrphaned":Ljava/lang/String;
    .restart local v18    # "volumeUuid":Ljava/lang/String;
    .local v19, "categoryHintString":Ljava/lang/String;
    .restart local v24    # "timeStamp":J
    .restart local v26    # "firstInstallTime":J
    .restart local v28    # "lastUpdateTime":J
    .local v31, "version":Ljava/lang/String;
    .restart local v32    # "versionCode":J
    .local v34, "cpuAbiOverrideString":Ljava/lang/String;
    .restart local v37    # "resourcePathStr":Ljava/lang/String;
    :catch_736
    move-exception v0

    move-object/from16 v76, v4

    const/4 v13, 0x5

    move-object/from16 v89, v14

    move-object v14, v1

    move-object v1, v3

    move-object v3, v5

    move-object/from16 v5, v89

    move-object v11, v5

    goto :goto_75f

    .line 3891
    .end local v6    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .local v8, "legacyNativeLibraryPathStr":Ljava/lang/String;
    :catch_743
    move-exception v0

    move-object/from16 v76, v4

    const/4 v13, 0x5

    move-object/from16 v89, v14

    move-object v14, v1

    move-object v1, v3

    move-object v3, v5

    move-object/from16 v5, v89

    move-object v11, v5

    goto :goto_75e

    .line 3891
    .end local v38    # "legacyCpuAbiString":Ljava/lang/String;
    .local v7, "legacyCpuAbiString":Ljava/lang/String;
    :catch_750
    move-exception v0

    move-object/from16 v76, v4

    const/4 v13, 0x5

    move-object/from16 v89, v14

    move-object v14, v1

    move-object v1, v3

    move-object v3, v5

    move-object/from16 v5, v89

    move-object v11, v5

    move-object/from16 v38, v7

    .line 3891
    .end local v2    # "realName":Ljava/lang/String;
    .end local v16    # "installerPackageName":Ljava/lang/String;
    .end local v17    # "isOrphaned":Ljava/lang/String;
    .end local v18    # "volumeUuid":Ljava/lang/String;
    .end local v24    # "timeStamp":J
    .end local v26    # "firstInstallTime":J
    .end local v28    # "lastUpdateTime":J
    .end local v32    # "versionCode":J
    .end local v37    # "resourcePathStr":Ljava/lang/String;
    .restart local v6    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .local v7, "categoryHintString":Ljava/lang/String;
    .local v8, "secondaryCpuAbiString":Ljava/lang/String;
    .local v9, "cpuAbiOverrideString":Ljava/lang/String;
    .local v10, "version":Ljava/lang/String;
    .local v12, "resourcePathStr":Ljava/lang/String;
    .local v19, "systemStr":Ljava/lang/String;
    .restart local v25    # "realName":Ljava/lang/String;
    .local v31, "versionCode":J
    .restart local v33    # "installerPackageName":Ljava/lang/String;
    .local v34, "primaryCpuAbiString":Ljava/lang/String;
    .restart local v38    # "legacyCpuAbiString":Ljava/lang/String;
    .restart local v57    # "isOrphaned":Ljava/lang/String;
    .restart local v58    # "volumeUuid":Ljava/lang/String;
    .restart local v60    # "timeStamp":J
    .restart local v62    # "firstInstallTime":J
    .restart local v64    # "lastUpdateTime":J
    :goto_75e
    move-object v6, v8

    :goto_75f
    move-object v8, v10

    move-object/from16 v57, v17

    move-object/from16 v58, v18

    move-object/from16 v7, v19

    move-wide/from16 v60, v24

    move-wide/from16 v62, v26

    move-wide/from16 v64, v28

    move-object/from16 v10, v31

    move-wide/from16 v31, v32

    move-object/from16 v25, v2

    move-object v5, v3

    move-object/from16 v19, v12

    move-object/from16 v33, v16

    move-object/from16 v12, v37

    move-object v3, v1

    move-object v1, v14

    goto :goto_7a6

    .end local v25    # "realName":Ljava/lang/String;
    .end local v33    # "installerPackageName":Ljava/lang/String;
    .end local v38    # "legacyCpuAbiString":Ljava/lang/String;
    .end local v57    # "isOrphaned":Ljava/lang/String;
    .end local v58    # "volumeUuid":Ljava/lang/String;
    .end local v60    # "timeStamp":J
    .end local v62    # "firstInstallTime":J
    .end local v64    # "lastUpdateTime":J
    .restart local v2    # "realName":Ljava/lang/String;
    .local v6, "resourcePathStr":Ljava/lang/String;
    .local v7, "legacyCpuAbiString":Ljava/lang/String;
    .local v8, "legacyNativeLibraryPathStr":Ljava/lang/String;
    .local v9, "primaryCpuAbiString":Ljava/lang/String;
    .local v10, "secondaryCpuAbiString":Ljava/lang/String;
    .local v12, "systemStr":Ljava/lang/String;
    .restart local v16    # "installerPackageName":Ljava/lang/String;
    .restart local v17    # "isOrphaned":Ljava/lang/String;
    .restart local v18    # "volumeUuid":Ljava/lang/String;
    .local v19, "categoryHintString":Ljava/lang/String;
    .restart local v24    # "timeStamp":J
    .restart local v26    # "firstInstallTime":J
    .restart local v28    # "lastUpdateTime":J
    .local v31, "version":Ljava/lang/String;
    .restart local v32    # "versionCode":J
    .local v34, "cpuAbiOverrideString":Ljava/lang/String;
    :catch_77c
    move-exception v0

    move-object/from16 v76, v4

    const/4 v13, 0x5

    move-object/from16 v89, v14

    move-object v14, v1

    move-object v1, v3

    move-object v3, v5

    move-object/from16 v5, v89

    move-object v11, v5

    move-object/from16 v38, v7

    move-object/from16 v57, v17

    move-object/from16 v58, v18

    move-object/from16 v7, v19

    move-wide/from16 v60, v24

    move-wide/from16 v62, v26

    move-wide/from16 v64, v28

    move-object/from16 v25, v2

    move-object v5, v3

    move-object/from16 v19, v12

    move-object v3, v1

    move-object v12, v6

    move-object v6, v8

    move-object v8, v10

    move-object v1, v14

    move-object/from16 v10, v31

    move-wide/from16 v31, v32

    move-object/from16 v33, v16

    .end local v2    # "realName":Ljava/lang/String;
    .end local v16    # "installerPackageName":Ljava/lang/String;
    .end local v17    # "isOrphaned":Ljava/lang/String;
    .end local v18    # "volumeUuid":Ljava/lang/String;
    .end local v24    # "timeStamp":J
    .end local v26    # "firstInstallTime":J
    .end local v28    # "lastUpdateTime":J
    .end local v32    # "versionCode":J
    .local v6, "legacyNativeLibraryPathStr":Ljava/lang/String;
    .local v7, "categoryHintString":Ljava/lang/String;
    .local v8, "secondaryCpuAbiString":Ljava/lang/String;
    .local v9, "cpuAbiOverrideString":Ljava/lang/String;
    .local v10, "version":Ljava/lang/String;
    .local v12, "resourcePathStr":Ljava/lang/String;
    .local v19, "systemStr":Ljava/lang/String;
    .restart local v25    # "realName":Ljava/lang/String;
    .local v31, "versionCode":J
    .restart local v33    # "installerPackageName":Ljava/lang/String;
    .local v34, "primaryCpuAbiString":Ljava/lang/String;
    .restart local v38    # "legacyCpuAbiString":Ljava/lang/String;
    .restart local v57    # "isOrphaned":Ljava/lang/String;
    .restart local v58    # "volumeUuid":Ljava/lang/String;
    .restart local v60    # "timeStamp":J
    .restart local v62    # "firstInstallTime":J
    .restart local v64    # "lastUpdateTime":J
    :goto_7a6
    move-object/from16 v89, v34

    move-object/from16 v34, v9

    move-object/from16 v9, v89

    .line 3891
    .end local v4    # "sharedIdStr":Ljava/lang/String;
    .end local v5    # "codePathStr":Ljava/lang/String;
    .local v1, "idStr":Ljava/lang/String;
    .local v3, "codePathStr":Ljava/lang/String;
    .restart local v14    # "name":Ljava/lang/String;
    .restart local v76    # "sharedIdStr":Ljava/lang/String;
    :goto_7ac
    goto/16 :goto_85b

    .line 3891
    .end local v14    # "name":Ljava/lang/String;
    .end local v25    # "realName":Ljava/lang/String;
    .end local v33    # "installerPackageName":Ljava/lang/String;
    .end local v38    # "legacyCpuAbiString":Ljava/lang/String;
    .end local v57    # "isOrphaned":Ljava/lang/String;
    .end local v58    # "volumeUuid":Ljava/lang/String;
    .end local v60    # "timeStamp":J
    .end local v62    # "firstInstallTime":J
    .end local v64    # "lastUpdateTime":J
    .end local v76    # "sharedIdStr":Ljava/lang/String;
    .local v1, "name":Ljava/lang/String;
    .restart local v2    # "realName":Ljava/lang/String;
    .local v3, "idStr":Ljava/lang/String;
    .restart local v4    # "sharedIdStr":Ljava/lang/String;
    .restart local v5    # "codePathStr":Ljava/lang/String;
    .local v6, "resourcePathStr":Ljava/lang/String;
    .local v7, "legacyCpuAbiString":Ljava/lang/String;
    .local v8, "legacyNativeLibraryPathStr":Ljava/lang/String;
    .local v9, "primaryCpuAbiString":Ljava/lang/String;
    .local v10, "secondaryCpuAbiString":Ljava/lang/String;
    .local v12, "systemStr":Ljava/lang/String;
    .restart local v16    # "installerPackageName":Ljava/lang/String;
    .restart local v17    # "isOrphaned":Ljava/lang/String;
    .restart local v18    # "volumeUuid":Ljava/lang/String;
    .local v19, "categoryHintString":Ljava/lang/String;
    .restart local v24    # "timeStamp":J
    .restart local v26    # "firstInstallTime":J
    .restart local v28    # "lastUpdateTime":J
    .local v31, "version":Ljava/lang/String;
    .restart local v32    # "versionCode":J
    .local v34, "cpuAbiOverrideString":Ljava/lang/String;
    :catch_7ae
    move-exception v0

    move-object/from16 v76, v4

    move-object v11, v14

    const/4 v13, 0x5

    move-object v14, v1

    move-object v1, v3

    move-object/from16 v38, v7

    move-object v1, v14

    move-object/from16 v57, v17

    move-object/from16 v58, v18

    move-object/from16 v7, v19

    move-wide/from16 v60, v24

    move-wide/from16 v62, v26

    move-wide/from16 v64, v28

    move-object/from16 v25, v2

    move-object/from16 v19, v12

    move-object v12, v6

    move-object v6, v8

    move-object v8, v10

    move-object/from16 v10, v31

    move-wide/from16 v31, v32

    move-object/from16 v33, v16

    move-object/from16 v89, v34

    move-object/from16 v34, v9

    move-object/from16 v9, v89

    .end local v3    # "idStr":Ljava/lang/String;
    .end local v4    # "sharedIdStr":Ljava/lang/String;
    .local v1, "idStr":Ljava/lang/String;
    .restart local v14    # "name":Ljava/lang/String;
    .restart local v76    # "sharedIdStr":Ljava/lang/String;
    goto/16 :goto_85b

    .line 3891
    .end local v14    # "name":Ljava/lang/String;
    .end local v76    # "sharedIdStr":Ljava/lang/String;
    .local v1, "name":Ljava/lang/String;
    .restart local v3    # "idStr":Ljava/lang/String;
    .restart local v4    # "sharedIdStr":Ljava/lang/String;
    :catch_7d9
    move-exception v0

    move-object v11, v14

    const/4 v13, 0x5

    move-object v14, v1

    move-object v1, v3

    move-object/from16 v38, v7

    move-object v1, v14

    goto :goto_7ec

    .line 3891
    .end local v36    # "uidError":Ljava/lang/String;
    .local v15, "uidError":Ljava/lang/String;
    :catch_7e2
    move-exception v0

    move-object v11, v14

    const/4 v13, 0x5

    move-object v14, v1

    move-object v1, v3

    move-object/from16 v38, v7

    move-object v1, v14

    move-object/from16 v36, v15

    .line 3891
    .end local v2    # "realName":Ljava/lang/String;
    .end local v15    # "uidError":Ljava/lang/String;
    .end local v16    # "installerPackageName":Ljava/lang/String;
    .end local v17    # "isOrphaned":Ljava/lang/String;
    .end local v18    # "volumeUuid":Ljava/lang/String;
    .end local v24    # "timeStamp":J
    .end local v26    # "firstInstallTime":J
    .end local v28    # "lastUpdateTime":J
    .end local v32    # "versionCode":J
    .local v6, "legacyNativeLibraryPathStr":Ljava/lang/String;
    .local v7, "categoryHintString":Ljava/lang/String;
    .local v8, "secondaryCpuAbiString":Ljava/lang/String;
    .local v9, "cpuAbiOverrideString":Ljava/lang/String;
    .local v10, "version":Ljava/lang/String;
    .local v12, "resourcePathStr":Ljava/lang/String;
    .local v19, "systemStr":Ljava/lang/String;
    .restart local v25    # "realName":Ljava/lang/String;
    .local v31, "versionCode":J
    .restart local v33    # "installerPackageName":Ljava/lang/String;
    .local v34, "primaryCpuAbiString":Ljava/lang/String;
    .restart local v36    # "uidError":Ljava/lang/String;
    .restart local v38    # "legacyCpuAbiString":Ljava/lang/String;
    .restart local v57    # "isOrphaned":Ljava/lang/String;
    .restart local v58    # "volumeUuid":Ljava/lang/String;
    .restart local v60    # "timeStamp":J
    .restart local v62    # "firstInstallTime":J
    .restart local v64    # "lastUpdateTime":J
    :goto_7ec
    move-object/from16 v57, v17

    move-object/from16 v58, v18

    move-object/from16 v7, v19

    move-wide/from16 v60, v24

    move-wide/from16 v62, v26

    move-wide/from16 v64, v28

    move-object/from16 v25, v2

    move-object/from16 v19, v12

    move-object v12, v6

    move-object v6, v8

    move-object v8, v10

    move-object/from16 v10, v31

    move-wide/from16 v31, v32

    move-object/from16 v33, v16

    move-object/from16 v89, v34

    move-object/from16 v34, v9

    move-object/from16 v9, v89

    .end local v3    # "idStr":Ljava/lang/String;
    .local v1, "idStr":Ljava/lang/String;
    .restart local v14    # "name":Ljava/lang/String;
    goto/16 :goto_85b

    .line 3891
    .end local v14    # "name":Ljava/lang/String;
    .end local v25    # "realName":Ljava/lang/String;
    .end local v33    # "installerPackageName":Ljava/lang/String;
    .end local v36    # "uidError":Ljava/lang/String;
    .end local v38    # "legacyCpuAbiString":Ljava/lang/String;
    .end local v57    # "isOrphaned":Ljava/lang/String;
    .end local v58    # "volumeUuid":Ljava/lang/String;
    .end local v60    # "timeStamp":J
    .end local v62    # "firstInstallTime":J
    .end local v64    # "lastUpdateTime":J
    .local v1, "name":Ljava/lang/String;
    .restart local v2    # "realName":Ljava/lang/String;
    .restart local v3    # "idStr":Ljava/lang/String;
    .local v6, "resourcePathStr":Ljava/lang/String;
    .local v7, "legacyCpuAbiString":Ljava/lang/String;
    .local v8, "legacyNativeLibraryPathStr":Ljava/lang/String;
    .local v9, "primaryCpuAbiString":Ljava/lang/String;
    .local v10, "secondaryCpuAbiString":Ljava/lang/String;
    .local v12, "systemStr":Ljava/lang/String;
    .restart local v15    # "uidError":Ljava/lang/String;
    .restart local v16    # "installerPackageName":Ljava/lang/String;
    .restart local v17    # "isOrphaned":Ljava/lang/String;
    .restart local v18    # "volumeUuid":Ljava/lang/String;
    .local v19, "categoryHintString":Ljava/lang/String;
    .restart local v24    # "timeStamp":J
    .restart local v26    # "firstInstallTime":J
    .restart local v28    # "lastUpdateTime":J
    .local v31, "version":Ljava/lang/String;
    .restart local v32    # "versionCode":J
    .local v34, "cpuAbiOverrideString":Ljava/lang/String;
    :catch_80d
    move-exception v0

    move-object v11, v14

    const/4 v13, 0x5

    move-object v14, v1

    move-object/from16 v38, v7

    move-object/from16 v36, v15

    move-object/from16 v57, v17

    move-object/from16 v58, v18

    move-object/from16 v7, v19

    move-wide/from16 v60, v24

    move-wide/from16 v62, v26

    move-wide/from16 v64, v28

    move-object/from16 v25, v2

    move-object/from16 v19, v12

    move-object v12, v6

    move-object v6, v8

    move-object v8, v10

    move-object/from16 v10, v31

    move-wide/from16 v31, v32

    move-object/from16 v33, v16

    move-object/from16 v89, v34

    move-object/from16 v34, v9

    move-object/from16 v9, v89

    .end local v1    # "name":Ljava/lang/String;
    .restart local v14    # "name":Ljava/lang/String;
    goto :goto_85b

    .line 3891
    .end local v14    # "name":Ljava/lang/String;
    .restart local v1    # "name":Ljava/lang/String;
    :catch_835
    move-exception v0

    move-object v11, v14

    const/4 v13, 0x5

    move-object/from16 v38, v7

    move-object/from16 v36, v15

    move-object/from16 v57, v17

    move-object/from16 v58, v18

    move-object/from16 v7, v19

    move-wide/from16 v60, v24

    move-wide/from16 v62, v26

    move-wide/from16 v64, v28

    move-object/from16 v25, v2

    move-object/from16 v19, v12

    move-object v12, v6

    move-object v6, v8

    move-object v8, v10

    move-object/from16 v10, v31

    move-wide/from16 v31, v32

    move-object/from16 v33, v16

    move-object/from16 v89, v34

    move-object/from16 v34, v9

    move-object/from16 v9, v89

    .line 3892
    .end local v2    # "realName":Ljava/lang/String;
    .end local v15    # "uidError":Ljava/lang/String;
    .end local v16    # "installerPackageName":Ljava/lang/String;
    .end local v17    # "isOrphaned":Ljava/lang/String;
    .end local v18    # "volumeUuid":Ljava/lang/String;
    .end local v24    # "timeStamp":J
    .end local v26    # "firstInstallTime":J
    .end local v28    # "lastUpdateTime":J
    .end local v32    # "versionCode":J
    .local v0, "e":Ljava/lang/NumberFormatException;
    .local v6, "legacyNativeLibraryPathStr":Ljava/lang/String;
    .local v7, "categoryHintString":Ljava/lang/String;
    .local v8, "secondaryCpuAbiString":Ljava/lang/String;
    .local v9, "cpuAbiOverrideString":Ljava/lang/String;
    .local v10, "version":Ljava/lang/String;
    .local v12, "resourcePathStr":Ljava/lang/String;
    .local v19, "systemStr":Ljava/lang/String;
    .restart local v25    # "realName":Ljava/lang/String;
    .local v31, "versionCode":J
    .restart local v33    # "installerPackageName":Ljava/lang/String;
    .local v34, "primaryCpuAbiString":Ljava/lang/String;
    .restart local v36    # "uidError":Ljava/lang/String;
    .restart local v38    # "legacyCpuAbiString":Ljava/lang/String;
    .restart local v57    # "isOrphaned":Ljava/lang/String;
    .restart local v58    # "volumeUuid":Ljava/lang/String;
    .restart local v60    # "timeStamp":J
    .restart local v62    # "firstInstallTime":J
    .restart local v64    # "lastUpdateTime":J
    :goto_85b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error in package manager settings: package "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " has bad userId "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " at "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3894
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3892
    invoke-static {v13, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3896
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    move-object v14, v1

    move-object/from16 v76, v4

    move-object/from16 v75, v5

    move-object/from16 v35, v7

    move-object/from16 v16, v9

    move-object/from16 v59, v10

    move-object v15, v12

    move-object/from16 v10, v20

    move-object/from16 v1, v30

    move-object/from16 v2, v36

    move-object/from16 v4, v57

    move-object/from16 v5, v58

    move-object v12, v3

    move-object v7, v6

    move-object v9, v8

    move/from16 v6, v21

    move-object/from16 v3, v33

    move-object/from16 v8, v34

    .end local v20    # "updateAvailable":Ljava/lang/String;
    .end local v21    # "categoryHint":I
    .end local v30    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    .end local v33    # "installerPackageName":Ljava/lang/String;
    .end local v34    # "primaryCpuAbiString":Ljava/lang/String;
    .end local v36    # "uidError":Ljava/lang/String;
    .end local v57    # "isOrphaned":Ljava/lang/String;
    .end local v58    # "volumeUuid":Ljava/lang/String;
    .local v1, "packageSetting":Lcom/android/server/pm/PackageSetting;
    .local v2, "uidError":Ljava/lang/String;
    .local v3, "installerPackageName":Ljava/lang/String;
    .local v4, "isOrphaned":Ljava/lang/String;
    .local v5, "volumeUuid":Ljava/lang/String;
    .local v6, "categoryHint":I
    .local v7, "legacyNativeLibraryPathStr":Ljava/lang/String;
    .local v8, "primaryCpuAbiString":Ljava/lang/String;
    .local v9, "secondaryCpuAbiString":Ljava/lang/String;
    .local v10, "updateAvailable":Ljava/lang/String;
    .local v12, "idStr":Ljava/lang/String;
    .restart local v14    # "name":Ljava/lang/String;
    .local v15, "resourcePathStr":Ljava/lang/String;
    .local v16, "cpuAbiOverrideString":Ljava/lang/String;
    .restart local v35    # "categoryHintString":Ljava/lang/String;
    .restart local v59    # "version":Ljava/lang/String;
    .restart local v75    # "codePathStr":Ljava/lang/String;
    .restart local v76    # "sharedIdStr":Ljava/lang/String;
    :goto_8a2
    if-eqz v1, :cond_b42

    .line 3897
    const-string/jumbo v0, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/pm/PackageSetting;->uidError:Z

    .line 3898
    iput-object v3, v1, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    .line 3899
    const-string/jumbo v0, "true"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/pm/PackageSetting;->isOrphaned:Z

    .line 3900
    iput-object v5, v1, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    .line 3901
    iput v6, v1, Lcom/android/server/pm/PackageSetting;->categoryHint:I

    .line 3902
    iput-object v7, v1, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    .line 3903
    iput-object v8, v1, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    .line 3904
    iput-object v9, v1, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    .line 3905
    const-string/jumbo v0, "true"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/pm/PackageSetting;->updateAvailable:Z

    .line 3907
    const-string v0, "enabled"

    move-object/from16 v13, p1

    move-object/from16 v77, v2

    move-object/from16 v78, v4

    const/4 v2, 0x0

    invoke-interface {v13, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3908
    .end local v2    # "uidError":Ljava/lang/String;
    .local v4, "enabledStr":Ljava/lang/String;
    .local v77, "uidError":Ljava/lang/String;
    .local v78, "isOrphaned":Ljava/lang/String;
    if-eqz v4, :cond_946

    .line 3910
    :try_start_8da
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_8de
    .catch Ljava/lang/NumberFormatException; {:try_start_8da .. :try_end_8de} :catch_8ea

    move-object/from16 v79, v5

    const/4 v5, 0x0

    :try_start_8e1
    invoke-virtual {v1, v0, v5, v2}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V
    :try_end_8e4
    .catch Ljava/lang/NumberFormatException; {:try_start_8e1 .. :try_end_8e4} :catch_8e8

    .line 3924
    .end local v5    # "volumeUuid":Ljava/lang/String;
    .local v79, "volumeUuid":Ljava/lang/String;
    nop

    .line 3929
    move/from16 v80, v6

    goto :goto_94f

    .line 3911
    :catch_8e8
    move-exception v0

    goto :goto_8ee

    .line 3911
    .end local v79    # "volumeUuid":Ljava/lang/String;
    .restart local v5    # "volumeUuid":Ljava/lang/String;
    :catch_8ea
    move-exception v0

    move-object/from16 v79, v5

    const/4 v5, 0x0

    .line 3912
    .end local v5    # "volumeUuid":Ljava/lang/String;
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v79    # "volumeUuid":Ljava/lang/String;
    :goto_8ee
    const-string/jumbo v2, "true"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8ff

    .line 3913
    move/from16 v80, v6

    const/4 v2, 0x0

    const/4 v6, 0x1

    invoke-virtual {v1, v6, v5, v2}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    .line 3913
    .end local v6    # "categoryHint":I
    .local v80, "categoryHint":I
    goto :goto_945

    .line 3914
    .end local v80    # "categoryHint":I
    .restart local v6    # "categoryHint":I
    :cond_8ff
    move/from16 v80, v6

    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 3914
    .end local v6    # "categoryHint":I
    .restart local v80    # "categoryHint":I
    const-string v6, "false"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_910

    .line 3915
    const/4 v6, 0x2

    invoke-virtual {v1, v6, v5, v2}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    goto :goto_945

    .line 3916
    :cond_910
    const-string v6, "default"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_91c

    .line 3917
    invoke-virtual {v1, v5, v5, v2}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    goto :goto_945

    .line 3919
    :cond_91c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in package manager settings: package "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " has bad enabled value: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " at "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3922
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3919
    const/4 v6, 0x5

    invoke-static {v6, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3924
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_945
    goto :goto_94f

    .line 3926
    .end local v79    # "volumeUuid":Ljava/lang/String;
    .end local v80    # "categoryHint":I
    .restart local v5    # "volumeUuid":Ljava/lang/String;
    .restart local v6    # "categoryHint":I
    :cond_946
    move-object/from16 v79, v5

    move/from16 v80, v6

    const/4 v5, 0x0

    .line 3926
    .end local v5    # "volumeUuid":Ljava/lang/String;
    .end local v6    # "categoryHint":I
    .restart local v79    # "volumeUuid":Ljava/lang/String;
    .restart local v80    # "categoryHint":I
    const/4 v2, 0x0

    invoke-virtual {v1, v5, v5, v2}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    .line 3929
    :goto_94f
    if-eqz v3, :cond_956

    .line 3930
    iget-object v0, v11, Lcom/android/server/pm/Settings;->mInstallerPackages:Landroid/util/ArraySet;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3933
    :cond_956
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 3935
    .local v0, "outerDepth":I
    :goto_95a
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v6, v2

    .line 3935
    .local v6, "type":I
    const/4 v5, 0x1

    if-eq v2, v5, :cond_b3b

    const/4 v2, 0x3

    if-ne v6, v2, :cond_974

    .line 3936
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v0, :cond_96c

    goto :goto_974

    .line 3991
    .end local v0    # "outerDepth":I
    .end local v4    # "enabledStr":Ljava/lang/String;
    .end local v6    # "type":I
    :cond_96c
    move-object/from16 v82, v3

    move-object/from16 v85, v7

    move-object/from16 v88, v8

    goto/16 :goto_b41

    .line 3937
    .restart local v0    # "outerDepth":I
    .restart local v4    # "enabledStr":Ljava/lang/String;
    .restart local v6    # "type":I
    :cond_974
    :goto_974
    if-eq v6, v2, :cond_b21

    const/4 v2, 0x4

    if-ne v6, v2, :cond_989

    .line 3938
    nop

    .line 3933
    move/from16 v81, v0

    move-object/from16 v82, v3

    move-object/from16 v83, v4

    move-object/from16 v85, v7

    move-object/from16 v88, v8

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x5

    goto/16 :goto_b2e

    .line 3941
    :cond_989
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 3943
    .local v2, "tagName":Ljava/lang/String;
    const-string v5, "disabled-components"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9aa

    .line 3944
    const/4 v5, 0x0

    invoke-direct {v11, v1, v13, v5}, Lcom/android/server/pm/Settings;->readDisabledComponentsLPw(Lcom/android/server/pm/PackageSettingBase;Lorg/xmlpull/v1/XmlPullParser;I)V

    .line 3990
    .end local v0    # "outerDepth":I
    .end local v2    # "tagName":Ljava/lang/String;
    .end local v3    # "installerPackageName":Ljava/lang/String;
    .end local v4    # "enabledStr":Ljava/lang/String;
    .end local v6    # "type":I
    .end local v7    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .end local v8    # "primaryCpuAbiString":Ljava/lang/String;
    .local v81, "outerDepth":I
    .local v82, "installerPackageName":Ljava/lang/String;
    .local v83, "enabledStr":Ljava/lang/String;
    .local v84, "type":I
    .local v85, "legacyNativeLibraryPathStr":Ljava/lang/String;
    .local v88, "primaryCpuAbiString":Ljava/lang/String;
    :goto_999
    move/from16 v81, v0

    :goto_99b
    move-object/from16 v82, v3

    move-object/from16 v83, v4

    move/from16 v84, v6

    move-object/from16 v85, v7

    :goto_9a3
    move-object/from16 v88, v8

    const/4 v3, 0x1

    :goto_9a6
    const/4 v4, 0x0

    :goto_9a7
    const/4 v5, 0x5

    goto/16 :goto_b20

    .line 3945
    .end local v81    # "outerDepth":I
    .end local v82    # "installerPackageName":Ljava/lang/String;
    .end local v83    # "enabledStr":Ljava/lang/String;
    .end local v84    # "type":I
    .end local v85    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .end local v88    # "primaryCpuAbiString":Ljava/lang/String;
    .restart local v0    # "outerDepth":I
    .restart local v2    # "tagName":Ljava/lang/String;
    .restart local v3    # "installerPackageName":Ljava/lang/String;
    .restart local v4    # "enabledStr":Ljava/lang/String;
    .restart local v6    # "type":I
    .restart local v7    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .restart local v8    # "primaryCpuAbiString":Ljava/lang/String;
    :cond_9aa
    const/4 v5, 0x0

    const-string v5, "enabled-components"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9b8

    .line 3946
    const/4 v5, 0x0

    invoke-direct {v11, v1, v13, v5}, Lcom/android/server/pm/Settings;->readEnabledComponentsLPw(Lcom/android/server/pm/PackageSettingBase;Lorg/xmlpull/v1/XmlPullParser;I)V

    goto :goto_999

    .line 3947
    :cond_9b8
    const/4 v5, 0x0

    const-string/jumbo v5, "sigs"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9cc

    .line 3948
    iget-object v5, v1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    move/from16 v81, v0

    iget-object v0, v11, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    .line 3948
    .end local v0    # "outerDepth":I
    .restart local v81    # "outerDepth":I
    invoke-virtual {v5, v13, v0}, Lcom/android/server/pm/PackageSignatures;->readXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)V

    goto :goto_99b

    .line 3949
    .end local v81    # "outerDepth":I
    .restart local v0    # "outerDepth":I
    :cond_9cc
    move/from16 v81, v0

    .line 3949
    .end local v0    # "outerDepth":I
    .restart local v81    # "outerDepth":I
    const-string/jumbo v0, "perms"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9ee

    .line 3950
    nop

    .line 3951
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v0

    .line 3950
    invoke-virtual {v11, v13, v0}, Lcom/android/server/pm/Settings;->readInstallPermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/permission/PermissionsState;)V

    .line 3952
    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/android/server/pm/PackageSetting;->installPermissionsFixed:Z

    .line 3990
    move-object/from16 v82, v3

    move-object/from16 v83, v4

    move v3, v5

    move/from16 v84, v6

    move-object/from16 v85, v7

    move-object/from16 v88, v8

    goto :goto_9a6

    .line 3953
    :cond_9ee
    const-string/jumbo v0, "proper-signing-keyset"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a4a

    .line 3954
    const-string v0, "identifier"

    const/4 v5, 0x0

    invoke-interface {v13, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v82, v3

    move-object/from16 v83, v4

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 3955
    .end local v4    # "enabledStr":Ljava/lang/String;
    .local v3, "id":J
    .restart local v82    # "installerPackageName":Ljava/lang/String;
    .restart local v83    # "enabledStr":Ljava/lang/String;
    iget-object v0, v11, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 3956
    .local v0, "refCt":Ljava/lang/Integer;
    if-eqz v0, :cond_a2f

    .line 3957
    iget-object v5, v11, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    move/from16 v84, v6

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 3957
    .end local v6    # "type":I
    .restart local v84    # "type":I
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move-object/from16 v86, v0

    move-object/from16 v85, v7

    const/4 v7, 0x1

    add-int/lit8 v0, v17, 0x1

    .line 3957
    .end local v0    # "refCt":Ljava/lang/Integer;
    .end local v7    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .restart local v85    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .local v86, "refCt":Ljava/lang/Integer;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a43

    .line 3959
    .end local v84    # "type":I
    .end local v85    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .end local v86    # "refCt":Ljava/lang/Integer;
    .restart local v0    # "refCt":Ljava/lang/Integer;
    .restart local v6    # "type":I
    .restart local v7    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    :cond_a2f
    move-object/from16 v86, v0

    move/from16 v84, v6

    move-object/from16 v85, v7

    const/4 v7, 0x1

    .line 3959
    .end local v0    # "refCt":Ljava/lang/Integer;
    .end local v6    # "type":I
    .end local v7    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .restart local v84    # "type":I
    .restart local v85    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .restart local v86    # "refCt":Ljava/lang/Integer;
    iget-object v0, v11, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3961
    :goto_a43
    iget-object v0, v1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v0, v3, v4}, Lcom/android/server/pm/PackageKeySetData;->setProperSigningKeySet(J)V

    .line 3962
    .end local v3    # "id":J
    .end local v86    # "refCt":Ljava/lang/Integer;
    goto/16 :goto_9a3

    .line 3962
    .end local v82    # "installerPackageName":Ljava/lang/String;
    .end local v83    # "enabledStr":Ljava/lang/String;
    .end local v84    # "type":I
    .end local v85    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .local v3, "installerPackageName":Ljava/lang/String;
    .restart local v4    # "enabledStr":Ljava/lang/String;
    .restart local v6    # "type":I
    .restart local v7    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    :cond_a4a
    move-object/from16 v82, v3

    move-object/from16 v83, v4

    move/from16 v84, v6

    move-object/from16 v85, v7

    .line 3962
    .end local v3    # "installerPackageName":Ljava/lang/String;
    .end local v4    # "enabledStr":Ljava/lang/String;
    .end local v6    # "type":I
    .end local v7    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .restart local v82    # "installerPackageName":Ljava/lang/String;
    .restart local v83    # "enabledStr":Ljava/lang/String;
    .restart local v84    # "type":I
    .restart local v85    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    const-string/jumbo v0, "signing-keyset"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a5d

    .line 3962
    .end local v2    # "tagName":Ljava/lang/String;
    goto/16 :goto_9a3

    .line 3964
    .restart local v2    # "tagName":Ljava/lang/String;
    :cond_a5d
    const-string/jumbo v0, "upgrade-keyset"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a78

    .line 3965
    const-string v0, "identifier"

    const/4 v3, 0x0

    invoke-interface {v13, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 3966
    .local v3, "id":J
    iget-object v0, v1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v0, v3, v4}, Lcom/android/server/pm/PackageKeySetData;->addUpgradeKeySetById(J)V

    .line 3967
    .end local v3    # "id":J
    goto/16 :goto_9a3

    :cond_a78
    const-string v0, "defined-keyset"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ad1

    .line 3968
    const-string v0, "identifier"

    const/4 v3, 0x0

    invoke-interface {v13, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 3969
    .local v4, "id":J
    const-string v0, "alias"

    invoke-interface {v13, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3970
    .local v0, "alias":Ljava/lang/String;
    iget-object v3, v11, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 3971
    .local v3, "refCt":Ljava/lang/Integer;
    if-eqz v3, :cond_ab8

    .line 3972
    iget-object v6, v11, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move-object/from16 v87, v3

    move-object/from16 v88, v8

    const/4 v3, 0x1

    add-int/lit8 v8, v17, 0x1

    .end local v3    # "refCt":Ljava/lang/Integer;
    .end local v8    # "primaryCpuAbiString":Ljava/lang/String;
    .local v87, "refCt":Ljava/lang/Integer;
    .restart local v88    # "primaryCpuAbiString":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_aca

    .line 3974
    .end local v87    # "refCt":Ljava/lang/Integer;
    .end local v88    # "primaryCpuAbiString":Ljava/lang/String;
    .restart local v3    # "refCt":Ljava/lang/Integer;
    .restart local v8    # "primaryCpuAbiString":Ljava/lang/String;
    :cond_ab8
    move-object/from16 v87, v3

    move-object/from16 v88, v8

    const/4 v3, 0x1

    .line 3974
    .end local v3    # "refCt":Ljava/lang/Integer;
    .end local v8    # "primaryCpuAbiString":Ljava/lang/String;
    .restart local v87    # "refCt":Ljava/lang/Integer;
    .restart local v88    # "primaryCpuAbiString":Ljava/lang/String;
    iget-object v6, v11, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3976
    :goto_aca
    iget-object v6, v1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v6, v4, v5, v0}, Lcom/android/server/pm/PackageKeySetData;->addDefinedKeySet(JLjava/lang/String;)V

    .line 3977
    .end local v0    # "alias":Ljava/lang/String;
    .end local v4    # "id":J
    .end local v87    # "refCt":Ljava/lang/Integer;
    goto/16 :goto_9a6

    .line 3977
    .end local v88    # "primaryCpuAbiString":Ljava/lang/String;
    .restart local v8    # "primaryCpuAbiString":Ljava/lang/String;
    :cond_ad1
    move-object/from16 v88, v8

    const/4 v3, 0x1

    .line 3977
    .end local v8    # "primaryCpuAbiString":Ljava/lang/String;
    .restart local v88    # "primaryCpuAbiString":Ljava/lang/String;
    const-string v0, "domain-verification"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ae1

    .line 3978
    invoke-direct {v11, v13, v1}, Lcom/android/server/pm/Settings;->readDomainVerificationLPw(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/PackageSettingBase;)V

    goto/16 :goto_9a6

    .line 3979
    :cond_ae1
    const-string v0, "child-package"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b03

    .line 3980
    const-string/jumbo v0, "name"

    const/4 v4, 0x0

    invoke-interface {v13, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3981
    .local v0, "childPackageName":Ljava/lang/String;
    iget-object v5, v1, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    if-nez v5, :cond_afc

    .line 3982
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v1, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    .line 3984
    :cond_afc
    iget-object v5, v1, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3985
    .end local v0    # "childPackageName":Ljava/lang/String;
    goto/16 :goto_9a7

    .line 3986
    :cond_b03
    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <package>: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3987
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3986
    const/4 v5, 0x5

    invoke-static {v5, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3988
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3990
    .end local v2    # "tagName":Ljava/lang/String;
    :goto_b20
    goto :goto_b2e

    .line 3933
    .end local v81    # "outerDepth":I
    .end local v82    # "installerPackageName":Ljava/lang/String;
    .end local v83    # "enabledStr":Ljava/lang/String;
    .end local v84    # "type":I
    .end local v85    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .end local v88    # "primaryCpuAbiString":Ljava/lang/String;
    .local v0, "outerDepth":I
    .local v3, "installerPackageName":Ljava/lang/String;
    .local v4, "enabledStr":Ljava/lang/String;
    .restart local v7    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .restart local v8    # "primaryCpuAbiString":Ljava/lang/String;
    :cond_b21
    move/from16 v81, v0

    move-object/from16 v82, v3

    move-object/from16 v83, v4

    move-object/from16 v85, v7

    move-object/from16 v88, v8

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x5

    .line 3933
    .end local v0    # "outerDepth":I
    .end local v3    # "installerPackageName":Ljava/lang/String;
    .end local v4    # "enabledStr":Ljava/lang/String;
    .end local v7    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .end local v8    # "primaryCpuAbiString":Ljava/lang/String;
    .restart local v81    # "outerDepth":I
    .restart local v82    # "installerPackageName":Ljava/lang/String;
    .restart local v83    # "enabledStr":Ljava/lang/String;
    .restart local v85    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .restart local v88    # "primaryCpuAbiString":Ljava/lang/String;
    :goto_b2e
    move/from16 v0, v81

    move-object/from16 v3, v82

    move-object/from16 v4, v83

    move-object/from16 v7, v85

    move-object/from16 v8, v88

    const/4 v5, 0x0

    goto/16 :goto_95a

    .line 3991
    .end local v81    # "outerDepth":I
    .end local v82    # "installerPackageName":Ljava/lang/String;
    .end local v83    # "enabledStr":Ljava/lang/String;
    .end local v85    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .end local v88    # "primaryCpuAbiString":Ljava/lang/String;
    .restart local v3    # "installerPackageName":Ljava/lang/String;
    .restart local v7    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .restart local v8    # "primaryCpuAbiString":Ljava/lang/String;
    :cond_b3b
    move-object/from16 v82, v3

    move-object/from16 v85, v7

    move-object/from16 v88, v8

    .line 3991
    .end local v3    # "installerPackageName":Ljava/lang/String;
    .end local v7    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .end local v8    # "primaryCpuAbiString":Ljava/lang/String;
    .restart local v82    # "installerPackageName":Ljava/lang/String;
    .restart local v85    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .restart local v88    # "primaryCpuAbiString":Ljava/lang/String;
    :goto_b41
    goto :goto_b55

    .line 3992
    .end local v77    # "uidError":Ljava/lang/String;
    .end local v78    # "isOrphaned":Ljava/lang/String;
    .end local v79    # "volumeUuid":Ljava/lang/String;
    .end local v80    # "categoryHint":I
    .end local v82    # "installerPackageName":Ljava/lang/String;
    .end local v85    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .end local v88    # "primaryCpuAbiString":Ljava/lang/String;
    .local v2, "uidError":Ljava/lang/String;
    .restart local v3    # "installerPackageName":Ljava/lang/String;
    .local v4, "isOrphaned":Ljava/lang/String;
    .restart local v5    # "volumeUuid":Ljava/lang/String;
    .local v6, "categoryHint":I
    .restart local v7    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .restart local v8    # "primaryCpuAbiString":Ljava/lang/String;
    :cond_b42
    move-object/from16 v13, p1

    move-object/from16 v77, v2

    move-object/from16 v82, v3

    move-object/from16 v78, v4

    move-object/from16 v79, v5

    move/from16 v80, v6

    move-object/from16 v85, v7

    move-object/from16 v88, v8

    .end local v2    # "uidError":Ljava/lang/String;
    .end local v3    # "installerPackageName":Ljava/lang/String;
    .end local v4    # "isOrphaned":Ljava/lang/String;
    .end local v5    # "volumeUuid":Ljava/lang/String;
    .end local v6    # "categoryHint":I
    .end local v7    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .end local v8    # "primaryCpuAbiString":Ljava/lang/String;
    .restart local v77    # "uidError":Ljava/lang/String;
    .restart local v78    # "isOrphaned":Ljava/lang/String;
    .restart local v79    # "volumeUuid":Ljava/lang/String;
    .restart local v80    # "categoryHint":I
    .restart local v82    # "installerPackageName":Ljava/lang/String;
    .restart local v85    # "legacyNativeLibraryPathStr":Ljava/lang/String;
    .restart local v88    # "primaryCpuAbiString":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3994
    :goto_b55
    return-void
.end method

.method private readPersistentPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    .registers 9
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1481
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1483
    .local v0, "outerDepth":I
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .line 1483
    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_52

    const/4 v1, 0x3

    if-ne v2, v1, :cond_15

    .line 1484
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_52

    .line 1485
    :cond_15
    if-eq v2, v1, :cond_4

    const/4 v1, 0x4

    if-ne v2, v1, :cond_1b

    .line 1486
    goto :goto_4

    .line 1488
    :cond_1b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1489
    .local v1, "tagName":Ljava/lang/String;
    const-string/jumbo v3, "item"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 1490
    new-instance v3, Lcom/android/server/pm/PersistentPreferredActivity;

    invoke-direct {v3, p1}, Lcom/android/server/pm/PersistentPreferredActivity;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1491
    .local v3, "ppa":Lcom/android/server/pm/PersistentPreferredActivity;
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->editPersistentPreferredActivitiesLPw(I)Lcom/android/server/pm/PersistentPreferredIntentResolver;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/pm/PersistentPreferredIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    .line 1492
    .end local v3    # "ppa":Lcom/android/server/pm/PersistentPreferredActivity;
    goto :goto_51

    .line 1493
    :cond_35
    const/4 v3, 0x5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <persistent-preferred-activities>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1495
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1493
    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1496
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1498
    .end local v1    # "tagName":Ljava/lang/String;
    :goto_51
    goto :goto_4

    .line 1499
    :cond_52
    return-void
.end method

.method private readRestoredIntentFilterVerifications(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1534
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1536
    .local v0, "outerDepth":I
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_50

    const/4 v1, 0x3

    if-ne v2, v1, :cond_15

    .line 1537
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_50

    .line 1538
    :cond_15
    if-eq v2, v1, :cond_4

    const/4 v1, 0x4

    if-ne v2, v1, :cond_1b

    .line 1539
    goto :goto_4

    .line 1541
    :cond_1b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1542
    .local v1, "tagName":Ljava/lang/String;
    const-string v3, "domain-verification"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 1543
    new-instance v3, Landroid/content/pm/IntentFilterVerificationInfo;

    invoke-direct {v3, p1}, Landroid/content/pm/IntentFilterVerificationInfo;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1548
    .local v3, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/content/pm/IntentFilterVerificationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1549
    .end local v3    # "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    goto :goto_4f

    .line 1550
    :cond_36
    const-string v3, "PackageSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1553
    .end local v1    # "tagName":Ljava/lang/String;
    :goto_4f
    goto :goto_4

    .line 1554
    :cond_50
    return-void
.end method

.method private readSharedUserLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 13
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 4053
    const/4 v0, 0x0

    .line 4054
    .local v0, "name":Ljava/lang/String;
    const/4 v1, 0x0

    .line 4055
    .local v1, "idStr":Ljava/lang/String;
    const/4 v2, 0x0

    .line 4056
    .local v2, "pkgFlags":I
    const/4 v3, 0x0

    .line 4057
    .local v3, "pkgPrivateFlags":I
    const/4 v4, 0x0

    move-object v5, v4

    .line 4059
    .local v5, "su":Lcom/android/server/pm/SharedUserSetting;
    const/4 v6, 0x5

    :try_start_7
    const-string/jumbo v7, "name"

    invoke-interface {p1, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    .line 4060
    const-string/jumbo v7, "userId"

    invoke-interface {p1, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v1, v7

    .line 4061
    if-eqz v1, :cond_1e

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    goto :goto_1f

    :cond_1e
    const/4 v7, 0x0

    .line 4062
    .local v7, "userId":I
    :goto_1f
    const-string/jumbo v8, "true"

    const-string/jumbo v9, "system"

    invoke-interface {p1, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 4063
    or-int/lit8 v2, v2, 0x1

    .line 4065
    :cond_31
    if-nez v0, :cond_4c

    .line 4066
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error in package manager settings: <shared-user> has no name at "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4068
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4066
    invoke-static {v6, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_9b

    .line 4069
    :cond_4c
    if-nez v7, :cond_77

    .line 4070
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error in package manager settings: shared-user "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " has bad userId "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " at "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4073
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4070
    invoke-static {v6, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_9b

    .line 4075
    :cond_77
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v7, v2, v3}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v4

    move-object v5, v4

    if-nez v4, :cond_9b

    .line 4077
    const/4 v4, 0x6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Occurred while parsing settings at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4079
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 4078
    invoke-static {v4, v8}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_9b
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_9b} :catch_9c

    .line 4086
    .end local v7    # "userId":I
    :cond_9b
    :goto_9b
    goto :goto_c5

    .line 4082
    :catch_9c
    move-exception v4

    .line 4083
    .local v4, "e":Ljava/lang/NumberFormatException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error in package manager settings: package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " has bad userId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4085
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4083
    invoke-static {v6, v7}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 4088
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :goto_c5
    if-eqz v5, :cond_125

    .line 4089
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    .line 4091
    .local v4, "outerDepth":I
    :cond_cb
    :goto_cb
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    move v8, v7

    .line 4091
    .local v8, "type":I
    const/4 v9, 0x1

    if-eq v7, v9, :cond_124

    const/4 v7, 0x3

    if-ne v8, v7, :cond_dc

    .line 4092
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v4, :cond_124

    .line 4093
    :cond_dc
    if-eq v8, v7, :cond_cb

    const/4 v7, 0x4

    if-ne v8, v7, :cond_e2

    .line 4094
    goto :goto_cb

    .line 4097
    :cond_e2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 4098
    .local v7, "tagName":Ljava/lang/String;
    const-string/jumbo v9, "sigs"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f7

    .line 4099
    iget-object v9, v5, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v10, p0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    invoke-virtual {v9, p1, v10}, Lcom/android/server/pm/PackageSignatures;->readXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)V

    goto :goto_123

    .line 4100
    :cond_f7
    const-string/jumbo v9, "perms"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_108

    .line 4101
    invoke-virtual {v5}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v9

    invoke-virtual {p0, p1, v9}, Lcom/android/server/pm/Settings;->readInstallPermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/permission/PermissionsState;)V

    goto :goto_123

    .line 4103
    :cond_108
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown element under <shared-user>: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4104
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 4103
    invoke-static {v6, v9}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 4105
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4107
    .end local v7    # "tagName":Ljava/lang/String;
    :goto_123
    goto :goto_cb

    .line 4108
    .end local v4    # "outerDepth":I
    .end local v8    # "type":I
    :cond_124
    goto :goto_128

    .line 4109
    :cond_125
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4111
    :goto_128
    return-void
.end method

.method private removeInstallerPackageStatus(Ljava/lang/String;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1113
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1114
    return-void

    .line 1116
    :cond_9
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_30

    .line 1117
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 1118
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1119
    .local v2, "installerPackageName":Ljava/lang/String;
    if-eqz v2, :cond_2d

    .line 1120
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 1121
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/server/pm/PackageSetting;->setInstallerPackageName(Ljava/lang/String;)V

    .line 1122
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/server/pm/PackageSetting;->isOrphaned:Z

    .line 1116
    .end local v1    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v2    # "installerPackageName":Ljava/lang/String;
    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1125
    .end local v0    # "i":I
    :cond_30
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1126
    return-void
.end method

.method private removeUserIdLPw(I)V
    .registers 6
    .param p1, "uid"    # I

    .line 1183
    const/16 v0, 0x2710

    if-lt p1, v0, :cond_15

    .line 1184
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1185
    .local v0, "N":I
    add-int/lit16 v1, p1, -0x2710

    .line 1186
    .local v1, "index":I
    if-ge v1, v0, :cond_14

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1187
    .end local v0    # "N":I
    .end local v1    # "index":I
    :cond_14
    goto :goto_1a

    .line 1188
    :cond_15
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mOtherUserIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1190
    :goto_1a
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/pm/Settings;->setFirstAvailableUid(I)V

    .line 1191
    return-void
.end method

.method private replacePackageLPw(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "newp"    # Lcom/android/server/pm/PackageSetting;

    .line 1129
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 1130
    .local v0, "p":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_1e

    .line 1131
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v1, :cond_19

    .line 1132
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/SharedUserSetting;->removePackage(Lcom/android/server/pm/PackageSetting;)V

    .line 1133
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v1, p2}, Lcom/android/server/pm/SharedUserSetting;->addPackage(Lcom/android/server/pm/PackageSetting;)V

    goto :goto_1e

    .line 1135
    :cond_19
    iget v1, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-direct {p0, v1, p2}, Lcom/android/server/pm/Settings;->replaceUserIdLPw(ILjava/lang/Object;)V

    .line 1138
    :cond_1e
    :goto_1e
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1139
    return-void
.end method

.method private replaceUserIdLPw(ILjava/lang/Object;)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 1194
    const/16 v0, 0x2710

    if-lt p1, v0, :cond_14

    .line 1195
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1196
    .local v0, "N":I
    add-int/lit16 v1, p1, -0x2710

    .line 1197
    .local v1, "index":I
    if-ge v1, v0, :cond_13

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1198
    .end local v0    # "N":I
    .end local v1    # "index":I
    :cond_13
    goto :goto_19

    .line 1199
    :cond_14
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mOtherUserIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1201
    :goto_19
    return-void
.end method

.method private setFirstAvailableUid(I)V
    .registers 3
    .param p1, "uid"    # I

    .line 4225
    sget v0, Lcom/android/server/pm/Settings;->mFirstAvailableUid:I

    if-le p1, v0, :cond_6

    .line 4226
    sput p1, Lcom/android/server/pm/Settings;->mFirstAvailableUid:I

    .line 4228
    :cond_6
    return-void
.end method

.method static updatePackageSetting(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Lcom/android/server/pm/UserManagerService;[Ljava/lang/String;[J)V
    .registers 29
    .param p0, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p1, "disabledPkg"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "sharedUser"    # Lcom/android/server/pm/SharedUserSetting;
    .param p3, "codePath"    # Ljava/io/File;
    .param p4, "resourcePath"    # Ljava/io/File;
    .param p5, "legacyNativeLibraryPath"    # Ljava/lang/String;
    .param p6, "primaryCpuAbi"    # Ljava/lang/String;
    .param p7, "secondaryCpuAbi"    # Ljava/lang/String;
    .param p8, "pkgFlags"    # I
    .param p9, "pkgPrivateFlags"    # I
    .param p11, "userManager"    # Lcom/android/server/pm/UserManagerService;
    .param p12, "usesStaticLibraries"    # [Ljava/lang/String;
    .param p13, "usesStaticLibrariesVersions"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageSetting;",
            "Lcom/android/server/pm/PackageSetting;",
            "Lcom/android/server/pm/SharedUserSetting;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/UserManagerService;",
            "[",
            "Ljava/lang/String;",
            "[J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .local p10, "childPkgNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p10

    move-object/from16 v5, p12

    .line 798
    move-object/from16 v6, p13

    iget-object v7, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    .line 799
    .local v7, "pkgName":Ljava/lang/String;
    iget-object v8, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eq v8, v1, :cond_67

    .line 800
    const/4 v8, 0x5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " shared user changed from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 802
    iget-object v10, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v10, :cond_2f

    iget-object v10, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v10, v10, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    goto :goto_31

    :cond_2f
    const-string v10, "<nothing>"

    :goto_31
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    if-eqz v1, :cond_3e

    iget-object v10, v1, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    goto :goto_40

    :cond_3e
    const-string v10, "<nothing>"

    :goto_40
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 800
    invoke-static {v8, v9}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 804
    new-instance v8, Lcom/android/server/pm/PackageManagerException;

    const/4 v9, -0x8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Updating application package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " failed"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v8

    .line 808
    :cond_67
    iget-object v8, v0, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    invoke-virtual {v8, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_eb

    .line 809
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v8

    .line 810
    .local v8, "isSystem":Z
    const-string v9, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Update"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 811
    if-eqz v8, :cond_84

    const-string v11, " system"

    goto :goto_86

    :cond_84
    const-string v11, ""

    :goto_86
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " code path from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "; Retain data and using new"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 810
    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    if-nez v8, :cond_e0

    .line 820
    and-int/lit8 v9, p8, 0x1

    if-eqz v9, :cond_db

    if-nez p1, :cond_db

    .line 821
    invoke-static/range {p11 .. p11}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v10

    .line 822
    .local v10, "allUserInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v10, :cond_db

    .line 823
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_c5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_db

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/UserInfo;

    .line 824
    .local v12, "userInfo":Landroid/content/pm/UserInfo;
    iget v13, v12, Landroid/content/pm/UserInfo;->id:I

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v13}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 825
    .end local v12    # "userInfo":Landroid/content/pm/UserInfo;
    nop

    .line 823
    move-object/from16 v1, p2

    goto :goto_c5

    .line 832
    .end local v10    # "allUserInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_db
    move-object/from16 v1, p5

    iput-object v1, v0, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    goto :goto_e2

    .line 834
    :cond_e0
    move-object/from16 v1, p5

    :goto_e2
    iput-object v2, v0, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    .line 835
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    .end local v8    # "isSystem":Z
    goto :goto_ed

    .line 837
    :cond_eb
    move-object/from16 v1, p5

    :goto_ed
    iget-object v8, v0, Lcom/android/server/pm/PackageSetting;->resourcePath:Ljava/io/File;

    invoke-virtual {v8, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_141

    .line 838
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v8

    .line 839
    .restart local v8    # "isSystem":Z
    const-string v10, "PackageManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Update"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 840
    if-eqz v8, :cond_10a

    const-string v12, " system"

    goto :goto_10c

    :cond_10a
    const-string v12, ""

    :goto_10c
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " package "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " resource path from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 843
    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "; Retain data and using new"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 839
    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    iput-object v3, v0, Lcom/android/server/pm/PackageSetting;->resourcePath:Ljava/io/File;

    .line 846
    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    .line 851
    .end local v8    # "isSystem":Z
    :cond_141
    iget v8, v0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/lit8 v8, v8, -0x2

    iput v8, v0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    .line 852
    iget v8, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    const v10, -0xe0009

    and-int/2addr v8, v10

    iput v8, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    .line 856
    iget v8, v0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/lit8 v10, p8, 0x1

    or-int/2addr v8, v10

    iput v8, v0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    .line 857
    iget v8, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    and-int/lit8 v10, p9, 0x8

    or-int/2addr v8, v10

    iput v8, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    .line 859
    iget v8, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    const/high16 v10, 0x20000

    and-int v10, p9, v10

    or-int/2addr v8, v10

    iput v8, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    .line 861
    iget v8, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    const/high16 v10, 0x40000

    and-int v10, p9, v10

    or-int/2addr v8, v10

    iput v8, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    .line 863
    iget v8, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    const/high16 v10, 0x80000

    and-int v10, p9, v10

    or-int/2addr v8, v10

    iput v8, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    .line 865
    move-object/from16 v8, p6

    iput-object v8, v0, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    .line 866
    move-object/from16 v10, p7

    iput-object v10, v0, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    .line 867
    if-eqz v4, :cond_189

    .line 868
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v11, v0, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    .line 871
    :cond_189
    if-eqz v5, :cond_196

    if-eqz v6, :cond_196

    array-length v11, v5

    array-length v12, v6

    if-ne v11, v12, :cond_196

    .line 873
    iput-object v5, v0, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    .line 874
    iput-object v6, v0, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    goto :goto_19b

    .line 876
    :cond_196
    const/4 v11, 0x0

    iput-object v11, v0, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    .line 877
    iput-object v11, v0, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    .line 879
    :goto_19b
    return-void
.end method

.method private writeIntToFile(Ljava/io/File;I)V
    .registers 7
    .param p1, "file"    # Ljava/io/File;
    .param p2, "value"    # I

    .line 2727
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 2728
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 2727
    invoke-static {v0, v1}, Landroid/os/FileUtils;->bytesToFile(Ljava/lang/String;[B)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_11} :catch_12

    .line 2731
    goto :goto_35

    .line 2729
    :catch_12
    move-exception v0

    .line 2730
    .local v0, "ignored":Ljava/io/IOException;
    const-string v1, "PackageSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t write "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2732
    .end local v0    # "ignored":Ljava/io/IOException;
    :goto_35
    return-void
.end method

.method private writeKernelRemoveUserLPr(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 2640
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    if-nez v0, :cond_5

    return-void

    .line 2642
    :cond_5
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    const-string/jumbo v2, "remove_userid"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2645
    .local v0, "removeUserIdFile":Ljava/io/File;
    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/Settings;->writeIntToFile(Ljava/io/File;I)V

    .line 2646
    return-void
.end method


# virtual methods
.method addAppOpPackage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 620
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionSettings;->addAppOpPackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    return-void
.end method

.method addPackageLPw(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJIILjava/lang/String;Ljava/util/List;[Ljava/lang/String;[J)Lcom/android/server/pm/PackageSetting;
    .registers 41
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "realName"    # Ljava/lang/String;
    .param p3, "codePath"    # Ljava/io/File;
    .param p4, "resourcePath"    # Ljava/io/File;
    .param p5, "legacyNativeLibraryPathString"    # Ljava/lang/String;
    .param p6, "primaryCpuAbiString"    # Ljava/lang/String;
    .param p7, "secondaryCpuAbiString"    # Ljava/lang/String;
    .param p8, "cpuAbiOverrideString"    # Ljava/lang/String;
    .param p9, "uid"    # I
    .param p10, "vc"    # J
    .param p12, "pkgFlags"    # I
    .param p13, "pkgPrivateFlags"    # I
    .param p14, "parentPackageName"    # Ljava/lang/String;
    .param p16, "usesStaticLibraries"    # [Ljava/lang/String;
    .param p17, "usesStaticLibraryNames"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJII",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "[J)",
            "Lcom/android/server/pm/PackageSetting;"
        }
    .end annotation

    .local p15, "childPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v15, p1

    move/from16 v14, p9

    .line 598
    iget-object v1, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/android/server/pm/PackageSetting;

    .line 599
    .local v13, "p":Lcom/android/server/pm/PackageSetting;
    const/16 v19, 0x0

    if-eqz v13, :cond_2e

    .line 600
    iget v1, v13, Lcom/android/server/pm/PackageSetting;->appId:I

    if-ne v1, v14, :cond_18

    .line 601
    return-object v13

    .line 603
    :cond_18
    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding duplicate package, keeping first: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 605
    return-object v19

    .line 607
    :cond_2e
    new-instance v20, Lcom/android/server/pm/PackageSetting;

    const/16 v16, 0x0

    move-object/from16 v1, v20

    move-object v2, v15

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-wide/from16 v10, p10

    move/from16 v12, p12

    move-object/from16 v21, v13

    move/from16 v13, p13

    .end local v13    # "p":Lcom/android/server/pm/PackageSetting;
    .local v21, "p":Lcom/android/server/pm/PackageSetting;
    move v0, v14

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    invoke-direct/range {v1 .. v18}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/util/List;I[Ljava/lang/String;[J)V

    .line 611
    .end local v21    # "p":Lcom/android/server/pm/PackageSetting;
    .local v1, "p":Lcom/android/server/pm/PackageSetting;
    iput v0, v1, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 612
    move v3, v0

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/pm/Settings;->addUserIdLPw(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 613
    iget-object v4, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    return-object v1

    .line 616
    :cond_6a
    return-object v19
.end method

.method addPackageToCleanLPw(Landroid/content/pm/PackageCleanItem;)V
    .registers 3
    .param p1, "pkg"    # Landroid/content/pm/PackageCleanItem;

    .line 2989
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 2990
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2992
    :cond_d
    return-void
.end method

.method addRenamedPackageLPw(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "origPkgName"    # Ljava/lang/String;

    .line 461
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "pkgFlags"    # I
    .param p4, "pkgPrivateFlags"    # I

    .line 624
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/SharedUserSetting;

    .line 625
    .local v0, "s":Lcom/android/server/pm/SharedUserSetting;
    const/4 v1, 0x0

    if-eqz v0, :cond_26

    .line 626
    iget v2, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    if-ne v2, p2, :cond_10

    .line 627
    return-object v0

    .line 629
    :cond_10
    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding duplicate shared user, keeping first: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 631
    return-object v1

    .line 633
    :cond_26
    new-instance v2, Lcom/android/server/pm/SharedUserSetting;

    invoke-direct {v2, p1, p3, p4}, Lcom/android/server/pm/SharedUserSetting;-><init>(Ljava/lang/String;II)V

    move-object v0, v2

    .line 634
    iput p2, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    .line 635
    invoke-direct {p0, p2, v0, p1}, Lcom/android/server/pm/Settings;->addUserIdLPw(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 636
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    return-object v0

    .line 639
    :cond_3a
    return-object v1
.end method

.method addUserToSettingLPw(Lcom/android/server/pm/PackageSetting;)V
    .registers 6
    .param p1, "p"    # Lcom/android/server/pm/PackageSetting;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 886
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    if-nez v0, :cond_b

    .line 888
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->newUserIdLPw(Ljava/lang/Object;)I

    move-result v0

    iput v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    goto :goto_12

    .line 891
    :cond_b
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/pm/Settings;->addUserIdLPw(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 893
    :goto_12
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    if-ltz v0, :cond_17

    .line 899
    return-void

    .line 894
    :cond_17
    const/4 v0, 0x5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " could not be assigned a valid UID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 896
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/4 v1, -0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " could not be assigned a valid UID"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method applyDefaultPreferredAppsLPw(Lcom/android/server/pm/PackageManagerService;I)V
    .registers 15
    .param p1, "service"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "userId"    # I

    .line 3249
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 3250
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    iget v4, v1, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_49

    iget-object v3, v1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v3, :cond_49

    iget-object v3, v1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    if-eqz v3, :cond_49

    .line 3252
    iget-object v3, v1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    .line 3254
    .local v3, "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    nop

    .line 3254
    .local v2, "i":I
    :goto_2c
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_49

    .line 3255
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 3256
    .local v4, "aii":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    iget-object v7, v4, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v7, v7, Landroid/content/pm/PackageParser$Activity;->className:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v4, v5, p2}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V

    .line 3254
    .end local v4    # "aii":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 3260
    .end local v1    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v2    # "i":I
    .end local v3    # "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    :cond_49
    goto :goto_a

    .line 3263
    :cond_4a
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    const-string v4, "etc/preferred-apps"

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3264
    .local v0, "preferredDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1a3

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_63

    goto/16 :goto_1a3

    .line 3267
    :cond_63
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_85

    .line 3268
    const-string v1, "PackageSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Directory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " cannot be read"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3269
    return-void

    .line 3273
    :cond_85
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v4, v1

    :goto_8a
    if-ge v2, v4, :cond_1a2

    aget-object v5, v1, v2

    .line 3274
    .local v5, "f":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".xml"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_bf

    .line 3275
    const-string v6, "PackageSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Non-xml file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " directory, ignoring"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3276
    goto/16 :goto_196

    .line 3278
    :cond_bf
    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v6

    if-nez v6, :cond_e2

    .line 3279
    const-string v6, "PackageSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Preferred apps file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " cannot be read"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3280
    goto/16 :goto_196

    .line 3284
    :cond_e2
    const/4 v6, 0x0

    move-object v7, v6

    .line 3286
    .local v7, "str":Ljava/io/InputStream;
    :try_start_e4
    new-instance v8, Ljava/io/BufferedInputStream;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v7, v8

    .line 3287
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    .line 3288
    .local v8, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v8, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 3291
    :goto_f6
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    move v9, v6

    .line 3291
    .local v9, "type":I
    const/4 v10, 0x2

    if-eq v6, v10, :cond_101

    if-eq v9, v3, :cond_101

    .line 3291
    .end local v9    # "type":I
    goto :goto_f6

    .line 3296
    .restart local v9    # "type":I
    :cond_101
    if-eq v9, v10, :cond_123

    .line 3297
    const-string v6, "PackageSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Preferred apps file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " does not have start tag"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e4 .. :try_end_11e} :catch_177
    .catch Ljava/io/IOException; {:try_start_e4 .. :try_end_11e} :catch_15a
    .catchall {:try_start_e4 .. :try_end_11e} :catchall_158

    .line 3311
    nop

    .line 3313
    :try_start_11f
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_122
    .catch Ljava/io/IOException; {:try_start_11f .. :try_end_122} :catch_194

    goto :goto_193

    .line 3300
    :cond_123
    :try_start_123
    const-string/jumbo v6, "preferred-activities"

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_150

    .line 3301
    const-string v6, "PackageSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Preferred apps file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " does not start with \'preferred-activities\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_123 .. :try_end_14b} :catch_177
    .catch Ljava/io/IOException; {:try_start_123 .. :try_end_14b} :catch_15a
    .catchall {:try_start_123 .. :try_end_14b} :catchall_158

    .line 3311
    nop

    .line 3313
    :try_start_14c
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_14f
    .catch Ljava/io/IOException; {:try_start_14c .. :try_end_14f} :catch_194

    goto :goto_193

    .line 3305
    :cond_150
    :try_start_150
    invoke-direct {p0, p1, v8, p2}, Lcom/android/server/pm/Settings;->readDefaultPreferredActivitiesLPw(Lcom/android/server/pm/PackageManagerService;Lorg/xmlpull/v1/XmlPullParser;I)V
    :try_end_153
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_150 .. :try_end_153} :catch_177
    .catch Ljava/io/IOException; {:try_start_150 .. :try_end_153} :catch_15a
    .catchall {:try_start_150 .. :try_end_153} :catchall_158

    .line 3311
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v9    # "type":I
    nop

    .line 3313
    :try_start_154
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_157
    .catch Ljava/io/IOException; {:try_start_154 .. :try_end_157} :catch_194

    goto :goto_193

    .line 3311
    :catchall_158
    move-exception v1

    goto :goto_19a

    .line 3308
    :catch_15a
    move-exception v6

    .line 3309
    .local v6, "e":Ljava/io/IOException;
    :try_start_15b
    const-string v8, "PackageSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error reading apps file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_171
    .catchall {:try_start_15b .. :try_end_171} :catchall_158

    .line 3311
    .end local v6    # "e":Ljava/io/IOException;
    if-eqz v7, :cond_196

    .line 3313
    :try_start_173
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_176
    .catch Ljava/io/IOException; {:try_start_173 .. :try_end_176} :catch_194

    goto :goto_193

    .line 3306
    :catch_177
    move-exception v6

    .line 3307
    .local v6, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_178
    const-string v8, "PackageSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error reading apps file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_18e
    .catchall {:try_start_178 .. :try_end_18e} :catchall_158

    .line 3311
    .end local v6    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-eqz v7, :cond_196

    .line 3313
    :try_start_190
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_193
    .catch Ljava/io/IOException; {:try_start_190 .. :try_end_193} :catch_194

    .line 3315
    .end local v5    # "f":Ljava/io/File;
    .end local v7    # "str":Ljava/io/InputStream;
    :goto_193
    goto :goto_196

    .line 3314
    .restart local v5    # "f":Ljava/io/File;
    .restart local v7    # "str":Ljava/io/InputStream;
    :catch_194
    move-exception v6

    goto :goto_193

    .line 3273
    .end local v5    # "f":Ljava/io/File;
    .end local v7    # "str":Ljava/io/InputStream;
    :cond_196
    :goto_196
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_8a

    .line 3311
    .restart local v5    # "f":Ljava/io/File;
    .restart local v7    # "str":Ljava/io/InputStream;
    :goto_19a
    if-eqz v7, :cond_1a1

    .line 3313
    :try_start_19c
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_19f
    .catch Ljava/io/IOException; {:try_start_19c .. :try_end_19f} :catch_1a0

    .line 3315
    goto :goto_1a1

    .line 3314
    :catch_1a0
    move-exception v2

    .line 3315
    :cond_1a1
    :goto_1a1
    throw v1

    .line 3319
    .end local v5    # "f":Ljava/io/File;
    .end local v7    # "str":Ljava/io/InputStream;
    :cond_1a2
    return-void

    .line 3265
    :cond_1a3
    :goto_1a3
    return-void
.end method

.method applyPendingPermissionGrantsLPw(Ljava/lang/String;I)V
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 465
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRestoredUserGrants:Landroid/util/SparseArray;

    .line 466
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 467
    .local v0, "grantsByPackage":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Lcom/android/server/pm/Settings$RestoredPermissionGrant;>;>;"
    if-eqz v0, :cond_84

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-nez v1, :cond_12

    goto/16 :goto_84

    .line 471
    :cond_12
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 472
    .local v1, "grants":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/Settings$RestoredPermissionGrant;>;"
    if-eqz v1, :cond_83

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-nez v2, :cond_21

    goto :goto_83

    .line 476
    :cond_21
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 477
    .local v2, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v2, :cond_42

    .line 478
    const-string v3, "PackageSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t find supposedly installed package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    return-void

    .line 481
    :cond_42
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v3

    .line 483
    .local v3, "perms":Lcom/android/server/pm/permission/PermissionsState;
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/Settings$RestoredPermissionGrant;

    .line 484
    .local v5, "grant":Lcom/android/server/pm/Settings$RestoredPermissionGrant;
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v7, v5, Lcom/android/server/pm/Settings$RestoredPermissionGrant;->permissionName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/server/pm/permission/PermissionSettings;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v6

    .line 485
    .local v6, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v6, :cond_6e

    .line 486
    iget-boolean v7, v5, Lcom/android/server/pm/Settings$RestoredPermissionGrant;->granted:Z

    if-eqz v7, :cond_67

    .line 487
    invoke-virtual {v3, v6, p2}, Lcom/android/server/pm/permission/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    .line 489
    :cond_67
    const/16 v7, 0xb

    iget v8, v5, Lcom/android/server/pm/Settings$RestoredPermissionGrant;->grantBits:I

    invoke-virtual {v3, v6, p2, v7, v8}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 491
    .end local v5    # "grant":Lcom/android/server/pm/Settings$RestoredPermissionGrant;
    .end local v6    # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_6e
    goto :goto_4a

    .line 494
    :cond_6f
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_7e

    .line 496
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mRestoredUserGrants:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 498
    :cond_7e
    const/4 v4, 0x0

    invoke-virtual {p0, p2, v4}, Lcom/android/server/pm/Settings;->writeRuntimePermissionsForUserLPr(IZ)V

    .line 499
    return-void

    .line 473
    .end local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v3    # "perms":Lcom/android/server/pm/permission/PermissionsState;
    :cond_83
    :goto_83
    return-void

    .line 468
    .end local v1    # "grants":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/Settings$RestoredPermissionGrant;>;"
    :cond_84
    :goto_84
    return-void
.end method

.method areDefaultRuntimePermissionsGrantedLPr(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 1414
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    .line 1415
    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->areDefaultRuntimPermissionsGrantedLPr(I)Z

    move-result v0

    .line 1414
    return v0
.end method

.method public canPropagatePermissionToInstantApp(Ljava/lang/String;)Z
    .registers 3
    .param p1, "permName"    # Ljava/lang/String;

    .line 502
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/PermissionSettings;->canPropagatePermissionToInstantApp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method createIntentFilterVerificationIfNeededLPw(Ljava/lang/String;Landroid/util/ArraySet;)Landroid/content/pm/IntentFilterVerificationInfo;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/pm/IntentFilterVerificationInfo;"
        }
    .end annotation

    .line 1250
    .local p2, "domains":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 1251
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_c

    .line 1255
    const/4 v1, 0x0

    return-object v1

    .line 1257
    :cond_c
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getIntentFilterVerificationInfo()Landroid/content/pm/IntentFilterVerificationInfo;

    move-result-object v1

    .line 1258
    .local v1, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    if-nez v1, :cond_1c

    .line 1259
    new-instance v2, Landroid/content/pm/IntentFilterVerificationInfo;

    invoke-direct {v2, p1, p2}, Landroid/content/pm/IntentFilterVerificationInfo;-><init>(Ljava/lang/String;Landroid/util/ArraySet;)V

    move-object v1, v2

    .line 1260
    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageSetting;->setIntentFilterVerificationInfo(Landroid/content/pm/IntentFilterVerificationInfo;)V

    goto :goto_1f

    .line 1266
    :cond_1c
    invoke-virtual {v1, p2}, Landroid/content/pm/IntentFilterVerificationInfo;->setDomains(Landroid/util/ArraySet;)V

    .line 1273
    :goto_1f
    return-object v1
.end method

.method createNewUserLI(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Installer;I[Ljava/lang/String;)V
    .registers 26
    .param p1, "service"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "installer"    # Lcom/android/server/pm/Installer;
    .param p3, "userHandle"    # I
    .param p4, "disallowedPackages"    # [Ljava/lang/String;

    move-object/from16 v1, p0

    move/from16 v10, p3

    .line 4121
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 4122
    :try_start_7
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 4123
    .local v0, "packages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/PackageSetting;>;"
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    .line 4124
    .local v3, "packagesCount":I
    new-array v4, v3, [Ljava/lang/String;

    .line 4125
    .local v4, "volumeUuids":[Ljava/lang/String;
    new-array v5, v3, [Ljava/lang/String;

    .line 4126
    .local v5, "names":[Ljava/lang/String;
    new-array v6, v3, [I

    .line 4127
    .local v6, "appIds":[I
    new-array v7, v3, [Ljava/lang/String;

    .line 4128
    .local v7, "seinfos":[Ljava/lang/String;
    new-array v8, v3, [I

    .line 4129
    .local v8, "targetSdkVersions":[I
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_d9

    .line 4130
    .local v9, "packagesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/PackageSetting;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_20
    if-ge v12, v3, :cond_7f

    .line 4131
    :try_start_22
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/pm/PackageSetting;

    .line 4132
    .local v13, "ps":Lcom/android/server/pm/PackageSetting;
    iget-object v14, v13, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v14, :cond_73

    iget-object v14, v13, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v14, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v14, :cond_33

    .line 4133
    goto :goto_73

    .line 4135
    :cond_33
    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v14

    if-eqz v14, :cond_45

    iget-object v14, v13, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;
    :try_end_3b
    .catchall {:try_start_22 .. :try_end_3b} :catchall_78

    .line 4136
    move-object/from16 v15, p4

    :try_start_3d
    invoke-static {v15, v14}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_47

    const/4 v14, 0x1

    goto :goto_48

    :cond_45
    move-object/from16 v15, p4

    :cond_47
    const/4 v14, 0x0

    .line 4140
    .local v14, "shouldInstall":Z
    :goto_48
    invoke-static {v13, v10}, Lcom/android/server/pm/SettingsInjector;->checkXSpaceApp(Lcom/android/server/pm/PackageSetting;I)Z

    move-result v16

    if-nez v16, :cond_51

    .line 4141
    invoke-virtual {v13, v14, v10}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 4144
    :cond_51
    if-nez v14, :cond_56

    .line 4145
    invoke-virtual {v1, v13}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V

    .line 4149
    :cond_56
    iget-object v11, v13, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    aput-object v11, v4, v12

    .line 4150
    iget-object v11, v13, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    aput-object v11, v5, v12

    .line 4151
    iget v11, v13, Lcom/android/server/pm/PackageSetting;->appId:I

    aput v11, v6, v12

    .line 4152
    iget-object v11, v13, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v11, v11, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    aput-object v11, v7, v12

    .line 4153
    iget-object v11, v13, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v11, v11, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    aput v11, v8, v12

    .end local v13    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v14    # "shouldInstall":Z
    goto :goto_75

    .line 4130
    :cond_73
    :goto_73
    move-object/from16 v15, p4

    :goto_75
    add-int/lit8 v12, v12, 0x1

    goto :goto_20

    .line 4155
    .end local v0    # "packages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/PackageSetting;>;"
    .end local v3    # "packagesCount":I
    .end local v4    # "volumeUuids":[Ljava/lang/String;
    .end local v5    # "names":[Ljava/lang/String;
    .end local v6    # "appIds":[I
    .end local v7    # "seinfos":[Ljava/lang/String;
    .end local v8    # "targetSdkVersions":[I
    .end local v9    # "packagesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/PackageSetting;>;"
    .end local v12    # "i":I
    :catchall_78
    move-exception v0

    move-object/from16 v15, p4

    :goto_7b
    move-object/from16 v4, p1

    goto/16 :goto_de

    .restart local v3    # "packagesCount":I
    .restart local v4    # "volumeUuids":[Ljava/lang/String;
    .restart local v5    # "names":[Ljava/lang/String;
    .restart local v6    # "appIds":[I
    .restart local v7    # "seinfos":[Ljava/lang/String;
    .restart local v8    # "targetSdkVersions":[I
    :cond_7f
    move-object/from16 v15, p4

    monitor-exit v2
    :try_end_82
    .catchall {:try_start_3d .. :try_end_82} :catchall_d7

    move-object v11, v4

    .end local v4    # "volumeUuids":[Ljava/lang/String;
    .local v11, "volumeUuids":[Ljava/lang/String;
    move-object v12, v5

    .end local v5    # "names":[Ljava/lang/String;
    .local v12, "names":[Ljava/lang/String;
    move-object v13, v6

    .end local v6    # "appIds":[I
    .local v13, "appIds":[I
    move-object v14, v7

    .end local v7    # "seinfos":[Ljava/lang/String;
    .local v14, "seinfos":[Ljava/lang/String;
    move-object/from16 v16, v8

    .end local v8    # "targetSdkVersions":[I
    .local v16, "targetSdkVersions":[I
    move v9, v3

    .line 4156
    .end local v3    # "packagesCount":I
    .local v9, "packagesCount":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_8b
    move/from16 v8, v17

    .end local v17    # "i":I
    .local v8, "i":I
    if-ge v8, v9, :cond_c8

    .line 4157
    aget-object v0, v12, v8

    if-nez v0, :cond_99

    .line 4158
    nop

    .line 4156
    move/from16 v19, v8

    move/from16 v20, v9

    goto :goto_c3

    .line 4161
    :cond_99
    const/4 v0, 0x3

    move/from16 v17, v0

    .line 4163
    .local v17, "flags":I
    :try_start_9c
    aget-object v3, v11, v8

    aget-object v4, v12, v8

    const/4 v6, 0x3

    aget v7, v13, v8

    aget-object v0, v14, v8

    aget v18, v16, v8
    :try_end_a7
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_9c .. :try_end_a7} :catch_b7

    move-object/from16 v2, p2

    move v5, v10

    move/from16 v19, v8

    move-object v8, v0

    .end local v8    # "i":I
    .local v19, "i":I
    move/from16 v20, v9

    move/from16 v9, v18

    .end local v9    # "packagesCount":I
    .local v20, "packagesCount":I
    :try_start_b1
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/pm/Installer;->createAppData(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)J
    :try_end_b4
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_b1 .. :try_end_b4} :catch_b5

    .line 4167
    goto :goto_c3

    .line 4165
    :catch_b5
    move-exception v0

    goto :goto_bc

    .end local v19    # "i":I
    .end local v20    # "packagesCount":I
    .restart local v8    # "i":I
    .restart local v9    # "packagesCount":I
    :catch_b7
    move-exception v0

    move/from16 v19, v8

    move/from16 v20, v9

    .line 4166
    .end local v8    # "i":I
    .end local v9    # "packagesCount":I
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    .restart local v19    # "i":I
    .restart local v20    # "packagesCount":I
    :goto_bc
    const-string v2, "PackageSettings"

    const-string v3, "Failed to prepare app data"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4156
    .end local v0    # "e":Lcom/android/server/pm/Installer$InstallerException;
    .end local v17    # "flags":I
    :goto_c3
    add-int/lit8 v17, v19, 0x1

    .end local v19    # "i":I
    .local v17, "i":I
    move/from16 v9, v20

    goto :goto_8b

    .line 4169
    .end local v17    # "i":I
    .end local v20    # "packagesCount":I
    .restart local v9    # "packagesCount":I
    :cond_c8
    move/from16 v20, v9

    .end local v9    # "packagesCount":I
    .restart local v20    # "packagesCount":I
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 4170
    move-object/from16 v4, p1

    :try_start_cf
    invoke-virtual {v1, v4, v10}, Lcom/android/server/pm/Settings;->applyDefaultPreferredAppsLPw(Lcom/android/server/pm/PackageManagerService;I)V

    .line 4171
    monitor-exit v3

    .line 4172
    return-void

    .line 4171
    :catchall_d4
    move-exception v0

    monitor-exit v3
    :try_end_d6
    .catchall {:try_start_cf .. :try_end_d6} :catchall_d4

    throw v0

    .line 4155
    .end local v11    # "volumeUuids":[Ljava/lang/String;
    .end local v12    # "names":[Ljava/lang/String;
    .end local v13    # "appIds":[I
    .end local v14    # "seinfos":[Ljava/lang/String;
    .end local v16    # "targetSdkVersions":[I
    .end local v20    # "packagesCount":I
    :catchall_d7
    move-exception v0

    goto :goto_7b

    :catchall_d9
    move-exception v0

    move-object/from16 v4, p1

    move-object/from16 v15, p4

    :goto_de
    :try_start_de
    monitor-exit v2
    :try_end_df
    .catchall {:try_start_de .. :try_end_df} :catchall_e0

    throw v0

    :catchall_e0
    move-exception v0

    goto :goto_de
.end method

.method disableSystemPackageLPw(Ljava/lang/String;Z)Z
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "replaced"    # Z

    .line 538
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 539
    .local v0, "p":Lcom/android/server/pm/PackageSetting;
    const/4 v1, 0x0

    if-nez v0, :cond_27

    .line 540
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not an installed package"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    return v1

    .line 543
    :cond_27
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 545
    .local v2, "dp":Lcom/android/server/pm/PackageSetting;
    if-nez v2, :cond_6a

    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v3, :cond_6a

    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    invoke-virtual {v3}, Landroid/content/pm/PackageParser$Package;->isSystem()Z

    move-result v3

    if-eqz v3, :cond_6a

    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    invoke-virtual {v3}, Landroid/content/pm/PackageParser$Package;->isUpdatedSystemApp()Z

    move-result v3

    if-nez v3, :cond_6a

    .line 546
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v1, :cond_59

    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_59

    .line 547
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v3, v3, 0x80

    iput v3, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 549
    :cond_59
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    if-eqz p2, :cond_68

    .line 556
    new-instance v1, Lcom/android/server/pm/PackageSetting;

    invoke-direct {v1, v0}, Lcom/android/server/pm/PackageSetting;-><init>(Lcom/android/server/pm/PackageSetting;)V

    .line 557
    .local v1, "newp":Lcom/android/server/pm/PackageSetting;
    invoke-direct {p0, p1, v1}, Lcom/android/server/pm/Settings;->replacePackageLPw(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;)V

    .line 559
    .end local v1    # "newp":Lcom/android/server/pm/PackageSetting;
    :cond_68
    const/4 v1, 0x1

    return v1

    .line 561
    :cond_6a
    return v1
.end method

.method dumpGidsLPr(Ljava/io/PrintWriter;Ljava/lang/String;[I)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "gids"    # [I

    .line 5068
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-nez v0, :cond_15

    .line 5069
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5070
    const-string v0, "gids="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5071
    invoke-static {p3}, Lcom/android/server/pm/PackageManagerService;->arrayToString([I)Ljava/lang/String;

    move-result-object v0

    .line 5070
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5073
    :cond_15
    return-void
.end method

.method dumpInstallPermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/permission/PermissionsState;)V
    .registers 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p4, "permissionsState"    # Lcom/android/server/pm/permission/PermissionsState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/permission/PermissionsState;",
            ")V"
        }
    .end annotation

    .line 5115
    .local p3, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {p4}, Lcom/android/server/pm/permission/PermissionsState;->getInstallPermissionStates()Ljava/util/List;

    move-result-object v0

    .line 5116
    .local v0, "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_58

    .line 5117
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "install permissions:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5118
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 5119
    .local v2, "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    if-eqz p3, :cond_2f

    .line 5120
    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    .line 5121
    goto :goto_16

    .line 5123
    :cond_2f
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5124
    const-string v3, ": granted="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->isGranted()Z

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 5125
    const-string v3, ", flags="

    .line 5126
    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getFlags()I

    move-result v4

    .line 5125
    invoke-static {v3, v4}, Lcom/android/server/pm/Settings;->permissionFlagsToString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5127
    .end local v2    # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    goto :goto_16

    .line 5129
    :cond_58
    return-void
.end method

.method dumpPackageLPr(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PackageSetting;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/util/List;Z)V
    .registers 30
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "checkinTag"    # Ljava/lang/String;
    .param p5, "ps"    # Lcom/android/server/pm/PackageSetting;
    .param p6, "sdf"    # Ljava/text/SimpleDateFormat;
    .param p7, "date"    # Ljava/util/Date;
    .param p9, "dumpAll"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/PackageSetting;",
            "Ljava/text/SimpleDateFormat;",
            "Ljava/util/Date;",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 4496
    .local p4, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local p8, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p7

    .line 4496
    if-eqz v9, :cond_193

    .line 4497
    invoke-virtual {v7, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4498
    const-string v0, ","

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4499
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v0, :cond_1f

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    goto :goto_21

    :cond_1f
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    :goto_21
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4500
    const-string v0, ","

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4501
    iget v0, v11, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4502
    const-string v0, ","

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4503
    iget-wide v0, v11, Lcom/android/server/pm/PackageSetting;->versionCode:J

    invoke-virtual {v7, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 4504
    const-string v0, ","

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4505
    iget-wide v0, v11, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    invoke-virtual {v7, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 4506
    const-string v0, ","

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4507
    iget-wide v0, v11, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    invoke-virtual {v7, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 4508
    const-string v0, ","

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4509
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    if-eqz v0, :cond_58

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    goto :goto_5a

    :cond_58
    const-string v0, "?"

    :goto_5a
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4510
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4511
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v0, :cond_b5

    .line 4512
    invoke-virtual {v7, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "-"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "splt,"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4513
    const-string v0, "base,"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4514
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget v0, v0, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4515
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    if-eqz v0, :cond_b5

    .line 4516
    const/4 v13, 0x0

    .line 4516
    .local v13, "i":I
    :goto_85
    move v0, v13

    .line 4516
    .end local v13    # "i":I
    .local v0, "i":I
    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_b5

    .line 4517
    invoke-virtual {v7, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "-"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "splt,"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4518
    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, ","

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4519
    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->splitRevisionCodes:[I

    aget v1, v1, v0

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 4516
    add-int/lit8 v13, v0, 0x1

    .line 4516
    .end local v0    # "i":I
    .restart local v13    # "i":I
    goto :goto_85

    .line 4523
    .end local v13    # "i":I
    :cond_b5
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_192

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 4524
    .local v1, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v7, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4525
    const-string v2, "-"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4526
    const-string/jumbo v2, "usr"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4527
    const-string v2, ","

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4528
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 4529
    const-string v2, ","

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4530
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v2}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v2

    if-eqz v2, :cond_ed

    const-string v2, "I"

    goto :goto_ef

    :cond_ed
    const-string v2, "i"

    :goto_ef
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4531
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v2}, Lcom/android/server/pm/PackageSetting;->getHidden(I)Z

    move-result v2

    if-eqz v2, :cond_fd

    const-string v2, "B"

    goto :goto_ff

    :cond_fd
    const-string v2, "b"

    :goto_ff
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4532
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v2}, Lcom/android/server/pm/PackageSetting;->getSuspended(I)Z

    move-result v2

    if-eqz v2, :cond_10d

    const-string v2, "SU"

    goto :goto_110

    :cond_10d
    const-string/jumbo v2, "su"

    :goto_110
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4533
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v2}, Lcom/android/server/pm/PackageSetting;->getStopped(I)Z

    move-result v2

    if-eqz v2, :cond_11e

    const-string v2, "S"

    goto :goto_121

    :cond_11e
    const-string/jumbo v2, "s"

    :goto_121
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4534
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v2}, Lcom/android/server/pm/PackageSetting;->getNotLaunched(I)Z

    move-result v2

    if-eqz v2, :cond_130

    const-string/jumbo v2, "l"

    goto :goto_132

    :cond_130
    const-string v2, "L"

    :goto_132
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4535
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v2}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v2

    if-eqz v2, :cond_140

    const-string v2, "IA"

    goto :goto_142

    :cond_140
    const-string v2, "ia"

    :goto_142
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4536
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v2}, Lcom/android/server/pm/PackageSetting;->getVirtulalPreload(I)Z

    move-result v2

    if-eqz v2, :cond_150

    const-string v2, "VPI"

    goto :goto_153

    :cond_150
    const-string/jumbo v2, "vpi"

    :goto_153
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4537
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v2}, Lcom/android/server/pm/PackageSetting;->getHarmfulAppWarning(I)Ljava/lang/String;

    move-result-object v2

    .line 4538
    .local v2, "harmfulAppWarning":Ljava/lang/String;
    if-eqz v2, :cond_161

    const-string v3, "HA"

    goto :goto_163

    :cond_161
    const-string v3, "ha"

    :goto_163
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4539
    const-string v3, ","

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4540
    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v3}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    move-result v3

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 4541
    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v3}, Lcom/android/server/pm/PackageSetting;->getLastDisabledAppCaller(I)Ljava/lang/String;

    move-result-object v3

    .line 4542
    .local v3, "lastDisabledAppCaller":Ljava/lang/String;
    const-string v4, ","

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4543
    if-eqz v3, :cond_183

    move-object v4, v3

    goto :goto_185

    :cond_183
    const-string v4, "?"

    :goto_185
    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4544
    const-string v4, ","

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4545
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4546
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    .end local v2    # "harmfulAppWarning":Ljava/lang/String;
    .end local v3    # "lastDisabledAppCaller":Ljava/lang/String;
    goto/16 :goto_b9

    .line 4547
    :cond_192
    return-void

    .line 4550
    :cond_193
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Package ["

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4551
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v0, :cond_1a2

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    goto :goto_1a4

    :cond_1a2
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    :goto_1a4
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4552
    const-string v0, "] ("

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4553
    invoke-static/range {p5 .. p5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4554
    const-string v0, "):"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4556
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v0, :cond_1cd

    .line 4557
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  compat name="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4558
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4561
    :cond_1cd
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  userId="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v11, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4563
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v0, :cond_1eb

    .line 4564
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  sharedUser="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4566
    :cond_1eb
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  pkg="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4567
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  codePath="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4568
    if-nez v10, :cond_23b

    .line 4569
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  resourcePath="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4570
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  legacyNativeLibraryDir="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4571
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4572
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  primaryCpuAbi="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4573
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  secondaryCpuAbi="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4575
    :cond_23b
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  versionCode="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, v11, Lcom/android/server/pm/PackageSetting;->versionCode:J

    invoke-virtual {v7, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 4576
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v0, :cond_268

    .line 4577
    const-string v0, " minSdk="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4578
    const-string v0, " targetSdk="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4580
    :cond_268
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4581
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v0, :cond_592

    .line 4582
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    if-eqz v0, :cond_2b1

    .line 4583
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    .line 4584
    .local v0, "parentPkg":Landroid/content/pm/PackageParser$Package;
    iget-object v1, v6, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 4585
    .local v1, "pps":Lcom/android/server/pm/PackageSetting;
    if-eqz v1, :cond_28f

    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29a

    .line 4586
    :cond_28f
    iget-object v2, v6, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 4588
    :cond_29a
    if-eqz v1, :cond_2b0

    .line 4589
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  parentPackage="

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4590
    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v2, :cond_2ab

    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    goto :goto_2ad

    :cond_2ab
    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    :goto_2ad
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4592
    .end local v0    # "parentPkg":Landroid/content/pm/PackageParser$Package;
    .end local v1    # "pps":Lcom/android/server/pm/PackageSetting;
    :cond_2b0
    goto :goto_312

    :cond_2b1
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    if-eqz v0, :cond_312

    .line 4593
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  childPackages=["

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4594
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4595
    .local v0, "childCount":I
    const/4 v1, 0x0

    .line 4595
    .local v1, "i":I
    :goto_2c8
    if-ge v1, v0, :cond_30d

    .line 4596
    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    .line 4597
    .local v2, "childPkg":Landroid/content/pm/PackageParser$Package;
    iget-object v3, v6, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    iget-object v4, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 4598
    .local v3, "cps":Lcom/android/server/pm/PackageSetting;
    if-eqz v3, :cond_2ea

    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    iget-object v5, v2, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2f5

    .line 4599
    :cond_2ea
    iget-object v4, v6, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    iget-object v5, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 4601
    :cond_2f5
    if-eqz v3, :cond_30a

    .line 4602
    if-lez v1, :cond_2fe

    .line 4603
    const-string v4, ", "

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4605
    :cond_2fe
    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v4, :cond_305

    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    goto :goto_307

    :cond_305
    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    :goto_307
    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4595
    .end local v2    # "childPkg":Landroid/content/pm/PackageParser$Package;
    .end local v3    # "cps":Lcom/android/server/pm/PackageSetting;
    :cond_30a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c8

    .line 4608
    .end local v1    # "i":I
    :cond_30d
    const-string v1, "]"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4610
    .end local v0    # "childCount":I
    :cond_312
    :goto_312
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  versionName="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4611
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  splits="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    invoke-static {v7, v0}, Lcom/android/server/pm/Settings;->dumpSplitNames(Ljava/io/PrintWriter;Landroid/content/pm/PackageParser$Package;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4612
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget v0, v0, Landroid/content/pm/PackageParser$SigningDetails;->signatureSchemeVersion:I

    .line 4613
    .local v0, "apkSigningVersion":I
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  apkSigningVersion="

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4614
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  applicationInfo="

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4615
    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4616
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  flags="

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    sget-object v2, Lcom/android/server/pm/Settings;->FLAG_DUMP_SPEC:[Ljava/lang/Object;

    invoke-static {v7, v1, v2}, Lcom/android/server/pm/Settings;->printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V

    .line 4617
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4618
    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    if-eqz v1, :cond_389

    .line 4619
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  privateFlags="

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    sget-object v2, Lcom/android/server/pm/Settings;->PRIVATE_FLAG_DUMP_SPEC:[Ljava/lang/Object;

    invoke-static {v7, v1, v2}, Lcom/android/server/pm/Settings;->printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V

    .line 4620
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4622
    :cond_389
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  dataDir="

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4623
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  supportsScreens=["

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4624
    const/4 v1, 0x1

    .line 4625
    .local v1, "first":Z
    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_3bb

    .line 4626
    if-nez v1, :cond_3b4

    .line 4627
    const-string v2, ", "

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4628
    :cond_3b4
    const/4 v1, 0x0

    .line 4629
    const-string/jumbo v2, "small"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4631
    :cond_3bb
    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_3d3

    .line 4632
    if-nez v1, :cond_3cc

    .line 4633
    const-string v2, ", "

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4634
    :cond_3cc
    const/4 v1, 0x0

    .line 4635
    const-string/jumbo v2, "medium"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4637
    :cond_3d3
    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_3eb

    .line 4638
    if-nez v1, :cond_3e4

    .line 4639
    const-string v2, ", "

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4640
    :cond_3e4
    const/4 v1, 0x0

    .line 4641
    const-string/jumbo v2, "large"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4643
    :cond_3eb
    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x80000

    and-int/2addr v2, v3

    if-eqz v2, :cond_404

    .line 4644
    if-nez v1, :cond_3fd

    .line 4645
    const-string v2, ", "

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4646
    :cond_3fd
    const/4 v1, 0x0

    .line 4647
    const-string/jumbo v2, "xlarge"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4649
    :cond_404
    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_41c

    .line 4650
    if-nez v1, :cond_415

    .line 4651
    const-string v2, ", "

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4652
    :cond_415
    const/4 v1, 0x0

    .line 4653
    const-string/jumbo v2, "resizeable"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4655
    :cond_41c
    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x2000

    if-eqz v2, :cond_433

    .line 4656
    if-nez v1, :cond_42d

    .line 4657
    const-string v2, ", "

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4658
    :cond_42d
    const/4 v1, 0x0

    .line 4659
    const-string v2, "anyDensity"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4661
    :cond_433
    const-string v2, "]"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4662
    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    if-eqz v2, :cond_473

    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_473

    .line 4663
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  dynamic libraries:"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4664
    const/4 v2, 0x0

    .line 4664
    .local v2, "i":I
    :goto_451
    iget-object v3, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_473

    .line 4665
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "    "

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4666
    iget-object v3, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4664
    add-int/lit8 v2, v2, 0x1

    goto :goto_451

    .line 4669
    .end local v2    # "i":I
    :cond_473
    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->staticSharedLibName:Ljava/lang/String;

    if-eqz v2, :cond_4a2

    .line 4670
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  static library:"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4671
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "    "

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4672
    const-string/jumbo v2, "name:"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->staticSharedLibName:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4673
    const-string v2, " version:"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-wide v2, v2, Landroid/content/pm/PackageParser$Package;->staticSharedLibVersion:J

    invoke-virtual {v7, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 4675
    :cond_4a2
    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    if-eqz v2, :cond_4dd

    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4dd

    .line 4676
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  usesLibraries:"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4677
    const/4 v2, 0x0

    .line 4677
    .restart local v2    # "i":I
    :goto_4bb
    iget-object v3, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4dd

    .line 4678
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "    "

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4677
    add-int/lit8 v2, v2, 0x1

    goto :goto_4bb

    .line 4681
    .end local v2    # "i":I
    :cond_4dd
    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->usesStaticLibraries:Ljava/util/ArrayList;

    if-eqz v2, :cond_526

    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->usesStaticLibraries:Ljava/util/ArrayList;

    .line 4682
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_526

    .line 4683
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  usesStaticLibraries:"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4684
    const/4 v2, 0x0

    .line 4684
    .restart local v2    # "i":I
    :goto_4f6
    iget-object v3, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->usesStaticLibraries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_526

    .line 4685
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "    "

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4686
    iget-object v3, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->usesStaticLibraries:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " version:"

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4687
    iget-object v3, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->usesStaticLibrariesVersions:[J

    aget-wide v3, v3, v2

    invoke-virtual {v7, v3, v4}, Ljava/io/PrintWriter;->println(J)V

    .line 4684
    add-int/lit8 v2, v2, 0x1

    goto :goto_4f6

    .line 4690
    .end local v2    # "i":I
    :cond_526
    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    if-eqz v2, :cond_561

    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    .line 4691
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_561

    .line 4692
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  usesOptionalLibraries:"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4693
    const/4 v2, 0x0

    .line 4693
    .restart local v2    # "i":I
    :goto_53f
    iget-object v3, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_561

    .line 4694
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "    "

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4695
    iget-object v3, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4693
    add-int/lit8 v2, v2, 0x1

    goto :goto_53f

    .line 4698
    .end local v2    # "i":I
    :cond_561
    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    if-eqz v2, :cond_592

    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_592

    .line 4700
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  usesLibraryFiles:"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4701
    const/4 v2, 0x0

    .line 4701
    .restart local v2    # "i":I
    :goto_577
    iget-object v3, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_592

    .line 4702
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "    "

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4701
    add-int/lit8 v2, v2, 0x1

    goto :goto_577

    .line 4706
    .end local v0    # "apkSigningVersion":I
    .end local v1    # "first":Z
    .end local v2    # "i":I
    :cond_592
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  timeStamp="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4707
    iget-wide v0, v11, Lcom/android/server/pm/PackageSetting;->timeStamp:J

    invoke-virtual {v12, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 4708
    invoke-virtual/range {p6 .. p7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4709
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  firstInstallTime="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4710
    iget-wide v0, v11, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    invoke-virtual {v12, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 4711
    invoke-virtual/range {p6 .. p7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4712
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  lastUpdateTime="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4713
    iget-wide v0, v11, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    invoke-virtual {v12, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 4714
    invoke-virtual/range {p6 .. p7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4715
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    if-eqz v0, :cond_5df

    .line 4716
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  installerPackageName="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4717
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4719
    :cond_5df
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    if-eqz v0, :cond_5f0

    .line 4720
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  volumeUuid="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4721
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4723
    :cond_5f0
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  signatures="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4724
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  installPermissionsFixed="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4725
    iget-boolean v0, v11, Lcom/android/server/pm/PackageSetting;->installPermissionsFixed:Z

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4726
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4727
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  pkgFlags="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v11, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    sget-object v1, Lcom/android/server/pm/Settings;->FLAG_DUMP_SPEC:[Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Lcom/android/server/pm/Settings;->printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V

    .line 4728
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4730
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v0, :cond_647

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    if-eqz v0, :cond_647

    .line 4731
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  overlayTarget="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4732
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  overlayCategory="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mOverlayCategory:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4735
    :cond_647
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v0, :cond_6ce

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    if-eqz v0, :cond_6ce

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6ce

    .line 4736
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    .line 4737
    .local v0, "perms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$Permission;>;"
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  declared permissions:"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4738
    const/4 v1, 0x0

    .line 4738
    .local v1, "i":I
    :goto_668
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_6ce

    .line 4739
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Permission;

    .line 4740
    .local v2, "perm":Landroid/content/pm/PackageParser$Permission;
    if-eqz v10, :cond_681

    iget-object v3, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 4741
    invoke-virtual {v10, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_681

    .line 4742
    goto :goto_6cb

    .line 4744
    :cond_681
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "    "

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4745
    const-string v3, ": prot="

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4746
    iget-object v3, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v3, v3, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    invoke-static {v3}, Landroid/content/pm/PermissionInfo;->protectionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4747
    iget-object v3, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v3, v3, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_6ad

    .line 4748
    const-string v3, ", COSTS_MONEY"

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4750
    :cond_6ad
    iget-object v3, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v3, v3, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_6ba

    .line 4751
    const-string v3, ", HIDDEN"

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4753
    :cond_6ba
    iget-object v3, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v3, v3, Landroid/content/pm/PermissionInfo;->flags:I

    const/high16 v4, 0x40000000    # 2.0f

    and-int/2addr v3, v4

    if-eqz v3, :cond_6c8

    .line 4754
    const-string v3, ", INSTALLED"

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4756
    :cond_6c8
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4738
    .end local v2    # "perm":Landroid/content/pm/PackageParser$Permission;
    :goto_6cb
    add-int/lit8 v1, v1, 0x1

    goto :goto_668

    .line 4760
    .end local v0    # "perms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$Permission;>;"
    .end local v1    # "i":I
    :cond_6ce
    if-nez v10, :cond_6d2

    if-eqz p9, :cond_716

    :cond_6d2
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v0, :cond_716

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    if-eqz v0, :cond_716

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .line 4762
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_716

    .line 4763
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .line 4764
    .local v0, "perms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  requested permissions:"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4765
    const/4 v1, 0x0

    .line 4765
    .restart local v1    # "i":I
    :goto_6f3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_716

    .line 4766
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4767
    .local v2, "perm":Ljava/lang/String;
    if-eqz v10, :cond_708

    .line 4768
    invoke-virtual {v10, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_708

    .line 4769
    goto :goto_713

    .line 4771
    :cond_708
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "    "

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4765
    .end local v2    # "perm":Ljava/lang/String;
    :goto_713
    add-int/lit8 v1, v1, 0x1

    goto :goto_6f3

    .line 4775
    .end local v0    # "perms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "i":I
    :cond_716
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v0, :cond_71e

    if-nez v10, :cond_71e

    if-eqz p9, :cond_736

    .line 4776
    :cond_71e
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v0

    .line 4777
    .local v0, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v7, v1, v10, v0}, Lcom/android/server/pm/Settings;->dumpInstallPermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/permission/PermissionsState;)V

    .line 4780
    .end local v0    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    :cond_736
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_73a
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8fd

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 4781
    .local v5, "user":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  User "

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ": "

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4782
    const-string v0, "ceDataInode="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4783
    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getCeDataInode(I)J

    move-result-wide v0

    invoke-virtual {v7, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 4784
    const-string v0, " installed="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4785
    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4786
    const-string v0, " hidden="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4787
    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getHidden(I)Z

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4788
    const-string v0, " suspended="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4789
    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getSuspended(I)Z

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4790
    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getSuspended(I)Z

    move-result v0

    if-eqz v0, :cond_7b3

    .line 4791
    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    .line 4792
    .local v0, "pus":Landroid/content/pm/PackageUserState;
    const-string v1, " suspendingPackage="

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4793
    iget-object v1, v0, Landroid/content/pm/PackageUserState;->suspendingPackage:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4794
    const-string v1, " dialogMessage="

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4795
    iget-object v1, v0, Landroid/content/pm/PackageUserState;->dialogMessage:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4797
    .end local v0    # "pus":Landroid/content/pm/PackageUserState;
    :cond_7b3
    const-string v0, " stopped="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4798
    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getStopped(I)Z

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4799
    const-string v0, " notLaunched="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4800
    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getNotLaunched(I)Z

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4801
    const-string v0, " enabled="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4802
    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4803
    const-string v0, " instant="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4804
    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4805
    const-string v0, " virtual="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4806
    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getVirtulalPreload(I)Z

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4808
    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getOverlayPaths(I)[Ljava/lang/String;

    move-result-object v4

    .line 4809
    .local v4, "overlayPaths":[Ljava/lang/String;
    if-eqz v4, :cond_820

    array-length v0, v4

    if-lez v0, :cond_820

    .line 4810
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  overlay paths:"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4811
    array-length v0, v4

    const/4 v1, 0x0

    :goto_80e
    if-ge v1, v0, :cond_820

    aget-object v2, v4, v1

    .line 4812
    .local v2, "path":Ljava/lang/String;
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "    "

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4811
    .end local v2    # "path":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_80e

    .line 4816
    :cond_820
    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getLastDisabledAppCaller(I)Ljava/lang/String;

    move-result-object v3

    .line 4817
    .local v3, "lastDisabledAppCaller":Ljava/lang/String;
    if-eqz v3, :cond_833

    .line 4818
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    lastDisabledCaller: "

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4819
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4822
    :cond_833
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v0, :cond_87e

    .line 4823
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v2

    .line 4824
    .local v2, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v1}, Lcom/android/server/pm/permission/PermissionsState;->computeGids(I)[I

    move-result-object v1

    invoke-virtual {v6, v7, v0, v1}, Lcom/android/server/pm/Settings;->dumpGidsLPr(Ljava/io/PrintWriter;Ljava/lang/String;[I)V

    .line 4825
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    .line 4826
    invoke-virtual {v2, v0}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionStates(I)Ljava/util/List;

    move-result-object v16

    .line 4825
    move-object v0, v6

    move-object v1, v7

    move-object/from16 v17, v2

    move-object v2, v15

    .line 4825
    .end local v2    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .local v17, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    move-object v15, v3

    move-object v3, v10

    .line 4825
    .end local v3    # "lastDisabledAppCaller":Ljava/lang/String;
    .local v15, "lastDisabledAppCaller":Ljava/lang/String;
    move-object/from16 v18, v4

    move-object/from16 v4, v16

    .line 4825
    .end local v4    # "overlayPaths":[Ljava/lang/String;
    .local v18, "overlayPaths":[Ljava/lang/String;
    move-object v13, v5

    move/from16 v5, p9

    .line 4825
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    .local v13, "user":Landroid/content/pm/UserInfo;
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/Settings;->dumpRuntimePermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/List;Z)V

    .line 4825
    .end local v17    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    goto :goto_882

    .line 4829
    .end local v13    # "user":Landroid/content/pm/UserInfo;
    .end local v15    # "lastDisabledAppCaller":Ljava/lang/String;
    .end local v18    # "overlayPaths":[Ljava/lang/String;
    .restart local v3    # "lastDisabledAppCaller":Ljava/lang/String;
    .restart local v4    # "overlayPaths":[Ljava/lang/String;
    .restart local v5    # "user":Landroid/content/pm/UserInfo;
    :cond_87e
    move-object v15, v3

    move-object/from16 v18, v4

    move-object v13, v5

    .line 4829
    .end local v3    # "lastDisabledAppCaller":Ljava/lang/String;
    .end local v4    # "overlayPaths":[Ljava/lang/String;
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    .restart local v13    # "user":Landroid/content/pm/UserInfo;
    .restart local v15    # "lastDisabledAppCaller":Ljava/lang/String;
    .restart local v18    # "overlayPaths":[Ljava/lang/String;
    :goto_882
    iget v0, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getHarmfulAppWarning(I)Ljava/lang/String;

    move-result-object v0

    .line 4830
    .local v0, "harmfulAppWarning":Ljava/lang/String;
    if-eqz v0, :cond_895

    .line 4831
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "      harmfulAppWarning: "

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4832
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4835
    :cond_895
    if-nez v10, :cond_8fb

    .line 4836
    iget v1, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v1}, Lcom/android/server/pm/PackageSetting;->getDisabledComponents(I)Landroid/util/ArraySet;

    move-result-object v1

    .line 4837
    .local v1, "cmp":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v1, :cond_8c9

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-lez v2, :cond_8c9

    .line 4838
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "    disabledComponents:"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4839
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8b1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8c9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4840
    .local v3, "s":Ljava/lang/String;
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "      "

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4841
    .end local v3    # "s":Ljava/lang/String;
    goto :goto_8b1

    .line 4843
    :cond_8c9
    iget v2, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v2}, Lcom/android/server/pm/PackageSetting;->getEnabledComponents(I)Landroid/util/ArraySet;

    move-result-object v1

    .line 4844
    if-eqz v1, :cond_8fb

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-lez v2, :cond_8fb

    .line 4845
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "    enabledComponents:"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4846
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8e3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8fb

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4847
    .restart local v3    # "s":Ljava/lang/String;
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "      "

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4848
    .end local v3    # "s":Ljava/lang/String;
    goto :goto_8e3

    .line 4851
    .end local v0    # "harmfulAppWarning":Ljava/lang/String;
    .end local v1    # "cmp":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v13    # "user":Landroid/content/pm/UserInfo;
    .end local v15    # "lastDisabledAppCaller":Ljava/lang/String;
    .end local v18    # "overlayPaths":[Ljava/lang/String;
    :cond_8fb
    goto/16 :goto_73a

    .line 4852
    :cond_8fd
    return-void
.end method

.method dumpPackagesLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;Z)V
    .registers 25
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p4, "dumpState"    # Lcom/android/server/pm/DumpState;
    .param p5, "checkin"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/DumpState;",
            "Z)V"
        }
    .end annotation

    .line 4856
    .local p3, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v13, p2

    move-object/from16 v12, p3

    .line 4856
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v6, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 4857
    .local v6, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 4858
    .local v7, "date":Ljava/util/Date;
    const/4 v0, 0x0

    .line 4859
    .local v0, "printedSomething":Z
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v18

    .line 4860
    .local v18, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v1, v15, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_28
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_9c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/android/server/pm/PackageSetting;

    .line 4861
    .local v11, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v13, :cond_4b

    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4b

    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    .line 4862
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4b

    .line 4863
    goto :goto_28

    .line 4865
    :cond_4b
    if-eqz v12, :cond_58

    .line 4866
    invoke-virtual {v11}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/android/server/pm/permission/PermissionsState;->hasRequestedPermission(Landroid/util/ArraySet;)Z

    move-result v1

    if-nez v1, :cond_58

    .line 4867
    goto :goto_28

    .line 4870
    :cond_58
    if-nez p5, :cond_64

    if-eqz v13, :cond_64

    .line 4871
    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    move-object/from16 v9, p4

    invoke-virtual {v9, v1}, Lcom/android/server/pm/DumpState;->setSharedUser(Lcom/android/server/pm/SharedUserSetting;)V

    goto :goto_66

    .line 4874
    :cond_64
    move-object/from16 v9, p4

    :goto_66
    if-nez p5, :cond_79

    if-nez v0, :cond_79

    .line 4875
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v1

    if-eqz v1, :cond_73

    .line 4876
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4877
    :cond_73
    const-string v1, "Packages:"

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4878
    const/4 v0, 0x1

    .line 4880
    .end local v0    # "printedSomething":Z
    .local v16, "printedSomething":Z
    :cond_79
    move/from16 v16, v0

    const-string v5, "  "

    if-eqz p5, :cond_84

    const-string/jumbo v0, "pkg"

    move-object v4, v0

    nop

    :cond_84
    if-eqz v13, :cond_89

    move/from16 v17, v3

    goto :goto_8b

    :cond_89
    move/from16 v17, v2

    :goto_8b
    move-object v0, v15

    move-object v1, v14

    move-object v2, v5

    move-object v3, v4

    move-object v4, v12

    move-object v5, v11

    move-object/from16 v8, v18

    move/from16 v9, v17

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/pm/Settings;->dumpPackageLPr(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PackageSetting;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/util/List;Z)V

    .line 4882
    .end local v11    # "ps":Lcom/android/server/pm/PackageSetting;
    nop

    .line 4860
    move/from16 v0, v16

    goto :goto_28

    .line 4884
    .end local v16    # "printedSomething":Z
    .restart local v0    # "printedSomething":Z
    :cond_9c
    const/4 v0, 0x0

    .line 4885
    iget-object v1, v15, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_110

    if-nez v12, :cond_110

    .line 4886
    iget-object v1, v15, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_110

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 4887
    .local v5, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v13, :cond_d4

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d4

    .line 4888
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d4

    .line 4889
    goto :goto_b1

    .line 4891
    :cond_d4
    if-nez p5, :cond_ed

    .line 4892
    if-nez v0, :cond_e7

    .line 4893
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v8

    if-eqz v8, :cond_e1

    .line 4894
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4895
    :cond_e1
    const-string v8, "Renamed packages:"

    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4896
    const/4 v0, 0x1

    .line 4898
    :cond_e7
    const-string v8, "  "

    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_f3

    .line 4900
    :cond_ed
    const-string/jumbo v8, "ren,"

    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4902
    :goto_f3
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4903
    if-eqz p5, :cond_101

    const-string v8, " -> "

    goto :goto_103

    :cond_101
    const-string v8, ","

    :goto_103
    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4904
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4905
    .end local v5    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_b1

    .line 4908
    :cond_110
    const/4 v0, 0x0

    .line 4909
    iget-object v1, v15, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_17b

    if-nez v12, :cond_17b

    .line 4910
    iget-object v1, v15, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_125
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_17b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 4911
    .local v5, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v13, :cond_144

    iget-object v8, v5, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_144

    iget-object v8, v5, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    .line 4912
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_144

    .line 4913
    goto :goto_125

    .line 4915
    :cond_144
    if-nez p5, :cond_157

    if-nez v0, :cond_157

    .line 4916
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v8

    if-eqz v8, :cond_151

    .line 4917
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4918
    :cond_151
    const-string v8, "Hidden system packages:"

    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4919
    const/4 v0, 0x1

    .line 4921
    :cond_157
    const-string v10, "  "

    if-eqz p5, :cond_15f

    const-string v8, "dis"

    move-object v11, v8

    goto :goto_160

    :cond_15f
    move-object v11, v4

    :goto_160
    if-eqz v13, :cond_165

    move/from16 v17, v3

    goto :goto_167

    :cond_165
    move/from16 v17, v2

    :goto_167
    move-object v8, v15

    move-object v9, v14

    move-object/from16 v12, p3

    move-object v13, v5

    move-object v14, v6

    move-object v15, v7

    move-object/from16 v16, v18

    invoke-virtual/range {v8 .. v17}, Lcom/android/server/pm/Settings;->dumpPackageLPr(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PackageSetting;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/util/List;Z)V

    .line 4923
    .end local v5    # "ps":Lcom/android/server/pm/PackageSetting;
    nop

    .line 4910
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v13, p2

    goto :goto_125

    .line 4925
    :cond_17b
    return-void
.end method

.method dumpPackagesProto(Landroid/util/proto/ProtoOutputStream;)V
    .registers 8
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 4928
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v0

    .line 4930
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 4931
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v1, :cond_24

    .line 4932
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 4933
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    const-wide v4, 0x20b00000005L

    invoke-virtual {v3, p1, v4, v5, v0}, Lcom/android/server/pm/PackageSetting;->writeToProto(Landroid/util/proto/ProtoOutputStream;JLjava/util/List;)V

    .line 4931
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 4935
    .end local v2    # "i":I
    :cond_24
    return-void
.end method

.method dumpPermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;)V
    .registers 11
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p4, "dumpState"    # Lcom/android/server/pm/DumpState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/DumpState;",
            ")V"
        }
    .end annotation

    .line 4939
    .local p3, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mReadExternalStorageEnforced:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v1, v2, :cond_b

    const/4 v1, 0x1

    :goto_9
    move v4, v1

    goto :goto_d

    :cond_b
    const/4 v1, 0x0

    goto :goto_9

    :goto_d
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionSettings;->dumpPermissions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;ZLcom/android/server/pm/DumpState;)V

    .line 4941
    return-void
.end method

.method dumpReadMessagesLPr(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpState"    # Lcom/android/server/pm/DumpState;

    .line 4998
    const-string v0, "Settings parse messages:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4999
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5000
    return-void
.end method

.method dumpRestoredPermissionGrantsLPr(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V
    .registers 13
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpState"    # Lcom/android/server/pm/DumpState;

    .line 5003
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRestoredUserGrants:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_b2

    .line 5004
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 5005
    const-string v0, "Restored (pending) permission grants:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5006
    const/4 v0, 0x0

    move v1, v0

    .local v1, "userIndex":I
    :goto_12
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mRestoredUserGrants:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_af

    .line 5007
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mRestoredUserGrants:Landroid/util/SparseArray;

    .line 5008
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 5009
    .local v2, "grantsByPackage":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Lcom/android/server/pm/Settings$RestoredPermissionGrant;>;>;"
    if-eqz v2, :cond_ab

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-lez v3, :cond_ab

    .line 5010
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mRestoredUserGrants:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 5011
    .local v3, "userId":I
    const-string v4, "  User "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 5013
    move v4, v0

    .local v4, "pkgIndex":I
    :goto_39
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_ab

    .line 5014
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    .line 5015
    .local v5, "grants":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/Settings$RestoredPermissionGrant;>;"
    if-eqz v5, :cond_a8

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-lez v6, :cond_a8

    .line 5016
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 5017
    .local v6, "pkgName":Ljava/lang/String;
    const-string v7, "    "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, " :"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5019
    invoke-virtual {v5}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_64
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/Settings$RestoredPermissionGrant;

    .line 5020
    .local v8, "g":Lcom/android/server/pm/Settings$RestoredPermissionGrant;
    const-string v9, "      "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5021
    iget-object v9, v8, Lcom/android/server/pm/Settings$RestoredPermissionGrant;->permissionName:Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5022
    iget-boolean v9, v8, Lcom/android/server/pm/Settings$RestoredPermissionGrant;->granted:Z

    if-eqz v9, :cond_83

    .line 5023
    const-string v9, " GRANTED"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5025
    :cond_83
    iget v9, v8, Lcom/android/server/pm/Settings$RestoredPermissionGrant;->grantBits:I

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_8e

    .line 5026
    const-string v9, " user_set"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5028
    :cond_8e
    iget v9, v8, Lcom/android/server/pm/Settings$RestoredPermissionGrant;->grantBits:I

    and-int/lit8 v9, v9, 0x2

    if-eqz v9, :cond_99

    .line 5029
    const-string v9, " user_fixed"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5031
    :cond_99
    iget v9, v8, Lcom/android/server/pm/Settings$RestoredPermissionGrant;->grantBits:I

    and-int/lit8 v9, v9, 0x8

    if-eqz v9, :cond_a4

    .line 5032
    const-string v9, " revoke_on_upgrade"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5034
    :cond_a4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 5035
    .end local v8    # "g":Lcom/android/server/pm/Settings$RestoredPermissionGrant;
    goto :goto_64

    .line 5013
    .end local v5    # "grants":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/Settings$RestoredPermissionGrant;>;"
    .end local v6    # "pkgName":Ljava/lang/String;
    :cond_a8
    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    .line 5006
    .end local v2    # "grantsByPackage":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Lcom/android/server/pm/Settings$RestoredPermissionGrant;>;>;"
    .end local v3    # "userId":I
    .end local v4    # "pkgIndex":I
    :cond_ab
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_12

    .line 5040
    .end local v1    # "userIndex":I
    :cond_af
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 5042
    :cond_b2
    return-void
.end method

.method dumpRuntimePermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/List;Z)V
    .registers 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p5, "dumpAll"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/PermissionsState$PermissionState;",
            ">;Z)V"
        }
    .end annotation

    .line 5077
    .local p3, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local p4, "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz p5, :cond_57

    .line 5078
    :cond_8
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "runtime permissions:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5079
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 5080
    .local v1, "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    if-eqz p3, :cond_2e

    .line 5081
    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 5082
    goto :goto_15

    .line 5084
    :cond_2e
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5085
    const-string v2, ": granted="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->isGranted()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 5086
    const-string v2, ", flags="

    .line 5087
    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getFlags()I

    move-result v3

    .line 5086
    invoke-static {v2, v3}, Lcom/android/server/pm/Settings;->permissionFlagsToString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5088
    .end local v1    # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    goto :goto_15

    .line 5090
    :cond_57
    return-void
.end method

.method dumpSharedUsersLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;Z)V
    .registers 28
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p4, "dumpState"    # Lcom/android/server/pm/DumpState;
    .param p5, "checkin"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/DumpState;",
            "Z)V"
        }
    .end annotation

    .line 4945
    .local p3, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    .line 4945
    const/4 v0, 0x0

    .line 4946
    .local v0, "printedSomething":Z
    iget-object v1, v6, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_11
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/server/pm/SharedUserSetting;

    .line 4947
    .local v10, "su":Lcom/android/server/pm/SharedUserSetting;
    if-eqz p2, :cond_27

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->getSharedUser()Lcom/android/server/pm/SharedUserSetting;

    move-result-object v1

    if-eq v10, v1, :cond_27

    .line 4948
    goto :goto_11

    .line 4950
    :cond_27
    if-eqz v8, :cond_34

    .line 4951
    invoke-virtual {v10}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/android/server/pm/permission/PermissionsState;->hasRequestedPermission(Landroid/util/ArraySet;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 4952
    goto :goto_11

    .line 4954
    :cond_34
    if-nez p5, :cond_104

    .line 4955
    if-nez v0, :cond_47

    .line 4956
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 4957
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 4958
    :cond_41
    const-string v1, "Shared users:"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4959
    const/4 v0, 0x1

    .line 4961
    .end local v0    # "printedSomething":Z
    .local v11, "printedSomething":Z
    :cond_47
    move v11, v0

    const-string v0, "  SharedUser ["

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4962
    iget-object v0, v10, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4963
    const-string v0, "] ("

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4964
    invoke-static {v10}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4965
    const-string v0, "):"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4967
    const-string v12, "    "

    .line 4968
    .local v12, "prefix":Ljava/lang/String;
    invoke-virtual {v7, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "userId="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v10, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4970
    invoke-virtual {v10}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v13

    .line 4971
    .local v13, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-virtual {v6, v7, v12, v8, v13}, Lcom/android/server/pm/Settings;->dumpInstallPermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/permission/PermissionsState;)V

    .line 4973
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v5

    array-length v4, v5

    const/4 v14, 0x0

    move v3, v14

    :goto_89
    if-ge v3, v4, :cond_101

    aget v2, v5, v3

    .line 4974
    .local v2, "userId":I
    invoke-virtual {v13, v2}, Lcom/android/server/pm/permission/PermissionsState;->computeGids(I)[I

    move-result-object v1

    .line 4975
    .local v1, "gids":[I
    nop

    .line 4976
    invoke-virtual {v13, v2}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionStates(I)Ljava/util/List;

    move-result-object v0

    .line 4977
    .local v0, "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v15

    if-eqz v15, :cond_aa

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_a3

    goto :goto_aa

    .line 4973
    .end local v0    # "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    .end local v1    # "gids":[I
    .end local v2    # "userId":I
    :cond_a3
    move/from16 v19, v3

    move/from16 v20, v4

    move-object/from16 v21, v5

    goto :goto_fa

    .line 4978
    .restart local v0    # "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    .restart local v1    # "gids":[I
    .restart local v2    # "userId":I
    :cond_aa
    :goto_aa
    invoke-virtual {v7, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v16, v0

    const-string v0, "User "

    .line 4978
    .end local v0    # "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    .local v16, "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ": "

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4979
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v17, v2

    const-string v2, "  "

    .line 4979
    .end local v2    # "userId":I
    .local v17, "userId":I
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v7, v0, v1}, Lcom/android/server/pm/Settings;->dumpGidsLPr(Ljava/io/PrintWriter;Ljava/lang/String;[I)V

    .line 4980
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_e8

    const/4 v0, 0x1

    move v15, v0

    goto :goto_e9

    :cond_e8
    move v15, v14

    :goto_e9
    move-object v0, v6

    move-object/from16 v18, v1

    move-object v1, v7

    .end local v1    # "gids":[I
    .local v18, "gids":[I
    move/from16 v19, v3

    move-object v3, v8

    move/from16 v20, v4

    move-object/from16 v4, v16

    move-object/from16 v21, v5

    move v5, v15

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/Settings;->dumpRuntimePermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/List;Z)V

    .line 4973
    .end local v16    # "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    .end local v17    # "userId":I
    .end local v18    # "gids":[I
    :goto_fa
    add-int/lit8 v3, v19, 0x1

    move/from16 v4, v20

    move-object/from16 v5, v21

    goto :goto_89

    .line 4984
    .end local v12    # "prefix":Ljava/lang/String;
    .end local v13    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    :cond_101
    nop

    .line 4987
    move v0, v11

    goto :goto_119

    .line 4985
    .end local v11    # "printedSomething":Z
    .local v0, "printedSomething":Z
    :cond_104
    const-string/jumbo v1, "suid,"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v10, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ","

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v10, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4987
    .end local v10    # "su":Lcom/android/server/pm/SharedUserSetting;
    :goto_119
    goto/16 :goto_11

    .line 4988
    :cond_11b
    return-void
.end method

.method dumpSharedUsersProto(Landroid/util/proto/ProtoOutputStream;)V
    .registers 7
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 4991
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 4992
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1c

    .line 4993
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/SharedUserSetting;

    const-wide v3, 0x20b00000006L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/pm/SharedUserSetting;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4992
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 4995
    .end local v1    # "i":I
    :cond_1c
    return-void
.end method

.method dumpVersionLPr(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 7
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 4471
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4472
    const/4 v0, 0x0

    .line 4472
    .local v0, "i":I
    :goto_4
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_7f

    .line 4473
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4474
    .local v1, "volumeUuid":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/Settings$VersionInfo;

    .line 4475
    .local v2, "ver":Lcom/android/server/pm/Settings$VersionInfo;
    sget-object v3, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-static {v3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 4476
    const-string v3, "Internal:"

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_52

    .line 4477
    :cond_2a
    const-string/jumbo v3, "primary_physical"

    invoke-static {v3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 4478
    const-string v3, "External:"

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_52

    .line 4480
    :cond_39
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UUID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4482
    :goto_52
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4483
    const-string/jumbo v3, "sdkVersion"

    iget v4, v2, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4484
    const-string v3, "databaseVersion"

    iget v4, v2, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4485
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4486
    const-string v3, "fingerprint"

    iget-object v4, v2, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4487
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4488
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4472
    .end local v1    # "volumeUuid":Ljava/lang/String;
    .end local v2    # "ver":Lcom/android/server/pm/Settings$VersionInfo;
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 4490
    .end local v0    # "i":I
    :cond_7f
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4491
    return-void
.end method

.method editCrossProfileIntentResolverLPw(I)Lcom/android/server/pm/CrossProfileIntentResolver;
    .registers 4
    .param p1, "userId"    # I

    .line 1222
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/CrossProfileIntentResolver;

    .line 1223
    .local v0, "cpir":Lcom/android/server/pm/CrossProfileIntentResolver;
    if-nez v0, :cond_15

    .line 1224
    new-instance v1, Lcom/android/server/pm/CrossProfileIntentResolver;

    invoke-direct {v1}, Lcom/android/server/pm/CrossProfileIntentResolver;-><init>()V

    move-object v0, v1

    .line 1225
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1227
    :cond_15
    return-object v0
.end method

.method editPersistentPreferredActivitiesLPw(I)Lcom/android/server/pm/PersistentPreferredIntentResolver;
    .registers 4
    .param p1, "userId"    # I

    .line 1213
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PersistentPreferredIntentResolver;

    .line 1214
    .local v0, "ppir":Lcom/android/server/pm/PersistentPreferredIntentResolver;
    if-nez v0, :cond_15

    .line 1215
    new-instance v1, Lcom/android/server/pm/PersistentPreferredIntentResolver;

    invoke-direct {v1}, Lcom/android/server/pm/PersistentPreferredIntentResolver;-><init>()V

    move-object v0, v1

    .line 1216
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1218
    :cond_15
    return-object v0
.end method

.method editPreferredActivitiesLPw(I)Lcom/android/server/pm/PreferredIntentResolver;
    .registers 4
    .param p1, "userId"    # I

    .line 1204
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PreferredIntentResolver;

    .line 1205
    .local v0, "pir":Lcom/android/server/pm/PreferredIntentResolver;
    if-nez v0, :cond_15

    .line 1206
    new-instance v1, Lcom/android/server/pm/PreferredIntentResolver;

    invoke-direct {v1}, Lcom/android/server/pm/PreferredIntentResolver;-><init>()V

    move-object v0, v1

    .line 1207
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1209
    :cond_15
    return-object v0
.end method

.method enableSystemPackageLPw(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .registers 25
    .param p1, "name"    # Ljava/lang/String;

    move-object/from16 v15, p0

    .line 565
    move-object/from16 v14, p1

    iget-object v0, v15, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/android/server/pm/PackageSetting;

    .line 566
    .local v13, "p":Lcom/android/server/pm/PackageSetting;
    if-nez v13, :cond_2c

    .line 567
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not disabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    const/4 v0, 0x0

    return-object v0

    .line 571
    :cond_2c
    iget-object v0, v13, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v0, :cond_40

    iget-object v0, v13, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_40

    .line 572
    iget-object v0, v13, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, -0x81

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 574
    :cond_40
    iget-object v2, v13, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    iget-object v3, v13, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    iget-object v4, v13, Lcom/android/server/pm/PackageSetting;->resourcePath:Ljava/io/File;

    iget-object v5, v13, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    iget-object v6, v13, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    iget-object v7, v13, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    iget-object v8, v13, Lcom/android/server/pm/PackageSetting;->cpuAbiOverrideString:Ljava/lang/String;

    iget v9, v13, Lcom/android/server/pm/PackageSetting;->appId:I

    iget-wide v10, v13, Lcom/android/server/pm/PackageSetting;->versionCode:J

    iget v12, v13, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    iget v1, v13, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    iget-object v0, v13, Lcom/android/server/pm/PackageSetting;->parentPackageName:Ljava/lang/String;

    move/from16 v18, v12

    iget-object v12, v13, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    move-object/from16 v19, v12

    iget-object v12, v13, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    move-object/from16 v20, v12

    iget-object v12, v13, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    move-object/from16 v16, v0

    move-object v0, v15

    move/from16 v17, v1

    move-object v1, v14

    move-object/from16 v21, v12

    move/from16 v12, v18

    move-object/from16 v18, v13

    move/from16 v13, v17

    .end local v13    # "p":Lcom/android/server/pm/PackageSetting;
    .local v18, "p":Lcom/android/server/pm/PackageSetting;
    move-object/from16 v14, v16

    move-object/from16 v15, v19

    move-object/from16 v16, v20

    move-object/from16 v17, v21

    invoke-virtual/range {v0 .. v17}, Lcom/android/server/pm/Settings;->addPackageLPw(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJIILjava/lang/String;Ljava/util/List;[Ljava/lang/String;[J)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 580
    .local v0, "ret":Lcom/android/server/pm/PackageSetting;
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    return-object v0
.end method

.method public findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;
    .registers 4
    .param p1, "volumeUuid"    # Ljava/lang/String;

    .line 1424
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/Settings$VersionInfo;

    .line 1425
    .local v0, "ver":Lcom/android/server/pm/Settings$VersionInfo;
    if-nez v0, :cond_15

    .line 1426
    new-instance v1, Lcom/android/server/pm/Settings$VersionInfo;

    invoke-direct {v1}, Lcom/android/server/pm/Settings$VersionInfo;-><init>()V

    move-object v0, v1

    .line 1427
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1429
    :cond_15
    return-object v0
.end method

.method getAllSharedUsersLPw()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/server/pm/SharedUserSetting;",
            ">;"
        }
    .end annotation

    .line 534
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method getApplicationEnabledSettingLPr(Ljava/lang/String;I)I
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 4312
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 4313
    .local v0, "pkg":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_f

    .line 4316
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    move-result v1

    return v1

    .line 4314
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getBlockUninstallLPr(ILjava/lang/String;)Z
    .registers 5
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1853
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 1854
    .local v0, "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v0, :cond_c

    .line 1855
    const/4 v1, 0x0

    return v1

    .line 1857
    :cond_c
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method getComponentEnabledSettingLPr(Landroid/content/ComponentName;I)I
    .registers 8
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 4320
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 4321
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 4322
    .local v1, "pkg":Lcom/android/server/pm/PackageSetting;
    if-eqz v1, :cond_17

    .line 4325
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 4326
    .local v2, "classNameStr":Ljava/lang/String;
    invoke-virtual {v1, v2, p2}, Lcom/android/server/pm/PackageSetting;->getCurrentEnabledStateLPr(Ljava/lang/String;I)I

    move-result v3

    return v3

    .line 4323
    .end local v2    # "classNameStr":Ljava/lang/String;
    :cond_17
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown component: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method getDefaultBrowserPackageNameLPw(I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"    # I

    .line 1363
    const/4 v0, -0x1

    if-ne p1, v0, :cond_5

    const/4 v0, 0x0

    goto :goto_d

    :cond_5
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDefaultBrowserApp:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_d
    return-object v0
.end method

.method getDefaultDialerPackageNameLPw(I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"    # I

    .line 1376
    const/4 v0, -0x1

    if-ne p1, v0, :cond_5

    const/4 v0, 0x0

    goto :goto_d

    :cond_5
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDefaultDialerApp:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_d
    return-object v0
.end method

.method public getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 4283
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 4284
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    return-object v0
.end method

.method public getExternalVersion()Lcom/android/server/pm/Settings$VersionInfo;
    .registers 3

    .line 1437
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    const-string/jumbo v1, "primary_physical"

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/Settings$VersionInfo;

    return-object v0
.end method

.method getHarmfulAppWarningLPr(Ljava/lang/String;I)Ljava/lang/String;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 4383
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 4384
    .local v0, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_f

    .line 4387
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->getHarmfulAppWarning(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 4385
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getInstallerPackageNameLPr(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 4296
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 4297
    .local v0, "pkg":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_d

    .line 4300
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    return-object v1

    .line 4298
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getIntentFilterVerificationLPr(Ljava/lang/String;)Landroid/content/pm/IntentFilterVerificationInfo;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1237
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 1238
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_c

    .line 1242
    const/4 v1, 0x0

    return-object v1

    .line 1244
    :cond_c
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getIntentFilterVerificationInfo()Landroid/content/pm/IntentFilterVerificationInfo;

    move-result-object v1

    return-object v1
.end method

.method getIntentFilterVerificationStatusLPr(Ljava/lang/String;I)I
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1277
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 1278
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_c

    .line 1282
    const/4 v1, 0x0

    return v1

    .line 1284
    :cond_c
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->getDomainVerificationStatusForUser(I)J

    move-result-wide v1

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    return v1
.end method

.method getIntentFilterVerificationsLPr(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/IntentFilterVerificationInfo;",
            ">;"
        }
    .end annotation

    .line 1314
    if-nez p1, :cond_7

    .line 1315
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1317
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1318
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/IntentFilterVerificationInfo;>;"
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 1319
    .local v2, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getIntentFilterVerificationInfo()Landroid/content/pm/IntentFilterVerificationInfo;

    move-result-object v3

    .line 1320
    .local v3, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    if-eqz v3, :cond_16

    invoke-virtual {v3}, Landroid/content/pm/IntentFilterVerificationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 1321
    invoke-virtual {v3}, Landroid/content/pm/IntentFilterVerificationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3d

    .line 1322
    goto :goto_16

    .line 1324
    :cond_3d
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1325
    .end local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v3    # "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    goto :goto_16

    .line 1326
    :cond_41
    return-object v0
.end method

.method public getInternalVersion()Lcom/android/server/pm/Settings$VersionInfo;
    .registers 3

    .line 1433
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    sget-object v1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/Settings$VersionInfo;

    return-object v0
.end method

.method getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .registers 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 453
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    return-object v0
.end method

.method getRenamedPackageLPr(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 457
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method getSharedUserLPw(Ljava/lang/String;IIZ)Lcom/android/server/pm/SharedUserSetting;
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "pkgFlags"    # I
    .param p3, "pkgPrivateFlags"    # I
    .param p4, "create"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 518
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/SharedUserSetting;

    .line 519
    .local v0, "s":Lcom/android/server/pm/SharedUserSetting;
    if-nez v0, :cond_5f

    if-eqz p4, :cond_5f

    .line 520
    new-instance v1, Lcom/android/server/pm/SharedUserSetting;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/pm/SharedUserSetting;-><init>(Ljava/lang/String;II)V

    move-object v0, v1

    .line 521
    invoke-direct {p0, v0}, Lcom/android/server/pm/Settings;->newUserIdLPw(Ljava/lang/Object;)I

    move-result v1

    iput v1, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    .line 522
    iget v1, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    if-ltz v1, :cond_42

    .line 527
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New shared user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5f

    .line 524
    :cond_42
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const/4 v2, -0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating shared user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 530
    :cond_5f
    :goto_5f
    return-object v0
.end method

.method public getUserIdLPr(I)Ljava/lang/Object;
    .registers 5
    .param p1, "uid"    # I

    .line 1173
    const/16 v0, 0x2710

    if-lt p1, v0, :cond_17

    .line 1174
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1175
    .local v0, "N":I
    add-int/lit16 v1, p1, -0x2710

    .line 1176
    .local v1, "index":I
    if-ge v1, v0, :cond_15

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_16

    :cond_15
    const/4 v2, 0x0

    :goto_16
    return-object v2

    .line 1178
    .end local v0    # "N":I
    .end local v1    # "index":I
    :cond_17
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mOtherUserIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getVerifierDeviceIdentityLPw()Landroid/content/pm/VerifierDeviceIdentity;
    .registers 2

    .line 4251
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    if-nez v0, :cond_d

    .line 4252
    invoke-static {}, Landroid/content/pm/VerifierDeviceIdentity;->generate()Landroid/content/pm/VerifierDeviceIdentity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    .line 4254
    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->writeLPr()V

    .line 4257
    :cond_d
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    return-object v0
.end method

.method getVolumePackagesLPr(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation

    .line 4407
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4408
    .local v0, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PackageSetting;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 4409
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 4410
    .local v2, "setting":Lcom/android/server/pm/PackageSetting;
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    invoke-static {p1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 4411
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4408
    .end local v2    # "setting":Lcom/android/server/pm/PackageSetting;
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 4414
    .end local v1    # "i":I
    :cond_24
    return-object v0
.end method

.method hasOtherDisabledSystemPkgWithChildLPr(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .param p1, "parentPackageName"    # Ljava/lang/String;
    .param p2, "childPackageName"    # Ljava/lang/String;

    .line 4262
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 4263
    .local v0, "packageCount":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_47

    .line 4264
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 4265
    .local v3, "disabledPs":Lcom/android/server/pm/PackageSetting;
    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    if-eqz v4, :cond_44

    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 4266
    goto :goto_44

    .line 4268
    :cond_1f
    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 4269
    goto :goto_44

    .line 4271
    :cond_28
    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 4272
    .local v4, "childCount":I
    move v5, v1

    .local v5, "j":I
    :goto_2f
    if-ge v5, v4, :cond_44

    .line 4273
    iget-object v6, v3, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 4274
    .local v6, "currChildPackageName":Ljava/lang/String;
    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_41

    .line 4275
    const/4 v1, 0x1

    return v1

    .line 4272
    .end local v6    # "currChildPackageName":Ljava/lang/String;
    :cond_41
    add-int/lit8 v5, v5, 0x1

    goto :goto_2f

    .line 4263
    .end local v3    # "disabledPs":Lcom/android/server/pm/PackageSetting;
    .end local v4    # "childCount":I
    .end local v5    # "j":I
    :cond_44
    :goto_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 4279
    .end local v2    # "i":I
    :cond_47
    return v1
.end method

.method insertPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/PackageParser$Package;)V
    .registers 5
    .param p1, "p"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 934
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v0, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v0, v0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    if-nez v0, :cond_e

    .line 935
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iput-object v1, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 939
    :cond_e
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v0, :cond_24

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v0, v0, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v0, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v0, v0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    if-nez v0, :cond_24

    .line 940
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v0, v0, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iput-object v1, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 942
    :cond_24
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/Settings;->addPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;)V

    .line 943
    return-void
.end method

.method isDisabledSystemPackageLPr(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 585
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isEnabledAndMatchLPr(Landroid/content/pm/ComponentInfo;II)Z
    .registers 7
    .param p1, "componentInfo"    # Landroid/content/pm/ComponentInfo;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .line 4288
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 4289
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_e

    const/4 v1, 0x0

    return v1

    .line 4291
    :cond_e
    invoke-virtual {v0, p3}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v1

    .line 4292
    .local v1, "userState":Landroid/content/pm/PackageUserState;
    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageUserState;->isMatch(Landroid/content/pm/ComponentInfo;I)Z

    move-result v2

    return v2
.end method

.method isOrphaned(Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 4304
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 4305
    .local v0, "pkg":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_d

    .line 4308
    iget-boolean v1, v0, Lcom/android/server/pm/PackageSetting;->isOrphaned:Z

    return v1

    .line 4306
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method onDefaultRuntimePermissionsGrantedLPr(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 1419
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    .line 1420
    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->onDefaultRuntimePermissionsGrantedLPr(I)V

    .line 1421
    return-void
.end method

.method public onVolumeForgotten(Ljava/lang/String;)V
    .registers 3
    .param p1, "fsUuid"    # Ljava/lang/String;

    .line 1441
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1442
    return-void
.end method

.method public processRestoredPermissionGrantLPr(Ljava/lang/String;Ljava/lang/String;ZII)V
    .registers 12
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "isGranted"    # Z
    .param p4, "restoredFlagSet"    # I
    .param p5, "userId"    # I

    .line 2007
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->rememberRestoredUserGrantLPr(Ljava/lang/String;Ljava/lang/String;ZII)V

    .line 2009
    return-void
.end method

.method pruneSharedUsersLPw()V
    .registers 9

    .line 643
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 644
    .local v0, "removeStage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 645
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/SharedUserSetting;

    .line 646
    .local v3, "sus":Lcom/android/server/pm/SharedUserSetting;
    if-nez v3, :cond_2d

    .line 647
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    goto :goto_f

    .line 651
    :cond_2d
    iget-object v4, v3, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/PackageSetting;>;"
    :goto_33
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 652
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 653
    .local v5, "ps":Lcom/android/server/pm/PackageSetting;
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    iget-object v7, v5, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_4c

    .line 654
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 656
    .end local v5    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_4c
    goto :goto_33

    .line 657
    .end local v4    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/PackageSetting;>;"
    :cond_4d
    iget-object v4, v3, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-nez v4, :cond_5e

    .line 658
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 660
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;>;"
    .end local v3    # "sus":Lcom/android/server/pm/SharedUserSetting;
    :cond_5e
    goto :goto_f

    .line 661
    :cond_5f
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_60
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_72

    .line 662
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    add-int/lit8 v1, v1, 0x1

    goto :goto_60

    .line 664
    .end local v1    # "i":I
    :cond_72
    return-void
.end method

.method readAllDomainVerificationsLPr(Lorg/xmlpull/v1/XmlPullParser;I)V
    .registers 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1966
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 1968
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1970
    .local v0, "outerDepth":I
    :cond_9
    :goto_9
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_66

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1a

    .line 1971
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_66

    .line 1972
    :cond_1a
    if-eq v2, v1, :cond_9

    const/4 v1, 0x4

    if-ne v2, v1, :cond_20

    .line 1973
    goto :goto_9

    .line 1976
    :cond_20
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1977
    .local v1, "tagName":Ljava/lang/String;
    const-string v3, "domain-verification"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 1978
    new-instance v3, Landroid/content/pm/IntentFilterVerificationInfo;

    invoke-direct {v3, p1}, Landroid/content/pm/IntentFilterVerificationInfo;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1979
    .local v3, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    invoke-virtual {v3}, Landroid/content/pm/IntentFilterVerificationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1980
    .local v4, "pkgName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 1981
    .local v5, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v5, :cond_43

    .line 1983
    invoke-virtual {v5, v3}, Lcom/android/server/pm/PackageSetting;->setIntentFilterVerificationInfo(Landroid/content/pm/IntentFilterVerificationInfo;)V

    goto :goto_48

    .line 1989
    :cond_43
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1995
    .end local v3    # "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "ps":Lcom/android/server/pm/PackageSetting;
    :goto_48
    goto :goto_65

    .line 1996
    :cond_49
    const/4 v3, 0x5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <all-intent-filter-verification>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1998
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1996
    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1999
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2001
    .end local v1    # "tagName":Ljava/lang/String;
    :goto_65
    goto :goto_9

    .line 2002
    :cond_66
    return-void
.end method

.method readBlockUninstallPackagesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    .registers 9
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1583
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1585
    .local v0, "outerDepth":I
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 1586
    .local v1, "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_9
    :goto_9
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .line 1586
    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_55

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1a

    .line 1587
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_55

    .line 1588
    :cond_1a
    if-eq v3, v2, :cond_9

    const/4 v2, 0x4

    if-ne v3, v2, :cond_20

    .line 1589
    goto :goto_9

    .line 1591
    :cond_20
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1592
    .local v2, "tagName":Ljava/lang/String;
    const-string v4, "block-uninstall"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 1593
    const/4 v4, 0x0

    const-string/jumbo v5, "packageName"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1594
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1595
    .end local v4    # "packageName":Ljava/lang/String;
    goto :goto_54

    .line 1596
    :cond_38
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under block-uninstall-packages: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1597
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1598
    .local v4, "msg":Ljava/lang/String;
    const/4 v5, 0x5

    invoke-static {v5, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1599
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1601
    .end local v2    # "tagName":Ljava/lang/String;
    .end local v4    # "msg":Ljava/lang/String;
    :goto_54
    goto :goto_9

    .line 1602
    :cond_55
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_61

    .line 1603
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_66

    .line 1605
    :cond_61
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1607
    :goto_66
    return-void
.end method

.method readDefaultAppsLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    .registers 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1558
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1560
    .local v0, "outerDepth":I
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .line 1560
    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_67

    const/4 v1, 0x3

    if-ne v2, v1, :cond_15

    .line 1561
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_67

    .line 1562
    :cond_15
    if-eq v2, v1, :cond_4

    const/4 v1, 0x4

    if-ne v2, v1, :cond_1b

    .line 1563
    goto :goto_4

    .line 1565
    :cond_1b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1566
    .local v1, "tagName":Ljava/lang/String;
    const-string v3, "default-browser"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_35

    .line 1567
    const-string/jumbo v3, "packageName"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1568
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mDefaultBrowserApp:Landroid/util/SparseArray;

    invoke-virtual {v4, p2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1569
    .end local v3    # "packageName":Ljava/lang/String;
    goto :goto_66

    :cond_35
    const-string v3, "default-dialer"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 1570
    const-string/jumbo v3, "packageName"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1571
    .restart local v3    # "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mDefaultDialerApp:Landroid/util/SparseArray;

    invoke-virtual {v4, p2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1572
    .end local v3    # "packageName":Ljava/lang/String;
    goto :goto_66

    .line 1573
    :cond_4a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element under default-apps: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1574
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1575
    .local v3, "msg":Ljava/lang/String;
    const/4 v4, 0x5

    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1576
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1578
    .end local v1    # "tagName":Ljava/lang/String;
    .end local v3    # "msg":Ljava/lang/String;
    :goto_66
    goto :goto_4

    .line 1579
    :cond_67
    return-void
.end method

.method readInstallPermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/permission/PermissionsState;)V
    .registers 15
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "permissionsState"    # Lcom/android/server/pm/permission/PermissionsState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2232
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 2234
    .local v0, "outerDepth":I
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .line 2234
    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_df

    const/4 v1, 0x3

    if-ne v2, v1, :cond_15

    .line 2236
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_df

    .line 2237
    :cond_15
    if-eq v2, v1, :cond_4

    const/4 v1, 0x4

    if-ne v2, v1, :cond_1b

    .line 2239
    goto :goto_4

    .line 2241
    :cond_1b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2242
    .local v1, "tagName":Ljava/lang/String;
    const-string/jumbo v4, "item"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c0

    .line 2243
    const-string/jumbo v4, "name"

    const/4 v5, 0x0

    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2245
    .local v4, "name":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v6, v4}, Lcom/android/server/pm/permission/PermissionSettings;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v6

    .line 2246
    .local v6, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-nez v6, :cond_52

    .line 2247
    const-string v3, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown permission: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2248
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2249
    goto :goto_4

    .line 2252
    :cond_52
    const-string v7, "granted"

    invoke-interface {p1, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2253
    .local v7, "grantedStr":Ljava/lang/String;
    const/4 v8, 0x0

    if-eqz v7, :cond_64

    .line 2254
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_62

    goto :goto_64

    :cond_62
    move v3, v8

    nop

    .line 2256
    .local v3, "granted":Z
    :cond_64
    :goto_64
    const-string v9, "flags"

    invoke-interface {p1, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2257
    .local v5, "flagsStr":Ljava/lang/String;
    if-eqz v5, :cond_73

    .line 2258
    const/16 v8, 0x10

    invoke-static {v5, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    nop

    .line 2260
    .local v8, "flags":I
    :cond_73
    const/16 v9, 0xff

    const/4 v10, -0x1

    if-eqz v3, :cond_9c

    .line 2261
    invoke-virtual {p2, v6}, Lcom/android/server/pm/permission/PermissionsState;->grantInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v11

    if-ne v11, v10, :cond_98

    .line 2263
    const-string v9, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Permission already added: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2264
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_bf

    .line 2266
    :cond_98
    invoke-virtual {p2, v6, v10, v9, v8}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    goto :goto_bf

    .line 2270
    :cond_9c
    invoke-virtual {p2, v6}, Lcom/android/server/pm/permission/PermissionsState;->revokeInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v11

    if-ne v11, v10, :cond_bc

    .line 2272
    const-string v9, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Permission already added: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2273
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_bf

    .line 2275
    :cond_bc
    invoke-virtual {p2, v6, v10, v9, v8}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 2279
    .end local v3    # "granted":Z
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "flagsStr":Ljava/lang/String;
    .end local v6    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v7    # "grantedStr":Ljava/lang/String;
    .end local v8    # "flags":I
    :goto_bf
    goto :goto_dd

    .line 2280
    :cond_c0
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <permissions>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2281
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2280
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2282
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2284
    .end local v1    # "tagName":Ljava/lang/String;
    :goto_dd
    goto/16 :goto_4

    .line 2285
    :cond_df
    return-void
.end method

.method readLPw(Ljava/util/List;)Z
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;)Z"
        }
    .end annotation

    .line 2995
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    move-object/from16 v1, p0

    .line 2995
    const/4 v2, 0x0

    .line 2996
    .local v2, "str":Ljava/io/FileInputStream;
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v3, 0x4

    if-eqz v0, :cond_47

    .line 2998
    :try_start_c
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v4, v1, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v0

    .line 2999
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v4, "Reading from backup settings file\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3000
    const-string v0, "Need to read from backup settings file"

    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3002
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 3006
    const-string v0, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cleaning up settings file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3008
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_45} :catch_46

    .line 3012
    :cond_45
    goto :goto_47

    .line 3010
    :catch_46
    move-exception v0

    .line 3015
    :cond_47
    :goto_47
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3016
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3017
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 3018
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mInstallerPackages:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 3021
    const/4 v4, 0x6

    const/4 v5, 0x0

    if-nez v2, :cond_9a

    .line 3022
    :try_start_5f
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_8b

    .line 3023
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v6, "No settings file found\n"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3024
    const-string v0, "No settings file; creating initial state"

    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3028
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/Settings$VersionInfo;->forceCurrent()V

    .line 3029
    const-string/jumbo v0, "primary_physical"

    invoke-virtual {v1, v0}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/Settings$VersionInfo;->forceCurrent()V
    :try_end_86
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5f .. :try_end_86} :catch_97
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_86} :catch_97
    .catch Ljava/lang/NumberFormatException; {:try_start_5f .. :try_end_86} :catch_97
    .catchall {:try_start_5f .. :try_end_86} :catchall_94

    .line 3030
    nop

    .line 3169
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3030
    return v5

    .line 3032
    :cond_8b
    :try_start_8b
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v6, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-direct {v0, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v0

    goto :goto_9a

    .line 3169
    :catchall_94
    move-exception v0

    goto/16 :goto_47e

    .line 3161
    :catch_97
    move-exception v0

    goto/16 :goto_42a

    .line 3034
    :cond_9a
    :goto_9a
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    move-object v6, v0

    .line 3035
    .local v6, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 3038
    :goto_a8
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v7, v0

    .line 3038
    .local v7, "type":I
    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eq v0, v8, :cond_b4

    if-eq v7, v9, :cond_b4

    .line 3038
    .end local v7    # "type":I
    goto :goto_a8

    .line 3043
    .restart local v7    # "type":I
    :cond_b4
    if-eq v7, v8, :cond_cf

    .line 3044
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v3, "No start tag found in settings file\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3045
    const/4 v0, 0x5

    const-string v3, "No start tag found in package manager settings"

    invoke-static {v0, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3047
    const-string v0, "PackageManager"

    const-string v3, "No start tag found in package manager settings"

    invoke-static {v0, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ca
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8b .. :try_end_ca} :catch_97
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_ca} :catch_97
    .catch Ljava/lang/NumberFormatException; {:try_start_8b .. :try_end_ca} :catch_97
    .catchall {:try_start_8b .. :try_end_ca} :catchall_94

    .line 3049
    nop

    .line 3169
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3049
    return v5

    .line 3052
    :cond_cf
    :try_start_cf
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 3052
    .local v0, "outerDepth":I
    :goto_d3
    move v8, v0

    .line 3053
    .end local v0    # "outerDepth":I
    .local v8, "outerDepth":I
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v7, v0

    if-eq v0, v9, :cond_2f7

    const/4 v0, 0x3

    if-ne v7, v0, :cond_e4

    .line 3054
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    if-le v10, v8, :cond_2f7

    .line 3055
    :cond_e4
    if-eq v7, v0, :cond_2f4

    if-ne v7, v3, :cond_ea

    .line 3056
    goto/16 :goto_2f4

    .line 3059
    :cond_ea
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 3060
    .local v10, "tagName":Ljava/lang/String;
    const-string/jumbo v0, "package"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fd

    .line 3061
    invoke-direct {v1, v6}, Lcom/android/server/pm/Settings;->readPackageLPw(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2f3

    .line 3062
    :cond_fd
    const-string/jumbo v0, "permissions"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10d

    .line 3063
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v0, v6}, Lcom/android/server/pm/permission/PermissionSettings;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2f3

    .line 3064
    :cond_10d
    const-string/jumbo v0, "permission-trees"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11d

    .line 3065
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v0, v6}, Lcom/android/server/pm/permission/PermissionSettings;->readPermissionTrees(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2f3

    .line 3066
    :cond_11d
    const-string/jumbo v0, "shared-user"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12b

    .line 3067
    invoke-direct {v1, v6}, Lcom/android/server/pm/Settings;->readSharedUserLPw(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2f3

    .line 3068
    :cond_12b
    const-string/jumbo v0, "preferred-packages"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_136

    .line 3068
    .end local v10    # "tagName":Ljava/lang/String;
    goto/16 :goto_2f3

    .line 3070
    .restart local v10    # "tagName":Ljava/lang/String;
    :cond_136
    const-string/jumbo v0, "preferred-activities"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_144

    .line 3073
    invoke-virtual {v1, v6, v5}, Lcom/android/server/pm/Settings;->readPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto/16 :goto_2f3

    .line 3074
    :cond_144
    const-string/jumbo v0, "persistent-preferred-activities"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_152

    .line 3077
    invoke-direct {v1, v6, v5}, Lcom/android/server/pm/Settings;->readPersistentPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto/16 :goto_2f3

    .line 3078
    :cond_152
    const-string v0, "crossProfile-intent-filters"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15f

    .line 3081
    invoke-direct {v1, v6, v5}, Lcom/android/server/pm/Settings;->readCrossProfileIntentFiltersLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto/16 :goto_2f3

    .line 3082
    :cond_15f
    const-string v0, "default-browser"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16c

    .line 3083
    invoke-virtual {v1, v6, v5}, Lcom/android/server/pm/Settings;->readDefaultAppsLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto/16 :goto_2f3

    .line 3084
    :cond_16c
    const-string/jumbo v0, "updated-package"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17a

    .line 3085
    invoke-direct {v1, v6}, Lcom/android/server/pm/Settings;->readDisabledSysPackageLPw(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2f3

    .line 3086
    :cond_17a
    const-string v0, "cleaning-package"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v11, 0x0

    if-eqz v0, :cond_1ba

    .line 3087
    const-string/jumbo v0, "name"

    invoke-interface {v6, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    .line 3088
    .local v12, "name":Ljava/lang/String;
    const-string/jumbo v0, "user"

    invoke-interface {v6, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    .line 3089
    .local v13, "userStr":Ljava/lang/String;
    const-string v0, "code"

    invoke-interface {v6, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_199
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_cf .. :try_end_199} :catch_97
    .catch Ljava/io/IOException; {:try_start_cf .. :try_end_199} :catch_97
    .catch Ljava/lang/NumberFormatException; {:try_start_cf .. :try_end_199} :catch_97
    .catchall {:try_start_cf .. :try_end_199} :catchall_94

    move-object v11, v0

    .line 3090
    .local v11, "codeStr":Ljava/lang/String;
    if-eqz v12, :cond_1b8

    .line 3091
    const/4 v14, 0x0

    .line 3092
    .local v14, "userId":I
    move v15, v9

    .line 3094
    .local v15, "andCode":Z
    if-eqz v13, :cond_1a8

    .line 3095
    :try_start_1a0
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1a4
    .catch Ljava/lang/NumberFormatException; {:try_start_1a0 .. :try_end_1a4} :catch_1a6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1a0 .. :try_end_1a4} :catch_97
    .catch Ljava/io/IOException; {:try_start_1a0 .. :try_end_1a4} :catch_97
    .catchall {:try_start_1a0 .. :try_end_1a4} :catchall_94

    move v14, v0

    goto :goto_1a8

    .line 3097
    :catch_1a6
    move-exception v0

    goto :goto_1a9

    .line 3098
    :cond_1a8
    :goto_1a8
    nop

    .line 3099
    :goto_1a9
    if-eqz v11, :cond_1b0

    .line 3100
    :try_start_1ab
    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    move v15, v0

    .line 3102
    :cond_1b0
    new-instance v0, Landroid/content/pm/PackageCleanItem;

    invoke-direct {v0, v14, v12, v15}, Landroid/content/pm/PackageCleanItem;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v1, v0}, Lcom/android/server/pm/Settings;->addPackageToCleanLPw(Landroid/content/pm/PackageCleanItem;)V

    .line 3104
    .end local v11    # "codeStr":Ljava/lang/String;
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "userStr":Ljava/lang/String;
    .end local v14    # "userId":I
    .end local v15    # "andCode":Z
    :cond_1b8
    goto/16 :goto_2f3

    :cond_1ba
    const-string/jumbo v0, "renamed-package"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1dc

    .line 3105
    const-string/jumbo v0, "new"

    invoke-interface {v6, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3106
    .local v0, "nname":Ljava/lang/String;
    const-string/jumbo v12, "old"

    invoke-interface {v6, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3107
    .local v11, "oname":Ljava/lang/String;
    if-eqz v0, :cond_1da

    if-eqz v11, :cond_1da

    .line 3108
    iget-object v12, v1, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v12, v0, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3110
    .end local v0    # "nname":Ljava/lang/String;
    .end local v11    # "oname":Ljava/lang/String;
    :cond_1da
    goto/16 :goto_2f3

    :cond_1dc
    const-string/jumbo v0, "restored-ivi"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ea

    .line 3111
    invoke-direct {v1, v6}, Lcom/android/server/pm/Settings;->readRestoredIntentFilterVerifications(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2f3

    .line 3112
    :cond_1ea
    const-string/jumbo v0, "last-platform-version"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21c

    .line 3114
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v0

    .line 3116
    .local v0, "internal":Lcom/android/server/pm/Settings$VersionInfo;
    const-string/jumbo v11, "primary_physical"

    invoke-virtual {v1, v11}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v11

    .line 3119
    .local v11, "external":Lcom/android/server/pm/Settings$VersionInfo;
    const-string v12, "internal"

    invoke-static {v6, v12, v5}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v12

    iput v12, v0, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    .line 3120
    const-string v12, "external"

    invoke-static {v6, v12, v5}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v12

    iput v12, v11, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    .line 3121
    const-string v12, "fingerprint"

    .line 3122
    invoke-static {v6, v12}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    iput-object v12, v0, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    .line 3124
    .end local v0    # "internal":Lcom/android/server/pm/Settings$VersionInfo;
    .end local v11    # "external":Lcom/android/server/pm/Settings$VersionInfo;
    goto/16 :goto_2f3

    :cond_21c
    const-string v0, "database-version"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_243

    .line 3126
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v0

    .line 3128
    .restart local v0    # "internal":Lcom/android/server/pm/Settings$VersionInfo;
    const-string/jumbo v11, "primary_physical"

    invoke-virtual {v1, v11}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v11

    .line 3131
    .restart local v11    # "external":Lcom/android/server/pm/Settings$VersionInfo;
    const-string v12, "internal"

    invoke-static {v6, v12, v5}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v12

    iput v12, v0, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    .line 3132
    const-string v12, "external"

    invoke-static {v6, v12, v5}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v12

    iput v12, v11, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    .line 3134
    .end local v0    # "internal":Lcom/android/server/pm/Settings$VersionInfo;
    .end local v11    # "external":Lcom/android/server/pm/Settings$VersionInfo;
    goto/16 :goto_2f3

    :cond_243
    const-string/jumbo v0, "verifier"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_277

    .line 3135
    const-string v0, "device"

    invoke-interface {v6, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_252
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1ab .. :try_end_252} :catch_97
    .catch Ljava/io/IOException; {:try_start_1ab .. :try_end_252} :catch_97
    .catch Ljava/lang/NumberFormatException; {:try_start_1ab .. :try_end_252} :catch_97
    .catchall {:try_start_1ab .. :try_end_252} :catchall_94

    move-object v11, v0

    .line 3137
    .local v11, "deviceIdentity":Ljava/lang/String;
    :try_start_253
    invoke-static {v11}, Landroid/content/pm/VerifierDeviceIdentity;->parse(Ljava/lang/String;)Landroid/content/pm/VerifierDeviceIdentity;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;
    :try_end_259
    .catch Ljava/lang/IllegalArgumentException; {:try_start_253 .. :try_end_259} :catch_25a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_253 .. :try_end_259} :catch_97
    .catch Ljava/io/IOException; {:try_start_253 .. :try_end_259} :catch_97
    .catch Ljava/lang/NumberFormatException; {:try_start_253 .. :try_end_259} :catch_97
    .catchall {:try_start_253 .. :try_end_259} :catchall_94

    .line 3141
    goto :goto_275

    .line 3138
    :catch_25a
    move-exception v0

    .line 3139
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_25b
    const-string v12, "PackageManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Discard invalid verifier device id: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3140
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 3139
    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3142
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v11    # "deviceIdentity":Ljava/lang/String;
    :goto_275
    goto/16 :goto_2f3

    :cond_277
    const-string/jumbo v0, "read-external-storage"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_297

    .line 3143
    const-string v0, "enforcement"

    invoke-interface {v6, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3144
    .local v0, "enforcement":Ljava/lang/String;
    nop

    .line 3145
    const-string v11, "1"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_292

    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_294

    :cond_292
    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_294
    iput-object v11, v1, Lcom/android/server/pm/Settings;->mReadExternalStorageEnforced:Ljava/lang/Boolean;

    .line 3146
    .end local v0    # "enforcement":Ljava/lang/String;
    goto :goto_2f3

    :cond_297
    const-string/jumbo v0, "keyset-settings"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a8

    .line 3147
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    iget-object v11, v1, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    invoke-virtual {v0, v6, v11}, Lcom/android/server/pm/KeySetManagerService;->readKeySetsLPw(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/ArrayMap;)V

    goto :goto_2f3

    .line 3148
    :cond_2a8
    const-string/jumbo v0, "version"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d6

    .line 3149
    const-string/jumbo v0, "volumeUuid"

    invoke-static {v6, v0}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3151
    .local v0, "volumeUuid":Ljava/lang/String;
    invoke-virtual {v1, v0}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v11

    .line 3152
    .local v11, "ver":Lcom/android/server/pm/Settings$VersionInfo;
    const-string/jumbo v12, "sdkVersion"

    invoke-static {v6, v12}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v12

    iput v12, v11, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    .line 3153
    const-string v12, "databaseVersion"

    invoke-static {v6, v12}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v12

    iput v12, v11, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    .line 3154
    const-string v12, "fingerprint"

    invoke-static {v6, v12}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    .line 3155
    .end local v0    # "volumeUuid":Ljava/lang/String;
    .end local v11    # "ver":Lcom/android/server/pm/Settings$VersionInfo;
    goto :goto_2f3

    .line 3156
    :cond_2d6
    const-string v0, "PackageManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown element under <packages>: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3157
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3156
    invoke-static {v0, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3158
    invoke-static {v6}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2f3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_25b .. :try_end_2f3} :catch_97
    .catch Ljava/io/IOException; {:try_start_25b .. :try_end_2f3} :catch_97
    .catch Ljava/lang/NumberFormatException; {:try_start_25b .. :try_end_2f3} :catch_97
    .catchall {:try_start_25b .. :try_end_2f3} :catchall_94

    .line 3160
    .end local v10    # "tagName":Ljava/lang/String;
    :goto_2f3
    nop

    .line 3052
    :cond_2f4
    :goto_2f4
    move v0, v8

    goto/16 :goto_d3

    .line 3169
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "type":I
    .end local v8    # "outerDepth":I
    :cond_2f7
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3170
    nop

    .line 3183
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3185
    .local v0, "N":I
    move v3, v5

    .line 3185
    .local v3, "i":I
    :goto_302
    if-ge v3, v0, :cond_37b

    .line 3186
    iget-object v6, v1, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageSetting;

    .line 3187
    .local v6, "p":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->getSharedUserId()I

    move-result v7

    .line 3188
    .local v7, "sharedUserId":I
    invoke-virtual {v1, v7}, Lcom/android/server/pm/Settings;->getUserIdLPr(I)Ljava/lang/Object;

    move-result-object v8

    .line 3189
    .local v8, "idObj":Ljava/lang/Object;
    instance-of v10, v8, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v10, :cond_325

    .line 3190
    move-object v10, v8

    check-cast v10, Lcom/android/server/pm/SharedUserSetting;

    .line 3191
    .local v10, "sharedUser":Lcom/android/server/pm/SharedUserSetting;
    iput-object v10, v6, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 3192
    iget v11, v10, Lcom/android/server/pm/SharedUserSetting;->userId:I

    iput v11, v6, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 3193
    invoke-direct {v1, v6, v10}, Lcom/android/server/pm/Settings;->addPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;)V

    .line 3194
    .end local v10    # "sharedUser":Lcom/android/server/pm/SharedUserSetting;
    goto :goto_378

    :cond_325
    if-eqz v8, :cond_350

    .line 3195
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad package setting: package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v6, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " has shared uid "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " that is not a shared uid\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3197
    .local v10, "msg":Ljava/lang/String;
    iget-object v11, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3198
    invoke-static {v4, v10}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3199
    .end local v10    # "msg":Ljava/lang/String;
    goto :goto_378

    .line 3200
    :cond_350
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad package setting: package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v6, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " has shared uid "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " that is not defined\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3202
    .restart local v10    # "msg":Ljava/lang/String;
    iget-object v11, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3203
    invoke-static {v4, v10}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3185
    .end local v6    # "p":Lcom/android/server/pm/PackageSetting;
    .end local v7    # "sharedUserId":I
    .end local v8    # "idObj":Ljava/lang/Object;
    .end local v10    # "msg":Ljava/lang/String;
    :goto_378
    add-int/lit8 v3, v3, 0x1

    goto :goto_302

    .line 3206
    .end local v3    # "i":I
    :cond_37b
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 3208
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3a7

    iget-object v3, v1, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    .line 3209
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_391

    goto :goto_3a7

    .line 3217
    :cond_391
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_395
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 3218
    .local v4, "user":Landroid/content/pm/UserInfo;
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v5}, Lcom/android/server/pm/Settings;->readPackageRestrictionsLPr(I)V

    .line 3219
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    goto :goto_395

    .line 3211
    :cond_3a7
    :goto_3a7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->readStoppedLPw()V

    .line 3212
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 3213
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 3215
    invoke-virtual {v1, v5}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 3222
    :cond_3b7
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3bb
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3cf

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 3223
    .restart local v4    # "user":Landroid/content/pm/UserInfo;
    iget-object v5, v1, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->readStateForUserSyncLPr(I)V

    .line 3224
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    goto :goto_3bb

    .line 3230
    :cond_3cf
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 3231
    .local v3, "disabledIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/PackageSetting;>;"
    :goto_3d9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3f7

    .line 3232
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 3233
    .local v4, "disabledPs":Lcom/android/server/pm/PackageSetting;
    iget v5, v4, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {v1, v5}, Lcom/android/server/pm/Settings;->getUserIdLPr(I)Ljava/lang/Object;

    move-result-object v5

    .line 3234
    .local v5, "id":Ljava/lang/Object;
    if-eqz v5, :cond_3f6

    instance-of v6, v5, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v6, :cond_3f6

    .line 3235
    move-object v6, v5

    check-cast v6, Lcom/android/server/pm/SharedUserSetting;

    iput-object v6, v4, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 3237
    .end local v4    # "disabledPs":Lcom/android/server/pm/PackageSetting;
    .end local v5    # "id":Ljava/lang/Object;
    :cond_3f6
    goto :goto_3d9

    .line 3239
    :cond_3f7
    iget-object v4, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Read completed successfully: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " packages, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    .line 3240
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " shared uids\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3239
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3242
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr()V

    .line 3244
    return v9

    .line 3161
    .end local v0    # "N":I
    .end local v3    # "disabledIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/PackageSetting;>;"
    :goto_42a
    nop

    .line 3162
    .local v0, "e":Ljava/lang/Exception;
    :try_start_42b
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 3163
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error reading: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3164
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error reading settings: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3165
    const-string v3, "PackageManager"

    const-string v4, "Error reading package manager settings"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3166
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed parsing settings file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_47e
    .catchall {:try_start_42b .. :try_end_47e} :catchall_94

    .line 3169
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_47e
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0
.end method

.method readPackageRestrictionsLPr(I)V
    .registers 54
    .param p1, "userId"    # I

    move-object/from16 v1, p0

    .line 1613
    move/from16 v15, p1

    const/4 v2, 0x0

    .line 1614
    .local v2, "str":Ljava/io/FileInputStream;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateFile(I)Ljava/io/File;

    move-result-object v14

    .line 1615
    .local v14, "userPackagesStateFile":Ljava/io/File;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateBackupFile(I)Ljava/io/File;

    move-result-object v13

    .line 1616
    .local v13, "backupFile":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v12, 0x4

    if-eqz v0, :cond_47

    .line 1618
    :try_start_14
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v0

    .line 1619
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v3, "Reading from backup stopped packages file\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1620
    const-string v0, "Need to read from backup stopped packages file"

    invoke-static {v12, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1622
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 1626
    const-string v0, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cleaning up stopped packages file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    invoke-virtual {v14}, Ljava/io/File;->delete()Z
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_45} :catch_46

    .line 1632
    :cond_45
    goto :goto_47

    .line 1630
    :catch_46
    move-exception v0

    .line 1636
    .end local v2    # "str":Ljava/io/FileInputStream;
    .local v25, "str":Ljava/io/FileInputStream;
    :cond_47
    :goto_47
    move-object/from16 v25, v2

    const/4 v11, 0x6

    if-nez v25, :cond_135

    .line 1637
    :try_start_4c
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_50
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4c .. :try_end_50} :catch_129
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_50} :catch_11e

    if-nez v0, :cond_e8

    .line 1638
    :try_start_52
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v2, "No stopped packages file found\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1639
    const-string v0, "No stopped packages file; assuming all started"

    invoke-static {v12, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1646
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_68
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ce

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;
    :try_end_74
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_52 .. :try_end_74} :catch_dd
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_74} :catch_d3

    .line 1647
    .local v2, "pkg":Lcom/android/server/pm/PackageSetting;
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move v3, v15

    move v11, v12

    move-object/from16 v12, v16

    move-object/from16 v30, v13

    move-object/from16 v13, v17

    .end local v13    # "backupFile":Ljava/io/File;
    .local v30, "backupFile":Ljava/io/File;
    move-object/from16 v31, v14

    move-object/from16 v14, v18

    .line 1647
    .end local v14    # "userPackagesStateFile":Ljava/io/File;
    .local v31, "userPackagesStateFile":Ljava/io/File;
    move-object/from16 v15, v19

    move/from16 v16, v20

    move/from16 v17, v21

    move-object/from16 v18, v22

    move-object/from16 v19, v23

    move-object/from16 v20, v24

    move/from16 v21, v26

    move/from16 v22, v27

    move/from16 v23, v28

    move-object/from16 v24, v29

    :try_start_b6
    invoke-virtual/range {v2 .. v24}, Lcom/android/server/pm/PackageSetting;->setUserState(IJIZZZZZLjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;ZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;IIILjava/lang/String;)V
    :try_end_b9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b6 .. :try_end_b9} :catch_c8
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_b9} :catch_c2

    .line 1665
    .end local v2    # "pkg":Lcom/android/server/pm/PackageSetting;
    nop

    .line 1646
    move-object/from16 v13, v30

    move-object/from16 v14, v31

    const/4 v11, 0x6

    move/from16 v15, p1

    goto :goto_68

    .line 1828
    :catch_c2
    move-exception v0

    move-object/from16 v14, v25

    move-object/from16 v47, v31

    goto :goto_fd

    .line 1821
    :catch_c8
    move-exception v0

    move-object/from16 v14, v25

    move-object/from16 v47, v31

    goto :goto_106

    .line 1666
    .end local v30    # "backupFile":Ljava/io/File;
    .end local v31    # "userPackagesStateFile":Ljava/io/File;
    .restart local v13    # "backupFile":Ljava/io/File;
    .restart local v14    # "userPackagesStateFile":Ljava/io/File;
    :cond_ce
    move-object/from16 v30, v13

    move-object/from16 v31, v14

    .line 1666
    .end local v13    # "backupFile":Ljava/io/File;
    .end local v14    # "userPackagesStateFile":Ljava/io/File;
    .restart local v30    # "backupFile":Ljava/io/File;
    .restart local v31    # "userPackagesStateFile":Ljava/io/File;
    return-void

    .line 1828
    .end local v30    # "backupFile":Ljava/io/File;
    .end local v31    # "userPackagesStateFile":Ljava/io/File;
    .restart local v13    # "backupFile":Ljava/io/File;
    .restart local v14    # "userPackagesStateFile":Ljava/io/File;
    :catch_d3
    move-exception v0

    move-object/from16 v30, v13

    move-object/from16 v47, v14

    move v3, v15

    move-object/from16 v14, v25

    .line 1828
    .end local v13    # "backupFile":Ljava/io/File;
    .end local v14    # "userPackagesStateFile":Ljava/io/File;
    .restart local v30    # "backupFile":Ljava/io/File;
    .restart local v31    # "userPackagesStateFile":Ljava/io/File;
    goto/16 :goto_4f4

    .line 1821
    .end local v30    # "backupFile":Ljava/io/File;
    .end local v31    # "userPackagesStateFile":Ljava/io/File;
    .restart local v13    # "backupFile":Ljava/io/File;
    .restart local v14    # "userPackagesStateFile":Ljava/io/File;
    :catch_dd
    move-exception v0

    move-object/from16 v30, v13

    move v5, v11

    move-object/from16 v47, v14

    move v3, v15

    move-object/from16 v14, v25

    .line 1821
    .end local v13    # "backupFile":Ljava/io/File;
    .end local v14    # "userPackagesStateFile":Ljava/io/File;
    .restart local v30    # "backupFile":Ljava/io/File;
    .restart local v31    # "userPackagesStateFile":Ljava/io/File;
    goto/16 :goto_532

    .line 1668
    .end local v30    # "backupFile":Ljava/io/File;
    .end local v31    # "userPackagesStateFile":Ljava/io/File;
    .restart local v13    # "backupFile":Ljava/io/File;
    .restart local v14    # "userPackagesStateFile":Ljava/io/File;
    :cond_e8
    move-object/from16 v30, v13

    move-object/from16 v31, v14

    .line 1668
    .end local v13    # "backupFile":Ljava/io/File;
    .end local v14    # "userPackagesStateFile":Ljava/io/File;
    .restart local v30    # "backupFile":Ljava/io/File;
    .restart local v31    # "userPackagesStateFile":Ljava/io/File;
    :try_start_ec
    new-instance v0, Ljava/io/FileInputStream;
    :try_end_ee
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_ec .. :try_end_ee} :catch_114
    .catch Ljava/io/IOException; {:try_start_ec .. :try_end_ee} :catch_10b

    move-object/from16 v15, v31

    :try_start_f0
    invoke-direct {v0, v15}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_f3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f0 .. :try_end_f3} :catch_101
    .catch Ljava/io/IOException; {:try_start_f0 .. :try_end_f3} :catch_f8

    .line 1668
    .end local v31    # "userPackagesStateFile":Ljava/io/File;
    .local v15, "userPackagesStateFile":Ljava/io/File;
    move-object/from16 v25, v0

    .line 1670
    move-object/from16 v14, v25

    goto :goto_13a

    .line 1828
    :catch_f8
    move-exception v0

    move-object/from16 v47, v15

    move-object/from16 v14, v25

    .line 1828
    .end local v15    # "userPackagesStateFile":Ljava/io/File;
    .end local v25    # "str":Ljava/io/FileInputStream;
    .local v14, "str":Ljava/io/FileInputStream;
    .local v47, "userPackagesStateFile":Ljava/io/File;
    :goto_fd
    move/from16 v3, p1

    goto/16 :goto_4f4

    .line 1821
    .end local v14    # "str":Ljava/io/FileInputStream;
    .end local v47    # "userPackagesStateFile":Ljava/io/File;
    .restart local v15    # "userPackagesStateFile":Ljava/io/File;
    .restart local v25    # "str":Ljava/io/FileInputStream;
    :catch_101
    move-exception v0

    move-object/from16 v47, v15

    move-object/from16 v14, v25

    .line 1821
    .end local v15    # "userPackagesStateFile":Ljava/io/File;
    .end local v25    # "str":Ljava/io/FileInputStream;
    .restart local v14    # "str":Ljava/io/FileInputStream;
    .restart local v47    # "userPackagesStateFile":Ljava/io/File;
    :goto_106
    move/from16 v3, p1

    :goto_108
    const/4 v5, 0x6

    goto/16 :goto_532

    .line 1828
    .end local v14    # "str":Ljava/io/FileInputStream;
    .end local v47    # "userPackagesStateFile":Ljava/io/File;
    .restart local v25    # "str":Ljava/io/FileInputStream;
    .restart local v31    # "userPackagesStateFile":Ljava/io/File;
    :catch_10b
    move-exception v0

    move-object/from16 v14, v25

    move-object/from16 v47, v31

    move/from16 v3, p1

    .line 1828
    .end local v31    # "userPackagesStateFile":Ljava/io/File;
    .restart local v15    # "userPackagesStateFile":Ljava/io/File;
    goto/16 :goto_4f4

    .line 1821
    .end local v15    # "userPackagesStateFile":Ljava/io/File;
    .restart local v31    # "userPackagesStateFile":Ljava/io/File;
    :catch_114
    move-exception v0

    move-object/from16 v14, v25

    move-object/from16 v47, v31

    move/from16 v3, p1

    const/4 v5, 0x6

    .line 1821
    .end local v31    # "userPackagesStateFile":Ljava/io/File;
    .restart local v15    # "userPackagesStateFile":Ljava/io/File;
    goto/16 :goto_532

    .line 1828
    .end local v15    # "userPackagesStateFile":Ljava/io/File;
    .end local v30    # "backupFile":Ljava/io/File;
    .restart local v13    # "backupFile":Ljava/io/File;
    .local v14, "userPackagesStateFile":Ljava/io/File;
    :catch_11e
    move-exception v0

    move-object/from16 v30, v13

    move-object/from16 v47, v14

    move-object/from16 v14, v25

    move/from16 v3, p1

    .line 1828
    .end local v13    # "backupFile":Ljava/io/File;
    .end local v14    # "userPackagesStateFile":Ljava/io/File;
    .restart local v15    # "userPackagesStateFile":Ljava/io/File;
    .restart local v30    # "backupFile":Ljava/io/File;
    goto/16 :goto_4f4

    .line 1821
    .end local v15    # "userPackagesStateFile":Ljava/io/File;
    .end local v30    # "backupFile":Ljava/io/File;
    .restart local v13    # "backupFile":Ljava/io/File;
    .restart local v14    # "userPackagesStateFile":Ljava/io/File;
    :catch_129
    move-exception v0

    move-object/from16 v30, v13

    move v5, v11

    move-object/from16 v47, v14

    move-object/from16 v14, v25

    move/from16 v3, p1

    .line 1821
    .end local v13    # "backupFile":Ljava/io/File;
    .end local v14    # "userPackagesStateFile":Ljava/io/File;
    .restart local v15    # "userPackagesStateFile":Ljava/io/File;
    .restart local v30    # "backupFile":Ljava/io/File;
    goto/16 :goto_532

    .line 1670
    .end local v15    # "userPackagesStateFile":Ljava/io/File;
    .end local v30    # "backupFile":Ljava/io/File;
    .restart local v13    # "backupFile":Ljava/io/File;
    .restart local v14    # "userPackagesStateFile":Ljava/io/File;
    :cond_135
    move-object/from16 v30, v13

    move-object v15, v14

    move-object/from16 v14, v25

    .line 1670
    .end local v13    # "backupFile":Ljava/io/File;
    .end local v25    # "str":Ljava/io/FileInputStream;
    .local v14, "str":Ljava/io/FileInputStream;
    .restart local v15    # "userPackagesStateFile":Ljava/io/File;
    .restart local v30    # "backupFile":Ljava/io/File;
    :goto_13a
    :try_start_13a
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 1671
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v14, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1674
    :goto_147
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2
    :try_end_14b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13a .. :try_end_14b} :catch_52b
    .catch Ljava/io/IOException; {:try_start_13a .. :try_end_14b} :catch_4ee

    move v3, v2

    .line 1674
    .local v3, "type":I
    const/4 v11, 0x2

    const/4 v6, 0x1

    if-eq v2, v11, :cond_153

    if-eq v3, v6, :cond_153

    .line 1674
    .end local v3    # "type":I
    goto :goto_147

    .line 1679
    .restart local v3    # "type":I
    :cond_153
    if-eq v3, v11, :cond_16b

    .line 1680
    :try_start_155
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v4, "No start tag found in package restrictions file\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1681
    const/4 v2, 0x5

    const-string v4, "No start tag found in package manager stopped packages"

    invoke-static {v2, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_162
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_155 .. :try_end_162} :catch_167
    .catch Ljava/io/IOException; {:try_start_155 .. :try_end_162} :catch_163

    .line 1683
    return-void

    .line 1828
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "type":I
    :catch_163
    move-exception v0

    move-object/from16 v47, v15

    goto :goto_fd

    .line 1821
    :catch_167
    move-exception v0

    move-object/from16 v47, v15

    goto :goto_106

    .line 1686
    .restart local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "type":I
    :cond_16b
    const/4 v2, 0x0

    .line 1688
    .local v2, "maxAppLinkGeneration":I
    :try_start_16c
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    move v13, v4

    .line 1689
    .local v13, "outerDepth":I
    const/4 v10, 0x0

    move v9, v2

    move-object v2, v10

    .line 1690
    .local v2, "ps":Lcom/android/server/pm/PackageSetting;
    .local v9, "maxAppLinkGeneration":I
    :goto_174
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4
    :try_end_178
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_16c .. :try_end_178} :catch_52b
    .catch Ljava/io/IOException; {:try_start_16c .. :try_end_178} :catch_4ee

    move v3, v4

    if-eq v4, v6, :cond_4cc

    const/4 v8, 0x3

    if-ne v3, v8, :cond_192

    .line 1692
    :try_start_17e
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4
    :try_end_182
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_17e .. :try_end_182} :catch_167
    .catch Ljava/io/IOException; {:try_start_17e .. :try_end_182} :catch_163

    if-le v4, v13, :cond_185

    goto :goto_192

    .line 1817
    :cond_185
    move/from16 v45, v3

    move v12, v9

    move/from16 v27, v13

    move-object/from16 v50, v14

    move-object/from16 v47, v15

    move/from16 v3, p1

    goto/16 :goto_4d7

    .line 1693
    :cond_192
    :goto_192
    if-eq v3, v8, :cond_4a6

    if-ne v3, v12, :cond_1ac

    .line 1695
    nop

    .line 1689
    move/from16 v45, v3

    move/from16 v42, v6

    move-object/from16 v41, v10

    move/from16 v38, v11

    move/from16 v46, v12

    move/from16 v27, v13

    move-object/from16 v50, v14

    move-object/from16 v47, v15

    move/from16 v3, p1

    move v12, v9

    goto/16 :goto_4b9

    .line 1698
    :cond_1ac
    :try_start_1ac
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v7, v4

    .line 1699
    .local v7, "tagName":Ljava/lang/String;
    const-string/jumbo v4, "pkg"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_1b8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1ac .. :try_end_1b8} :catch_49c
    .catch Ljava/io/IOException; {:try_start_1ac .. :try_end_1b8} :catch_493

    if-eqz v4, :cond_405

    .line 1700
    :try_start_1ba
    const-string/jumbo v4, "name"

    invoke-interface {v0, v10, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1701
    .local v4, "name":Ljava/lang/String;
    iget-object v5, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;
    :try_end_1c9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1ba .. :try_end_1c9} :catch_3fc
    .catch Ljava/io/IOException; {:try_start_1ba .. :try_end_1c9} :catch_3f3

    move-object/from16 v25, v5

    .line 1702
    .end local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    .local v25, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v25, :cond_1ea

    .line 1703
    :try_start_1cd
    const-string v2, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No package known for stopped package "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1e6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1cd .. :try_end_1e6} :catch_167
    .catch Ljava/io/IOException; {:try_start_1cd .. :try_end_1e6} :catch_163

    .line 1706
    nop

    .line 1689
    move-object/from16 v2, v25

    goto :goto_174

    .line 1709
    :cond_1ea
    :try_start_1ea
    const-string v2, "ceDataInode"

    move/from16 v33, v9

    const-wide/16 v8, 0x0

    .line 1709
    .end local v9    # "maxAppLinkGeneration":I
    .local v33, "maxAppLinkGeneration":I
    invoke-static {v0, v2, v8, v9}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v8

    move-object v2, v4

    move-wide v4, v8

    .line 1711
    .local v2, "name":Ljava/lang/String;
    .local v4, "ceDataInode":J
    const-string v8, "inst"

    invoke-static {v0, v8, v6}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v8

    move-object v9, v7

    move v7, v8

    .line 1713
    .local v7, "installed":Z
    .local v9, "tagName":Ljava/lang/String;
    const-string/jumbo v8, "stopped"

    const/4 v11, 0x0

    invoke-static {v0, v8, v11}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v8

    const/4 v12, 0x3

    .line 1715
    .local v8, "stopped":Z
    const-string/jumbo v6, "nl"

    invoke-static {v0, v6, v11}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v6

    move-object/from16 v39, v9

    move/from16 v12, v33

    move v9, v6

    .line 1720
    .end local v33    # "maxAppLinkGeneration":I
    .local v9, "notLaunched":Z
    .local v12, "maxAppLinkGeneration":I
    .local v39, "tagName":Ljava/lang/String;
    const-string v6, "blocked"

    invoke-interface {v0, v10, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1721
    .local v6, "blockedStr":Ljava/lang/String;
    if-nez v6, :cond_21e

    .line 1722
    move/from16 v16, v11

    goto :goto_222

    :cond_21e
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v16

    .line 1723
    .local v16, "hidden":Z
    :goto_222
    const-string v11, "hidden"

    invoke-interface {v0, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1724
    .local v11, "hiddenStr":Ljava/lang/String;
    if-nez v11, :cond_22d

    .line 1725
    move/from16 v17, v16

    goto :goto_231

    :cond_22d
    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v17

    :goto_231
    move-wide/from16 v41, v4

    move-object v4, v10

    move/from16 v10, v17

    .line 1727
    .end local v4    # "ceDataInode":J
    .end local v16    # "hidden":Z
    .local v10, "hidden":Z
    .local v41, "ceDataInode":J
    const-string/jumbo v5, "suspended"

    const/4 v4, 0x0

    invoke-static {v0, v5, v4}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v5

    move/from16 v26, v5

    .line 1729
    .local v26, "suspended":Z
    const-string/jumbo v4, "suspending-package"

    const/4 v5, 0x0

    invoke-interface {v0, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1731
    .local v4, "suspendingPackage":Ljava/lang/String;
    const-string/jumbo v5, "suspend_dialog_message"

    move/from16 v45, v3

    const/4 v3, 0x0

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_252
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1ea .. :try_end_252} :catch_3fc
    .catch Ljava/io/IOException; {:try_start_1ea .. :try_end_252} :catch_3f3

    .line 1731
    .end local v3    # "type":I
    .local v45, "type":I
    move/from16 v27, v13

    move-object v13, v5

    .line 1733
    .local v13, "dialogMessage":Ljava/lang/String;
    .local v27, "outerDepth":I
    if-eqz v26, :cond_25e

    if-nez v4, :cond_25e

    .line 1734
    :try_start_259
    const-string v3, "android"
    :try_end_25b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_259 .. :try_end_25b} :catch_167
    .catch Ljava/io/IOException; {:try_start_259 .. :try_end_25b} :catch_163

    .line 1737
    .end local v4    # "suspendingPackage":Ljava/lang/String;
    .local v3, "suspendingPackage":Ljava/lang/String;
    move-object/from16 v28, v3

    goto :goto_260

    .line 1737
    .end local v3    # "suspendingPackage":Ljava/lang/String;
    .restart local v4    # "suspendingPackage":Ljava/lang/String;
    :cond_25e
    move-object/from16 v28, v4

    .line 1737
    .end local v4    # "suspendingPackage":Ljava/lang/String;
    .local v28, "suspendingPackage":Ljava/lang/String;
    :goto_260
    :try_start_260
    const-string v3, "blockUninstall"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v3

    move/from16 v29, v3

    .line 1739
    .local v29, "blockUninstall":Z
    const-string v3, "instant-app"

    invoke-static {v0, v3, v4}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v16

    .line 1741
    .local v16, "instantApp":Z
    const-string/jumbo v3, "virtual-preload"

    invoke-static {v0, v3, v4}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v17

    .line 1743
    .local v17, "virtualPreload":Z
    const-string v3, "enabled"

    invoke-static {v0, v3, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v31, v6

    const/4 v4, 0x1

    move v6, v3

    .line 1745
    .local v6, "enabled":I
    .local v31, "blockedStr":Ljava/lang/String;
    const-string v3, "enabledCaller"

    const/4 v5, 0x0

    invoke-interface {v0, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1747
    .local v18, "enabledCaller":Ljava/lang/String;
    const-string v3, "harmful-app-warning"

    .line 1748
    invoke-interface {v0, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1749
    .local v24, "harmfulAppWarning":Ljava/lang/String;
    const-string v3, "domainVerificationStatus"

    const/4 v5, 0x0

    invoke-static {v0, v3, v5}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v21

    .line 1752
    .local v21, "verifState":I
    const-string v3, "app-link-generation"

    invoke-static {v0, v3, v5}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    move v5, v3

    .line 1754
    .local v5, "linkGeneration":I
    if-le v5, v12, :cond_2a1

    .line 1755
    move v3, v5

    .line 1757
    .end local v12    # "maxAppLinkGeneration":I
    .local v3, "maxAppLinkGeneration":I
    move/from16 v33, v3

    goto :goto_2a3

    .line 1757
    .end local v3    # "maxAppLinkGeneration":I
    .restart local v12    # "maxAppLinkGeneration":I
    :cond_2a1
    move/from16 v33, v12

    .line 1757
    .end local v12    # "maxAppLinkGeneration":I
    .restart local v33    # "maxAppLinkGeneration":I
    :goto_2a3
    const-string v3, "install-reason"

    const/4 v12, 0x0

    invoke-static {v0, v3, v12}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v23

    .line 1760
    .local v23, "installReason":I
    const/4 v3, 0x0

    .line 1761
    .local v3, "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/16 v19, 0x0

    .line 1762
    .local v19, "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/16 v20, 0x0

    .line 1763
    .local v20, "suspendedAppExtras":Landroid/os/PersistableBundle;
    const/16 v22, 0x0

    .line 1765
    .local v22, "suspendedLauncherExtras":Landroid/os/PersistableBundle;
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v34

    move-object/from16 v37, v3

    move-object/from16 v40, v19

    move-object/from16 v43, v20

    move-object/from16 v44, v22

    .line 1765
    .end local v3    # "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v19    # "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v20    # "suspendedAppExtras":Landroid/os/PersistableBundle;
    .end local v22    # "suspendedLauncherExtras":Landroid/os/PersistableBundle;
    .local v34, "packageDepth":I
    .local v37, "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v40, "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v43, "suspendedAppExtras":Landroid/os/PersistableBundle;
    .local v44, "suspendedLauncherExtras":Landroid/os/PersistableBundle;
    :goto_2bd
    move/from16 v3, v34

    .line 1766
    .end local v34    # "packageDepth":I
    .local v3, "packageDepth":I
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12
    :try_end_2c3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_260 .. :try_end_2c3} :catch_3fc
    .catch Ljava/io/IOException; {:try_start_260 .. :try_end_2c3} :catch_3f3

    move/from16 v47, v12

    .line 1766
    .end local v45    # "type":I
    .local v47, "type":I
    if-eq v12, v4, :cond_38a

    move/from16 v12, v47

    const/4 v4, 0x3

    if-ne v12, v4, :cond_2d9

    .line 1768
    .end local v47    # "type":I
    .local v12, "type":I
    :try_start_2cc
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v3, :cond_2d3

    goto :goto_2d9

    .line 1792
    :cond_2d3
    move/from16 v48, v3

    move-object/from16 v49, v11

    goto/16 :goto_390

    .line 1769
    :cond_2d9
    :goto_2d9
    const/4 v4, 0x3

    if-eq v12, v4, :cond_37c

    const/4 v4, 0x4

    if-ne v12, v4, :cond_2e6

    .line 1771
    nop

    .line 1765
    move/from16 v48, v3

    move-object/from16 v49, v11

    goto/16 :goto_380

    .line 1773
    :cond_2e6
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v19, -0x1

    move/from16 v48, v3

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v3

    .line 1773
    .end local v3    # "packageDepth":I
    .local v48, "packageDepth":I
    move-object/from16 v49, v11

    .line 1773
    .end local v11    # "hiddenStr":Ljava/lang/String;
    .local v49, "hiddenStr":Ljava/lang/String;
    const v11, -0x78da70f9

    if-eq v3, v11, :cond_32c

    const v11, -0x75017ede

    if-eq v3, v11, :cond_321

    const v11, -0x5ee8613f

    if-eq v3, v11, :cond_315

    const v11, -0x54ce12c2

    if-eq v3, v11, :cond_309

    goto :goto_336

    :cond_309
    const-string/jumbo v3, "suspended-launcher-extras"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_336

    const/16 v19, 0x3

    goto :goto_336

    :cond_315
    const-string/jumbo v3, "suspended-app-extras"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_336

    const/16 v19, 0x2

    goto :goto_336

    :cond_321
    const-string v3, "enabled-components"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_336

    const/16 v19, 0x0

    goto :goto_336

    :cond_32c
    const-string v3, "disabled-components"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_336

    const/16 v19, 0x1

    :cond_336
    :goto_336
    packed-switch v19, :pswitch_data_56a

    .line 1787
    const-string v3, "PackageSettings"

    goto :goto_358

    .line 1784
    :pswitch_33c
    invoke-static {v0}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v3

    move-object/from16 v44, v3

    .line 1785
    goto :goto_380

    .line 1781
    :pswitch_343
    invoke-static {v0}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v3

    move-object/from16 v43, v3

    .line 1782
    goto :goto_380

    .line 1778
    :pswitch_34a
    invoke-direct {v1, v0}, Lcom/android/server/pm/Settings;->readComponentsLPr(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/ArraySet;

    move-result-object v3

    move-object/from16 v40, v3

    .line 1779
    goto :goto_380

    .line 1775
    :pswitch_351
    invoke-direct {v1, v0}, Lcom/android/server/pm/Settings;->readComponentsLPr(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/ArraySet;

    move-result-object v3

    move-object/from16 v37, v3

    .line 1776
    goto :goto_380

    .line 1787
    :goto_358
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown tag "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " under tag "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "pkg"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2cc .. :try_end_37b} :catch_167
    .catch Ljava/io/IOException; {:try_start_2cc .. :try_end_37b} :catch_163

    goto :goto_380

    .line 1765
    .end local v48    # "packageDepth":I
    .end local v49    # "hiddenStr":Ljava/lang/String;
    .restart local v3    # "packageDepth":I
    .restart local v11    # "hiddenStr":Ljava/lang/String;
    :cond_37c
    move/from16 v48, v3

    move-object/from16 v49, v11

    .line 1765
    .end local v3    # "packageDepth":I
    .end local v11    # "hiddenStr":Ljava/lang/String;
    .restart local v48    # "packageDepth":I
    .restart local v49    # "hiddenStr":Ljava/lang/String;
    :goto_380
    move/from16 v45, v12

    move/from16 v34, v48

    move-object/from16 v11, v49

    const/4 v4, 0x1

    const/4 v12, 0x0

    goto/16 :goto_2bd

    .line 1792
    .end local v12    # "type":I
    .end local v48    # "packageDepth":I
    .end local v49    # "hiddenStr":Ljava/lang/String;
    .restart local v3    # "packageDepth":I
    .restart local v11    # "hiddenStr":Ljava/lang/String;
    .restart local v47    # "type":I
    :cond_38a
    move/from16 v48, v3

    move-object/from16 v49, v11

    move/from16 v12, v47

    .line 1792
    .end local v3    # "packageDepth":I
    .end local v11    # "hiddenStr":Ljava/lang/String;
    .end local v47    # "type":I
    .restart local v12    # "type":I
    .restart local v48    # "packageDepth":I
    .restart local v49    # "hiddenStr":Ljava/lang/String;
    :goto_390
    if-eqz v29, :cond_3a5

    .line 1793
    move/from16 v4, p1

    const/4 v11, 0x1

    :try_start_395
    invoke-virtual {v1, v4, v2, v11}, Lcom/android/server/pm/Settings;->setBlockUninstallLPw(ILjava/lang/String;Z)V
    :try_end_398
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_395 .. :try_end_398} :catch_39f
    .catch Ljava/io/IOException; {:try_start_395 .. :try_end_398} :catch_399

    goto :goto_3a8

    .line 1828
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v2    # "name":Ljava/lang/String;
    .end local v5    # "linkGeneration":I
    .end local v6    # "enabled":I
    .end local v7    # "installed":Z
    .end local v8    # "stopped":Z
    .end local v9    # "notLaunched":Z
    .end local v10    # "hidden":Z
    .end local v12    # "type":I
    .end local v13    # "dialogMessage":Ljava/lang/String;
    .end local v16    # "instantApp":Z
    .end local v17    # "virtualPreload":Z
    .end local v18    # "enabledCaller":Ljava/lang/String;
    .end local v21    # "verifState":I
    .end local v23    # "installReason":I
    .end local v24    # "harmfulAppWarning":Ljava/lang/String;
    .end local v25    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v26    # "suspended":Z
    .end local v27    # "outerDepth":I
    .end local v28    # "suspendingPackage":Ljava/lang/String;
    .end local v29    # "blockUninstall":Z
    .end local v31    # "blockedStr":Ljava/lang/String;
    .end local v33    # "maxAppLinkGeneration":I
    .end local v37    # "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v39    # "tagName":Ljava/lang/String;
    .end local v40    # "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v41    # "ceDataInode":J
    .end local v43    # "suspendedAppExtras":Landroid/os/PersistableBundle;
    .end local v44    # "suspendedLauncherExtras":Landroid/os/PersistableBundle;
    .end local v48    # "packageDepth":I
    .end local v49    # "hiddenStr":Ljava/lang/String;
    :catch_399
    move-exception v0

    move v3, v4

    move-object/from16 v47, v15

    goto/16 :goto_4f4

    .line 1821
    :catch_39f
    move-exception v0

    move v3, v4

    move-object/from16 v47, v15

    goto/16 :goto_108

    .line 1795
    .restart local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v5    # "linkGeneration":I
    .restart local v6    # "enabled":I
    .restart local v7    # "installed":Z
    .restart local v8    # "stopped":Z
    .restart local v9    # "notLaunched":Z
    .restart local v10    # "hidden":Z
    .restart local v12    # "type":I
    .restart local v13    # "dialogMessage":Ljava/lang/String;
    .restart local v16    # "instantApp":Z
    .restart local v17    # "virtualPreload":Z
    .restart local v18    # "enabledCaller":Ljava/lang/String;
    .restart local v21    # "verifState":I
    .restart local v23    # "installReason":I
    .restart local v24    # "harmfulAppWarning":Ljava/lang/String;
    .restart local v25    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v26    # "suspended":Z
    .restart local v27    # "outerDepth":I
    .restart local v28    # "suspendingPackage":Ljava/lang/String;
    .restart local v29    # "blockUninstall":Z
    .restart local v31    # "blockedStr":Ljava/lang/String;
    .restart local v33    # "maxAppLinkGeneration":I
    .restart local v37    # "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v39    # "tagName":Ljava/lang/String;
    .restart local v40    # "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v41    # "ceDataInode":J
    .restart local v43    # "suspendedAppExtras":Landroid/os/PersistableBundle;
    .restart local v44    # "suspendedLauncherExtras":Landroid/os/PersistableBundle;
    .restart local v48    # "packageDepth":I
    .restart local v49    # "hiddenStr":Ljava/lang/String;
    :cond_3a5
    move/from16 v4, p1

    const/4 v11, 0x1

    :goto_3a8
    move-object/from16 v32, v2

    move-object/from16 v2, v25

    .line 1795
    .end local v2    # "name":Ljava/lang/String;
    .local v32, "name":Ljava/lang/String;
    move/from16 v34, v48

    move v3, v4

    .line 1795
    .end local v48    # "packageDepth":I
    .restart local v34    # "packageDepth":I
    move/from16 v36, v11

    move-object/from16 v35, v49

    const/16 v38, 0x2

    move/from16 v11, v26

    .line 1795
    .end local v49    # "hiddenStr":Ljava/lang/String;
    .local v35, "hiddenStr":Ljava/lang/String;
    move/from16 v45, v12

    const/16 v46, 0x4

    move-object/from16 v12, v28

    .line 1795
    .end local v12    # "type":I
    .restart local v45    # "type":I
    move-object/from16 v50, v14

    move-object/from16 v14, v43

    .line 1795
    .end local v14    # "str":Ljava/io/FileInputStream;
    .local v50, "str":Ljava/io/FileInputStream;
    move-object/from16 v47, v15

    move-object/from16 v15, v44

    .line 1795
    .end local v15    # "userPackagesStateFile":Ljava/io/File;
    .local v47, "userPackagesStateFile":Ljava/io/File;
    move-object/from16 v19, v37

    move-object/from16 v20, v40

    move/from16 v22, v5

    move v1, v4

    move/from16 v51, v36

    move/from16 v36, v5

    move-wide/from16 v4, v41

    const/16 v41, 0x0

    move/from16 v42, v51

    :try_start_3d6
    invoke-virtual/range {v2 .. v24}, Lcom/android/server/pm/PackageSetting;->setUserState(IJIZZZZZLjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;ZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;IIILjava/lang/String;)V
    :try_end_3d9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3d6 .. :try_end_3d9} :catch_3eb
    .catch Ljava/io/IOException; {:try_start_3d6 .. :try_end_3d9} :catch_3e3

    .line 1800
    .end local v5    # "linkGeneration":I
    .end local v6    # "enabled":I
    .end local v7    # "installed":Z
    .end local v8    # "stopped":Z
    .end local v9    # "notLaunched":Z
    .end local v10    # "hidden":Z
    .end local v13    # "dialogMessage":Ljava/lang/String;
    .end local v16    # "instantApp":Z
    .end local v17    # "virtualPreload":Z
    .end local v18    # "enabledCaller":Ljava/lang/String;
    .end local v21    # "verifState":I
    .end local v23    # "installReason":I
    .end local v24    # "harmfulAppWarning":Ljava/lang/String;
    .end local v26    # "suspended":Z
    .end local v28    # "suspendingPackage":Ljava/lang/String;
    .end local v29    # "blockUninstall":Z
    .end local v31    # "blockedStr":Ljava/lang/String;
    .end local v32    # "name":Ljava/lang/String;
    .end local v34    # "packageDepth":I
    .end local v35    # "hiddenStr":Ljava/lang/String;
    .end local v37    # "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v40    # "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v41    # "ceDataInode":J
    .end local v43    # "suspendedAppExtras":Landroid/os/PersistableBundle;
    .end local v44    # "suspendedLauncherExtras":Landroid/os/PersistableBundle;
    nop

    .line 1815
    move v3, v1

    move-object/from16 v2, v25

    move/from16 v9, v33

    move-object/from16 v1, p0

    goto/16 :goto_482

    .line 1828
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v25    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v27    # "outerDepth":I
    .end local v33    # "maxAppLinkGeneration":I
    .end local v39    # "tagName":Ljava/lang/String;
    .end local v45    # "type":I
    :catch_3e3
    move-exception v0

    move v3, v1

    move-object/from16 v14, v50

    move-object/from16 v1, p0

    goto/16 :goto_4f4

    .line 1821
    :catch_3eb
    move-exception v0

    move v3, v1

    move-object/from16 v14, v50

    move-object/from16 v1, p0

    goto/16 :goto_108

    .line 1828
    .end local v47    # "userPackagesStateFile":Ljava/io/File;
    .end local v50    # "str":Ljava/io/FileInputStream;
    .restart local v14    # "str":Ljava/io/FileInputStream;
    .restart local v15    # "userPackagesStateFile":Ljava/io/File;
    :catch_3f3
    move-exception v0

    move-object/from16 v50, v14

    move-object/from16 v47, v15

    move-object/from16 v1, p0

    goto/16 :goto_498

    .line 1821
    :catch_3fc
    move-exception v0

    move-object/from16 v50, v14

    move-object/from16 v47, v15

    move-object/from16 v1, p0

    goto/16 :goto_4a1

    .line 1800
    .restart local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .local v2, "ps":Lcom/android/server/pm/PackageSetting;
    .local v3, "type":I
    .local v7, "tagName":Ljava/lang/String;
    .local v9, "maxAppLinkGeneration":I
    .local v13, "outerDepth":I
    :cond_405
    move/from16 v45, v3

    move/from16 v42, v6

    move-object/from16 v39, v7

    move-object/from16 v41, v10

    move/from16 v38, v11

    move/from16 v46, v12

    move/from16 v27, v13

    move-object/from16 v50, v14

    move-object/from16 v47, v15

    move/from16 v1, p1

    move v12, v9

    .end local v3    # "type":I
    .end local v7    # "tagName":Ljava/lang/String;
    .end local v9    # "maxAppLinkGeneration":I
    .end local v13    # "outerDepth":I
    .end local v14    # "str":Ljava/io/FileInputStream;
    .end local v15    # "userPackagesStateFile":Ljava/io/File;
    .local v12, "maxAppLinkGeneration":I
    .restart local v27    # "outerDepth":I
    .restart local v39    # "tagName":Ljava/lang/String;
    .restart local v45    # "type":I
    .restart local v47    # "userPackagesStateFile":Ljava/io/File;
    .restart local v50    # "str":Ljava/io/FileInputStream;
    :try_start_41a
    const-string/jumbo v3, "preferred-activities"

    move-object/from16 v4, v39

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_423
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_41a .. :try_end_423} :catch_48b
    .catch Ljava/io/IOException; {:try_start_41a .. :try_end_423} :catch_483

    .line 1800
    .end local v39    # "tagName":Ljava/lang/String;
    .local v4, "tagName":Ljava/lang/String;
    if-eqz v3, :cond_430

    .line 1801
    move v3, v1

    move-object/from16 v1, p0

    :try_start_428
    invoke-virtual {v1, v0, v3}, Lcom/android/server/pm/Settings;->readPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto :goto_481

    .line 1828
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v4    # "tagName":Ljava/lang/String;
    .end local v12    # "maxAppLinkGeneration":I
    .end local v27    # "outerDepth":I
    .end local v45    # "type":I
    :catch_42c
    move-exception v0

    goto :goto_487

    .line 1821
    :catch_42e
    move-exception v0

    goto :goto_48f

    .line 1802
    .restart local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v4    # "tagName":Ljava/lang/String;
    .restart local v12    # "maxAppLinkGeneration":I
    .restart local v27    # "outerDepth":I
    .restart local v45    # "type":I
    :cond_430
    move v3, v1

    move-object/from16 v1, p0

    const-string/jumbo v5, "persistent-preferred-activities"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_440

    .line 1803
    invoke-direct {v1, v0, v3}, Lcom/android/server/pm/Settings;->readPersistentPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto :goto_481

    .line 1804
    :cond_440
    const-string v5, "crossProfile-intent-filters"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_44c

    .line 1805
    invoke-direct {v1, v0, v3}, Lcom/android/server/pm/Settings;->readCrossProfileIntentFiltersLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto :goto_481

    .line 1806
    :cond_44c
    const-string v5, "default-apps"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_458

    .line 1807
    invoke-virtual {v1, v0, v3}, Lcom/android/server/pm/Settings;->readDefaultAppsLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto :goto_481

    .line 1808
    :cond_458
    const-string v5, "block-uninstall-packages"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_464

    .line 1809
    invoke-virtual {v1, v0, v3}, Lcom/android/server/pm/Settings;->readBlockUninstallPackagesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto :goto_481

    .line 1811
    :cond_464
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown element under <stopped-packages>: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1812
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1811
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_481
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_428 .. :try_end_481} :catch_42e
    .catch Ljava/io/IOException; {:try_start_428 .. :try_end_481} :catch_42c

    .line 1815
    .end local v4    # "tagName":Ljava/lang/String;
    :goto_481
    move v9, v12

    .line 1815
    .end local v12    # "maxAppLinkGeneration":I
    .restart local v9    # "maxAppLinkGeneration":I
    :goto_482
    goto :goto_4ba

    .line 1828
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v9    # "maxAppLinkGeneration":I
    .end local v27    # "outerDepth":I
    .end local v45    # "type":I
    :catch_483
    move-exception v0

    move v3, v1

    move-object/from16 v1, p0

    .line 1828
    .end local v50    # "str":Ljava/io/FileInputStream;
    .restart local v14    # "str":Ljava/io/FileInputStream;
    :goto_487
    move-object/from16 v14, v50

    goto/16 :goto_4f4

    .line 1821
    .end local v14    # "str":Ljava/io/FileInputStream;
    .restart local v50    # "str":Ljava/io/FileInputStream;
    :catch_48b
    move-exception v0

    move v3, v1

    move-object/from16 v1, p0

    .line 1821
    .end local v50    # "str":Ljava/io/FileInputStream;
    .restart local v14    # "str":Ljava/io/FileInputStream;
    :goto_48f
    move-object/from16 v14, v50

    goto/16 :goto_108

    .line 1828
    .end local v47    # "userPackagesStateFile":Ljava/io/File;
    .restart local v15    # "userPackagesStateFile":Ljava/io/File;
    :catch_493
    move-exception v0

    move-object/from16 v50, v14

    move-object/from16 v47, v15

    :goto_498
    move/from16 v3, p1

    .line 1828
    .end local v14    # "str":Ljava/io/FileInputStream;
    .end local v15    # "userPackagesStateFile":Ljava/io/File;
    .restart local v47    # "userPackagesStateFile":Ljava/io/File;
    .restart local v50    # "str":Ljava/io/FileInputStream;
    goto/16 :goto_4f4

    .line 1821
    .end local v47    # "userPackagesStateFile":Ljava/io/File;
    .end local v50    # "str":Ljava/io/FileInputStream;
    .restart local v14    # "str":Ljava/io/FileInputStream;
    .restart local v15    # "userPackagesStateFile":Ljava/io/File;
    :catch_49c
    move-exception v0

    move-object/from16 v50, v14

    move-object/from16 v47, v15

    :goto_4a1
    move/from16 v3, p1

    const/4 v5, 0x6

    .line 1821
    .end local v14    # "str":Ljava/io/FileInputStream;
    .end local v15    # "userPackagesStateFile":Ljava/io/File;
    .restart local v47    # "userPackagesStateFile":Ljava/io/File;
    .restart local v50    # "str":Ljava/io/FileInputStream;
    goto/16 :goto_532

    .line 1689
    .end local v47    # "userPackagesStateFile":Ljava/io/File;
    .end local v50    # "str":Ljava/io/FileInputStream;
    .restart local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v3    # "type":I
    .restart local v9    # "maxAppLinkGeneration":I
    .restart local v13    # "outerDepth":I
    .restart local v14    # "str":Ljava/io/FileInputStream;
    .restart local v15    # "userPackagesStateFile":Ljava/io/File;
    :cond_4a6
    move/from16 v45, v3

    move/from16 v42, v6

    move-object/from16 v41, v10

    move/from16 v38, v11

    move/from16 v46, v12

    move/from16 v27, v13

    move-object/from16 v50, v14

    move-object/from16 v47, v15

    move/from16 v3, p1

    move v12, v9

    .end local v3    # "type":I
    .end local v9    # "maxAppLinkGeneration":I
    .end local v13    # "outerDepth":I
    .end local v14    # "str":Ljava/io/FileInputStream;
    .end local v15    # "userPackagesStateFile":Ljava/io/File;
    .restart local v12    # "maxAppLinkGeneration":I
    .restart local v27    # "outerDepth":I
    .restart local v45    # "type":I
    .restart local v47    # "userPackagesStateFile":Ljava/io/File;
    .restart local v50    # "str":Ljava/io/FileInputStream;
    :goto_4b9
    move v9, v12

    .line 1689
    .end local v12    # "maxAppLinkGeneration":I
    .end local v27    # "outerDepth":I
    .end local v45    # "type":I
    .end local v47    # "userPackagesStateFile":Ljava/io/File;
    .end local v50    # "str":Ljava/io/FileInputStream;
    .restart local v3    # "type":I
    .restart local v9    # "maxAppLinkGeneration":I
    .restart local v13    # "outerDepth":I
    .restart local v14    # "str":Ljava/io/FileInputStream;
    .restart local v15    # "userPackagesStateFile":Ljava/io/File;
    :goto_4ba
    move/from16 v13, v27

    move/from16 v11, v38

    move-object/from16 v10, v41

    move/from16 v6, v42

    move/from16 v3, v45

    move/from16 v12, v46

    move-object/from16 v15, v47

    move-object/from16 v14, v50

    goto/16 :goto_174

    .line 1817
    :cond_4cc
    move/from16 v45, v3

    move v12, v9

    move/from16 v27, v13

    move-object/from16 v50, v14

    move-object/from16 v47, v15

    move/from16 v3, p1

    .line 1817
    .end local v3    # "type":I
    .end local v9    # "maxAppLinkGeneration":I
    .end local v13    # "outerDepth":I
    .end local v14    # "str":Ljava/io/FileInputStream;
    .end local v15    # "userPackagesStateFile":Ljava/io/File;
    .restart local v12    # "maxAppLinkGeneration":I
    .restart local v27    # "outerDepth":I
    .restart local v45    # "type":I
    .restart local v47    # "userPackagesStateFile":Ljava/io/File;
    .restart local v50    # "str":Ljava/io/FileInputStream;
    :goto_4d7
    move-object/from16 v4, v50

    :try_start_4d9
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 1819
    .end local v50    # "str":Ljava/io/FileInputStream;
    .local v4, "str":Ljava/io/FileInputStream;
    iget-object v5, v1, Lcom/android/server/pm/Settings;->mNextAppLinkGeneration:Landroid/util/SparseIntArray;

    add-int/lit8 v9, v12, 0x1

    invoke-virtual {v5, v3, v9}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_4e3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4d9 .. :try_end_4e3} :catch_4ea
    .catch Ljava/io/IOException; {:try_start_4d9 .. :try_end_4e3} :catch_4e7

    .line 1833
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v12    # "maxAppLinkGeneration":I
    .end local v27    # "outerDepth":I
    .end local v45    # "type":I
    nop

    .line 1834
    move-object v14, v4

    goto/16 :goto_568

    .line 1828
    :catch_4e7
    move-exception v0

    move-object v14, v4

    goto :goto_4f4

    .line 1821
    :catch_4ea
    move-exception v0

    move-object v14, v4

    goto/16 :goto_108

    .line 1828
    .end local v4    # "str":Ljava/io/FileInputStream;
    .end local v47    # "userPackagesStateFile":Ljava/io/File;
    .restart local v14    # "str":Ljava/io/FileInputStream;
    .restart local v15    # "userPackagesStateFile":Ljava/io/File;
    :catch_4ee
    move-exception v0

    move-object v4, v14

    move-object/from16 v47, v15

    move/from16 v3, p1

    .line 1829
    .end local v15    # "userPackagesStateFile":Ljava/io/File;
    .local v0, "e":Ljava/io/IOException;
    .restart local v47    # "userPackagesStateFile":Ljava/io/File;
    :goto_4f4
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error reading: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1830
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading settings: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x6

    invoke-static {v5, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1831
    const-string v2, "PackageManager"

    const-string v4, "Error reading package manager stopped packages"

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1831
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_568

    .line 1821
    .end local v47    # "userPackagesStateFile":Ljava/io/File;
    .restart local v15    # "userPackagesStateFile":Ljava/io/File;
    :catch_52b
    move-exception v0

    move-object v4, v14

    move-object/from16 v47, v15

    move/from16 v3, p1

    const/4 v5, 0x6

    .line 1822
    .end local v15    # "userPackagesStateFile":Ljava/io/File;
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v47    # "userPackagesStateFile":Ljava/io/File;
    :goto_532
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error reading: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1823
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading stopped packages: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1825
    const-string v2, "PackageManager"

    const-string v4, "Error reading package manager stopped packages"

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1833
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    nop

    .line 1834
    :goto_568
    return-void

    nop

    :pswitch_data_56a
    .packed-switch 0x0
        :pswitch_351
        :pswitch_34a
        :pswitch_343
        :pswitch_33c
    .end packed-switch
.end method

.method readPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    .registers 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1452
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1454
    .local v0, "outerDepth":I
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .line 1454
    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_81

    const/4 v1, 0x3

    if-ne v2, v1, :cond_15

    .line 1455
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_81

    .line 1456
    :cond_15
    if-eq v2, v1, :cond_4

    const/4 v1, 0x4

    if-ne v2, v1, :cond_1b

    .line 1457
    goto :goto_4

    .line 1460
    :cond_1b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1461
    .local v1, "tagName":Ljava/lang/String;
    const-string/jumbo v3, "item"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x5

    if-eqz v3, :cond_65

    .line 1462
    new-instance v3, Lcom/android/server/pm/PreferredActivity;

    invoke-direct {v3, p1}, Lcom/android/server/pm/PreferredActivity;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1463
    .local v3, "pa":Lcom/android/server/pm/PreferredActivity;
    iget-object v5, v3, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    invoke-virtual {v5}, Lcom/android/server/pm/PreferredComponent;->getParseError()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3e

    .line 1464
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->editPreferredActivitiesLPw(I)Lcom/android/server/pm/PreferredIntentResolver;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/pm/PreferredIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    goto :goto_64

    .line 1466
    :cond_3e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in package manager settings: <preferred-activity> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    .line 1468
    invoke-virtual {v6}, Lcom/android/server/pm/PreferredComponent;->getParseError()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1469
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1466
    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1471
    .end local v3    # "pa":Lcom/android/server/pm/PreferredActivity;
    :goto_64
    goto :goto_80

    .line 1472
    :cond_65
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <preferred-activities>: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1473
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1472
    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1474
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1476
    .end local v1    # "tagName":Ljava/lang/String;
    :goto_80
    goto :goto_4

    .line 1477
    :cond_81
    return-void
.end method

.method readStoppedLPw()V
    .registers 16

    .line 2370
    const/4 v0, 0x0

    .line 2371
    .local v0, "str":Ljava/io/FileInputStream;
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_45

    .line 2373
    :try_start_a
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v1

    .line 2374
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v3, "Reading from backup stopped packages file\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2375
    const-string v1, "Need to read from backup stopped packages file"

    invoke-static {v2, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2377
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 2381
    const-string v1, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cleaning up stopped packages file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2383
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_43} :catch_44

    .line 2387
    :cond_43
    goto :goto_45

    .line 2385
    :catch_44
    move-exception v1

    .line 2391
    :cond_45
    :goto_45
    const/4 v1, 0x6

    const/4 v3, 0x0

    if-nez v0, :cond_8a

    .line 2392
    :try_start_49
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_7b

    .line 2393
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v5, "No stopped packages file found\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2394
    const-string v4, "No stopped packages file file; assuming all started"

    invoke-static {v2, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2399
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_67
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 2400
    .local v4, "pkg":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v4, v3, v3}, Lcom/android/server/pm/PackageSetting;->setStopped(ZI)V

    .line 2401
    invoke-virtual {v4, v3, v3}, Lcom/android/server/pm/PackageSetting;->setNotLaunched(ZI)V

    .line 2402
    .end local v4    # "pkg":Lcom/android/server/pm/PackageSetting;
    goto :goto_67

    .line 2403
    :cond_7a
    return-void

    .line 2405
    :cond_7b
    new-instance v4, Ljava/io/FileInputStream;

    iget-object v5, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v4

    goto :goto_8a

    .line 2462
    :catch_84
    move-exception v2

    goto/16 :goto_137

    .line 2455
    :catch_87
    move-exception v2

    goto/16 :goto_16e

    .line 2407
    :cond_8a
    :goto_8a
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 2408
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v5, 0x0

    invoke-interface {v4, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2411
    :goto_92
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    move v7, v6

    .line 2411
    .local v7, "type":I
    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eq v6, v8, :cond_9e

    if-eq v7, v9, :cond_9e

    .line 2411
    .end local v7    # "type":I
    goto :goto_92

    .line 2416
    .restart local v7    # "type":I
    :cond_9e
    if-eq v7, v8, :cond_ae

    .line 2417
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v3, "No start tag found in stopped packages file\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2418
    const/4 v2, 0x5

    const-string v3, "No start tag found in package manager stopped packages"

    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2420
    return-void

    .line 2423
    :cond_ae
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    .line 2424
    .local v6, "outerDepth":I
    :cond_b2
    :goto_b2
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    move v7, v8

    if-eq v8, v9, :cond_133

    const/4 v8, 0x3

    if-ne v7, v8, :cond_c2

    .line 2426
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    if-le v10, v6, :cond_133

    .line 2427
    :cond_c2
    if-eq v7, v8, :cond_b2

    if-ne v7, v2, :cond_c7

    .line 2429
    goto :goto_b2

    .line 2432
    :cond_c7
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 2433
    .local v8, "tagName":Ljava/lang/String;
    const-string/jumbo v10, "pkg"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_115

    .line 2434
    const-string/jumbo v10, "name"

    invoke-interface {v4, v5, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2435
    .local v10, "name":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v11, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/pm/PackageSetting;

    .line 2436
    .local v11, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v11, :cond_fb

    .line 2437
    invoke-virtual {v11, v9, v3}, Lcom/android/server/pm/PackageSetting;->setStopped(ZI)V

    .line 2438
    const-string v12, "1"

    const-string/jumbo v13, "nl"

    invoke-interface {v4, v5, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_111

    .line 2439
    invoke-virtual {v11, v9, v3}, Lcom/android/server/pm/PackageSetting;->setNotLaunched(ZI)V

    goto :goto_111

    .line 2442
    :cond_fb
    const-string v12, "PackageManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "No package known for stopped package "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2445
    :cond_111
    :goto_111
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2446
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "ps":Lcom/android/server/pm/PackageSetting;
    goto :goto_132

    .line 2447
    :cond_115
    const-string v10, "PackageManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown element under <stopped-packages>: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2448
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2447
    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2449
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2451
    .end local v8    # "tagName":Ljava/lang/String;
    :goto_132
    goto :goto_b2

    .line 2453
    :cond_133
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_136
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_49 .. :try_end_136} :catch_87
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_136} :catch_84

    .line 2453
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "outerDepth":I
    .end local v7    # "type":I
    goto :goto_1a4

    .line 2462
    :goto_137
    nop

    .line 2463
    .local v2, "e":Ljava/io/IOException;
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error reading: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2464
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading settings: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2465
    const-string v1, "PackageManager"

    const-string v3, "Error reading package manager stopped packages"

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2465
    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_1a5

    .line 2455
    :goto_16e
    nop

    .line 2456
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error reading: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2457
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading stopped packages: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2459
    const-string v1, "PackageManager"

    const-string v3, "Error reading package manager stopped packages"

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2468
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_1a4
    nop

    .line 2469
    :goto_1a5
    return-void
.end method

.method readUsesStaticLibLPw(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/PackageSetting;)V
    .registers 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "outPs"    # Lcom/android/server/pm/PackageSetting;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2322
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 2324
    .local v0, "outerDepth":I
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .line 2324
    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_53

    const/4 v1, 0x3

    if-ne v2, v1, :cond_15

    .line 2325
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_53

    .line 2326
    :cond_15
    if-eq v2, v1, :cond_4

    const/4 v1, 0x4

    if-ne v2, v1, :cond_1b

    .line 2327
    goto :goto_4

    .line 2329
    :cond_1b
    const-string/jumbo v1, "name"

    const/4 v3, 0x0

    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2330
    .local v1, "libName":Ljava/lang/String;
    const-string/jumbo v4, "version"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2332
    .local v3, "libVersionStr":Ljava/lang/String;
    const-wide/16 v4, -0x1

    .line 2334
    .local v4, "libVersion":J
    :try_start_2c
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6
    :try_end_30
    .catch Ljava/lang/NumberFormatException; {:try_start_2c .. :try_end_30} :catch_32

    move-wide v4, v6

    .line 2337
    goto :goto_33

    .line 2335
    :catch_32
    move-exception v6

    .line 2339
    :goto_33
    if-eqz v1, :cond_4f

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-ltz v6, :cond_4f

    .line 2340
    const-class v6, Ljava/lang/String;

    iget-object v7, p2, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    invoke-static {v6, v7, v1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    iput-object v6, p2, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    .line 2342
    iget-object v6, p2, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    invoke-static {v6, v4, v5}, Lcom/android/internal/util/ArrayUtils;->appendLong([JJ)[J

    move-result-object v6

    iput-object v6, p2, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    .line 2346
    :cond_4f
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2347
    .end local v1    # "libName":Ljava/lang/String;
    .end local v3    # "libVersionStr":Ljava/lang/String;
    .end local v4    # "libVersion":J
    goto :goto_4

    .line 2348
    :cond_53
    return-void
.end method

.method removeCrossProfileIntentFiltersLPw(I)V
    .registers 12
    .param p1, "userId"    # I

    .line 4196
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    monitor-enter v0

    .line 4198
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 4199
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 4200
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 4203
    :cond_13
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 4204
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1a
    if-ge v2, v1, :cond_57

    .line 4205
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 4206
    .local v3, "sourceUserId":I
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/CrossProfileIntentResolver;

    .line 4207
    .local v4, "cpir":Lcom/android/server/pm/CrossProfileIntentResolver;
    const/4 v5, 0x0

    .line 4208
    .local v5, "needsWriting":Z
    new-instance v6, Landroid/util/ArraySet;

    .line 4209
    invoke-virtual {v4}, Lcom/android/server/pm/CrossProfileIntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 4210
    .local v6, "cpifs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/CrossProfileIntentFilter;>;"
    invoke-virtual {v6}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_38
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/CrossProfileIntentFilter;

    .line 4211
    .local v8, "cpif":Lcom/android/server/pm/CrossProfileIntentFilter;
    invoke-virtual {v8}, Lcom/android/server/pm/CrossProfileIntentFilter;->getTargetUserId()I

    move-result v9

    if-ne v9, p1, :cond_4e

    .line 4212
    const/4 v5, 0x1

    .line 4213
    invoke-virtual {v4, v8}, Lcom/android/server/pm/CrossProfileIntentResolver;->removeFilter(Landroid/content/IntentFilter;)V

    .line 4215
    .end local v8    # "cpif":Lcom/android/server/pm/CrossProfileIntentFilter;
    :cond_4e
    goto :goto_38

    .line 4216
    :cond_4f
    if-eqz v5, :cond_54

    .line 4217
    invoke-virtual {p0, v3}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 4204
    .end local v3    # "sourceUserId":I
    .end local v4    # "cpir":Lcom/android/server/pm/CrossProfileIntentResolver;
    .end local v5    # "needsWriting":Z
    .end local v6    # "cpifs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/CrossProfileIntentFilter;>;"
    :cond_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 4220
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_57
    monitor-exit v0

    .line 4221
    return-void

    .line 4220
    :catchall_59
    move-exception v1

    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_3 .. :try_end_5b} :catchall_59

    throw v1
.end method

.method removeDisabledSystemPackageLPw(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 589
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    return-void
.end method

.method removeIntentFilterVerificationLPw(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1330
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 1331
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_c

    .line 1335
    const/4 v1, 0x0

    return v1

    .line 1337
    :cond_c
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->clearDomainVerificationStatusForUser(I)V

    .line 1338
    const/4 v1, 0x1

    return v1
.end method

.method removeIntentFilterVerificationLPw(Ljava/lang/String;[I)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIds"    # [I

    .line 1342
    const/4 v0, 0x0

    .line 1343
    .local v0, "result":Z
    array-length v1, p2

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_f

    aget v3, p2, v2

    .line 1344
    .local v3, "userId":I
    invoke-virtual {p0, p1, v3}, Lcom/android/server/pm/Settings;->removeIntentFilterVerificationLPw(Ljava/lang/String;I)Z

    move-result v4

    or-int/2addr v0, v4

    .line 1343
    .end local v3    # "userId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1346
    :cond_f
    return v0
.end method

.method removePackageLPw(Ljava/lang/String;)I
    .registers 6
    .param p1, "name"    # Ljava/lang/String;

    .line 1077
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 1078
    .local v0, "p":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_5c

    .line 1079
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1080
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->removeInstallerPackageStatus(Ljava/lang/String;)V

    .line 1081
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v1, :cond_54

    .line 1082
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/SharedUserSetting;->removePackage(Lcom/android/server/pm/PackageSetting;)V

    .line 1083
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v1, v1, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-nez v1, :cond_5c

    .line 1090
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    .line 1091
    .local v1, "disabledPs":Lcom/android/server/pm/PackageSetting;
    if-eqz v1, :cond_3f

    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v2, :cond_3f

    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v2, v2, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v3, v3, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    .line 1092
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e

    goto :goto_3f

    .line 1098
    .end local v1    # "disabledPs":Lcom/android/server/pm/PackageSetting;
    :cond_3e
    goto :goto_5c

    .line 1093
    .restart local v1    # "disabledPs":Lcom/android/server/pm/PackageSetting;
    :cond_3f
    :goto_3f
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v3, v3, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1094
    iget-object v2, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget v2, v2, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-direct {p0, v2}, Lcom/android/server/pm/Settings;->removeUserIdLPw(I)V

    .line 1095
    iget-object v2, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget v2, v2, Lcom/android/server/pm/SharedUserSetting;->userId:I

    return v2

    .line 1100
    .end local v1    # "disabledPs":Lcom/android/server/pm/PackageSetting;
    :cond_54
    iget v1, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-direct {p0, v1}, Lcom/android/server/pm/Settings;->removeUserIdLPw(I)V

    .line 1101
    iget v1, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    return v1

    .line 1104
    :cond_5c
    :goto_5c
    const/4 v1, -0x1

    return v1
.end method

.method removeUserLPw(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 4175
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 4176
    .local v0, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4177
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/PackageSetting;->removeUser(I)V

    .line 4178
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    goto :goto_a

    .line 4179
    :cond_20
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 4180
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateFile(I)Ljava/io/File;

    move-result-object v1

    .line 4181
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 4182
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateBackupFile(I)Ljava/io/File;

    move-result-object v1

    .line 4183
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 4184
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->removeCrossProfileIntentFiltersLPw(I)V

    .line 4186
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    # invokes: Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->onUserRemovedLPw(I)V
    invoke-static {v2, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->access$100(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;I)V

    .line 4188
    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->writePackageListLPr()V

    .line 4192
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->writeKernelRemoveUserLPr(I)V

    .line 4193
    return-void
.end method

.method setBlockUninstallLPw(ILjava/lang/String;Z)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "blockUninstall"    # Z

    .line 1837
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 1838
    .local v0, "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz p3, :cond_1b

    .line 1839
    if-nez v0, :cond_17

    .line 1840
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v1

    .line 1841
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1843
    :cond_17
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    .line 1844
    :cond_1b
    if-eqz v0, :cond_2b

    .line 1845
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1846
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 1847
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1850
    :cond_2b
    :goto_2b
    return-void
.end method

.method setDefaultBrowserPackageNameLPw(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1350
    const/4 v0, -0x1

    if-ne p2, v0, :cond_5

    .line 1351
    const/4 v0, 0x0

    return v0

    .line 1353
    :cond_5
    if-eqz p1, :cond_d

    .line 1354
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDefaultBrowserApp:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_12

    .line 1356
    :cond_d
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDefaultBrowserApp:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 1358
    :goto_12
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 1359
    const/4 v0, 0x1

    return v0
.end method

.method setDefaultDialerPackageNameLPw(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1367
    const/4 v0, -0x1

    if-ne p2, v0, :cond_5

    .line 1368
    const/4 v0, 0x0

    return v0

    .line 1370
    :cond_5
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDefaultDialerApp:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1371
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 1372
    const/4 v0, 0x1

    return v0
.end method

.method setHarmfulAppWarningLPw(Ljava/lang/String;Ljava/lang/CharSequence;I)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "warning"    # Ljava/lang/CharSequence;
    .param p3, "userId"    # I

    .line 4375
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 4376
    .local v0, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_16

    .line 4379
    if-nez p2, :cond_e

    const/4 v1, 0x0

    goto :goto_12

    :cond_e
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_12
    invoke-virtual {v0, p3, v1}, Lcom/android/server/pm/PackageSetting;->setHarmfulAppWarning(ILjava/lang/String;)V

    .line 4380
    return-void

    .line 4377
    :cond_16
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "installerPkgName"    # Ljava/lang/String;

    .line 506
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 507
    .local v0, "p":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_14

    .line 508
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->setInstallerPackageName(Ljava/lang/String;)V

    .line 509
    if-eqz p2, :cond_14

    .line 510
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Landroid/util/ArraySet;

    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 513
    :cond_14
    return-void
.end method

.method setPackageStoppedStateLPw(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZZII)Z
    .registers 12
    .param p1, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "stopped"    # Z
    .param p4, "allowedByPermission"    # Z
    .param p5, "uid"    # I
    .param p6, "userId"    # I

    .line 4339
    invoke-static {p5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 4340
    .local v0, "appId":I
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 4341
    .local v1, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    if-eqz v1, :cond_66

    .line 4344
    if-nez p4, :cond_42

    iget v2, v1, Lcom/android/server/pm/PackageSetting;->appId:I

    if-ne v0, v2, :cond_15

    goto :goto_42

    .line 4345
    :cond_15
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: attempt to change stopped state from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4347
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", package uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4357
    :cond_42
    :goto_42
    invoke-virtual {v1, p6}, Lcom/android/server/pm/PackageSetting;->getStopped(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eq v2, p3, :cond_65

    .line 4358
    invoke-virtual {v1, p3, p6}, Lcom/android/server/pm/PackageSetting;->setStopped(ZI)V

    .line 4360
    invoke-virtual {v1, p6}, Lcom/android/server/pm/PackageSetting;->getNotLaunched(I)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 4361
    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    if-eqz v2, :cond_5d

    .line 4362
    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    invoke-virtual {p1, v2, v4, p6}, Lcom/android/server/pm/PackageManagerService;->notifyFirstLaunch(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4364
    :cond_5d
    invoke-virtual {v1, v3, p6}, Lcom/android/server/pm/PackageSetting;->setNotLaunched(ZI)V

    .line 4367
    invoke-static {p1, v1, p6}, Lcom/android/server/pm/SettingsInjector;->noftifyFirstLaunch(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageSetting;I)V

    .line 4369
    :cond_63
    const/4 v2, 0x1

    return v2

    .line 4371
    :cond_65
    return v3

    .line 4342
    :cond_66
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method updateIntentFilterVerificationStatusLPw(Ljava/lang/String;II)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "userId"    # I

    .line 1289
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 1290
    .local v0, "current":Lcom/android/server/pm/PackageSetting;
    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 1294
    return v1

    .line 1298
    :cond_c
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne p2, v2, :cond_1d

    .line 1299
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mNextAppLinkGeneration:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    add-int/2addr v1, v3

    .line 1300
    .local v1, "alwaysGeneration":I
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mNextAppLinkGeneration:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p3, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_1e

    .line 1302
    .end local v1    # "alwaysGeneration":I
    :cond_1d
    nop

    .line 1305
    .restart local v1    # "alwaysGeneration":I
    :goto_1e
    invoke-virtual {v0, p2, v1, p3}, Lcom/android/server/pm/PackageSetting;->setDomainVerificationStatusForUser(III)V

    .line 1306
    return v3
.end method

.method updateSharedUserPermsLPw(Lcom/android/server/pm/PackageSetting;I)I
    .registers 15
    .param p1, "deletedPs"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "userId"    # I

    .line 1002
    const/16 v0, -0x2710

    if-eqz p1, :cond_af

    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-nez v1, :cond_a

    goto/16 :goto_af

    .line 1009
    :cond_a
    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v1, :cond_f

    .line 1010
    return v0

    .line 1013
    :cond_f
    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    .line 1016
    .local v1, "sus":Lcom/android/server/pm/SharedUserSetting;
    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ae

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1017
    .local v3, "eachPerm":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/permission/PermissionSettings;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v4

    .line 1018
    .local v4, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-nez v4, :cond_2e

    .line 1019
    goto :goto_19

    .line 1023
    :cond_2e
    const/4 v5, 0x0

    .line 1024
    .local v5, "used":Z
    iget-object v6, v1, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_35
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_60

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PackageSetting;

    .line 1025
    .local v7, "pkg":Lcom/android/server/pm/PackageSetting;
    iget-object v8, v7, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v8, :cond_5f

    iget-object v8, v7, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v9, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v9, v9, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 1026
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5f

    iget-object v8, v7, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .line 1027
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5f

    .line 1028
    const/4 v5, 0x1

    .line 1029
    goto :goto_60

    .line 1031
    .end local v7    # "pkg":Lcom/android/server/pm/PackageSetting;
    :cond_5f
    goto :goto_35

    .line 1032
    :cond_60
    :goto_60
    if-eqz v5, :cond_63

    .line 1033
    goto :goto_19

    .line 1036
    :cond_63
    invoke-virtual {v1}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v6

    .line 1037
    .local v6, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    iget-object v7, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v7, v7, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v7

    .line 1043
    .local v7, "disabledPs":Lcom/android/server/pm/PackageSetting;
    if-eqz v7, :cond_96

    iget-object v8, v7, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v8, :cond_96

    .line 1044
    const/4 v8, 0x0

    .line 1045
    .local v8, "reqByDisabledSysPkg":Z
    iget-object v9, v7, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v9, v9, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_7e
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_93

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1046
    .local v10, "permission":Ljava/lang/String;
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_92

    .line 1047
    const/4 v8, 0x1

    .line 1048
    goto :goto_93

    .line 1050
    .end local v10    # "permission":Ljava/lang/String;
    :cond_92
    goto :goto_7e

    .line 1051
    :cond_93
    :goto_93
    if-eqz v8, :cond_96

    .line 1052
    goto :goto_19

    .line 1058
    .end local v8    # "reqByDisabledSysPkg":Z
    :cond_96
    const/16 v8, 0xff

    const/4 v9, 0x0

    invoke-virtual {v6, v4, p2, v8, v9}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 1061
    invoke-virtual {v6, v4}, Lcom/android/server/pm/permission/PermissionsState;->revokeInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_a5

    .line 1063
    const/4 v0, -0x1

    return v0

    .line 1067
    :cond_a5
    invoke-virtual {v6, v4, p2}, Lcom/android/server/pm/permission/PermissionsState;->revokeRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v8

    if-ne v8, v9, :cond_ac

    .line 1069
    return p2

    .line 1071
    .end local v3    # "eachPerm":Ljava/lang/String;
    .end local v4    # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v5    # "used":Z
    .end local v6    # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v7    # "disabledPs":Lcom/android/server/pm/PackageSetting;
    :cond_ac
    goto/16 :goto_19

    .line 1073
    :cond_ae
    return v0

    .line 1003
    .end local v1    # "sus":Lcom/android/server/pm/SharedUserSetting;
    :cond_af
    :goto_af
    const-string v1, "PackageManager"

    const-string v2, "Trying to update info for null package. Just ignoring"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    return v0
.end method

.method wasPackageEverLaunchedLPr(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 4330
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 4331
    .local v0, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_11

    .line 4334
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->getNotLaunched(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1

    .line 4332
    :cond_11
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method writeAllDomainVerificationsLPr(Lorg/xmlpull/v1/XmlSerializer;I)V
    .registers 8
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1951
    const-string v0, "all-intent-filter-verifications"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1952
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1953
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v0, :cond_23

    .line 1954
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 1955
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getIntentFilterVerificationInfo()Landroid/content/pm/IntentFilterVerificationInfo;

    move-result-object v4

    .line 1956
    .local v4, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    if-eqz v4, :cond_20

    .line 1957
    invoke-virtual {p0, p1, v4}, Lcom/android/server/pm/Settings;->writeDomainVerificationsLPr(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/pm/IntentFilterVerificationInfo;)V

    .line 1953
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v4    # "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1960
    .end local v2    # "i":I
    :cond_23
    const-string v2, "all-intent-filter-verifications"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1961
    return-void
.end method

.method writeAllRuntimePermissionsLPr()V
    .registers 6

    .line 1408
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_16

    aget v3, v0, v2

    .line 1409
    .local v3, "userId":I
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissionsForUserAsyncLPr(I)V

    .line 1408
    .end local v3    # "userId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1411
    :cond_16
    return-void
.end method

.method writeAllUsersPackageRestrictionsLPr()V
    .registers 5

    .line 1399
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v0

    .line 1400
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-nez v0, :cond_b

    return-void

    .line 1402
    :cond_b
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1403
    .local v2, "user":Landroid/content/pm/UserInfo;
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v3}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 1404
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    goto :goto_f

    .line 1405
    :cond_21
    return-void
.end method

.method writeBlockUninstallPackagesLPr(Lorg/xmlpull/v1/XmlSerializer;I)V
    .registers 8
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2031
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 2032
    .local v0, "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v0, :cond_35

    .line 2033
    const-string v1, "block-uninstall-packages"

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2034
    const/4 v1, 0x0

    .line 2034
    .local v1, "i":I
    :goto_11
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v1, v3, :cond_30

    .line 2035
    const-string v3, "block-uninstall"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2036
    const-string/jumbo v3, "packageName"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {p1, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2037
    const-string v3, "block-uninstall"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2034
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 2039
    .end local v1    # "i":I
    :cond_30
    const-string v1, "block-uninstall-packages"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2041
    :cond_35
    return-void
.end method

.method writeChildPackagesLPw(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V
    .registers 8
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2308
    .local p2, "childPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p2, :cond_3

    .line 2309
    return-void

    .line 2311
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 2312
    .local v0, "childCount":I
    const/4 v1, 0x0

    .line 2312
    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_24

    .line 2313
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2314
    .local v2, "childPackageName":Ljava/lang/String;
    const-string v3, "child-package"

    const/4 v4, 0x0

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2315
    const-string/jumbo v3, "name"

    invoke-interface {p1, v4, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2316
    const-string v3, "child-package"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2312
    .end local v2    # "childPackageName":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 2318
    .end local v1    # "i":I
    :cond_24
    return-void
.end method

.method writeCrossProfileIntentFiltersLPr(Lorg/xmlpull/v1/XmlSerializer;I)V
    .registers 8
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1922
    const-string v0, "crossProfile-intent-filters"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1923
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/CrossProfileIntentResolver;

    .line 1924
    .local v0, "cpir":Lcom/android/server/pm/CrossProfileIntentResolver;
    if-eqz v0, :cond_34

    .line 1925
    invoke-virtual {v0}, Lcom/android/server/pm/CrossProfileIntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/CrossProfileIntentFilter;

    .line 1926
    .local v3, "cpif":Lcom/android/server/pm/CrossProfileIntentFilter;
    const-string/jumbo v4, "item"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1927
    invoke-virtual {v3, p1}, Lcom/android/server/pm/CrossProfileIntentFilter;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1928
    const-string/jumbo v4, "item"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1929
    .end local v3    # "cpif":Lcom/android/server/pm/CrossProfileIntentFilter;
    goto :goto_18

    .line 1931
    :cond_34
    const-string v2, "crossProfile-intent-filters"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1932
    return-void
.end method

.method writeDefaultAppsLPr(Lorg/xmlpull/v1/XmlSerializer;I)V
    .registers 7
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2013
    const-string v0, "default-apps"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2014
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDefaultBrowserApp:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2015
    .local v0, "defaultBrowser":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 2016
    const-string v2, "default-browser"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2017
    const-string/jumbo v2, "packageName"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2018
    const-string v2, "default-browser"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2020
    :cond_24
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mDefaultDialerApp:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2021
    .local v2, "defaultDialer":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_42

    .line 2022
    const-string v3, "default-dialer"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2023
    const-string/jumbo v3, "packageName"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2024
    const-string v3, "default-dialer"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2026
    :cond_42
    const-string v3, "default-apps"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2027
    return-void
.end method

.method writeDisabledSysPackageLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageSetting;)V
    .registers 7
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "pkg"    # Lcom/android/server/pm/PackageSetting;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2830
    const-string/jumbo v0, "updated-package"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2831
    const-string/jumbo v0, "name"

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2832
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v0, :cond_1b

    .line 2833
    const-string/jumbo v0, "realName"

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2835
    :cond_1b
    const-string v0, "codePath"

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2836
    const-string v0, "ft"

    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->timeStamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2837
    const-string/jumbo v0, "it"

    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2838
    const-string/jumbo v0, "ut"

    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2839
    const-string/jumbo v0, "version"

    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->versionCode:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2840
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_63

    .line 2841
    const-string/jumbo v0, "resourcePath"

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2843
    :cond_63
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    if-eqz v0, :cond_6f

    .line 2844
    const-string/jumbo v0, "nativeLibraryPath"

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2846
    :cond_6f
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    if-eqz v0, :cond_7b

    .line 2847
    const-string/jumbo v0, "primaryCpuAbi"

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2849
    :cond_7b
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    if-eqz v0, :cond_87

    .line 2850
    const-string/jumbo v0, "secondaryCpuAbi"

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2852
    :cond_87
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->cpuAbiOverrideString:Ljava/lang/String;

    if-eqz v0, :cond_92

    .line 2853
    const-string v0, "cpuAbiOverride"

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->cpuAbiOverrideString:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2856
    :cond_92
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v0, :cond_a3

    .line 2857
    const-string/jumbo v0, "userId"

    iget v2, p2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_af

    .line 2859
    :cond_a3
    const-string/jumbo v0, "sharedUserId"

    iget v2, p2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2862
    :goto_af
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->parentPackageName:Ljava/lang/String;

    if-eqz v0, :cond_bb

    .line 2863
    const-string/jumbo v0, "parentPackageName"

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->parentPackageName:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2866
    :cond_bb
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/Settings;->writeChildPackagesLPw(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    .line 2868
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/pm/Settings;->writeUsesStaticLibLPw(Lorg/xmlpull/v1/XmlSerializer;[Ljava/lang/String;[J)V

    .line 2871
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v0, :cond_d6

    .line 2872
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v0

    .line 2873
    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionsState;->getInstallPermissionStates()Ljava/util/List;

    move-result-object v0

    .line 2872
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/Settings;->writePermissionsLPr(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    .line 2876
    :cond_d6
    const-string/jumbo v0, "updated-package"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2877
    return-void
.end method

.method writeDomainVerificationsLPr(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/pm/IntentFilterVerificationInfo;)V
    .registers 5
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "verificationInfo"    # Landroid/content/pm/IntentFilterVerificationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1937
    if-eqz p2, :cond_16

    invoke-virtual {p2}, Landroid/content/pm/IntentFilterVerificationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 1938
    const-string v0, "domain-verification"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1939
    invoke-virtual {p2, p1}, Landroid/content/pm/IntentFilterVerificationInfo;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1944
    const-string v0, "domain-verification"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1946
    :cond_16
    return-void
.end method

.method writeKernelMappingLPr()V
    .registers 7

    .line 2649
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    if-nez v0, :cond_5

    return-void

    .line 2651
    :cond_5
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 2652
    .local v0, "known":[Ljava/lang/String;
    new-instance v1, Landroid/util/ArraySet;

    array-length v2, v0

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    .line 2653
    .local v1, "knownSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_14
    if-ge v4, v2, :cond_1e

    aget-object v5, v0, v4

    .line 2654
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2653
    .end local v5    # "name":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 2657
    :cond_1e
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 2659
    .local v4, "ps":Lcom/android/server/pm/PackageSetting;
    iget-object v5, v4, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 2660
    invoke-virtual {p0, v4}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V

    .line 2661
    .end local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    goto :goto_28

    .line 2664
    :cond_3d
    nop

    .local v3, "i":I
    :goto_3e
    move v2, v3

    .end local v3    # "i":I
    .local v2, "i":I
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_5d

    .line 2665
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2668
    .local v3, "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mKernelMapping:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2669
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    invoke-direct {v4, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 2664
    .end local v3    # "name":Ljava/lang/String;
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    goto :goto_3e

    .line 2671
    .end local v3    # "i":I
    :cond_5d
    return-void
.end method

.method writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V
    .registers 11
    .param p1, "ps"    # Lcom/android/server/pm/PackageSetting;

    .line 2674
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    if-eqz v0, :cond_a7

    if-eqz p1, :cond_a7

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    if-nez v0, :cond_c

    goto/16 :goto_a7

    .line 2676
    :cond_c
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mKernelMapping:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/Settings$KernelPackageState;

    .line 2677
    .local v0, "cur":Lcom/android/server/pm/Settings$KernelPackageState;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1c

    move v3, v2

    goto :goto_1d

    :cond_1c
    move v3, v1

    .line 2678
    .local v3, "firstTime":Z
    :goto_1d
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getNotInstalledUserIds()[I

    move-result-object v4

    .line 2679
    .local v4, "excludedUserIds":[I
    if-nez v3, :cond_2e

    iget-object v5, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    .line 2680
    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v5

    if-nez v5, :cond_2c

    goto :goto_2e

    :cond_2c
    move v2, v1

    nop

    .line 2683
    .local v2, "userIdsChanged":Z
    :cond_2e
    :goto_2e
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    iget-object v7, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2685
    .local v5, "dir":Ljava/io/File;
    if-eqz v3, :cond_4a

    .line 2686
    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    .line 2688
    new-instance v6, Lcom/android/server/pm/Settings$KernelPackageState;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/android/server/pm/Settings$KernelPackageState;-><init>(Lcom/android/server/pm/Settings$1;)V

    move-object v0, v6

    .line 2689
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mKernelMapping:Landroid/util/ArrayMap;

    iget-object v7, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v6, v7, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2693
    :cond_4a
    iget v6, v0, Lcom/android/server/pm/Settings$KernelPackageState;->appId:I

    iget v7, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    if-eq v6, v7, :cond_5c

    .line 2694
    new-instance v6, Ljava/io/File;

    const-string v7, "appid"

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2695
    .local v6, "appIdFile":Ljava/io/File;
    iget v7, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-direct {p0, v6, v7}, Lcom/android/server/pm/Settings;->writeIntToFile(Ljava/io/File;I)V

    .line 2699
    .end local v6    # "appIdFile":Ljava/io/File;
    :cond_5c
    if-eqz v2, :cond_a6

    .line 2701
    move v6, v1

    .local v6, "i":I
    :goto_5f
    array-length v7, v4

    if-ge v6, v7, :cond_7f

    .line 2702
    iget-object v7, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    if-eqz v7, :cond_70

    iget-object v7, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    aget v8, v4, v6

    invoke-static {v7, v8}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v7

    if-nez v7, :cond_7c

    .line 2704
    :cond_70
    new-instance v7, Ljava/io/File;

    const-string v8, "excluded_userids"

    invoke-direct {v7, v5, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aget v8, v4, v6

    invoke-direct {p0, v7, v8}, Lcom/android/server/pm/Settings;->writeIntToFile(Ljava/io/File;I)V

    .line 2701
    :cond_7c
    add-int/lit8 v6, v6, 0x1

    goto :goto_5f

    .line 2710
    .end local v6    # "i":I
    :cond_7f
    iget-object v6, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    if-eqz v6, :cond_a4

    .line 2711
    nop

    .local v1, "i":I
    :goto_84
    iget-object v6, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    array-length v6, v6

    if-ge v1, v6, :cond_a4

    .line 2712
    iget-object v6, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    aget v6, v6, v1

    invoke-static {v4, v6}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v6

    if-nez v6, :cond_a1

    .line 2713
    new-instance v6, Ljava/io/File;

    const-string v7, "clear_userid"

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v7, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    aget v7, v7, v1

    invoke-direct {p0, v6, v7}, Lcom/android/server/pm/Settings;->writeIntToFile(Ljava/io/File;I)V

    .line 2711
    :cond_a1
    add-int/lit8 v1, v1, 0x1

    goto :goto_84

    .line 2721
    .end local v1    # "i":I
    :cond_a4
    iput-object v4, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    .line 2723
    :cond_a6
    return-void

    .line 2674
    .end local v0    # "cur":Lcom/android/server/pm/Settings$KernelPackageState;
    .end local v2    # "userIdsChanged":Z
    .end local v3    # "firstTime":Z
    .end local v4    # "excludedUserIds":[I
    .end local v5    # "dir":Ljava/io/File;
    :cond_a7
    :goto_a7
    return-void
.end method

.method writeKeySetAliasesLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V
    .registers 9
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "data"    # Lcom/android/server/pm/PackageKeySetData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2976
    invoke-virtual {p2}, Lcom/android/server/pm/PackageKeySetData;->getAliases()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2977
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    const-string v2, "defined-keyset"

    const/4 v3, 0x0

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2978
    const-string v2, "alias"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {p1, v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2979
    const-string v2, "identifier"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2980
    const-string v2, "defined-keyset"

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2981
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    goto :goto_c

    .line 2982
    :cond_42
    return-void
.end method

.method writeLPr()V
    .registers 13

    .line 2474
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2478
    .local v0, "startTime":J
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 2483
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_26

    .line 2484
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_32

    .line 2485
    const-string v2, "PackageManager"

    const-string v3, "Unable to backup package manager settings,  current changes will be lost at reboot"

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2488
    return-void

    .line 2491
    :cond_26
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 2492
    const-string v2, "PackageManager"

    const-string v3, "Preserving older settings backup"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2496
    :cond_32
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2499
    :try_start_37
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2500
    .local v2, "fstr":Ljava/io/FileOutputStream;
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2503
    .local v3, "str":Ljava/io/BufferedOutputStream;
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 2504
    .local v4, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2505
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2506
    const-string v6, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v4, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 2508
    const-string/jumbo v5, "packages"

    invoke-interface {v4, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2510
    const/4 v5, 0x0

    move v6, v5

    .line 2510
    .local v6, "i":I
    :goto_67
    iget-object v8, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    if-ge v6, v8, :cond_aa

    .line 2511
    iget-object v8, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2512
    .local v8, "volumeUuid":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v9, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/Settings$VersionInfo;

    .line 2514
    .local v9, "ver":Lcom/android/server/pm/Settings$VersionInfo;
    const-string/jumbo v10, "version"

    invoke-interface {v4, v7, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2515
    const-string/jumbo v10, "volumeUuid"

    invoke-static {v4, v10, v8}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2516
    const-string/jumbo v10, "sdkVersion"

    iget v11, v9, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    invoke-static {v4, v10, v11}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2517
    const-string v10, "databaseVersion"

    iget v11, v9, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    invoke-static {v4, v10, v11}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2518
    const-string v10, "fingerprint"

    iget-object v11, v9, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    invoke-static {v4, v10, v11}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2519
    const-string/jumbo v10, "version"

    invoke-interface {v4, v7, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2510
    .end local v8    # "volumeUuid":Ljava/lang/String;
    .end local v9    # "ver":Lcom/android/server/pm/Settings$VersionInfo;
    add-int/lit8 v6, v6, 0x1

    goto :goto_67

    .line 2522
    .end local v6    # "i":I
    :cond_aa
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    if-eqz v6, :cond_c5

    .line 2523
    const-string/jumbo v6, "verifier"

    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2524
    const-string v6, "device"

    iget-object v8, p0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    invoke-virtual {v8}, Landroid/content/pm/VerifierDeviceIdentity;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v7, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2525
    const-string/jumbo v6, "verifier"

    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2528
    :cond_c5
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mReadExternalStorageEnforced:Ljava/lang/Boolean;

    if-eqz v6, :cond_e7

    .line 2529
    const-string/jumbo v6, "read-external-storage"

    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2530
    const-string v6, "enforcement"

    .line 2531
    iget-object v8, p0, Lcom/android/server/pm/Settings;->mReadExternalStorageEnforced:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_dc

    const-string v8, "1"

    goto :goto_de

    :cond_dc
    const-string v8, "0"

    .line 2530
    :goto_de
    invoke-interface {v4, v7, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2532
    const-string/jumbo v6, "read-external-storage"

    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2535
    :cond_e7
    const-string/jumbo v6, "permission-trees"

    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2536
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v6, v4}, Lcom/android/server/pm/permission/PermissionSettings;->writePermissionTrees(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 2537
    const-string/jumbo v6, "permission-trees"

    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2539
    const-string/jumbo v6, "permissions"

    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2540
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v6, v4}, Lcom/android/server/pm/permission/PermissionSettings;->writePermissions(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 2541
    const-string/jumbo v6, "permissions"

    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2543
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_113
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_123

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/PackageSetting;

    .line 2544
    .local v8, "pkg":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {p0, v4, v8}, Lcom/android/server/pm/Settings;->writePackageLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageSetting;)V

    .line 2545
    .end local v8    # "pkg":Lcom/android/server/pm/PackageSetting;
    goto :goto_113

    .line 2547
    :cond_123
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_12d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_13d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/PackageSetting;

    .line 2548
    .restart local v8    # "pkg":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {p0, v4, v8}, Lcom/android/server/pm/Settings;->writeDisabledSysPackageLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageSetting;)V

    .line 2549
    .end local v8    # "pkg":Lcom/android/server/pm/PackageSetting;
    goto :goto_12d

    .line 2551
    :cond_13d
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_147
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_189

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/SharedUserSetting;

    .line 2552
    .local v8, "usr":Lcom/android/server/pm/SharedUserSetting;
    const-string/jumbo v9, "shared-user"

    invoke-interface {v4, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2553
    const-string/jumbo v9, "name"

    iget-object v10, v8, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-interface {v4, v7, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2554
    const-string/jumbo v9, "userId"

    iget v10, v8, Lcom/android/server/pm/SharedUserSetting;->userId:I

    .line 2555
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 2554
    invoke-interface {v4, v7, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2556
    iget-object v9, v8, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    const-string/jumbo v10, "sigs"

    iget-object v11, p0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    invoke-virtual {v9, v4, v10, v11}, Lcom/android/server/pm/PackageSignatures;->writeXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2557
    invoke-virtual {v8}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v9

    .line 2558
    invoke-virtual {v9}, Lcom/android/server/pm/permission/PermissionsState;->getInstallPermissionStates()Ljava/util/List;

    move-result-object v9

    .line 2557
    invoke-virtual {p0, v4, v9}, Lcom/android/server/pm/Settings;->writePermissionsLPr(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    .line 2559
    const-string/jumbo v9, "shared-user"

    invoke-interface {v4, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2560
    .end local v8    # "usr":Lcom/android/server/pm/SharedUserSetting;
    goto :goto_147

    .line 2562
    :cond_189
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1d1

    .line 2563
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_197
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1d1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageCleanItem;

    .line 2564
    .local v8, "item":Landroid/content/pm/PackageCleanItem;
    iget v9, v8, Landroid/content/pm/PackageCleanItem;->userId:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    .line 2565
    .local v9, "userStr":Ljava/lang/String;
    const-string v10, "cleaning-package"

    invoke-interface {v4, v7, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2566
    const-string/jumbo v10, "name"

    iget-object v11, v8, Landroid/content/pm/PackageCleanItem;->packageName:Ljava/lang/String;

    invoke-interface {v4, v7, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2567
    const-string v10, "code"

    iget-boolean v11, v8, Landroid/content/pm/PackageCleanItem;->andCode:Z

    if-eqz v11, :cond_1c0

    const-string/jumbo v11, "true"

    goto :goto_1c2

    :cond_1c0
    const-string v11, "false"

    :goto_1c2
    invoke-interface {v4, v7, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2568
    const-string/jumbo v10, "user"

    invoke-interface {v4, v7, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2569
    const-string v10, "cleaning-package"

    invoke-interface {v4, v7, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2570
    .end local v8    # "item":Landroid/content/pm/PackageCleanItem;
    .end local v9    # "userStr":Ljava/lang/String;
    goto :goto_197

    .line 2573
    :cond_1d1
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-lez v6, :cond_214

    .line 2574
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1e3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_214

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 2575
    .local v8, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v9, "renamed-package"

    invoke-interface {v4, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2576
    const-string/jumbo v9, "new"

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v4, v7, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2577
    const-string/jumbo v9, "old"

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v4, v7, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2578
    const-string/jumbo v9, "renamed-package"

    invoke-interface {v4, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2579
    .end local v8    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_1e3

    .line 2582
    :cond_214
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 2583
    .local v6, "numIVIs":I
    if-lez v6, :cond_239

    .line 2587
    const-string/jumbo v8, "restored-ivi"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2588
    nop

    .line 2588
    .local v5, "i":I
    :goto_223
    if-ge v5, v6, :cond_233

    .line 2589
    iget-object v8, p0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    invoke-virtual {v8, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/IntentFilterVerificationInfo;

    .line 2590
    .local v8, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    invoke-virtual {p0, v4, v8}, Lcom/android/server/pm/Settings;->writeDomainVerificationsLPr(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/pm/IntentFilterVerificationInfo;)V

    .line 2588
    .end local v8    # "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    add-int/lit8 v5, v5, 0x1

    goto :goto_223

    .line 2592
    .end local v5    # "i":I
    :cond_233
    const-string/jumbo v5, "restored-ivi"

    invoke-interface {v4, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2599
    :cond_239
    iget-object v5, p0, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/KeySetManagerService;->writeKeySetManagerServiceLPr(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 2601
    const-string/jumbo v5, "packages"

    invoke-interface {v4, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2603
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2605
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 2606
    invoke-static {v2}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 2607
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    .line 2611
    iget-object v5, p0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 2612
    iget-object v5, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x1b0

    const/4 v8, -0x1

    invoke-static {v5, v7, v8, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 2617
    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr()V

    .line 2618
    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->writePackageListLPr()V

    .line 2619
    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->writeAllUsersPackageRestrictionsLPr()V

    .line 2620
    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->writeAllRuntimePermissionsLPr()V

    .line 2621
    const-string/jumbo v5, "package"

    .line 2622
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v0

    .line 2621
    invoke-static {v5, v7, v8}, Lcom/android/internal/logging/EventLogTags;->writeCommitSysConfigFile(Ljava/lang/String;J)V
    :try_end_278
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_278} :catch_279

    .line 2623
    return-void

    .line 2625
    .end local v2    # "fstr":Ljava/io/FileOutputStream;
    .end local v3    # "str":Ljava/io/BufferedOutputStream;
    .end local v4    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v6    # "numIVIs":I
    :catch_279
    move-exception v2

    .line 2626
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "PackageManager"

    const-string v4, "Unable to write package manager settings, current changes will be lost at reboot"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2630
    .end local v2    # "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2a9

    .line 2631
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_2a9

    .line 2632
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to clean up mangled file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2637
    :cond_2a9
    return-void
.end method

.method writePackageLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageSetting;)V
    .registers 7
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "pkg"    # Lcom/android/server/pm/PackageSetting;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2881
    const-string/jumbo v0, "package"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2882
    const-string/jumbo v0, "name"

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2883
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v0, :cond_1b

    .line 2884
    const-string/jumbo v0, "realName"

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2886
    :cond_1b
    const-string v0, "codePath"

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2887
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 2888
    const-string/jumbo v0, "resourcePath"

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2891
    :cond_34
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    if-eqz v0, :cond_40

    .line 2892
    const-string/jumbo v0, "nativeLibraryPath"

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2894
    :cond_40
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    if-eqz v0, :cond_4c

    .line 2895
    const-string/jumbo v0, "primaryCpuAbi"

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2897
    :cond_4c
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    if-eqz v0, :cond_58

    .line 2898
    const-string/jumbo v0, "secondaryCpuAbi"

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2900
    :cond_58
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->cpuAbiOverrideString:Ljava/lang/String;

    if-eqz v0, :cond_63

    .line 2901
    const-string v0, "cpuAbiOverride"

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->cpuAbiOverrideString:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2904
    :cond_63
    const-string/jumbo v0, "publicFlags"

    iget v2, p2, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2905
    const-string/jumbo v0, "privateFlags"

    iget v2, p2, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2906
    const-string v0, "ft"

    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->timeStamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2907
    const-string/jumbo v0, "it"

    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2908
    const-string/jumbo v0, "ut"

    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2909
    const-string/jumbo v0, "version"

    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->versionCode:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2910
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v0, :cond_bb

    .line 2911
    const-string/jumbo v0, "userId"

    iget v2, p2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_c7

    .line 2913
    :cond_bb
    const-string/jumbo v0, "sharedUserId"

    iget v2, p2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2915
    :goto_c7
    iget-boolean v0, p2, Lcom/android/server/pm/PackageSetting;->uidError:Z

    if-eqz v0, :cond_d4

    .line 2916
    const-string/jumbo v0, "uidError"

    const-string/jumbo v2, "true"

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2918
    :cond_d4
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    if-eqz v0, :cond_df

    .line 2919
    const-string v0, "installer"

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2921
    :cond_df
    iget-boolean v0, p2, Lcom/android/server/pm/PackageSetting;->isOrphaned:Z

    if-eqz v0, :cond_ec

    .line 2922
    const-string/jumbo v0, "isOrphaned"

    const-string/jumbo v2, "true"

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2924
    :cond_ec
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    if-eqz v0, :cond_f8

    .line 2925
    const-string/jumbo v0, "volumeUuid"

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2927
    :cond_f8
    iget v0, p2, Lcom/android/server/pm/PackageSetting;->categoryHint:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_108

    .line 2928
    const-string v0, "categoryHint"

    iget v2, p2, Lcom/android/server/pm/PackageSetting;->categoryHint:I

    .line 2929
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 2928
    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2931
    :cond_108
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->parentPackageName:Ljava/lang/String;

    if-eqz v0, :cond_114

    .line 2932
    const-string/jumbo v0, "parentPackageName"

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->parentPackageName:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2934
    :cond_114
    iget-boolean v0, p2, Lcom/android/server/pm/PackageSetting;->updateAvailable:Z

    if-eqz v0, :cond_121

    .line 2935
    const-string/jumbo v0, "updateAvailable"

    const-string/jumbo v2, "true"

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2938
    :cond_121
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/Settings;->writeChildPackagesLPw(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    .line 2940
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/pm/Settings;->writeUsesStaticLibLPw(Lorg/xmlpull/v1/XmlSerializer;[Ljava/lang/String;[J)V

    .line 2942
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    const-string/jumbo v2, "sigs"

    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/server/pm/PackageSignatures;->writeXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2944
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v0

    .line 2945
    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionsState;->getInstallPermissionStates()Ljava/util/List;

    move-result-object v0

    .line 2944
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/Settings;->writePermissionsLPr(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    .line 2947
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/Settings;->writeSigningKeySetLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V

    .line 2948
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/Settings;->writeUpgradeKeySetsLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V

    .line 2949
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/Settings;->writeKeySetAliasesLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V

    .line 2950
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->verificationInfo:Landroid/content/pm/IntentFilterVerificationInfo;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/Settings;->writeDomainVerificationsLPr(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/pm/IntentFilterVerificationInfo;)V

    .line 2952
    const-string/jumbo v0, "package"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2953
    return-void
.end method

.method writePackageListLPr()V
    .registers 2

    .line 2735
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/pm/Settings;->writePackageListLPr(I)V

    .line 2736
    return-void
.end method

.method writePackageListLPr(I)V
    .registers 19
    .param p1, "creatingUserId"    # I

    move-object/from16 v1, p0

    .line 2740
    move/from16 v2, p1

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v4

    .line 2741
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 2742
    .local v0, "userIds":[I
    const/4 v6, 0x0

    .line 2742
    .local v6, "i":I
    :goto_14
    array-length v7, v0

    if-ge v6, v7, :cond_24

    .line 2743
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    aput v7, v0, v6

    .line 2742
    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    .line 2745
    .end local v6    # "i":I
    :cond_24
    const/4 v6, -0x1

    if-eq v2, v6, :cond_2b

    .line 2746
    invoke-static {v0, v2}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v0

    .line 2750
    .end local v0    # "userIds":[I
    .local v6, "userIds":[I
    :cond_2b
    move-object v6, v0

    new-instance v0, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".tmp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v7, v0

    .line 2751
    .local v7, "tempFile":Ljava/io/File;
    new-instance v0, Lcom/android/internal/util/JournaledFile;

    iget-object v8, v1, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    invoke-direct {v0, v8, v7}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    move-object v8, v0

    .line 2753
    .local v8, "journal":Lcom/android/internal/util/JournaledFile;
    invoke-virtual {v8}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v9

    .line 2755
    .local v9, "writeTarget":Ljava/io/File;
    const/4 v0, 0x0

    move-object v10, v0

    .line 2757
    .local v10, "writer":Ljava/io/BufferedWriter;
    :try_start_57
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2758
    .local v0, "fstr":Ljava/io/FileOutputStream;
    new-instance v11, Ljava/io/BufferedWriter;

    new-instance v12, Ljava/io/OutputStreamWriter;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v13

    invoke-direct {v12, v0, v13}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v11, v12}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v10, v11

    .line 2759
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v11

    const/16 v12, 0x1a0

    const/16 v13, 0x3e8

    const/16 v14, 0x408

    invoke-static {v11, v12, v13, v14}, Landroid/os/FileUtils;->setPermissions(Ljava/io/FileDescriptor;III)I

    .line 2761
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 2762
    .local v11, "sb":Ljava/lang/StringBuilder;
    iget-object v12, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_87
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_152

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/pm/PackageSetting;

    .line 2763
    .local v13, "pkg":Lcom/android/server/pm/PackageSetting;
    iget-object v14, v13, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v14, :cond_126

    iget-object v14, v13, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v14, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v14, :cond_126

    iget-object v14, v13, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v14, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    if-nez v14, :cond_a7

    goto/16 :goto_126

    .line 2771
    :cond_a7
    iget-object v14, v13, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v14, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2772
    .local v14, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v15, v14, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 2773
    .local v15, "dataPath":Ljava/lang/String;
    iget v3, v14, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_b5

    const/4 v3, 0x1

    goto :goto_b6

    :cond_b5
    const/4 v3, 0x0

    .line 2774
    .local v3, "isDebug":Z
    :goto_b6
    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/android/server/pm/permission/PermissionsState;->computeGids([I)[I

    move-result-object v5

    .line 2777
    .local v5, "gids":[I
    const/16 v1, 0x20

    invoke-virtual {v15, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_cb

    .line 2778
    nop

    .line 2762
    move-object/from16 v1, p0

    goto/16 :goto_14f

    .line 2796
    :cond_cb
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2797
    iget-object v1, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2798
    const-string v1, " "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2799
    iget v1, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2800
    if-eqz v3, :cond_e3

    const-string v1, " 1 "

    goto :goto_e5

    :cond_e3
    const-string v1, " 0 "

    :goto_e5
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2801
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2802
    const-string v1, " "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2803
    iget-object v1, v14, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2804
    const-string v1, " "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2805
    if-eqz v5, :cond_117

    array-length v1, v5

    if-lez v1, :cond_117

    .line 2806
    const/4 v1, 0x0

    aget v2, v5, v1

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2807
    const/4 v2, 0x1

    .line 2807
    .local v2, "i":I
    :goto_106
    array-length v1, v5

    if-ge v2, v1, :cond_11d

    .line 2808
    const-string v1, ","

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2809
    aget v1, v5, v2

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2807
    add-int/lit8 v2, v2, 0x1

    const/4 v1, 0x0

    goto :goto_106

    .line 2812
    .end local v2    # "i":I
    :cond_117
    const-string/jumbo v1, "none"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2814
    :cond_11d
    const-string v1, "\n"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2815
    invoke-virtual {v10, v11}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 2816
    .end local v3    # "isDebug":Z
    .end local v5    # "gids":[I
    .end local v13    # "pkg":Lcom/android/server/pm/PackageSetting;
    .end local v14    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v15    # "dataPath":Ljava/lang/String;
    goto :goto_14b

    .line 2765
    .restart local v13    # "pkg":Lcom/android/server/pm/PackageSetting;
    :cond_126
    :goto_126
    const-string v1, "android"

    iget-object v2, v13, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14b

    .line 2766
    const-string v1, "PackageSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " due to missing metadata"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2762
    .end local v13    # "pkg":Lcom/android/server/pm/PackageSetting;
    :cond_14b
    :goto_14b
    move-object/from16 v1, p0

    move/from16 v2, p1

    :goto_14f
    const/4 v3, 0x1

    goto/16 :goto_87

    .line 2817
    :cond_152
    invoke-virtual {v10}, Ljava/io/BufferedWriter;->flush()V

    .line 2818
    invoke-static {v0}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 2819
    invoke-virtual {v10}, Ljava/io/BufferedWriter;->close()V

    .line 2820
    invoke-virtual {v8}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_15e
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_15e} :catch_15f

    .line 2825
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    goto :goto_16d

    .line 2821
    .end local v0    # "fstr":Ljava/io/FileOutputStream;
    :catch_15f
    move-exception v0

    .line 2822
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PackageSettings"

    const-string v2, "Failed to write packages.list"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2823
    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2824
    invoke-virtual {v8}, Lcom/android/internal/util/JournaledFile;->rollback()V

    .line 2826
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_16d
    return-void
.end method

.method writePackageRestrictionsLPr(I)V
    .registers 20
    .param p1, "userId"    # I

    move-object/from16 v1, p0

    .line 2047
    move/from16 v2, p1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 2051
    .local v3, "startTime":J
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateFile(I)Ljava/io/File;

    move-result-object v5

    .line 2052
    .local v5, "userPackagesStateFile":Ljava/io/File;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateBackupFile(I)Ljava/io/File;

    move-result-object v6

    .line 2053
    .local v6, "backupFile":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 2054
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 2059
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_36

    .line 2060
    invoke-virtual {v5, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_40

    .line 2061
    const-string v0, "PackageManager"

    const-string v7, "Unable to backup user packages state file, current changes will be lost at reboot"

    invoke-static {v0, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2064
    return-void

    .line 2067
    :cond_36
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 2068
    const-string v0, "PackageManager"

    const-string v7, "Preserving older stopped packages backup"

    invoke-static {v0, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2073
    :cond_40
    :try_start_40
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v7, v0

    .line 2074
    .local v7, "fstr":Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v8, v0

    .line 2076
    .local v8, "str":Ljava/io/BufferedOutputStream;
    new-instance v0, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v0}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    move-object v9, v0

    .line 2077
    .local v9, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v8, v0}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2078
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v11, 0x0

    invoke-interface {v9, v11, v0}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2079
    const-string v0, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v9, v0, v10}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 2081
    const-string/jumbo v0, "package-restrictions"

    invoke-interface {v9, v11, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2083
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_79
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_256

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    move-object v13, v0

    .line 2084
    .local v13, "pkg":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v13, v2}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    move-object v14, v0

    .line 2087
    .local v14, "ustate":Landroid/content/pm/PackageUserState;
    const-string/jumbo v0, "pkg"

    invoke-interface {v9, v11, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2088
    const-string/jumbo v0, "name"

    iget-object v15, v13, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-interface {v9, v11, v0, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2089
    iget-wide v10, v14, Landroid/content/pm/PackageUserState;->ceDataInode:J

    const-wide/16 v16, 0x0

    cmp-long v0, v10, v16

    if-eqz v0, :cond_a8

    .line 2090
    const-string v0, "ceDataInode"

    iget-wide v10, v14, Landroid/content/pm/PackageUserState;->ceDataInode:J

    invoke-static {v9, v0, v10, v11}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 2092
    :cond_a8
    iget-boolean v0, v14, Landroid/content/pm/PackageUserState;->installed:Z

    if-nez v0, :cond_b4

    .line 2093
    const-string v0, "inst"

    const-string v10, "false"

    const/4 v11, 0x0

    invoke-interface {v9, v11, v0, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2095
    :cond_b4
    iget-boolean v0, v14, Landroid/content/pm/PackageUserState;->stopped:Z

    if-eqz v0, :cond_c2

    .line 2096
    const-string/jumbo v0, "stopped"

    const-string/jumbo v10, "true"

    const/4 v11, 0x0

    invoke-interface {v9, v11, v0, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2098
    :cond_c2
    iget-boolean v0, v14, Landroid/content/pm/PackageUserState;->notLaunched:Z

    if-eqz v0, :cond_d0

    .line 2099
    const-string/jumbo v0, "nl"

    const-string/jumbo v10, "true"

    const/4 v11, 0x0

    invoke-interface {v9, v11, v0, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2101
    :cond_d0
    iget-boolean v0, v14, Landroid/content/pm/PackageUserState;->hidden:Z

    if-eqz v0, :cond_dd

    .line 2102
    const-string v0, "hidden"

    const-string/jumbo v10, "true"

    const/4 v11, 0x0

    invoke-interface {v9, v11, v0, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2104
    :cond_dd
    iget-boolean v0, v14, Landroid/content/pm/PackageUserState;->suspended:Z

    if-eqz v0, :cond_16d

    .line 2105
    const-string/jumbo v0, "suspended"

    const-string/jumbo v10, "true"

    const/4 v11, 0x0

    invoke-interface {v9, v11, v0, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2106
    iget-object v0, v14, Landroid/content/pm/PackageUserState;->suspendingPackage:Ljava/lang/String;

    if-eqz v0, :cond_f8

    .line 2107
    const-string/jumbo v0, "suspending-package"

    iget-object v10, v14, Landroid/content/pm/PackageUserState;->suspendingPackage:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-interface {v9, v11, v0, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2110
    :cond_f8
    iget-object v0, v14, Landroid/content/pm/PackageUserState;->dialogMessage:Ljava/lang/String;

    if-eqz v0, :cond_105

    .line 2111
    const-string/jumbo v0, "suspend_dialog_message"

    iget-object v10, v14, Landroid/content/pm/PackageUserState;->dialogMessage:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-interface {v9, v11, v0, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2114
    :cond_105
    iget-object v0, v14, Landroid/content/pm/PackageUserState;->suspendedAppExtras:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_139

    .line 2115
    const-string/jumbo v0, "suspended-app-extras"

    const/4 v10, 0x0

    invoke-interface {v9, v10, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_110
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_110} :catch_2a1

    .line 2117
    :try_start_110
    iget-object v0, v14, Landroid/content/pm/PackageUserState;->suspendedAppExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, v9}, Landroid/os/PersistableBundle;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    :try_end_115
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_110 .. :try_end_115} :catch_116
    .catch Ljava/io/IOException; {:try_start_110 .. :try_end_115} :catch_2a1

    .line 2121
    goto :goto_132

    .line 2118
    :catch_116
    move-exception v0

    .line 2119
    .local v0, "xmle":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_117
    const-string v10, "PackageSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Exception while trying to write suspendedAppExtras for "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, ". Will be lost on reboot"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2122
    .end local v0    # "xmle":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_132
    const-string/jumbo v0, "suspended-app-extras"

    const/4 v10, 0x0

    invoke-interface {v9, v10, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2124
    :cond_139
    iget-object v0, v14, Landroid/content/pm/PackageUserState;->suspendedLauncherExtras:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_16d

    .line 2125
    const-string/jumbo v0, "suspended-launcher-extras"

    const/4 v10, 0x0

    invoke-interface {v9, v10, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_144
    .catch Ljava/io/IOException; {:try_start_117 .. :try_end_144} :catch_2a1

    .line 2127
    :try_start_144
    iget-object v0, v14, Landroid/content/pm/PackageUserState;->suspendedLauncherExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, v9}, Landroid/os/PersistableBundle;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    :try_end_149
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_144 .. :try_end_149} :catch_14a
    .catch Ljava/io/IOException; {:try_start_144 .. :try_end_149} :catch_2a1

    .line 2131
    goto :goto_166

    .line 2128
    :catch_14a
    move-exception v0

    .line 2129
    .restart local v0    # "xmle":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_14b
    const-string v10, "PackageSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Exception while trying to write suspendedLauncherExtras for "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, ". Will be lost on reboot"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2132
    .end local v0    # "xmle":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_166
    const-string/jumbo v0, "suspended-launcher-extras"

    const/4 v10, 0x0

    invoke-interface {v9, v10, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2135
    :cond_16d
    iget-boolean v0, v14, Landroid/content/pm/PackageUserState;->instantApp:Z

    if-eqz v0, :cond_17a

    .line 2136
    const-string v0, "instant-app"

    const-string/jumbo v10, "true"

    const/4 v11, 0x0

    invoke-interface {v9, v11, v0, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2138
    :cond_17a
    iget-boolean v0, v14, Landroid/content/pm/PackageUserState;->virtualPreload:Z

    if-eqz v0, :cond_188

    .line 2139
    const-string/jumbo v0, "virtual-preload"

    const-string/jumbo v10, "true"

    const/4 v11, 0x0

    invoke-interface {v9, v11, v0, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2141
    :cond_188
    iget v0, v14, Landroid/content/pm/PackageUserState;->enabled:I

    if-eqz v0, :cond_1a4

    .line 2142
    const-string v0, "enabled"

    iget v10, v14, Landroid/content/pm/PackageUserState;->enabled:I

    .line 2143
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 2142
    const/4 v11, 0x0

    invoke-interface {v9, v11, v0, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2144
    iget-object v0, v14, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    if-eqz v0, :cond_1a4

    .line 2145
    const-string v0, "enabledCaller"

    iget-object v10, v14, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-interface {v9, v11, v0, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2149
    :cond_1a4
    iget v0, v14, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    if-eqz v0, :cond_1af

    .line 2151
    const-string v0, "domainVerificationStatus"

    iget v10, v14, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    invoke-static {v9, v0, v10}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2154
    :cond_1af
    iget v0, v14, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    if-eqz v0, :cond_1ba

    .line 2155
    const-string v0, "app-link-generation"

    iget v10, v14, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    invoke-static {v9, v0, v10}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2158
    :cond_1ba
    iget v0, v14, Landroid/content/pm/PackageUserState;->installReason:I

    if-eqz v0, :cond_1ca

    .line 2159
    const-string v0, "install-reason"

    iget v10, v14, Landroid/content/pm/PackageUserState;->installReason:I

    .line 2160
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 2159
    const/4 v11, 0x0

    invoke-interface {v9, v11, v0, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2162
    :cond_1ca
    iget-object v0, v14, Landroid/content/pm/PackageUserState;->harmfulAppWarning:Ljava/lang/String;

    if-eqz v0, :cond_1d6

    .line 2163
    const-string v0, "harmful-app-warning"

    iget-object v10, v14, Landroid/content/pm/PackageUserState;->harmfulAppWarning:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-interface {v9, v11, v0, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2166
    :cond_1d6
    iget-object v0, v14, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_210

    .line 2167
    const-string v0, "enabled-components"

    const/4 v10, 0x0

    invoke-interface {v9, v10, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2168
    iget-object v0, v14, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1ea
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_20a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 2169
    .local v10, "name":Ljava/lang/String;
    const-string/jumbo v11, "item"

    const/4 v15, 0x0

    invoke-interface {v9, v15, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2170
    const-string/jumbo v11, "name"

    invoke-interface {v9, v15, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2171
    const-string/jumbo v11, "item"

    invoke-interface {v9, v15, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2172
    .end local v10    # "name":Ljava/lang/String;
    goto :goto_1ea

    .line 2173
    :cond_20a
    const-string v0, "enabled-components"

    const/4 v10, 0x0

    invoke-interface {v9, v10, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2175
    :cond_210
    iget-object v0, v14, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_24a

    .line 2176
    const-string v0, "disabled-components"

    const/4 v10, 0x0

    invoke-interface {v9, v10, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2177
    iget-object v0, v14, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_224
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_244

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 2178
    .restart local v10    # "name":Ljava/lang/String;
    const-string/jumbo v11, "item"

    const/4 v15, 0x0

    invoke-interface {v9, v15, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2179
    const-string/jumbo v11, "name"

    invoke-interface {v9, v15, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2180
    const-string/jumbo v11, "item"

    invoke-interface {v9, v15, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2181
    .end local v10    # "name":Ljava/lang/String;
    goto :goto_224

    .line 2182
    :cond_244
    const-string v0, "disabled-components"

    const/4 v10, 0x0

    invoke-interface {v9, v10, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2185
    :cond_24a
    const-string/jumbo v0, "pkg"

    const/4 v10, 0x0

    invoke-interface {v9, v10, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2186
    .end local v13    # "pkg":Lcom/android/server/pm/PackageSetting;
    .end local v14    # "ustate":Landroid/content/pm/PackageUserState;
    nop

    .line 2083
    const/4 v10, 0x1

    const/4 v11, 0x0

    goto/16 :goto_79

    .line 2188
    :cond_256
    const/4 v10, 0x1

    invoke-virtual {v1, v9, v2, v10}, Lcom/android/server/pm/Settings;->writePreferredActivitiesLPr(Lorg/xmlpull/v1/XmlSerializer;IZ)V

    .line 2189
    invoke-virtual {v1, v9, v2}, Lcom/android/server/pm/Settings;->writePersistentPreferredActivitiesLPr(Lorg/xmlpull/v1/XmlSerializer;I)V

    .line 2190
    invoke-virtual {v1, v9, v2}, Lcom/android/server/pm/Settings;->writeCrossProfileIntentFiltersLPr(Lorg/xmlpull/v1/XmlSerializer;I)V

    .line 2191
    invoke-virtual {v1, v9, v2}, Lcom/android/server/pm/Settings;->writeDefaultAppsLPr(Lorg/xmlpull/v1/XmlSerializer;I)V

    .line 2192
    invoke-virtual {v1, v9, v2}, Lcom/android/server/pm/Settings;->writeBlockUninstallPackagesLPr(Lorg/xmlpull/v1/XmlSerializer;I)V

    .line 2194
    const-string/jumbo v0, "package-restrictions"

    const/4 v10, 0x0

    invoke-interface {v9, v10, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2196
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2198
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->flush()V

    .line 2199
    invoke-static {v7}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 2200
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->close()V

    .line 2204
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 2205
    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v10, 0x1b0

    const/4 v11, -0x1

    invoke-static {v0, v10, v11, v11}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 2210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "package-user-"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2211
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v3

    .line 2210
    invoke-static {v0, v10, v11}, Lcom/android/internal/logging/EventLogTags;->writeCommitSysConfigFile(Ljava/lang/String;J)V
    :try_end_2a0
    .catch Ljava/io/IOException; {:try_start_14b .. :try_end_2a0} :catch_2a1

    .line 2214
    return-void

    .line 2215
    .end local v7    # "fstr":Ljava/io/FileOutputStream;
    .end local v8    # "str":Ljava/io/BufferedOutputStream;
    .end local v9    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_2a1
    move-exception v0

    .line 2216
    .local v0, "e":Ljava/io/IOException;
    const-string v7, "PackageManager"

    const-string v8, "Unable to write package manager user packages state,  current changes will be lost at reboot"

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2222
    .end local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2cd

    .line 2223
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_2cd

    .line 2224
    const-string v0, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to clean up mangled file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2228
    :cond_2cd
    return-void
.end method

.method writePermissionLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/permission/BasePermission;)V
    .registers 3
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "bp"    # Lcom/android/server/pm/permission/BasePermission;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2985
    invoke-virtual {p2, p1}, Lcom/android/server/pm/permission/BasePermission;->writeLPr(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 2986
    return-void
.end method

.method writePermissionsLPr(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V
    .registers 8
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/PermissionsState$PermissionState;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2289
    .local p2, "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2290
    return-void

    .line 2293
    :cond_7
    const-string/jumbo v0, "perms"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2295
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 2296
    .local v2, "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    const-string/jumbo v3, "item"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2297
    const-string/jumbo v3, "name"

    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2298
    const-string v3, "granted"

    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->isGranted()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2299
    const-string v3, "flags"

    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getFlags()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2300
    const-string/jumbo v3, "item"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2301
    .end local v2    # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    goto :goto_12

    .line 2303
    :cond_4f
    const-string/jumbo v0, "perms"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2304
    return-void
.end method

.method writePersistentPreferredActivitiesLPr(Lorg/xmlpull/v1/XmlSerializer;I)V
    .registers 8
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1908
    const-string/jumbo v0, "persistent-preferred-activities"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1909
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PersistentPreferredIntentResolver;

    .line 1910
    .local v0, "ppir":Lcom/android/server/pm/PersistentPreferredIntentResolver;
    if-eqz v0, :cond_35

    .line 1911
    invoke-virtual {v0}, Lcom/android/server/pm/PersistentPreferredIntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PersistentPreferredActivity;

    .line 1912
    .local v3, "ppa":Lcom/android/server/pm/PersistentPreferredActivity;
    const-string/jumbo v4, "item"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1913
    invoke-virtual {v3, p1}, Lcom/android/server/pm/PersistentPreferredActivity;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1914
    const-string/jumbo v4, "item"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1915
    .end local v3    # "ppa":Lcom/android/server/pm/PersistentPreferredActivity;
    goto :goto_19

    .line 1917
    :cond_35
    const-string/jumbo v2, "persistent-preferred-activities"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1918
    return-void
.end method

.method writePreferredActivitiesLPr(Lorg/xmlpull/v1/XmlSerializer;IZ)V
    .registers 9
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "userId"    # I
    .param p3, "full"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1894
    const-string/jumbo v0, "preferred-activities"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1895
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PreferredIntentResolver;

    .line 1896
    .local v0, "pir":Lcom/android/server/pm/PreferredIntentResolver;
    if-eqz v0, :cond_35

    .line 1897
    invoke-virtual {v0}, Lcom/android/server/pm/PreferredIntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PreferredActivity;

    .line 1898
    .local v3, "pa":Lcom/android/server/pm/PreferredActivity;
    const-string/jumbo v4, "item"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1899
    invoke-virtual {v3, p1, p3}, Lcom/android/server/pm/PreferredActivity;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;Z)V

    .line 1900
    const-string/jumbo v4, "item"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1901
    .end local v3    # "pa":Lcom/android/server/pm/PreferredActivity;
    goto :goto_19

    .line 1903
    :cond_35
    const-string/jumbo v2, "preferred-activities"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1904
    return-void
.end method

.method public writeRuntimePermissionsForUserLPr(IZ)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "sync"    # Z

    .line 5132
    if-eqz p2, :cond_8

    .line 5133
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissionsForUserSyncLPr(I)V

    goto :goto_d

    .line 5135
    :cond_8
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissionsForUserAsyncLPr(I)V

    .line 5137
    :goto_d
    return-void
.end method

.method writeSigningKeySetLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V
    .registers 7
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "data"    # Lcom/android/server/pm/PackageKeySetData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2957
    const-string/jumbo v0, "proper-signing-keyset"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2958
    const-string v0, "identifier"

    .line 2959
    invoke-virtual {p2}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 2958
    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2960
    const-string/jumbo v0, "proper-signing-keyset"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2961
    return-void
.end method

.method writeUpgradeKeySetsLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V
    .registers 11
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "data"    # Lcom/android/server/pm/PackageKeySetData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2965
    invoke-virtual {p2}, Lcom/android/server/pm/PackageKeySetData;->isUsingUpgradeKeySets()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2966
    invoke-virtual {p2}, Lcom/android/server/pm/PackageKeySetData;->getUpgradeKeySets()[J

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_29

    aget-wide v3, v0, v2

    .line 2967
    .local v3, "id":J
    const-string/jumbo v5, "upgrade-keyset"

    const/4 v6, 0x0

    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2968
    const-string v5, "identifier"

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v6, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2969
    const-string/jumbo v5, "upgrade-keyset"

    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2966
    .end local v3    # "id":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 2972
    :cond_29
    return-void
.end method

.method writeUserRestrictionsLPw(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;)V
    .registers 8
    .param p1, "newPackage"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "oldPackage"    # Lcom/android/server/pm/PackageSetting;

    .line 907
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    if-nez v0, :cond_9

    .line 908
    return-void

    .line 911
    :cond_9
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v0

    .line 912
    .local v0, "allUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-nez v0, :cond_14

    .line 913
    return-void

    .line 915
    :cond_14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 916
    .local v2, "user":Landroid/content/pm/UserInfo;
    if-nez p2, :cond_29

    .line 917
    sget-object v3, Lcom/android/server/pm/PackageSettingBase;->DEFAULT_USER_STATE:Landroid/content/pm/PackageUserState;

    goto :goto_2f

    .line 918
    :cond_29
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p2, v3}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v3

    .line 919
    .local v3, "oldUserState":Landroid/content/pm/PackageUserState;
    :goto_2f
    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, v4}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageUserState;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_40

    .line 920
    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v4}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 922
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    .end local v3    # "oldUserState":Landroid/content/pm/PackageUserState;
    :cond_40
    goto :goto_18

    .line 923
    :cond_41
    return-void
.end method

.method writeUsesStaticLibLPw(Lorg/xmlpull/v1/XmlSerializer;[Ljava/lang/String;[J)V
    .registers 12
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "usesStaticLibraries"    # [Ljava/lang/String;
    .param p3, "usesStaticLibraryVersions"    # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2352
    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([J)Z

    move-result v0

    if-nez v0, :cond_3a

    array-length v0, p2

    array-length v1, p3

    if-eq v0, v1, :cond_11

    goto :goto_3a

    .line 2356
    :cond_11
    array-length v0, p2

    .line 2357
    .local v0, "libCount":I
    const/4 v1, 0x0

    .line 2357
    .local v1, "i":I
    :goto_13
    if-ge v1, v0, :cond_39

    .line 2358
    aget-object v2, p2, v1

    .line 2359
    .local v2, "libName":Ljava/lang/String;
    aget-wide v3, p3, v1

    .line 2360
    .local v3, "libVersion":J
    const-string/jumbo v5, "uses-static-lib"

    const/4 v6, 0x0

    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2361
    const-string/jumbo v5, "name"

    invoke-interface {p1, v6, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2362
    const-string/jumbo v5, "version"

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v6, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2363
    const-string/jumbo v5, "uses-static-lib"

    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2357
    .end local v2    # "libName":Ljava/lang/String;
    .end local v3    # "libVersion":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 2365
    .end local v1    # "i":I
    :cond_39
    return-void

    .line 2354
    .end local v0    # "libCount":I
    :cond_3a
    :goto_3a
    return-void
.end method
