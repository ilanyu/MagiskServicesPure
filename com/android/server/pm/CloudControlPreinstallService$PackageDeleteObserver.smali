.class public Lcom/android/server/pm/CloudControlPreinstallService$PackageDeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "CloudControlPreinstallService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/CloudControlPreinstallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PackageDeleteObserver"
.end annotation


# instance fields
.field mApp:Lcom/android/server/pm/CloudControlPreinstallService$UninstallApp;

.field final synthetic this$0:Lcom/android/server/pm/CloudControlPreinstallService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/CloudControlPreinstallService;Lcom/android/server/pm/CloudControlPreinstallService$UninstallApp;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/pm/CloudControlPreinstallService;
    .param p2, "app"    # Lcom/android/server/pm/CloudControlPreinstallService$UninstallApp;

    .line 567
    iput-object p1, p0, Lcom/android/server/pm/CloudControlPreinstallService$PackageDeleteObserver;->this$0:Lcom/android/server/pm/CloudControlPreinstallService;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    .line 568
    iput-object p2, p0, Lcom/android/server/pm/CloudControlPreinstallService$PackageDeleteObserver;->mApp:Lcom/android/server/pm/CloudControlPreinstallService$UninstallApp;

    .line 569
    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I

    .line 574
    if-ltz p2, :cond_28

    .line 576
    iget-object v0, p0, Lcom/android/server/pm/CloudControlPreinstallService$PackageDeleteObserver;->this$0:Lcom/android/server/pm/CloudControlPreinstallService;

    const-string/jumbo v1, "uninstall_success"

    iget-object v2, p0, Lcom/android/server/pm/CloudControlPreinstallService$PackageDeleteObserver;->mApp:Lcom/android/server/pm/CloudControlPreinstallService$UninstallApp;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/CloudControlPreinstallService;->trackEvent(Ljava/lang/String;Lcom/android/server/pm/CloudControlPreinstallService$UninstallApp;)V

    .line 578
    const-string v0, "CloudControlPreinstall"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was uninstalled."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_50

    .line 580
    :cond_28
    iget-object v0, p0, Lcom/android/server/pm/CloudControlPreinstallService$PackageDeleteObserver;->this$0:Lcom/android/server/pm/CloudControlPreinstallService;

    const-string/jumbo v1, "uninstall_failed"

    iget-object v2, p0, Lcom/android/server/pm/CloudControlPreinstallService$PackageDeleteObserver;->mApp:Lcom/android/server/pm/CloudControlPreinstallService$UninstallApp;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/CloudControlPreinstallService;->trackEvent(Ljava/lang/String;Lcom/android/server/pm/CloudControlPreinstallService$UninstallApp;)V

    .line 582
    const-string v0, "CloudControlPreinstall"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package uninstall failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", returnCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :goto_50
    return-void
.end method
