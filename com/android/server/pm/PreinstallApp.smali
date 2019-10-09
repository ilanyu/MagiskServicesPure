.class public Lcom/android/server/pm/PreinstallApp;
.super Ljava/lang/Object;
.source "PreinstallApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PreinstallApp$Item;
    }
.end annotation


# static fields
.field private static final CUSTOMIZED_APP_DIR:Ljava/io/File;

.field private static final DEBUG:Z = true

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final INSTALL_DIR:Ljava/lang/String; = "/data/app/"

.field private static final MIUI_APP_PATH_L_LENGTH:I = 0x7

.field private static final NONCUSTOMIZED_APP_DIR:Ljava/io/File;

.field private static final NOT_OTA_PACKAGE_NAMES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final OLD_PREINSTALL_APP_DIR:Ljava/io/File;

.field private static final OLD_PREINSTALL_HISTORY_FILE:Ljava/lang/String; = "/data/system/preinstall_history"

.field private static final OLD_PREINSTALL_PACKAGE_PAI_TRACKING_FILE:Ljava/lang/String; = "/cust/etc/pre_install.appsflyer"

.field private static final OTA_SKIP_BUSINESS_APP_LIST_FILE:Ljava/io/File;

.field private static final PREINSTALL_HISTORY_FILE:Ljava/lang/String; = "/data/app/preinstall_history"

.field private static final PREINSTALL_PACKAGE_LIST:Ljava/lang/String; = "/data/system/preinstall.list"

.field private static final PREINSTALL_PACKAGE_MIUI_TRACKING_DIR:Ljava/lang/String; = "/data/miui/pai/"

.field private static final PREINSTALL_PACKAGE_MIUI_TRACKING_DIR_CONTEXT:Ljava/lang/String; = "u:object_r:miui_pai_file:s0"

.field private static final PREINSTALL_PACKAGE_PAI_LIST:Ljava/lang/String; = "/data/system/preinstallPAI.list"

.field private static final PREINSTALL_PACKAGE_PAI_TRACKING_FILE:Ljava/lang/String; = "/data/miui/pai/pre_install.appsflyer"

.field private static final PRODUCT_NONCUSTOMIZED_APP_DIR:Ljava/io/File;

.field private static final RECOMMENDED_APP_DIR:Ljava/io/File;

.field private static final TAG:Ljava/lang/String;

.field private static final TYPE_TRACKING_APPSFLYER:Ljava/lang/String; = "appsflyer"

.field private static final TYPE_TRACKING_MIUI:Ljava/lang/String; = "xiaomi"

.field private static final VENDOR_NONCUSTOMIZED_APP_DIR:Ljava/io/File;

