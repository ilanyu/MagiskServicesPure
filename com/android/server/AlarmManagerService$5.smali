.class Lcom/android/server/AlarmManagerService$5;
.super Lcom/android/server/AppStateTracker$Listener;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/AlarmManagerService;

    .line 4060
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$5;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Lcom/android/server/AppStateTracker$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onUidForeground(IZ)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "foreground"    # Z

    .line 4084
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$5;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4085
    if-eqz p2, :cond_12

    .line 4086
    :try_start_7
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$5;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService;->mUseAllowWhileIdleShortTime:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_12

    .line 4091
    :catchall_10
    move-exception v1

    goto :goto_14

    :cond_12
    :goto_12
    monitor-exit v0

    .line 4092
    return-void

    .line 4091
    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_10

    throw v1
.end method

.method public unblockAlarmsForUid(I)V
    .registers 5
    .param p1, "uid"    # I

    .line 4070
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$5;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4071
    :try_start_5
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$5;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/server/AlarmManagerService;->sendPendingBackgroundAlarmsLocked(ILjava/lang/String;)V

    .line 4072
    monitor-exit v0

    .line 4073
    return-void

    .line 4072
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public unblockAlarmsForUidPackage(ILjava/lang/String;)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 4077
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$5;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4078
    :try_start_5
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$5;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/AlarmManagerService;->sendPendingBackgroundAlarmsLocked(ILjava/lang/String;)V

    .line 4079
    monitor-exit v0

    .line 4080
    return-void

    .line 4079
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public unblockAllUnrestrictedAlarms()V
    .registers 3

    .line 4063
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$5;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4064
    :try_start_5
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$5;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService;->sendAllUnrestrictedPendingBackgroundAlarmsLocked()V

    .line 4065
    monitor-exit v0

    .line 4066
    return-void

    .line 4065
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw v1
.end method
