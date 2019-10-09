.class Lcom/android/server/power/batterysaver/BatterySaverController$1;
.super Landroid/content/BroadcastReceiver;
.source "BatterySaverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/batterysaver/BatterySaverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/batterysaver/BatterySaverController;


# direct methods
.method constructor <init>(Lcom/android/server/power/batterysaver/BatterySaverController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/power/batterysaver/BatterySaverController;

    .line 115
    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverController$1;->this$0:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 121
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch v1, :sswitch_data_82

    goto :goto_40

    :sswitch_e
    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    const/4 v0, 0x3

    goto :goto_41

    :sswitch_18
    const-string v1, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    const/4 v0, 0x4

    goto :goto_41

    :sswitch_22
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    move v0, v3

    goto :goto_41

    :sswitch_2c
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    const/4 v0, 0x2

    goto :goto_41

    :sswitch_36
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    move v0, v2

    goto :goto_41

    :cond_40
    :goto_40
    const/4 v0, -0x1

    :goto_41
    packed-switch v0, :pswitch_data_98

    goto :goto_7f

    .line 133
    :pswitch_45
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController$1;->this$0:Lcom/android/server/power/batterysaver/BatterySaverController;

    # getter for: Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/batterysaver/BatterySaverController;->access$200(Lcom/android/server/power/batterysaver/BatterySaverController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 134
    :try_start_4c
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController$1;->this$0:Lcom/android/server/power/batterysaver/BatterySaverController;

    const-string/jumbo v4, "plugged"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_58

    goto :goto_59

    :cond_58
    move v2, v3

    :goto_59
    # setter for: Lcom/android/server/power/batterysaver/BatterySaverController;->mIsPluggedIn:Z
    invoke-static {v1, v2}, Lcom/android/server/power/batterysaver/BatterySaverController;->access$302(Lcom/android/server/power/batterysaver/BatterySaverController;Z)Z

    .line 135
    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_4c .. :try_end_5d} :catchall_63

    .line 139
    :pswitch_5d
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController$1;->this$0:Lcom/android/server/power/batterysaver/BatterySaverController;

    # invokes: Lcom/android/server/power/batterysaver/BatterySaverController;->updateBatterySavingStats()V
    invoke-static {v0}, Lcom/android/server/power/batterysaver/BatterySaverController;->access$000(Lcom/android/server/power/batterysaver/BatterySaverController;)V

    goto :goto_7f

    .line 135
    :catchall_63
    move-exception v1

    :try_start_64
    monitor-exit v0
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    throw v1

    .line 124
    :pswitch_66
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController$1;->this$0:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-virtual {v0}, Lcom/android/server/power/batterysaver/BatterySaverController;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_74

    .line 125
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController$1;->this$0:Lcom/android/server/power/batterysaver/BatterySaverController;

    # invokes: Lcom/android/server/power/batterysaver/BatterySaverController;->updateBatterySavingStats()V
    invoke-static {v0}, Lcom/android/server/power/batterysaver/BatterySaverController;->access$000(Lcom/android/server/power/batterysaver/BatterySaverController;)V

    .line 126
    return-void

    .line 129
    :cond_74
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController$1;->this$0:Lcom/android/server/power/batterysaver/BatterySaverController;

    # getter for: Lcom/android/server/power/batterysaver/BatterySaverController;->mHandler:Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;
    invoke-static {v0}, Lcom/android/server/power/batterysaver/BatterySaverController;->access$100(Lcom/android/server/power/batterysaver/BatterySaverController;)Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v3, v1}, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->postStateChanged(ZI)V

    .line 131
    nop

    .line 142
    :goto_7f
    return-void

    nop

    nop

    :sswitch_data_82
    .sparse-switch
        -0x7ed8ea7f -> :sswitch_36
        -0x5bb23923 -> :sswitch_2c
        -0x56ac2893 -> :sswitch_22
        0x1dbb32d0 -> :sswitch_18
        0x33e5d967 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_98
    .packed-switch 0x0
        :pswitch_66
        :pswitch_66
        :pswitch_45
        :pswitch_5d
        :pswitch_5d
    .end packed-switch
.end method
