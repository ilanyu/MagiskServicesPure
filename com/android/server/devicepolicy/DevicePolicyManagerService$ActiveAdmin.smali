.class Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
.super Ljava/lang/Object;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ActiveAdmin"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;
    }
.end annotation


# static fields
.field private static final ATTR_LAST_NETWORK_LOGGING_NOTIFICATION:Ljava/lang/String; = "last-notification"

.field private static final ATTR_NUM_NETWORK_LOGGING_NOTIFICATIONS:Ljava/lang/String; = "num-notifications"

.field private static final ATTR_VALUE:Ljava/lang/String; = "value"

.field static final DEF_KEYGUARD_FEATURES_DISABLED:I = 0x0

.field static final DEF_MAXIMUM_FAILED_PASSWORDS_FOR_WIPE:I = 0x0

.field static final DEF_MAXIMUM_NETWORK_LOGGING_NOTIFICATIONS_SHOWN:I = 0x2

.field static final DEF_MAXIMUM_TIME_TO_UNLOCK:J = 0x0L

.field static final DEF_MINIMUM_PASSWORD_LENGTH:I = 0x0

.field static final DEF_MINIMUM_PASSWORD_LETTERS:I = 0x1

.field static final DEF_MINIMUM_PASSWORD_LOWER_CASE:I = 0x0

.field static final DEF_MINIMUM_PASSWORD_NON_LETTER:I = 0x0

.field static final DEF_MINIMUM_PASSWORD_NUMERIC:I = 0x1

.field static final DEF_MINIMUM_PASSWORD_SYMBOLS:I = 0x1

.field static final DEF_MINIMUM_PASSWORD_UPPER_CASE:I = 0x0

.field static final DEF_ORGANIZATION_COLOR:I

.field static final DEF_PASSWORD_EXPIRATION_DATE:J = 0x0L

.field static final DEF_PASSWORD_EXPIRATION_TIMEOUT:J = 0x0L

.field static final DEF_PASSWORD_HISTORY_LENGTH:I = 0x0

.field private static final TAG_ACCOUNT_TYPE:Ljava/lang/String; = "account-type"

.field private static final TAG_CROSS_PROFILE_WIDGET_PROVIDERS:Ljava/lang/String; = "cross-profile-widget-providers"

.field private static final TAG_DEFAULT_ENABLED_USER_RESTRICTIONS:Ljava/lang/String; = "default-enabled-user-restrictions"

.field private static final TAG_DISABLE_ACCOUNT_MANAGEMENT:Ljava/lang/String; = "disable-account-management"

.field private static final TAG_DISABLE_BLUETOOTH_CONTACT_SHARING:Ljava/lang/String; = "disable-bt-contacts-sharing"

.field private static final TAG_DISABLE_CALLER_ID:Ljava/lang/String; = "disable-caller-id"

.field private static final TAG_DISABLE_CAMERA:Ljava/lang/String; = "disable-camera"

.field private static final TAG_DISABLE_CONTACTS_SEARCH:Ljava/lang/String; = "disable-contacts-search"

.field private static final TAG_DISABLE_KEYGUARD_FEATURES:Ljava/lang/String; = "disable-keyguard-features"

.field private static final TAG_DISABLE_SCREEN_CAPTURE:Ljava/lang/String; = "disable-screen-capture"

.field private static final TAG_ENCRYPTION_REQUESTED:Ljava/lang/String; = "encryption-requested"

.field private static final TAG_END_USER_SESSION_MESSAGE:Ljava/lang/String; = "end_user_session_message"

.field private static final TAG_FORCE_EPHEMERAL_USERS:Ljava/lang/String; = "force_ephemeral_users"

.field private static final TAG_GLOBAL_PROXY_EXCLUSION_LIST:Ljava/lang/String; = "global-proxy-exclusion-list"

.field private static final TAG_GLOBAL_PROXY_SPEC:Ljava/lang/String; = "global-proxy-spec"

.field private static final TAG_IS_LOGOUT_ENABLED:Ljava/lang/String; = "is_logout_enabled"

.field private static final TAG_IS_NETWORK_LOGGING_ENABLED:Ljava/lang/String; = "is_network_logging_enabled"

.field private static final TAG_KEEP_UNINSTALLED_PACKAGES:Ljava/lang/String; = "keep-uninstalled-packages"

.field private static final TAG_LONG_SUPPORT_MESSAGE:Ljava/lang/String; = "long-support-message"

.field private static final TAG_MANAGE_TRUST_AGENT_FEATURES:Ljava/lang/String; = "manage-trust-agent-features"

.field private static final TAG_MANDATORY_BACKUP_TRANSPORT:Ljava/lang/String; = "mandatory_backup_transport"

.field private static final TAG_MAX_FAILED_PASSWORD_WIPE:Ljava/lang/String; = "max-failed-password-wipe"

.field private static final TAG_MAX_TIME_TO_UNLOCK:Ljava/lang/String; = "max-time-to-unlock"

.field private static final TAG_METERED_DATA_DISABLED_PACKAGES:Ljava/lang/String; = "metered_data_disabled_packages"

.field private static final TAG_MIN_PASSWORD_LENGTH:Ljava/lang/String; = "min-password-length"

.field private static final TAG_MIN_PASSWORD_LETTERS:Ljava/lang/String; = "min-password-letters"

.field private static final TAG_MIN_PASSWORD_LOWERCASE:Ljava/lang/String; = "min-password-lowercase"

.field private static final TAG_MIN_PASSWORD_NONLETTER:Ljava/lang/String; = "min-password-nonletter"

.field private static final TAG_MIN_PASSWORD_NUMERIC:Ljava/lang/String; = "min-password-numeric"

.field private static final TAG_MIN_PASSWORD_SYMBOLS:Ljava/lang/String; = "min-password-symbols"

.field private static final TAG_MIN_PASSWORD_UPPERCASE:Ljava/lang/String; = "min-password-uppercase"

.field private static final TAG_ORGANIZATION_COLOR:Ljava/lang/String; = "organization-color"

.field private static final TAG_ORGANIZATION_NAME:Ljava/lang/String; = "organization-name"

.field private static final TAG_PACKAGE_LIST_ITEM:Ljava/lang/String; = "item"

.field private static final TAG_PARENT_ADMIN:Ljava/lang/String; = "parent-admin"

.field private static final TAG_PASSWORD_EXPIRATION_DATE:Ljava/lang/String; = "password-expiration-date"

.field private static final TAG_PASSWORD_EXPIRATION_TIMEOUT:Ljava/lang/String; = "password-expiration-timeout"

.field private static final TAG_PASSWORD_HISTORY_LENGTH:Ljava/lang/String; = "password-history-length"

.field private static final TAG_PASSWORD_QUALITY:Ljava/lang/String; = "password-quality"

.field private static final TAG_PERMITTED_ACCESSIBILITY_SERVICES:Ljava/lang/String; = "permitted-accessiblity-services"

.field private static final TAG_PERMITTED_IMES:Ljava/lang/String; = "permitted-imes"

.field private static final TAG_PERMITTED_NOTIFICATION_LISTENERS:Ljava/lang/String; = "permitted-notification-listeners"

.field private static final TAG_POLICIES:Ljava/lang/String; = "policies"

