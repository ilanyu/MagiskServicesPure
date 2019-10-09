.class Lcom/android/server/job/JobSchedulerService$HeartbeatAlarmListener;
.super Ljava/lang/Object;
.source "JobSchedulerService.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HeartbeatAlarmListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/job/JobSchedulerService;

    .line 1867
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$HeartbeatAlarmListener;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm()V
    .registers 11

    .line 1871
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$HeartbeatAlarmListener;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1872
    :try_start_5
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$HeartbeatAlarmListener;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-wide v3, v3, Lcom/android/server/job/JobSchedulerService;->mLastHeartbeatTime:J

    sub-long/2addr v1, v3

    .line 1873
    .local v1, "sinceLast":J
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$HeartbeatAlarmListener;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v3, v3, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v3, v3, Lcom/android/server/job/JobSchedulerService$Constants;->STANDBY_HEARTBEAT_TIME:J

    div-long v3, v1, v3

    .line 1874
    .local v3, "beatsElapsed":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_31

    .line 1875
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService$HeartbeatAlarmListener;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-wide v6, v5, Lcom/android/server/job/JobSchedulerService;->mLastHeartbeatTime:J

    iget-object v8, p0, Lcom/android/server/job/JobSchedulerService$HeartbeatAlarmListener;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v8, v8, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v8, v8, Lcom/android/server/job/JobSchedulerService$Constants;->STANDBY_HEARTBEAT_TIME:J

    mul-long/2addr v8, v3

    add-long/2addr v6, v8

    iput-wide v6, v5, Lcom/android/server/job/JobSchedulerService;->mLastHeartbeatTime:J

    .line 1876
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService$HeartbeatAlarmListener;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v5, v3, v4}, Lcom/android/server/job/JobSchedulerService;->advanceHeartbeatLocked(J)V

    .line 1878
    .end local v1    # "sinceLast":J
    .end local v3    # "beatsElapsed":J
    :cond_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_5 .. :try_end_32} :catchall_38

    .line 1879
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$HeartbeatAlarmListener;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->setNextHeartbeatAlarm()V

    .line 1880
    return-void

    .line 1878
    :catchall_38
    move-exception v1

    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v1
.end method
