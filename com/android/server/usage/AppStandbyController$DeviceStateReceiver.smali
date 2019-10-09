.class Lcom/android/server/usage/AppStandbyController$DeviceStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AppStandbyController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/AppStandbyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usage/AppStandbyController;


# direct methods
.method private constructor <init>(Lcom/android/server/usage/AppStandbyController;)V
    .registers 2

    .line 1686
    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController$DeviceStateReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/usage/AppStandbyController;Lcom/android/server/usage/AppStandbyController$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/usage/AppStandbyController;
    .param p2, "x1"    # Lcom/android/server/usage/AppStandbyController$1;

    .line 1686
    invoke-direct {p0, p1}, Lcom/android/server/usage/AppStandbyController$DeviceStateReceiver;-><init>(Lcom/android/server/usage/AppStandbyController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1689
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x3465cce

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_2e

    const v2, 0x33e5d967

    if-eq v1, v2, :cond_24

    const v2, 0x388694fe

    if-eq v1, v2, :cond_1a

    goto :goto_38

    :cond_1a
    const-string v1, "android.os.action.CHARGING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    move v0, v4

    goto :goto_39

    :cond_24
    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    const/4 v0, 0x2

    goto :goto_39

    :cond_2e
    const-string v1, "android.os.action.DISCHARGING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    move v0, v3

    goto :goto_39

    :cond_38
    :goto_38
    const/4 v0, -0x1

    :goto_39
    packed-switch v0, :pswitch_data_50

    goto :goto_4f

    .line 1697
    :pswitch_3d
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$DeviceStateReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController;->onDeviceIdleModeChanged()V

    goto :goto_4f

    .line 1694
    :pswitch_43
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$DeviceStateReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0, v4}, Lcom/android/server/usage/AppStandbyController;->setChargingState(Z)V

    .line 1695
    goto :goto_4f

    .line 1691
    :pswitch_49
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$DeviceStateReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0, v3}, Lcom/android/server/usage/AppStandbyController;->setChargingState(Z)V

    .line 1692
    nop

    .line 1700
    :goto_4f
    return-void

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_49
        :pswitch_43
        :pswitch_3d
    .end packed-switch
.end method
