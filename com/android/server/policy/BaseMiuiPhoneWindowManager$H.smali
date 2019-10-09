.class Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;
.super Landroid/os/Handler;
.source "BaseMiuiPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# static fields
.field static final MSG_KEY_FUNCTION:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V
    .registers 2

    .line 1715
    iput-object p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Lcom/android/server/policy/BaseMiuiPhoneWindowManager$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
    .param p2, "x1"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager$1;

    .line 1715
    invoke-direct {p0, p1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12
    .param p1, "msg"    # Landroid/os/Message;

    .line 1720
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mShortcutTriggered:Z
    invoke-static {v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$1100(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 1722
    :cond_9
    iget-object v0, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_14

    return-void

    .line 1724
    :cond_14
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "shortcut"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1725
    .local v0, "shortcut":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1726
    .local v1, "triggered":Z
    const-string/jumbo v2, "virtual_key_longpress"

    .line 1727
    .local v2, "effectKey":Ljava/lang/String;
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 1728
    .local v3, "action":Ljava/lang/String;
    if-nez v3, :cond_2a

    .line 1729
    return-void

    .line 1731
    :cond_2a
    const-string/jumbo v4, "launch_camera"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_42

    .line 1732
    iget-object v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # invokes: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getCameraIntent()Landroid/content/Intent;
    invoke-static {v6}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$1200(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/content/Intent;

    move-result-object v6

    # invokes: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->launchApp(Landroid/content/Intent;)Z
    invoke-static {v4, v6}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$1300(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Landroid/content/Intent;)Z

    move-result v1

    goto/16 :goto_1f3

    .line 1733
    :cond_42
    const-string/jumbo v4, "screen_shot"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_75

    .line 1734
    iget-object v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v4, v4, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-virtual {v6}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getScreenshotChordLongPress()Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1735
    iget-object v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v4, v4, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-virtual {v6}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getScreenshotChordLongPress()Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1736
    iget-object v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v4, v4, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "screenshot"

    const-string/jumbo v7, "key_shortcut"

    invoke-static {v4, v6, v7}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->sendRecordCountEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1737
    const/4 v1, 0x1

    goto/16 :goto_1f3

    .line 1738
    :cond_75
    const-string/jumbo v4, "launch_voice_assistant"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_90

    .line 1739
    iget-object v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.ASSIST"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    # invokes: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->launchVoiceAssistant(Landroid/content/Intent;Ljava/lang/String;)Z
    invoke-static {v4, v6, v0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$1400(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v1

    .line 1740
    const-string/jumbo v2, "screen_button_voice_assist"

    goto/16 :goto_1f3

    .line 1741
    :cond_90
    const-string/jumbo v4, "launch_google_search"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b0

    .line 1742
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1743
    .local v4, "args":Landroid/os/Bundle;
    const-string v6, "android.intent.extra.ASSIST_INPUT_DEVICE_ID"

    const/4 v7, -0x1

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1744
    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const/4 v7, 0x0

    # invokes: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->launchAssistAction(Ljava/lang/String;Landroid/os/Bundle;)Z
    invoke-static {v6, v7, v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$1500(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v1

    .line 1745
    const-string/jumbo v2, "screen_button_voice_assist"

    .line 1746
    .end local v4    # "args":Landroid/os/Bundle;
    goto/16 :goto_1f3

    :cond_b0
    const-string v4, "go_to_sleep"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c6

    .line 1747
    iget-object v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v4, v4, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 1748
    const/4 v1, 0x1

    goto/16 :goto_1f3

    .line 1749
    :cond_c6
    const-string/jumbo v4, "turn_on_torch"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_fb

    .line 1750
    iget-object v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v4

    .line 1751
    .local v4, "telecomManager":Landroid/telecom/TelecomManager;
    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mWifiOnly:Z
    invoke-static {v6}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$1600(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_e9

    if-eqz v4, :cond_e7

    .line 1752
    invoke-virtual {v4}, Landroid/telecom/TelecomManager;->getCallState()I

    move-result v6

    if-nez v6, :cond_e7

    goto :goto_e9

    :cond_e7
    move v6, v5

    goto :goto_ea

    :cond_e9
    :goto_e9
    move v6, v7

    .line 1753
    .local v6, "phoneIdle":Z
    :goto_ea
    if-eqz v6, :cond_f9

    .line 1754
    iget-object v8, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTorchEnabled:Z
    invoke-static {v9}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$200(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Z

    move-result v9

    xor-int/2addr v7, v9

    # invokes: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->setTorch(Z)Z
    invoke-static {v8, v7}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$300(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Z)Z

    move-result v1

    .line 1756
    .end local v4    # "telecomManager":Landroid/telecom/TelecomManager;
    .end local v6    # "phoneIdle":Z
    :cond_f9
    goto/16 :goto_1f3

    :cond_fb
    const-string v4, "close_app"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_115

    .line 1757
    const-string v4, "close_app"

    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressBackKey:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1758
    .local v4, "isTriggeredByBack":Z
    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # invokes: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->closeApp(Z)Z
    invoke-static {v6, v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$1700(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Z)Z

    move-result v1

    .line 1759
    .end local v4    # "isTriggeredByBack":Z
    goto/16 :goto_1f3

    :cond_115
    const-string/jumbo v4, "show_menu"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_126

    .line 1760
    iget-object v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # invokes: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->showMenu()Z
    invoke-static {v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$1800(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Z

    move-result v1

    goto/16 :goto_1f3

    .line 1761
    :cond_126
    const-string/jumbo v4, "mi_pay"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_144

    .line 1762
    iget-object v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # invokes: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getNfcIntent()Landroid/content/Intent;
    invoke-static {v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$1900(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/content/Intent;

    move-result-object v4

    .line 1763
    .local v4, "nfcIntent":Landroid/content/Intent;
    const-string v6, "event_source"

    const-string v7, "double_click_power"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1764
    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # invokes: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->launchApp(Landroid/content/Intent;)Z
    invoke-static {v6, v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$1300(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Landroid/content/Intent;)Z

    move-result v1

    .line 1765
    .end local v4    # "nfcIntent":Landroid/content/Intent;
    goto/16 :goto_1f3

    :cond_144
    const-string v4, "dump_log"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16a

    .line 1766
    iget-object v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # invokes: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getDumpLogIntent()Landroid/content/Intent;
    invoke-static {v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$2000(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/content/Intent;

    move-result-object v4

    .line 1767
    .local v4, "dumpLogIntent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-virtual {v6, v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->sendAsyncBroadcast(Landroid/content/Intent;)V

    .line 1768
    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v7, v7, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const v8, 0x110b010e

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->makeAllUserToastAndShow(Ljava/lang/String;I)Landroid/widget/Toast;
    invoke-static {v6, v7, v5}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$2100(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Ljava/lang/String;I)Landroid/widget/Toast;

    .line 1769
    const/4 v1, 0x1

    .line 1770
    .end local v4    # "dumpLogIntent":Landroid/content/Intent;
    goto/16 :goto_1f3

    :cond_16a
    const-string/jumbo v4, "launch_recents"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17f

    .line 1771
    iget-object v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # invokes: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->preloadRecentApps()V
    invoke-static {v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$2200(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V

    .line 1772
    iget-object v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # invokes: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->launchRecentPanel()Z
    invoke-static {v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$2300(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Z

    move-result v1

    goto :goto_1f3

    .line 1773
    :cond_17f
    const-string/jumbo v4, "split_screen"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18f

    .line 1774
    iget-object v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->toggleSplitScreenInternal()V

    .line 1775
    const/4 v1, 0x1

    goto :goto_1f3

    .line 1776
    :cond_18f
    const-string v4, "close_talkback"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b5

    .line 1777
    iget-object v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeDownKeyConsumed:Z
    invoke-static {v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$2400(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Z

    move-result v4

    if-eqz v4, :cond_1f3

    iget-object v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeUpKeyConsumed:Z
    invoke-static {v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$2500(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Z

    move-result v4

    if-eqz v4, :cond_1f3

    .line 1778
    iget-object v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # invokes: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->closeTalkBack()V
    invoke-static {v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$2600(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V

    .line 1779
    const-string v4, "combine volume key"

    const-string/jumbo v6, "talkback is closed"

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f3

    .line 1781
    :cond_1b5
    const-string/jumbo v4, "none"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f3

    .line 1782
    iget-object v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v4, v4, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1783
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v6, "key_tips"

    .line 1782
    const/4 v7, -0x2

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 1784
    .local v4, "originalShortcut":Ljava/lang/String;
    if-eqz v4, :cond_1f3

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f3

    .line 1785
    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v8, "key_tips"

    const-string/jumbo v9, "key_none"

    invoke-static {v6, v8, v9, v7}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1787
    iget-object v6, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # invokes: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getPowerGuideIntent()Landroid/content/Intent;
    invoke-static {v7}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$2700(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/content/Intent;

    move-result-object v7

    # invokes: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->launchApp(Landroid/content/Intent;)Z
    invoke-static {v6, v7}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$1300(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Landroid/content/Intent;)Z

    move-result v1

    .line 1791
    .end local v4    # "originalShortcut":Ljava/lang/String;
    :cond_1f3
    :goto_1f3
    if-eqz v1, :cond_203

    .line 1792
    iget-object v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;
    invoke-static {v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$2800(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Lmiui/util/HapticFeedbackUtil;

    move-result-object v4

    invoke-virtual {v4, v2, v5}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(Ljava/lang/String;Z)Z

    .line 1793
    iget-object v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$H;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    # invokes: Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->markShortcutTriggered()V
    invoke-static {v4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->access$2900(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)V

    .line 1795
    :cond_203
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1796
    return-void
.end method
