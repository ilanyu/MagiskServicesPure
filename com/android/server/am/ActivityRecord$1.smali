.class Lcom/android/server/am/ActivityRecord$1;
.super Ljava/lang/Object;
.source "ActivityRecord.java"

# interfaces
.implements Lcom/android/server/wm/AppWindowContainerController$GestureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityRecord;->createWindowContainer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityRecord;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityRecord;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/ActivityRecord;

    .line 1139
    iput-object p1, p0, Lcom/android/server/am/ActivityRecord$1;->this$0:Lcom/android/server/am/ActivityRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onGestureCancel$0(Lcom/android/server/am/ActivityRecord$1;)V
    .registers 5

    .line 1147
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord$1;->this$0:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1148
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord$1;->this$0:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 1150
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_16

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1151
    return-void

    .line 1150
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method


# virtual methods
.method public ensureActivitiesVisible()V
    .registers 5

    .line 1214
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord$1;->this$0:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1215
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord$1;->this$0:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 1217
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_16

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1218
    return-void

    .line 1217
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getMiuiLaunchIconInfo()Lcom/android/server/wm/MiuiGestureController$MiuiLaunchIconInfo;
    .registers 4

    .line 1163
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord$1;->this$0:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getHomeActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1164
    .local v0, "home":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_2c

    .line 1165
    invoke-static {v0}, Lcom/android/server/am/ActivityStackInjector;->isMiuiHome(Lcom/android/server/am/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget v2, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 1166
    invoke-static {v1, v2}, Lcom/android/server/am/ActivityStackInjector;->isDefaultHome(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 1167
    new-instance v1, Lcom/android/server/wm/MiuiGestureController$MiuiLaunchIconInfo;

    invoke-direct {v1}, Lcom/android/server/wm/MiuiGestureController$MiuiLaunchIconInfo;-><init>()V

    .line 1168
    .local v1, "launchIconInfo":Lcom/android/server/wm/MiuiGestureController$MiuiLaunchIconInfo;
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord$1;->this$0:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->realComponentName:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/server/wm/MiuiGestureController$MiuiLaunchIconInfo;->launchIconName:Ljava/lang/String;

    .line 1169
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord$1;->this$0:Lcom/android/server/am/ActivityRecord;

    iget v2, v2, Lcom/android/server/am/ActivityRecord;->userId:I

    iput v2, v1, Lcom/android/server/wm/MiuiGestureController$MiuiLaunchIconInfo;->userId:I

    .line 1170
    return-object v1

    .line 1172
    .end local v1    # "launchIconInfo":Lcom/android/server/wm/MiuiGestureController$MiuiLaunchIconInfo;
    :cond_2c
    const/4 v1, 0x0

    return-object v1
.end method

.method public isHomeAppToken()Z
    .registers 3

    .line 1182
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord$1;->this$0:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord$1;->this$0:Lcom/android/server/am/ActivityRecord;

    iget v1, v1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v0, v1}, Lcom/android/server/am/ActivityStackInjector;->isDefaultHome(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public launchHome()V
    .registers 8

    .line 1187
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord$1;->this$0:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1188
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord$1;->this$0:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getHomeActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 1189
    .local v1, "home":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_64

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget v3, v1, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 1190
    invoke-static {v2, v3}, Lcom/android/server/am/ActivityStackInjector;->isDefaultHome(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 1191
    invoke-static {v1}, Lcom/android/server/am/ActivityStackInjector;->isMiuiHome(Lcom/android/server/am/ActivityRecord;)Z

    move-result v2

    .line 1192
    .local v2, "isMiuiHome":Z
    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_2e

    if-eqz v2, :cond_2e

    .line 1193
    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v3, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v4, v4, 0x4000

    iput v4, v3, Landroid/content/pm/ActivityInfo;->flags:I

    .line 1196
    :cond_2e
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord$1;->this$0:Lcom/android/server/am/ActivityRecord;

    iget v4, v1, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v6, v1, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Ljava/lang/String;)V

    .line 1197
    const/16 v3, 0x7533

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v4

    invoke-static {v3, v1, v4}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 1198
    iget-object v3, p0, Lcom/android/server/am/ActivityRecord$1;->this$0:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord$1;->this$0:Lcom/android/server/am/ActivityRecord;

    const-string v5, "gestureFinished"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->resumeHomeStackTask(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z

    .line 1200
    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_63

    if-eqz v2, :cond_63

    .line 1201
    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v3, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v3, v3, 0x4000

    if-eqz v3, :cond_63

    .line 1202
    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v3, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v4, v4, -0x4001

    iput v4, v3, Landroid/content/pm/ActivityInfo;->flags:I

    .line 1205
    .end local v2    # "isMiuiHome":Z
    :cond_63
    goto :goto_74

    .line 1206
    :cond_64
    iget-object v2, p0, Lcom/android/server/am/ActivityRecord$1;->this$0:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p0, Lcom/android/server/am/ActivityRecord$1;->this$0:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    const-string/jumbo v4, "launchHomebyGesture"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->startHomeActivityLocked(ILjava/lang/String;)Z

    .line 1209
    .end local v1    # "home":Lcom/android/server/am/ActivityRecord;
    :goto_74
    monitor-exit v0
    :try_end_75
    .catchall {:try_start_5 .. :try_end_75} :catchall_79

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1210
    return-void

    .line 1209
    :catchall_79
    move-exception v1

    :try_start_7a
    monitor-exit v0
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_79

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onGestureCancel()V
    .registers 3

    .line 1142
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord$1;->this$0:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getActivityType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2c

    iget-object v0, p0, Lcom/android/server/am/ActivityRecord$1;->this$0:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchRecentsFromGesture:Z

    if-eqz v0, :cond_2c

    .line 1144
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord$1;->this$0:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchRecentsFromGesture:Z

    .line 1145
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord$1;->this$0:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-boolean v1, v0, Lcom/android/server/am/ActivityStackSupervisor;->mHasResumeRecentsBehind:Z

    .line 1146
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord$1;->this$0:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v1, Lcom/android/server/am/-$$Lambda$ActivityRecord$1$ffBK0YHkf7q0V608pod6JikZCMk;

    invoke-direct {v1, p0}, Lcom/android/server/am/-$$Lambda$ActivityRecord$1$ffBK0YHkf7q0V608pod6JikZCMk;-><init>(Lcom/android/server/am/ActivityRecord$1;)V

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 1153
    :cond_2c
    return-void
.end method

.method public onGestureFinished()V
    .registers 3

    .line 1157
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord$1;->this$0:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchRecentsFromGesture:Z

    .line 1158
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord$1;->this$0:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-boolean v1, v0, Lcom/android/server/am/ActivityStackSupervisor;->mHasResumeRecentsBehind:Z

    .line 1159
    return-void
.end method

.method public setLaunchRecentsBehind(Z)V
    .registers 4
    .param p1, "launchBehind"    # Z

    .line 1177
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord$1;->this$0:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    xor-int/lit8 v1, p1, 0x1

    iput-boolean v1, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStopLaunchRecentsBehind:Z

    .line 1178
    return-void
.end method
