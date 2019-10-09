.class Lcom/android/server/connectivity/NetworkMonitor$DefaultState;
.super Lcom/android/internal/util/State;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/NetworkMonitor;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;)V
    .registers 2

    .line 397
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p2, "x1"    # Lcom/android/server/connectivity/NetworkMonitor$1;

    .line 397
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .registers 7
    .param p1, "message"    # Landroid/os/Message;

    .line 400
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_fc

    goto/16 :goto_fb

    .line 457
    :sswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;

    .line 458
    .local v0, "cfg":Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->isValidationRequired()Z
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$1600(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v1

    if-eqz v1, :cond_2f

    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;->inStrictMode()Z

    move-result v1

    if-nez v1, :cond_1e

    goto :goto_2f

    .line 470
    :cond_1e
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v3, v0, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;->hostname:Ljava/lang/String;

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->mPrivateDnsProviderHostname:Ljava/lang/String;
    invoke-static {v1, v3}, Lcom/android/server/connectivity/NetworkMonitor;->access$1702(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/String;)Ljava/lang/String;

    .line 491
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const v3, 0x8200f

    invoke-virtual {v1, v3}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(I)V

    .line 492
    goto/16 :goto_fb

    .line 466
    :cond_2f
    :goto_2f
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-string v3, ""

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->mPrivateDnsProviderHostname:Ljava/lang/String;
    invoke-static {v1, v3}, Lcom/android/server/connectivity/NetworkMonitor;->access$1702(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/String;)Ljava/lang/String;

    .line 467
    goto/16 :goto_fb

    .line 420
    .end local v0    # "cfg":Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;
    :sswitch_38
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CaptivePortal App responded with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 434
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->mUseHttps:Z
    invoke-static {v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->access$1102(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    .line 436
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_116

    goto :goto_96

    .line 441
    :pswitch_5c
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->mDontDisplaySigninNotification:Z
    invoke-static {v0, v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$1202(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    .line 444
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mEvaluatingPrivateDnsState:Lcom/android/internal/util/State;
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$1300(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 445
    goto :goto_96

    .line 447
    :pswitch_6d
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->mDontDisplaySigninNotification:Z
    invoke-static {v0, v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$1202(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    .line 448
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->mUserDoesNotWant:Z
    invoke-static {v0, v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$1402(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    .line 449
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->notifyNetworkTestResultInvalid(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$1500(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/Object;)V

    .line 451
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->mUidResponsibleForReeval:I
    invoke-static {v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->access$1002(Lcom/android/server/connectivity/NetworkMonitor;I)I

    .line 452
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mEvaluatingState:Lcom/android/internal/util/State;
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$700(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_96

    .line 438
    :pswitch_8d
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const v1, 0x82008

    invoke-virtual {v0, v1, v3, v3}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(III)V

    .line 439
    nop

    .line 455
    :goto_96
    return v2

    .line 415
    :sswitch_97
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Forcing reevaluation for UID "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 416
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->mUidResponsibleForReeval:I
    invoke-static {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$1002(Lcom/android/server/connectivity/NetworkMonitor;I)I

    .line 417
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mEvaluatingState:Lcom/android/internal/util/State;
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$700(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 418
    return v2

    .line 406
    :sswitch_c2
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v3, 0x7

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->logNetworkEvent(I)V
    invoke-static {v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->access$600(Lcom/android/server/connectivity/NetworkMonitor;I)V

    .line 407
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;
    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->access$800(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    move-result-object v0

    if-eqz v0, :cond_e4

    .line 408
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->access$900(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;
    invoke-static {v3}, Lcom/android/server/connectivity/NetworkMonitor;->access$800(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 409
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;
    invoke-static {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$802(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;)Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    .line 411
    :cond_e4
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkMonitor;->quit()V

    .line 412
    return v2

    .line 402
    :sswitch_ea
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->logNetworkEvent(I)V
    invoke-static {v0, v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$600(Lcom/android/server/connectivity/NetworkMonitor;I)V

    .line 403
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mEvaluatingState:Lcom/android/internal/util/State;
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$700(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 404
    return v2

    .line 497
    :goto_fb
    return v2

    :sswitch_data_fc
    .sparse-switch
        0x82001 -> :sswitch_ea
        0x82007 -> :sswitch_c2
        0x82008 -> :sswitch_97
        0x82009 -> :sswitch_38
        0x8200c -> :sswitch_97
        0x8200d -> :sswitch_9
    .end sparse-switch

    :pswitch_data_116
    .packed-switch 0x0
        :pswitch_8d
        :pswitch_6d
        :pswitch_5c
    .end packed-switch
.end method
