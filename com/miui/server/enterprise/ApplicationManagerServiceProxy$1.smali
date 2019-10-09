.class Lcom/miui/server/enterprise/ApplicationManagerServiceProxy$1;
.super Landroid/os/IMessenger$Stub;
.source "ApplicationManagerServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/server/enterprise/ApplicationManagerServiceProxy;->installPackageAsUser(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$observer:Landroid/content/pm/IPackageInstallObserver2;


# direct methods
.method constructor <init>(Landroid/content/pm/IPackageInstallObserver2;)V
    .registers 2

    .line 26
    iput-object p1, p0, Lcom/miui/server/enterprise/ApplicationManagerServiceProxy$1;->val$observer:Landroid/content/pm/IPackageInstallObserver2;

    invoke-direct {p0}, Landroid/os/IMessenger$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public send(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 31
    .local v0, "retData":Landroid/os/Bundle;
    if-eqz v0, :cond_39

    .line 32
    const-string/jumbo v1, "pkg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 33
    .local v1, "packageName":Ljava/lang/String;
    const-string/jumbo v2, "retCode"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 34
    .local v2, "retCode":I
    const-string v3, "AMSProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onPackageInstalled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ,pkg= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-object v3, p0, Lcom/miui/server/enterprise/ApplicationManagerServiceProxy$1;->val$observer:Landroid/content/pm/IPackageInstallObserver2;

    const/4 v4, 0x0

    invoke-interface {v3, v1, v2, v4, v4}, Landroid/content/pm/IPackageInstallObserver2;->onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_3a

    .line 39
    .end local v0    # "retData":Landroid/os/Bundle;
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "retCode":I
    :cond_39
    goto :goto_3e

    .line 37
    :catch_3a
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 40
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3e
    return-void
.end method
