.class Lcom/miui/server/XSpaceManagerService$3;
.super Landroid/content/pm/LauncherApps$Callback;
.source "XSpaceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/XSpaceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 487
    invoke-direct {p0}, Landroid/content/pm/LauncherApps$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 496
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    # invokes: Lcom/miui/server/XSpaceManagerService;->onPackageCallback(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V
    invoke-static {p1, p2, v0}, Lcom/miui/server/XSpaceManagerService;->access$400(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 497
    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 501
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 491
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    # invokes: Lcom/miui/server/XSpaceManagerService;->onPackageCallback(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V
    invoke-static {p1, p2, v0}, Lcom/miui/server/XSpaceManagerService;->access$400(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 492
    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .registers 4
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "replacing"    # Z

    .line 505
    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .registers 4
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "replacing"    # Z

    .line 509
    return-void
.end method