.field private static final TAG_PROVIDER:Ljava/lang/String; = "provider"

.field private static final TAG_REQUIRE_AUTO_TIME:Ljava/lang/String; = "require_auto_time"

.field private static final TAG_RESTRICTION:Ljava/lang/String; = "restriction"

.field private static final TAG_SHORT_SUPPORT_MESSAGE:Ljava/lang/String; = "short-support-message"

.field private static final TAG_SPECIFIES_GLOBAL_PROXY:Ljava/lang/String; = "specifies-global-proxy"

.field private static final TAG_START_USER_SESSION_MESSAGE:Ljava/lang/String; = "start_user_session_message"

.field private static final TAG_STRONG_AUTH_UNLOCK_TIMEOUT:Ljava/lang/String; = "strong-auth-unlock-timeout"

.field private static final TAG_TEST_ONLY_ADMIN:Ljava/lang/String; = "test-only-admin"

.field private static final TAG_TRUST_AGENT_COMPONENT:Ljava/lang/String; = "component"

.field private static final TAG_TRUST_AGENT_COMPONENT_OPTIONS:Ljava/lang/String; = "trust-agent-component-options"

.field private static final TAG_USER_RESTRICTIONS:Ljava/lang/String; = "user-restrictions"


# instance fields
.field final accountTypesWithManagementDisabled:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field crossProfileWidgetProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final defaultEnabledRestrictionsAlreadySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field disableBluetoothContactSharing:Z

.field disableCallerId:Z

.field disableCamera:Z

.field disableContactsSearch:Z

.field disableScreenCapture:Z

.field disabledKeyguardFeatures:I

.field encryptionRequested:Z

.field endUserSessionMessage:Ljava/lang/String;

.field forceEphemeralUsers:Z

.field globalProxyExclusionList:Ljava/lang/String;

.field globalProxySpec:Ljava/lang/String;

.field info:Landroid/app/admin/DeviceAdminInfo;

.field isLogoutEnabled:Z

.field isNetworkLoggingEnabled:Z

.field final isParent:Z

.field keepUninstalledPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field lastNetworkLoggingNotificationTimeMs:J

.field longSupportMessage:Ljava/lang/CharSequence;

.field mandatoryBackupTransport:Landroid/content/ComponentName;

.field maximumFailedPasswordsForWipe:I

.field maximumTimeToUnlock:J

.field meteredDisabledPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field minimumPasswordMetrics:Landroid/app/admin/PasswordMetrics;

.field numNetworkLoggingNotifications:I

.field organizationColor:I

.field organizationName:Ljava/lang/String;

.field parentAdmin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

.field passwordExpirationDate:J

.field passwordExpirationTimeout:J

.field passwordHistoryLength:I

.field permittedAccessiblityServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field permittedInputMethods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field permittedNotificationListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field requireAutoTime:Z

.field shortSupportMessage:Ljava/lang/CharSequence;

.field specifiesGlobalProxy:Z

.field startUserSessionMessage:Ljava/lang/String;

.field strongAuthUnlockTimeout:J

.field testOnlyAdmin:Z

.field trustAgentInfos:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;",
            ">;"
        }
    .end annotation
.end field

.field userRestrictions:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1002
    const-string v0, "#00796B"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->DEF_ORGANIZATION_COLOR:I

    return-void
.end method

.method constructor <init>(Landroid/app/admin/DeviceAdminInfo;Z)V
    .registers 14
    .param p1, "_info"    # Landroid/app/admin/DeviceAdminInfo;
    .param p2, "parent"    # Z

    .line 1016
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 897
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    .line 906
    new-instance v10, Landroid/app/admin/PasswordMetrics;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Landroid/app/admin/PasswordMetrics;-><init>(IIIIIIII)V

    iput-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordMetrics:Landroid/app/admin/PasswordMetrics;

    .line 914
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    .line 916
    iput-wide v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->strongAuthUnlockTimeout:J

    .line 919
    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    .line 922
    iput-wide v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    .line 925
    iput-wide v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    .line 929
    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    .line 931
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    .line 932
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->testOnlyAdmin:Z

    .line 933
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    .line 934
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCallerId:Z

    .line 935
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableContactsSearch:Z

    .line 936
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableBluetoothContactSharing:Z

    .line 937
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableScreenCapture:Z

    .line 938
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->requireAutoTime:Z

    .line 939
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->forceEphemeralUsers:Z

    .line 940
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->isNetworkLoggingEnabled:Z

    .line 941
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->isLogoutEnabled:Z

    .line 945
    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->numNetworkLoggingNotifications:I

    .line 946
    iput-wide v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->lastNetworkLoggingNotificationTimeMs:J

    .line 961
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->accountTypesWithManagementDisabled:Ljava/util/Set;

    .line 982
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    .line 983
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    .line 984
    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    .line 986
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->trustAgentInfos:Landroid/util/ArrayMap;

    .line 995
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->defaultEnabledRestrictionsAlreadySet:Ljava/util/Set;

    .line 998
    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->shortSupportMessage:Ljava/lang/CharSequence;

    .line 999
    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->longSupportMessage:Ljava/lang/CharSequence;

    .line 1003
    sget v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->DEF_ORGANIZATION_COLOR:I

    iput v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->organizationColor:I

    .line 1006
    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->organizationName:Ljava/lang/String;

    .line 1010
    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->mandatoryBackupTransport:Landroid/content/ComponentName;

    .line 1013
    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->startUserSessionMessage:Ljava/lang/String;

    .line 1014
    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->endUserSessionMessage:Ljava/lang/String;

    .line 1017
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    .line 1018
    iput-boolean p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->isParent:Z

    .line 1019
    return-void
.end method

