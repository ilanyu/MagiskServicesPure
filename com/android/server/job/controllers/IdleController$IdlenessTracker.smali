.class final Lcom/android/server/job/controllers/IdleController$IdlenessTracker;
.super Landroid/content/BroadcastReceiver;
.source "IdleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/IdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "IdlenessTracker"
.end annotation


# instance fields
.field private mAlarm:Landroid/app/AlarmManager;

.field private mDockIdle:Z

.field private mIdle:Z

.field private mIdleAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mScreenOn:Z

.field final synthetic this$0:Lcom/android/server/job/controllers/IdleController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/IdleController;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/job/controllers/IdleController;

    .line 127
    iput-object p1, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->this$0:Lcom/android/server/job/controllers/IdleController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 123
    new-instance v0, Lcom/android/server/job/controllers/-$$Lambda$IdleController$IdlenessTracker$nTdS-lGBXcES5VWKcJFmQFgU7IU;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/-$$Lambda$IdleController$IdlenessTracker$nTdS-lGBXcES5VWKcJFmQFgU7IU;-><init>(Lcom/android/server/job/controllers/IdleController$IdlenessTracker;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mIdleAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 128
    iget-object v0, p1, Lcom/android/server/job/controllers/IdleController;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mAlarm:Landroid/app/AlarmManager;

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mIdle:Z

    .line 133
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mScreenOn:Z

    .line 134
    iput-boolean v0, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mDockIdle:Z

    .line 135
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/job/controllers/IdleController$IdlenessTracker;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/job/controllers/IdleController$IdlenessTracker;

    .line 114
    iget-boolean v0, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mScreenOn:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/job/controllers/IdleController$IdlenessTracker;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/job/controllers/IdleController$IdlenessTracker;

    .line 114
    iget-boolean v0, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mDockIdle:Z

    return v0
.end method

.method private handleIdleTrigger()V
    .registers 5

    .line 223
    iget-boolean v0, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mIdle:Z

    if-nez v0, :cond_39

    iget-boolean v0, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mScreenOn:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mDockIdle:Z

    if-eqz v0, :cond_39

    .line 224
    :cond_c
    # getter for: Lcom/android/server/job/controllers/IdleController;->DEBUG:Z
    invoke-static {}, Lcom/android/server/job/controllers/IdleController;->access$200()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 225
    const-string v0, "JobScheduler.Idle"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Idle trigger fired @ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_2e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mIdle:Z

    .line 228
    iget-object v0, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->this$0:Lcom/android/server/job/controllers/IdleController;

    iget-boolean v1, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mIdle:Z

    invoke-virtual {v0, v1}, Lcom/android/server/job/controllers/IdleController;->reportNewIdleState(Z)V

    goto :goto_61

    .line 230
    :cond_39
    # getter for: Lcom/android/server/job/controllers/IdleController;->DEBUG:Z
    invoke-static {}, Lcom/android/server/job/controllers/IdleController;->access$200()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 231
    const-string v0, "JobScheduler.Idle"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TRIGGER_IDLE received but not changing state; idle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mIdle:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " screen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mScreenOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_61
    :goto_61
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/job/controllers/IdleController$IdlenessTracker;)V
    .registers 1

    .line 124
    invoke-direct {p0}, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->handleIdleTrigger()V

    .line 125
    return-void
.end method


