.class Lcom/android/server/NetworkScoreService$1;
.super Landroid/content/BroadcastReceiver;
.source "NetworkScoreService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkScoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkScoreService;


# direct methods
.method constructor <init>(Lcom/android/server/NetworkScoreService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/NetworkScoreService;

    .line 107
    iput-object p1, p0, Lcom/android/server/NetworkScoreService$1;->this$0:Lcom/android/server/NetworkScoreService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 110
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.extra.user_handle"

    const/16 v2, -0x2710

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 112
    .local v1, "userId":I
    # getter for: Lcom/android/server/NetworkScoreService;->DBG:Z
    invoke-static {}, Lcom/android/server/NetworkScoreService;->access$000()Z

    move-result v3

    if-eqz v3, :cond_30

    const-string v3, "NetworkScoreService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " for userId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_30
    if-ne v1, v2, :cond_33

    return-void

    .line 115
    :cond_33
    const-string v2, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 116
    iget-object v2, p0, Lcom/android/server/NetworkScoreService$1;->this$0:Lcom/android/server/NetworkScoreService;

    invoke-virtual {v2, v1}, Lcom/android/server/NetworkScoreService;->onUserUnlocked(I)V

    .line 118
    :cond_40
    return-void
.end method
