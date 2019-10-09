.class Lcom/android/server/BatteryStatsUtils$1;
.super Landroid/content/BroadcastReceiver;
.source "BatteryStatsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryStatsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 26
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 28
    # getter for: Lcom/android/server/BatteryStatsUtils;->sCallBack:Lcom/android/server/BatteryStatsUtils$DataConnectionStatsCallBack;
    invoke-static {}, Lcom/android/server/BatteryStatsUtils;->access$000()Lcom/android/server/BatteryStatsUtils$DataConnectionStatsCallBack;

    move-result-object v1

    if-eqz v1, :cond_52

    .line 29
    # getter for: Lcom/android/server/BatteryStatsUtils;->sCallBack:Lcom/android/server/BatteryStatsUtils$DataConnectionStatsCallBack;
    invoke-static {}, Lcom/android/server/BatteryStatsUtils;->access$000()Lcom/android/server/BatteryStatsUtils$DataConnectionStatsCallBack;

    move-result-object v1

    # getter for: Lcom/android/server/BatteryStatsUtils;->sDataSlot:I
    invoke-static {}, Lcom/android/server/BatteryStatsUtils;->access$100()I

    move-result v2

    invoke-static {v2}, Lcom/android/server/BatteryStatsUtils;->getSubId(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/BatteryStatsUtils$DataConnectionStatsCallBack;->onChanged(ILcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_52

    .line 31
    :cond_23
    const-string/jumbo v1, "miui.intent.action.ACTION_DEFAULT_DATA_SLOT_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 32
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSlotId()I

    move-result v1

    # setter for: Lcom/android/server/BatteryStatsUtils;->sDataSlot:I
    invoke-static {v1}, Lcom/android/server/BatteryStatsUtils;->access$102(I)I

    .line 33
    # getter for: Lcom/android/server/BatteryStatsUtils;->sCallBack:Lcom/android/server/BatteryStatsUtils$DataConnectionStatsCallBack;
    invoke-static {}, Lcom/android/server/BatteryStatsUtils;->access$000()Lcom/android/server/BatteryStatsUtils$DataConnectionStatsCallBack;

    move-result-object v1

    if-eqz v1, :cond_52

    .line 34
    sget v1, Lmiui/telephony/SubscriptionManager;->INVALID_SUBSCRIPTION_ID:I

    invoke-static {p2, v1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdExtra(Landroid/content/Intent;I)I

    move-result v1

    .line 36
    .local v1, "dataSubId":I
    # getter for: Lcom/android/server/BatteryStatsUtils;->sCallBack:Lcom/android/server/BatteryStatsUtils$DataConnectionStatsCallBack;
    invoke-static {}, Lcom/android/server/BatteryStatsUtils;->access$000()Lcom/android/server/BatteryStatsUtils$DataConnectionStatsCallBack;

    move-result-object v2

    # getter for: Lcom/android/server/BatteryStatsUtils;->sDataSlot:I
    invoke-static {}, Lcom/android/server/BatteryStatsUtils;->access$100()I

    move-result v3

    # invokes: Lcom/android/server/BatteryStatsUtils;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;
    invoke-static {v3}, Lcom/android/server/BatteryStatsUtils;->access$200(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/android/server/BatteryStatsUtils$DataConnectionStatsCallBack;->onChanged(ILcom/android/internal/telephony/IccCardConstants$State;)V

    .line 39
    .end local v1    # "dataSubId":I
    :cond_52
    :goto_52
    return-void
.end method
