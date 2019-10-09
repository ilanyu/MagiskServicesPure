.class Lcom/miui/server/SecuritySmsHandler$2;
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

    .line 319
    iput-object p1, p0, Lcom/miui/server/SecuritySmsHandler$2;->this$0:Lcom/miui/server/SecuritySmsHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 322
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, "action":Ljava/lang/String;
    invoke-static {p2}, Lcom/miui/server/SecuritySmsHandler;->getSlotIdFromIntent(Landroid/content/Intent;)I

    move-result v1

    .line 324
    .local v1, "slotId":I
    const-string v2, "SecurityManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mInterceptedSmsResultReceiver sms dispatched, action:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const-string v2, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_81

    .line 327
    invoke-virtual {p0}, Lcom/miui/server/SecuritySmsHandler$2;->getResultCode()I

    move-result v2

    .line 329
    .local v2, "resultCode":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_81

    .line 330
    const-string v3, "SecurityManagerService"

    const-string/jumbo v4, "mInterceptedSmsResultReceiver SMS_RECEIVED_ACTION not aborted"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-static {p2}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v3

    .line 332
    .local v3, "msgs":[Landroid/telephony/SmsMessage;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 333
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    move v6, v5

    .line 333
    .local v6, "i":I
    :goto_41
    array-length v7, v3

    if-ge v6, v7, :cond_50

    .line 334
    aget-object v7, v3, v6

    invoke-virtual {v7}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    add-int/lit8 v6, v6, 0x1

    goto :goto_41

    .line 336
    .end local v6    # "i":I
    :cond_50
    aget-object v5, v3, v5

    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    .line 337
    .local v5, "address":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 340
    .local v6, "body":Ljava/lang/String;
    iget-object v7, p0, Lcom/miui/server/SecuritySmsHandler$2;->this$0:Lcom/miui/server/SecuritySmsHandler;

    # invokes: Lcom/miui/server/SecuritySmsHandler;->checkByAntiSpam(Ljava/lang/String;Ljava/lang/String;I)I
    invoke-static {v7, v5, v6, v1}, Lcom/miui/server/SecuritySmsHandler;->access$100(Lcom/miui/server/SecuritySmsHandler;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    .line 341
    .local v7, "blockType":I
    if-eqz v7, :cond_81

    .line 342
    const-string v8, "blockType"

    invoke-virtual {p2, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 343
    invoke-static {v7}, Lmiui/provider/ExtraTelephony;->getRealBlockType(I)I

    move-result v8

    const/4 v9, 0x3

    if-lt v8, v9, :cond_7c

    .line 344
    const-string v8, "SecurityManagerService"

    const-string/jumbo v9, "mInterceptedSmsResultReceiver: This sms is intercepted by AntiSpam"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v8, p0, Lcom/miui/server/SecuritySmsHandler$2;->this$0:Lcom/miui/server/SecuritySmsHandler;

    # invokes: Lcom/miui/server/SecuritySmsHandler;->dispatchSmsToAntiSpam(Landroid/content/Intent;)V
    invoke-static {v8, p2}, Lcom/miui/server/SecuritySmsHandler;->access$200(Lcom/miui/server/SecuritySmsHandler;Landroid/content/Intent;)V

    goto :goto_81

    .line 347
    :cond_7c
    iget-object v8, p0, Lcom/miui/server/SecuritySmsHandler$2;->this$0:Lcom/miui/server/SecuritySmsHandler;

    # invokes: Lcom/miui/server/SecuritySmsHandler;->dispatchNormalSms(Landroid/content/Intent;)V
    invoke-static {v8, p2}, Lcom/miui/server/SecuritySmsHandler;->access$300(Lcom/miui/server/SecuritySmsHandler;Landroid/content/Intent;)V

    .line 352
    .end local v2    # "resultCode":I
    .end local v3    # "msgs":[Landroid/telephony/SmsMessage;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "address":Ljava/lang/String;
    .end local v6    # "body":Ljava/lang/String;
    .end local v7    # "blockType":I
    :cond_81
    :goto_81
    return-void
.end method
