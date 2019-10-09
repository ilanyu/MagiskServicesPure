.class Lcom/android/server/wm/AppWindowContainerControllerInjector;
.super Ljava/lang/Object;
.source "AppWindowContainerControllerInjector.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isAllowedForceStartingWindow(Landroid/content/Context;Ljava/lang/String;ZZ)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "windowIsTranslucent"    # Z
    .param p3, "windowDisableStarting"    # Z

    .line 57
    if-nez p2, :cond_4

    if-eqz p3, :cond_11

    .line 58
    :cond_4
    invoke-static {p1}, Lcom/android/server/wm/AppWindowContainerControllerInjector;->whiteListContains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {p0, p1}, Lcom/android/server/wm/AppWindowContainerControllerInjector;->isSystemApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    .line 61
    :cond_11
    const/4 v0, 0x1

    return v0

    .line 59
    :cond_13
    :goto_13
    const/4 v0, 0x0

    return v0
.end method

.method static isSystemApp(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .line 27
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 28
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 29
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_19

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_19

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 30
    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v4
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_16} :catch_1b

    if-eqz v4, :cond_19

    .line 31
    return v0

    .line 35
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_19
    nop

    .line 37
    return v2

    .line 33
    :catch_1b
    move-exception v1

    .line 34
    .local v1, "exception":Ljava/lang/Exception;
    return v0
.end method

.method static whiteListContains(Ljava/lang/String;)Z
    .registers 3
    .param p0, "pkg"    # Ljava/lang/String;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .local v0, "whiteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "com.tencent.mm"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    const-string v1, "com.tencent.mobileqq"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 20
    const/4 v1, 0x1

    return v1

    .line 22
    :cond_17
    const/4 v1, 0x0

    return v1
.end method
