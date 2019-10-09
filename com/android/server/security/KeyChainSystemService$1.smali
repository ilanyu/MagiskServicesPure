.class Lcom/android/server/security/KeyChainSystemService$1;
.super Landroid/content/BroadcastReceiver;
.source "KeyChainSystemService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/security/KeyChainSystemService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/security/KeyChainSystemService;


# direct methods
.method constructor <init>(Lcom/android/server/security/KeyChainSystemService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/security/KeyChainSystemService;

    .line 72
    iput-object p1, p0, Lcom/android/server/security/KeyChainSystemService$1;->this$0:Lcom/android/server/security/KeyChainSystemService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "broadcastIntent"    # Landroid/content/Intent;

    .line 75
    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 76
    return-void

    .line 80
    :cond_7
    :try_start_7
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroid/security/IKeyChainService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/security/KeyChainSystemService$1;->this$0:Lcom/android/server/security/KeyChainSystemService;

    .line 82
    invoke-virtual {v1}, Lcom/android/server/security/KeyChainSystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v1

    .line 83
    .local v1, "service":Landroid/content/ComponentName;
    if-nez v1, :cond_24

    .line 84
    return-void

    .line 86
    :cond_24
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 87
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    iget-object v2, p0, Lcom/android/server/security/KeyChainSystemService$1;->this$0:Lcom/android/server/security/KeyChainSystemService;

    invoke-virtual {p0}, Lcom/android/server/security/KeyChainSystemService$1;->getSendingUserId()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    # invokes: Lcom/android/server/security/KeyChainSystemService;->startServiceInBackgroundAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    invoke-static {v2, v0, v3}, Lcom/android/server/security/KeyChainSystemService;->access$000(Lcom/android/server/security/KeyChainSystemService;Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_3b
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_3b} :catch_3c

    .line 91
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "service":Landroid/content/ComponentName;
    goto :goto_44

    .line 89
    :catch_3c
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "KeyChainSystemService"

    const-string v2, "Unable to forward package removed broadcast to KeyChain"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_44
    return-void
.end method
