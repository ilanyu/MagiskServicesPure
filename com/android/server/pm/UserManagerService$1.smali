.class Lcom/android/server/pm/UserManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "UserManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/UserManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/UserManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/UserManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/pm/UserManagerService;

    .line 385
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$1;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onReceive$0(Lcom/android/server/pm/UserManagerService$1;ILandroid/content/IntentSender;)V
    .registers 5
    .param p1, "userHandle"    # I
    .param p2, "target"    # Landroid/content/IntentSender;

    .line 395
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$1;->this$0:Lcom/android/server/pm/UserManagerService;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/pm/UserManagerService;->setQuietModeEnabled(IZLandroid/content/IntentSender;)V
    invoke-static {v0, p1, v1, p2}, Lcom/android/server/pm/UserManagerService;->access$000(Lcom/android/server/pm/UserManagerService;IZLandroid/content/IntentSender;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 388
    const-string v0, "com.android.server.pm.DISABLE_QUIET_MODE_AFTER_UNLOCK"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 389
    return-void

    .line 391
    :cond_d
    const-string v0, "android.intent.extra.INTENT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/IntentSender;

    .line 392
    .local v0, "target":Landroid/content/IntentSender;
    const-string v1, "android.intent.extra.USER_ID"

    const/16 v2, -0x2710

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 394
    .local v1, "userHandle":I
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/pm/-$$Lambda$UserManagerService$1$DQ_02g7kZ7QrJXO6aCATwE6DYCE;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/server/pm/-$$Lambda$UserManagerService$1$DQ_02g7kZ7QrJXO6aCATwE6DYCE;-><init>(Lcom/android/server/pm/UserManagerService$1;ILandroid/content/IntentSender;)V

    .line 395
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 396
    return-void
.end method
