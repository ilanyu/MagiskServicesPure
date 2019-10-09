.class Lcom/android/server/job/controllers/DeviceIdleJobsController$1;
.super Landroid/content/BroadcastReceiver;
.source "DeviceIdleJobsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/DeviceIdleJobsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;


# direct methods
.method constructor <init>(Lcom/android/server/job/controllers/DeviceIdleJobsController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/job/controllers/DeviceIdleJobsController;

    .line 79
    iput-object p1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 82
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x2a729674

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_3d

    const v2, -0x3e97d1f

    if-eq v1, v2, :cond_33

    const v2, 0x1dbb32d0

    if-eq v1, v2, :cond_29

    const v2, 0x33e5d967

    if-eq v1, v2, :cond_1f

    goto :goto_47

    :cond_1f
    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    move v0, v4

    goto :goto_48

    :cond_29
    const-string v1, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    move v0, v3

    goto :goto_48

    :cond_33
    const-string v1, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    const/4 v0, 0x2

    goto :goto_48

    :cond_3d
    const-string v1, "android.os.action.POWER_SAVE_TEMP_WHITELIST_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    const/4 v0, 0x3

    goto :goto_48

    :cond_47
    :goto_47
    const/4 v0, -0x1

    :goto_48
    packed-switch v0, :pswitch_data_124

    goto/16 :goto_122

    .line 99
    :pswitch_4d
    iget-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    iget-object v0, v0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 100
    :try_start_52
    iget-object v1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    iget-object v2, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    .line 101
    # getter for: Lcom/android/server/job/controllers/DeviceIdleJobsController;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleController$LocalService;
    invoke-static {v2}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->access$200(Lcom/android/server/job/controllers/DeviceIdleJobsController;)Lcom/android/server/DeviceIdleController$LocalService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/DeviceIdleController$LocalService;->getPowerSaveTempWhitelistAppIds()[I

    move-result-object v2

    .line 100
    # setter for: Lcom/android/server/job/controllers/DeviceIdleJobsController;->mPowerSaveTempWhitelistAppIds:[I
    invoke-static {v1, v2}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->access$402(Lcom/android/server/job/controllers/DeviceIdleJobsController;[I)[I

    .line 102
    # getter for: Lcom/android/server/job/controllers/DeviceIdleJobsController;->DEBUG:Z
    invoke-static {}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->access$300()Z

    move-result v1

    if-eqz v1, :cond_87

    .line 103
    const-string v1, "JobScheduler.DeviceIdle"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got temp whitelist "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    .line 104
    # getter for: Lcom/android/server/job/controllers/DeviceIdleJobsController;->mPowerSaveTempWhitelistAppIds:[I
    invoke-static {v4}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->access$400(Lcom/android/server/job/controllers/DeviceIdleJobsController;)[I

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 103
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_87
    const/4 v1, 0x0

    .line 107
    .local v1, "changed":Z
    nop

    .local v3, "i":I
    :goto_89
    move v2, v3

    .end local v3    # "i":I
    .local v2, "i":I
    iget-object v3, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    # getter for: Lcom/android/server/job/controllers/DeviceIdleJobsController;->mAllowInIdleJobs:Landroid/util/ArraySet;
    invoke-static {v3}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->access$500(Lcom/android/server/job/controllers/DeviceIdleJobsController;)Landroid/util/ArraySet;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_ac

    .line 108
    iget-object v3, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    iget-object v4, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    # getter for: Lcom/android/server/job/controllers/DeviceIdleJobsController;->mAllowInIdleJobs:Landroid/util/ArraySet;
    invoke-static {v4}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->access$500(Lcom/android/server/job/controllers/DeviceIdleJobsController;)Landroid/util/ArraySet;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/JobStatus;

    # invokes: Lcom/android/server/job/controllers/DeviceIdleJobsController;->updateTaskStateLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    invoke-static {v3, v4}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->access$600(Lcom/android/server/job/controllers/DeviceIdleJobsController;Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v3

    or-int/2addr v1, v3

    .line 107
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_89

    .line 110
    .end local v3    # "i":I
    :cond_ac
    if-eqz v1, :cond_b5

    .line 111
    iget-object v2, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    iget-object v2, v2, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v2}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged()V

    .line 113
    .end local v1    # "changed":Z
    :cond_b5
    monitor-exit v0

    goto :goto_122

    :catchall_b7
    move-exception v1

    monitor-exit v0
    :try_end_b9
    .catchall {:try_start_52 .. :try_end_b9} :catchall_b7

    throw v1

    .line 89
    :pswitch_ba
    iget-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    iget-object v0, v0, Lcom/android/server/job/controllers/DeviceIdleJobsController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 90
    :try_start_bf
    iget-object v1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    iget-object v2, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    .line 91
    # getter for: Lcom/android/server/job/controllers/DeviceIdleJobsController;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleController$LocalService;
    invoke-static {v2}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->access$200(Lcom/android/server/job/controllers/DeviceIdleJobsController;)Lcom/android/server/DeviceIdleController$LocalService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/DeviceIdleController$LocalService;->getPowerSaveWhitelistUserAppIds()[I

    move-result-object v2

    .line 90
    # setter for: Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleWhitelistAppIds:[I
    invoke-static {v1, v2}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->access$102(Lcom/android/server/job/controllers/DeviceIdleJobsController;[I)[I

    .line 92
    # getter for: Lcom/android/server/job/controllers/DeviceIdleJobsController;->DEBUG:Z
    invoke-static {}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->access$300()Z

    move-result v1

    if-eqz v1, :cond_f4

    .line 93
    const-string v1, "JobScheduler.DeviceIdle"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got whitelist "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    .line 94
    # getter for: Lcom/android/server/job/controllers/DeviceIdleJobsController;->mDeviceIdleWhitelistAppIds:[I
    invoke-static {v3}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->access$100(Lcom/android/server/job/controllers/DeviceIdleJobsController;)[I

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 93
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_f4
    monitor-exit v0

    .line 97
    goto :goto_122

    .line 96
    :catchall_f6
    move-exception v1

    monitor-exit v0
    :try_end_f8
    .catchall {:try_start_bf .. :try_end_f8} :catchall_f6

    throw v1

    .line 85
    :pswitch_f9
    iget-object v0, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    iget-object v1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    # getter for: Lcom/android/server/job/controllers/DeviceIdleJobsController;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v1}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->access$000(Lcom/android/server/job/controllers/DeviceIdleJobsController;)Landroid/os/PowerManager;

    move-result-object v1

    if-eqz v1, :cond_11d

    iget-object v1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    # getter for: Lcom/android/server/job/controllers/DeviceIdleJobsController;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v1}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->access$000(Lcom/android/server/job/controllers/DeviceIdleJobsController;)Landroid/os/PowerManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v1

    if-nez v1, :cond_11b

    iget-object v1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$1;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    .line 86
    # getter for: Lcom/android/server/job/controllers/DeviceIdleJobsController;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v1}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->access$000(Lcom/android/server/job/controllers/DeviceIdleJobsController;)Landroid/os/PowerManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager;->isLightDeviceIdleMode()Z

    move-result v1

    if-eqz v1, :cond_11d

    .line 85
    :cond_11b
    move v3, v4

    goto :goto_11e

    .line 86
    :cond_11d
    nop

    .line 85
    :goto_11e
    invoke-virtual {v0, v3}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->updateIdleMode(Z)V

    .line 87
    nop

    .line 116
    :goto_122
    return-void

    nop

    :pswitch_data_124
    .packed-switch 0x0
        :pswitch_f9
        :pswitch_f9
        :pswitch_ba
        :pswitch_4d
    .end packed-switch
.end method
