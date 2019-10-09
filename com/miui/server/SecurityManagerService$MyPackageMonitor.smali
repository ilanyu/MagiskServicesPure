.class Lcom/miui/server/SecurityManagerService$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "SecurityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/SecurityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/SecurityManagerService;


# direct methods
.method constructor <init>(Lcom/miui/server/SecurityManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/miui/server/SecurityManagerService;

    .line 266
    iput-object p1, p0, Lcom/miui/server/SecurityManagerService$MyPackageMonitor;->this$0:Lcom/miui/server/SecurityManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method private checkDefaultBrowser(I)V
    .registers 6
    .param p1, "uid"    # I

    .line 290
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_22

    invoke-static {}, Landroid/miui/AppOpsUtils;->isXOptMode()Z

    move-result v0

    if-nez v0, :cond_22

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_11

    goto :goto_22

    .line 293
    :cond_11
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService$MyPackageMonitor;->this$0:Lcom/miui/server/SecurityManagerService;

    # getter for: Lcom/miui/server/SecurityManagerService;->mSecurityWriteHandler:Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;
    invoke-static {v0}, Lcom/miui/server/SecurityManagerService;->access$200(Lcom/miui/server/SecurityManagerService;)Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;

    move-result-object v0

    new-instance v1, Lcom/miui/server/SecurityManagerService$MyPackageMonitor$1;

    invoke-direct {v1, p0}, Lcom/miui/server/SecurityManagerService$MyPackageMonitor$1;-><init>(Lcom/miui/server/SecurityManagerService$MyPackageMonitor;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 313
    return-void

    .line 291
    :cond_22
    :goto_22
    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 269
    invoke-static {}, Lmiui/security/WakePathChecker;->getInstance()Lmiui/security/WakePathChecker;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/server/SecurityManagerService$MyPackageMonitor;->this$0:Lcom/miui/server/SecurityManagerService;

    # getter for: Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/miui/server/SecurityManagerService;->access$000(Lcom/miui/server/SecurityManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/security/WakePathChecker;->onPackageAdded(Landroid/content/Context;)V

    .line 270
    invoke-direct {p0, p2}, Lcom/miui/server/SecurityManagerService$MyPackageMonitor;->checkDefaultBrowser(I)V

    .line 271
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 274
    invoke-direct {p0, p2}, Lcom/miui/server/SecurityManagerService$MyPackageMonitor;->checkDefaultBrowser(I)V

    .line 275
    return-void
.end method

.method public onPackageUpdateStarted(Ljava/lang/String;I)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 285
    invoke-direct {p0, p2}, Lcom/miui/server/SecurityManagerService$MyPackageMonitor;->checkDefaultBrowser(I)V

    .line 286
    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;)V
    .registers 2
    .param p1, "packages"    # [Ljava/lang/String;

    .line 278
    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;)V
    .registers 2
    .param p1, "packages"    # [Ljava/lang/String;

    .line 281
    return-void
.end method
