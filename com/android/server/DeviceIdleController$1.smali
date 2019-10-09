.class Lcom/android/server/DeviceIdleController$1;
.super Landroid/content/BroadcastReceiver;
.source "DeviceIdleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceIdleController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/DeviceIdleController;

    .line 340
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 342
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x5bb23923

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_2e

    const v2, -0x45e5283a

    if-eq v1, v2, :cond_24

    const v2, 0x1f50b9c2

    if-eq v1, v2, :cond_1a

    goto :goto_38

    :cond_1a
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    const/4 v0, 0x2

    goto :goto_39

    :cond_24
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    move v0, v4

    goto :goto_39

    :cond_2e
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    move v0, v3

    goto :goto_39

    :cond_38
    :goto_38
    const/4 v0, -0x1

    :goto_39
    packed-switch v0, :pswitch_data_78

    goto :goto_76

    .line 353
    :pswitch_3d
    const-string v0, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_76

    .line 354
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 356
    .local v0, "data":Landroid/net/Uri;
    if-eqz v0, :cond_76

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 356
    .local v2, "ssp":Ljava/lang/String;
    if-eqz v1, :cond_76

    .line 357
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v1, v2}, Lcom/android/server/DeviceIdleController;->removePowerSaveWhitelistAppInternal(Ljava/lang/String;)Z

    .line 357
    .end local v0    # "data":Landroid/net/Uri;
    .end local v2    # "ssp":Ljava/lang/String;
    goto :goto_76

    .line 347
    :pswitch_58
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter v0

    .line 348
    :try_start_5b
    const-string/jumbo v1, "plugged"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 349
    .local v1, "plugged":I
    iget-object v2, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    if-eqz v1, :cond_67

    goto :goto_68

    :cond_67
    move v3, v4

    :goto_68
    invoke-virtual {v2, v3}, Lcom/android/server/DeviceIdleController;->updateChargingLocked(Z)V

    .line 350
    .end local v1    # "plugged":I
    monitor-exit v0

    .line 351
    goto :goto_76

    .line 350
    :catchall_6d
    move-exception v1

    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_5b .. :try_end_6f} :catchall_6d

    throw v1

    .line 344
    :pswitch_70
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0, p2}, Lcom/android/server/DeviceIdleController;->updateConnectivityState(Landroid/content/Intent;)V

    .line 345
    nop

    .line 362
    :cond_76
    :goto_76
    return-void

    nop

    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_70
        :pswitch_58
        :pswitch_3d
    .end packed-switch
.end method
