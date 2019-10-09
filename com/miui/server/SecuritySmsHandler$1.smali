.class Lcom/miui/server/SecuritySmsHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "SecuritySmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/SecuritySmsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/SecuritySmsHandler;


# direct methods
.method constructor <init>(Lcom/miui/server/SecuritySmsHandler;)V
    .registers 2
    .param p1, "this$0"    # Lcom/miui/server/SecuritySmsHandler;

    .line 296
    iput-object p1, p0, Lcom/miui/server/SecuritySmsHandler$1;->this$0:Lcom/miui/server/SecuritySmsHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 299
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, "action":Ljava/lang/String;
    const-string v1, "SecurityManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mNormalMsgResultReceiver sms dispatched, action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const-string v1, "android.provider.Telephony.SMS_DELIVER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x10

    const/high16 v3, 0x8000000

    const/4 v4, 0x0

    if-eqz v1, :cond_43

    .line 303
    invoke-virtual {p2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 304
    invoke-virtual {p2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 305
    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    iget-object v1, p0, Lcom/miui/server/SecuritySmsHandler$1;->this$0:Lcom/miui/server/SecuritySmsHandler;

    const-string v3, "android.permission.RECEIVE_SMS"

    # invokes: Lcom/miui/server/SecuritySmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V
    invoke-static {v1, p2, v3, v2, v4}, Lcom/miui/server/SecuritySmsHandler;->access$000(Lcom/miui/server/SecuritySmsHandler;Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    .line 307
    const-string v1, "SecurityManagerService"

    const-string/jumbo v2, "mNormalMsgResultReceiver dispatch SMS_RECEIVED_ACTION"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_65

    .line 309
    :cond_43
    const-string v1, "android.provider.Telephony.WAP_PUSH_DELIVER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 310
    invoke-virtual {p2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 311
    invoke-virtual {p2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 312
    const-string v1, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 313
    iget-object v1, p0, Lcom/miui/server/SecuritySmsHandler$1;->this$0:Lcom/miui/server/SecuritySmsHandler;

    const-string v3, "android.permission.RECEIVE_SMS"

    # invokes: Lcom/miui/server/SecuritySmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V
    invoke-static {v1, p2, v3, v2, v4}, Lcom/miui/server/SecuritySmsHandler;->access$000(Lcom/miui/server/SecuritySmsHandler;Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    .line 314
    const-string v1, "SecurityManagerService"

    const-string/jumbo v2, "mNormalMsgResultReceiver dispatch WAP_PUSH_RECEIVED_ACTION"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_65
    :goto_65
    return-void
.end method
