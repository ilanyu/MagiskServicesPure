.class public Lcom/android/server/utils/AppInstallerUtil;
.super Ljava/lang/Object;
.source "AppInstallerUtil.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AppInstallerUtil"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 69
    invoke-static {p0, p1}, Lcom/android/server/utils/AppInstallerUtil;->getInstallerPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "installerPackageName":Ljava/lang/String;
    invoke-static {p0, v0, p1}, Lcom/android/server/utils/AppInstallerUtil;->createIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method public static createIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "installerPackageName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 55
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SHOW_APP_INFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 56
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/android/server/utils/AppInstallerUtil;->resolveIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    .line 57
    .local v1, "result":Landroid/content/Intent;
    if-eqz v1, :cond_1c

    .line 58
    const-string v2, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 60
    return-object v1

    .line 62
    :cond_1c
    const/4 v2, 0x0

    return-object v2
.end method

.method public static getInstallerPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    move-object v1, v0

    .line 39
    .local v1, "installerPackageName":Ljava/lang/String;
    nop

    .line 40
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_b} :catch_d

    move-object v1, v2

    .line 43
    goto :goto_24

    .line 41
    :catch_d
    move-exception v2

    .line 42
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "AppInstallerUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception while retrieving the package installer of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :goto_24
    if-nez v1, :cond_27

    .line 45
    return-object v0

    .line 47
    :cond_27
    return-object v1
.end method

.method private static resolveIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "i"    # Landroid/content/Intent;

    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 29
    .local v0, "result":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_21

    .line 30
    new-instance v1, Landroid/content/Intent;

    .line 29
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 30
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    .line 29
    :goto_22
    return-object v1
.end method
