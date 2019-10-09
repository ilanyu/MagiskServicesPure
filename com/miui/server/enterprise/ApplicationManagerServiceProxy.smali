.class public Lcom/miui/server/enterprise/ApplicationManagerServiceProxy;
.super Ljava/lang/Object;
.source "ApplicationManagerServiceProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AMSProxy"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static installPackageAsUser(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;I)V
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "observer"    # Landroid/content/pm/IPackageInstallObserver2;
    .param p4, "flag"    # I
    .param p5, "installerPkg"    # Ljava/lang/String;
    .param p6, "userId"    # I

    .line 22
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 23
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.miui.securitycore"

    const-string v3, "com.miui.enterprise.service.EntInstallService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 24
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 25
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz p3, :cond_26

    .line 26
    new-instance v2, Lcom/miui/server/enterprise/ApplicationManagerServiceProxy$1;

    invoke-direct {v2, p3}, Lcom/miui/server/enterprise/ApplicationManagerServiceProxy$1;-><init>(Landroid/content/pm/IPackageInstallObserver2;)V

    .line 42
    .local v2, "iMessenger":Landroid/os/IMessenger;
    const-string v3, "callback"

    invoke-interface {v2}, Landroid/os/IMessenger;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putIBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 44
    .end local v2    # "iMessenger":Landroid/os/IMessenger;
    :cond_26
    const-string v2, "apkPath"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v2, "flag"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 46
    const-string v2, "installerPkg"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string/jumbo v2, "userId"

    invoke-virtual {v1, v2, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 48
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 49
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 50
    return-void
.end method