.field private static mNewTrackContentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mPackagePAIList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mPackageVersionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mTraditionalTrackContentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sIgnorePreinstallApks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sNewUpdatedSystemPreinstallApps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/server/pm/PreinstallApp$Item;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPreinstallApps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PreinstallApp$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 95
    const-class v0, Lcom/android/server/pm/PreinstallApp;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    .line 106
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/miui/apps"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/pm/PreinstallApp;->OLD_PREINSTALL_APP_DIR:Ljava/io/File;

    .line 111
    invoke-static {}, Lmiui/util/CustomizeUtil;->getMiuiNoCustomizedAppDir()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PreinstallApp;->NONCUSTOMIZED_APP_DIR:Ljava/io/File;

    .line 112
    invoke-static {}, Lmiui/util/CustomizeUtil;->getMiuiVendorNoCustomizedAppDir()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PreinstallApp;->VENDOR_NONCUSTOMIZED_APP_DIR:Ljava/io/File;

    .line 113
    invoke-static {}, Lmiui/util/CustomizeUtil;->getMiuiProductNoCustomizedAppDir()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PreinstallApp;->PRODUCT_NONCUSTOMIZED_APP_DIR:Ljava/io/File;

    .line 116
    invoke-static {}, Lmiui/util/CustomizeUtil;->getMiuiCustomizedAppDir()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PreinstallApp;->CUSTOMIZED_APP_DIR:Ljava/io/File;

    .line 119
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/miui/app/recommended"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/pm/PreinstallApp;->RECOMMENDED_APP_DIR:Ljava/io/File;

    .line 122
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/ota_skip_apps"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/pm/PreinstallApp;->OTA_SKIP_BUSINESS_APP_LIST_FILE:Ljava/io/File;

    .line 124
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/pm/PreinstallApp;->sIgnorePreinstallApks:Ljava/util/Set;

    .line 125
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/pm/PreinstallApp;->sNewUpdatedSystemPreinstallApps:Ljava/util/Set;

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/PreinstallApp;->sPreinstallApps:Ljava/util/Map;

    .line 130
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/pm/PreinstallApp;->NOT_OTA_PACKAGE_NAMES:Ljava/util/Set;

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/PreinstallApp;->mPackageVersionMap:Ljava/util/Map;

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/PreinstallApp;->mPackagePAIList:Ljava/util/List;

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/PreinstallApp;->mTraditionalTrackContentList:Ljava/util/List;

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/PreinstallApp;->mNewTrackContentList:Ljava/util/List;

    .line 146
    sget-boolean v0, Lmiui/os/Build;->IS_MI2A:Z

    if-nez v0, :cond_81

    sget-boolean v0, Lmiui/os/Build;->IS_MITHREE:Z

    if-nez v0, :cond_81

    .line 147
    const-string/jumbo v0, "ota-miui-MiTagApp.apk"

    invoke-static {v0}, Lcom/android/server/pm/PreinstallApp;->ignorePreinstallApks(Ljava/lang/String;)V

    .line 149
    :cond_81
    const-string/jumbo v0, "support_ir"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_91

    .line 150
    const-string/jumbo v0, "partner-XMRemoteController.apk"

    invoke-static {v0}, Lcom/android/server/pm/PreinstallApp;->ignorePreinstallApks(Ljava/lang/String;)V

    .line 152
    :cond_91
    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-nez v0, :cond_a4

    .line 153
    const-string v0, "cn.cj.pe_cactus_cereus.apk"

    invoke-static {v0}, Lcom/android/server/pm/PreinstallApp;->ignorePreinstallApks(Ljava/lang/String;)V

    .line 154
    const-string v0, "com.chinamobile.mcloud_cactus_cereus.apk"

    invoke-static {v0}, Lcom/android/server/pm/PreinstallApp;->ignorePreinstallApks(Ljava/lang/String;)V

    .line 155
    const-string v0, "com.cmcc.cmvideo_cactus_cereus.apk"

    invoke-static {v0}, Lcom/android/server/pm/PreinstallApp;->ignorePreinstallApks(Ljava/lang/String;)V

    .line 157
    :cond_a4
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/io/File;)Ljava/io/File;
    .registers 2
    .param p0, "x0"    # Ljava/io/File;

    .line 50
    invoke-static {p0}, Lcom/android/server/pm/PreinstallApp;->getApkFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static addPreinstallAppToList(Ljava/util/List;Ljava/io/File;Ljava/util/Set;)V
    .registers 10
    .param p1, "appDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 462
    .local p0, "preinstallAppList":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .local p2, "filterSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 463
    .local v0, "apps":[Ljava/io/File;
    if-eqz v0, :cond_58

    .line 465
    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_58

    aget-object v3, v0, v2

    .line 466
    .local v3, "app":Ljava/io/File;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-ge v4, v5, :cond_20

    .line 468
    move-object v4, v3

    .line 469
    .local v4, "apk":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_55

    invoke-static {v4}, Lcom/android/server/pm/PreinstallApp;->isApkFile(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_39

    .line 470
    goto :goto_55

    .line 473
    .end local v4    # "apk":Ljava/io/File;
    :cond_20
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_31

    .line 475
    invoke-static {v3}, Lcom/android/server/pm/PreinstallApp;->getBaseApkFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    .line 476
    .restart local v4    # "apk":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_39

    .line 477
    goto :goto_55

    .line 481
    .end local v4    # "apk":Ljava/io/File;
    :cond_31
    move-object v4, v3

    .line 482
    .restart local v4    # "apk":Ljava/io/File;
    invoke-static {v4}, Lcom/android/server/pm/PreinstallApp;->isApkFile(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_39

    .line 483
    goto :goto_55

    .line 487
    :cond_39
    sget-object v5, Lcom/android/server/pm/PreinstallApp;->sIgnorePreinstallApks:Ljava/util/Set;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_55

    if-eqz p2, :cond_52

    .line 488
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_52

    .line 489
    goto :goto_55

    .line 491
    :cond_52
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    .end local v3    # "app":Ljava/io/File;
    :cond_55
    :goto_55
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 494
    .end local v4    # "apk":Ljava/io/File;
    :cond_58
    return-void
.end method

.method private static addPreinstallChannelToList(Ljava/util/List;Ljava/io/File;Ljava/lang/String;)V
    .registers 7
    .param p1, "channelDir"    # Ljava/io/File;
    .param p2, "channelListFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1095
    .local p0, "preinstallChannelList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1097
    .local v0, "reader":Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 1098
    .local v1, "channelName":Ljava/lang/String;
    :goto_b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    if-eqz v2, :cond_2e

    .line 1099
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 1102
    :cond_2e
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_31} :catch_32

    .line 1105
    .end local v0    # "reader":Ljava/io/BufferedReader;
    .end local v1    # "channelName":Ljava/lang/String;
    goto :goto_49

    .line 1103
    :catch_32
    move-exception v0

    .line 1104
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error occurs while read preinstalled channels "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    .end local v0    # "e":Ljava/io/IOException;
    :goto_49
    return-void
.end method

.method static cleanUpResource(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageSetting;)Z
    .registers 12
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "ps"    # Lcom/android/server/pm/PackageSetting;

    .line 1512
    const/4 v0, 0x0

    .line 1518
    .local v0, "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    const/4 v1, 0x0

    :try_start_2
    const-string/jumbo v2, "packageFlagsToInstallFlags"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    aput-object p1, v5, v1

    invoke-static {p0, v2, v3, v5}, Lmiui/util/ReflectionUtils;->callMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1519
    .local v2, "flags":I
    const-class v3, Lcom/android/server/pm/InstructionSets;

    const-string v5, "getAppDexInstructionSets"

    const-class v6, [Ljava/lang/String;

    new-array v7, v4, [Ljava/lang/Object;

    aput-object p1, v7, v1

    invoke-static {v3, v5, v6, v7}, Lmiui/util/ReflectionUtils;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 1520
    .local v3, "dexInstructionSets":[Ljava/lang/String;
    const-string v5, "createInstallArgsForExisting"

    const-class v6, Lcom/android/server/pm/PackageManagerService$InstallArgs;

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    .line 1521
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    iget-object v8, p1, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    aput-object v8, v7, v4

    const/4 v8, 0x2

    iget-object v9, p1, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x3

    aput-object v3, v7, v8

    .line 1520
    invoke-static {p0, v5, v6, v7}, Lmiui/util/ReflectionUtils;->callMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageManagerService$InstallArgs;
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_45} :catch_55

    move-object v2, v5

    .line 1528
    .end local v0    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v3    # "dexInstructionSets":[Ljava/lang/String;
    .local v2, "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    nop

    .line 1529
    if-nez v2, :cond_4a

    .line 1530
    return v1

    .line 1532
    :cond_4a
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1533
    :try_start_4d
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->cleanUpResourcesLI()V

    .line 1534
    monitor-exit v3

    .line 1535
    return v4

    .line 1534
    :catchall_52
    move-exception v0

    monitor-exit v3
    :try_end_54
    .catchall {:try_start_4d .. :try_end_54} :catchall_52

    throw v0

    .line 1525
    .end local v2    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .restart local v0    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    :catch_55
    move-exception v2

    .line 1526
    .local v2, "t":Ljava/lang/Throwable;
    sget-object v3, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    const-string v4, "failed to call method: cleanUpResource"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1527
    return v1
.end method

.method private static copyNewPreinstallApp(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PreinstallApp$Item;)Z
    .registers 3
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "item"    # Lcom/android/server/pm/PreinstallApp$Item;

    .line 409
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/server/pm/PreinstallApp;->copyPreinstallApp(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PreinstallApp$Item;Lcom/android/server/pm/PackageSetting;)Z

    move-result v0

    return v0
.end method

.method private static copyPreinstallApp(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PreinstallApp$Item;Lcom/android/server/pm/PackageSetting;)Z
    .registers 5
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "item"    # Lcom/android/server/pm/PreinstallApp$Item;
    .param p2, "ps"    # Lcom/android/server/pm/PackageSetting;

    .line 413
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_b

    .line 414
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/PreinstallApp;->copyPreinstallForVersionUnder21(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PreinstallApp$Item;Lcom/android/server/pm/PackageSetting;)Z

    move-result v0

    return v0

    .line 416
    :cond_b
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/PreinstallApp;->copyPreinstallAppForVersionEqualOrAbove21(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PreinstallApp$Item;Lcom/android/server/pm/PackageSetting;)Z

    move-result v0

    return v0
.end method

.method private static copyPreinstallAppForVersionEqualOrAbove21(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PreinstallApp$Item;Lcom/android/server/pm/PackageSetting;)Z
    .registers 10
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "srcApp"    # Lcom/android/server/pm/PreinstallApp$Item;
    .param p2, "ps"    # Lcom/android/server/pm/PackageSetting;

    .line 381
    iget-object v0, p1, Lcom/android/server/pm/PreinstallApp$Item;->apkFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 382
    return v1

    .line 385
    :cond_a
    const/4 v0, 0x0

    .line 386
    .local v0, "dstCodePath":Ljava/io/File;
    if-eqz p2, :cond_18

    invoke-static {p2}, Lcom/android/server/pm/PreinstallApp;->underData(Lcom/android/server/pm/PackageSetting;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 388
    invoke-static {p0, p2}, Lcom/android/server/pm/PreinstallApp;->cleanUpResource(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageSetting;)Z

    .line 389
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    .line 391
    :cond_18
    if-nez v0, :cond_44

    .line 392
    iget v2, p1, Lcom/android/server/pm/PreinstallApp$Item;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2e

    .line 393
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/app/"

    iget-object v4, p1, Lcom/android/server/pm/PreinstallApp$Item;->app:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_44

    .line 395
    :cond_2e
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/app/"

    iget-object v4, p1, Lcom/android/server/pm/PreinstallApp$Item;->apkFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".apk"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 398
    :cond_44
    :goto_44
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 399
    invoke-static {v0}, Lcom/android/server/pm/PreinstallApp;->deleteFileOrDirectory(Ljava/io/File;)V

    .line 401
    :cond_4d
    invoke-static {v0}, Lcom/android/server/pm/PreinstallApp;->createIfNonexist(Ljava/io/File;)V

    .line 402
    new-instance v2, Ljava/io/File;

    iget-object v3, p1, Lcom/android/server/pm/PreinstallApp$Item;->apkFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 403
    .local v2, "dstApkFile":Ljava/io/File;
    iget-object v3, p1, Lcom/android/server/pm/PreinstallApp$Item;->apkFile:Ljava/io/File;

    invoke-static {v3, v2}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_6c

    .line 404
    invoke-virtual {v2, v4, v1}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v3

    if-eqz v3, :cond_6c

    move v1, v4

    nop

    .line 405
    .local v1, "ret":Z
    :cond_6c
    return v1
.end method

.method public static copyPreinstallApps(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Settings;)V
    .registers 5
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "settings"    # Lcom/android/server/pm/Settings;

    .line 829
    const-string/jumbo v0, "vold.decrypt"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 830
    .local v0, "cryptState":Ljava/lang/String;
    const-string/jumbo v1, "trigger_restart_min_framework"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 831
    sget-object v1, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    const-string v2, "Detected encryption in progress - can\'t copy preinstall apps now!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    return-void

    .line 834
    :cond_18
    invoke-static {}, Lcom/android/server/pm/PreinstallApp;->readPackageVersionMap()V

    .line 835
    invoke-static {}, Lcom/android/server/pm/PreinstallApp;->readPackagePAIList()V

    .line 836
    invoke-static {}, Lcom/android/server/pm/PreinstallApp;->copyTraditionalTrackFileToNewLocationIfNeed()V

    .line 837
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v1

    if-nez v1, :cond_2d

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->isUpgrade()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 838
    :cond_2d
    invoke-static {}, Lcom/android/server/pm/PreinstallApp;->parseAndDeleteDuplicatePreinstallApps()V

    .line 841
    :cond_30
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 842
    invoke-static {p0, p1}, Lcom/android/server/pm/PreinstallApp;->copyPreinstallAppsForFirstBoot(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Settings;)V

    .line 844
    invoke-static {}, Lcom/android/server/pm/CloudControlPreinstallService;->startCloudControlService()V

    goto :goto_4e

    .line 845
    :cond_3d
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->isUpgrade()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 846
    invoke-static {p0, p1}, Lcom/android/server/pm/PreinstallApp;->copyPreinstallAppsForBoot(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Settings;)V

    goto :goto_4e

    .line 848
    :cond_47
    sget-object v1, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    const-string v2, "Nothing need copy for normal boot."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    :goto_4e
    return-void
.end method

.method private static copyPreinstallAppsForBoot(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Settings;)V
    .registers 15
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "settings"    # Lcom/android/server/pm/Settings;

    .line 712
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 713
    .local v0, "currentTime":J
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 715
    .local v2, "history":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    sget-object v3, Lcom/android/server/pm/PreinstallApp;->OTA_SKIP_BUSINESS_APP_LIST_FILE:Ljava/io/File;

    sget-object v4, Lcom/android/server/pm/PreinstallApp;->NOT_OTA_PACKAGE_NAMES:Ljava/util/Set;

    invoke-static {v3, v4}, Lcom/android/server/pm/PreinstallApp;->readLineToSet(Ljava/io/File;Ljava/util/Set;)V

    .line 722
    invoke-static {v2}, Lcom/android/server/pm/PreinstallApp;->readHistory(Ljava/util/Map;)V

    .line 723
    sget-object v3, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    const-string v4, "copy preinstall apps start"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    sget-object v3, Lcom/android/server/pm/PreinstallApp;->sPreinstallApps:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_288

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PreinstallApp$Item;

    .line 725
    .local v4, "item":Lcom/android/server/pm/PreinstallApp$Item;
    invoke-static {v2, v4}, Lcom/android/server/pm/PreinstallApp;->skipYouPinIfHadPreinstall(Ljava/util/Map;Lcom/android/server/pm/PreinstallApp$Item;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 726
    sget-object v5, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "skip YouPin because pre-installed"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    goto :goto_24

    .line 730
    :cond_3f
    invoke-static {v4}, Lcom/android/server/pm/PreinstallApp;->skipOTA(Lcom/android/server/pm/PreinstallApp$Item;)Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 731
    sget-object v5, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ota skip copy business preinstall app which under /system/data-app, packageName is :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/android/server/pm/PreinstallApp$Item;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    goto :goto_24

    .line 735
    :cond_5f
    invoke-static {v2, v4}, Lcom/android/server/pm/PreinstallApp;->dealed(Ljava/util/Map;Lcom/android/server/pm/PreinstallApp$Item;)Z

    move-result v5

    if-eqz v5, :cond_66

    .line 736
    goto :goto_24

    .line 739
    :cond_66
    iget-object v5, v4, Lcom/android/server/pm/PreinstallApp$Item;->apkFile:Ljava/io/File;

    invoke-static {v5}, Lcom/android/server/pm/PreinstallApp;->signCheck(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_76

    .line 740
    sget-object v5, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    const-string v6, "Skip copying when the sign is false."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    goto :goto_24

    .line 745
    :cond_76
    invoke-static {v2, v4}, Lcom/android/server/pm/PreinstallApp;->recorded(Ljava/util/Map;Lcom/android/server/pm/PreinstallApp$Item;)Z

    move-result v5

    .line 747
    .local v5, "recorded":Z
    iget-object v6, v4, Lcom/android/server/pm/PreinstallApp$Item;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v6

    .line 748
    .local v6, "ps":Lcom/android/server/pm/PackageSetting;
    iget-object v7, v4, Lcom/android/server/pm/PreinstallApp$Item;->packageName:Ljava/lang/String;

    invoke-static {p0, v7}, Lcom/android/server/pm/PreinstallApp;->systemAppDeletedOrDisabled(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_e4

    invoke-static {v6}, Lcom/android/server/pm/PreinstallApp;->isSystemAndNotUpdatedSystemApp(Lcom/android/server/pm/PackageSetting;)Z

    move-result v7

    if-eqz v7, :cond_e4

    .line 750
    sget-object v7, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skip copying new system updated preinstall app "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", update it after system ready"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    iget-object v7, v4, Lcom/android/server/pm/PreinstallApp$Item;->app:Ljava/io/File;

    invoke-static {v7}, Lcom/android/server/pm/PreinstallApp;->parsePackage(Ljava/io/File;)Landroid/content/pm/PackageParser$Package;

    move-result-object v7

    .line 753
    .local v7, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v7, :cond_c3

    iget-object v8, v7, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    if-nez v8, :cond_ba

    goto :goto_c3

    .line 757
    :cond_ba
    iput-object v7, v4, Lcom/android/server/pm/PreinstallApp$Item;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 758
    sget-object v8, Lcom/android/server/pm/PreinstallApp;->sNewUpdatedSystemPreinstallApps:Ljava/util/Set;

    invoke-interface {v8, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 759
    goto/16 :goto_24

    .line 754
    :cond_c3
    :goto_c3
    sget-object v8, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Parse "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " failed, skip"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    goto/16 :goto_24

    .line 762
    .end local v7    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_e4
    sget-object v7, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Copy "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    if-nez v6, :cond_157

    .line 766
    if-nez v5, :cond_12e

    .line 768
    invoke-static {p0, v4}, Lcom/android/server/pm/PreinstallApp;->copyNewPreinstallApp(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PreinstallApp$Item;)Z

    move-result v7

    if-eqz v7, :cond_10d

    .line 769
    invoke-static {v2, v4}, Lcom/android/server/pm/PreinstallApp;->recordHistory(Ljava/util/Map;Lcom/android/server/pm/PreinstallApp$Item;)V

    goto/16 :goto_265

    .line 771
    :cond_10d
    sget-object v7, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Copy "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " failed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_265

    .line 775
    :cond_12e
    sget-object v7, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "User had uninstalled "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v4, Lcom/android/server/pm/PreinstallApp$Item;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", skip coping"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    invoke-static {v2, v4}, Lcom/android/server/pm/PreinstallApp;->recordHistory(Ljava/util/Map;Lcom/android/server/pm/PreinstallApp$Item;)V

    goto/16 :goto_265

    .line 779
    :cond_157
    iget-object v7, v4, Lcom/android/server/pm/PreinstallApp$Item;->pkgLite:Landroid/content/pm/PackageParser$PackageLite;

    iget v7, v7, Landroid/content/pm/PackageParser$PackageLite;->versionCode:I

    int-to-long v7, v7

    iget-wide v9, v6, Lcom/android/server/pm/PackageSetting;->versionCode:J

    cmp-long v7, v7, v9

    if-gtz v7, :cond_195

    .line 780
    sget-object v7, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " is not newer than "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v6, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v6, Lcom/android/server/pm/PackageSetting;->versionCode:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "], skip coping"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    invoke-static {v2, v4}, Lcom/android/server/pm/PreinstallApp;->recordHistory(Ljava/util/Map;Lcom/android/server/pm/PreinstallApp$Item;)V

    .line 784
    goto/16 :goto_24

    .line 789
    :cond_195
    iget-object v7, v4, Lcom/android/server/pm/PreinstallApp$Item;->app:Ljava/io/File;

    invoke-static {v7}, Lcom/android/server/pm/PreinstallApp;->parsePackage(Ljava/io/File;)Landroid/content/pm/PackageParser$Package;

    move-result-object v7

    .line 790
    .restart local v7    # "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v7, :cond_267

    iget-object v8, v7, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    if-nez v8, :cond_1a3

    goto/16 :goto_267

    .line 796
    :cond_1a3
    iget-object v8, v7, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v8, v8, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    iget-object v9, v6, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v9, v9, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v9, v9, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v8, v9}, Lcom/android/server/pm/PackageManagerServiceUtils;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v8

    const/4 v9, 0x0

    if-nez v8, :cond_1b6

    const/4 v8, 0x1

    goto :goto_1b7

    :cond_1b6
    move v8, v9

    .line 798
    .local v8, "sameSignatures":Z
    :goto_1b7
    if-nez v8, :cond_1e8

    invoke-static {v6}, Lcom/android/server/pm/PreinstallApp;->isSystemApp(Lcom/android/server/pm/PackageSetting;)Z

    move-result v10

    if-eqz v10, :cond_1e8

    .line 799
    sget-object v9, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " mismatch signature with system app "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v6, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", skip coping"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    invoke-static {v2, v4}, Lcom/android/server/pm/PreinstallApp;->recordHistory(Ljava/util/Map;Lcom/android/server/pm/PreinstallApp$Item;)V

    .line 802
    goto/16 :goto_24

    .line 805
    :cond_1e8
    if-nez v8, :cond_23c

    .line 806
    sget-object v10, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " mismatch signature with "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v6, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ", delete it\'s resources and data before coping"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    iget-object v10, v7, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v10, v9}, Lcom/android/server/pm/PackageManagerService;->deleteDataPackage(Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_23c

    .line 810
    sget-object v9, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Delete mismatch signature app "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v4, Lcom/android/server/pm/PreinstallApp$Item;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " failed, skip coping "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 811
    invoke-virtual {v4}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 810
    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    goto/16 :goto_24

    .line 816
    :cond_23c
    invoke-static {p0, v4, v6}, Lcom/android/server/pm/PreinstallApp;->copyPreinstallApp(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PreinstallApp$Item;Lcom/android/server/pm/PackageSetting;)Z

    move-result v9

    if-eqz v9, :cond_246

    .line 817
    invoke-static {v2, v4}, Lcom/android/server/pm/PreinstallApp;->recordHistory(Ljava/util/Map;Lcom/android/server/pm/PreinstallApp$Item;)V

    goto :goto_265

    .line 820
    :cond_246
    sget-object v9, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Copy "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " failed"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    .end local v4    # "item":Lcom/android/server/pm/PreinstallApp$Item;
    .end local v5    # "recorded":Z
    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v7    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v8    # "sameSignatures":Z
    :goto_265
    goto/16 :goto_24

    .line 791
    .restart local v4    # "item":Lcom/android/server/pm/PreinstallApp$Item;
    .restart local v5    # "recorded":Z
    .restart local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v7    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_267
    :goto_267
    sget-object v8, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Parse "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " failed, skip"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    goto/16 :goto_24

    .line 824
    .end local v4    # "item":Lcom/android/server/pm/PreinstallApp$Item;
    .end local v5    # "recorded":Z
    .end local v6    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v7    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_288
    invoke-static {v2}, Lcom/android/server/pm/PreinstallApp;->writeHistory(Ljava/util/Map;)V

    .line 825
    sget-object v3, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "copy preinstall apps end, consume "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    return-void
.end method

.method private static copyPreinstallAppsForFirstBoot(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Settings;)V
    .registers 14
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "settings"    # Lcom/android/server/pm/Settings;

    .line 639
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 640
    .local v0, "currentTime":J
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 642
    .local v2, "history":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-static {}, Lcom/android/server/pm/PreinstallApp;->existHistory()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 645
    sget-object v3, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    const-string v4, "Exist preinstall history, skip copying preinstall apps for first boot!"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    return-void

    .line 648
    :cond_17
    sget-object v3, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    const-string v4, "Copy preinstall apps start for first boot"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 653
    .local v3, "pkgMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    sget-object v4, Lcom/android/server/pm/PreinstallApp;->sPreinstallApps:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PreinstallApp$Item;

    .line 654
    .local v5, "item":Lcom/android/server/pm/PreinstallApp$Item;
    iget-object v6, v5, Lcom/android/server/pm/PreinstallApp$Item;->apkFile:Ljava/io/File;

    invoke-static {v6}, Lcom/android/server/pm/PreinstallApp;->signCheck(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_49

    .line 655
    sget-object v6, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    const-string v7, "Skip copying when the sign is false for first boot."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    goto :goto_2d

    .line 659
    :cond_49
    iget-object v6, v5, Lcom/android/server/pm/PreinstallApp$Item;->pkgLite:Landroid/content/pm/PackageParser$PackageLite;

    .line 660
    .local v6, "pl":Landroid/content/pm/PackageParser$PackageLite;
    iget-object v7, v6, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v7}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v7

    .line 661
    .local v7, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-static {v7}, Lcom/android/server/pm/PreinstallApp;->isSystemAndNotUpdatedSystemApp(Lcom/android/server/pm/PackageSetting;)Z

    move-result v8

    if-eqz v8, :cond_a6

    .line 666
    sget-object v8, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Skip copying new system updated preinstall app "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", update it after system ready"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    iget-object v8, v5, Lcom/android/server/pm/PreinstallApp$Item;->app:Ljava/io/File;

    invoke-static {v8}, Lcom/android/server/pm/PreinstallApp;->parsePackage(Ljava/io/File;)Landroid/content/pm/PackageParser$Package;

    move-result-object v8

    .line 669
    .local v8, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v8, :cond_86

    .line 670
    iput-object v8, v5, Lcom/android/server/pm/PreinstallApp$Item;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 671
    sget-object v9, Lcom/android/server/pm/PreinstallApp;->sNewUpdatedSystemPreinstallApps:Ljava/util/Set;

    invoke-interface {v9, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    .line 673
    :cond_86
    sget-object v9, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Parse "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " failed, skip"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    goto :goto_2d

    .line 677
    .end local v8    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_a6
    invoke-static {p0, v5, v7}, Lcom/android/server/pm/PreinstallApp;->copyPreinstallApp(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PreinstallApp$Item;Lcom/android/server/pm/PackageSetting;)Z

    move-result v8

    if-eqz v8, :cond_ec

    .line 678
    sget-object v8, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Copy "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " for first boot"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    iget-object v8, v5, Lcom/android/server/pm/PreinstallApp$Item;->pkgLite:Landroid/content/pm/PackageParser$PackageLite;

    if-eqz v8, :cond_e8

    iget-object v8, v5, Lcom/android/server/pm/PreinstallApp$Item;->pkgLite:Landroid/content/pm/PackageParser$PackageLite;

    iget-object v8, v8, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_e8

    .line 681
    iget-object v8, v5, Lcom/android/server/pm/PreinstallApp$Item;->pkgLite:Landroid/content/pm/PackageParser$PackageLite;

    iget-object v8, v8, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    iget-object v9, v5, Lcom/android/server/pm/PreinstallApp$Item;->pkgLite:Landroid/content/pm/PackageParser$PackageLite;

    iget v9, v9, Landroid/content/pm/PackageParser$PackageLite;->versionCode:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    :cond_e8
    invoke-static {v2, v5}, Lcom/android/server/pm/PreinstallApp;->recordHistory(Ljava/util/Map;Lcom/android/server/pm/PreinstallApp$Item;)V

    goto :goto_10b

    .line 685
    :cond_ec
    sget-object v8, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Copy "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " failed for first boot"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    .end local v5    # "item":Lcom/android/server/pm/PreinstallApp$Item;
    .end local v6    # "pl":Landroid/content/pm/PackageParser$PackageLite;
    .end local v7    # "ps":Lcom/android/server/pm/PackageSetting;
    :goto_10b
    goto/16 :goto_2d

    .line 688
    :cond_10d
    invoke-static {v2}, Lcom/android/server/pm/PreinstallApp;->writeHistory(Ljava/util/Map;)V

    .line 691
    invoke-static {v3}, Lcom/android/server/pm/PreinstallApp;->writePreinstallPackage(Ljava/util/Map;)V

    .line 693
    sget-object v4, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Copy preinstall apps end for first boot, consume "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    return-void
.end method

.method private static copyPreinstallForVersionUnder21(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PreinstallApp$Item;Lcom/android/server/pm/PackageSetting;)Z
    .registers 8
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "srcApp"    # Lcom/android/server/pm/PreinstallApp$Item;
    .param p2, "ps"    # Lcom/android/server/pm/PackageSetting;

    .line 359
    const/4 v0, 0x0

    .line 360
    .local v0, "dstCodePath":Ljava/io/File;
    iget-object v1, p1, Lcom/android/server/pm/PreinstallApp$Item;->apkFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    .line 362
    return v2

    .line 364
    :cond_b
    if-eqz p2, :cond_19

    invoke-static {p2}, Lcom/android/server/pm/PreinstallApp;->underData(Lcom/android/server/pm/PackageSetting;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 366
    invoke-static {p0, p2}, Lcom/android/server/pm/PreinstallApp;->cleanUpResource(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageSetting;)Z

    .line 367
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    goto :goto_27

    .line 369
    :cond_19
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/app/"

    iget-object v4, p1, Lcom/android/server/pm/PreinstallApp$Item;->apkFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 371
    :goto_27
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 372
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 374
    :cond_30
    iget-object v1, p1, Lcom/android/server/pm/PreinstallApp$Item;->apkFile:Ljava/io/File;

    invoke-static {v1, v0}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_41

    .line 375
    invoke-virtual {v0, v3, v2}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v1

    if-eqz v1, :cond_41

    move v2, v3

    nop

    :cond_41
    move v1, v2

    .line 376
    .local v1, "ret":Z
    return v1
.end method

.method public static copyPreinstallPAITrackingFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .line 1304
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16d

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_16d

    .line 1307
    :cond_e
    const/4 v0, 0x0

    .line 1308
    .local v0, "isAppsflyer":Z
    const/4 v1, 0x0

    .line 1309
    .local v1, "filePath":Ljava/lang/String;
    const-string v2, "appsflyer"

    invoke-static {v2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1310
    const-string v1, "/data/miui/pai/pre_install.appsflyer"

    .line 1311
    const/4 v0, 0x1

    goto :goto_36

    .line 1312
    :cond_1c
    const-string/jumbo v2, "xiaomi"

    invoke-static {v2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_151

    .line 1313
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/miui/pai/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1319
    :goto_36
    if-eqz v0, :cond_57

    sget-object v2, Lcom/android/server/pm/PreinstallApp;->mNewTrackContentList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 1320
    sget-object v2, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Content duplication dose not need to be written again! content is :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    return-void

    .line 1323
    :cond_57
    sget-object v2, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "use "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " tracking method!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    const/4 v2, 0x0

    .line 1327
    .local v2, "bw":Ljava/io/BufferedWriter;
    :try_start_74
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1328
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    const/4 v5, -0x1

    if-nez v4, :cond_b7

    .line 1329
    sget-object v4, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "create tracking file\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_b4

    .line 1331
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 1332
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    const/16 v6, 0x1fd

    invoke-static {v4, v6, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    .line 1334
    :cond_b4
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 1336
    :cond_b7
    const/16 v4, 0x1b4

    invoke-static {v3, v4, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    .line 1337
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/FileWriter;

    invoke-direct {v5, v3, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v2, v4

    .line 1338
    if-eqz v0, :cond_ce

    .line 1339
    sget-object v4, Lcom/android/server/pm/PreinstallApp;->mNewTrackContentList:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1341
    :cond_ce
    invoke-virtual {v2, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1342
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1343
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    .line 1344
    sget-object v4, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    const-string v5, "Copy PAI tracking content Success!"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e0
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_e0} :catch_ea
    .catchall {:try_start_74 .. :try_end_e0} :catchall_e8

    .line 1356
    .end local v3    # "file":Ljava/io/File;
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1357
    nop

    .line 1358
    invoke-static {}, Lcom/android/server/pm/PreinstallApp;->restoreconPreinstallDir()V

    .line 1359
    return-void

    .line 1356
    :catchall_e8
    move-exception v3

    goto :goto_14d

    .line 1346
    :catch_ea
    move-exception v3

    .line 1347
    .local v3, "e":Ljava/io/IOException;
    :try_start_eb
    const-string v4, "appsflyer"

    invoke-static {v4, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_11a

    .line 1348
    sget-object v4, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error occurs when to copy PAI tracking content("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ") into "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_149

    .line 1350
    :cond_11a
    const-string/jumbo v4, "xiaomi"

    invoke-static {v4, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_149

    .line 1351
    sget-object v4, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error occurs when to create "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " PAI tracking file into "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_149
    .catchall {:try_start_eb .. :try_end_149} :catchall_e8

    .line 1356
    :cond_149
    :goto_149
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1354
    return-void

    .line 1356
    .end local v3    # "e":Ljava/io/IOException;
    :goto_14d
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3

    .line 1315
    .end local v2    # "bw":Ljava/io/BufferedWriter;
    :cond_151
    sget-object v2, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Used invalid pai tracking type ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ! you can use type:appsflyer or xiaomi"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    return-void

    .line 1305
    .end local v0    # "isAppsflyer":Z
    .end local v1    # "filePath":Ljava/lang/String;
    :cond_16d
    :goto_16d
    return-void
.end method

.method private static copyTraditionalTrackFileToNewLocationIfNeed()V
    .registers 6

    .line 1367
    invoke-static {}, Lcom/android/server/pm/PreinstallApp;->readNewPAITrackFileIfNeed()V

    .line 1368
    const-string/jumbo v0, "ro.appsflyer.preinstall.path"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1369
    .local v0, "appsflyerPath":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1370
    sget-object v1, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "no system property ro.appsflyer.preinstall.path"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    return-void

    .line 1373
    :cond_1b
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/miui/pai/pre_install.appsflyer"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1374
    .local v1, "paiTrackingPath":Ljava/io/File;
    const-string v2, "/data/miui/pai/pre_install.appsflyer"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8b

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_8b

    .line 1376
    :try_start_30
    sget-object v2, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create new appsflyer tracking file\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, -0x1

    if-nez v2, :cond_65

    .line 1378
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 1379
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    const/16 v4, 0x1fd

    invoke-static {v2, v4, v3, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    .line 1381
    :cond_65
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 1382
    const/16 v2, 0x1b4

    invoke-static {v1, v2, v3, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_6d} :catch_6e

    .line 1385
    goto :goto_85

    .line 1383
    :catch_6e
    move-exception v2

    .line 1384
    .local v2, "e":Ljava/io/IOException;
    sget-object v3, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error occurs when to create new appsflyer tracking"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    .end local v2    # "e":Ljava/io/IOException;
    :goto_85
    invoke-static {}, Lcom/android/server/pm/PreinstallApp;->readTraditionalPAITrackFile()V

    .line 1387
    invoke-static {}, Lcom/android/server/pm/PreinstallApp;->writeNewPAITrackFile()V

    .line 1389
    :cond_8b
    invoke-static {}, Lcom/android/server/pm/PreinstallApp;->restoreconPreinstallDir()V

    .line 1390
    return-void
.end method

.method private static createIfNonexist(Ljava/io/File;)V
    .registers 3
    .param p0, "dir"    # Ljava/io/File;

    .line 337
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_14

    .line 338
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 339
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Ljava/io/File;->setReadable(ZZ)Z

    .line 340
    invoke-virtual {p0, v1, v0}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 341
    invoke-virtual {p0, v1}, Ljava/io/File;->setWritable(Z)Z

    .line 343
    :cond_14
    return-void
.end method

.method private static dealed(Ljava/util/Map;Lcom/android/server/pm/PreinstallApp$Item;)Z
    .registers 3
    .param p1, "item"    # Lcom/android/server/pm/PreinstallApp$Item;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/android/server/pm/PreinstallApp$Item;",
            ")Z"
        }
    .end annotation

    .line 560
    .local p0, "history":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    iget-object v0, p1, Lcom/android/server/pm/PreinstallApp$Item;->apkFile:Ljava/io/File;

    invoke-static {p0, v0}, Lcom/android/server/pm/PreinstallApp;->dealed(Ljava/util/Map;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method private static dealed(Ljava/util/Map;Ljava/io/File;)Z
    .registers 6
    .param p1, "apkFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/io/File;",
            ")Z"
        }
    .end annotation

    .line 552
    .local p0, "history":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 553
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_46

    .line 554
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/system/data-app"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_46

    .line 555
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/vendor/data-app"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_46

    .line 556
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/product/data-app"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_46

    const/4 v0, 0x1

    goto :goto_47

    :cond_46
    const/4 v0, 0x0

    .line 552
    :goto_47
    return v0
.end method

.method private static deleteContents(Ljava/io/File;)Z
    .registers 9
    .param p0, "dir"    # Ljava/io/File;

    .line 313
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 314
    .local v0, "files":[Ljava/io/File;
    const/4 v1, 0x1

    .line 315
    .local v1, "success":Z
    if-eqz v0, :cond_38

    .line 316
    array-length v2, v0

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_38

    aget-object v4, v0, v3

    .line 317
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 318
    invoke-static {v4}, Lcom/android/server/pm/PreinstallApp;->deleteContents(Ljava/io/File;)Z

    move-result v5

    and-int/2addr v1, v5

    .line 320
    :cond_18
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_35

    .line 321
    sget-object v5, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to delete "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    const/4 v1, 0x0

    .line 316
    .end local v4    # "file":Ljava/io/File;
    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 326
    :cond_38
    return v1
.end method

.method private static deleteFileOrDirectory(Ljava/io/File;)V
    .registers 2
    .param p0, "f"    # Ljava/io/File;

    .line 330
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 331
    invoke-static {p0}, Lcom/android/server/pm/PreinstallApp;->deleteContents(Ljava/io/File;)Z

    .line 333
    :cond_9
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 334
    return-void
.end method

.method private static existHistory()Z
    .registers 3

    .line 303
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/app/preinstall_history"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    .line 304
    return v1

    .line 306
    :cond_f
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/system/preinstall_history"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 307
    return v1

    .line 309
    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method private static getAllPreinstallApplist()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 532
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/pm/PreinstallApp;->getPreinstallApplist(Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static getApkFile(Ljava/io/File;)Ljava/io/File;
    .registers 2
    .param p0, "app"    # Ljava/io/File;

    .line 350
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 351
    invoke-static {p0}, Lcom/android/server/pm/PreinstallApp;->getBaseApkFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 353
    :cond_b
    return-object p0
.end method

.method private static getBaseApkFile(Ljava/io/File;)Ljava/io/File;
    .registers 4
    .param p0, "dir"    # Ljava/io/File;

    .line 458
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".apk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getCustomizePreinstallAppList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 528
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/pm/PreinstallApp;->getPreinstallApplist(Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static getPackageManager()Landroid/content/pm/IPackageManager;
    .registers 1

    .line 181
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    return-object v0
.end method

.method public static getPeinstalledChannelList()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1071
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1072
    .local v0, "preinstalledChannelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lmiui/util/CustomizeUtil;->getMiuiCustVariantDir()Ljava/io/File;

    move-result-object v1

    .line 1073
    .local v1, "custVariantDir":Ljava/io/File;
    if-eqz v1, :cond_67

    .line 1074
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 1075
    .local v2, "custVariantPath":Ljava/lang/String;
    sget-object v3, Lcom/android/server/pm/PreinstallApp;->CUSTOMIZED_APP_DIR:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/customized_channellist"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/android/server/pm/PreinstallApp;->addPreinstallChannelToList(Ljava/util/List;Ljava/io/File;Ljava/lang/String;)V

    .line 1078
    sget-object v3, Lcom/android/server/pm/PreinstallApp;->CUSTOMIZED_APP_DIR:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/ota_customized_channellist"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/android/server/pm/PreinstallApp;->addPreinstallChannelToList(Ljava/util/List;Ljava/io/File;Ljava/lang/String;)V

    .line 1081
    sget-object v3, Lcom/android/server/pm/PreinstallApp;->RECOMMENDED_APP_DIR:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/recommended_channellist"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/android/server/pm/PreinstallApp;->addPreinstallChannelToList(Ljava/util/List;Ljava/io/File;Ljava/lang/String;)V

    .line 1084
    sget-object v3, Lcom/android/server/pm/PreinstallApp;->RECOMMENDED_APP_DIR:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/ota_recommended_channellist"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/android/server/pm/PreinstallApp;->addPreinstallChannelToList(Ljava/util/List;Ljava/io/File;Ljava/lang/String;)V

    .line 1088
    .end local v2    # "custVariantPath":Ljava/lang/String;
    :cond_67
    return-object v0
.end method

.method private static getPreinstallApplist(Z)Ljava/util/ArrayList;
    .registers 7
    .param p0, "onlyCust"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 497
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 498
    .local v0, "preinstallAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 499
    .local v1, "customizedAppSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 501
    .local v2, "recommendedAppSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Lmiui/util/CustomizeUtil;->getMiuiCustVariantDir()Ljava/io/File;

    move-result-object v3

    .line 502
    .local v3, "custVariantDir":Ljava/io/File;
    if-eqz v3, :cond_40

    .line 504
    new-instance v4, Ljava/io/File;

    const-string v5, "customized_applist"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4, v1}, Lcom/android/server/pm/PreinstallApp;->readLineToSet(Ljava/io/File;Ljava/util/Set;)V

    .line 506
    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "ota_customized_applist"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4, v1}, Lcom/android/server/pm/PreinstallApp;->readLineToSet(Ljava/io/File;Ljava/util/Set;)V

    .line 508
    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "recommended_applist"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4, v2}, Lcom/android/server/pm/PreinstallApp;->readLineToSet(Ljava/io/File;Ljava/util/Set;)V

    .line 510
    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "ota_recommended_applist"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4, v2}, Lcom/android/server/pm/PreinstallApp;->readLineToSet(Ljava/io/File;Ljava/util/Set;)V

    .line 515
    :cond_40
    sget-object v4, Lcom/android/server/pm/PreinstallApp;->CUSTOMIZED_APP_DIR:Ljava/io/File;

    invoke-static {v0, v4, v1}, Lcom/android/server/pm/PreinstallApp;->addPreinstallAppToList(Ljava/util/List;Ljava/io/File;Ljava/util/Set;)V

    .line 517
    sget-object v4, Lcom/android/server/pm/PreinstallApp;->RECOMMENDED_APP_DIR:Ljava/io/File;

    invoke-static {v0, v4, v2}, Lcom/android/server/pm/PreinstallApp;->addPreinstallAppToList(Ljava/util/List;Ljava/io/File;Ljava/util/Set;)V

    .line 519
    if-nez p0, :cond_5c

    .line 520
    sget-object v4, Lcom/android/server/pm/PreinstallApp;->NONCUSTOMIZED_APP_DIR:Ljava/io/File;

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Lcom/android/server/pm/PreinstallApp;->addPreinstallAppToList(Ljava/util/List;Ljava/io/File;Ljava/util/Set;)V

    .line 521
    sget-object v4, Lcom/android/server/pm/PreinstallApp;->VENDOR_NONCUSTOMIZED_APP_DIR:Ljava/io/File;

    invoke-static {v0, v4, v5}, Lcom/android/server/pm/PreinstallApp;->addPreinstallAppToList(Ljava/util/List;Ljava/io/File;Ljava/util/Set;)V

    .line 522
    sget-object v4, Lcom/android/server/pm/PreinstallApp;->PRODUCT_NONCUSTOMIZED_APP_DIR:Ljava/io/File;

    invoke-static {v0, v4, v5}, Lcom/android/server/pm/PreinstallApp;->addPreinstallAppToList(Ljava/util/List;Ljava/io/File;Ljava/util/Set;)V

    .line 524
    :cond_5c
    return-object v0
.end method

.method public static getPreinstalledAppVersion(Ljava/lang/String;)I
    .registers 4
    .param p0, "pkg"    # Ljava/lang/String;

    .line 1476
    sget-object v0, Lcom/android/server/pm/PreinstallApp;->mPackageVersionMap:Ljava/util/Map;

    monitor-enter v0

    .line 1477
    :try_start_3
    sget-object v1, Lcom/android/server/pm/PreinstallApp;->mPackageVersionMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1478
    .local v1, "version":Ljava/lang/Integer;
    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    :goto_13
    monitor-exit v0

    return v2

    .line 1479
    .end local v1    # "version":Ljava/lang/Integer;
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method static ignorePreinstallApks(Ljava/lang/String;)V
    .registers 10
    .param p0, "fileName"    # Ljava/lang/String;

    .line 160
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/io/File;

    sget-object v1, Lcom/android/server/pm/PreinstallApp;->NONCUSTOMIZED_APP_DIR:Ljava/io/File;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/pm/PreinstallApp;->VENDOR_NONCUSTOMIZED_APP_DIR:Ljava/io/File;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/pm/PreinstallApp;->PRODUCT_NONCUSTOMIZED_APP_DIR:Ljava/io/File;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/pm/PreinstallApp;->CUSTOMIZED_APP_DIR:Ljava/io/File;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/pm/PreinstallApp;->RECOMMENDED_APP_DIR:Ljava/io/File;

    const/4 v3, 0x4

    aput-object v1, v0, v3

    .line 168
    .local v0, "preinstallDirs":[Ljava/io/File;
    array-length v1, v0

    :goto_1d
    if-ge v2, v1, :cond_8d

    aget-object v3, v0, v2

    .line 169
    .local v3, "dir":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 170
    .local v4, "apkFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 171
    sget-object v5, Lcom/android/server/pm/PreinstallApp;->sIgnorePreinstallApks:Ljava/util/Set;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_4d
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".apk"

    const-string v8, ""

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    .line 174
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_8a

    .line 175
    sget-object v5, Lcom/android/server/pm/PreinstallApp;->sIgnorePreinstallApks:Ljava/util/Set;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 168
    .end local v3    # "dir":Ljava/io/File;
    .end local v4    # "apkFile":Ljava/io/File;
    :cond_8a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 178
    :cond_8d
    return-void
.end method

.method public static installCustApps(Landroid/content/Context;)V
    .registers 16
    .param p0, "context"    # Landroid/content/Context;

    .line 906
    invoke-static {}, Lcom/android/server/pm/PreinstallApp;->getCustomizePreinstallAppList()Ljava/util/List;

    move-result-object v0

    .line 907
    .local v0, "custAppList":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 908
    sget-object v1, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    const-string v2, " No cust app need to install"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    return-void

    .line 912
    :cond_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 913
    .local v1, "currentTime":J
    sget-object v3, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    const-string v4, "Install cust apps start"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 915
    .local v3, "history":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-static {v3}, Lcom/android/server/pm/PreinstallApp;->readHistory(Ljava/util/Map;)V

    .line 918
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 919
    .local v4, "pkgMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 921
    .local v5, "needToInstall":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_33
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    .line 922
    .local v7, "app":Ljava/io/File;
    invoke-static {v7}, Lcom/android/server/pm/PreinstallApp;->getApkFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v8

    .line 923
    .local v8, "apkFile":Ljava/io/File;
    invoke-static {v3, v8}, Lcom/android/server/pm/PreinstallApp;->dealed(Ljava/util/Map;Ljava/io/File;)Z

    move-result v9

    if-eqz v9, :cond_4a

    .line 924
    goto :goto_33

    .line 926
    :cond_4a
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 927
    .end local v7    # "app":Ljava/io/File;
    .end local v8    # "apkFile":Ljava/io/File;
    goto :goto_33

    .line 929
    :cond_4e
    invoke-static {p0, v5}, Lcom/android/server/pm/PackageManagerProxy;->installAppList(Landroid/content/Context;Ljava/util/List;)Ljava/util/Map;

    move-result-object v6

    .line 931
    .local v6, "installedResult":Ljava/util/Map;, "Ljava/util/Map<Ljava/io/File;Ljava/lang/Integer;>;"
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 932
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/io/File;Ljava/lang/Integer;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/io/File;

    .line 933
    .local v9, "apkFile":Ljava/io/File;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 934
    .local v10, "result":I
    if-nez v10, :cond_c0

    .line 935
    sget-object v11, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Install cust app ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "] mtime["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/io/File;->lastModified()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    invoke-static {v9}, Lcom/android/server/pm/PreinstallApp;->parsePackageLite(Ljava/io/File;)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v11

    .line 937
    .local v11, "pl":Landroid/content/pm/PackageParser$PackageLite;
    if-eqz v11, :cond_bc

    iget-object v12, v11, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_bc

    .line 938
    iget-object v12, v11, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    iget v13, v11, Landroid/content/pm/PackageParser$PackageLite;->versionCode:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v4, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 940
    :cond_bc
    invoke-static {v3, v9}, Lcom/android/server/pm/PreinstallApp;->recordToHistory(Ljava/util/Map;Ljava/io/File;)V

    .line 941
    .end local v11    # "pl":Landroid/content/pm/PackageParser$PackageLite;
    goto :goto_e7

    .line 943
    :cond_c0
    sget-object v11, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Install cust app ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "] fail, result["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/io/File;Ljava/lang/Integer;>;"
    .end local v9    # "apkFile":Ljava/io/File;
    .end local v10    # "result":I
    :goto_e7
    goto/16 :goto_5a

    .line 947
    :cond_e9
    invoke-static {v3}, Lcom/android/server/pm/PreinstallApp;->writeHistory(Ljava/util/Map;)V

    .line 950
    invoke-static {v4}, Lcom/android/server/pm/PreinstallApp;->writePreinstallPackage(Ljava/util/Map;)V

    .line 952
    sget-object v7, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Install cust apps end, consume "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v1

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "ms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    return-void
.end method

.method public static installNewUpdatedSystemPreinstallApps(Landroid/content/Context;)V
    .registers 14
    .param p0, "context"    # Landroid/content/Context;

    .line 853
    invoke-static {}, Lcom/android/server/pm/PreinstallApp;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 854
    .local v0, "pm":Landroid/content/pm/IPackageManager;
    sget-object v1, Lcom/android/server/pm/PreinstallApp;->sNewUpdatedSystemPreinstallApps:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 855
    sget-object v1, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    const-string v2, "No updated system preinstall apps need to install"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    return-void

    .line 859
    :cond_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 860
    .local v1, "currentTime":J
    sget-object v3, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    const-string v4, "Install updated system preinstall apps start"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 862
    .local v3, "history":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-static {v3}, Lcom/android/server/pm/PreinstallApp;->readHistory(Ljava/util/Map;)V

    .line 864
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 865
    .local v4, "needToInstall":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    sget-object v5, Lcom/android/server/pm/PreinstallApp;->sNewUpdatedSystemPreinstallApps:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_32
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PreinstallApp$Item;

    .line 866
    .local v6, "item":Lcom/android/server/pm/PreinstallApp$Item;
    invoke-static {v3, v6}, Lcom/android/server/pm/PreinstallApp;->dealed(Ljava/util/Map;Lcom/android/server/pm/PreinstallApp$Item;)Z

    move-result v7

    if-eqz v7, :cond_45

    .line 867
    goto :goto_32

    .line 870
    :cond_45
    iget-object v7, v6, Lcom/android/server/pm/PreinstallApp$Item;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 871
    .local v7, "pkg":Landroid/content/pm/PackageParser$Package;
    const/4 v8, 0x0

    .line 873
    .local v8, "pi":Landroid/content/pm/PackageInfo;
    :try_start_48
    iget-object v9, v7, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/16 v10, 0x40

    const/4 v11, 0x0

    invoke-interface {v0, v9, v10, v11}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v9
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_51} :catch_88

    move-object v8, v9

    .line 877
    nop

    .line 878
    if-eqz v8, :cond_82

    iget v9, v7, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    iget v10, v8, Landroid/content/pm/PackageInfo;->versionCode:I

    if-gt v9, v10, :cond_82

    .line 879
    sget-object v9, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " is not newer than "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", skip"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    goto :goto_32

    .line 882
    :cond_82
    iget-object v9, v6, Lcom/android/server/pm/PreinstallApp$Item;->apkFile:Ljava/io/File;

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 883
    .end local v6    # "item":Lcom/android/server/pm/PreinstallApp$Item;
    .end local v7    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v8    # "pi":Landroid/content/pm/PackageInfo;
    goto :goto_32

    .line 874
    .restart local v6    # "item":Lcom/android/server/pm/PreinstallApp$Item;
    .restart local v7    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v8    # "pi":Landroid/content/pm/PackageInfo;
    :catch_88
    move-exception v9

    .line 875
    .local v9, "e":Landroid/os/RemoteException;
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    .line 876
    goto :goto_32

    .line 885
    .end local v6    # "item":Lcom/android/server/pm/PreinstallApp$Item;
    .end local v7    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v8    # "pi":Landroid/content/pm/PackageInfo;
    .end local v9    # "e":Landroid/os/RemoteException;
    :cond_8d
    invoke-static {p0, v4}, Lcom/android/server/pm/PackageManagerProxy;->installAppList(Landroid/content/Context;Ljava/util/List;)Ljava/util/Map;

    move-result-object v5

    .line 887
    .local v5, "installedResult":Ljava/util/Map;, "Ljava/util/Map<Ljava/io/File;Ljava/lang/Integer;>;"
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_99
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_fb

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 888
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/io/File;Ljava/lang/Integer;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    .line 889
    .local v8, "apkFile":Ljava/io/File;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 890
    .local v9, "result":I
    if-nez v9, :cond_d5

    .line 891
    sget-object v10, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Install new updated system preinstall app "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    invoke-static {v3, v8}, Lcom/android/server/pm/PreinstallApp;->recordToHistory(Ljava/util/Map;Ljava/io/File;)V

    goto :goto_f7

    .line 894
    :cond_d5
    sget-object v10, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Install new updated system preinstall app "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " failed, result "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    :goto_f7
    invoke-static {v3}, Lcom/android/server/pm/PreinstallApp;->writeHistory(Ljava/util/Map;)V

    .line 897
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/io/File;Ljava/lang/Integer;>;"
    .end local v8    # "apkFile":Ljava/io/File;
    .end local v9    # "result":I
    goto :goto_99

    .line 898
    :cond_fb
    sget-object v6, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Install updated system preinstall apps end, consume "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v1

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    return-void
.end method

.method public static installVanwardCustApps(Landroid/content/Context;)V
    .registers 19
    .param p0, "context"    # Landroid/content/Context;

    .line 960
    invoke-static {}, Lcom/android/server/pm/PreinstallApp;->getCustomizePreinstallAppList()Ljava/util/List;

    move-result-object v0

    .line 961
    .local v0, "custAppList":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 962
    .local v1, "vanwardCustAppSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Ljava/io/File;

    .line 963
    invoke-static {}, Lmiui/util/CustomizeUtil;->getMiuiAppDir()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "vanward_applist"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 962
    invoke-static {v2, v1}, Lcom/android/server/pm/PreinstallApp;->readLineToSet(Ljava/io/File;Ljava/util/Set;)V

    .line 966
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_148

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 967
    move-object/from16 v7, p0

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    goto/16 :goto_14e

    .line 971
    :cond_2c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 972
    .local v2, "currentTime":J
    sget-object v4, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    const-string v5, "Install vanward cust apps start"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 974
    .local v4, "history":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-static {v4}, Lcom/android/server/pm/PreinstallApp;->readHistory(Ljava/util/Map;)V

    .line 977
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 978
    .local v5, "pkgMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 980
    .local v6, "needToInstall":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4d
    :goto_4d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_72

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    .line 981
    .local v8, "app":Ljava/io/File;
    invoke-static {v8}, Lcom/android/server/pm/PreinstallApp;->getApkFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v9

    .line 982
    .local v9, "apkFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4d

    .line 983
    invoke-static {v4, v9}, Lcom/android/server/pm/PreinstallApp;->dealed(Ljava/util/Map;Ljava/io/File;)Z

    move-result v10

    if-eqz v10, :cond_6e

    .line 984
    goto :goto_4d

    .line 986
    :cond_6e
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 987
    .end local v8    # "app":Ljava/io/File;
    .end local v9    # "apkFile":Ljava/io/File;
    goto :goto_4d

    .line 989
    :cond_72
    move-object/from16 v7, p0

    invoke-static {v7, v6}, Lcom/android/server/pm/PackageManagerProxy;->installAppList(Landroid/content/Context;Ljava/util/List;)Ljava/util/Map;

    move-result-object v8

    .line 991
    .local v8, "installedResult":Ljava/util/Map;, "Ljava/util/Map<Ljava/io/File;Ljava/lang/Integer;>;"
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_80
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_11c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 992
    .local v10, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/io/File;Ljava/lang/Integer;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/io/File;

    .line 993
    .local v11, "apkFile":Ljava/io/File;
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 994
    .local v12, "result":I
    if-nez v12, :cond_ea

    .line 995
    sget-object v13, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "install vanward cust app ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "] mtime["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    invoke-virtual {v11}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .end local v0    # "custAppList":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v1    # "vanwardCustAppSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v16, "custAppList":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .local v17, "vanwardCustAppSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    invoke-static {v11}, Lcom/android/server/pm/PreinstallApp;->parsePackageLite(Ljava/io/File;)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v0

    .line 998
    .local v0, "pl":Landroid/content/pm/PackageParser$PackageLite;
    if-eqz v0, :cond_e6

    iget-object v1, v0, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e6

    .line 999
    iget-object v1, v0, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    iget v13, v0, Landroid/content/pm/PackageParser$PackageLite;->versionCode:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v5, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    :cond_e6
    invoke-static {v4, v11}, Lcom/android/server/pm/PreinstallApp;->recordToHistory(Ljava/util/Map;Ljava/io/File;)V

    .line 1002
    .end local v0    # "pl":Landroid/content/pm/PackageParser$PackageLite;
    goto :goto_115

    .line 1004
    .end local v16    # "custAppList":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v17    # "vanwardCustAppSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v0, "custAppList":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v1    # "vanwardCustAppSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_ea
    move-object/from16 v16, v0

    move-object/from16 v17, v1

    .line 1004
    .end local v0    # "custAppList":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v1    # "vanwardCustAppSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v16    # "custAppList":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v17    # "vanwardCustAppSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Install vanward cust app ["

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "] fail, result["

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "]"

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/io/File;Ljava/lang/Integer;>;"
    .end local v11    # "apkFile":Ljava/io/File;
    .end local v12    # "result":I
    :goto_115
    nop

    .line 991
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    goto/16 :goto_80

    .line 1008
    .end local v16    # "custAppList":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v17    # "vanwardCustAppSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v0    # "custAppList":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v1    # "vanwardCustAppSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_11c
    move-object/from16 v16, v0

    move-object/from16 v17, v1

    .line 1008
    .end local v0    # "custAppList":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v1    # "vanwardCustAppSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v16    # "custAppList":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v17    # "vanwardCustAppSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v4}, Lcom/android/server/pm/PreinstallApp;->writeHistory(Ljava/util/Map;)V

    .line 1011
    invoke-static {v5}, Lcom/android/server/pm/PreinstallApp;->writePreinstallPackage(Ljava/util/Map;)V

    .line 1013
    sget-object v0, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Install vanward cust apps end, consume "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v2

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "ms"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    return-void

    .line 967
    .end local v2    # "currentTime":J
    .end local v4    # "history":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v5    # "pkgMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v6    # "needToInstall":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v8    # "installedResult":Ljava/util/Map;, "Ljava/util/Map<Ljava/io/File;Ljava/lang/Integer;>;"
    .end local v16    # "custAppList":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v17    # "vanwardCustAppSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v0    # "custAppList":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v1    # "vanwardCustAppSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_148
    move-object/from16 v7, p0

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    .line 967
    .end local v0    # "custAppList":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v1    # "vanwardCustAppSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v16    # "custAppList":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v17    # "vanwardCustAppSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_14e
    sget-object v0, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    const-string v1, "No vanward cust app need to install"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    return-void
.end method

.method private static final isApkFile(Ljava/io/File;)Z
    .registers 3
    .param p0, "apkFile"    # Ljava/io/File;

    .line 421
    if-eqz p0, :cond_10

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public static isPreinstallApp(Ljava/lang/String;)Z
    .registers 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 1483
    sget-object v0, Lcom/android/server/pm/PreinstallApp;->sPreinstallApps:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isPreinstalledPAIPackage(Ljava/lang/String;)Z
    .registers 3
    .param p0, "pkg"    # Ljava/lang/String;

    .line 1208
    sget-object v0, Lcom/android/server/pm/PreinstallApp;->mPackagePAIList:Ljava/util/List;

    monitor-enter v0

    .line 1209
    :try_start_3
    sget-object v1, Lcom/android/server/pm/PreinstallApp;->mPackagePAIList:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1210
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public static isPreinstalledPackage(Ljava/lang/String;)Z
    .registers 3
    .param p0, "pkg"    # Ljava/lang/String;

    .line 1202
    sget-object v0, Lcom/android/server/pm/PreinstallApp;->mPackageVersionMap:Ljava/util/Map;

    monitor-enter v0

    .line 1203
    :try_start_3
    sget-object v1, Lcom/android/server/pm/PreinstallApp;->mPackageVersionMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1204
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method private static isSamePackage(Ljava/io/File;Ljava/io/File;)Z
    .registers 8
    .param p0, "appFileA"    # Ljava/io/File;
    .param p1, "appFileB"    # Ljava/io/File;

    .line 1117
    invoke-static {p0}, Lcom/android/server/pm/PreinstallApp;->parsePackageLite(Ljava/io/File;)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v0

    .line 1118
    .local v0, "plA":Landroid/content/pm/PackageParser$PackageLite;
    invoke-static {p1}, Lcom/android/server/pm/PreinstallApp;->parsePackageLite(Ljava/io/File;)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v1

    .line 1120
    .local v1, "plB":Landroid/content/pm/PackageParser$PackageLite;
    const/4 v2, 0x0

    if-eqz v0, :cond_4c

    iget-object v3, v0, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    if-nez v3, :cond_10

    goto :goto_4c

    .line 1125
    :cond_10
    if-eqz v1, :cond_2c

    iget-object v3, v1, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    if-nez v3, :cond_17

    goto :goto_2c

    .line 1130
    :cond_17
    iget-object v3, v0, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 1131
    const/4 v2, 0x1

    return v2

    .line 1133
    :cond_23
    sget-object v3, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "isSamePackage return false."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    return v2

    .line 1126
    :cond_2c
    :goto_2c
    sget-object v3, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Parse "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " failed, return false"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    return v2

    .line 1121
    :cond_4c
    :goto_4c
    sget-object v3, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Parse "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " failed, return false"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    return v2
.end method

.method private static isSystemAndNotUpdatedSystemApp(Lcom/android/server/pm/PackageSetting;)Z
    .registers 2
    .param p0, "ps"    # Lcom/android/server/pm/PackageSetting;

    .line 544
    if-eqz p0, :cond_10

    invoke-static {p0}, Lcom/android/server/pm/PreinstallApp;->isSystemApp(Lcom/android/server/pm/PackageSetting;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {p0}, Lcom/android/server/pm/PreinstallApp;->isUpdatedSystemApp(Lcom/android/server/pm/PackageSetting;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private static isSystemApp(Lcom/android/server/pm/PackageSetting;)Z
    .registers 3
    .param p0, "ps"    # Lcom/android/server/pm/PackageSetting;

    .line 536
    iget v0, p0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method private static isUpdatedSystemApp(Lcom/android/server/pm/PackageSetting;)Z
    .registers 3
    .param p0, "ps"    # Lcom/android/server/pm/PackageSetting;

    .line 540
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    const-string v1, "/data/app/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private static isValidIme(Ljava/lang/String;Ljava/util/Locale;)Z
    .registers 8
    .param p0, "locale"    # Ljava/lang/String;
    .param p1, "curLocale"    # Ljava/util/Locale;

    .line 1017
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1018
    .local v0, "locales":[Ljava/lang/String;
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_8
    array-length v3, v0

    if-ge v2, v3, :cond_44

    .line 1019
    aget-object v3, v0, v2

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_42

    aget-object v3, v0, v2

    const-string v4, "*"

    .line 1020
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_42

    aget-object v3, v0, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1021
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3f

    goto :goto_42

    .line 1018
    :cond_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1022
    :cond_42
    :goto_42
    const/4 v1, 0x1

    return v1

    .line 1025
    .end local v2    # "i":I
    :cond_44
    return v1
.end method

.method private static parseAndDeleteDuplicatePreinstallApps()V
    .registers 12

    .line 602
    invoke-static {}, Lcom/android/server/pm/PreinstallApp;->getAllPreinstallApplist()Ljava/util/List;

    move-result-object v0

    .line 603
    .local v0, "preinstallAppFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 604
    .local v1, "currentTime":J
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 605
    .local v4, "pa":Ljava/io/File;
    invoke-static {v4}, Lcom/android/server/pm/PreinstallApp;->parsePackageLite(Ljava/io/File;)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v5

    .line 606
    .local v5, "pl":Landroid/content/pm/PackageParser$PackageLite;
    if-eqz v5, :cond_83

    iget-object v6, v5, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    if-nez v6, :cond_23

    goto :goto_83

    .line 611
    :cond_23
    iget-object v6, v5, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    .line 612
    .local v6, "packageName":Ljava/lang/String;
    new-instance v7, Lcom/android/server/pm/PreinstallApp$Item;

    const/4 v8, 0x0

    invoke-direct {v7, v6, v4, v5, v8}, Lcom/android/server/pm/PreinstallApp$Item;-><init>(Ljava/lang/String;Ljava/io/File;Landroid/content/pm/PackageParser$PackageLite;Landroid/content/pm/PackageParser$Package;)V

    .line 613
    .local v7, "newItem":Lcom/android/server/pm/PreinstallApp$Item;
    sget-object v8, Lcom/android/server/pm/PreinstallApp;->sPreinstallApps:Ljava/util/Map;

    invoke-interface {v8, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_39

    .line 614
    sget-object v8, Lcom/android/server/pm/PreinstallApp;->sPreinstallApps:Ljava/util/Map;

    invoke-interface {v8, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_82

    .line 616
    :cond_39
    sget-object v8, Lcom/android/server/pm/PreinstallApp;->sPreinstallApps:Ljava/util/Map;

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/PreinstallApp$Item;

    .line 617
    .local v8, "oldItem":Lcom/android/server/pm/PreinstallApp$Item;
    invoke-static {v7, v8}, Lcom/android/server/pm/PreinstallApp$Item;->betterThan(Lcom/android/server/pm/PreinstallApp$Item;Lcom/android/server/pm/PreinstallApp$Item;)Z

    move-result v9

    if-eqz v9, :cond_4d

    .line 618
    sget-object v9, Lcom/android/server/pm/PreinstallApp;->sPreinstallApps:Ljava/util/Map;

    invoke-interface {v9, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_50

    .line 622
    :cond_4d
    move-object v9, v7

    .line 623
    .local v9, "tmp":Lcom/android/server/pm/PreinstallApp$Item;
    move-object v7, v8

    .line 624
    move-object v8, v9

    .line 631
    .end local v9    # "tmp":Lcom/android/server/pm/PreinstallApp$Item;
    :goto_50
    sget-object v9, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " is better than "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", ignore "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    invoke-virtual {v8}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " !!!"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 631
    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    .end local v4    # "pa":Ljava/io/File;
    .end local v5    # "pl":Landroid/content/pm/PackageParser$PackageLite;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "newItem":Lcom/android/server/pm/PreinstallApp$Item;
    .end local v8    # "oldItem":Lcom/android/server/pm/PreinstallApp$Item;
    :goto_82
    goto :goto_c

    .line 607
    .restart local v4    # "pa":Ljava/io/File;
    .restart local v5    # "pl":Landroid/content/pm/PackageParser$PackageLite;
    :cond_83
    :goto_83
    sget-object v6, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Parse "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " failed, skip"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    goto/16 :goto_c

    .line 635
    .end local v4    # "pa":Ljava/io/File;
    .end local v5    # "pl":Landroid/content/pm/PackageParser$PackageLite;
    :cond_a4
    sget-object v3, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Parse preinstall apps, consume "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    return-void
.end method

.method static parsePackage(Ljava/io/File;)Landroid/content/pm/PackageParser$Package;
    .registers 5
    .param p0, "apkFile"    # Ljava/io/File;

    .line 1489
    const/4 v0, 0x1

    .line 1490
    .local v0, "parseFlags":I
    :try_start_1
    new-instance v1, Landroid/content/pm/PackageParser;

    invoke-direct {v1}, Landroid/content/pm/PackageParser;-><init>()V

    .line 1491
    .local v1, "pp":Landroid/content/pm/PackageParser;
    invoke-virtual {v1, p0, v0}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v2

    .line 1492
    .local v2, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v2, :cond_10

    .line 1493
    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;Z)V
    :try_end_10
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_1 .. :try_end_10} :catch_11

    .line 1495
    :cond_10
    return-object v2

    .line 1496
    .end local v0    # "parseFlags":I
    .end local v1    # "pp":Landroid/content/pm/PackageParser;
    .end local v2    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catch_11
    move-exception v0

    .line 1497
    .local v0, "e":Landroid/content/pm/PackageParser$PackageParserException;
    invoke-virtual {v0}, Landroid/content/pm/PackageParser$PackageParserException;->printStackTrace()V

    .line 1498
    const/4 v1, 0x0

    return-object v1
.end method

.method static parsePackageLite(Ljava/io/File;)Landroid/content/pm/PackageParser$PackageLite;
    .registers 3
    .param p0, "apkFile"    # Ljava/io/File;

    .line 1504
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0, v0}, Landroid/content/pm/PackageParser;->parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v0
    :try_end_5
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_1 .. :try_end_5} :catch_6

    return-object v0

    .line 1505
    :catch_6
    move-exception v0

    .line 1506
    .local v0, "e":Landroid/content/pm/PackageParser$PackageParserException;
    invoke-virtual {v0}, Landroid/content/pm/PackageParser$PackageParserException;->printStackTrace()V

    .line 1507
    const/4 v1, 0x0

    return-object v1
.end method

.method private static readHistory(Ljava/lang/String;Ljava/util/Map;)V
    .registers 19
    .param p0, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 185
    .local p1, "preinstallHistoryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 186
    .local v2, "bufferReader":Ljava/io/BufferedReader;
    const/4 v0, 0x0

    move-object v3, v0

    .line 188
    .local v3, "fileReader":Ljava/io/FileReader;
    :try_start_5
    new-instance v4, Ljava/io/File;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_7} :catch_13b
    .catchall {:try_start_5 .. :try_end_7} :catchall_131

    move-object/from16 v5, p0

    :try_start_9
    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 190
    .local v4, "installHistoryFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_10} :catch_12f
    .catchall {:try_start_9 .. :try_end_10} :catchall_12d

    if-nez v6, :cond_19

    .line 249
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 250
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 191
    return-void

    .line 194
    :cond_19
    :try_start_19
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object v3, v6

    .line 195
    new-instance v6, Ljava/io/BufferedReader;

    invoke-direct {v6, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v6

    .line 196
    const/4 v6, 0x0

    .line 197
    .local v6, "line":Ljava/lang/String;
    nop

    .local v0, "possibleNewPath":Ljava/lang/String;
    :goto_27
    move-object v7, v0

    .line 199
    .end local v0    # "possibleNewPath":Ljava/lang/String;
    .local v7, "possibleNewPath":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    if-eqz v0, :cond_13e

    .line 200
    const-string v0, ":"

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 201
    .local v8, "ss":[Ljava/lang/String;
    if-eqz v8, :cond_12a

    array-length v0, v8
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_39} :catch_12f
    .catchall {:try_start_19 .. :try_end_39} :catchall_12d

    const/4 v9, 0x2

    if-eq v0, v9, :cond_3e

    .line 202
    goto/16 :goto_12a

    .line 205
    :cond_3e
    const-wide/16 v9, 0x0

    .line 207
    .local v9, "mtime":J
    const/4 v0, 0x1

    :try_start_41
    aget-object v11, v8, v0

    invoke-static {v11}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11
    :try_end_4b
    .catch Ljava/lang/NumberFormatException; {:try_start_41 .. :try_end_4b} :catch_128
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_4b} :catch_12f
    .catchall {:try_start_41 .. :try_end_4b} :catchall_12d

    move-wide v9, v11

    .line 210
    nop

    .line 211
    const/4 v11, 0x0

    :try_start_4e
    aget-object v12, v8, v11

    sget-object v13, Lcom/android/server/pm/PreinstallApp;->OLD_PREINSTALL_APP_DIR:Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_c4

    .line 215
    aget-object v0, v8, v11

    sget-object v12, Lcom/android/server/pm/PreinstallApp;->OLD_PREINSTALL_APP_DIR:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/android/server/pm/PreinstallApp;->CUSTOMIZED_APP_DIR:Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 216
    .end local v7    # "possibleNewPath":Ljava/lang/String;
    .restart local v0    # "possibleNewPath":Ljava/lang/String;
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v1, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    aget-object v7, v8, v11

    sget-object v12, Lcom/android/server/pm/PreinstallApp;->OLD_PREINSTALL_APP_DIR:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/android/server/pm/PreinstallApp;->NONCUSTOMIZED_APP_DIR:Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    .line 218
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v1, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    aget-object v7, v8, v11

    sget-object v12, Lcom/android/server/pm/PreinstallApp;->OLD_PREINSTALL_APP_DIR:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/android/server/pm/PreinstallApp;->VENDOR_NONCUSTOMIZED_APP_DIR:Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    .line 220
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v1, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    aget-object v7, v8, v11

    sget-object v11, Lcom/android/server/pm/PreinstallApp;->OLD_PREINSTALL_APP_DIR:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/android/server/pm/PreinstallApp;->PRODUCT_NONCUSTOMIZED_APP_DIR:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    .line 222
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v1, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_126

    .line 224
    .end local v0    # "possibleNewPath":Ljava/lang/String;
    .restart local v7    # "possibleNewPath":Ljava/lang/String;
    :cond_c4
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x15

    if-lt v12, v13, :cond_11b

    .line 226
    aget-object v12, v8, v11

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 227
    .local v12, "paths":[Ljava/lang/String;
    if-eqz v12, :cond_11b

    array-length v13, v12

    const/4 v14, 0x7

    if-eq v13, v14, :cond_11b

    .line 228
    array-length v13, v12

    sub-int/2addr v13, v0

    aget-object v0, v12, v13

    .line 229
    .local v0, "fileName":Ljava/lang/String;
    const-string v13, ".apk"

    const-string v14, ""

    invoke-virtual {v0, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 230
    .local v13, "apkName":Ljava/lang/String;
    aget-object v14, v8, v11

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/"

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v0, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    move-object v7, v11

    .line 236
    new-instance v11, Ljava/io/File;

    const/4 v14, 0x0

    aget-object v15, v8, v14

    invoke-direct {v11, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 237
    .local v11, "oldAppFile":Ljava/io/File;
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 238
    .local v14, "newAppFile":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_11b

    .line 239
    invoke-static {v11, v14}, Lcom/android/server/pm/PreinstallApp;->isSamePackage(Ljava/io/File;Ljava/io/File;)Z

    move-result v15

    if-eqz v15, :cond_11b

    .line 240
    const/4 v15, 0x0

    aput-object v7, v8, v15

    .line 244
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v11    # "oldAppFile":Ljava/io/File;
    .end local v12    # "paths":[Ljava/lang/String;
    .end local v13    # "apkName":Ljava/lang/String;
    .end local v14    # "newAppFile":Ljava/io/File;
    :cond_11b
    const/4 v0, 0x0

    aget-object v0, v8, v0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v1, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_125
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_125} :catch_12f
    .catchall {:try_start_4e .. :try_end_125} :catchall_12d

    .line 246
    .end local v8    # "ss":[Ljava/lang/String;
    .end local v9    # "mtime":J
    move-object v0, v7

    .end local v7    # "possibleNewPath":Ljava/lang/String;
    .local v0, "possibleNewPath":Ljava/lang/String;
    :goto_126
    goto/16 :goto_27

    .line 208
    .end local v0    # "possibleNewPath":Ljava/lang/String;
    .restart local v7    # "possibleNewPath":Ljava/lang/String;
    .restart local v8    # "ss":[Ljava/lang/String;
    .restart local v9    # "mtime":J
    :catch_128
    move-exception v0

    .line 209
    .local v0, "e":Ljava/lang/NumberFormatException;
    nop

    .line 197
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v8    # "ss":[Ljava/lang/String;
    .end local v9    # "mtime":J
    :cond_12a
    :goto_12a
    move-object v0, v7

    goto/16 :goto_27

    .line 249
    .end local v4    # "installHistoryFile":Ljava/io/File;
    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "possibleNewPath":Ljava/lang/String;
    :catchall_12d
    move-exception v0

    goto :goto_134

    .line 247
    :catch_12f
    move-exception v0

    goto :goto_13e

    .line 249
    :catchall_131
    move-exception v0

    move-object/from16 v5, p0

    :goto_134
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 250
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    .line 247
    :catch_13b
    move-exception v0

    move-object/from16 v5, p0

    .line 249
    :cond_13e
    :goto_13e
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 250
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 251
    nop

    .line 252
    return-void
.end method

.method private static readHistory(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 255
    .local p0, "preinstallHistoryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    const-string v0, "/data/system/preinstall_history"

    invoke-static {v0, p0}, Lcom/android/server/pm/PreinstallApp;->readHistory(Ljava/lang/String;Ljava/util/Map;)V

    .line 256
    const-string v0, "/data/app/preinstall_history"

    invoke-static {v0, p0}, Lcom/android/server/pm/PreinstallApp;->readHistory(Ljava/lang/String;Ljava/util/Map;)V

    .line 257
    return-void
.end method

.method private static readLineToSet(Ljava/io/File;Ljava/util/Set;)V
    .registers 9
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 425
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 426
    const/4 v0, 0x0

    .line 428
    .local v0, "buffer":Ljava/io/BufferedReader;
    :try_start_7
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v1

    .line 431
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "vanward_applist"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 432
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 433
    .local v1, "am":Landroid/app/IActivityManager;
    invoke-interface {v1}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 434
    .local v2, "curLocale":Ljava/util/Locale;
    :goto_2e
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .line 434
    .local v4, "line":Ljava/lang/String;
    if-eqz v3, :cond_53

    .line 435
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v5, "\\s+"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 436
    .local v3, "ss":[Ljava/lang/String;
    array-length v5, v3

    const/4 v6, 0x2

    if-ne v5, v6, :cond_52

    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-static {v5, v2}, Lcom/android/server/pm/PreinstallApp;->isValidIme(Ljava/lang/String;Ljava/util/Locale;)Z

    move-result v5

    if-eqz v5, :cond_52

    .line 437
    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-interface {p1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 439
    .end local v3    # "ss":[Ljava/lang/String;
    :cond_52
    goto :goto_2e

    .line 440
    .end local v1    # "am":Landroid/app/IActivityManager;
    .end local v2    # "curLocale":Ljava/util/Locale;
    :cond_53
    goto :goto_73

    .line 441
    .end local v4    # "line":Ljava/lang/String;
    :cond_54
    :goto_54
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 441
    .local v2, "line":Ljava/lang/String;
    if-eqz v1, :cond_73

    .line 442
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_62
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_62} :catch_6f
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_62} :catch_6a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_62} :catch_65
    .catchall {:try_start_7 .. :try_end_62} :catchall_63

    goto :goto_54

    .line 452
    .end local v2    # "line":Ljava/lang/String;
    :catchall_63
    move-exception v1

    goto :goto_77

    .line 449
    :catch_65
    move-exception v1

    .line 450
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_66
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 450
    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_73

    .line 447
    :catch_6a
    move-exception v1

    .line 448
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 448
    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_73

    .line 445
    :catch_6f
    move-exception v1

    .line 446
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_73
    .catchall {:try_start_66 .. :try_end_73} :catchall_63

    .line 452
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_73
    :goto_73
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 453
    goto :goto_7b

    .line 452
    :goto_77
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1

    .line 455
    .end local v0    # "buffer":Ljava/io/BufferedReader;
    :cond_7b
    :goto_7b
    return-void
.end method

.method private static readNewPAITrackFileIfNeed()V
    .registers 6

    .line 1447
    sget-object v0, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "read new track file content from /data/miui/pai/pre_install.appsflyer"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/miui/pai/pre_install.appsflyer"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1449
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 1450
    const/4 v1, 0x0

    move-object v2, v1

    .line 1452
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_17
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v3

    .line 1453
    nop

    .line 1454
    .local v1, "line":Ljava/lang/String;
    :cond_23
    :goto_23
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    if-eqz v3, :cond_38

    .line 1455
    sget-object v3, Lcom/android/server/pm/PreinstallApp;->mNewTrackContentList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 1456
    sget-object v3, Lcom/android/server/pm/PreinstallApp;->mNewTrackContentList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_37} :catch_3e
    .catchall {:try_start_17 .. :try_end_37} :catchall_3c

    goto :goto_23

    .line 1462
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    :cond_38
    :goto_38
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1463
    goto :goto_5a

    .line 1462
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :catchall_3c
    move-exception v1

    goto :goto_56

    .line 1459
    :catch_3e
    move-exception v1

    .line 1460
    .local v1, "e":Ljava/io/IOException;
    :try_start_3f
    sget-object v3, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error occurs while read new track file content on pkms start"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catchall {:try_start_3f .. :try_end_55} :catchall_3c

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_38

    .line 1462
    :goto_56
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1

    .line 1465
    .end local v2    # "reader":Ljava/io/BufferedReader;
    :cond_5a
    :goto_5a
    return-void
.end method

.method private static readPackagePAIList()V
    .registers 5

    .line 1170
    const/4 v0, 0x0

    move-object v1, v0

    .line 1172
    .local v1, "reader":Ljava/io/BufferedReader;
    :try_start_2
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/data/system/preinstallPAI.list"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v2

    .line 1173
    nop

    .line 1174
    .local v0, "line":Ljava/lang/String;
    :goto_10
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    if-eqz v2, :cond_1d

    .line 1175
    sget-object v2, Lcom/android/server/pm/PreinstallApp;->mPackagePAIList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_1c} :catch_24
    .catchall {:try_start_2 .. :try_end_1c} :catchall_22

    goto :goto_10

    .line 1180
    .end local v0    # "line":Ljava/lang/String;
    :cond_1d
    nop

    .line 1181
    :goto_1e
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_3e

    .line 1180
    :catchall_22
    move-exception v0

    goto :goto_3f

    .line 1177
    :catch_24
    move-exception v0

    .line 1178
    .local v0, "e":Ljava/io/IOException;
    :try_start_25
    sget-object v2, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error occurs while read preinstalled PAI packages "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catchall {:try_start_25 .. :try_end_3b} :catchall_22

    .line 1180
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_3e

    goto :goto_1e

    .line 1184
    :cond_3e
    :goto_3e
    return-void

    .line 1180
    :goto_3f
    if-eqz v1, :cond_44

    .line 1181
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_44
    throw v0
.end method

.method private static readPackageVersionMap()V
    .registers 8

    .line 1140
    const/4 v0, 0x0

    move-object v1, v0

    .line 1142
    .local v1, "reader":Ljava/io/BufferedReader;
    :try_start_2
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/data/system/preinstall.list"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v2

    .line 1143
    nop

    .line 1144
    .local v0, "line":Ljava/lang/String;
    :cond_10
    :goto_10
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    if-eqz v2, :cond_47

    .line 1145
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1146
    .local v2, "ss":[Ljava/lang/String;
    if-eqz v2, :cond_10

    array-length v3, v2

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v3, v5, :cond_28

    array-length v3, v2
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_25} :catch_4e
    .catchall {:try_start_2 .. :try_end_25} :catchall_4c

    if-eq v3, v4, :cond_28

    .line 1147
    goto :goto_10

    .line 1149
    :cond_28
    const/4 v3, 0x0

    move v6, v3

    .line 1151
    .local v6, "version":I
    :try_start_2a
    array-length v7, v2

    if-ne v7, v4, :cond_38

    .line 1152
    aget-object v4, v2, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_37
    .catch Ljava/lang/NumberFormatException; {:try_start_2a .. :try_end_37} :catch_45
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_37} :catch_4e
    .catchall {:try_start_2a .. :try_end_37} :catchall_4c

    move v6, v4

    .line 1156
    :cond_38
    nop

    .line 1158
    :try_start_39
    sget-object v4, Lcom/android/server/pm/PreinstallApp;->mPackageVersionMap:Ljava/util/Map;

    aget-object v3, v2, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_44} :catch_4e
    .catchall {:try_start_39 .. :try_end_44} :catchall_4c

    .line 1159
    .end local v2    # "ss":[Ljava/lang/String;
    .end local v6    # "version":I
    goto :goto_10

    .line 1154
    .restart local v2    # "ss":[Ljava/lang/String;
    .restart local v6    # "version":I
    :catch_45
    move-exception v3

    .line 1155
    .local v3, "e":Ljava/lang/NumberFormatException;
    goto :goto_10

    .line 1163
    .end local v0    # "line":Ljava/lang/String;
    .end local v2    # "ss":[Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .end local v6    # "version":I
    :cond_47
    nop

    .line 1164
    :goto_48
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_68

    .line 1163
    :catchall_4c
    move-exception v0

    goto :goto_69

    .line 1160
    :catch_4e
    move-exception v0

    .line 1161
    .local v0, "e":Ljava/io/IOException;
    :try_start_4f
    sget-object v2, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error occurs while read preinstalled packages "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_65
    .catchall {:try_start_4f .. :try_end_65} :catchall_4c

    .line 1163
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_68

    goto :goto_48

    .line 1167
    :cond_68
    :goto_68
    return-void

    .line 1163
    :goto_69
    if-eqz v1, :cond_6e

    .line 1164
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_6e
    throw v0
.end method

.method private static readTraditionalPAITrackFile()V
    .registers 6

    .line 1393
    sget-object v0, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "read traditional track file content from /cust/etc/pre_install.appsflyer"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    new-instance v0, Ljava/io/File;

    const-string v1, "/cust/etc/pre_install.appsflyer"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1395
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 1396
    sget-object v1, Lcom/android/server/pm/PreinstallApp;->mTraditionalTrackContentList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1397
    const/4 v1, 0x0

    move-object v2, v1

    .line 1399
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_1c
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v3

    .line 1400
    nop

    .line 1401
    .local v1, "line":Ljava/lang/String;
    :goto_28
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    if-eqz v3, :cond_35

    .line 1402
    sget-object v3, Lcom/android/server/pm/PreinstallApp;->mTraditionalTrackContentList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_34} :catch_3b
    .catchall {:try_start_1c .. :try_end_34} :catchall_39

    goto :goto_28

    .line 1407
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    :cond_35
    :goto_35
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1408
    goto :goto_57

    .line 1407
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :catchall_39
    move-exception v1

    goto :goto_53

    .line 1404
    :catch_3b
    move-exception v1

    .line 1405
    .local v1, "e":Ljava/io/IOException;
    :try_start_3c
    sget-object v3, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error occurs while read traditional track file content"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52
    .catchall {:try_start_3c .. :try_end_52} :catchall_39

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_35

    .line 1407
    :goto_53
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1

    .line 1410
    .end local v2    # "reader":Ljava/io/BufferedReader;
    :cond_57
    :goto_57
    return-void
.end method

.method private static recordHistory(Ljava/util/Map;Lcom/android/server/pm/PreinstallApp$Item;)V
    .registers 3
    .param p1, "item"    # Lcom/android/server/pm/PreinstallApp$Item;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/android/server/pm/PreinstallApp$Item;",
            ")V"
        }
    .end annotation

    .line 299
    .local p0, "history":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    iget-object v0, p1, Lcom/android/server/pm/PreinstallApp$Item;->apkFile:Ljava/io/File;

    invoke-static {p0, v0}, Lcom/android/server/pm/PreinstallApp;->recordToHistory(Ljava/util/Map;Ljava/io/File;)V

    .line 300
    return-void
.end method

.method private static recordToHistory(Ljava/util/Map;Ljava/io/File;)V
    .registers 5
    .param p1, "apkFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .line 295
    .local p0, "history":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    return-void
.end method

.method private static recorded(Ljava/util/Map;Lcom/android/server/pm/PreinstallApp$Item;)Z
    .registers 3
    .param p1, "item"    # Lcom/android/server/pm/PreinstallApp$Item;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/android/server/pm/PreinstallApp$Item;",
            ")Z"
        }
    .end annotation

    .line 568
    .local p0, "history":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    iget-object v0, p1, Lcom/android/server/pm/PreinstallApp$Item;->apkFile:Ljava/io/File;

    invoke-static {p0, v0}, Lcom/android/server/pm/PreinstallApp;->recorded(Ljava/util/Map;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method private static recorded(Ljava/util/Map;Ljava/io/File;)Z
    .registers 3
    .param p1, "apkFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/io/File;",
            ")Z"
        }
    .end annotation

    .line 564
    .local p0, "history":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static removeFromPreinstallList(Ljava/lang/String;)V
    .registers 11
    .param p0, "pkg"    # Ljava/lang/String;

    .line 1215
    sget-object v0, Lcom/android/server/pm/PreinstallApp;->mPackageVersionMap:Ljava/util/Map;

    monitor-enter v0

    .line 1216
    :try_start_3
    sget-object v1, Lcom/android/server/pm/PreinstallApp;->mPackageVersionMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 1217
    monitor-exit v0

    return-void

    .line 1219
    :cond_d
    sget-object v1, Lcom/android/server/pm/PreinstallApp;->mPackageVersionMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1220
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_cc

    .line 1223
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/preinstall.list.tmp"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1224
    .local v0, "tempFile":Ljava/io/File;
    new-instance v1, Lcom/android/internal/util/JournaledFile;

    new-instance v2, Ljava/io/File;

    const-string v3, "/data/system/preinstall.list"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v0}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    .line 1225
    .local v1, "journal":Lcom/android/internal/util/JournaledFile;
    invoke-virtual {v1}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v2

    .line 1226
    .local v2, "writeTarget":Ljava/io/File;
    const/4 v3, 0x0

    .line 1227
    .local v3, "fstr":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 1229
    .local v4, "str":Ljava/io/BufferedOutputStream;
    :try_start_2c
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v3, v5

    .line 1230
    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v4, v5

    .line 1231
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    const/16 v6, 0x1a0

    const/16 v7, 0x3e8

    const/16 v8, 0x408

    invoke-static {v5, v6, v7, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/io/FileDescriptor;III)I

    .line 1233
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1234
    .local v5, "sb":Ljava/lang/StringBuilder;
    sget-object v6, Lcom/android/server/pm/PreinstallApp;->mPackageVersionMap:Ljava/util/Map;

    monitor-enter v6
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_4d} :catch_9d
    .catchall {:try_start_2c .. :try_end_4d} :catchall_9b

    .line 1235
    :try_start_4d
    sget-object v7, Lcom/android/server/pm/PreinstallApp;->mPackageVersionMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_57
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 1236
    .local v8, "map":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1237
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1238
    const-string v9, ":"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1239
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1240
    const-string v9, "\n"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1241
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 1242
    .end local v8    # "map":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_57

    .line 1243
    :cond_8d
    monitor-exit v6
    :try_end_8e
    .catchall {:try_start_4d .. :try_end_8e} :catchall_98

    .line 1245
    :try_start_8e
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    .line 1246
    invoke-static {v3}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1247
    invoke-virtual {v1}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_97} :catch_9d
    .catchall {:try_start_8e .. :try_end_97} :catchall_9b

    .end local v5    # "sb":Ljava/lang/StringBuilder;
    goto :goto_a8

    .line 1243
    .restart local v5    # "sb":Ljava/lang/StringBuilder;
    :catchall_98
    move-exception v7

    :try_start_99
    monitor-exit v6
    :try_end_9a
    .catchall {:try_start_99 .. :try_end_9a} :catchall_98

    :try_start_9a
    throw v7
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_9b} :catch_9d
    .catchall {:try_start_9a .. :try_end_9b} :catchall_9b

    .line 1252
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :catchall_9b
    move-exception v5

    goto :goto_c8

    .line 1248
    :catch_9d
    move-exception v5

    .line 1249
    .local v5, "e":Ljava/lang/Exception;
    :try_start_9e
    sget-object v6, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    const-string v7, "Failed to write preinstall.list + "

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1250
    invoke-virtual {v1}, Lcom/android/internal/util/JournaledFile;->rollback()V
    :try_end_a8
    .catchall {:try_start_9e .. :try_end_a8} :catchall_9b

    .line 1252
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_a8
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1253
    nop

    .line 1255
    sget-object v5, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Delete package:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " from preinstall.list"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    return-void

    .line 1252
    :goto_c8
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v5

    .line 1220
    .end local v0    # "tempFile":Ljava/io/File;
    .end local v1    # "journal":Lcom/android/internal/util/JournaledFile;
    .end local v2    # "writeTarget":Ljava/io/File;
    .end local v3    # "fstr":Ljava/io/FileOutputStream;
    .end local v4    # "str":Ljava/io/BufferedOutputStream;
    :catchall_cc
    move-exception v1

    :try_start_cd
    monitor-exit v0
    :try_end_ce
    .catchall {:try_start_cd .. :try_end_ce} :catchall_cc

    throw v1
.end method

.method public static removeFromPreinstallPAIList(Ljava/lang/String;)V
    .registers 11
    .param p0, "pkg"    # Ljava/lang/String;

    .line 1260
    sget-object v0, Lcom/android/server/pm/PreinstallApp;->mPackagePAIList:Ljava/util/List;

    monitor-enter v0

    .line 1261
    :try_start_3
    sget-object v1, Lcom/android/server/pm/PreinstallApp;->mPackagePAIList:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 1262
    monitor-exit v0

    return-void

    .line 1264
    :cond_d
    sget-object v1, Lcom/android/server/pm/PreinstallApp;->mPackagePAIList:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1265
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_bd

    .line 1268
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/preinstallPAI.list.tmp"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1269
    .local v0, "tempFile":Ljava/io/File;
    new-instance v1, Lcom/android/internal/util/JournaledFile;

    new-instance v2, Ljava/io/File;

    const-string v3, "/data/system/preinstallPAI.list"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v0}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    .line 1270
    .local v1, "journal":Lcom/android/internal/util/JournaledFile;
    invoke-virtual {v1}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v2

    .line 1271
    .local v2, "writeTarget":Ljava/io/File;
    const/4 v3, 0x0

    .line 1272
    .local v3, "fstr":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 1274
    .local v4, "str":Ljava/io/BufferedOutputStream;
    :try_start_2c
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v3, v5

    .line 1275
    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v4, v5

    .line 1276
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    const/16 v6, 0x1a0

    const/16 v7, 0x3e8

    const/16 v8, 0x408

    invoke-static {v5, v6, v7, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/io/FileDescriptor;III)I

    .line 1278
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1279
    .local v5, "sb":Ljava/lang/StringBuilder;
    sget-object v6, Lcom/android/server/pm/PreinstallApp;->mPackagePAIList:Ljava/util/List;

    monitor-enter v6
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_4d} :catch_88
    .catchall {:try_start_2c .. :try_end_4d} :catchall_86

    .line 1280
    const/4 v7, 0x0

    move v8, v7

    .local v8, "i":I
    :goto_4f
    :try_start_4f
    sget-object v9, Lcom/android/server/pm/PreinstallApp;->mPackagePAIList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_78

    .line 1281
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1282
    sget-object v9, Lcom/android/server/pm/PreinstallApp;->mPackagePAIList:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1283
    const-string v9, "\n"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1284
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 1280
    add-int/lit8 v8, v8, 0x1

    goto :goto_4f

    .line 1286
    .end local v8    # "i":I
    :cond_78
    monitor-exit v6
    :try_end_79
    .catchall {:try_start_4f .. :try_end_79} :catchall_83

    .line 1288
    :try_start_79
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    .line 1289
    invoke-static {v3}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1290
    invoke-virtual {v1}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_82} :catch_88
    .catchall {:try_start_79 .. :try_end_82} :catchall_86

    .end local v5    # "sb":Ljava/lang/StringBuilder;
    goto :goto_93

    .line 1286
    .restart local v5    # "sb":Ljava/lang/StringBuilder;
    :catchall_83
    move-exception v7

    :try_start_84
    monitor-exit v6
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_83

    :try_start_85
    throw v7
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_86} :catch_88
    .catchall {:try_start_85 .. :try_end_86} :catchall_86

    .line 1295
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :catchall_86
    move-exception v5

    goto :goto_b6

    .line 1291
    :catch_88
    move-exception v5

    .line 1292
    .local v5, "e":Ljava/lang/Exception;
    :try_start_89
    sget-object v6, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    const-string v7, "Failed to delete preinstallPAI.list + "

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1293
    invoke-virtual {v1}, Lcom/android/internal/util/JournaledFile;->rollback()V
    :try_end_93
    .catchall {:try_start_89 .. :try_end_93} :catchall_86

    .line 1295
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_93
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1296
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1297
    nop

    .line 1299
    sget-object v5, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Delete package:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " from preinstallPAI.list"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    return-void

    .line 1295
    :goto_b6
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1296
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v5

    .line 1265
    .end local v0    # "tempFile":Ljava/io/File;
    .end local v1    # "journal":Lcom/android/internal/util/JournaledFile;
    .end local v2    # "writeTarget":Ljava/io/File;
    .end local v3    # "fstr":Ljava/io/FileOutputStream;
    .end local v4    # "str":Ljava/io/BufferedOutputStream;
    :catchall_bd
    move-exception v1

    :try_start_be
    monitor-exit v0
    :try_end_bf
    .catchall {:try_start_be .. :try_end_bf} :catchall_bd

    throw v1
.end method

.method private static restoreconPreinstallDir()V
    .registers 3

    .line 1468
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/miui/pai/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1469
    .local v0, "file":Ljava/io/File;
    const-string v1, "/data/miui/pai/"

    invoke-static {v1}, Landroid/os/SELinux;->getFileContext(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1470
    .local v1, "fileContext":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1f

    const-string/jumbo v2, "u:object_r:miui_pai_file:s0"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 1471
    invoke-static {v0}, Landroid/os/SELinux;->restoreconRecursive(Ljava/io/File;)Z

    .line 1473
    :cond_1f
    return-void
.end method

.method private static signCheck(Ljava/io/File;)Z
    .registers 7
    .param p0, "apkFile"    # Ljava/io/File;

    .line 585
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 586
    return v1

    .line 588
    :cond_6
    invoke-static {}, Lmiui/util/PreinstallAppUtils;->supportSignVerifyInCust()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v3, "/cust/app"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    move v0, v2

    goto :goto_1c

    :cond_1b
    move v0, v1

    .line 589
    .local v0, "custAppSupportSign":Z
    :goto_1c
    sget-object v3, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sign support is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    if-eqz v0, :cond_5a

    invoke-static {}, Lmiui/os/CustVerifier;->getInstance()Lmiui/os/CustVerifier;

    move-result-object v3

    if-nez v3, :cond_5a

    .line 591
    sget-object v1, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CustVerifier init error !"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " will not be installed."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    return v2

    .line 594
    :cond_5a
    if-eqz v0, :cond_85

    invoke-static {}, Lmiui/os/CustVerifier;->getInstance()Lmiui/os/CustVerifier;

    move-result-object v3

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lmiui/os/CustVerifier;->verifyApkSignatue(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_85

    .line 595
    sget-object v1, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " verify failed!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    return v2

    .line 598
    :cond_85
    return v1
.end method

.method private static skipOTA(Lcom/android/server/pm/PreinstallApp$Item;)Z
    .registers 8
    .param p0, "item"    # Lcom/android/server/pm/PreinstallApp$Item;

    .line 1188
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 1189
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "ro.product.name"

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    .line 1190
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1191
    .local v0, "deviceName":Ljava/lang/String;
    const-string/jumbo v1, "sagit"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    const-string v1, "com.xiaomi.youpin"

    iget-object v2, p0, Lcom/android/server/pm/PreinstallApp$Item;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 1192
    sget-object v1, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "skipOTA, deviceName is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_55} :catch_57

    .line 1193
    return v5

    .line 1197
    .end local v0    # "deviceName":Ljava/lang/String;
    :cond_56
    goto :goto_5f

    .line 1195
    :catch_57
    move-exception v0

    .line 1196
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    const-string v2, "Get exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1198
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5f
    sget-object v0, Lcom/android/server/pm/PreinstallApp;->NOT_OTA_PACKAGE_NAMES:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/server/pm/PreinstallApp$Item;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static skipYouPinIfHadPreinstall(Ljava/util/Map;Lcom/android/server/pm/PreinstallApp$Item;)Z
    .registers 10
    .param p1, "item"    # Lcom/android/server/pm/PreinstallApp$Item;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/android/server/pm/PreinstallApp$Item;",
            ")Z"
        }
    .end annotation

    .line 698
    .local p0, "history":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    const-string v0, "/system/data-app/com.xiaomi.youpin/com.xiaomi.youpin.apk"

    .line 699
    .local v0, "oldSystemPath":Ljava/lang/String;
    const-string v1, "/cust/app/customized/recommended-3rd-com.xiaomi.youpin/recommended-3rd-com.xiaomi.youpin.apk"

    .line 700
    .local v1, "oldCustPath":Ljava/lang/String;
    const-string v2, "/system/data-app/Youpin/Youpin.apk"

    .line 701
    .local v2, "newSystemPath":Ljava/lang/String;
    const-string v3, "/vendor/data-app/Youpin/Youpin.apk"

    .line 704
    .local v3, "newVendorPath":Ljava/lang/String;
    const-string v4, "/system/data-app/Youpin/Youpin.apk"

    iget-object v5, p1, Lcom/android/server/pm/PreinstallApp$Item;->apkFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_29

    const-string v4, "/vendor/data-app/Youpin/Youpin.apk"

    iget-object v7, p1, Lcom/android/server/pm/PreinstallApp$Item;->apkFile:Ljava/io/File;

    .line 705
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    goto :goto_29

    :cond_27
    move v4, v6

    goto :goto_2a

    :cond_29
    :goto_29
    move v4, v5

    .line 706
    .local v4, "isNewYoupinPreinstall":Z
    :goto_2a
    const-string v7, "/system/data-app/com.xiaomi.youpin/com.xiaomi.youpin.apk"

    invoke-interface {p0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3d

    const-string v7, "/cust/app/customized/recommended-3rd-com.xiaomi.youpin/recommended-3rd-com.xiaomi.youpin.apk"

    invoke-interface {p0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3b

    goto :goto_3d

    :cond_3b
    move v7, v6

    goto :goto_3e

    :cond_3d
    :goto_3d
    move v7, v5

    .line 708
    .local v7, "hadPreInstallYouPin":Z
    :goto_3e
    if-eqz v4, :cond_43

    if-eqz v7, :cond_43

    goto :goto_44

    :cond_43
    move v5, v6

    :goto_44
    return v5
.end method

.method private static systemAppDeletedOrDisabled(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)Z
    .registers 3
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 548
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static underData(Lcom/android/server/pm/PackageSetting;)Z
    .registers 3
    .param p0, "ps"    # Lcom/android/server/pm/PackageSetting;

    .line 346
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    const-string v1, "/data/app/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static writeHistory(Ljava/lang/String;Ljava/util/Map;)V
    .registers 9
    .param p0, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 260
    .local p1, "preinstallHistoryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .line 261
    .local v0, "fileWriter":Ljava/io/FileWriter;
    const/4 v1, 0x0

    .line 263
    .local v1, "bufferWriter":Ljava/io/BufferedWriter;
    :try_start_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 265
    .local v2, "installHistoryFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_10

    .line 266
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 269
    :cond_10
    new-instance v3, Ljava/io/FileWriter;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    move-object v0, v3

    .line 270
    new-instance v3, Ljava/io/BufferedWriter;

    invoke-direct {v3, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v1, v3

    .line 272
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_25
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_73

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 273
    .local v4, "r":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    new-instance v5, Ljava/io/File;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_43

    .line 274
    goto :goto_25

    .line 276
    :cond_43
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 277
    const-string v5, "\n"

    invoke-virtual {v1, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_69} :catch_72
    .catchall {:try_start_2 .. :try_end_69} :catchall_6a

    .line 278
    .end local v4    # "r":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    goto :goto_25

    .line 281
    .end local v2    # "installHistoryFile":Ljava/io/File;
    :catchall_6a
    move-exception v2

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 282
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2

    .line 279
    :catch_72
    move-exception v2

    .line 281
    :cond_73
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 282
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 283
    nop

    .line 284
    return-void
.end method

.method private static writeHistory(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 287
    .local p0, "preinstallHistoryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/preinstall_history"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 288
    .local v0, "old":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 289
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 291
    :cond_10
    const-string v1, "/data/app/preinstall_history"

    invoke-static {v1, p0}, Lcom/android/server/pm/PreinstallApp;->writeHistory(Ljava/lang/String;Ljava/util/Map;)V

    .line 292
    return-void
.end method

.method private static writeNewPAITrackFile()V
    .registers 6

    .line 1413
    sget-object v0, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    const-string v1, "Write old track file content to  /data/miui/pai/pre_install.appsflyer"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    sget-object v0, Lcom/android/server/pm/PreinstallApp;->mTraditionalTrackContentList:Ljava/util/List;

    if-eqz v0, :cond_8d

    sget-object v0, Lcom/android/server/pm/PreinstallApp;->mTraditionalTrackContentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    goto/16 :goto_8d

    .line 1418
    :cond_15
    const/4 v0, 0x0

    .line 1420
    .local v0, "bufferWriter":Ljava/io/BufferedWriter;
    :try_start_16
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/miui/pai/pre_install.appsflyer"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1421
    .local v1, "newFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, -0x1

    if-nez v2, :cond_38

    .line 1422
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 1423
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    const/16 v4, 0x1fd

    invoke-static {v2, v4, v3, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    .line 1425
    :cond_38
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    const/4 v5, 0x1

    invoke-direct {v4, v1, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v2, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v0, v2

    .line 1426
    const/16 v2, 0x1b4

    invoke-static {v1, v2, v3, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    .line 1427
    sget-object v2, Lcom/android/server/pm/PreinstallApp;->mTraditionalTrackContentList:Ljava/util/List;

    monitor-enter v2
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_4c} :catch_7c
    .catchall {:try_start_16 .. :try_end_4c} :catchall_7a

    .line 1428
    const/4 v3, 0x0

    .line 1428
    .local v3, "i":I
    :goto_4d
    :try_start_4d
    sget-object v4, Lcom/android/server/pm/PreinstallApp;->mTraditionalTrackContentList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_75

    .line 1429
    sget-object v4, Lcom/android/server/pm/PreinstallApp;->mTraditionalTrackContentList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1430
    .local v4, "content":Ljava/lang/String;
    sget-object v5, Lcom/android/server/pm/PreinstallApp;->mNewTrackContentList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_72

    .line 1431
    sget-object v5, Lcom/android/server/pm/PreinstallApp;->mNewTrackContentList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1432
    invoke-virtual {v0, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1433
    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1428
    .end local v4    # "content":Ljava/lang/String;
    :cond_72
    add-int/lit8 v3, v3, 0x1

    goto :goto_4d

    .line 1436
    .end local v3    # "i":I
    :cond_75
    monitor-exit v2

    goto :goto_84

    :catchall_77
    move-exception v3

    monitor-exit v2
    :try_end_79
    .catchall {:try_start_4d .. :try_end_79} :catchall_77

    :try_start_79
    throw v3
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7a} :catch_7c
    .catchall {:try_start_79 .. :try_end_7a} :catchall_7a

    .line 1442
    .end local v1    # "newFile":Ljava/io/File;
    :catchall_7a
    move-exception v1

    goto :goto_89

    .line 1437
    :catch_7c
    move-exception v1

    .line 1438
    .local v1, "e":Ljava/io/IOException;
    :try_start_7d
    sget-object v2, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    const-string v3, "Error occurs when to write track file from /cust/etc/pre_install.appsflyer to /data/miui/pai/pre_install.appsflyer"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_84
    .catchall {:try_start_7d .. :try_end_84} :catchall_7a

    .line 1442
    .end local v1    # "e":Ljava/io/IOException;
    :goto_84
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1443
    nop

    .line 1444
    return-void

    .line 1442
    :goto_89
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1

    .line 1415
    .end local v0    # "bufferWriter":Ljava/io/BufferedWriter;
    :cond_8d
    :goto_8d
    sget-object v0, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "no content write to new appsflyer file"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    return-void
.end method

.method public static writePreinstallPAIPackage(Ljava/lang/String;)V
    .registers 6
    .param p0, "pkg"    # Ljava/lang/String;

    .line 1051
    sget-object v0, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    const-string v1, "Write PAI package name into /data/system/preinstallPAI.list"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1053
    return-void

    .line 1055
    :cond_e
    const/4 v0, 0x0

    .line 1057
    .local v0, "bufferWriter":Ljava/io/BufferedWriter;
    :try_start_f
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    const-string v3, "/data/system/preinstallPAI.list"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v0, v1

    .line 1058
    sget-object v1, Lcom/android/server/pm/PreinstallApp;->mPackagePAIList:Ljava/util/List;

    monitor-enter v1
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_20} :catch_34
    .catchall {:try_start_f .. :try_end_20} :catchall_32

    .line 1059
    :try_start_20
    sget-object v2, Lcom/android/server/pm/PreinstallApp;->mPackagePAIList:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1060
    invoke-virtual {v0, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1061
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1062
    monitor-exit v1

    goto :goto_3c

    :catchall_2f
    move-exception v2

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_20 .. :try_end_31} :catchall_2f

    :try_start_31
    throw v2
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_32} :catch_34
    .catchall {:try_start_31 .. :try_end_32} :catchall_32

    .line 1066
    :catchall_32
    move-exception v1

    goto :goto_41

    .line 1063
    :catch_34
    move-exception v1

    .line 1064
    .local v1, "e":Ljava/io/IOException;
    :try_start_35
    sget-object v2, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    const-string v3, "Error occurs when to write PAI package name."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_32

    .line 1066
    .end local v1    # "e":Ljava/io/IOException;
    :goto_3c
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1067
    nop

    .line 1068
    return-void

    .line 1066
    :goto_41
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1
.end method

.method private static writePreinstallPackage(Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1029
    .local p0, "maps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    sget-object v0, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    const-string v1, "Write preinstalled package name into /data/system/preinstall.list"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    if-eqz p0, :cond_87

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    goto/16 :goto_87

    .line 1033
    :cond_11
    const/4 v0, 0x0

    .line 1035
    .local v0, "bufferWriter":Ljava/io/BufferedWriter;
    :try_start_12
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    const-string v3, "/data/system/preinstall.list"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v0, v1

    .line 1036
    sget-object v1, Lcom/android/server/pm/PreinstallApp;->mPackageVersionMap:Ljava/util/Map;

    monitor-enter v1
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_23} :catch_76
    .catchall {:try_start_12 .. :try_end_23} :catchall_74

    .line 1037
    :try_start_23
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1038
    .local v3, "r":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    sget-object v4, Lcom/android/server/pm/PreinstallApp;->mPackageVersionMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1039
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1040
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1041
    .end local v3    # "r":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_2b

    .line 1042
    :cond_6f
    monitor-exit v1

    goto :goto_7e

    :catchall_71
    move-exception v2

    monitor-exit v1
    :try_end_73
    .catchall {:try_start_23 .. :try_end_73} :catchall_71

    :try_start_73
    throw v2
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_74} :catch_76
    .catchall {:try_start_73 .. :try_end_74} :catchall_74

    .line 1046
    :catchall_74
    move-exception v1

    goto :goto_83

    .line 1043
    :catch_76
    move-exception v1

    .line 1044
    .local v1, "e":Ljava/io/IOException;
    :try_start_77
    sget-object v2, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    const-string v3, "Error occurs when to write preinstalled package name."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7e
    .catchall {:try_start_77 .. :try_end_7e} :catchall_74

    .line 1046
    .end local v1    # "e":Ljava/io/IOException;
    :goto_7e
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1047
    nop

    .line 1048
    return-void

    .line 1046
    :goto_83
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1

    .line 1031
    .end local v0    # "bufferWriter":Ljava/io/BufferedWriter;
    :cond_87
    :goto_87
    return-void
.end method
