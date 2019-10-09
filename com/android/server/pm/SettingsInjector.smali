.class public Lcom/android/server/pm/SettingsInjector;
.super Ljava/lang/Object;
.source "SettingsInjector.java"


# static fields
.field private static final ANDROID_INSTALLER:Ljava/lang/String; = "com.android.packageinstaller"

.field private static final GOOGLE_INSTALLER:Ljava/lang/String; = "com.google.android.packageinstaller"

.field private static final MIUI_ACTION_PACKAGE_FIRST_LAUNCH:Ljava/lang/String; = "miui.intent.action.PACKAGE_FIRST_LAUNCH"

.field private static final MIUI_INSTALLER:Ljava/lang/String; = "com.miui.packageinstaller"

.field private static final MIUI_PERMISSION:Ljava/lang/String; = "miui.permission.USE_INTERNAL_GENERAL_API"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 24
    const-class v0, Lcom/android/server/pm/SettingsInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/SettingsInjector;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 23
    sget-object v0, Lcom/android/server/pm/SettingsInjector;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static checkXSpaceApp(Lcom/android/server/pm/PackageSetting;I)Z
    .registers 8
    .param p0, "ps"    # Lcom/android/server/pm/PackageSetting;
    .param p1, "userHandle"    # I

    .line 33
    invoke-static {p1}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_74

    .line 34
    sget-object v0, Lmiui/securityspace/XSpaceConstant;->REQUIRED_APPS:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 35
    invoke-virtual {p0, v2, p1}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    goto :goto_1b

    .line 37
    :cond_18
    invoke-virtual {p0, v1, p1}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 39
    :goto_1b
    sget-object v0, Lmiui/securityspace/XSpaceConstant;->SPECIAL_APPS:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 40
    sget-object v0, Lmiui/securityspace/XSpaceConstant;->SPECIAL_APPS:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 41
    .local v0, "requiredComponent":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v1, "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$Component;>;"
    iget-object v3, p0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 43
    iget-object v3, p0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 44
    iget-object v3, p0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 45
    iget-object v3, p0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 46
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_58
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_73

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageParser$Component;

    .line 47
    .local v4, "component":Landroid/content/pm/PackageParser$Component;
    iget-object v5, v4, Landroid/content/pm/PackageParser$Component;->className:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6d

    .line 48
    goto :goto_58

    .line 50
    :cond_6d
    iget-object v5, v4, Landroid/content/pm/PackageParser$Component;->className:Ljava/lang/String;

    invoke-virtual {p0, v5, p1}, Lcom/android/server/pm/PackageSetting;->addDisabledComponent(Ljava/lang/String;I)V

    .line 51
    .end local v4    # "component":Landroid/content/pm/PackageParser$Component;
    goto :goto_58

    .line 53
    .end local v0    # "requiredComponent":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$Component;>;"
    :cond_73
    return v2

    .line 56
    :cond_74
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_bf

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_bf

    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_bf

    .line 57
    const-string v0, "com.miui.packageinstaller"

    iget-object v3, p0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_97

    .line 58
    invoke-static {}, Landroid/miui/AppOpsUtils;->isXOptMode()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 59
    return v2

    .line 61
    :cond_97
    const-string v0, "com.google.android.packageinstaller"

    iget-object v3, p0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 62
    invoke-static {}, Landroid/miui/AppOpsUtils;->isXOptMode()Z

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 63
    return v2

    .line 65
    :cond_ab
    const-string v0, "com.android.packageinstaller"

    iget-object v3, p0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 66
    invoke-static {}, Landroid/miui/AppOpsUtils;->isXOptMode()Z

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 67
    return v2

    .line 71
    :cond_bf
    return v1
.end method

.method private static isSystem(Lcom/android/server/pm/PackageSetting;)Z
    .registers 3
    .param p0, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;

    .line 75
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

.method public static noftifyFirstLaunch(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageSetting;I)V
    .registers 5
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "userId"    # I

    .line 87
    if-eqz p1, :cond_24

    .line 88
    invoke-static {p1}, Lcom/android/server/pm/SettingsInjector;->isSystem(Lcom/android/server/pm/PackageSetting;)Z

    move-result v0

    if-nez v0, :cond_24

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_f

    goto :goto_24

    .line 92
    :cond_f
    new-instance v0, Lcom/android/server/pm/SettingsInjector$1;

    invoke-direct {v0, p1, p2}, Lcom/android/server/pm/SettingsInjector$1;-><init>(Lcom/android/server/pm/PackageSetting;I)V

    .line 123
    .local v0, "task":Ljava/lang/Runnable;
    if-eqz p0, :cond_20

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    if-eqz v1, :cond_20

    .line 125
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_23

    .line 128
    :cond_20
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 130
    :goto_23
    return-void

    .line 90
    .end local v0    # "task":Ljava/lang/Runnable;
    :cond_24
    :goto_24
    return-void
.end method

.method public static shouldInstallInXSpace(Landroid/os/UserHandle;I)Z
    .registers 3
    .param p0, "installUser"    # Landroid/os/UserHandle;
    .param p1, "userId"    # I

    .line 79
    if-nez p0, :cond_a

    invoke-static {p1}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 80
    const/4 v0, 0x0

    return v0

    .line 82
    :cond_a
    const/4 v0, 0x1

    return v0
.end method
