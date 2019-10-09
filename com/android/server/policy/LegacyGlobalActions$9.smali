.class Lcom/android/server/policy/LegacyGlobalActions$9;
.super Landroid/content/BroadcastReceiver;
.source "LegacyGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/LegacyGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/LegacyGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/LegacyGlobalActions;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/policy/LegacyGlobalActions;

    .line 740
    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$9;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 743
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 744
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3a

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 745
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_3a

    .line 750
    :cond_16
    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 753
    const-string v1, "PHONE_IN_ECM_STATE"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_53

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions$9;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    .line 754
    # getter for: Lcom/android/server/policy/LegacyGlobalActions;->mIsWaitingForEcmExit:Z
    invoke-static {v1}, Lcom/android/server/policy/LegacyGlobalActions;->access$100(Lcom/android/server/policy/LegacyGlobalActions;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 755
    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions$9;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    # setter for: Lcom/android/server/policy/LegacyGlobalActions;->mIsWaitingForEcmExit:Z
    invoke-static {v1, v2}, Lcom/android/server/policy/LegacyGlobalActions;->access$102(Lcom/android/server/policy/LegacyGlobalActions;Z)Z

    .line 756
    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions$9;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    const/4 v2, 0x1

    # invokes: Lcom/android/server/policy/LegacyGlobalActions;->changeAirplaneModeSystemSetting(Z)V
    invoke-static {v1, v2}, Lcom/android/server/policy/LegacyGlobalActions;->access$300(Lcom/android/server/policy/LegacyGlobalActions;Z)V

    goto :goto_53

    .line 746
    :cond_3a
    :goto_3a
    const-string/jumbo v1, "reason"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 747
    .local v1, "reason":Ljava/lang/String;
    const-string v3, "globalactions"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_52

    .line 748
    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions$9;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    # getter for: Lcom/android/server/policy/LegacyGlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/policy/LegacyGlobalActions;->access$600(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 750
    .end local v1    # "reason":Ljava/lang/String;
    :cond_52
    nop

    .line 759
    :cond_53
    :goto_53
    return-void
.end method