.method private getAllTrustAgentInfos(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/util/ArrayMap;
    .registers 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1539
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1541
    .local v0, "outerDepthDAM":I
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 1542
    .local v1, "result":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;>;"
    :cond_9
    :goto_9
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .line 1542
    .local v3, "typeDAM":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_5b

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1a

    .line 1543
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_5b

    .line 1544
    :cond_1a
    if-eq v3, v2, :cond_9

    const/4 v2, 0x4

    if-ne v3, v2, :cond_20

    .line 1545
    goto :goto_9

    .line 1547
    :cond_20
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1548
    .local v2, "tagDAM":Ljava/lang/String;
    const-string v4, "component"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 1549
    const/4 v4, 0x0

    const-string/jumbo v5, "value"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1550
    .local v4, "component":Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->getTrustAgentInfo(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;

    move-result-object v5

    .line 1551
    .local v5, "trustAgentInfo":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;
    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1552
    .end local v4    # "component":Ljava/lang/String;
    .end local v5    # "trustAgentInfo":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;
    goto :goto_5a

    .line 1553
    :cond_3c
    const-string v4, "DevicePolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown tag under "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    .end local v2    # "tagDAM":Ljava/lang/String;
    :goto_5a
    goto :goto_9

    .line 1556
    :cond_5b
    return-object v1
.end method

.method private getTrustAgentInfo(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;
    .registers 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1561
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1563
    .local v0, "outerDepthDAM":I
    new-instance v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;-><init>(Landroid/os/PersistableBundle;)V

    .line 1564
    .local v1, "result":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;
    :cond_a
    :goto_a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .line 1564
    .local v3, "typeDAM":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_54

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1b

    .line 1565
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_54

    .line 1566
    :cond_1b
    if-eq v3, v2, :cond_a

    const/4 v2, 0x4

    if-ne v3, v2, :cond_21

    .line 1567
    goto :goto_a

    .line 1569
    :cond_21
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1570
    .local v2, "tagDAM":Ljava/lang/String;
    const-string/jumbo v4, "trust-agent-component-options"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 1571
    invoke-static {p1}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;->options:Landroid/os/PersistableBundle;

    goto :goto_53

    .line 1573
    :cond_35
    const-string v4, "DevicePolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown tag under "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    .end local v2    # "tagDAM":Ljava/lang/String;
    :goto_53
    goto :goto_a

    .line 1576
    :cond_54
    return-object v1
.end method

.method private readAttributeValues(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/Collection;)V
    .registers 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1520
    .local p3, "result":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p3}, Ljava/util/Collection;->clear()V

    .line 1521
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1523
    .local v0, "outerDepthDAM":I
    :cond_7
    :goto_7
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .line 1523
    .local v2, "typeDAM":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_53

    const/4 v1, 0x3

    if-ne v2, v1, :cond_18

    .line 1524
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_53

    .line 1525
    :cond_18
    if-eq v2, v1, :cond_7

    const/4 v1, 0x4

    if-ne v2, v1, :cond_1e

    .line 1526
    goto :goto_7

    .line 1528
    :cond_1e
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1529
    .local v1, "tagDAM":Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 1530
    const/4 v3, 0x0

    const-string/jumbo v4, "value"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_52

    .line 1532
    :cond_34
    const-string v3, "DevicePolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected tag "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " but found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    .end local v1    # "tagDAM":Ljava/lang/String;
    :goto_52
    goto :goto_7

    .line 1535
    :cond_53
    return-void
.end method

.method private readPackageList(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/util/List;
    .registers 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1494
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1495
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 1497
    .local v1, "outerDepth":I
    :cond_9
    :goto_9
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .line 1497
    .local v3, "outerType":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_71

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1a

    .line 1498
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_71

    .line 1499
    :cond_1a
    if-eq v3, v2, :cond_9

    const/4 v2, 0x4

    if-ne v3, v2, :cond_20

    .line 1500
    goto :goto_9

    .line 1502
    :cond_20
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1503
    .local v2, "outerTag":Ljava/lang/String;
    const-string/jumbo v4, "item"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 1504
    const/4 v4, 0x0

    const-string/jumbo v5, "value"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1505
    .local v4, "packageName":Ljava/lang/String;
    if-eqz v4, :cond_3b

    .line 1506
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_51

    .line 1508
    :cond_3b
    const-string v5, "DevicePolicyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package name missing under "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1510
    .end local v4    # "packageName":Ljava/lang/String;
    :goto_51
    goto :goto_70

    .line 1511
    :cond_52
    const-string v4, "DevicePolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown tag under "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    .end local v2    # "outerTag":Ljava/lang/String;
    :goto_70
    goto :goto_9

    .line 1514
    :cond_71
    return-object v0
.end method


# virtual methods
.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 7
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 1598
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "uid="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->getUid()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1599
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "testOnlyAdmin="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1600
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->testOnlyAdmin:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1601
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "policies:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1602
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getUsedPolicies()Ljava/util/ArrayList;

    move-result-object v0

    .line 1603
    .local v0, "pols":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/admin/DeviceAdminInfo$PolicyInfo;>;"
    if-eqz v0, :cond_4c

    .line 1604
    const/4 v1, 0x0

    .line 1604
    .local v1, "i":I
    :goto_30
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4c

    .line 1605
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    iget-object v2, v2, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1604
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 1608
    .end local v1    # "i":I
    :cond_4c
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "passwordQuality=0x"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1609
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordMetrics:Landroid/app/admin/PasswordMetrics;

    iget v1, v1, Landroid/app/admin/PasswordMetrics;->quality:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1610
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "minimumPasswordLength="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1611
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordMetrics:Landroid/app/admin/PasswordMetrics;

    iget v1, v1, Landroid/app/admin/PasswordMetrics;->length:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 1612
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "passwordHistoryLength="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1613
    iget v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 1614
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "minimumPasswordUpperCase="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1615
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordMetrics:Landroid/app/admin/PasswordMetrics;

    iget v1, v1, Landroid/app/admin/PasswordMetrics;->upperCase:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 1616
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "minimumPasswordLowerCase="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1617
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordMetrics:Landroid/app/admin/PasswordMetrics;

    iget v1, v1, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 1618
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "minimumPasswordLetters="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1619
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordMetrics:Landroid/app/admin/PasswordMetrics;

    iget v1, v1, Landroid/app/admin/PasswordMetrics;->letters:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 1620
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "minimumPasswordNumeric="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1621
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordMetrics:Landroid/app/admin/PasswordMetrics;

    iget v1, v1, Landroid/app/admin/PasswordMetrics;->numeric:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 1622
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "minimumPasswordSymbols="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1623
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordMetrics:Landroid/app/admin/PasswordMetrics;

    iget v1, v1, Landroid/app/admin/PasswordMetrics;->symbols:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 1624
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "minimumPasswordNonLetter="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1625
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordMetrics:Landroid/app/admin/PasswordMetrics;

    iget v1, v1, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 1626
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "maximumTimeToUnlock="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1627
    iget-wide v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 1628
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "strongAuthUnlockTimeout="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1629
    iget-wide v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->strongAuthUnlockTimeout:J

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 1630
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "maximumFailedPasswordsForWipe="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1631
    iget v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 1632
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "specifiesGlobalProxy="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1633
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1634
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "passwordExpirationTimeout="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1635
    iget-wide v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 1636
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "passwordExpirationDate="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1637
    iget-wide v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 1638
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    if-eqz v1, :cond_143

    .line 1639
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "globalProxySpec="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1640
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1642
    :cond_143
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    if-eqz v1, :cond_154

    .line 1643
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "globalProxyEclusionList="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1644
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1646
    :cond_154
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "encryptionRequested="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1647
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1648
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "disableCamera="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1649
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1650
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "disableCallerId="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1651
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCallerId:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1652
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "disableContactsSearch="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1653
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableContactsSearch:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1654
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "disableBluetoothContactSharing="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1655
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableBluetoothContactSharing:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1656
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "disableScreenCapture="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1657
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableScreenCapture:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1658
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "requireAutoTime="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1659
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->requireAutoTime:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1660
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "forceEphemeralUsers="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1661
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->forceEphemeralUsers:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1662
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "isNetworkLoggingEnabled="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1663
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->isNetworkLoggingEnabled:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1664
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "disabledKeyguardFeatures="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1665
    iget v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 1666
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "crossProfileWidgetProviders="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1667
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1668
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedAccessiblityServices:Ljava/util/List;

    if-eqz v1, :cond_1f7

    .line 1669
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "permittedAccessibilityServices="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1670
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedAccessiblityServices:Ljava/util/List;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1672
    :cond_1f7
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedInputMethods:Ljava/util/List;

    if-eqz v1, :cond_209

    .line 1673
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "permittedInputMethods="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1674
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedInputMethods:Ljava/util/List;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1676
    :cond_209
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedNotificationListeners:Ljava/util/List;

    if-eqz v1, :cond_21b

    .line 1677
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "permittedNotificationListeners="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1678
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedNotificationListeners:Ljava/util/List;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1680
    :cond_21b
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->keepUninstalledPackages:Ljava/util/List;

    if-eqz v1, :cond_22d

    .line 1681
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "keepUninstalledPackages="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1682
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->keepUninstalledPackages:Ljava/util/List;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1684
    :cond_22d
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "organizationColor="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1685
    iget v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->organizationColor:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 1686
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->organizationName:Ljava/lang/String;

    if-eqz v1, :cond_24d

    .line 1687
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "organizationName="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1688
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->organizationName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1690
    :cond_24d
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "userRestrictions:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1691
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->userRestrictions:Landroid/os/Bundle;

    invoke-static {p2, v1, v2}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1692
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "defaultEnabledRestrictionsAlreadySet="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1693
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->defaultEnabledRestrictionsAlreadySet:Ljava/util/Set;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1694
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "isParent="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1695
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->isParent:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1696
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    if-eqz v1, :cond_2aa

    .line 1697
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "parentAdmin:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1698
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1700
    :cond_2aa
    return-void
.end method

.method ensureUserRestrictions()Landroid/os/Bundle;
    .registers 2

    .line 1584
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->userRestrictions:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 1585
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->userRestrictions:Landroid/os/Bundle;

    .line 1587
    :cond_b
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->userRestrictions:Landroid/os/Bundle;

    return-object v0
.end method

.method getParentActiveAdmin()Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .registers 4

    .line 1022
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->isParent:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1024
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    if-nez v0, :cond_14

    .line 1025
    new-instance v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-direct {v0, v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;-><init>(Landroid/app/admin/DeviceAdminInfo;Z)V

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 1027
    :cond_14
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    return-object v0
.end method

.method getUid()I
    .registers 2

    .line 1034
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    return v0
.end method

.method public getUserHandle()Landroid/os/UserHandle;
    .registers 2

    .line 1037
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method hasParentActiveAdmin()Z
    .registers 2

    .line 1031
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method hasUserRestrictions()Z
    .registers 2

    .line 1580
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->userRestrictions:Landroid/os/Bundle;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->userRestrictions:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v0

    if-lez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method readFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1315
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1317
    .local v0, "outerDepth":I
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .line 1317
    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_4b6

    const/4 v1, 0x3

    if-ne v2, v1, :cond_15

    .line 1318
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_4b6

    .line 1319
    :cond_15
    if-eq v2, v1, :cond_4

    const/4 v1, 0x4

    if-ne v2, v1, :cond_1b

    .line 1320
    goto :goto_4

    .line 1322
    :cond_1b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1323
    .local v4, "tag":Ljava/lang/String;
    const-string/jumbo v5, "policies"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 1324
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v1, p1}, Landroid/app/admin/DeviceAdminInfo;->readPoliciesFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_4b4

    .line 1325
    :cond_2f
    const-string/jumbo v5, "password-quality"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_4a

    .line 1326
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordMetrics:Landroid/app/admin/PasswordMetrics;

    const-string/jumbo v3, "value"

    .line 1327
    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1326
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Landroid/app/admin/PasswordMetrics;->quality:I

    goto/16 :goto_4b4

    .line 1328
    :cond_4a
    const-string/jumbo v5, "min-password-length"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_64

    .line 1329
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordMetrics:Landroid/app/admin/PasswordMetrics;

    const-string/jumbo v3, "value"

    .line 1330
    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1329
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Landroid/app/admin/PasswordMetrics;->length:I

    goto/16 :goto_4b4

    .line 1331
    :cond_64
    const-string/jumbo v5, "password-history-length"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7c

    .line 1332
    const-string/jumbo v1, "value"

    .line 1333
    invoke-interface {p1, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1332
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    goto/16 :goto_4b4

    .line 1334
    :cond_7c
    const-string/jumbo v5, "min-password-uppercase"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_96

    .line 1335
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordMetrics:Landroid/app/admin/PasswordMetrics;

    const-string/jumbo v3, "value"

    .line 1336
    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1335
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Landroid/app/admin/PasswordMetrics;->upperCase:I

    goto/16 :goto_4b4

    .line 1337
    :cond_96
    const-string/jumbo v5, "min-password-lowercase"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b0

    .line 1338
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordMetrics:Landroid/app/admin/PasswordMetrics;

    const-string/jumbo v3, "value"

    .line 1339
    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1338
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    goto/16 :goto_4b4

    .line 1340
    :cond_b0
    const-string/jumbo v5, "min-password-letters"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ca

    .line 1341
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordMetrics:Landroid/app/admin/PasswordMetrics;

    const-string/jumbo v3, "value"

    .line 1342
    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1341
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Landroid/app/admin/PasswordMetrics;->letters:I

    goto/16 :goto_4b4

    .line 1343
    :cond_ca
    const-string/jumbo v5, "min-password-numeric"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e4

    .line 1344
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordMetrics:Landroid/app/admin/PasswordMetrics;

    const-string/jumbo v3, "value"

    .line 1345
    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1344
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Landroid/app/admin/PasswordMetrics;->numeric:I

    goto/16 :goto_4b4

    .line 1346
    :cond_e4
    const-string/jumbo v5, "min-password-symbols"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_fe

    .line 1347
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordMetrics:Landroid/app/admin/PasswordMetrics;

    const-string/jumbo v3, "value"

    .line 1348
    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1347
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Landroid/app/admin/PasswordMetrics;->symbols:I

    goto/16 :goto_4b4

    .line 1349
    :cond_fe
    const-string/jumbo v5, "min-password-nonletter"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_118

    .line 1350
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordMetrics:Landroid/app/admin/PasswordMetrics;

    const-string/jumbo v3, "value"

    .line 1351
    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1350
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    goto/16 :goto_4b4

    .line 1352
    :cond_118
    const-string/jumbo v5, "max-time-to-unlock"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_130

    .line 1353
    const-string/jumbo v1, "value"

    .line 1354
    invoke-interface {p1, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1353
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    goto/16 :goto_4b4

    .line 1355
    :cond_130
    const-string/jumbo v5, "strong-auth-unlock-timeout"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_148

    .line 1356
    const-string/jumbo v1, "value"

    .line 1357
    invoke-interface {p1, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1356
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->strongAuthUnlockTimeout:J

    goto/16 :goto_4b4

    .line 1358
    :cond_148
    const-string/jumbo v5, "max-failed-password-wipe"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_160

    .line 1359
    const-string/jumbo v1, "value"

    .line 1360
    invoke-interface {p1, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1359
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    goto/16 :goto_4b4

    .line 1361
    :cond_160
    const-string/jumbo v5, "specifies-global-proxy"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_178

    .line 1362
    const-string/jumbo v1, "value"

    .line 1363
    invoke-interface {p1, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1362
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    goto/16 :goto_4b4

    .line 1364
    :cond_178
    const-string v5, "global-proxy-spec"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18b

    .line 1365
    const-string/jumbo v1, "value"

    .line 1366
    invoke-interface {p1, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    goto/16 :goto_4b4

    .line 1367
    :cond_18b
    const-string v5, "global-proxy-exclusion-list"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19e

    .line 1368
    const-string/jumbo v1, "value"

    .line 1369
    invoke-interface {p1, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    goto/16 :goto_4b4

    .line 1370
    :cond_19e
    const-string/jumbo v5, "password-expiration-timeout"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b6

    .line 1371
    const-string/jumbo v1, "value"

    .line 1372
    invoke-interface {p1, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1371
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    goto/16 :goto_4b4

    .line 1373
    :cond_1b6
    const-string/jumbo v5, "password-expiration-date"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1ce

    .line 1374
    const-string/jumbo v1, "value"

    .line 1375
    invoke-interface {p1, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1374
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    goto/16 :goto_4b4

    .line 1376
    :cond_1ce
    const-string v5, "encryption-requested"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e5

    .line 1377
    const-string/jumbo v1, "value"

    .line 1378
    invoke-interface {p1, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1377
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    goto/16 :goto_4b4

    .line 1379
    :cond_1e5
    const-string/jumbo v5, "test-only-admin"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1fd

    .line 1380
    const-string/jumbo v1, "value"

    .line 1381
    invoke-interface {p1, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1380
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->testOnlyAdmin:Z

    goto/16 :goto_4b4

    .line 1382
    :cond_1fd
    const-string v5, "disable-camera"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_214

    .line 1383
    const-string/jumbo v1, "value"

    .line 1384
    invoke-interface {p1, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1383
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    goto/16 :goto_4b4

    .line 1385
    :cond_214
    const-string v5, "disable-caller-id"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22b

    .line 1386
    const-string/jumbo v1, "value"

    .line 1387
    invoke-interface {p1, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1386
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCallerId:Z

    goto/16 :goto_4b4

    .line 1388
    :cond_22b
    const-string v5, "disable-contacts-search"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_242

    .line 1389
    const-string/jumbo v1, "value"

    .line 1390
    invoke-interface {p1, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1389
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableContactsSearch:Z

    goto/16 :goto_4b4

    .line 1391
    :cond_242
    const-string v5, "disable-bt-contacts-sharing"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_259

    .line 1392
    const-string/jumbo v1, "value"

    .line 1393
    invoke-interface {p1, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1392
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableBluetoothContactSharing:Z

    goto/16 :goto_4b4

    .line 1394
    :cond_259
    const-string v5, "disable-screen-capture"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_270

    .line 1395
    const-string/jumbo v1, "value"

    .line 1396
    invoke-interface {p1, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1395
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableScreenCapture:Z

    goto/16 :goto_4b4

    .line 1397
    :cond_270
    const-string/jumbo v5, "require_auto_time"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_288

    .line 1398
    const-string/jumbo v1, "value"

    .line 1399
    invoke-interface {p1, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1398
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->requireAutoTime:Z

    goto/16 :goto_4b4

    .line 1400
    :cond_288
    const-string v5, "force_ephemeral_users"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29f

    .line 1401
    const-string/jumbo v1, "value"

    .line 1402
    invoke-interface {p1, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1401
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->forceEphemeralUsers:Z

    goto/16 :goto_4b4

    .line 1403
    :cond_29f
    const-string/jumbo v5, "is_network_logging_enabled"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d1

    .line 1404
    const-string/jumbo v1, "value"

    .line 1405
    invoke-interface {p1, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1404
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->isNetworkLoggingEnabled:Z

    .line 1406
    const-string/jumbo v1, "last-notification"

    .line 1407
    invoke-interface {p1, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1406
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->lastNetworkLoggingNotificationTimeMs:J

    .line 1408
    const-string/jumbo v1, "num-notifications"

    .line 1409
    invoke-interface {p1, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1408
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->numNetworkLoggingNotifications:I

    goto/16 :goto_4b4

    .line 1410
    :cond_2d1
    const-string v5, "disable-keyguard-features"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e8

    .line 1411
    const-string/jumbo v1, "value"

    .line 1412
    invoke-interface {p1, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1411
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    goto/16 :goto_4b4

    .line 1413
    :cond_2e8
    const-string v5, "disable-account-management"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f9

    .line 1414
    const-string v1, "account-type"

    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->accountTypesWithManagementDisabled:Ljava/util/Set;

    invoke-direct {p0, p1, v1, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->readAttributeValues(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/Collection;)V

    goto/16 :goto_4b4

    .line 1416
    :cond_2f9
    const-string/jumbo v5, "manage-trust-agent-features"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30a

    .line 1417
    invoke-direct {p0, p1, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->getAllTrustAgentInfos(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/util/ArrayMap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->trustAgentInfos:Landroid/util/ArrayMap;

    goto/16 :goto_4b4

    .line 1418
    :cond_30a
    const-string v5, "cross-profile-widget-providers"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_323

    .line 1419
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    .line 1420
    const-string/jumbo v1, "provider"

    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    invoke-direct {p0, p1, v1, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->readAttributeValues(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/Collection;)V

    goto/16 :goto_4b4

    .line 1421
    :cond_323
    const-string/jumbo v5, "permitted-accessiblity-services"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_334

    .line 1422
    invoke-direct {p0, p1, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->readPackageList(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedAccessiblityServices:Ljava/util/List;

    goto/16 :goto_4b4

    .line 1423
    :cond_334
    const-string/jumbo v5, "permitted-imes"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_345

    .line 1424
    invoke-direct {p0, p1, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->readPackageList(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedInputMethods:Ljava/util/List;

    goto/16 :goto_4b4

    .line 1425
    :cond_345
    const-string/jumbo v5, "permitted-notification-listeners"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_356

    .line 1426
    invoke-direct {p0, p1, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->readPackageList(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedNotificationListeners:Ljava/util/List;

    goto/16 :goto_4b4

    .line 1427
    :cond_356
    const-string/jumbo v5, "keep-uninstalled-packages"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_367

    .line 1428
    invoke-direct {p0, p1, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->readPackageList(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->keepUninstalledPackages:Ljava/util/List;

    goto/16 :goto_4b4

    .line 1429
    :cond_367
    const-string/jumbo v5, "metered_data_disabled_packages"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_378

    .line 1430
    invoke-direct {p0, p1, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->readPackageList(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->meteredDisabledPackages:Ljava/util/List;

    goto/16 :goto_4b4

    .line 1431
    :cond_378
    const-string/jumbo v5, "user-restrictions"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_389

    .line 1432
    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->userRestrictions:Landroid/os/Bundle;

    goto/16 :goto_4b4

    .line 1433
    :cond_389
    const-string v5, "default-enabled-user-restrictions"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39b

    .line 1434
    const-string/jumbo v1, "restriction"

    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->defaultEnabledRestrictionsAlreadySet:Ljava/util/Set;

    invoke-direct {p0, p1, v1, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->readAttributeValues(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/Collection;)V

    goto/16 :goto_4b4

    .line 1436
    :cond_39b
    const-string/jumbo v5, "short-support-message"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3bb

    .line 1437
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 1438
    if-ne v2, v1, :cond_3b2

    .line 1439
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->shortSupportMessage:Ljava/lang/CharSequence;

    goto/16 :goto_4b4

    .line 1441
    :cond_3b2
    const-string v1, "DevicePolicyManager"

    const-string v3, "Missing text when loading short support message"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4b4

    .line 1443
    :cond_3bb
    const-string/jumbo v5, "long-support-message"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3db

    .line 1444
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 1445
    if-ne v2, v1, :cond_3d2

    .line 1446
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->longSupportMessage:Ljava/lang/CharSequence;

    goto/16 :goto_4b4

    .line 1448
    :cond_3d2
    const-string v1, "DevicePolicyManager"

    const-string v3, "Missing text when loading long support message"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4b4

    .line 1450
    :cond_3db
    const-string/jumbo v5, "parent-admin"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3fa

    .line 1451
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->isParent:Z

    xor-int/2addr v1, v3

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1453
    new-instance v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-direct {v1, v5, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;-><init>(Landroid/app/admin/DeviceAdminInfo;Z)V

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 1454
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    invoke-virtual {v1, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_4b4

    .line 1455
    :cond_3fa
    const-string/jumbo v3, "organization-color"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_412

    .line 1456
    const-string/jumbo v1, "value"

    .line 1457
    invoke-interface {p1, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1456
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->organizationColor:I

    goto/16 :goto_4b4

    .line 1458
    :cond_412
    const-string/jumbo v3, "organization-name"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_432

    .line 1459
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 1460
    if-ne v2, v1, :cond_429

    .line 1461
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->organizationName:Ljava/lang/String;

    goto/16 :goto_4b4

    .line 1463
    :cond_429
    const-string v1, "DevicePolicyManager"

    const-string v3, "Missing text when loading organization name"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4b4

    .line 1465
    :cond_432
    const-string/jumbo v3, "is_logout_enabled"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_449

    .line 1466
    const-string/jumbo v1, "value"

    .line 1467
    invoke-interface {p1, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1466
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->isLogoutEnabled:Z

    goto :goto_4b4

    .line 1468
    :cond_449
    const-string/jumbo v3, "mandatory_backup_transport"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_460

    .line 1469
    const-string/jumbo v1, "value"

    .line 1470
    invoke-interface {p1, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1469
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->mandatoryBackupTransport:Landroid/content/ComponentName;

    goto :goto_4b4

    .line 1471
    :cond_460
    const-string/jumbo v3, "start_user_session_message"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47e

    .line 1472
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 1473
    if-ne v2, v1, :cond_476

    .line 1474
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->startUserSessionMessage:Ljava/lang/String;

    goto :goto_4b4

    .line 1476
    :cond_476
    const-string v1, "DevicePolicyManager"

    const-string v3, "Missing text when loading start session message"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b4

    .line 1478
    :cond_47e
    const-string v3, "end_user_session_message"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49b

    .line 1479
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 1480
    if-ne v2, v1, :cond_493

    .line 1481
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->endUserSessionMessage:Ljava/lang/String;

    goto :goto_4b4

    .line 1483
    :cond_493
    const-string v1, "DevicePolicyManager"

    const-string v3, "Missing text when loading end session message"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b4

    .line 1486
    :cond_49b
    const-string v1, "DevicePolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown admin tag: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1489
    .end local v4    # "tag":Ljava/lang/String;
    :goto_4b4
    goto/16 :goto_4

    .line 1490
    :cond_4b6
    return-void
.end method

.method public transfer(Landroid/app/admin/DeviceAdminInfo;)V
    .registers 3
    .param p1, "deviceAdminInfo"    # Landroid/app/admin/DeviceAdminInfo;

    .line 1591
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->hasParentActiveAdmin()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1592
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    iput-object p1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    .line 1594
    :cond_a
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    .line 1595
    return-void
.end method

.method writeAttributeValuesToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/Collection;)V
    .registers 8
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1306
    .local p3, "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1307
    .local v1, "value":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-interface {p1, v2, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1308
    const-string/jumbo v3, "value"

    invoke-interface {p1, v2, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1309
    invoke-interface {p1, v2, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1310
    .end local v1    # "value":Ljava/lang/String;
    goto :goto_4

    .line 1311
    :cond_1e
    return-void
.end method

.method writePackageListToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "outerTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1295
    .local p3, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p3, :cond_3

    .line 1296
    return-void

    .line 1299
    :cond_3
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1300
    const-string/jumbo v1, "item"

    invoke-virtual {p0, p1, v1, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writeAttributeValuesToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/Collection;)V

    .line 1301
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1302
    return-void
.end method

.method writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 10
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1042
    const-string/jumbo v0, "policies"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1043
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0, p1}, Landroid/app/admin/DeviceAdminInfo;->writePoliciesToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1044
    const-string/jumbo v0, "policies"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1045
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordMetrics:Landroid/app/admin/PasswordMetrics;

    iget v0, v0, Landroid/app/admin/PasswordMetrics;->quality:I

    if-eqz v0, :cond_12f

    .line 1046
    const-string/jumbo v0, "password-quality"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1047
    const-string/jumbo v0, "value"

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordMetrics:Landroid/app/admin/PasswordMetrics;

    iget v2, v2, Landroid/app/admin/PasswordMetrics;->quality:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1048
    const-string/jumbo v0, "password-quality"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1049
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordMetrics:Landroid/app/admin/PasswordMetrics;

    iget v0, v0, Landroid/app/admin/PasswordMetrics;->length:I

    if-eqz v0, :cond_52

    .line 1050
    const-string/jumbo v0, "min-password-length"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1051
    const-string/jumbo v0, "value"

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordMetrics:Landroid/app/admin/PasswordMetrics;

    iget v2, v2, Landroid/app/admin/PasswordMetrics;->length:I

    .line 1052
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 1051
    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1053
    const-string/jumbo v0, "min-password-length"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1055
    :cond_52
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    if-eqz v0, :cond_6e

    .line 1056
    const-string/jumbo v0, "password-history-length"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1057
    const-string/jumbo v0, "value"

    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1058
    const-string/jumbo v0, "password-history-length"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1060
    :cond_6e
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordMetrics:Landroid/app/admin/PasswordMetrics;

    iget v0, v0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    if-eqz v0, :cond_8e

    .line 1061
    const-string/jumbo v0, "min-password-uppercase"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1062
    const-string/jumbo v0, "value"

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordMetrics:Landroid/app/admin/PasswordMetrics;

    iget v2, v2, Landroid/app/admin/PasswordMetrics;->upperCase:I

    .line 1063
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 1062
    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1064
    const-string/jumbo v0, "min-password-uppercase"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1066
    :cond_8e
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordMetrics:Landroid/app/admin/PasswordMetrics;

    iget v0, v0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    if-eqz v0, :cond_ae

    .line 1067
    const-string/jumbo v0, "min-password-lowercase"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1068
    const-string/jumbo v0, "value"

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordMetrics:Landroid/app/admin/PasswordMetrics;

    iget v2, v2, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    .line 1069
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 1068
    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1070
    const-string/jumbo v0, "min-password-lowercase"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1072
    :cond_ae
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordMetrics:Landroid/app/admin/PasswordMetrics;

    iget v0, v0, Landroid/app/admin/PasswordMetrics;->letters:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_cf

    .line 1073
    const-string/jumbo v0, "min-password-letters"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1074
    const-string/jumbo v0, "value"

    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordMetrics:Landroid/app/admin/PasswordMetrics;

    iget v3, v3, Landroid/app/admin/PasswordMetrics;->letters:I

    .line 1075
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 1074
    invoke-interface {p1, v1, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1076
    const-string/jumbo v0, "min-password-letters"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1078
    :cond_cf
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordMetrics:Landroid/app/admin/PasswordMetrics;

    iget v0, v0, Landroid/app/admin/PasswordMetrics;->numeric:I

    if-eq v0, v2, :cond_ef

    .line 1079
    const-string/jumbo v0, "min-password-numeric"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1080
    const-string/jumbo v0, "value"

    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordMetrics:Landroid/app/admin/PasswordMetrics;

    iget v3, v3, Landroid/app/admin/PasswordMetrics;->numeric:I

    .line 1081
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 1080
    invoke-interface {p1, v1, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1082
    const-string/jumbo v0, "min-password-numeric"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1084
    :cond_ef
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordMetrics:Landroid/app/admin/PasswordMetrics;

    iget v0, v0, Landroid/app/admin/PasswordMetrics;->symbols:I

    if-eq v0, v2, :cond_10f

    .line 1085
    const-string/jumbo v0, "min-password-symbols"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1086
    const-string/jumbo v0, "value"

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordMetrics:Landroid/app/admin/PasswordMetrics;

    iget v2, v2, Landroid/app/admin/PasswordMetrics;->symbols:I

    .line 1087
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 1086
    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1088
    const-string/jumbo v0, "min-password-symbols"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1090
    :cond_10f
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordMetrics:Landroid/app/admin/PasswordMetrics;

    iget v0, v0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    if-lez v0, :cond_12f

    .line 1091
    const-string/jumbo v0, "min-password-nonletter"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1092
    const-string/jumbo v0, "value"

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordMetrics:Landroid/app/admin/PasswordMetrics;

    iget v2, v2, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    .line 1093
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 1092
    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1094
    const-string/jumbo v0, "min-password-nonletter"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1097
    :cond_12f
    iget-wide v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_14f

    .line 1098
    const-string/jumbo v0, "max-time-to-unlock"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1099
    const-string/jumbo v0, "value"

    iget-wide v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1100
    const-string/jumbo v0, "max-time-to-unlock"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1102
    :cond_14f
    iget-wide v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->strongAuthUnlockTimeout:J

    const-wide/32 v6, 0xf731400

    cmp-long v0, v2, v6

    if-eqz v0, :cond_170

    .line 1103
    const-string/jumbo v0, "strong-auth-unlock-timeout"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1104
    const-string/jumbo v0, "value"

    iget-wide v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->strongAuthUnlockTimeout:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1105
    const-string/jumbo v0, "strong-auth-unlock-timeout"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1107
    :cond_170
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    if-eqz v0, :cond_18c

    .line 1108
    const-string/jumbo v0, "max-failed-password-wipe"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1109
    const-string/jumbo v0, "value"

    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1110
    const-string/jumbo v0, "max-failed-password-wipe"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1112
    :cond_18c
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    if-eqz v0, :cond_1d4

    .line 1113
    const-string/jumbo v0, "specifies-global-proxy"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1114
    const-string/jumbo v0, "value"

    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1115
    const-string/jumbo v0, "specifies-global-proxy"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1116
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    if-eqz v0, :cond_1be

    .line 1117
    const-string v0, "global-proxy-spec"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1118
    const-string/jumbo v0, "value"

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1119
    const-string v0, "global-proxy-spec"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1121
    :cond_1be
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    if-eqz v0, :cond_1d4

    .line 1122
    const-string v0, "global-proxy-exclusion-list"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1123
    const-string/jumbo v0, "value"

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1124
    const-string v0, "global-proxy-exclusion-list"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1127
    :cond_1d4
    iget-wide v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1f2

    .line 1128
    const-string/jumbo v0, "password-expiration-timeout"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1129
    const-string/jumbo v0, "value"

    iget-wide v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1130
    const-string/jumbo v0, "password-expiration-timeout"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1132
    :cond_1f2
    iget-wide v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_210

    .line 1133
    const-string/jumbo v0, "password-expiration-date"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1134
    const-string/jumbo v0, "value"

    iget-wide v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1135
    const-string/jumbo v0, "password-expiration-date"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1137
    :cond_210
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    if-eqz v0, :cond_22a

    .line 1138
    const-string v0, "encryption-requested"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1139
    const-string/jumbo v0, "value"

    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1140
    const-string v0, "encryption-requested"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1142
    :cond_22a
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->testOnlyAdmin:Z

    if-eqz v0, :cond_246

    .line 1143
    const-string/jumbo v0, "test-only-admin"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1144
    const-string/jumbo v0, "value"

    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->testOnlyAdmin:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1145
    const-string/jumbo v0, "test-only-admin"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1147
    :cond_246
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    if-eqz v0, :cond_260

    .line 1148
    const-string v0, "disable-camera"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1149
    const-string/jumbo v0, "value"

    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1150
    const-string v0, "disable-camera"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1152
    :cond_260
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCallerId:Z

    if-eqz v0, :cond_27a

    .line 1153
    const-string v0, "disable-caller-id"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1154
    const-string/jumbo v0, "value"

    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCallerId:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1155
    const-string v0, "disable-caller-id"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1157
    :cond_27a
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableContactsSearch:Z

    if-eqz v0, :cond_294

    .line 1158
    const-string v0, "disable-contacts-search"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1159
    const-string/jumbo v0, "value"

    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableContactsSearch:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1160
    const-string v0, "disable-contacts-search"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1162
    :cond_294
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableBluetoothContactSharing:Z

    if-nez v0, :cond_2ae

    .line 1163
    const-string v0, "disable-bt-contacts-sharing"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1164
    const-string/jumbo v0, "value"

    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableBluetoothContactSharing:Z

    .line 1165
    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    .line 1164
    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1166
    const-string v0, "disable-bt-contacts-sharing"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1168
    :cond_2ae
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableScreenCapture:Z

    if-eqz v0, :cond_2c8

    .line 1169
    const-string v0, "disable-screen-capture"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1170
    const-string/jumbo v0, "value"

    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableScreenCapture:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1171
    const-string v0, "disable-screen-capture"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1173
    :cond_2c8
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->requireAutoTime:Z

    if-eqz v0, :cond_2e4

    .line 1174
    const-string/jumbo v0, "require_auto_time"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1175
    const-string/jumbo v0, "value"

    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->requireAutoTime:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1176
    const-string/jumbo v0, "require_auto_time"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1178
    :cond_2e4
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->forceEphemeralUsers:Z

    if-eqz v0, :cond_2fe

    .line 1179
    const-string v0, "force_ephemeral_users"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1180
    const-string/jumbo v0, "value"

    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->forceEphemeralUsers:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1181
    const-string v0, "force_ephemeral_users"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1183
    :cond_2fe
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->isNetworkLoggingEnabled:Z

    if-eqz v0, :cond_332

    .line 1184
    const-string/jumbo v0, "is_network_logging_enabled"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1185
    const-string/jumbo v0, "value"

    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->isNetworkLoggingEnabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1186
    const-string/jumbo v0, "num-notifications"

    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->numNetworkLoggingNotifications:I

    .line 1187
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 1186
    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1188
    const-string/jumbo v0, "last-notification"

    iget-wide v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->lastNetworkLoggingNotificationTimeMs:J

    .line 1189
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 1188
    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1190
    const-string/jumbo v0, "is_network_logging_enabled"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1192
    :cond_332
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    if-eqz v0, :cond_34c

    .line 1193
    const-string v0, "disable-keyguard-features"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1194
    const-string/jumbo v0, "value"

    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1195
    const-string v0, "disable-keyguard-features"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1197
    :cond_34c
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->accountTypesWithManagementDisabled:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_365

    .line 1198
    const-string v0, "disable-account-management"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1199
    const-string v0, "account-type"

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->accountTypesWithManagementDisabled:Ljava/util/Set;

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writeAttributeValuesToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/Collection;)V

    .line 1201
    const-string v0, "disable-account-management"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1203
    :cond_365
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->trustAgentInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3ca

    .line 1204
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->trustAgentInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 1205
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;>;>;"
    const-string/jumbo v2, "manage-trust-agent-features"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1206
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_37d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1207
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;

    .line 1208
    .local v4, "trustAgentInfo":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;
    const-string v5, "component"

    invoke-interface {p1, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1209
    const-string/jumbo v5, "value"

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {p1, v1, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1210
    iget-object v5, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;->options:Landroid/os/PersistableBundle;

    if-eqz v5, :cond_3be

    .line 1211
    const-string/jumbo v5, "trust-agent-component-options"

    invoke-interface {p1, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1213
    :try_start_3aa
    iget-object v5, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;->options:Landroid/os/PersistableBundle;

    invoke-virtual {v5, p1}, Landroid/os/PersistableBundle;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    :try_end_3af
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3aa .. :try_end_3af} :catch_3b0

    .line 1216
    goto :goto_3b8

    .line 1214
    :catch_3b0
    move-exception v5

    .line 1215
    .local v5, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v6, "DevicePolicyManager"

    const-string v7, "Failed to save TrustAgent options"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1217
    .end local v5    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_3b8
    const-string/jumbo v5, "trust-agent-component-options"

    invoke-interface {p1, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1219
    :cond_3be
    const-string v5, "component"

    invoke-interface {p1, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1220
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;>;"
    .end local v4    # "trustAgentInfo":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;
    goto :goto_37d

    .line 1221
    :cond_3c4
    const-string/jumbo v2, "manage-trust-agent-features"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1223
    .end local v0    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;>;>;"
    :cond_3ca
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    if-eqz v0, :cond_3e8

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3e8

    .line 1224
    const-string v0, "cross-profile-widget-providers"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1225
    const-string/jumbo v0, "provider"

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writeAttributeValuesToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/Collection;)V

    .line 1226
    const-string v0, "cross-profile-widget-providers"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1228
    :cond_3e8
    const-string/jumbo v0, "permitted-accessiblity-services"

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedAccessiblityServices:Ljava/util/List;

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writePackageListToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/List;)V

    .line 1230
    const-string/jumbo v0, "permitted-imes"

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedInputMethods:Ljava/util/List;

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writePackageListToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/List;)V

    .line 1231
    const-string/jumbo v0, "permitted-notification-listeners"

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedNotificationListeners:Ljava/util/List;

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writePackageListToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/List;)V

    .line 1233
    const-string/jumbo v0, "keep-uninstalled-packages"

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->keepUninstalledPackages:Ljava/util/List;

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writePackageListToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/List;)V

    .line 1234
    const-string/jumbo v0, "metered_data_disabled_packages"

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->meteredDisabledPackages:Ljava/util/List;

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writePackageListToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/List;)V

    .line 1235
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->hasUserRestrictions()Z

    move-result v0

    if-eqz v0, :cond_41e

    .line 1236
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->userRestrictions:Landroid/os/Bundle;

    const-string/jumbo v2, "user-restrictions"

    invoke-static {p1, v0, v2}, Lcom/android/server/pm/UserRestrictionsUtils;->writeRestrictions(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1239
    :cond_41e
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->defaultEnabledRestrictionsAlreadySet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_438

    .line 1240
    const-string v0, "default-enabled-user-restrictions"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1241
    const-string/jumbo v0, "restriction"

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->defaultEnabledRestrictionsAlreadySet:Ljava/util/Set;

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writeAttributeValuesToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/Collection;)V

    .line 1243
    const-string v0, "default-enabled-user-restrictions"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1245
    :cond_438
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->shortSupportMessage:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_455

    .line 1246
    const-string/jumbo v0, "short-support-message"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1247
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->shortSupportMessage:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1248
    const-string/jumbo v0, "short-support-message"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1250
    :cond_455
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->longSupportMessage:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_472

    .line 1251
    const-string/jumbo v0, "long-support-message"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1252
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->longSupportMessage:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1253
    const-string/jumbo v0, "long-support-message"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1255
    :cond_472
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    if-eqz v0, :cond_487

    .line 1256
    const-string/jumbo v0, "parent-admin"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1257
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->parentAdmin:Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    invoke-virtual {v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1258
    const-string/jumbo v0, "parent-admin"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1260
    :cond_487
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->organizationColor:I

    sget v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->DEF_ORGANIZATION_COLOR:I

    if-eq v0, v2, :cond_4a5

    .line 1261
    const-string/jumbo v0, "organization-color"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1262
    const-string/jumbo v0, "value"

    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->organizationColor:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1263
    const-string/jumbo v0, "organization-color"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1265
    :cond_4a5
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->organizationName:Ljava/lang/String;

    if-eqz v0, :cond_4ba

    .line 1266
    const-string/jumbo v0, "organization-name"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1267
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->organizationName:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1268
    const-string/jumbo v0, "organization-name"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1270
    :cond_4ba
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->isLogoutEnabled:Z

    if-eqz v0, :cond_4d6

    .line 1271
    const-string/jumbo v0, "is_logout_enabled"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1272
    const-string/jumbo v0, "value"

    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->isLogoutEnabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1273
    const-string/jumbo v0, "is_logout_enabled"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1275
    :cond_4d6
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->mandatoryBackupTransport:Landroid/content/ComponentName;

    if-eqz v0, :cond_4f2

    .line 1276
    const-string/jumbo v0, "mandatory_backup_transport"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1277
    const-string/jumbo v0, "value"

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->mandatoryBackupTransport:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1278
    const-string/jumbo v0, "mandatory_backup_transport"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1280
    :cond_4f2
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->startUserSessionMessage:Ljava/lang/String;

    if-eqz v0, :cond_507

    .line 1281
    const-string/jumbo v0, "start_user_session_message"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1282
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->startUserSessionMessage:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1283
    const-string/jumbo v0, "start_user_session_message"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1285
    :cond_507
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->endUserSessionMessage:Ljava/lang/String;

    if-eqz v0, :cond_51a

    .line 1286
    const-string v0, "end_user_session_message"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1287
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->endUserSessionMessage:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1288
    const-string v0, "end_user_session_message"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1290
    :cond_51a
    return-void
.end method