# virtual methods
.method public isIdle()Z
    .registers 2

    .line 138
    iget-boolean v0, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mIdle:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    move-object v0, p0

    .line 164
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_a7

    const-string v2, "android.intent.action.DREAMING_STOPPED"

    .line 166
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a7

    const-string v2, "android.intent.action.DOCK_ACTIVE"

    .line 167
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    goto/16 :goto_a7

    .line 189
    :cond_21
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_47

    const-string v2, "android.intent.action.DREAMING_STARTED"

    .line 190
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_47

    const-string v2, "android.intent.action.DOCK_IDLE"

    .line 191
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    goto :goto_47

    .line 214
    :cond_3a
    const-string v2, "com.android.server.ACTION_TRIGGER_IDLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_eb

    .line 215
    invoke-direct {v0}, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->handleIdleTrigger()V

    goto/16 :goto_eb

    .line 195
    :cond_47
    :goto_47
    const-string v2, "android.intent.action.DOCK_IDLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 196
    iget-boolean v2, v0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mScreenOn:Z

    if-nez v2, :cond_54

    .line 198
    return-void

    .line 200
    :cond_54
    iput-boolean v3, v0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mDockIdle:Z

    goto :goto_5b

    .line 203
    :cond_57
    iput-boolean v4, v0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mScreenOn:Z

    .line 204
    iput-boolean v4, v0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mDockIdle:Z

    .line 206
    :goto_5b
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    .line 207
    .local v2, "nowElapsed":J
    iget-object v4, v0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->this$0:Lcom/android/server/job/controllers/IdleController;

    # getter for: Lcom/android/server/job/controllers/IdleController;->mInactivityIdleThreshold:J
    invoke-static {v4}, Lcom/android/server/job/controllers/IdleController;->access$300(Lcom/android/server/job/controllers/IdleController;)J

    move-result-wide v4

    add-long/2addr v4, v2

    .line 208
    .local v4, "when":J
    # getter for: Lcom/android/server/job/controllers/IdleController;->DEBUG:Z
    invoke-static {}, Lcom/android/server/job/controllers/IdleController;->access$200()Z

    move-result v6

    if-eqz v6, :cond_94

    .line 209
    const-string v6, "JobScheduler.Idle"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Scheduling idle : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " now:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " when="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_94
    iget-object v6, v0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mAlarm:Landroid/app/AlarmManager;

    const/4 v7, 0x2

    iget-object v8, v0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->this$0:Lcom/android/server/job/controllers/IdleController;

    .line 213
    # getter for: Lcom/android/server/job/controllers/IdleController;->mIdleWindowSlop:J
    invoke-static {v8}, Lcom/android/server/job/controllers/IdleController;->access$400(Lcom/android/server/job/controllers/IdleController;)J

    move-result-wide v10

    const-string v12, "JS idleness"

    iget-object v13, v0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mIdleAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    const/4 v14, 0x0

    .line 212
    move-wide v8, v4

    invoke-virtual/range {v6 .. v14}, Landroid/app/AlarmManager;->setWindow(IJJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 214
    .end local v2    # "nowElapsed":J
    .end local v4    # "when":J
    goto :goto_eb

    .line 168
    :cond_a7
    :goto_a7
    const-string v2, "android.intent.action.DOCK_ACTIVE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b7

    .line 169
    iget-boolean v2, v0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mScreenOn:Z

    if-nez v2, :cond_b4

    .line 171
    return-void

    .line 173
    :cond_b4
    iput-boolean v4, v0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mDockIdle:Z

    goto :goto_bb

    .line 176
    :cond_b7
    iput-boolean v3, v0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mScreenOn:Z

    .line 177
    iput-boolean v4, v0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mDockIdle:Z

    .line 179
    :goto_bb
    # getter for: Lcom/android/server/job/controllers/IdleController;->DEBUG:Z
    invoke-static {}, Lcom/android/server/job/controllers/IdleController;->access$200()Z

    move-result v2

    if-eqz v2, :cond_d7

    .line 180
    const-string v2, "JobScheduler.Idle"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exiting idle : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_d7
    iget-object v2, v0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mAlarm:Landroid/app/AlarmManager;

    iget-object v3, v0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mIdleAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 184
    iget-boolean v2, v0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mIdle:Z

    if-eqz v2, :cond_eb

    .line 186
    iput-boolean v4, v0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mIdle:Z

    .line 187
    iget-object v2, v0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->this$0:Lcom/android/server/job/controllers/IdleController;

    iget-boolean v3, v0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mIdle:Z

    invoke-virtual {v2, v3}, Lcom/android/server/job/controllers/IdleController;->reportNewIdleState(Z)V

    .line 218
    :cond_eb
    :goto_eb
    iget-object v2, v0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->this$0:Lcom/android/server/job/controllers/IdleController;

    # getter for: Lcom/android/server/job/controllers/IdleController;->mIdleInjector:Lcom/android/server/job/controllers/IdleControllerInjector;
    invoke-static {v2}, Lcom/android/server/job/controllers/IdleController;->access$500(Lcom/android/server/job/controllers/IdleController;)Lcom/android/server/job/controllers/IdleControllerInjector;

    move-result-object v2

    iget-boolean v3, v0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mScreenOn:Z

    iget-boolean v4, v0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mDockIdle:Z

    invoke-virtual {v2, v3, v4}, Lcom/android/server/job/controllers/IdleControllerInjector;->updateIdleTrackerState(ZZ)V

    .line 219
    return-void
.end method

.method public startTracking()V
    .registers 3

    .line 142
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 145
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    const-string v1, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    const-string v1, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    const-string v1, "com.android.server.ACTION_TRIGGER_IDLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    const-string v1, "android.intent.action.DOCK_IDLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    const-string v1, "android.intent.action.DOCK_ACTIVE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    iget-object v1, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->this$0:Lcom/android/server/job/controllers/IdleController;

    iget-object v1, v1, Lcom/android/server/job/controllers/IdleController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 160
    return-void
.end method
