.class Lcom/android/server/location/GnssLocationProvider$4;
.super Landroid/content/BroadcastReceiver;
.source "GnssLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GnssLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GnssLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GnssLocationProvider;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 567
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 570
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 571
    .local v0, "action":Ljava/lang/String;
    # getter for: Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->access$900()Z

    move-result v1

    if-eqz v1, :cond_21

    const-string v1, "GnssLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "receive broadcast intent, action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :cond_21
    if-nez v0, :cond_24

    .line 573
    return-void

    .line 576
    :cond_24
    const-string v1, "com.android.internal.location.ALARM_WAKEUP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 577
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    const/4 v2, 0x0

    # invokes: Lcom/android/server/location/GnssLocationProvider;->startNavigating(Z)V
    invoke-static {v1, v2}, Lcom/android/server/location/GnssLocationProvider;->access$1000(Lcom/android/server/location/GnssLocationProvider;Z)V

    goto :goto_75

    .line 578
    :cond_33
    const-string v1, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 579
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    # invokes: Lcom/android/server/location/GnssLocationProvider;->hibernate()V
    invoke-static {v1}, Lcom/android/server/location/GnssLocationProvider;->access$1100(Lcom/android/server/location/GnssLocationProvider;)V

    goto :goto_75

    .line 580
    :cond_41
    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_70

    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    .line 581
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_70

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 582
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_70

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 583
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    goto :goto_70

    .line 585
    :cond_62
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 586
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    # invokes: Lcom/android/server/location/GnssLocationProvider;->subscriptionOrSimChanged(Landroid/content/Context;)V
    invoke-static {v1, p1}, Lcom/android/server/location/GnssLocationProvider;->access$1300(Lcom/android/server/location/GnssLocationProvider;Landroid/content/Context;)V

    goto :goto_75

    .line 584
    :cond_70
    :goto_70
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    # invokes: Lcom/android/server/location/GnssLocationProvider;->updateLowPowerMode()V
    invoke-static {v1}, Lcom/android/server/location/GnssLocationProvider;->access$1200(Lcom/android/server/location/GnssLocationProvider;)V

    .line 588
    :cond_75
    :goto_75
    return-void
.end method
