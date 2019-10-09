.class Lcom/android/server/pm/CloudControlPreinstallService$1;
.super Landroid/content/BroadcastReceiver;
.source "CloudControlPreinstallService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/CloudControlPreinstallService;
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

    .line 285
    iput-object p1, p0, Lcom/android/server/pm/CloudControlPreinstallService$1;->this$0:Lcom/android/server/pm/CloudControlPreinstallService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 288
    const-string v0, "CloudControlPreinstall"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceive:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    if-nez p2, :cond_1a

    return-void

    .line 291
    :cond_1a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 296
    iget-object v1, p0, Lcom/android/server/pm/CloudControlPreinstallService$1;->this$0:Lcom/android/server/pm/CloudControlPreinstallService;

    invoke-virtual {v1}, Lcom/android/server/pm/CloudControlPreinstallService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "clause_agreed"

    invoke-static {v1, v2}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 297
    iget-object v1, p0, Lcom/android/server/pm/CloudControlPreinstallService$1;->this$0:Lcom/android/server/pm/CloudControlPreinstallService;

    invoke-virtual {v1}, Lcom/android/server/pm/CloudControlPreinstallService;->uninstallPreinstallApps()V

    goto :goto_4b

    .line 299
    :cond_3e
    const-string v1, "com.miui.clause_agreed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 300
    iget-object v1, p0, Lcom/android/server/pm/CloudControlPreinstallService$1;->this$0:Lcom/android/server/pm/CloudControlPreinstallService;

    invoke-virtual {v1}, Lcom/android/server/pm/CloudControlPreinstallService;->uninstallPreinstallApps()V

    .line 302
    :cond_4b
    :goto_4b
    return-void
.end method
