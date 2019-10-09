.class Lcom/android/server/ConnectivityService$6;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ConnectivityService;

    .line 4229
    iput-object p1, p0, Lcom/android/server/ConnectivityService$6;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 4232
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4233
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.extra.user_handle"

    const/16 v2, -0x2710

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 4234
    .local v1, "userId":I
    if-ne v1, v2, :cond_f

    return-void

    .line 4236
    :cond_f
    const-string v2, "android.intent.action.USER_STARTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 4237
    iget-object v2, p0, Lcom/android/server/ConnectivityService$6;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->onUserStart(I)V
    invoke-static {v2, v1}, Lcom/android/server/ConnectivityService;->access$4800(Lcom/android/server/ConnectivityService;I)V

    goto :goto_54

    .line 4238
    :cond_1d
    const-string v2, "android.intent.action.USER_STOPPED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 4239
    iget-object v2, p0, Lcom/android/server/ConnectivityService$6;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->onUserStop(I)V
    invoke-static {v2, v1}, Lcom/android/server/ConnectivityService;->access$4900(Lcom/android/server/ConnectivityService;I)V

    goto :goto_54

    .line 4240
    :cond_2b
    const-string v2, "android.intent.action.USER_ADDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 4241
    iget-object v2, p0, Lcom/android/server/ConnectivityService$6;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->onUserAdded(I)V
    invoke-static {v2, v1}, Lcom/android/server/ConnectivityService;->access$5000(Lcom/android/server/ConnectivityService;I)V

    goto :goto_54

    .line 4242
    :cond_39
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 4243
    iget-object v2, p0, Lcom/android/server/ConnectivityService$6;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->onUserRemoved(I)V
    invoke-static {v2, v1}, Lcom/android/server/ConnectivityService;->access$5100(Lcom/android/server/ConnectivityService;I)V

    goto :goto_54

    .line 4244
    :cond_47
    const-string v2, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 4245
    iget-object v2, p0, Lcom/android/server/ConnectivityService$6;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->onUserUnlocked(I)V
    invoke-static {v2, v1}, Lcom/android/server/ConnectivityService;->access$5200(Lcom/android/server/ConnectivityService;I)V

    .line 4247
    :cond_54
    :goto_54
    return-void
.end method
