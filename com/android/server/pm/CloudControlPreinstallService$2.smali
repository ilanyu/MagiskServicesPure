.class Lcom/android/server/pm/CloudControlPreinstallService$2;
.super Ljava/lang/Object;
.source "CloudControlPreinstallService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/CloudControlPreinstallService;->uninstallPreinstallApps()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/CloudControlPreinstallService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/CloudControlPreinstallService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/pm/CloudControlPreinstallService;

    .line 361
    iput-object p1, p0, Lcom/android/server/pm/CloudControlPreinstallService$2;->this$0:Lcom/android/server/pm/CloudControlPreinstallService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 365
    iget-object v0, p0, Lcom/android/server/pm/CloudControlPreinstallService$2;->this$0:Lcom/android/server/pm/CloudControlPreinstallService;

    const-string v1, "cloud_uninstall_start"

    invoke-virtual {v0, v1}, Lcom/android/server/pm/CloudControlPreinstallService;->trackEvent(Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Lcom/android/server/pm/CloudControlPreinstallService$2;->this$0:Lcom/android/server/pm/CloudControlPreinstallService;

    # invokes: Lcom/android/server/pm/CloudControlPreinstallService;->getUninstallApps()Ljava/util/List;
    invoke-static {v0}, Lcom/android/server/pm/CloudControlPreinstallService;->access$000(Lcom/android/server/pm/CloudControlPreinstallService;)Ljava/util/List;

    move-result-object v0

    .line 368
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/CloudControlPreinstallService$UninstallApp;>;"
    iget-object v1, p0, Lcom/android/server/pm/CloudControlPreinstallService$2;->this$0:Lcom/android/server/pm/CloudControlPreinstallService;

    # invokes: Lcom/android/server/pm/CloudControlPreinstallService;->uninstallAppsUpdateList(Ljava/util/List;)V
    invoke-static {v1, v0}, Lcom/android/server/pm/CloudControlPreinstallService;->access$100(Lcom/android/server/pm/CloudControlPreinstallService;Ljava/util/List;)V

    .line 369
    return-void
.end method
