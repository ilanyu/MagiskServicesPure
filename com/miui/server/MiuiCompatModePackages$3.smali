.class Lcom/miui/server/MiuiCompatModePackages$3;
.super Landroid/content/BroadcastReceiver;
.source "MiuiCompatModePackages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/MiuiCompatModePackages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/MiuiCompatModePackages;


# direct methods
.method constructor <init>(Lcom/miui/server/MiuiCompatModePackages;)V
    .registers 2
    .param p1, "this$0"    # Lcom/miui/server/MiuiCompatModePackages;

    .line 439
    iput-object p1, p0, Lcom/miui/server/MiuiCompatModePackages$3;->this$0:Lcom/miui/server/MiuiCompatModePackages;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 442
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 443
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 444
    .local v1, "data":Landroid/net/Uri;
    if-eqz v1, :cond_34

    .line 445
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 446
    .local v2, "pkg":Ljava/lang/String;
    if-eqz v2, :cond_34

    .line 447
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 448
    iget-object v3, p0, Lcom/miui/server/MiuiCompatModePackages$3;->this$0:Lcom/miui/server/MiuiCompatModePackages;

    # invokes: Lcom/miui/server/MiuiCompatModePackages;->handleUpdatePackage(Ljava/lang/String;)V
    invoke-static {v3, v2}, Lcom/miui/server/MiuiCompatModePackages;->access$1200(Lcom/miui/server/MiuiCompatModePackages;Ljava/lang/String;)V

    goto :goto_34

    .line 449
    :cond_1e
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    const-string v3, "android.intent.extra.REPLACING"

    const/4 v4, 0x0

    .line 450
    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_34

    .line 451
    iget-object v3, p0, Lcom/miui/server/MiuiCompatModePackages$3;->this$0:Lcom/miui/server/MiuiCompatModePackages;

    # invokes: Lcom/miui/server/MiuiCompatModePackages;->handleRemovePackage(Ljava/lang/String;)V
    invoke-static {v3, v2}, Lcom/miui/server/MiuiCompatModePackages;->access$1300(Lcom/miui/server/MiuiCompatModePackages;Ljava/lang/String;)V

    .line 455
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_34
    :goto_34
    return-void
.end method
