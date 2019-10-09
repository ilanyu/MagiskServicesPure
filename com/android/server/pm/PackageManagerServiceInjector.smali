.class public Lcom/android/server/pm/PackageManagerServiceInjector;
.super Ljava/lang/Object;
.source "PackageManagerServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageManagerServiceInjector$InstallAppParam;,
        Lcom/android/server/pm/PackageManagerServiceInjector$PackageDeleteConfirmObserver;
    }
.end annotation


# static fields
.field private static final APP_LIST_FILE:Ljava/lang/String; = "/system/etc/install_app_filter.xml"

.field private static final BLOCK_APPS:[[Ljava/lang/String;

.field public static final CLEAN_OAT_TAG:Ljava/lang/String; = "clean-oat"

.field static DEBUG_CHANGE:Z = false

.field static final DELETE_FAILED_FORBIDED_BY_MIUI:I = -0x3e8

.field public static final DEXOPT_BG_CPUSET:I = 0x4000

.field public static final DEXOPT_BG_TAG:Ljava/lang/String; = "bg-filter:"

.field private static final GLOBAL_SYNC_KEY_ENABLE:Ljava/lang/String; = "1"

.field private static final GOOGLE_MARKET_PACKAGE:Ljava/lang/String; = "com.android.vending"

.field static final INSTALL_IGNORE_PACKAGE:I = -0x3e8

.field private static final MIUI_BROWSER_PACKAGE:Ljava/lang/String; = "com.android.browser"

.field private static final MIUI_INSTALLER_PACKAGE:Ljava/lang/String; = "com.miui.packageinstaller"

.field private static final MIUI_MARKET_PACKAGE:Ljava/lang/String; = "com.xiaomi.market"

.field private static final MSG_INSTALL_APP_GOON:I = 0x0

.field private static final PACKAGE_INSTALLER_NAME:Ljava/lang/String; = "com.google.android.packageinstaller"

.field private static final PACKAGE_MIME_TYPE:Ljava/lang/String; = "application/vnd.android.package-archive"

.field private static final SUPPORT_OLDMAN_MODE:Ljava/lang/String; = "support_oldman_mode"

.field private static TAG:Ljava/lang/String; = null

.field private static final TAG_ADD_APPS:Ljava/lang/String; = "add_apps"

.field private static final TAG_APP:Ljava/lang/String; = "app"

.field private static final TAG_IGNORE_APPS:Ljava/lang/String; = "ignore_apps"

.field private static final WIFI_ONLY_BLOCK_APPS:[Ljava/lang/String;

.field private static final WINXIN_TINKER_PLUGIN_NAME:Ljava/lang/String; = "tinker_classN"

.field private static appsMovedToDataPartition:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static mHandler:Landroid/os/Handler;

.field private static mMiuiInstallerPackage:Landroid/content/pm/PackageParser$Package;

.field private static mMiuiInstallerPackageSetting:Lcom/android/server/pm/PackageSetting;

.field private static sAllowPackage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field static sCrossXSpaceIntent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sDefaultHome:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static sEPAllowedPackage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sEnableBgDexopt:Z

.field private static volatile sFirstUseHandler:Landroid/os/Handler;

.field private static sFirstUseLock:Ljava/lang/Object;

.field private static sFirstUseThread:Landroid/os/HandlerThread;

.field private static sForbiddenToInstalledPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sGlobalRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private static sGlobalSyncKey:Ljava/lang/String;

.field private static sGlobalWhiteListPackages:Ljava/lang/String;

.field private static sGlobalWhitePackageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sIgnoreApks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sIgnorePackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sIsPlatformSignature:Ljava/lang/Boolean;

.field private static sNonProfileCompiledPkgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sNotDisable:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sSecondaryDexOptBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sSecondaryDexOptPkgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static sShellCheckPermissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSilentlyUninstallPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sTop10ThirdPartyPks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static sXSpaceAddUserAuthorityBlackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static sXSpaceDataSchemeWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sXSpaceFriendlyActionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 131
    const-class v0, Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    .line 137
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/pm/PackageManagerServiceInjector;->DEBUG_CHANGE:Z

    .line 157
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnoreApks:Ljava/util/Set;

    .line 158
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnorePackages:Ljava/util/Set;

    .line 159
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sDefaultHome:Landroid/util/SparseArray;

    .line 161
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sIsPlatformSignature:Ljava/lang/Boolean;

    .line 182
    const-string/jumbo v1, "support_fm"

    invoke-static {v1, v0}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 183
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnoreApks:Ljava/util/Set;

    const-string v2, "/system/app/FM.apk"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 184
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnoreApks:Ljava/util/Set;

    const-string v2, "/system/app/FM"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 186
    :cond_3d
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceInjector;->readIgnoreApks()V

    .line 189
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnorePackages:Ljava/util/Set;

    const-string v2, "com.sogou.inputmethod.mi"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 194
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v1, :cond_5d

    sget-boolean v1, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-nez v1, :cond_64

    sget-boolean v1, Lmiui/os/Build;->IS_CT_CUSTOMIZATION:Z

    if-eqz v1, :cond_5d

    .line 197
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/TelephonyManager;->isCmccCooperationDevice()Z

    move-result v1

    if-nez v1, :cond_64

    .line 198
    :cond_5d
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnorePackages:Ljava/util/Set;

    const-string v2, "com.miui.dmregservice"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 492
    :cond_64
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sGlobalWhitePackageList:Ljava/util/ArrayList;

    .line 494
    const-string v1, "1"

    sput-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sGlobalSyncKey:Ljava/lang/String;

    .line 496
    new-instance v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    sput-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sGlobalRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 499
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sGlobalWhitePackageList:Ljava/util/ArrayList;

    const-string v2, "com.android.thememanager"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sGlobalWhitePackageList:Ljava/util/ArrayList;

    const-string v2, "com.miui.securitycenter"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sGlobalWhitePackageList:Ljava/util/ArrayList;

    const-string v2, "com.miui.cleanmaster"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sGlobalWhitePackageList:Ljava/util/ArrayList;

    const-string v2, "com.mi.android.globalFileexplorer"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sGlobalWhitePackageList:Ljava/util/ArrayList;

    const-string v2, "com.android.providers.downloads.ui"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 504
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sGlobalWhitePackageList:Ljava/util/ArrayList;

    const-string v2, "com.miui.home"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sGlobalWhitePackageList:Ljava/util/ArrayList;

    const-string v2, "com.miui.player"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sGlobalWhitePackageList:Ljava/util/ArrayList;

    const-string v2, "com.xiaomi.midrop"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sGlobalWhitePackageList:Ljava/util/ArrayList;

    const-string v2, "com.mi.android.globalpersonalassistant"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sGlobalWhitePackageList:Ljava/util/ArrayList;

    const-string v2, "com.android.calendar"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sGlobalWhitePackageList:Ljava/util/ArrayList;

    const-string v2, "com.android.browser"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sGlobalWhitePackageList:Ljava/util/ArrayList;

    const-string v2, "com.android.mms"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sGlobalWhitePackageList:Ljava/util/ArrayList;

    const-string v2, "com.miui.android.fashiongallery"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sGlobalWhitePackageList:Ljava/util/ArrayList;

    const-string v2, "com.miui.weather2"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sGlobalWhitePackageList:Ljava/util/ArrayList;

    const-string v2, "com.miui.msa.global"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 866
    new-instance v1, Landroid/os/Handler;

    new-instance v2, Lcom/android/server/pm/PackageManagerServiceInjector$2;

    invoke-direct {v2}, Lcom/android/server/pm/PackageManagerServiceInjector$2;-><init>()V

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    sput-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->mHandler:Landroid/os/Handler;

    .line 964
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sXSpaceFriendlyActionList:Ljava/util/ArrayList;

    .line 967
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sXSpaceFriendlyActionList:Ljava/util/ArrayList;

    const-string v2, "com.sina.weibo.action.sdkidentity"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 968
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sXSpaceFriendlyActionList:Ljava/util/ArrayList;

    const-string v2, "com.sina.weibo.remotessoservice"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 987
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sCrossXSpaceIntent:Ljava/util/ArrayList;

    .line 989
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sCrossXSpaceIntent:Ljava/util/ArrayList;

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 990
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sCrossXSpaceIntent:Ljava/util/ArrayList;

    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 991
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sCrossXSpaceIntent:Ljava/util/ArrayList;

    const-string v2, "android.intent.action.DIAL"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 992
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sCrossXSpaceIntent:Ljava/util/ArrayList;

    const-string v2, "android.intent.action.PICK"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 993
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sCrossXSpaceIntent:Ljava/util/ArrayList;

    const-string v2, "android.intent.action.INSERT"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 994
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sCrossXSpaceIntent:Ljava/util/ArrayList;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 995
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sCrossXSpaceIntent:Ljava/util/ArrayList;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 996
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sCrossXSpaceIntent:Ljava/util/ArrayList;

    const-string v2, "android.settings.MANAGE_APPLICATIONS_SETTINGS"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 997
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sCrossXSpaceIntent:Ljava/util/ArrayList;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 998
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sCrossXSpaceIntent:Ljava/util/ArrayList;

    const-string v2, "android.provider.Telephony.ACTION_CHANGE_DEFAULT"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1001
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sXSpaceDataSchemeWhiteList:Ljava/util/ArrayList;

    .line 1003
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sXSpaceDataSchemeWhiteList:Ljava/util/ArrayList;

    const-string v2, "content"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1004
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sXSpaceDataSchemeWhiteList:Ljava/util/ArrayList;

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1005
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sXSpaceDataSchemeWhiteList:Ljava/util/ArrayList;

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1006
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sXSpaceDataSchemeWhiteList:Ljava/util/ArrayList;

    const-string v2, "file"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1007
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sXSpaceDataSchemeWhiteList:Ljava/util/ArrayList;

    const-string v2, "ftp"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1008
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sXSpaceDataSchemeWhiteList:Ljava/util/ArrayList;

    const-string v2, "ed2k"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1009
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sXSpaceDataSchemeWhiteList:Ljava/util/ArrayList;

    const-string v2, "geo"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1012
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sXSpaceAddUserAuthorityBlackList:Ljava/util/ArrayList;

    .line 1014
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sXSpaceAddUserAuthorityBlackList:Ljava/util/ArrayList;

    const-string v2, "com.android.contacts"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1064
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sNotDisable:Ljava/util/ArrayList;

    .line 1066
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sNotDisable:Ljava/util/ArrayList;

    const-string v2, "com.lbe.security.miui"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1067
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sNotDisable:Ljava/util/ArrayList;

    const-string v2, "com.miui.securitycenter"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1068
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sNotDisable:Ljava/util/ArrayList;

    const-string v2, "com.android.updater"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1069
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sNotDisable:Ljava/util/ArrayList;

    const-string v2, "com.xiaomi.market"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1070
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sNotDisable:Ljava/util/ArrayList;

    const-string v2, "com.xiaomi.finddevice"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1071
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sNotDisable:Ljava/util/ArrayList;

    const-string v2, "com.miui.home"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1087
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    .line 1089
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    const-string v2, "android.permission.SEND_SMS"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1090
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    const-string v2, "android.permission.CALL_PHONE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1091
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    const-string v2, "android.permission.READ_CONTACTS"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1092
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    const-string v2, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1093
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    const-string v2, "android.permission.CLEAR_APP_USER_DATA"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1094
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    const-string v2, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1095
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    const-string v2, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1096
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    const-string v2, "android.permission.MANAGE_DEVICE_ADMINS"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1097
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    const-string v2, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1098
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    const-string v2, "android.permission.INJECT_EVENTS"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1099
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    const-string v2, "android.permission.INSTALL_GRANT_RUNTIME_PERMISSIONS"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1100
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    const-string v2, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1101
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    const-string v2, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1102
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    const-string v2, "android.permission.SET_PREFERRED_APPLICATIONS"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1104
    const-string/jumbo v1, "ro.debuggable"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_250

    const-string/jumbo v1, "ro.secureboot.devicelock"

    .line 1105
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_254

    const-string/jumbo v1, "unlocked"

    const-string/jumbo v3, "ro.secureboot.lockstate"

    .line 1106
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_254

    :cond_250
    sget-boolean v1, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v1, :cond_259

    .line 1108
    :cond_254
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1142
    :cond_259
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    .line 1144
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string v3, "com.xiaomi.market"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1145
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string v3, "com.android.vending"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1146
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string v3, "com.google.android.gms"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1147
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string v3, "com.android.backup"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1148
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string v3, "com.xiaomi.gamecenter"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1149
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string v3, "com.android.packageinstaller"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1150
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string v3, "com.google.android.packageinstaller"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1151
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string v3, "com.android.managedprovisioning"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1152
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string v3, "com.miui.securitycenter"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1153
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string v3, "com.miui.cloudbackup"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1154
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string v3, "com.miui.analytics"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1155
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string v3, "com.android.provision"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1156
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string v3, "com.miui.powerkeeper"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1157
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string v3, "com.miui.systemAdSolution"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1158
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string v3, "com.miui.msa.global"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1159
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string v3, "com.miui.packageinstaller"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1160
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string v3, "com.xiaomi.discover"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1161
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string v3, "com.xiaomi.mipicks"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1162
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string v3, "com.xiaomi.mihomemanager"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1163
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string v3, "com.xiaomi.glgm"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1164
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string v3, "com.android.settings"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1165
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string v3, "com.facebook.system"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1166
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string v3, "com.mediatek.backuprestore"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1167
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string v3, "com.miui.securitycore"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1168
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string v3, "com.orange.update"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1169
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string v3, "com.ironsource.appcloud.oobe.hutchison"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1170
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string v3, "com.miui.home"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1171
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string v3, "com.altice.android.myapps"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1172
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string v3, "com.sfr.android.sfrjeux"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1281
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sForbiddenToInstalledPackages:Ljava/util/Set;

    .line 1284
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sForbiddenToInstalledPackages:Ljava/util/Set;

    const-string v3, "com.android.camera"

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1391
    const-string v4, "com.android.mms"

    const-string v5, "com.miui.smsextra"

    const-string v6, "com.miui.yellowpage"

    const-string v7, "com.android.incallui"

    const-string v8, "com.miui.virtualsim"

    const-string v9, "com.xiaomi.mimobile.noti"

    const-string v10, "com.miui.vsimcore"

    filled-new-array/range {v4 .. v10}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->WIFI_ONLY_BLOCK_APPS:[Ljava/lang/String;

    .line 1407
    const/4 v1, 0x2

    new-array v1, v1, [[Ljava/lang/String;

    const-string v3, "com.jeejen.family.miui"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v3, "com.miui.home"

    const-string v4, "com.android.mms"

    const-string v5, "com.android.contacts"

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    sput-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->BLOCK_APPS:[[Ljava/lang/String;

    .line 1483
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sSilentlyUninstallPackages:Ljava/util/Set;

    .line 1485
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sSilentlyUninstallPackages:Ljava/util/Set;

    const-string/jumbo v1, "ro.miui.product.home"

    const-string v3, "com.miui.home"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1486
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sSilentlyUninstallPackages:Ljava/util/Set;

    const-string v1, "com.xiaomi.market"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1487
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sSilentlyUninstallPackages:Ljava/util/Set;

    const-string v1, "com.xiaomi.mipicks"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1488
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sSilentlyUninstallPackages:Ljava/util/Set;

    const-string v1, "com.xiaomi.discover"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1489
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sSilentlyUninstallPackages:Ljava/util/Set;

    const-string v1, "com.xiaomi.gamecenter"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1490
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sSilentlyUninstallPackages:Ljava/util/Set;

    const-string v1, "com.xiaomi.gamecenter.pad"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1491
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sSilentlyUninstallPackages:Ljava/util/Set;

    const-string v1, "com.miui.global.packageinstaller"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1492
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sSilentlyUninstallPackages:Ljava/util/Set;

    const-string v1, "com.google.android.packageinstaller"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1493
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sSilentlyUninstallPackages:Ljava/util/Set;

    const-string v1, "com.miui.greenguard"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1644
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sNonProfileCompiledPkgs:Ljava/util/List;

    .line 1647
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sNonProfileCompiledPkgs:Ljava/util/List;

    const-string v1, "com.tencent.mm"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1648
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sNonProfileCompiledPkgs:Ljava/util/List;

    const-string v1, "com.tencent.mobileqq"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1649
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sNonProfileCompiledPkgs:Ljava/util/List;

    const-string v1, "com.taobao.taobao"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1650
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sNonProfileCompiledPkgs:Ljava/util/List;

    const-string v1, "com.eg.android.AlipayGphone"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1651
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sNonProfileCompiledPkgs:Ljava/util/List;

    const-string v1, "com.ss.android.article.news"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1737
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sSecondaryDexOptPkgs:Ljava/util/List;

    .line 1738
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sSecondaryDexOptBlackList:Ljava/util/List;

    .line 1741
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sSecondaryDexOptPkgs:Ljava/util/List;

    const-string v1, "com.tencent.mm"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1857
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sEPAllowedPackage:Ljava/util/List;

    .line 1859
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sEPAllowedPackage:Ljava/util/List;

    const-string v1, "com.android.packageinstaller"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1860
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sEPAllowedPackage:Ljava/util/List;

    const-string v1, "com.miui.packageinstaller"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1973
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sFirstUseLock:Ljava/lang/Object;

    .line 1974
    const-string/jumbo v0, "persist.bg.dexopt.enable"

    .line 1975
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sEnableBgDexopt:Z

    .line 2116
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->appsMovedToDataPartition:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .registers 1
    .param p0, "x0"    # Landroid/content/Context;

    .line 130
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->updatePackageWhiteList(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .line 130
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static addIgnoreApk(Ljava/lang/String;)V
    .registers 2
    .param p0, "path"    # Ljava/lang/String;

    .line 274
    if-eqz p0, :cond_7

    .line 275
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnoreApks:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 277
    :cond_7
    return-void
.end method

.method static addIgnorePackage(Ljava/lang/String;)V
    .registers 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 284
    if-eqz p0, :cond_7

    .line 285
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnorePackages:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 287
    :cond_7
    return-void
.end method

.method static addMiuiSharedUids(Lcom/android/server/pm/Settings;Z)V
    .registers 7
    .param p0, "settings"    # Lcom/android/server/pm/Settings;
    .param p1, "multipleUids"    # Z

    .line 301
    const-string v0, "android.uid.backup"

    .line 303
    const/16 v1, 0x2710

    if-eqz p1, :cond_9

    const/16 v2, 0x2648

    goto :goto_a

    :cond_9
    move v2, v1

    .line 301
    :goto_a
    const/16 v3, 0x8

    const/4 v4, 0x1

    invoke-virtual {p0, v0, v2, v4, v3}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    .line 305
    const-string v0, "android.uid.theme"

    .line 307
    if-eqz p1, :cond_17

    const/16 v2, 0x2649

    goto :goto_18

    :cond_17
    move v2, v1

    .line 305
    :goto_18
    invoke-virtual {p0, v0, v2, v4, v3}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    .line 309
    const-string v0, "android.uid.updater"

    .line 311
    if-eqz p1, :cond_22

    const/16 v2, 0x264a

    goto :goto_23

    :cond_22
    move v2, v1

    .line 309
    :goto_23
    invoke-virtual {p0, v0, v2, v4, v3}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    .line 313
    const-string v0, "android.uid.finddevice"

    .line 315
    if-eqz p1, :cond_2d

    const/16 v1, 0x2652

    nop

    .line 313
    :cond_2d
    invoke-virtual {p0, v0, v1, v4, v3}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    .line 317
    return-void
.end method

.method public static beforeSystemReady(Landroid/content/Context;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 1344
    invoke-static {p0}, Lcom/miui/server/SecSpaceManagerService;->init(Landroid/content/Context;)V

    .line 1345
    invoke-static {p0}, Lcom/miui/server/GreenGuardManagerService;->init(Landroid/content/Context;)V

    .line 1347
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->installBlockApps(Landroid/content/Context;)V

    .line 1348
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceInjector;->hideOrDisplayApp()V

    .line 1349
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_13

    .line 1350
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->registerDataObserver(Landroid/content/Context;)V

    .line 1352
    :cond_13
    return-void
.end method

.method public static canInterceptByMiAppStore(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;)Z
    .registers 9
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .line 2025
    .local p1, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 2026
    return v1

    .line 2029
    :cond_6
    if-nez p1, :cond_9

    .line 2030
    return v1

    .line 2033
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 2034
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 2036
    .local v3, "bundle":Landroid/os/Bundle;
    if-eqz v3, :cond_3b

    :try_start_1f
    const-string/jumbo v4, "mi_use_custom_resolver"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3b

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v4, v4, Landroid/content/pm/ActivityInfo;->enabled:Z
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_2c} :catch_30

    if-eqz v4, :cond_3b

    .line 2037
    const/4 v0, 0x1

    return v0

    .line 2039
    :catch_30
    move-exception v4

    .line 2040
    .local v4, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2040
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v4    # "e":Ljava/lang/Exception;
    goto :goto_3c

    .line 2041
    .restart local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local v3    # "bundle":Landroid/os/Bundle;
    :cond_3b
    nop

    .line 2042
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v3    # "bundle":Landroid/os/Bundle;
    :goto_3c
    goto :goto_d

    .line 2043
    :cond_3d
    return v1
.end method

.method static checkAndResolveFlags(Landroid/content/Intent;Ljava/lang/String;II)I
    .registers 6
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "resolvedType"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .line 972
    if-eqz p0, :cond_16

    invoke-static {}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserCalling()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 973
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 974
    .local v0, "action":Ljava/lang/String;
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sXSpaceFriendlyActionList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 975
    or-int/lit16 p2, p2, 0x2000

    .line 978
    .end local v0    # "action":Ljava/lang/String;
    :cond_16
    return p2
.end method

.method static checkAndRunPreInstallation(Landroid/os/Handler;Landroid/os/Message;)Z
    .registers 11
    .param p0, "h"    # Landroid/os/Handler;
    .param p1, "msg"    # Landroid/os/Message;

    .line 799
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v0

    .line 800
    .local v0, "callpkg":Ljava/lang/String;
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v2, 0x0

    if-nez v1, :cond_70

    const-string v1, "com.xiaomi.market"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_70

    .line 803
    :cond_1c
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/pm/PackageManagerService$InstallParams;

    .line 804
    .local v1, "param":Lcom/android/server/pm/PackageManagerService$InstallParams;
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getApkPathFromInstallParams(Lcom/android/server/pm/PackageManagerService$InstallParams;)Ljava/lang/String;

    move-result-object v3

    .line 805
    .local v3, "apkPath":Ljava/lang/String;
    const-string/jumbo v4, "security"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    check-cast v4, Lcom/miui/server/SecurityManagerService;

    .line 806
    .local v4, "service":Lcom/miui/server/SecurityManagerService;
    sget-object v5, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string v6, "check if need preinstall apps"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    :try_start_34
    invoke-virtual {v4}, Lcom/miui/server/SecurityManagerService;->getGoogleBaseService()Lmiui/security/ISecurityCallback;

    move-result-object v5

    .line 809
    .local v5, "ism":Lmiui/security/ISecurityCallback;
    if-eqz v5, :cond_66

    invoke-interface {v5, v3}, Lmiui/security/ISecurityCallback;->checkPreInstallNeeded(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_66

    .line 810
    sget-object v6, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "pending installation for: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    new-instance v6, Lcom/android/server/pm/PackageManagerServiceInjector$InstallAppParam;

    invoke-direct {v6, p0, p1}, Lcom/android/server/pm/PackageManagerServiceInjector$InstallAppParam;-><init>(Landroid/os/Handler;Landroid/os/Message;)V

    .line 812
    .local v6, "p":Lcom/android/server/pm/PackageManagerServiceInjector$InstallAppParam;
    sget-object v7, Lcom/android/server/pm/PackageManagerServiceInjector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7, v2, v6}, Lcom/miui/server/SecurityManagerService;->registerForAppsPreInstalled(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 813
    invoke-interface {v5}, Lmiui/security/ISecurityCallback;->preInstallApps()V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_64} :catch_67

    .line 814
    const/4 v2, 0x1

    return v2

    .line 818
    .end local v5    # "ism":Lmiui/security/ISecurityCallback;
    .end local v6    # "p":Lcom/android/server/pm/PackageManagerServiceInjector$InstallAppParam;
    :cond_66
    goto :goto_6f

    .line 816
    :catch_67
    move-exception v5

    .line 817
    .local v5, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string v7, "googlebase remote error\uff01"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 819
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_6f
    return v2

    .line 801
    .end local v1    # "param":Lcom/android/server/pm/PackageManagerService$InstallParams;
    .end local v3    # "apkPath":Ljava/lang/String;
    .end local v4    # "service":Lcom/miui/server/SecurityManagerService;
    :cond_70
    :goto_70
    return v2
.end method

.method static checkAndRunPreInstallation(Landroid/os/Handler;Landroid/os/Message;ILjava/lang/String;)Z
    .registers 12
    .param p0, "h"    # Landroid/os/Handler;
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "installerUid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 823
    const/4 v0, 0x0

    .line 825
    .local v0, "packageNames":[Ljava/lang/String;
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-interface {v1, p2}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_b

    move-object v0, v1

    .line 828
    goto :goto_13

    .line 826
    :catch_b
    move-exception v1

    .line 827
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string v3, "googlebase getPackagesForUid error\uff01"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 829
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_13
    const/4 v1, 0x0

    .line 830
    .local v1, "callpkg":Ljava/lang/String;
    const/4 v2, 0x0

    if-eqz v0, :cond_1c

    array-length v3, v0

    if-lez v3, :cond_1c

    .line 831
    aget-object v1, v0, v2

    .line 833
    :cond_1c
    sget-boolean v3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v3, :cond_7d

    const-string v3, "com.xiaomi.market"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7d

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    if-eqz v3, :cond_2f

    goto :goto_7d

    .line 836
    :cond_2f
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 838
    const-string/jumbo v3, "security"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    check-cast v3, Lcom/miui/server/SecurityManagerService;

    .line 839
    .local v3, "service":Lcom/miui/server/SecurityManagerService;
    sget-object v4, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string v5, "check if need preinstall apps"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    :try_start_41
    invoke-virtual {v3}, Lcom/miui/server/SecurityManagerService;->getGoogleBaseService()Lmiui/security/ISecurityCallback;

    move-result-object v4

    .line 842
    .local v4, "ism":Lmiui/security/ISecurityCallback;
    if-eqz v4, :cond_73

    invoke-interface {v4, p3}, Lmiui/security/ISecurityCallback;->checkPreInstallNeeded(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_73

    .line 843
    sget-object v5, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "pending installation for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    new-instance v5, Lcom/android/server/pm/PackageManagerServiceInjector$InstallAppParam;

    invoke-direct {v5, p0, p1}, Lcom/android/server/pm/PackageManagerServiceInjector$InstallAppParam;-><init>(Landroid/os/Handler;Landroid/os/Message;)V

    .line 845
    .local v5, "p":Lcom/android/server/pm/PackageManagerServiceInjector$InstallAppParam;
    sget-object v6, Lcom/android/server/pm/PackageManagerServiceInjector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6, v2, v5}, Lcom/miui/server/SecurityManagerService;->registerForAppsPreInstalled(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 846
    invoke-interface {v4}, Lmiui/security/ISecurityCallback;->preInstallApps()V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_71} :catch_74

    .line 847
    const/4 v2, 0x1

    return v2

    .line 851
    .end local v4    # "ism":Lmiui/security/ISecurityCallback;
    .end local v5    # "p":Lcom/android/server/pm/PackageManagerServiceInjector$InstallAppParam;
    :cond_73
    goto :goto_7c

    .line 849
    :catch_74
    move-exception v4

    .line 850
    .local v4, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string v6, "googlebase remote error\uff01"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 852
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_7c
    return v2

    .line 834
    .end local v3    # "service":Lcom/miui/server/SecurityManagerService;
    :cond_7d
    :goto_7d
    return v2
.end method

.method static checkEnterpriseRestriction(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageParser$Package;)Z
    .registers 6
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 1877
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    const-string v1, "com.miui.enterprise.permission.ACCESS_ENTERPRISE_API"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 1878
    invoke-static {v0, v2, v3}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->verify(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 1879
    const-string v0, "Enterprise"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Verify enterprise signature of package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1880
    return v1

    .line 1882
    :cond_35
    sget-boolean v0, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    const/4 v2, 0x0

    if-nez v0, :cond_3b

    .line 1883
    return v2

    .line 1885
    :cond_3b
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/miui/enterprise/ApplicationHelper;->checkEnterprisePackageRestriction(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 1886
    const-string v0, "Enterprise"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Installation of package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is restricted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1887
    return v1

    .line 1889
    :cond_63
    return v2
.end method

.method public static checkGTSSpecAppOptMode(Lcom/android/server/pm/PackageManagerService;)V
    .registers 1
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;

    .line 1844
    return-void
.end method

.method static checkGetInstalledAppsPermission(IILjava/lang/String;)Z
    .registers 9
    .param p0, "callingPid"    # I
    .param p1, "callingUid"    # I
    .param p2, "where"    # Ljava/lang/String;

    .line 1519
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 1520
    return v1

    .line 1523
    :cond_6
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 1524
    .local v0, "callingAppId":I
    const/16 v2, 0x2710

    if-ge v0, v2, :cond_f

    .line 1525
    return v1

    .line 1528
    :cond_f
    invoke-static {p0}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v2

    .line 1529
    .local v2, "callingPackage":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 1530
    return v1

    .line 1534
    :cond_1a
    :try_start_1a
    sget-object v3, Lcom/android/server/pm/PackageManagerServiceInjector;->sAppOpsService:Lcom/android/internal/app/IAppOpsService;

    if-nez v3, :cond_2a

    .line 1535
    const-string v3, "appops"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v3

    sput-object v3, Lcom/android/server/pm/PackageManagerServiceInjector;->sAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 1537
    :cond_2a
    sget-object v3, Lcom/android/server/pm/PackageManagerServiceInjector;->sAppOpsService:Lcom/android/internal/app/IAppOpsService;

    const/16 v4, 0x2726

    invoke-interface {v3, v4, p1, v2}, Lcom/android/internal/app/IAppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_5c

    .line 1538
    sget-object v3, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MIUILOG- Permission Denied "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ". pkg : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " uid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_5a} :catch_5d

    .line 1539
    const/4 v1, 0x0

    return v1

    .line 1543
    :cond_5c
    goto :goto_65

    .line 1541
    :catch_5d
    move-exception v3

    .line 1542
    .local v3, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string v5, "checkGetInstalledAppsPermission"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1544
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_65
    return v1
.end method

.method static checkMiuiIntent(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Landroid/content/pm/ResolveInfo;
    .registers 14
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .line 382
    .local p4, "query":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz p1, :cond_144

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_144

    .line 383
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_31

    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    const-string v1, "android.intent.category.HOME"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 384
    invoke-static {}, Lmiui/os/Build;->getUserMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_28

    .line 385
    const-string v0, "com.jeejen.family.miui"

    const-string v1, "com.jeejen.home.launcher.Launcher"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_134

    .line 387
    :cond_28
    const-string v0, "com.miui.home"

    const-string v1, "com.miui.home.launcher.Launcher"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_134

    .line 389
    :cond_31
    const-string v0, "android.intent.action.ASSIST"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13f

    const-string v0, "android.intent.action.VOICE_COMMAND"

    .line 390
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    goto/16 :goto_13f

    .line 392
    :cond_4b
    const-string v0, "http"

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_63

    const-string v0, "https"

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_99

    :cond_63
    const-string v0, "android.intent.action.VIEW"

    .line 393
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_99

    .line 394
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-static/range {v1 .. v7}, Lmiui/util/UrlResolver;->checkMiuiIntent(Landroid/content/Context;Ljava/lang/Object;Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 396
    .local v0, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_7e

    .line 397
    return-object v0

    .line 401
    :cond_7e
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_97

    .line 403
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_97

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_97

    .line 404
    invoke-static {p0, p4}, Lcom/android/server/pm/PackageManagerServiceInjector;->getBrowserResolveInfo(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 405
    if-eqz v0, :cond_97

    .line 406
    return-object v0

    .line 410
    .end local v0    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_97
    goto/16 :goto_134

    :cond_99
    const-string/jumbo v0, "mimarket"

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10f

    const-string/jumbo v0, "market"

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c0

    const-string v0, "android.intent.action.VIEW"

    .line 411
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c0

    goto :goto_10f

    .line 424
    :cond_c0
    const-string v0, "application/vnd.android.package-archive"

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_134

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_134

    .line 426
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_ea

    invoke-static {}, Landroid/miui/AppOpsUtils;->isXOptMode()Z

    move-result v0

    if-nez v0, :cond_ea

    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_e7

    goto :goto_ea

    .line 434
    :cond_e7
    const-string v0, "com.miui.packageinstaller"

    goto :goto_103

    .line 427
    :cond_ea
    :goto_ea
    const-string v0, "com.google.android.packageinstaller"

    .line 428
    .local v0, "realPkgName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 429
    :try_start_ef
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    const-string v3, "com.google.android.packageinstaller"

    invoke-virtual {v2, v3}, Lcom/android/server/pm/Settings;->getRenamedPackageLPr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_102

    .line 430
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    const-string v3, "com.google.android.packageinstaller"

    invoke-virtual {v2, v3}, Lcom/android/server/pm/Settings;->getRenamedPackageLPr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 432
    :cond_102
    monitor-exit v1
    :try_end_103
    .catchall {:try_start_ef .. :try_end_103} :catchall_10c

    .line 434
    :goto_103
    nop

    .line 436
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 437
    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/android/server/pm/PackageManagerService;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    return-object v1

    .line 432
    :catchall_10c
    move-exception v2

    :try_start_10d
    monitor-exit v1
    :try_end_10e
    .catchall {:try_start_10d .. :try_end_10e} :catchall_10c

    throw v2

    .line 413
    .end local v0    # "realPkgName":Ljava/lang/String;
    :cond_10f
    :goto_10f
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 414
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_133

    .line 415
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 416
    .local v1, "host":Ljava/lang/String;
    if-eqz v1, :cond_133

    const-string v2, "details"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12c

    const-string/jumbo v2, "search"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_133

    .line 417
    :cond_12c
    invoke-static {p4}, Lcom/android/server/pm/PackageManagerServiceInjector;->getMarketResolveInfo(Ljava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 418
    .local v2, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_133

    .line 419
    return-object v2

    .line 424
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v1    # "host":Ljava/lang/String;
    .end local v2    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_133
    nop

    .line 439
    :cond_134
    :goto_134
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_18b

    .line 440
    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/android/server/pm/PackageManagerService;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0

    .line 391
    :cond_13f
    :goto_13f
    invoke-static {p0, p4}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemResolveInfo(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0

    .line 442
    :cond_144
    if-eqz p1, :cond_18b

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_18b

    invoke-static {}, Landroid/miui/AppOpsUtils;->isXOptMode()Z

    move-result v0

    if-nez v0, :cond_18b

    .line 443
    const-string v0, "application/vnd.android.package-archive"

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_168

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_174

    :cond_168
    const-string v0, "android.intent.action.INSTALL_PACKAGE"

    .line 444
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17e

    .line 445
    :cond_174
    const-string v0, "com.google.android.packageinstaller"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 446
    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/android/server/pm/PackageManagerService;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0

    .line 447
    :cond_17e
    invoke-static {p1, p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->isOpenByGooglePlayStore(Landroid/content/Intent;Lcom/android/server/pm/PackageManagerService;)Z

    move-result v0

    if-eqz v0, :cond_18b

    .line 448
    invoke-static {p4}, Lcom/android/server/pm/PackageManagerServiceInjector;->getGlobalMarketResolveInfo(Ljava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 449
    .local v0, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_18b

    .line 450
    return-object v0

    .line 455
    .end local v0    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_18b
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    return-object v0
.end method

.method static checkMiuiSdk(Landroid/content/pm/PackageParser$Package;Lcom/android/server/pm/PackageManagerService;)Z
    .registers 12
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 918
    const/4 v0, -0x1

    .line 919
    .local v0, "miuiManifestResId":I
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    .line 920
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_c

    .line 921
    const-string v2, "com.miui.sdk.manifest"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 924
    :cond_c
    new-instance v2, Landroid/content/res/AssetManager;

    invoke-direct {v2}, Landroid/content/res/AssetManager;-><init>()V

    .line 926
    .local v2, "assmgr":Landroid/content/res/AssetManager;
    :try_start_11
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v3

    .line 927
    .local v3, "cookie":I
    if-eqz v3, :cond_58

    .line 928
    new-instance v4, Landroid/content/res/MiuiResources;

    iget-object v5, p1, Lcom/android/server/pm/PackageManagerService;->mMetrics:Landroid/util/DisplayMetrics;

    const/4 v6, 0x0

    invoke-direct {v4, v2, v5, v6}, Landroid/content/res/MiuiResources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 929
    .local v4, "res":Landroid/content/res/MiuiResources;
    const/4 v5, 0x0

    .line 930
    .local v5, "parser":Lmiui/core/ManifestParser;
    if-gtz v0, :cond_31

    .line 932
    const-string/jumbo v7, "miui_manifest"

    const-string/jumbo v8, "xml"

    iget-object v9, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v7, v8, v9}, Landroid/content/res/MiuiResources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    move v0, v7

    .line 935
    :cond_31
    const/4 v7, 0x1

    if-lez v0, :cond_53

    .line 936
    invoke-virtual {v4, v0}, Landroid/content/res/MiuiResources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v8

    invoke-static {v4, v8}, Lmiui/core/ManifestParser;->createFromXmlParser(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Lmiui/core/ManifestParser;

    move-result-object v8

    move-object v5, v8

    .line 942
    invoke-virtual {v5, v6}, Lmiui/core/ManifestParser;->parse(Ljava/util/Map;)Lmiui/core/Manifest;

    move-result-object v6

    .line 943
    .local v6, "manifest":Lmiui/core/Manifest;
    new-instance v8, Lmiui/core/CompatibleManager;

    iget-object v9, p1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9, v6}, Lmiui/core/CompatibleManager;-><init>(Landroid/content/Context;Lmiui/core/Manifest;)V

    .line 944
    .local v8, "cptmgr":Lmiui/core/CompatibleManager;
    invoke-virtual {v8}, Lmiui/core/CompatibleManager;->isCompatible()Z

    move-result v9
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_4c} :catch_5f
    .catchall {:try_start_11 .. :try_end_4c} :catchall_5d

    if-eqz v9, :cond_58

    .line 945
    nop

    .line 954
    invoke-virtual {v2}, Landroid/content/res/AssetManager;->close()V

    .line 945
    return v7

    .line 939
    .end local v6    # "manifest":Lmiui/core/Manifest;
    .end local v8    # "cptmgr":Lmiui/core/CompatibleManager;
    :cond_53
    nop

    .line 954
    invoke-virtual {v2}, Landroid/content/res/AssetManager;->close()V

    .line 939
    return v7

    .line 948
    .end local v4    # "res":Landroid/content/res/MiuiResources;
    .end local v5    # "parser":Lmiui/core/ManifestParser;
    :cond_58
    const/4 v4, 0x0

    .line 954
    invoke-virtual {v2}, Landroid/content/res/AssetManager;->close()V

    .line 948
    return v4

    .line 954
    .end local v3    # "cookie":I
    :catchall_5d
    move-exception v3

    goto :goto_73

    .line 949
    :catch_5f
    move-exception v3

    .line 950
    .local v3, "e":Ljava/lang/Exception;
    :try_start_60
    sget-object v4, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 951
    new-instance v4, Lcom/android/server/pm/PackageManagerException;

    const/16 v5, -0x34

    const-string v6, "error occurs while parsing miui manifest."

    invoke-direct {v4, v5, v6}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_73
    .catchall {:try_start_60 .. :try_end_73} :catchall_5d

    .line 954
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_73
    invoke-virtual {v2}, Landroid/content/res/AssetManager;->close()V

    throw v3
.end method

.method public static checkPackageInstallerStatus(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Settings;)V
    .registers 10
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "curPkgSettings"    # Lcom/android/server/pm/Settings;

    .line 618
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_a7

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_a7

    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_a7

    .line 619
    iget-object v0, p1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    const-string v1, "com.miui.packageinstaller"

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 620
    .local v0, "miuiInstaller":Lcom/android/server/pm/PackageSetting;
    iget-object v1, p1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    const-string v2, "com.google.android.packageinstaller"

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 621
    .local v1, "googleInstaller":Lcom/android/server/pm/PackageSetting;
    iget-object v2, p1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    const-string v3, "com.android.packageinstaller"

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 622
    .local v2, "androidInstaller":Lcom/android/server/pm/PackageSetting;
    invoke-static {}, Landroid/miui/AppOpsUtils;->isXOptMode()Z

    move-result v3

    .line 623
    .local v3, "isCtsBuild":Z
    const/4 v4, 0x0

    if-eqz v3, :cond_6e

    .line 624
    if-eqz v0, :cond_3a

    .line 625
    xor-int/lit8 v5, v3, 0x1

    invoke-virtual {v0, v5, v4}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 627
    :cond_3a
    iget-object v5, p1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    const-string v6, "com.miui.packageinstaller"

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    sput-object v5, Lcom/android/server/pm/PackageManagerServiceInjector;->mMiuiInstallerPackageSetting:Lcom/android/server/pm/PackageSetting;

    .line 628
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    const-string v6, "com.miui.packageinstaller"

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$Package;

    sput-object v5, Lcom/android/server/pm/PackageManagerServiceInjector;->mMiuiInstallerPackage:Landroid/content/pm/PackageParser$Package;

    .line 629
    iget-object v5, p1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    const-string v6, "com.miui.packageinstaller"

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    const-string v5, "com.miui.packageinstaller"

    invoke-virtual {p1, v5}, Lcom/android/server/pm/Settings;->isDisabledSystemPackageLPr(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_66

    .line 631
    const-string v5, "com.miui.packageinstaller"

    invoke-virtual {p1, v5}, Lcom/android/server/pm/Settings;->removeDisabledSystemPackageLPw(Ljava/lang/String;)V

    .line 633
    :cond_66
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    const-string v6, "com.miui.packageinstaller"

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9d

    .line 635
    :cond_6e
    sget-object v5, Lcom/android/server/pm/PackageManagerServiceInjector;->mMiuiInstallerPackageSetting:Lcom/android/server/pm/PackageSetting;

    if-eqz v5, :cond_90

    .line 636
    sget-object v5, Lcom/android/server/pm/PackageManagerServiceInjector;->mMiuiInstallerPackageSetting:Lcom/android/server/pm/PackageSetting;

    xor-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6, v4}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 637
    iget-object v5, p1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    const-string v6, "com.miui.packageinstaller"

    sget-object v7, Lcom/android/server/pm/PackageManagerServiceInjector;->mMiuiInstallerPackageSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v5, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    sget-object v5, Lcom/android/server/pm/PackageManagerServiceInjector;->mMiuiInstallerPackageSetting:Lcom/android/server/pm/PackageSetting;

    iget v5, v5, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_90

    .line 639
    const-string v5, "com.miui.packageinstaller"

    const/4 v6, 0x1

    invoke-virtual {p1, v5, v6}, Lcom/android/server/pm/Settings;->disableSystemPackageLPw(Ljava/lang/String;Z)Z

    .line 642
    :cond_90
    sget-object v5, Lcom/android/server/pm/PackageManagerServiceInjector;->mMiuiInstallerPackage:Landroid/content/pm/PackageParser$Package;

    if-eqz v5, :cond_9d

    .line 643
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    const-string v6, "com.miui.packageinstaller"

    sget-object v7, Lcom/android/server/pm/PackageManagerServiceInjector;->mMiuiInstallerPackage:Landroid/content/pm/PackageParser$Package;

    invoke-virtual {v5, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    :cond_9d
    :goto_9d
    if-eqz v1, :cond_a2

    .line 647
    invoke-virtual {v1, v3, v4}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 649
    :cond_a2
    if-eqz v2, :cond_a7

    .line 650
    invoke-virtual {v2, v3, v4}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 653
    .end local v0    # "miuiInstaller":Lcom/android/server/pm/PackageSetting;
    .end local v1    # "googleInstaller":Lcom/android/server/pm/PackageSetting;
    .end local v2    # "androidInstaller":Lcom/android/server/pm/PackageSetting;
    .end local v3    # "isCtsBuild":Z
    :cond_a7
    return-void
.end method

.method public static checkPkgInstallerOptMode(Lcom/android/server/pm/PackageManagerService;)V
    .registers 4
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;

    .line 1834
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_10

    .line 1835
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-static {p0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->checkPackageInstallerStatus(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Settings;)V

    .line 1836
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    .line 1837
    :try_start_9
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->checkPkgInstallerOptMode()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_10

    .line 1840
    goto :goto_1a

    .line 1836
    :catchall_d
    move-exception v1

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    :try_start_f
    throw v1
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_10} :catch_10

    .line 1838
    :catch_10
    move-exception v0

    .line 1839
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1a
    return-void
.end method

.method public static checkSignatures(Landroid/content/pm/PackageParser$SigningDetails;Landroid/content/pm/PackageParser$SigningDetails;)Z
    .registers 4
    .param p0, "p1"    # Landroid/content/pm/PackageParser$SigningDetails;
    .param p1, "p2"    # Landroid/content/pm/PackageParser$SigningDetails;

    .line 2178
    iget-object v0, p0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    iget-object v1, p1, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private static decodeFromServerFormat(Ljava/lang/String;)V
    .registers 6
    .param p0, "cloudDataString"    # Ljava/lang/String;

    .line 517
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 518
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sGlobalWhitePackageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 519
    return-void

    .line 522
    :cond_c
    :try_start_c
    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 523
    .local v0, "packages":[Ljava/lang/String;
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sGlobalWhitePackageList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 524
    array-length v1, v0

    const/4 v2, 0x0

    :goto_19
    if-ge v2, v1, :cond_25

    aget-object v3, v0, v2

    .line 525
    .local v3, "app":Ljava/lang/String;
    sget-object v4, Lcom/android/server/pm/PackageManagerServiceInjector;->sGlobalWhitePackageList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_22} :catch_26

    .line 524
    .end local v3    # "app":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 529
    .end local v0    # "packages":[Ljava/lang/String;
    :cond_25
    goto :goto_2a

    .line 527
    :catch_26
    move-exception v0

    .line 528
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 530
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2a
    return-void
.end method

.method private static encodeToServerFormat()Ljava/lang/String;
    .registers 4

    .line 533
    const-string v0, ""

    .line 534
    .local v0, "defaultCloudDataString":Ljava/lang/String;
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sGlobalWhitePackageList:Ljava/util/ArrayList;

    if-eqz v1, :cond_59

    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sGlobalWhitePackageList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_59

    .line 537
    :cond_f
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    sget-object v2, Lcom/android/server/pm/PackageManagerServiceInjector;->sGlobalWhitePackageList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_39

    .line 538
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/pm/PackageManagerServiceInjector;->sGlobalWhitePackageList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 537
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 540
    .end local v1    # "i":I
    :cond_39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/pm/PackageManagerServiceInjector;->sGlobalWhitePackageList:Ljava/util/ArrayList;

    sget-object v3, Lcom/android/server/pm/PackageManagerServiceInjector;->sGlobalWhitePackageList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 541
    return-object v0

    .line 535
    :cond_59
    :goto_59
    return-object v0
.end method

.method static fixUpAppIdLPr(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageSetting;Landroid/content/pm/PackageParser$Package;)V
    .registers 9
    .param p0, "pkms"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "newPkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 2192
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->isUpgrade()Z

    move-result v0

    if-eqz v0, :cond_14a

    .line 2193
    invoke-virtual {p2}, Landroid/content/pm/PackageParser$Package;->isSystem()Z

    move-result v0

    if-nez v0, :cond_14a

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 2194
    invoke-virtual {v0, v1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    if-nez v0, :cond_14a

    .line 2195
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceInjector;->getAppsMovedToDataPartition()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    goto/16 :goto_14a

    .line 2199
    :cond_24
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceInjector;->getAppsMovedToDataPartition()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2200
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-static {v0, p2}, Lcom/android/server/pm/PackageManagerServiceInjector;->getPreservedUserId(Lcom/android/server/pm/Settings;Landroid/content/pm/PackageParser$Package;)Ljava/lang/Object;

    move-result-object v0

    .line 2201
    .local v0, "preservedUserId":Ljava/lang/Object;
    const/4 v1, 0x6

    if-nez v0, :cond_4e

    .line 2202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no preserved app id for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 2203
    return-void

    .line 2206
    :cond_4e
    instance-of v2, v0, Lcom/android/server/pm/SharedUserSetting;

    const/4 v3, 0x4

    if-eqz v2, :cond_dc

    .line 2207
    move-object v2, v0

    check-cast v2, Lcom/android/server/pm/SharedUserSetting;

    .line 2208
    .local v2, "preservedSharedUser":Lcom/android/server/pm/SharedUserSetting;
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    sget-object v5, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    if-ne v4, v5, :cond_83

    .line 2210
    const/4 v4, 0x0

    :try_start_5d
    invoke-static {p2, v4}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;Z)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_60} :catch_61

    .line 2215
    goto :goto_83

    .line 2211
    :catch_61
    move-exception v3

    .line 2212
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fixUpAppIdLPr: failed to collect certs for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2213
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2212
    invoke-static {v1, v4}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 2214
    return-void

    .line 2217
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_83
    :goto_83
    iget-object v4, v2, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v4, v4, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerServiceInjector;->checkSignatures(Landroid/content/pm/PackageParser$SigningDetails;Landroid/content/pm/PackageParser$SigningDetails;)Z

    move-result v4

    if-nez v4, :cond_ac

    .line 2219
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " changed pre-install location to data partition, failed to restore app id: signatures mismatch"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 2222
    return-void

    .line 2225
    :cond_ac
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "package "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " changed pre-install location to data partition, restored app id "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " for it"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 2229
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v1, v1, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    iget-object v3, v2, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2230
    return-void

    .line 2233
    .end local v2    # "preservedSharedUser":Lcom/android/server/pm/SharedUserSetting;
    :cond_dc
    instance-of v2, v0, Lcom/android/server/pm/PackageSetting;

    if-eqz v2, :cond_149

    .line 2234
    move-object v2, v0

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 2236
    .local v2, "preservedPs":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v4

    if-nez v4, :cond_f0

    .line 2237
    const-string/jumbo v3, "preserved user info doesn\'t own system flags, bail"

    invoke-static {v1, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 2238
    return-void

    .line 2241
    :cond_f0
    iget-object v4, v2, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    if-eqz v4, :cond_12c

    iget-object v4, v2, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v4, v4, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 2242
    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerServiceInjector;->checkSignatures(Landroid/content/pm/PackageParser$SigningDetails;Landroid/content/pm/PackageParser$SigningDetails;)Z

    move-result v4

    if-nez v4, :cond_101

    goto :goto_12c

    .line 2250
    :cond_101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "package "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " changed pre-install location to data partition, restore app id "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " for it"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 2253
    iget v1, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    iput v1, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 2253
    .end local v2    # "preservedPs":Lcom/android/server/pm/PackageSetting;
    goto :goto_149

    .line 2244
    .restart local v2    # "preservedPs":Lcom/android/server/pm/PackageSetting;
    :cond_12c
    :goto_12c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " changed pre-install location to data partition, failed to restore app id: signatures mismatch"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 2247
    return-void

    .line 2255
    .end local v2    # "preservedPs":Lcom/android/server/pm/PackageSetting;
    :cond_149
    :goto_149
    return-void

    .line 2196
    .end local v0    # "preservedUserId":Ljava/lang/Object;
    :cond_14a
    :goto_14a
    return-void
.end method

.method protected static getAdjustedFilterIfNeeded(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "originalFilter"    # Ljava/lang/String;

    .line 1656
    move-object v0, p2

    .line 1657
    .local v0, "compilerFilter":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getCompilerFilterForReason(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 1658
    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->isNonProfileFilterNeeded(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 1659
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getCompilerFilterForReason(I)Ljava/lang/String;

    move-result-object v0

    .line 1660
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ota-opt adjust compiler-filter = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for package = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    :cond_3d
    return-object v0
.end method

.method static getApkPathFromInstallParams(Lcom/android/server/pm/PackageManagerService$InstallParams;)Ljava/lang/String;
    .registers 5
    .param p0, "param"    # Lcom/android/server/pm/PackageManagerService$InstallParams;

    .line 856
    const/4 v0, 0x0

    .line 858
    .local v0, "ret":Ljava/lang/String;
    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_5} :catch_7

    move-object v0, v1

    .line 861
    goto :goto_11

    .line 859
    :catch_7
    move-exception v1

    .line 860
    .local v1, "th":Ljava/lang/Throwable;
    sget-object v2, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    .end local v1    # "th":Ljava/lang/Throwable;
    :goto_11
    return-object v0
.end method

.method private static getAppsMovedToDataPartition()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2118
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->appsMovedToDataPartition:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 2119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->appsMovedToDataPartition:Ljava/util/ArrayList;

    .line 2121
    :cond_b
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->appsMovedToDataPartition:Ljava/util/ArrayList;

    return-object v0
.end method

.method static getBrowserResolveInfo(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;)Landroid/content/pm/ResolveInfo;
    .registers 7
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .line 353
    .local p1, "riList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v0, "CN"

    invoke-static {v0}, Lmiui/os/Build;->checkRegion(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 354
    const/4 v0, 0x0

    return-object v0

    .line 356
    :cond_a
    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemResolveInfo(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 357
    .local v0, "ret":Landroid/content/pm/ResolveInfo;
    if-nez v0, :cond_33

    .line 358
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 359
    .local v2, "ri":Landroid/content/pm/ResolveInfo;
    const-string v3, "com.android.browser"

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    iget-boolean v3, v2, Landroid/content/pm/ResolveInfo;->system:Z

    if-nez v3, :cond_32

    .line 361
    move-object v0, v2

    .line 362
    goto :goto_33

    .line 364
    .end local v2    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_32
    goto :goto_14

    .line 366
    :cond_33
    :goto_33
    return-object v0
.end method

.method public static getCompileFlags(I)I
    .registers 2
    .param p0, "flag"    # I

    .line 2000
    sget-boolean v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sEnableBgDexopt:Z

    if-eqz v0, :cond_7

    or-int/lit16 v0, p0, 0x4000

    goto :goto_8

    :cond_7
    move v0, p0

    :goto_8
    return v0
.end method

.method public static getDefaultHome(I)Ljava/lang/String;
    .registers 3
    .param p0, "userId"    # I

    .line 1956
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sDefaultHome:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1957
    :try_start_3
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sDefaultHome:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 1958
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method private static getFirstUseHandler()Landroid/os/Handler;
    .registers 3

    .line 1977
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sFirstUseHandler:Landroid/os/Handler;

    if-nez v0, :cond_2b

    .line 1978
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sFirstUseLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1979
    :try_start_7
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sFirstUseHandler:Landroid/os/Handler;

    if-nez v1, :cond_26

    .line 1980
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "first_use_thread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sFirstUseThread:Landroid/os/HandlerThread;

    .line 1981
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sFirstUseThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 1982
    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/android/server/pm/PackageManagerServiceInjector;->sFirstUseThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sFirstUseHandler:Landroid/os/Handler;

    .line 1984
    :cond_26
    monitor-exit v0

    goto :goto_2b

    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_7 .. :try_end_2a} :catchall_28

    throw v1

    .line 1986
    :cond_2b
    :goto_2b
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sFirstUseHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static getGlobalMarketResolveInfo(Ljava/util/List;)Landroid/content/pm/ResolveInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .line 574
    .local p0, "riList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    .line 575
    .local v0, "ret":Landroid/content/pm/ResolveInfo;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 576
    .local v2, "ri":Landroid/content/pm/ResolveInfo;
    const-string v3, "com.android.vending"

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    iget-boolean v3, v2, Landroid/content/pm/ResolveInfo;->system:Z

    if-eqz v3, :cond_23

    .line 577
    move-object v0, v2

    .line 578
    goto :goto_24

    .line 580
    .end local v2    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_23
    goto :goto_5

    .line 581
    :cond_24
    :goto_24
    return-object v0
.end method

.method static getInstalledApplicationsWithoutPermission(ILjava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 6
    .param p0, "callingUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 1548
    .local p1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz p1, :cond_2c

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_2c

    .line 1552
    :cond_9
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 1553
    .local v0, "uid":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_13
    if-ltz v1, :cond_2b

    .line 1554
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 1555
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v3, v0, :cond_28

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_28

    .line 1556
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1553
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_28
    add-int/lit8 v1, v1, -0x1

    goto :goto_13

    .line 1559
    .end local v1    # "i":I
    :cond_2b
    return-object p1

    .line 1549
    .end local v0    # "uid":I
    :cond_2c
    :goto_2c
    return-object p1
.end method

.method static getInstalledPackagesWithoutPermission(ILjava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 6
    .param p0, "callingUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackageInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 1563
    .local p1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    if-eqz p1, :cond_2e

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_2e

    .line 1567
    :cond_9
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 1568
    .local v0, "uid":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_13
    if-ltz v1, :cond_2d

    .line 1569
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1570
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v3, v0, :cond_2a

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_2a

    .line 1571
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1568
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_2a
    add-int/lit8 v1, v1, -0x1

    goto :goto_13

    .line 1574
    .end local v1    # "i":I
    :cond_2d
    return-object p1

    .line 1564
    .end local v0    # "uid":I
    :cond_2e
    :goto_2e
    return-object p1
.end method

.method static getInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "installerPackageName"    # Ljava/lang/String;

    .line 598
    const-string v0, "adb"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    if-eqz p0, :cond_14

    const-string v0, "com.android.cts."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 599
    const/4 v0, 0x0

    return-object v0

    .line 601
    :cond_14
    return-object p1
.end method

.method static getMarketResolveInfo(Ljava/util/List;)Landroid/content/pm/ResolveInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .line 370
    .local p0, "riList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    .line 371
    .local v0, "ret":Landroid/content/pm/ResolveInfo;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 372
    .local v2, "ri":Landroid/content/pm/ResolveInfo;
    const-string v3, "com.xiaomi.market"

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    iget-boolean v3, v2, Landroid/content/pm/ResolveInfo;->system:Z

    if-eqz v3, :cond_23

    .line 373
    move-object v0, v2

    .line 374
    goto :goto_24

    .line 376
    .end local v2    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_23
    goto :goto_5

    .line 377
    :cond_24
    :goto_24
    return-object v0
.end method

.method public static getMiuiDefaultBrowserPkg()Ljava/lang/String;
    .registers 2

    .line 1817
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 1818
    return-object v1

    .line 1820
    :cond_6
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceInjector;->isCTS()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1821
    return-object v1

    .line 1823
    :cond_d
    const-string v0, "com.android.browser"

    return-object v0
.end method

.method private static getPreservedUserId(Lcom/android/server/pm/Settings;Landroid/content/pm/PackageParser$Package;)Ljava/lang/Object;
    .registers 8
    .param p0, "settings"    # Lcom/android/server/pm/Settings;
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 2147
    const/16 v0, 0x2710

    .local v0, "uid":I
    :goto_2
    const/16 v1, 0x4e1f

    const/4 v2, 0x0

    if-gt v0, v1, :cond_4a

    .line 2148
    invoke-virtual {p0, v0}, Lcom/android/server/pm/Settings;->getUserIdLPr(I)Ljava/lang/Object;

    move-result-object v1

    .line 2149
    .local v1, "preservedUserId":Ljava/lang/Object;
    if-nez v1, :cond_e

    .end local v1    # "preservedUserId":Ljava/lang/Object;
    goto :goto_47

    .line 2151
    .restart local v1    # "preservedUserId":Ljava/lang/Object;
    :cond_e
    instance-of v3, v1, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v3, :cond_2f

    .line 2152
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    if-nez v3, :cond_17

    .end local v1    # "preservedUserId":Ljava/lang/Object;
    goto :goto_47

    .line 2153
    .restart local v1    # "preservedUserId":Ljava/lang/Object;
    :cond_17
    move-object v3, v1

    check-cast v3, Lcom/android/server/pm/SharedUserSetting;

    .line 2154
    .local v3, "preservedSharedUser":Lcom/android/server/pm/SharedUserSetting;
    iget-object v4, v3, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_25

    .line 2155
    goto :goto_47

    .line 2158
    :cond_25
    iget-object v4, v3, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2e

    .line 2159
    return-object v2

    .line 2161
    :cond_2e
    return-object v3

    .line 2164
    .end local v3    # "preservedSharedUser":Lcom/android/server/pm/SharedUserSetting;
    :cond_2f
    instance-of v2, v1, Lcom/android/server/pm/PackageSetting;

    if-eqz v2, :cond_47

    .line 2165
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    if-eqz v2, :cond_38

    .end local v1    # "preservedUserId":Ljava/lang/Object;
    goto :goto_47

    .line 2166
    .restart local v1    # "preservedUserId":Ljava/lang/Object;
    :cond_38
    move-object v2, v1

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 2167
    .local v2, "preservedPs":Lcom/android/server/pm/PackageSetting;
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_46

    .line 2168
    goto :goto_47

    .line 2170
    :cond_46
    return-object v2

    .line 2147
    .end local v1    # "preservedUserId":Ljava/lang/Object;
    .end local v2    # "preservedPs":Lcom/android/server/pm/PackageSetting;
    :cond_47
    :goto_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2173
    .end local v0    # "uid":I
    :cond_4a
    return-object v2
.end method

.method private static getRecentlyWeekUsageStats(Landroid/content/Context;)Ljava/util/List;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation

    .line 1673
    const-string/jumbo v0, "usagestats"

    .line 1674
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManager;

    .line 1676
    .local v0, "usm":Landroid/app/usage/UsageStatsManager;
    if-eqz v0, :cond_4c

    .line 1677
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1678
    .local v1, "tillTime":J
    const-wide/32 v3, 0x240c8400

    sub-long v3, v1, v3

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/app/usage/UsageStatsManager;->queryAndAggregateUsageStats(JJ)Ljava/util/Map;

    move-result-object v3

    .line 1681
    .local v3, "statsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    if-eqz v3, :cond_4c

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4c

    .line 1682
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1684
    .local v4, "entryList":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_43

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 1685
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/usage/UsageStats;

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1686
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    goto :goto_2d

    .line 1688
    :cond_43
    new-instance v5, Lcom/android/server/pm/PackageManagerServiceInjector$4;

    invoke-direct {v5}, Lcom/android/server/pm/PackageManagerServiceInjector$4;-><init>()V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1696
    return-object v4

    .line 1700
    .end local v1    # "tillTime":J
    .end local v3    # "statsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    .end local v4    # "entryList":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    :cond_4c
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static getSecondaryDexOptPackages(Lcom/android/server/pm/PackageManagerService;)Ljava/util/List;
    .registers 7
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1746
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1747
    .local v0, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sSecondaryDexOptPkgs:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1750
    const/4 v1, 0x0

    .line 1751
    .local v1, "count":I
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getTop10ThirdPartyPkgs(Lcom/android/server/pm/PackageManagerService;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1752
    .local v3, "pkg":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_39

    sget-object v4, Lcom/android/server/pm/PackageManagerServiceInjector;->sSecondaryDexOptBlackList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_39

    .line 1753
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1754
    add-int/lit8 v4, v1, 0x1

    .local v4, "count":I
    const/4 v5, 0x5

    if-lt v1, v5, :cond_38

    .line 1755
    .end local v1    # "count":I
    nop

    .line 1760
    move v1, v4

    goto :goto_3a

    .line 1758
    .end local v3    # "pkg":Ljava/lang/String;
    :cond_38
    move v1, v4

    .end local v4    # "count":I
    .restart local v1    # "count":I
    :cond_39
    goto :goto_13

    .line 1760
    :cond_3a
    :goto_3a
    return-object v0
.end method

.method static getSystemResolveInfo(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;)Landroid/content/pm/ResolveInfo;
    .registers 10
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .line 326
    .local p1, "riList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    .line 327
    .local v0, "ret":Landroid/content/pm/ResolveInfo;
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget v2, v2, Landroid/content/pm/ResolveInfo;->match:I

    .line 328
    .local v2, "match":I
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 329
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_14
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 330
    .local v5, "ri":Landroid/content/pm/ResolveInfo;
    iget v6, v5, Landroid/content/pm/ResolveInfo;->priority:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget v7, v7, Landroid/content/pm/ResolveInfo;->priority:I

    if-ge v6, v7, :cond_2d

    .line 331
    goto :goto_4d

    .line 334
    :cond_2d
    iget v6, v5, Landroid/content/pm/ResolveInfo;->match:I

    if-le v6, v2, :cond_35

    .line 335
    iget v2, v5, Landroid/content/pm/ResolveInfo;->match:I

    .line 336
    const/4 v0, 0x0

    goto :goto_3d

    .line 337
    :cond_35
    iget v6, v5, Landroid/content/pm/ResolveInfo;->match:I

    if-ge v6, v2, :cond_3a

    .line 338
    goto :goto_14

    .line 340
    :cond_3a
    if-eqz v0, :cond_3d

    .line 341
    goto :goto_14

    .line 345
    :cond_3d
    :goto_3d
    iget-boolean v6, v5, Landroid/content/pm/ResolveInfo;->system:Z

    if-eqz v6, :cond_4c

    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v6}, Lmiui/content/pm/ExtraPackageManager;->isMiuiSystemApp(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4c

    .line 346
    move-object v0, v5

    .line 348
    .end local v5    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_4c
    goto :goto_14

    .line 349
    :cond_4d
    :goto_4d
    return-object v0
.end method

.method private static getTop10ThirdPartyPkgs(Lcom/android/server/pm/PackageManagerService;)Ljava/util/Set;
    .registers 8
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1705
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sTop10ThirdPartyPks:Ljava/util/Set;

    if-nez v0, :cond_4f

    .line 1706
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sTop10ThirdPartyPks:Ljava/util/Set;

    .line 1708
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getRecentlyWeekUsageStats(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 1710
    .local v0, "usageStats":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1711
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/app/usage/UsageStats;>;"
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    sget-object v2, Lcom/android/server/pm/PackageManagerServiceInjector;->sTop10ThirdPartyPks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_4f

    .line 1712
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/UsageStats;

    .line 1713
    .local v2, "usage":Landroid/app/usage/UsageStats;
    invoke-virtual {v2}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1715
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v4

    .line 1716
    :try_start_32
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$Package;

    .line 1717
    .local v5, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_4a

    invoke-virtual {v5}, Landroid/content/pm/PackageParser$Package;->isSystem()Z

    move-result v6

    if-eqz v6, :cond_43

    goto :goto_4a

    .line 1720
    .end local v5    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_43
    monitor-exit v4
    :try_end_44
    .catchall {:try_start_32 .. :try_end_44} :catchall_4c

    .line 1722
    sget-object v4, Lcom/android/server/pm/PackageManagerServiceInjector;->sTop10ThirdPartyPks:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1723
    .end local v2    # "usage":Landroid/app/usage/UsageStats;
    .end local v3    # "packageName":Ljava/lang/String;
    goto :goto_15

    .line 1718
    .restart local v2    # "usage":Landroid/app/usage/UsageStats;
    .restart local v3    # "packageName":Ljava/lang/String;
    .restart local v5    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_4a
    :goto_4a
    :try_start_4a
    monitor-exit v4

    goto :goto_15

    .line 1720
    .end local v5    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catchall_4c
    move-exception v5

    monitor-exit v4
    :try_end_4e
    .catchall {:try_start_4a .. :try_end_4e} :catchall_4c

    throw v5

    .line 1726
    .end local v0    # "usageStats":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/app/usage/UsageStats;>;"
    .end local v2    # "usage":Landroid/app/usage/UsageStats;
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_4f
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sTop10ThirdPartyPks:Ljava/util/Set;

    return-object v0
.end method

.method public static handleFirstUseActivity(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V
    .registers 10
    .param p0, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2007
    sget-boolean v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sEnableBgDexopt:Z

    if-eqz v0, :cond_7

    .line 2008
    const-string v0, "bg-filter:speed-profile"

    .line 2008
    .local v0, "compileFilter":Ljava/lang/String;
    goto :goto_a

    .line 2010
    .end local v0    # "compileFilter":Ljava/lang/String;
    :cond_7
    const-string/jumbo v0, "speed-profile"

    .line 2012
    .restart local v0    # "compileFilter":Ljava/lang/String;
    :goto_a
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/PackageManagerService;->performDexOptMode(Ljava/lang/String;ZLjava/lang/String;ZZLjava/lang/String;)Z

    move-result v1

    .line 2013
    .local v1, "success":Z
    sget-object v2, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FirstUseActivity packageName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is compiled using filter = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", success = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2015
    const-class v2, Lcom/android/server/PinnerService;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PinnerService;

    .line 2016
    .local v2, "pinnerService":Lcom/android/server/PinnerService;
    if-eqz v2, :cond_66

    .line 2017
    sget-object v3, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FirstUseActivity Pinning optimized code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2018
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 2019
    .local v3, "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v3, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2020
    invoke-virtual {v2, v3}, Lcom/android/server/PinnerService;->update(Landroid/util/ArraySet;)V

    .line 2022
    .end local v3    # "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_66
    return-void
.end method

.method public static handlePackageFirstStart(Ljava/lang/String;)V
    .registers 5
    .param p0, "packageName"    # Ljava/lang/String;

    .line 2095
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    .line 2096
    .local v0, "pm":Lcom/android/server/pm/PackageManagerService;
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getDexManager()Lcom/android/server/pm/dex/DexManager;

    move-result-object v1

    .line 2097
    .local v1, "dm":Lcom/android/server/pm/dex/DexManager;
    const-string v2, "dalvik.vm.dexopt.secondary"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_35

    const-string/jumbo v2, "pm.dexopt.is_upgrade"

    .line 2098
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_35

    if-eqz v1, :cond_35

    .line 2099
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clean-oat:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/dex/DexManager;->reconcileSecondaryDexFiles(Ljava/lang/String;)V

    .line 2101
    :cond_35
    return-void
.end method

.method static hasVerfiyAlways(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;I)Z
    .registers 8
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I)Z"
        }
    .end annotation

    .line 2063
    .local p1, "query":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 2064
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2065
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p0, v2, p2}, Lcom/android/server/pm/PackageManagerService;->getIntentVerificationStatus(Ljava/lang/String;I)I

    move-result v3

    .line 2066
    .local v3, "status":I
    const/4 v4, 0x2

    if-ne v3, v4, :cond_1d

    .line 2067
    const/4 v0, 0x1

    return v0

    .line 2069
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "status":I
    :cond_1d
    goto :goto_4

    .line 2070
    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method private static hideOrDisplayApp()V
    .registers 11

    .line 1355
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x18

    if-lt v0, v2, :cond_68

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_68

    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-eqz v0, :cond_68

    .line 1356
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    .line 1357
    .local v0, "pms":Lcom/android/server/pm/PackageManagerService;
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v2

    invoke-static {v2}, Landroid/content/pm/PackageHideManager;->getInstance(Z)Landroid/content/pm/PackageHideManager;

    move-result-object v2

    .line 1358
    .local v2, "phm":Landroid/content/pm/PackageHideManager;
    invoke-virtual {v2}, Landroid/content/pm/PackageHideManager;->getIgnoreApkPkgNameList()Ljava/util/List;

    move-result-object v3

    .line 1359
    .local v3, "ignoreApkPkgNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v3, :cond_24

    .line 1360
    return-void

    .line 1362
    :cond_24
    invoke-virtual {v2}, Landroid/content/pm/PackageHideManager;->isAppHide()Z

    move-result v4

    .line 1363
    .local v4, "appHide":Z
    sget-object v5, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "appHide: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 1365
    .local v5, "settings":Lcom/android/server/pm/Settings;
    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v6

    .line 1366
    :try_start_43
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_47
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_63

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1367
    .local v8, "pkgName":Ljava/lang/String;
    iget-object v9, v5, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/PackageSetting;

    .line 1368
    .local v9, "packageSetting":Lcom/android/server/pm/PackageSetting;
    if-eqz v9, :cond_62

    .line 1369
    xor-int/lit8 v10, v4, 0x1

    invoke-virtual {v9, v10, v1}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 1371
    .end local v8    # "pkgName":Ljava/lang/String;
    .end local v9    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    :cond_62
    goto :goto_47

    .line 1372
    :cond_63
    monitor-exit v6

    goto :goto_68

    :catchall_65
    move-exception v1

    monitor-exit v6
    :try_end_67
    .catchall {:try_start_43 .. :try_end_67} :catchall_65

    throw v1

    .line 1375
    .end local v0    # "pms":Lcom/android/server/pm/PackageManagerService;
    .end local v2    # "phm":Landroid/content/pm/PackageHideManager;
    .end local v3    # "ignoreApkPkgNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "appHide":Z
    .end local v5    # "settings":Lcom/android/server/pm/Settings;
    :cond_68
    :goto_68
    const-string v0, "clover"

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 1376
    const-string/jumbo v0, "ro.radio.noril"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1377
    .local v0, "isWifiOnly":Z
    if-eqz v0, :cond_a7

    .line 1378
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageManagerService;

    .line 1379
    .local v2, "pms":Lcom/android/server/pm/PackageManagerService;
    iget-object v3, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 1380
    :try_start_84
    sget-object v4, Lcom/android/server/pm/PackageManagerServiceInjector;->WIFI_ONLY_BLOCK_APPS:[Ljava/lang/String;

    array-length v5, v4

    move v6, v1

    :goto_88
    if-ge v6, v5, :cond_a2

    aget-object v7, v4, v6

    .line 1381
    .local v7, "pkgName":Ljava/lang/String;
    iget-object v8, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v8, v8, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/PackageSetting;

    .line 1382
    .local v8, "packageSetting":Lcom/android/server/pm/PackageSetting;
    if-eqz v8, :cond_9f

    .line 1383
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-virtual {v8, v1, v9}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 1380
    .end local v7    # "pkgName":Ljava/lang/String;
    .end local v8    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    :cond_9f
    add-int/lit8 v6, v6, 0x1

    goto :goto_88

    .line 1386
    :cond_a2
    monitor-exit v3

    goto :goto_a7

    :catchall_a4
    move-exception v1

    monitor-exit v3
    :try_end_a6
    .catchall {:try_start_84 .. :try_end_a6} :catchall_a4

    throw v1

    .line 1389
    .end local v0    # "isWifiOnly":Z
    .end local v2    # "pms":Lcom/android/server/pm/PackageManagerService;
    :cond_a7
    :goto_a7
    return-void
.end method

.method static ignoreApk(Ljava/lang/String;)Z
    .registers 2
    .param p0, "path"    # Ljava/lang/String;

    .line 280
    if-eqz p0, :cond_9

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnoreApks:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method static ignorePackage(Ljava/lang/String;)Z
    .registers 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 290
    if-eqz p0, :cond_9

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnorePackages:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method private static installBlockApps(Landroid/content/Context;)V
    .registers 12
    .param p0, "context"    # Landroid/content/Context;

    .line 1413
    const-string/jumbo v0, "support_oldman_mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 1414
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    .line 1415
    .local v0, "pms":Lcom/android/server/pm/PackageManagerService;
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 1416
    .local v2, "settings":Lcom/android/server/pm/Settings;
    move v3, v1

    .line 1416
    .local v3, "mode":I
    :goto_13
    sget-object v4, Lcom/android/server/pm/PackageManagerServiceInjector;->BLOCK_APPS:[[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_3a

    .line 1417
    sget-object v4, Lcom/android/server/pm/PackageManagerServiceInjector;->BLOCK_APPS:[[Ljava/lang/String;

    aget-object v4, v4, v3

    array-length v5, v4

    move v6, v1

    :goto_1e
    if-ge v6, v5, :cond_37

    aget-object v7, v4, v6

    .line 1418
    .local v7, "pkgName":Ljava/lang/String;
    iget-object v8, v2, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/PackageSetting;

    .line 1419
    .local v8, "packageSetting":Lcom/android/server/pm/PackageSetting;
    if-eqz v8, :cond_34

    .line 1420
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    const/4 v10, 0x1

    invoke-virtual {v8, v10, v9}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 1417
    .end local v7    # "pkgName":Ljava/lang/String;
    .end local v8    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    :cond_34
    add-int/lit8 v6, v6, 0x1

    goto :goto_1e

    .line 1416
    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 1425
    .end local v0    # "pms":Lcom/android/server/pm/PackageManagerService;
    .end local v2    # "settings":Lcom/android/server/pm/Settings;
    .end local v3    # "mode":I
    :cond_3a
    return-void
.end method

.method static isAllowedDisable(Ljava/lang/String;I)Z
    .registers 4

    const/4 v0, 0x1

    return v0
.end method

.method static isAllowedHideApp(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZI)Z
    .registers 9

    const/4 v0, 0x1

    return v0
.end method

.method public static isAllowedInstall(Landroid/content/Context;Ljava/io/File;ILjava/lang/String;)Z
    .registers 22
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "originFile"    # Ljava/io/File;
    .param p2, "callingUid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p2

    .line 1177
    const/16 v3, -0x6f

    if-eqz p1, :cond_17

    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->isApkForbiddenToInstall(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_17

    .line 1178
    :cond_f
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v5, "The package is forbid to install"

    invoke-direct {v0, v3, v5}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1180
    :cond_17
    :goto_17
    move-object/from16 v5, p3

    .line 1181
    .local v5, "pkg":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 1182
    .local v6, "originPath":Ljava/lang/String;
    const/4 v7, 0x1

    if-nez v6, :cond_21

    .line 1183
    return v7

    .line 1185
    :cond_21
    const/16 v8, 0x7d0

    if-ne v2, v8, :cond_6a

    .line 1186
    const/4 v0, -0x1

    move v9, v0

    .line 1188
    .local v9, "result":I
    :try_start_27
    invoke-static/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->isSecondUserlocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1189
    const/4 v0, 0x2

    .line 1195
    .end local v9    # "result":I
    .local v0, "result":I
    :goto_2e
    move v9, v0

    goto :goto_35

    .line 1191
    .end local v0    # "result":I
    .restart local v9    # "result":I
    :cond_30
    invoke-static {v6}, Lcom/android/commands/pm/PmInjector;->installVerify(Ljava/lang/String;)I

    move-result v0
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_34} :catch_36

    goto :goto_2e

    .line 1195
    :goto_35
    goto :goto_3e

    .line 1193
    :catch_36
    move-exception v0

    .line 1194
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v10, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string v11, "Error"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1196
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_3e
    const/4 v0, 0x2

    if-ne v9, v0, :cond_42

    .line 1196
    .end local v9    # "result":I
    goto :goto_6a

    .line 1197
    .restart local v9    # "result":I
    :cond_42
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MIUILOG- INSTALL_FAILED_USER_RESTRICTED  uid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " pkg : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    invoke-static {v9}, Lcom/android/commands/pm/PmInjector;->statusToString(I)Ljava/lang/String;

    move-result-object v0

    .line 1199
    .local v0, "msg":Ljava/lang/String;
    new-instance v7, Lcom/android/server/pm/PackageManagerException;

    invoke-direct {v7, v3, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v7

    .line 1203
    .end local v0    # "msg":Ljava/lang/String;
    .end local v9    # "result":I
    :cond_6a
    :goto_6a
    if-eqz v2, :cond_1b8

    invoke-static {}, Landroid/miui/AppOpsUtils;->isXOptMode()Z

    move-result v0

    if-eqz v0, :cond_74

    goto/16 :goto_1b8

    .line 1208
    :cond_74
    const/16 v0, 0x3e8

    if-ne v2, v0, :cond_79

    .line 1209
    return v7

    .line 1212
    :cond_79
    invoke-static {v1, v2, v5}, Lcom/android/server/pm/PackageManagerServiceInjector;->isEnterpriseAllowedInstall(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1ae

    .line 1218
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v9

    .line 1219
    .local v9, "packagesForUid":[Ljava/lang/String;
    const/4 v10, 0x0

    if-eqz v9, :cond_c0

    array-length v0, v9

    if-lez v0, :cond_c0

    .line 1220
    aget-object v5, v9, v10

    .line 1221
    const-string v0, "com.android.vending"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bf

    const-string v0, "com.xiaomi.market"

    .line 1222
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bf

    const-string v0, "com.xiaomi.gamecenter"

    .line 1223
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bf

    const-string v0, "com.miui.securitycenter"

    .line 1224
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bf

    const-string v0, "com.amazon.venezia"

    .line 1225
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bf

    const-string v0, "com.xiaomi.mipicks"

    .line 1226
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c0

    .line 1227
    :cond_bf
    return v7

    .line 1232
    :cond_c0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->isReleaseRom(Landroid/content/pm/PackageManager;)Z

    move-result v0

    if-eqz v0, :cond_177

    .line 1233
    new-instance v0, Landroid/content/Intent;

    const-string v11, "com.miui.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-direct {v0, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v11, v0

    .line 1234
    .local v11, "verification":Landroid/content/Intent;
    const-string v0, "com.miui.securitycenter"

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1235
    const/high16 v0, 0x10000000

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1236
    const-string/jumbo v0, "path"

    invoke-virtual {v11, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1237
    const-string v0, "installerPackage"

    invoke-virtual {v11, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1238
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v12, -0x64

    invoke-direct {v0, v12}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move-object v13, v0

    .line 1239
    .local v13, "result":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v14, v0

    .line 1240
    .local v14, "countDownLatch":Ljava/util/concurrent/CountDownLatch;
    new-instance v0, Lcom/android/server/pm/PackageManagerServiceInjector$3;

    invoke-direct {v0, v13, v14}, Lcom/android/server/pm/PackageManagerServiceInjector$3;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;)V

    move-object v15, v0

    .line 1248
    .local v15, "messenger":Landroid/os/IMessenger$Stub;
    const-string/jumbo v0, "observer"

    invoke-virtual {v11, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    .line 1249
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1250
    .local v0, "userId":I
    if-ne v2, v8, :cond_108

    .line 1251
    const/4 v0, 0x0

    .line 1253
    .end local v0    # "userId":I
    .local v7, "userId":I
    :cond_108
    move v7, v0

    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, v7}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v16, v0

    .line 1254
    .local v16, "verifierUser":Landroid/os/UserHandle;
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string v8, "Package verify start"

    invoke-static {v0, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    const-string v0, "android.permission.PACKAGE_VERIFICATION_AGENT"

    move-object/from16 v8, v16

    invoke-virtual {v1, v11, v8, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1257
    .end local v16    # "verifierUser":Landroid/os/UserHandle;
    .local v8, "verifierUser":Landroid/os/UserHandle;
    const-wide/16 v3, 0x258

    :try_start_120
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v14, v3, v4, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_125
    .catch Ljava/lang/InterruptedException; {:try_start_120 .. :try_end_125} :catch_126

    .line 1260
    goto :goto_127

    .line 1258
    :catch_126
    move-exception v0

    .line 1261
    :goto_127
    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 1262
    .local v0, "code":I
    if-ne v0, v12, :cond_14c

    .line 1263
    sget-object v3, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MIUILOG- INSTALL_FAILED_VERIFICATION time out  uid: "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " pkg : "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    return v10

    .line 1266
    :cond_14c
    if-eqz v0, :cond_14f

    .line 1266
    .end local v0    # "code":I
    .end local v7    # "userId":I
    .end local v8    # "verifierUser":Landroid/os/UserHandle;
    .end local v11    # "verification":Landroid/content/Intent;
    .end local v13    # "result":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v14    # "countDownLatch":Ljava/util/concurrent/CountDownLatch;
    .end local v15    # "messenger":Landroid/os/IMessenger$Stub;
    goto :goto_177

    .line 1267
    .restart local v0    # "code":I
    .restart local v7    # "userId":I
    .restart local v8    # "verifierUser":Landroid/os/UserHandle;
    .restart local v11    # "verification":Landroid/content/Intent;
    .restart local v13    # "result":Ljava/util/concurrent/atomic/AtomicInteger;
    .restart local v14    # "countDownLatch":Ljava/util/concurrent/CountDownLatch;
    .restart local v15    # "messenger":Landroid/os/IMessenger$Stub;
    :cond_14f
    sget-object v3, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MIUILOG- INSTALL_FAILED_VERIFICATION_FAILURE  uid: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " pkg : "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    new-instance v3, Lcom/android/server/pm/PackageManagerException;

    const-string v4, "FAILED_VERIFICATION_FAILURE MIUI"

    const/16 v10, -0x16

    invoke-direct {v3, v10, v4}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 1272
    .end local v0    # "code":I
    .end local v7    # "userId":I
    .end local v8    # "verifierUser":Landroid/os/UserHandle;
    .end local v11    # "verification":Landroid/content/Intent;
    .end local v13    # "result":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v14    # "countDownLatch":Ljava/util/concurrent/CountDownLatch;
    .end local v15    # "messenger":Landroid/os/IMessenger$Stub;
    :cond_177
    :goto_177
    const/16 v3, 0x7d0

    if-eq v2, v3, :cond_1ac

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_184

    goto :goto_1ac

    .line 1276
    :cond_184
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MIUILOG- Install Reject uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " pkg : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/16 v3, -0x6e

    const-string v4, "Permission Denied"

    invoke-direct {v0, v3, v4}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1273
    :cond_1ac
    :goto_1ac
    const/4 v3, 0x1

    return v3

    .line 1213
    .end local v9    # "packagesForUid":[Ljava/lang/String;
    :cond_1ae
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v3, "FAILED_VERIFICATION_FAILURE ENTERPRISE"

    const/16 v4, -0x16

    invoke-direct {v0, v4, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1204
    :cond_1b8
    :goto_1b8
    move v3, v7

    return v3
.end method

.method private static isApkForbiddenToInstall(Ljava/io/File;)Z
    .registers 6
    .param p0, "path"    # Ljava/io/File;

    .line 1294
    const/4 v0, 0x0

    .line 1296
    .local v0, "pkg":Landroid/content/pm/PackageParser$ApkLite;
    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1298
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 1299
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_18

    array-length v3, v2

    if-lez v3, :cond_18

    .line 1300
    aget-object v3, v2, v1

    invoke-static {v3, v1}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$ApkLite;

    move-result-object v3

    move-object v0, v3

    .line 1302
    .end local v2    # "files":[Ljava/io/File;
    :cond_18
    goto :goto_1e

    .line 1304
    :cond_19
    invoke-static {p0, v1}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$ApkLite;

    move-result-object v2

    move-object v0, v2

    .line 1306
    :goto_1e
    if-eqz v0, :cond_48

    iget-object v2, v0, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_48

    sget-object v2, Lcom/android/server/pm/PackageManagerServiceInjector;->sForbiddenToInstalledPackages:Ljava/util/Set;

    iget-object v3, v0, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 1307
    sget-object v2, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MIUILOG- INSTALL_FAILED_USER_RESTRICTED pkg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_2 .. :try_end_46} :catch_49

    .line 1308
    const/4 v1, 0x1

    return v1

    .line 1310
    :cond_48
    return v1

    .line 1311
    :catch_49
    move-exception v2

    .line 1312
    .local v2, "e":Landroid/content/pm/PackageParser$PackageParserException;
    return v1
.end method

.method public static isCTS()Z
    .registers 3

    .line 1847
    const-string/jumbo v0, "persist.sys.miui_optimization"

    const-string v1, "1"

    const-string/jumbo v2, "ro.miui.cts"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static isCallerAllowedToSilentlyUninstall(ILcom/android/server/pm/PackageManagerService;)Z
    .registers 9
    .param p0, "callingUid"    # I
    .param p1, "pms"    # Lcom/android/server/pm/PackageManagerService;

    .line 1497
    invoke-virtual {p1, p0}, Lcom/android/server/pm/PackageManagerService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 1498
    .local v0, "pkgs":[Ljava/lang/String;
    iget-object v1, p1, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1499
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_9
    :try_start_9
    array-length v4, v0

    if-ge v3, v4, :cond_32

    .line 1500
    sget-object v4, Lcom/android/server/pm/PackageManagerServiceInjector;->sSilentlyUninstallPackages:Ljava/util/Set;

    aget-object v5, v0, v3

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 1501
    iget-object v4, p1, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageParser$Package;

    .line 1502
    .local v4, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_2f

    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    iget-object v6, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v5, v6, :cond_2f

    .line 1503
    monitor-exit v1

    const/4 v1, 0x1

    return v1

    .line 1499
    .end local v4    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 1507
    .end local v3    # "i":I
    :cond_32
    monitor-exit v1

    .line 1509
    return v2

    .line 1507
    :catchall_34
    move-exception v2

    monitor-exit v1
    :try_end_36
    .catchall {:try_start_9 .. :try_end_36} :catchall_34

    throw v2
.end method

.method static isEnterpriseAllowedInstall(Landroid/content/Context;ILjava/lang/String;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callingUid"    # I
    .param p2, "callerPackage"    # Ljava/lang/String;

    .line 1863
    sget-boolean v0, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 1864
    return v1

    .line 1866
    :cond_6
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {p0, v0}, Lcom/miui/enterprise/ApplicationHelper;->isTrustedAppStoresEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_43

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sEPAllowedPackage:Ljava/util/List;

    .line 1867
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    .line 1869
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1868
    invoke-static {p0, v0}, Lcom/miui/enterprise/ApplicationHelper;->getTrustedAppStores(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    .line 1869
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    .line 1870
    const-string v0, "Enterprise"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Installer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was forbid to install pkg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1871
    const/4 v0, 0x0

    return v0

    .line 1873
    :cond_43
    return v1
.end method

.method private static isNonProfileFilterNeeded(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)Z
    .registers 3
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1667
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sNonProfileCompiledPkgs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 1668
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getTop10ThirdPartyPkgs(Lcom/android/server/pm/PackageManagerService;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    .line 1667
    :goto_16
    return v0
.end method

.method private static isOpenByGooglePlayStore(Landroid/content/Intent;Lcom/android/server/pm/PackageManagerService;)Z
    .registers 8
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "pms"    # Lcom/android/server/pm/PackageManagerService;

    .line 466
    const-string/jumbo v0, "market"

    invoke-virtual {p0}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_88

    const-string v0, "android.intent.action.VIEW"

    .line 467
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_88

    .line 470
    :cond_1b
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_87

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2c

    goto :goto_87

    .line 473
    :cond_2c
    invoke-virtual {p0}, Landroid/content/Intent;->getSender()Ljava/lang/String;

    move-result-object v0

    .line 474
    .local v0, "callingApp":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 475
    return v1

    .line 477
    :cond_37
    const/4 v1, 0x1

    .line 479
    .local v1, "isOpenByGP":Z
    :try_start_38
    sget-object v2, Lcom/android/server/pm/PackageManagerServiceInjector;->sGlobalRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 480
    const-string v2, "1"

    sget-object v3, Lcom/android/server/pm/PackageManagerServiceInjector;->sGlobalSyncKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    sget-object v2, Lcom/android/server/pm/PackageManagerServiceInjector;->sGlobalWhitePackageList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_51} :catch_60
    .catchall {:try_start_38 .. :try_end_51} :catchall_5e

    if-nez v2, :cond_54

    .line 481
    :cond_53
    const/4 v1, 0x0

    .line 486
    :cond_54
    :goto_54
    sget-object v2, Lcom/android/server/pm/PackageManagerServiceInjector;->sGlobalRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 487
    goto :goto_7c

    .line 486
    :catchall_5e
    move-exception v2

    goto :goto_7d

    .line 483
    :catch_60
    move-exception v2

    .line 484
    .local v2, "e":Ljava/lang/Exception;
    :try_start_61
    sget-object v3, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7b
    .catchall {:try_start_61 .. :try_end_7b} :catchall_5e

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_54

    .line 488
    :goto_7c
    return v1

    .line 486
    :goto_7d
    sget-object v3, Lcom/android/server/pm/PackageManagerServiceInjector;->sGlobalRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v2

    .line 471
    .end local v0    # "callingApp":Ljava/lang/String;
    .end local v1    # "isOpenByGP":Z
    :cond_87
    :goto_87
    return v1

    .line 468
    :cond_88
    :goto_88
    return v1
.end method

.method static isPreinstallApp(Ljava/lang/String;)Z
    .registers 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 1794
    invoke-static {p0}, Lcom/android/server/pm/PreinstallApp;->isPreinstallApp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized isReleaseRom(Landroid/content/pm/PackageManager;)Z
    .registers 10
    .param p0, "pm"    # Landroid/content/pm/PackageManager;

    const-class v0, Lcom/android/server/pm/PackageManagerServiceInjector;

    monitor-enter v0

    .line 1317
    :try_start_3
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sIsPlatformSignature:Ljava/lang/Boolean;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_41

    if-nez v1, :cond_39

    .line 1318
    const/4 v1, 0x0

    move v2, v1

    .line 1320
    .local v2, "isPlatform":Z
    :try_start_9
    const-string v3, "android"

    const/16 v4, 0x40

    invoke-virtual {p0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 1321
    .local v3, "pInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 1322
    .local v4, "platformSignature":[Landroid/content/pm/Signature;
    new-instance v5, Landroid/content/pm/Signature;

    const-string v6, "3082046c30820354a003020102020900e552a8ecb9011b7c300d06092a864886f70d0101050500308180310b300906035504061302434e3110300e060355040813074265696a696e673110300e060355040713074265696a696e67310f300d060355040a13065869616f6d69310d300b060355040b13044d495549310d300b060355040313044d495549311e301c06092a864886f70d010901160f6d697569407869616f6d692e636f6d301e170d3131313230363033323632365a170d3339303432333033323632365a308180310b300906035504061302434e3110300e060355040813074265696a696e673110300e060355040713074265696a696e67310f300d060355040a13065869616f6d69310d300b060355040b13044d495549310d300b060355040313044d495549311e301c06092a864886f70d010901160f6d697569407869616f6d692e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100c786568a9aff253ad74c5d3e6fbffa12fed44cd3244f18960ec5511bb551e413115197234845112cc3df9bbacd3e0f4b3528cd87ed397d577dc9008e9cbc6a25fc0664d3a3f440243786db8b250d40f6f148c9a3cd6fbc2dd8d24039bd6a8972a1bdee28c308798bfa9bb3b549877b10f98e265f118c05f264537d95e29339157b9d2a31485e0c823521cca6d0b721a8432600076d669e20ac43aa588b52c11c2a51f04c6bb31ad6ae8573991afe8e4957d549591fcb83ec62d1da35b1727dc6b63001a5ef387b5a7186c1e68da1325772b5307b1bc739ef236b9efe06d52dcaf1e32768e3403e55e3ec56028cf5680cfb33971ccf7870572bc47d3e3affa385020103a381e83081e5301d0603551d0e0416041491ae2f8c72e305f92aa9f7452e2a3160b841a15c3081b50603551d230481ad3081aa801491ae2f8c72e305f92aa9f7452e2a3160b841a15ca18186a48183308180310b300906035504061302434e3110300e060355040813074265696a696e673110300e060355040713074265696a696e67310f300d060355040a13065869616f6d69310d300b060355040b13044d495549310d300b060355040313044d495549311e301c06092a864886f70d010901160f6d697569407869616f6d692e636f6d820900e552a8ecb9011b7c300c0603551d13040530030101ff300d06092a864886f70d010105050003820101003b3a699ceb497300f2ab86cbd41c513440bf60aa5c43984eb1da140ef30544d9fbbb3733df24b26f2703d7ffc645bf598a5e6023596a947e91731542f2c269d0816a69c92df9bfe8b1c9bc3c54c46c12355bb4629fe6020ca9d15f8d6155dc5586f5616db806ecea2d06bd83e32b5f13f5a04fe3e5aa514f05df3d555526c63d3d62acf00adee894b923c2698dc571bc52c756ffa7a2221d834d10cb7175c864c30872fe217c31442dff0040a67a2fb1c8ba63eac2d5ba3d8e76b4ff2a49b0db8a33ef4ae0dd0a840dd2a8714cb5531a56b786819ec9eb1051d91b23fde06bd9d0708f150c4f9efe6a416ca4a5e0c23a952af931ad3579fb4a8b19de98f64bd9"

    invoke-direct {v5, v6}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    .line 1323
    .local v5, "platformSig":Landroid/content/pm/Signature;
    array-length v6, v4

    :goto_1b
    if-ge v1, v6, :cond_2a

    aget-object v7, v4, v1

    .line 1324
    .local v7, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v5, v7}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_23} :catch_2b
    .catchall {:try_start_9 .. :try_end_23} :catchall_41

    if-eqz v8, :cond_27

    .line 1325
    const/4 v2, 0x1

    .line 1326
    goto :goto_2a

    .line 1323
    .end local v7    # "sig":Landroid/content/pm/Signature;
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 1331
    .end local v3    # "pInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "platformSignature":[Landroid/content/pm/Signature;
    .end local v5    # "platformSig":Landroid/content/pm/Signature;
    :cond_2a
    :goto_2a
    goto :goto_33

    .line 1329
    :catch_2b
    move-exception v1

    .line 1330
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2c
    sget-object v3, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string v4, "error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_33
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sIsPlatformSignature:Ljava/lang/Boolean;

    .line 1334
    .end local v2    # "isPlatform":Z
    :cond_39
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sIsPlatformSignature:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_3f
    .catchall {:try_start_2c .. :try_end_3f} :catchall_41

    monitor-exit v0

    return v1

    .line 1316
    .end local p0    # "pm":Landroid/content/pm/PackageManager;
    :catchall_41
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static isSecondUserlocked(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 1962
    invoke-static {}, Landroid/miui/AppOpsUtils;->isXOptMode()Z

    move-result v0

    .line 1963
    .local v0, "iscts":Z
    invoke-static {}, Lcom/android/commands/pm/PmInjector;->getDefaultUserId()I

    move-result v1

    .line 1964
    .local v1, "userid":I
    const-string/jumbo v2, "user"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 1965
    .local v2, "userManager":Landroid/os/UserManager;
    if-eqz v0, :cond_1d

    if-eqz v1, :cond_1d

    invoke-virtual {v2, v1}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 1966
    const/4 v3, 0x1

    return v3

    .line 1968
    :cond_1d
    const/4 v3, 0x0

    return v3
.end method

.method static isVerificationEnabled(Landroid/content/Context;III)Z
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .param p2, "installFlags"    # I
    .param p3, "installerUid"    # I

    .line 1903
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    .line 1905
    return v2

    .line 1908
    :cond_f
    invoke-static {}, Landroid/miui/AppOpsUtils;->isXOptMode()Z

    move-result v0

    .line 1909
    .local v0, "isCtsBuild":Z
    if-nez v0, :cond_1f

    .line 1910
    sget-boolean v3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v3, :cond_1a

    .line 1911
    return v2

    .line 1915
    :cond_1a
    const/16 v3, 0x3e8

    if-ne p3, v3, :cond_1f

    .line 1916
    return v2

    .line 1921
    :cond_1f
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "package_verifier_enable"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_2d

    goto :goto_2e

    :cond_2d
    move v1, v2

    :goto_2e
    return v1
.end method

.method public static isWriteNowNeeded(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p0, "dexPath"    # Ljava/lang/String;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2105
    const/4 v0, 0x0

    if-eqz p0, :cond_35

    if-nez p1, :cond_6

    goto :goto_35

    .line 2106
    :cond_6
    const-string v1, "com.tencent.mm"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    const-string/jumbo v1, "tinker_classN"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 2107
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dex-load dexPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " needs write now."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2108
    const/4 v0, 0x1

    return v0

    .line 2110
    :cond_34
    return v0

    .line 2105
    :cond_35
    :goto_35
    return v0
.end method

.method static isXSpaceCrossUser(I)Z
    .registers 2
    .param p0, "userId"    # I

    .line 1052
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {v0}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v0

    if-eqz v0, :cond_e

    if-nez p0, :cond_e

    .line 1053
    const/4 v0, 0x1

    return v0

    .line 1055
    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method static markCoreAppDexopt(JJ)V
    .registers 7
    .param p0, "startTime"    # J
    .param p2, "endTime"    # J

    .line 1623
    invoke-static {}, Lmiui/mqsas/sdk/BootEventManager;->getInstance()Lmiui/mqsas/sdk/BootEventManager;

    move-result-object v0

    sub-long v1, p2, p0

    invoke-virtual {v0, v1, v2}, Lmiui/mqsas/sdk/BootEventManager;->setCoreAppDexopt(J)V

    .line 1624
    return-void
.end method

.method static markPackageOptimized(Landroid/content/pm/PackageParser$Package;)V
    .registers 3
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 1627
    invoke-static {}, Lmiui/mqsas/sdk/BootEventManager;->getInstance()Lmiui/mqsas/sdk/BootEventManager;

    move-result-object v0

    .line 1628
    .local v0, "manager":Lmiui/mqsas/sdk/BootEventManager;
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$Package;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {p0}, Landroid/content/pm/PackageParser$Package;->isUpdatedSystemApp()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 1629
    invoke-virtual {v0}, Lmiui/mqsas/sdk/BootEventManager;->getDexoptSystemAppCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/BootEventManager;->setDexoptSystemAppCount(I)V

    goto :goto_23

    .line 1631
    :cond_1a
    invoke-virtual {v0}, Lmiui/mqsas/sdk/BootEventManager;->getDexoptThirdAppCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/BootEventManager;->setDexoptThirdAppCount(I)V

    .line 1633
    :goto_23
    return-void
.end method

.method static markPmsScanDetail(Lcom/android/server/pm/PackageManagerService;)V
    .registers 10
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;

    .line 1585
    const/4 v0, 0x0

    .line 1586
    .local v0, "thirdAppCount":I
    const/4 v1, 0x0

    .line 1587
    .local v1, "systemAppCount":I
    const/4 v2, 0x0

    .line 1589
    .local v2, "persistAppCount":I
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 1590
    :try_start_6
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1591
    .local v4, "pkgit":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/PackageParser$Package;>;"
    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_4d

    .line 1592
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$Package;

    .line 1594
    .local v5, "pkg":Landroid/content/pm/PackageParser$Package;
    iget-object v7, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v7, v6

    if-eqz v7, :cond_35

    .line 1595
    add-int/lit8 v1, v1, 0x1

    .line 1596
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v8, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/android/server/pm/Settings;->isDisabledSystemPackageLPr(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_37

    .line 1597
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    .line 1600
    :cond_35
    add-int/lit8 v0, v0, 0x1

    .line 1603
    :cond_37
    :goto_37
    iget-object v7, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x8

    if-eqz v7, :cond_4c

    iget-boolean v7, p0, Lcom/android/server/pm/PackageManagerService;->mSafeMode:Z

    if-eqz v7, :cond_4a

    iget-object v7, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v6, v7

    if-eqz v6, :cond_4c

    .line 1606
    :cond_4a
    add-int/lit8 v2, v2, 0x1

    .line 1608
    .end local v5    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_4c
    goto :goto_10

    .line 1609
    .end local v4    # "pkgit":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/PackageParser$Package;>;"
    :cond_4d
    monitor-exit v3
    :try_end_4e
    .catchall {:try_start_6 .. :try_end_4e} :catchall_7f

    .line 1611
    invoke-static {}, Lmiui/mqsas/sdk/BootEventManager;->getInstance()Lmiui/mqsas/sdk/BootEventManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lmiui/mqsas/sdk/BootEventManager;->setSystemAppCount(I)V

    .line 1612
    invoke-static {}, Lmiui/mqsas/sdk/BootEventManager;->getInstance()Lmiui/mqsas/sdk/BootEventManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lmiui/mqsas/sdk/BootEventManager;->setThirdAppCount(I)V

    .line 1613
    invoke-static {}, Lmiui/mqsas/sdk/BootEventManager;->getInstance()Lmiui/mqsas/sdk/BootEventManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lmiui/mqsas/sdk/BootEventManager;->setPersistAppCount(I)V

    .line 1614
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v3

    if-eqz v3, :cond_6b

    const/4 v6, 0x2

    goto :goto_73

    .line 1615
    :cond_6b
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->isUpgrade()Z

    move-result v3

    if-eqz v3, :cond_73

    const/4 v6, 0x3

    nop

    :cond_73
    :goto_73
    move v3, v6

    .line 1616
    .local v3, "type":I
    invoke-static {}, Lmiui/mqsas/sdk/BootEventManager;->getInstance()Lmiui/mqsas/sdk/BootEventManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lmiui/mqsas/sdk/BootEventManager;->setBootType(I)V

    .line 1619
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceInjector;->purgeAppsMovedToDataPartition()V

    .line 1620
    return-void

    .line 1609
    .end local v3    # "type":I
    :catchall_7f
    move-exception v4

    :try_start_80
    monitor-exit v3
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_7f

    throw v4
.end method

.method private static matchQuickApps(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 2051
    invoke-static {}, Lcom/miui/hybrid/hook/FilterInfoInjector;->getInstance()Lcom/miui/hybrid/hook/FilterInfoInjector;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/miui/hybrid/hook/FilterInfoInjector;->resolveAppInfos(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    .line 2052
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/QuickAppResolveInfo;>;"
    if-eqz v0, :cond_12

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_12

    .line 2053
    const/4 v1, 0x1

    return v1

    .line 2055
    :cond_12
    const/4 v1, 0x0

    return v1
.end method

.method public static maybeAdjustCompilerFilter(Landroid/content/pm/PackageParser$Package;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "compileReason"    # I
    .param p2, "orgCompilerFilter"    # Ljava/lang/String;
    .param p3, "profileName"    # Ljava/lang/String;
    .param p4, "dexMetadataPath"    # Ljava/lang/String;

    .line 1937
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    .line 1938
    .local v0, "foundDM":Z
    :goto_14
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getDataRefProfilesDePackageDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    .line 1939
    .local v1, "foundProfile":Z
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3e

    if-nez v0, :cond_3e

    if-nez v1, :cond_3e

    const-string/jumbo v2, "quicken"

    .line 1942
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e

    .line 1943
    sget-object v2, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string v3, "Compiler-filter replaced to quicken"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1944
    const-string/jumbo v2, "quicken"

    return-object v2

    .line 1946
    :cond_3e
    return-object p2
.end method

.method public static needClearDefaultBrowserSettings(Ljava/lang/String;)Z
    .registers 3
    .param p0, "currentDefaultPkg"    # Ljava/lang/String;

    .line 1807
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceInjector;->isCTS()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 1808
    return v1

    .line 1810
    :cond_8
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_d

    .line 1811
    return v1

    .line 1813
    :cond_d
    const-string v0, "com.android.browser"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method

.method public static onPackageDeleted(Ljava/lang/String;I)V
    .registers 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "retCode"    # I

    .line 1458
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V

    .line 1459
    return-void
.end method

.method public static onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    .registers 7
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "retCode"    # I
    .param p2, "retMsg"    # Ljava/lang/String;

    .line 1462
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 1463
    return-void

    .line 1465
    :cond_4
    new-instance v0, Lmiui/mqsas/sdk/event/PackageEvent;

    invoke-direct {v0}, Lmiui/mqsas/sdk/event/PackageEvent;-><init>()V

    .line 1466
    .local v0, "event":Lmiui/mqsas/sdk/event/PackageEvent;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/event/PackageEvent;->setType(I)V

    .line 1467
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lmiui/mqsas/sdk/event/PackageEvent;->setTimeStamp(J)V

    .line 1468
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/event/PackageEvent;->setAction(I)V

    .line 1469
    invoke-virtual {v0, p0}, Lmiui/mqsas/sdk/event/PackageEvent;->setPackageName(Ljava/lang/String;)V

    .line 1470
    invoke-virtual {v0, p1}, Lmiui/mqsas/sdk/event/PackageEvent;->setReturnCode(I)V

    .line 1471
    if-eqz p2, :cond_23

    move-object v1, p2

    goto :goto_25

    :cond_23
    const-string v1, ""

    :goto_25
    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/event/PackageEvent;->setReturnMsg(Ljava/lang/String;)V

    .line 1472
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MIUILOG-onPackageDeleted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportPackageEvent(Lmiui/mqsas/sdk/event/PackageEvent;)V

    .line 1474
    return-void
.end method

.method public static onPackageInstalled(Ljava/lang/String;ILjava/lang/String;ZLandroid/content/pm/PackageParser$Package;Ljava/lang/String;)V
    .registers 10
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "retCode"    # I
    .param p2, "retMsg"    # Ljava/lang/String;
    .param p3, "update"    # Z
    .param p4, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p5, "installerPkgName"    # Ljava/lang/String;

    .line 1440
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 1441
    return-void

    .line 1443
    :cond_4
    new-instance v1, Lmiui/mqsas/sdk/event/PackageEvent;

    invoke-direct {v1}, Lmiui/mqsas/sdk/event/PackageEvent;-><init>()V

    .line 1444
    .local v1, "event":Lmiui/mqsas/sdk/event/PackageEvent;
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lmiui/mqsas/sdk/event/PackageEvent;->setType(I)V

    .line 1445
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lmiui/mqsas/sdk/event/PackageEvent;->setTimeStamp(J)V

    .line 1446
    if-eqz p3, :cond_19

    const/4 v0, 0x3

    nop

    :cond_19
    invoke-virtual {v1, v0}, Lmiui/mqsas/sdk/event/PackageEvent;->setAction(I)V

    .line 1447
    invoke-virtual {v1, p0}, Lmiui/mqsas/sdk/event/PackageEvent;->setPackageName(Ljava/lang/String;)V

    .line 1448
    invoke-virtual {v1, p1}, Lmiui/mqsas/sdk/event/PackageEvent;->setReturnCode(I)V

    .line 1449
    if-eqz p2, :cond_26

    move-object v0, p2

    goto :goto_28

    :cond_26
    const-string v0, ""

    :goto_28
    invoke-virtual {v1, v0}, Lmiui/mqsas/sdk/event/PackageEvent;->setReturnMsg(Ljava/lang/String;)V

    .line 1450
    if-eqz p4, :cond_30

    iget v0, p4, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    goto :goto_31

    :cond_30
    const/4 v0, 0x0

    :goto_31
    invoke-virtual {v1, v0}, Lmiui/mqsas/sdk/event/PackageEvent;->setVersionCode(I)V

    .line 1451
    if-eqz p4, :cond_39

    iget-object v0, p4, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    goto :goto_3b

    :cond_39
    const-string v0, ""

    :goto_3b
    invoke-virtual {v1, v0}, Lmiui/mqsas/sdk/event/PackageEvent;->setVersionName(Ljava/lang/String;)V

    .line 1452
    if-eqz p5, :cond_42

    move-object v0, p5

    goto :goto_44

    :cond_42
    const-string v0, ""

    :goto_44
    invoke-virtual {v1, v0}, Lmiui/mqsas/sdk/event/PackageEvent;->setInstallerPkgName(Ljava/lang/String;)V

    .line 1453
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MIUILOG-onPackageInstalled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportPackageEvent(Lmiui/mqsas/sdk/event/PackageEvent;)V

    .line 1455
    return-void
.end method

.method public static onPackageInstalled(Ljava/lang/String;IZLandroid/content/pm/PackageParser$Package;Ljava/lang/String;)V
    .registers 11
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "retCode"    # I
    .param p2, "update"    # Z
    .param p3, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p4, "installerPkgName"    # Ljava/lang/String;

    .line 1435
    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerServiceInjector;->onPackageInstalled(Ljava/lang/String;ILjava/lang/String;ZLandroid/content/pm/PackageParser$Package;Ljava/lang/String;)V

    .line 1436
    return-void
.end method

.method protected static performDexOptSecondary(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)Z
    .registers 7
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1764
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getCompilerFilterForReason(I)Ljava/lang/String;

    move-result-object v1

    .line 1765
    .local v1, "compilerFilter":Ljava/lang/String;
    sget-object v2, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ota-opt performDexOptSecondary for package = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " compiler-filter = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1767
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/pm/PackageManagerService;->performDexOptSecondary(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static performPreinstallApp(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Settings;)V
    .registers 2
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "curPkgSettings"    # Lcom/android/server/pm/Settings;

    .line 612
    invoke-static {p0, p1}, Lcom/android/server/pm/PreinstallApp;->copyPreinstallApps(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Settings;)V

    .line 614
    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->checkPackageInstallerStatus(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Settings;)V

    .line 615
    return-void
.end method

.method public static preCheckUidPermission(Ljava/lang/String;I)I
    .registers 5
    .param p0, "permName"    # Ljava/lang/String;
    .param p1, "uid"    # I

    .line 1114
    const/16 v0, 0x7d0

    if-ne p1, v0, :cond_2e

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string/jumbo v0, "persist.security.adbinput"

    const/4 v1, 0x0

    .line 1115
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 1116
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MIUILOG- permission\u3000denied "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    const/4 v0, -0x1

    return v0

    .line 1119
    :cond_2e
    const/16 v0, -0x64

    return v0
.end method

.method static preserveAppId(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageSetting;)V
    .registers 5
    .param p0, "pkms"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "removedPs"    # Lcom/android/server/pm/PackageSetting;

    .line 2129
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_5c

    iget v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    const/16 v1, 0x4e1f

    if-le v0, v1, :cond_d

    goto :goto_5c

    .line 2134
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->isUpgrade()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 2135
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_5b

    const-string/jumbo v0, "ro.miui.pm.movedtodata.apps"

    const-string v1, ""

    .line 2136
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2b

    goto :goto_5b

    .line 2139
    :cond_2b
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceInjector;->getAppsMovedToDataPartition()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2140
    const/4 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "System package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " might be moved to data partition, preserve app id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " for it"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 2143
    return-void

    .line 2137
    :cond_5b
    :goto_5b
    return-void

    .line 2131
    :cond_5c
    :goto_5c
    return-void
.end method

.method public static processFirstUseActivity(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V
    .registers 4
    .param p0, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1990
    new-instance v0, Lcom/android/server/pm/PackageManagerServiceInjector$5;

    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/PackageManagerServiceInjector$5;-><init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V

    .line 1996
    .local v0, "task":Ljava/lang/Runnable;
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceInjector;->getFirstUseHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1997
    return-void
.end method

.method static protectAppFromDeleting(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/lang/Object;I)Z
    .registers 29
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "observer"    # Ljava/lang/Object;
    .param p3, "callingUid"    # I

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 677
    move/from16 v4, p3

    const/4 v5, 0x0

    .line 678
    .local v5, "p":Landroid/content/pm/PackageParser$Package;
    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v6

    .line 679
    :try_start_c
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    move-object v5, v0

    .line 680
    monitor-exit v6
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_15c

    .line 682
    const/4 v6, 0x0

    if-eqz v5, :cond_15b

    iget-object v0, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_1f

    goto/16 :goto_15b

    .line 686
    :cond_1f
    sget-boolean v0, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    const/16 v7, -0x3e8

    const/4 v8, 0x1

    if-eqz v0, :cond_5c

    .line 687
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 688
    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 687
    invoke-static {v0, v2, v9}, Lcom/miui/enterprise/ApplicationHelper;->protectedFromDelete(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 690
    :try_start_32
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MIUILOG- can\'t uninstall pkg : "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " callingUid : "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", reason Enterprise"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    nop

    .line 693
    invoke-static {v3, v2, v7}, Lcom/android/server/pm/PackageManagerServiceInjectorProxy;->returnPackageDeletedResultToObserver(Ljava/lang/Object;Ljava/lang/String;I)V
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_59} :catch_5a

    .line 697
    goto :goto_5b

    .line 695
    :catch_5a
    move-exception v0

    .line 698
    :goto_5b
    return v8

    .line 704
    :cond_5c
    iget-object v0, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v0, v8

    const/4 v9, 0x0

    if-nez v0, :cond_a7

    if-eqz v4, :cond_a7

    .line 706
    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v10, 0x3e8

    if-eq v0, v10, :cond_a7

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 707
    invoke-static {v0, v2, v6}, Lmiui/content/pm/PreloadedAppPolicy;->isProtectedDataApp(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_a7

    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_a7

    .line 710
    :try_start_7a
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MIUILOG- can\'t uninstall pkg : "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " callingUid : "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    if-eqz v3, :cond_a4

    instance-of v0, v3, Landroid/content/pm/IPackageDeleteObserver2;

    if-eqz v0, :cond_a4

    .line 712
    move-object v0, v3

    check-cast v0, Landroid/content/pm/IPackageDeleteObserver2;

    invoke-interface {v0, v2, v7, v9}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_a4
    .catch Landroid/os/RemoteException; {:try_start_7a .. :try_end_a4} :catch_a5

    .line 717
    :cond_a4
    goto :goto_a6

    .line 715
    :catch_a5
    move-exception v0

    .line 718
    :goto_a6
    return v8

    .line 721
    :cond_a7
    iget-object v0, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_15a

    iget-object v0, v5, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    if-eqz v0, :cond_15a

    iget-object v0, v5, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    const-string v10, "com.miui.sdk.module"

    .line 722
    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15a

    .line 724
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "keyguard"

    .line 725
    invoke-virtual {v0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/app/KeyguardManager;

    .line 726
    .local v10, "km":Landroid/app/KeyguardManager;
    invoke-virtual {v10}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-eqz v0, :cond_e3

    .line 728
    if-eqz v3, :cond_e1

    :try_start_d1
    instance-of v0, v3, Landroid/content/pm/IPackageDeleteObserver2;

    if-eqz v0, :cond_e1

    .line 729
    move-object v0, v3

    check-cast v0, Landroid/content/pm/IPackageDeleteObserver2;

    invoke-interface {v0, v2, v7, v9}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_db
    .catch Landroid/os/RemoteException; {:try_start_d1 .. :try_end_db} :catch_dc

    goto :goto_e1

    .line 732
    :catch_dc
    move-exception v0

    .line 733
    .local v0, "e1":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 734
    return v6

    .line 735
    .end local v0    # "e1":Landroid/os/RemoteException;
    :cond_e1
    :goto_e1
    nop

    .line 736
    return v8

    .line 740
    :cond_e3
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v22

    .line 741
    .local v22, "am":Landroid/app/IActivityManager;
    new-instance v0, Lcom/android/server/pm/PackageManagerServiceInjector$PackageDeleteConfirmObserver;

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerServiceInjector$PackageDeleteConfirmObserver;-><init>()V

    move-object v15, v0

    .line 742
    .local v15, "obs":Lcom/android/server/pm/PackageManagerServiceInjector$PackageDeleteConfirmObserver;
    new-instance v0, Landroid/content/Intent;

    const-string v11, "com.miui.action.PACKAGE_DELETE_CONFIRM"

    invoke-direct {v0, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v14, v0

    .line 743
    .local v14, "intent":Landroid/content/Intent;
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v14, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 744
    const-string v0, "extra_pkgname"

    invoke-virtual {v14, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 745
    const-string/jumbo v0, "observer"

    invoke-virtual {v14, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    .line 746
    const/high16 v0, 0x10000000

    invoke-virtual {v14, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 749
    const/4 v12, 0x0

    :try_start_10b
    const-string/jumbo v13, "pm"
    :try_end_10e
    .catch Landroid/os/RemoteException; {:try_start_10b .. :try_end_10e} :catch_152

    const/4 v0, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v11, v22

    move-object/from16 v23, v14

    .end local v14    # "intent":Landroid/content/Intent;
    .local v23, "intent":Landroid/content/Intent;
    move-object v8, v15

    move-object v15, v0

    .line 749
    .end local v15    # "obs":Lcom/android/server/pm/PackageManagerServiceInjector$PackageDeleteConfirmObserver;
    .local v8, "obs":Lcom/android/server/pm/PackageManagerServiceInjector$PackageDeleteConfirmObserver;
    :try_start_121
    invoke-interface/range {v11 .. v21}, Landroid/app/IActivityManager;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I

    move-result v0

    if-eqz v0, :cond_128

    .line 751
    return v6

    .line 753
    :cond_128
    monitor-enter v8
    :try_end_129
    .catch Landroid/os/RemoteException; {:try_start_121 .. :try_end_129} :catch_150

    .line 754
    :goto_129
    :try_start_129
    iget-boolean v0, v8, Lcom/android/server/pm/PackageManagerServiceInjector$PackageDeleteConfirmObserver;->finished:Z
    :try_end_12b
    .catchall {:try_start_129 .. :try_end_12b} :catchall_14d

    if-nez v0, :cond_138

    .line 756
    :try_start_12d
    invoke-virtual {v8}, Ljava/lang/Object;->wait()V
    :try_end_130
    .catch Ljava/lang/InterruptedException; {:try_start_12d .. :try_end_130} :catch_131
    .catchall {:try_start_12d .. :try_end_130} :catchall_14d

    .line 760
    goto :goto_129

    .line 757
    :catch_131
    move-exception v0

    move-object v7, v0

    .line 758
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_133
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 759
    monitor-exit v8

    return v6

    .line 762
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_138
    iget-boolean v0, v8, Lcom/android/server/pm/PackageManagerServiceInjector$PackageDeleteConfirmObserver;->delete:Z

    if-nez v0, :cond_14b

    .line 764
    if-eqz v3, :cond_148

    instance-of v0, v3, Landroid/content/pm/IPackageDeleteObserver2;

    if-eqz v0, :cond_148

    .line 765
    move-object v0, v3

    check-cast v0, Landroid/content/pm/IPackageDeleteObserver2;

    invoke-interface {v0, v2, v7, v9}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V

    .line 768
    :cond_148
    monitor-exit v8

    const/4 v6, 0x1

    return v6

    .line 770
    :cond_14b
    monitor-exit v8

    .line 774
    goto :goto_15a

    .line 770
    :catchall_14d
    move-exception v0

    monitor-exit v8
    :try_end_14f
    .catchall {:try_start_133 .. :try_end_14f} :catchall_14d

    :try_start_14f
    throw v0
    :try_end_150
    .catch Landroid/os/RemoteException; {:try_start_14f .. :try_end_150} :catch_150

    .line 771
    :catch_150
    move-exception v0

    goto :goto_156

    .line 771
    .end local v8    # "obs":Lcom/android/server/pm/PackageManagerServiceInjector$PackageDeleteConfirmObserver;
    .end local v23    # "intent":Landroid/content/Intent;
    .restart local v14    # "intent":Landroid/content/Intent;
    .restart local v15    # "obs":Lcom/android/server/pm/PackageManagerServiceInjector$PackageDeleteConfirmObserver;
    :catch_152
    move-exception v0

    move-object/from16 v23, v14

    move-object v8, v15

    .line 772
    .end local v14    # "intent":Landroid/content/Intent;
    .end local v15    # "obs":Lcom/android/server/pm/PackageManagerServiceInjector$PackageDeleteConfirmObserver;
    .local v0, "e1":Landroid/os/RemoteException;
    .restart local v8    # "obs":Lcom/android/server/pm/PackageManagerServiceInjector$PackageDeleteConfirmObserver;
    .restart local v23    # "intent":Landroid/content/Intent;
    :goto_156
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 773
    return v6

    .line 776
    .end local v0    # "e1":Landroid/os/RemoteException;
    .end local v8    # "obs":Lcom/android/server/pm/PackageManagerServiceInjector$PackageDeleteConfirmObserver;
    .end local v10    # "km":Landroid/app/KeyguardManager;
    .end local v22    # "am":Landroid/app/IActivityManager;
    .end local v23    # "intent":Landroid/content/Intent;
    :cond_15a
    :goto_15a
    return v6

    .line 683
    :cond_15b
    :goto_15b
    return v6

    .line 680
    :catchall_15c
    move-exception v0

    :try_start_15d
    monitor-exit v6
    :try_end_15e
    .catchall {:try_start_15d .. :try_end_15e} :catchall_15c

    throw v0
.end method

.method private static purgeAppsMovedToDataPartition()V
    .registers 1

    .line 2124
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->appsMovedToDataPartition:Ljava/util/ArrayList;

    .line 2125
    return-void
.end method

.method private static readIgnoreApks()V
    .registers 12

    .line 203
    invoke-static {}, Lmiui/os/Build;->getCustVariant()Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "custVariant":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 205
    return-void

    .line 207
    :cond_b
    const/4 v1, 0x0

    .line 209
    .local v1, "inputStream":Ljava/io/InputStream;
    :try_start_c
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    const-string v4, "/system/etc/install_app_filter.xml"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v2

    .line 210
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 211
    .local v2, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 212
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v4, "UTF-8"

    invoke-interface {v3, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 213
    const/4 v4, 0x0

    .line 214
    .local v4, "tagName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 215
    .local v5, "appPath":Ljava/lang/String;
    const/4 v6, 0x0

    .line 216
    .local v6, "is_add_apps":Z
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    .line 217
    .local v7, "type":I
    :goto_2d
    const/4 v8, 0x1

    if-eq v8, v7, :cond_bf

    .line 218
    packed-switch v7, :pswitch_data_de

    goto/16 :goto_b8

    .line 247
    :pswitch_35
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 248
    .local v8, "end_tag_name":Ljava/lang/String;
    const-string v9, "add_apps"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_44

    .line 249
    const/4 v6, 0x0

    goto/16 :goto_b8

    .line 250
    :cond_44
    const-string v9, "ignore_apps"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b8

    .line 251
    const/4 v6, 0x1

    goto/16 :goto_b8

    .line 220
    .end local v8    # "end_tag_name":Ljava/lang/String;
    :pswitch_4f
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    .line 221
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v8

    const/4 v9, 0x0

    if-lez v8, :cond_60

    .line 222
    invoke-interface {v3, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 224
    :cond_60
    const-string v8, "add_apps"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6a

    .line 225
    const/4 v6, 0x1

    goto :goto_b8

    .line 226
    :cond_6a
    const-string v8, "ignore_apps"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_74

    .line 227
    const/4 v6, 0x0

    goto :goto_b8

    .line 228
    :cond_74
    const-string v8, "app"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b8

    .line 229
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    const-string v10, " "

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 230
    .local v8, "ss":[Ljava/lang/String;
    const/4 v10, 0x0

    .line 231
    .local v10, "is_current_cust":Z
    nop

    .local v9, "i":I
    :goto_88
    array-length v11, v8

    if-ge v9, v11, :cond_98

    .line 232
    aget-object v11, v8, v9

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_95

    .line 233
    const/4 v10, 0x1

    .line 234
    goto :goto_98

    .line 231
    :cond_95
    add-int/lit8 v9, v9, 0x1

    goto :goto_88

    .line 237
    .end local v9    # "i":I
    :cond_98
    :goto_98
    if-eqz v6, :cond_9c

    if-eqz v10, :cond_a0

    :cond_9c
    if-nez v6, :cond_a6

    if-eqz v10, :cond_a6

    .line 238
    :cond_a0
    sget-object v9, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnoreApks:Ljava/util/Set;

    invoke-interface {v9, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_b7

    .line 239
    :cond_a6
    if-eqz v6, :cond_b7

    if-eqz v10, :cond_b7

    .line 240
    sget-object v9, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnoreApks:Ljava/util/Set;

    invoke-interface {v9, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b7

    .line 241
    sget-object v9, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnoreApks:Ljava/util/Set;

    invoke-interface {v9, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 244
    .end local v8    # "ss":[Ljava/lang/String;
    .end local v10    # "is_current_cust":Z
    :cond_b7
    :goto_b7
    nop

    .line 257
    :cond_b8
    :goto_b8
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8
    :try_end_bc
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_bc} :catch_d6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_bc} :catch_cf
    .catchall {:try_start_c .. :try_end_bc} :catchall_c6

    move v7, v8

    goto/16 :goto_2d

    .line 263
    .end local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "tagName":Ljava/lang/String;
    .end local v5    # "appPath":Ljava/lang/String;
    .end local v6    # "is_add_apps":Z
    .end local v7    # "type":I
    :cond_bf
    nop

    .line 265
    :try_start_c0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_c3
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_c3} :catch_c4

    .line 268
    :goto_c3
    goto :goto_dd

    .line 266
    :catch_c4
    move-exception v2

    goto :goto_c3

    .line 263
    :catchall_c6
    move-exception v2

    if-eqz v1, :cond_ce

    .line 265
    :try_start_c9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_cc
    .catch Ljava/io/IOException; {:try_start_c9 .. :try_end_cc} :catch_cd

    .line 268
    goto :goto_ce

    .line 266
    :catch_cd
    move-exception v3

    .line 268
    :cond_ce
    :goto_ce
    throw v2

    .line 261
    :catch_cf
    move-exception v2

    .line 263
    if-eqz v1, :cond_dd

    .line 265
    :try_start_d2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_c3

    .line 260
    :catch_d6
    move-exception v2

    .line 263
    if-eqz v1, :cond_dd

    .line 265
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_dc
    .catch Ljava/io/IOException; {:try_start_d2 .. :try_end_dc} :catch_c4

    goto :goto_c3

    .line 271
    :cond_dd
    :goto_dd
    return-void

    :pswitch_data_de
    .packed-switch 0x2
        :pswitch_4f
        :pswitch_35
    .end packed-switch
.end method

.method private static registerDataObserver(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 545
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 546
    invoke-static {}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataNotifyUri()Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/pm/PackageManagerServiceInjector$1;

    .line 547
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lcom/android/server/pm/PackageManagerServiceInjector$1;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    .line 545
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 553
    return-void
.end method

.method static removePackageFromSharedUser(Lcom/android/server/pm/PackageSetting;)V
    .registers 2
    .param p0, "ps"    # Lcom/android/server/pm/PackageSetting;

    .line 663
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v0, :cond_9

    .line 664
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/SharedUserSetting;->removePackage(Lcom/android/server/pm/PackageSetting;)V

    .line 666
    :cond_9
    return-void
.end method

.method static resolveContentProvider(Lcom/android/server/pm/Settings;Landroid/content/pm/ProviderInfo;IILandroid/content/pm/PackageParser$Provider;Lcom/android/server/pm/PackageSetting;)Landroid/content/pm/ProviderInfo;
    .registers 8
    .param p0, "mSettings"    # Lcom/android/server/pm/Settings;
    .param p1, "info"    # Landroid/content/pm/ProviderInfo;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .param p4, "provider"    # Landroid/content/pm/PackageParser$Provider;
    .param p5, "ps"    # Lcom/android/server/pm/PackageSetting;

    .line 1780
    const/16 v0, 0x3e7

    if-ne p3, v0, :cond_14

    .line 1781
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/pm/PackageManagerServiceCompat;->isEnabledAndMatchLPr(Lcom/android/server/pm/Settings;Landroid/content/pm/ProviderInfo;II)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1782
    invoke-virtual {p5, v0}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v1

    invoke-static {p4, p2, v1, v0}, Landroid/content/pm/PackageParser;->generateProviderInfo(Landroid/content/pm/PackageParser$Provider;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    return-object v0

    .line 1784
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method private static resolveHapLinks(Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;
    .registers 2
    .param p0, "intent"    # Landroid/content/Intent;

    .line 2059
    invoke-static {p0}, Lcom/miui/hybrid/hook/HapLinksInjector;->resolveHapLinks(Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method static resolveQuickApps(Lcom/android/server/pm/PackageManagerService;ZLandroid/content/Intent;)Landroid/content/pm/ResolveInfo;
    .registers 5
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "hasVerfiyAlways"    # Z
    .param p2, "intent"    # Landroid/content/Intent;

    .line 2087
    if-nez p1, :cond_12

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/android/server/pm/PackageManagerServiceInjector;->matchQuickApps(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2088
    new-instance v0, Landroid/content/pm/ResolveInfo;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/ResolveInfo;-><init>(Landroid/content/pm/ResolveInfo;)V

    return-object v0

    .line 2090
    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method static resolveQuickApps(Lcom/android/server/pm/PackageManagerService;ZLandroid/content/Intent;Ljava/util/List;)Landroid/content/pm/ResolveInfo;
    .registers 6
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "hasVerfiyAlways"    # Z
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Z",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .line 2074
    .local p3, "query":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez p1, :cond_9

    .line 2075
    invoke-static {p2}, Lcom/android/server/pm/PackageManagerServiceInjector;->resolveHapLinks(Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 2076
    .local v0, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_9

    .line 2077
    return-object v0

    .line 2080
    .end local v0    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_9
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/android/server/pm/PackageManagerServiceInjector;->matchQuickApps(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 2081
    new-instance v0, Landroid/content/pm/ResolveInfo;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/ResolveInfo;-><init>(Landroid/content/pm/ResolveInfo;)V

    return-object v0

    .line 2083
    :cond_1f
    const/4 v0, 0x0

    return-object v0
.end method

.method static resolveUserId(Landroid/content/Intent;Ljava/lang/String;I)I
    .registers 7
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "resolvedType"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1019
    invoke-static {p2}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 1020
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_7d

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sCrossXSpaceIntent:Ljava/util/ArrayList;

    .line 1021
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 1023
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 1024
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 1025
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_45

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sXSpaceDataSchemeWhiteList:Ljava/util/ArrayList;

    .line 1026
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    .line 1027
    return p2

    .line 1031
    :cond_45
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_5e

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sXSpaceAddUserAuthorityBlackList:Ljava/util/ArrayList;

    .line 1032
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e

    .line 1033
    invoke-static {p0, p2}, Lmiui/securityspace/XSpaceIntentCompat;->prepareToLeaveUser(Landroid/content/Intent;I)V

    .line 1036
    :cond_5e
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1038
    .local v0, "newIntent":Landroid/content/Intent;
    :try_start_63
    const-string/jumbo v1, "miui.intent.extra.USER_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_72

    .line 1039
    const-string/jumbo v1, "miui.intent.extra.USER_ID"

    invoke-virtual {p0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_72} :catch_73

    .line 1044
    :cond_72
    goto :goto_7b

    .line 1041
    :catch_73
    move-exception v1

    .line 1043
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string v3, "Private intent: "

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1045
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_7b
    const/4 v1, 0x0

    return v1

    .line 1047
    .end local v0    # "newIntent":Landroid/content/Intent;
    :cond_7d
    return p2
.end method

.method static setDefaultHome(ILjava/lang/String;)V
    .registers 4
    .param p0, "userId"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1950
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sDefaultHome:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1951
    :try_start_3
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sDefaultHome:Landroid/util/SparseArray;

    invoke-virtual {v1, p0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1952
    monitor-exit v0

    .line 1953
    return-void

    .line 1952
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private static updatePackageWhiteList(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 560
    :try_start_0
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sGlobalRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 561
    nop

    .line 562
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "IntentInterceptHelper"

    const-string v2, "global_intenttogp_packagelist"

    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceInjector;->encodeToServerFormat()Ljava/lang/String;

    move-result-object v3

    .line 561
    invoke-static {v0, v1, v2, v3}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sGlobalWhiteListPackages:Ljava/lang/String;

    .line 563
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sGlobalWhiteListPackages:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->decodeFromServerFormat(Ljava/lang/String;)V

    .line 564
    nop

    .line 565
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "IntentInterceptHelper"

    const-string v2, "global_intenttogp_switch"

    const-string v3, "1"

    .line 564
    invoke-static {v0, v1, v2, v3}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sGlobalSyncKey:Ljava/lang/String;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_35
    .catchall {:try_start_0 .. :try_end_32} :catchall_33

    goto :goto_50

    .line 569
    :catchall_33
    move-exception v0

    goto :goto_5b

    .line 566
    :catch_35
    move-exception v0

    .line 567
    .local v0, "e":Ljava/lang/Exception;
    :try_start_36
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catchall {:try_start_36 .. :try_end_50} :catchall_33

    .line 569
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_50
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sGlobalRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 570
    nop

    .line 571
    return-void

    .line 569
    :goto_5b
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sGlobalRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method
