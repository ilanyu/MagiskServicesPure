.class Lcom/android/server/pm/SettingsInjector$1;
.super Ljava/lang/Object;
.source "SettingsInjector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/SettingsInjector;->noftifyFirstLaunch(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageSetting;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$pkgSetting:Lcom/android/server/pm/PackageSetting;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageSetting;I)V
    .registers 3

    .line 92
    iput-object p1, p0, Lcom/android/server/pm/SettingsInjector$1;->val$pkgSetting:Lcom/android/server/pm/PackageSetting;

    iput p2, p0, Lcom/android/server/pm/SettingsInjector$1;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 96
    :try_start_0
    # getter for: Lcom/android/server/pm/SettingsInjector;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/pm/SettingsInjector;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "notify first launch"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.action.PACKAGE_FIRST_LAUNCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 98
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "package"

    iget-object v2, p0, Lcom/android/server/pm/SettingsInjector$1;->val$pkgSetting:Lcom/android/server/pm/PackageSetting;

    iget-object v2, v2, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    iget-object v1, p0, Lcom/android/server/pm/SettingsInjector$1;->val$pkgSetting:Lcom/android/server/pm/PackageSetting;

    iget-object v1, v1, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 100
    const-string v1, "installer"

    iget-object v2, p0, Lcom/android/server/pm/SettingsInjector$1;->val$pkgSetting:Lcom/android/server/pm/PackageSetting;

    iget-object v2, v2, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    :cond_2f
    const-string/jumbo v1, "userId"

    iget v2, p0, Lcom/android/server/pm/SettingsInjector$1;->val$userId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 109
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_39} :catch_65

    const/16 v2, 0x19

    if-le v1, v2, :cond_5e

    .line 111
    :try_start_3d
    const-class v1, Landroid/content/Intent;

    const-string v2, "FLAG_RECEIVER_INCLUDE_BACKGROUND"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 112
    .local v1, "flagBackground":I
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_53} :catch_54
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_53} :catch_65

    .line 115
    .end local v1    # "flagBackground":I
    goto :goto_5e

    .line 113
    :catch_54
    move-exception v1

    .line 114
    .local v1, "e":Ljava/lang/Exception;
    :try_start_55
    # getter for: Lcom/android/server/pm/SettingsInjector;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/pm/SettingsInjector;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Intent flag FLAG_RECEIVER_INCLUDE_BACKGROUND not exist"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5e
    :goto_5e
    const-string/jumbo v1, "miui.permission.USE_INTERNAL_GENERAL_API"

    invoke-static {v0, v1}, Lcom/android/server/pm/IActivityManagerCompat;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_64} :catch_65

    .line 120
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_70

    .line 118
    :catch_65
    move-exception v0

    .line 119
    .local v0, "t":Ljava/lang/Throwable;
    # getter for: Lcom/android/server/pm/SettingsInjector;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/pm/SettingsInjector;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "notify first launch exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_70
    return-void
.end method
