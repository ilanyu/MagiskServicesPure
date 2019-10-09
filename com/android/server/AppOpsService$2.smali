.class Lcom/android/server/AppOpsService$2;
.super Ljava/lang/Object;
.source "AppOpsService.java"

# interfaces
.implements Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/AppOpsService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AppOpsService;


# direct methods
.method constructor <init>(Lcom/android/server/AppOpsService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/AppOpsService;

    .line 701
    iput-object p1, p0, Lcom/android/server/AppOpsService$2;->this$0:Lcom/android/server/AppOpsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPackageTrustedToInstallApps(Ljava/lang/String;I)I
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 704
    iget-object v0, p0, Lcom/android/server/AppOpsService$2;->this$0:Lcom/android/server/AppOpsService;

    const/16 v1, 0x42

    invoke-virtual {v0, v1, p2, p1}, Lcom/android/server/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v0

    .line 706
    .local v0, "appOpMode":I
    if-eqz v0, :cond_10

    const/4 v1, 0x2

    if-eq v0, v1, :cond_e

    .line 712
    return v1

    .line 710
    :cond_e
    const/4 v1, 0x1

    return v1

    .line 708
    :cond_10
    const/4 v1, 0x0

    return v1
.end method
