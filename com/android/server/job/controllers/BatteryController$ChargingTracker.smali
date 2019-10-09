.class public final Lcom/android/server/job/controllers/BatteryController$ChargingTracker;
.super Landroid/content/BroadcastReceiver;
.source "BatteryController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/BatteryController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ChargingTracker"
.end annotation


# instance fields
.field private mBatteryHealthy:Z

.field private mCharging:Z

.field private mLastBatterySeq:I

.field private mMonitor:Landroid/content/BroadcastReceiver;

.field final synthetic this$0:Lcom/android/server/job/controllers/BatteryController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/BatteryController;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/job/controllers/BatteryController;

    .line 128
    iput-object p1, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->this$0:Lcom/android/server/job/controllers/BatteryController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 124
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mLastBatterySeq:I

    .line 129
    return-void
.end method


# virtual methods
.method public getSeq()I
    .registers 2

    .line 182
    iget v0, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mLastBatterySeq:I

    return v0
.end method

.method public isBatteryNotLow()Z
    .registers 2

    .line 174
    iget-boolean v0, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mBatteryHealthy:Z

    return v0
.end method

.method public isMonitoring()Z
    .registers 2

    .line 178
    iget-object v0, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mMonitor:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isOnStablePower()Z
    .registers 2

    .line 170
    iget-boolean v0, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mCharging:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mBatteryHealthy:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 187
    invoke-virtual {p0, p2}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->onReceiveInternal(Landroid/content/Intent;)V

    .line 188
    return-void
.end method

.method public onReceiveInternal(Landroid/content/Intent;)V
    .registers 9
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->this$0:Lcom/android/server/job/controllers/BatteryController;

    iget-object v0, v0, Lcom/android/server/job/controllers/BatteryController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 193
    :try_start_5
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3d

    .line 195
    # getter for: Lcom/android/server/job/controllers/BatteryController;->DEBUG:Z
    invoke-static {}, Lcom/android/server/job/controllers/BatteryController;->access$000()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 196
    const-string v2, "JobScheduler.Battery"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Battery life too low to do work. @ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    .line 197
    invoke-virtual {v5}, Ljava/time/Clock;->millis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 196
    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_34
    iput-boolean v3, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mBatteryHealthy:Z

    .line 203
    iget-object v2, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->this$0:Lcom/android/server/job/controllers/BatteryController;

    # invokes: Lcom/android/server/job/controllers/BatteryController;->maybeReportNewChargingStateLocked()V
    invoke-static {v2}, Lcom/android/server/job/controllers/BatteryController;->access$100(Lcom/android/server/job/controllers/BatteryController;)V

    goto/16 :goto_be

    .line 204
    :cond_3d
    const-string v2, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_70

    .line 205
    # getter for: Lcom/android/server/job/controllers/BatteryController;->DEBUG:Z
    invoke-static {}, Lcom/android/server/job/controllers/BatteryController;->access$000()Z

    move-result v2

    if-eqz v2, :cond_68

    .line 206
    const-string v2, "JobScheduler.Battery"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Battery life healthy enough to do work. @ "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    .line 207
    invoke-virtual {v5}, Ljava/time/Clock;->millis()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 206
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_68
    iput-boolean v4, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mBatteryHealthy:Z

    .line 210
    iget-object v2, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->this$0:Lcom/android/server/job/controllers/BatteryController;

    # invokes: Lcom/android/server/job/controllers/BatteryController;->maybeReportNewChargingStateLocked()V
    invoke-static {v2}, Lcom/android/server/job/controllers/BatteryController;->access$100(Lcom/android/server/job/controllers/BatteryController;)V

    goto :goto_be

    .line 211
    :cond_70
    const-string v2, "android.os.action.CHARGING"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a2

    .line 212
    # getter for: Lcom/android/server/job/controllers/BatteryController;->DEBUG:Z
    invoke-static {}, Lcom/android/server/job/controllers/BatteryController;->access$000()Z

    move-result v2

    if-eqz v2, :cond_9a

    .line 213
    const-string v2, "JobScheduler.Battery"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received charging intent, fired @ "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    .line 214
    invoke-virtual {v5}, Ljava/time/Clock;->millis()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 213
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_9a
    iput-boolean v4, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mCharging:Z

    .line 217
    iget-object v2, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->this$0:Lcom/android/server/job/controllers/BatteryController;

    # invokes: Lcom/android/server/job/controllers/BatteryController;->maybeReportNewChargingStateLocked()V
    invoke-static {v2}, Lcom/android/server/job/controllers/BatteryController;->access$100(Lcom/android/server/job/controllers/BatteryController;)V

    goto :goto_be

    .line 218
    :cond_a2
    const-string v2, "android.os.action.DISCHARGING"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_be

    .line 219
    # getter for: Lcom/android/server/job/controllers/BatteryController;->DEBUG:Z
    invoke-static {}, Lcom/android/server/job/controllers/BatteryController;->access$000()Z

    move-result v2

    if-eqz v2, :cond_b7

    .line 220
    const-string v2, "JobScheduler.Battery"

    const-string v4, "Disconnected from power."

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_b7
    iput-boolean v3, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mCharging:Z

    .line 223
    iget-object v2, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->this$0:Lcom/android/server/job/controllers/BatteryController;

    # invokes: Lcom/android/server/job/controllers/BatteryController;->maybeReportNewChargingStateLocked()V
    invoke-static {v2}, Lcom/android/server/job/controllers/BatteryController;->access$100(Lcom/android/server/job/controllers/BatteryController;)V

    .line 225
    :cond_be
    :goto_be
    const-string/jumbo v2, "seq"

    iget v3, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mLastBatterySeq:I

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mLastBatterySeq:I

    .line 227
    .end local v1    # "action":Ljava/lang/String;
    monitor-exit v0

    .line 228
    return-void

    .line 227
    :catchall_cb
    move-exception v1

    monitor-exit v0
    :try_end_cd
    .catchall {:try_start_5 .. :try_end_cd} :catchall_cb

    throw v1
.end method

.method public setMonitorBatteryLocked(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .line 150
    if-eqz p1, :cond_21

    .line 151
    iget-object v0, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mMonitor:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_31

    .line 152
    new-instance v0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker$1;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker$1;-><init>(Lcom/android/server/job/controllers/BatteryController$ChargingTracker;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mMonitor:Landroid/content/BroadcastReceiver;

    .line 157
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 158
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    iget-object v1, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->this$0:Lcom/android/server/job/controllers/BatteryController;

    iget-object v1, v1, Lcom/android/server/job/controllers/BatteryController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mMonitor:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 160
    .end local v0    # "filter":Landroid/content/IntentFilter;
    goto :goto_31

    .line 162
    :cond_21
    iget-object v0, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mMonitor:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_31

    .line 163
    iget-object v0, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->this$0:Lcom/android/server/job/controllers/BatteryController;

    iget-object v0, v0, Lcom/android/server/job/controllers/BatteryController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mMonitor:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mMonitor:Landroid/content/BroadcastReceiver;

    .line 167
    :cond_31
    :goto_31
    return-void
.end method

.method public startTracking()V
    .registers 4

    .line 132
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 135
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    const-string v1, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    const-string v1, "android.os.action.CHARGING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    const-string v1, "android.os.action.DISCHARGING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->this$0:Lcom/android/server/job/controllers/BatteryController;

    iget-object v1, v1, Lcom/android/server/job/controllers/BatteryController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 143
    const-class v1, Landroid/os/BatteryManagerInternal;

    .line 144
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryManagerInternal;

    .line 145
    .local v1, "batteryManagerInternal":Landroid/os/BatteryManagerInternal;
    invoke-virtual {v1}, Landroid/os/BatteryManagerInternal;->getBatteryLevelLow()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mBatteryHealthy:Z

    .line 146
    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mCharging:Z

    .line 147
    return-void
.end method
