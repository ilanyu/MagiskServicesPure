.class public Lcom/android/server/power/batterysaver/BatterySaverStateMachine;
.super Ljava/lang/Object;
.source "BatterySaverStateMachine.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BatterySaverStateMachine"


# instance fields
.field private mBatteryLevel:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

.field private mBatterySaverSnoozing:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mBatteryStatusSet:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mBootCompleted:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mIsBatteryLevelLow:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mIsPowered:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mLastChangedIntReason:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mLastChangedStrReason:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mSettingBatterySaverEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mSettingBatterySaverEnabledSticky:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mSettingBatterySaverTriggerThreshold:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mSettingsLoaded:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mSettingsObserver:Landroid/database/ContentObserver;

.field private final mThresholdChangeLogger:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/power/batterysaver/BatterySaverController;)V
    .registers 6
    .param p1, "lock"    # Ljava/lang/Object;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "batterySaverController"    # Lcom/android/server/power/batterysaver/BatterySaverController;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$1;-><init>(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 249
    new-instance v0, Lcom/android/server/power/batterysaver/-$$Lambda$BatterySaverStateMachine$SSfmWJrD4RBoVg8A8loZrS-jhAo;

    invoke-direct {v0, p0}, Lcom/android/server/power/batterysaver/-$$Lambda$BatterySaverStateMachine$SSfmWJrD4RBoVg8A8loZrS-jhAo;-><init>(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;)V

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mThresholdChangeLogger:Ljava/lang/Runnable;

    .line 124
    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLock:Ljava/lang/Object;

    .line 125
    iput-object p2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    .line 126
    iput-object p3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    .line 127
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    .line 46
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method private doAutoBatterySaverLocked()V
    .registers 4

    .line 295
    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBootCompleted:Z

    if-eqz v0, :cond_4d

    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsLoaded:Z

    if-eqz v0, :cond_4d

    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatteryStatusSet:Z

    if-nez v0, :cond_d

    goto :goto_4d

    .line 298
    :cond_d
    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsBatteryLevelLow:Z

    const/4 v1, 0x0

    if-nez v0, :cond_17

    .line 299
    const-string v0, "Battery not low"

    invoke-direct {p0, v1, v0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->updateSnoozingLocked(ZLjava/lang/String;)V

    .line 301
    :cond_17
    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsPowered:Z

    if-eqz v0, :cond_27

    .line 302
    const-string v0, "Plugged in"

    invoke-direct {p0, v1, v0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->updateSnoozingLocked(ZLjava/lang/String;)V

    .line 303
    const/4 v0, 0x7

    const-string v2, "Plugged in"

    invoke-direct {p0, v1, v1, v0, v2}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(ZZILjava/lang/String;)V

    goto :goto_4c

    .line 307
    :cond_27
    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabledSticky:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_33

    .line 309
    const/4 v0, 0x4

    const-string v1, "Sticky restore"

    invoke-direct {p0, v2, v2, v0, v1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(ZZILjava/lang/String;)V

    goto :goto_4c

    .line 313
    :cond_33
    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsBatteryLevelLow:Z

    if-eqz v0, :cond_47

    .line 314
    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverSnoozing:Z

    if-nez v0, :cond_4c

    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isAutoBatterySaverConfigured()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 315
    const-string v0, "Auto ON"

    invoke-direct {p0, v2, v1, v1, v0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(ZZILjava/lang/String;)V

    goto :goto_4c

    .line 320
    :cond_47
    const-string v0, "Auto OFF"

    invoke-direct {p0, v1, v1, v2, v0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(ZZILjava/lang/String;)V

    .line 324
    :cond_4c
    :goto_4c
    return-void

    .line 296
    :cond_4d
    :goto_4d
    return-void
.end method

.method private enableBatterySaverLocked(ZZILjava/lang/String;)V
    .registers 8
    .param p1, "enable"    # Z
    .param p2, "manual"    # Z
    .param p3, "intReason"    # I
    .param p4, "strReason"    # Ljava/lang/String;

    .line 354
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-virtual {v0}, Lcom/android/server/power/batterysaver/BatterySaverController;->isEnabled()Z

    move-result v0

    .line 356
    .local v0, "wasEnabled":Z
    if-ne v0, p1, :cond_9

    .line 360
    return-void

    .line 362
    :cond_9
    if-eqz p1, :cond_10

    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsPowered:Z

    if-eqz v1, :cond_10

    .line 364
    return-void

    .line 366
    :cond_10
    iput p3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLastChangedIntReason:I

    .line 367
    iput-object p4, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLastChangedStrReason:Ljava/lang/String;

    .line 369
    if-eqz p2, :cond_2f

    .line 370
    if-eqz p1, :cond_1f

    .line 371
    const/4 v1, 0x0

    const-string v2, "Manual snooze OFF"

    invoke-direct {p0, v1, v2}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->updateSnoozingLocked(ZLjava/lang/String;)V

    goto :goto_2f

    .line 376
    :cond_1f
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isBatterySaverEnabled()Z

    move-result v1

    if-eqz v1, :cond_2f

    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsBatteryLevelLow:Z

    if-eqz v1, :cond_2f

    .line 377
    const/4 v1, 0x1

    const-string v2, "Manual snooze"

    invoke-direct {p0, v1, v2}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->updateSnoozingLocked(ZLjava/lang/String;)V

    .line 382
    :cond_2f
    :goto_2f
    iput-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabled:Z

    .line 383
    const-string/jumbo v1, "low_power"

    invoke-virtual {p0, v1, p1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->putGlobalSetting(Ljava/lang/String;I)V

    .line 385
    if-eqz p2, :cond_41

    .line 386
    iput-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabledSticky:Z

    .line 387
    const-string/jumbo v1, "low_power_sticky"

    invoke-virtual {p0, v1, p1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->putGlobalSetting(Ljava/lang/String;I)V

    .line 389
    :cond_41
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-virtual {v1, p1, p3}, Lcom/android/server/power/batterysaver/BatterySaverController;->enableBatterySaver(ZI)V

    .line 396
    return-void
.end method

.method private isAutoBatterySaverConfigured()Z
    .registers 2

    .line 134
    iget v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverTriggerThreshold:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private isBatterySaverEnabled()Z
    .registers 2

    .line 130
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-virtual {v0}, Lcom/android/server/power/batterysaver/BatterySaverController;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$new$1(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;)V
    .registers 2

    .line 250
    iget v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverTriggerThreshold:I

    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeBatterySaverSetting(I)V

    .line 251
    return-void
.end method

.method public static synthetic lambda$onBootCompleted$0(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;)V
    .registers 5

    .line 152
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 153
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v1, "low_power"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 156
    const-string/jumbo v1, "low_power_sticky"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 159
    const-string/jumbo v1, "low_power_trigger_level"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 163
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 165
    const/4 v2, 0x1

    :try_start_2f
    iput-boolean v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBootCompleted:Z

    .line 167
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->refreshSettingsLocked()V

    .line 169
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->doAutoBatterySaverLocked()V

    .line 170
    monitor-exit v1

    .line 171
    return-void

    .line 170
    :catchall_39
    move-exception v2

    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_2f .. :try_end_3b} :catchall_39

    throw v2
.end method

.method private updateSnoozingLocked(ZLjava/lang/String;)V
    .registers 4
    .param p1, "snoozing"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .line 399
    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverSnoozing:Z

    if-ne v0, p1, :cond_5

    .line 400
    return-void

    .line 403
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverSnoozing:Z

    .line 404
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 417
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 418
    :try_start_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 419
    const-string v1, "Battery saver state machine:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 421
    const-string v1, "  Enabled="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 422
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-virtual {v1}, Lcom/android/server/power/batterysaver/BatterySaverController;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 424
    const-string v1, "  mLastChangedIntReason="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 425
    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLastChangedIntReason:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 426
    const-string v1, "  mLastChangedStrReason="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 427
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLastChangedStrReason:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 429
    const-string v1, "  mBootCompleted="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 430
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBootCompleted:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 431
    const-string v1, "  mSettingsLoaded="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 432
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsLoaded:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 433
    const-string v1, "  mBatteryStatusSet="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 434
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatteryStatusSet:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 436
    const-string v1, "  mBatterySaverSnoozing="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 437
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverSnoozing:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 439
    const-string v1, "  mIsPowered="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 440
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsPowered:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 441
    const-string v1, "  mBatteryLevel="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 442
    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatteryLevel:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 443
    const-string v1, "  mIsBatteryLevelLow="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 444
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsBatteryLevelLow:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 446
    const-string v1, "  mSettingBatterySaverEnabled="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 447
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabled:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 448
    const-string v1, "  mSettingBatterySaverEnabledSticky="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 449
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabledSticky:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 450
    const-string v1, "  mSettingBatterySaverTriggerThreshold="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 451
    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverTriggerThreshold:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 452
    monitor-exit v0

    .line 453
    return-void

    .line 452
    :catchall_93
    move-exception v1

    monitor-exit v0
    :try_end_95
    .catchall {:try_start_3 .. :try_end_95} :catchall_93

    throw v1
.end method

.method public dumpProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 10
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "tag"    # J

    .line 456
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 457
    :try_start_3
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 459
    .local v1, "token":J
    const-wide v3, 0x10800000001L

    iget-object v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    .line 460
    invoke-virtual {v5}, Lcom/android/server/power/batterysaver/BatterySaverController;->isEnabled()Z

    move-result v5

    .line 459
    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 462
    const-wide v3, 0x10800000002L

    iget-boolean v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBootCompleted:Z

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 463
    const-wide v3, 0x10800000003L

    iget-boolean v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsLoaded:Z

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 464
    const-wide v3, 0x10800000004L

    iget-boolean v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatteryStatusSet:Z

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 466
    const-wide v3, 0x10800000005L

    iget-boolean v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverSnoozing:Z

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 469
    const-wide v3, 0x10800000006L

    iget-boolean v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsPowered:Z

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 470
    const-wide v3, 0x10500000007L

    iget v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatteryLevel:I

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 471
    const-wide v3, 0x10800000008L

    iget-boolean v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsBatteryLevelLow:Z

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 473
    const-wide v3, 0x10800000009L

    iget-boolean v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabled:Z

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 475
    const-wide v3, 0x1080000000aL

    iget-boolean v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabledSticky:Z

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 477
    const-wide v3, 0x1050000000bL

    iget v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverTriggerThreshold:I

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 480
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 481
    .end local v1    # "token":J
    monitor-exit v0

    .line 482
    return-void

    .line 481
    :catchall_7e
    move-exception v1

    monitor-exit v0
    :try_end_80
    .catchall {:try_start_3 .. :try_end_80} :catchall_7e

    throw v1
.end method

.method protected getGlobalSetting(Ljava/lang/String;I)I
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 413
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public onBootCompleted()V
    .registers 3

    .line 145
    const-string/jumbo v0, "low_power"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->putGlobalSetting(Ljava/lang/String;I)V

    .line 150
    new-instance v0, Lcom/android/server/power/batterysaver/-$$Lambda$BatterySaverStateMachine$fEidyt_9TXlXBpF6D2lhOOrfOC4;

    invoke-direct {v0, p0}, Lcom/android/server/power/batterysaver/-$$Lambda$BatterySaverStateMachine$fEidyt_9TXlXBpF6D2lhOOrfOC4;-><init>(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;)V

    invoke-virtual {p0, v0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->runOnBgThread(Ljava/lang/Runnable;)V

    .line 172
    return-void
.end method

.method protected putGlobalSetting(Ljava/lang/String;I)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 408
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 409
    return-void
.end method

.method refreshSettingsLocked()V
    .registers 5

    .line 194
    const-string/jumbo v0, "low_power"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->getGlobalSetting(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_d

    move v0, v2

    goto :goto_e

    :cond_d
    move v0, v1

    .line 196
    .local v0, "lowPowerModeEnabled":Z
    :goto_e
    const-string/jumbo v3, "low_power_sticky"

    invoke-virtual {p0, v3, v1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->getGlobalSetting(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_18

    goto :goto_19

    :cond_18
    move v2, v1

    .line 198
    .local v2, "lowPowerModeEnabledSticky":Z
    :goto_19
    const-string/jumbo v3, "low_power_trigger_level"

    invoke-virtual {p0, v3, v1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->getGlobalSetting(Ljava/lang/String;I)I

    move-result v1

    .line 201
    .local v1, "lowPowerModeTriggerLevel":I
    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->setSettingsLocked(ZZI)V

    .line 203
    return-void
.end method

.method runOnBgThread(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "r"    # Ljava/lang/Runnable;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 179
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 180
    return-void
.end method

.method runOnBgThreadLazy(Ljava/lang/Runnable;I)V
    .registers 6
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 188
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 189
    .local v0, "h":Landroid/os/Handler;
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 190
    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 191
    return-void
.end method

.method public setBatterySaverEnabledManually(Z)V
    .registers 6
    .param p1, "enabled"    # Z

    .line 336
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 337
    const/4 v1, 0x1

    .line 338
    if-eqz p1, :cond_8

    const/4 v2, 0x2

    goto :goto_9

    .line 339
    :cond_8
    const/4 v2, 0x3

    .line 340
    :goto_9
    if-eqz p1, :cond_10

    :try_start_b
    const-string v3, "Manual ON"

    goto :goto_12

    .line 341
    :catchall_e
    move-exception v1

    goto :goto_17

    .line 340
    :cond_10
    const-string v3, "Manual OFF"

    .line 337
    :goto_12
    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(ZZILjava/lang/String;)V

    .line 341
    monitor-exit v0

    .line 342
    return-void

    .line 341
    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_e

    throw v1
.end method

.method public setBatteryStatus(ZIZ)V
    .registers 10
    .param p1, "newPowered"    # Z
    .param p2, "newLevel"    # I
    .param p3, "newBatteryLevelLow"    # Z

    .line 263
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 264
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatteryStatusSet:Z

    .line 266
    iget-boolean v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsPowered:Z

    const/4 v3, 0x0

    if-eq v2, p1, :cond_d

    move v2, v1

    goto :goto_e

    :cond_d
    move v2, v3

    .line 267
    .local v2, "poweredChanged":Z
    :goto_e
    iget v4, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatteryLevel:I

    if-eq v4, p2, :cond_14

    move v4, v1

    goto :goto_15

    :cond_14
    move v4, v3

    .line 268
    .local v4, "levelChanged":Z
    :goto_15
    iget-boolean v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsBatteryLevelLow:Z

    if-eq v5, p3, :cond_1a

    goto :goto_1b

    :cond_1a
    move v1, v3

    .line 270
    .local v1, "lowChanged":Z
    :goto_1b
    if-nez v2, :cond_23

    if-nez v4, :cond_23

    if-nez v1, :cond_23

    .line 271
    monitor-exit v0

    return-void

    .line 274
    :cond_23
    iput-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsPowered:Z

    .line 275
    iput p2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatteryLevel:I

    .line 276
    iput-boolean p3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsBatteryLevelLow:Z

    .line 278
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->doAutoBatterySaverLocked()V

    .line 279
    .end local v1    # "lowChanged":Z
    .end local v2    # "poweredChanged":Z
    .end local v4    # "levelChanged":Z
    monitor-exit v0

    .line 280
    return-void

    .line 279
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_4 .. :try_end_30} :catchall_2e

    throw v1
.end method

.method setSettingsLocked(ZZI)V
    .registers 10
    .param p1, "batterySaverEnabled"    # Z
    .param p2, "batterySaverEnabledSticky"    # Z
    .param p3, "batterySaverTriggerThreshold"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 220
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsLoaded:Z

    .line 222
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabled:Z

    const/4 v2, 0x0

    if-eq v1, p1, :cond_a

    move v1, v0

    goto :goto_b

    :cond_a
    move v1, v2

    .line 223
    .local v1, "enabledChanged":Z
    :goto_b
    iget-boolean v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabledSticky:Z

    if-eq v3, p2, :cond_11

    move v3, v0

    goto :goto_12

    :cond_11
    move v3, v2

    .line 225
    .local v3, "stickyChanged":Z
    :goto_12
    iget v4, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverTriggerThreshold:I

    if-eq v4, p3, :cond_18

    move v2, v0

    nop

    .line 228
    .local v2, "thresholdChanged":Z
    :cond_18
    if-nez v1, :cond_1f

    if-nez v3, :cond_1f

    if-nez v2, :cond_1f

    .line 229
    return-void

    .line 232
    :cond_1f
    iput-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabled:Z

    .line 233
    iput-boolean p2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabledSticky:Z

    .line 234
    iput p3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverTriggerThreshold:I

    .line 236
    if-eqz v2, :cond_2e

    .line 238
    iget-object v4, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mThresholdChangeLogger:Ljava/lang/Runnable;

    const/16 v5, 0x7d0

    invoke-virtual {p0, v4, v5}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->runOnBgThreadLazy(Ljava/lang/Runnable;I)V

    .line 241
    :cond_2e
    if-eqz v1, :cond_3c

    .line 242
    if-eqz p1, :cond_35

    .line 243
    const-string v4, "Global.low_power changed to 1"

    goto :goto_37

    :cond_35
    const-string v4, "Global.low_power changed to 0"

    .line 244
    .local v4, "reason":Ljava/lang/String;
    :goto_37
    const/16 v5, 0x8

    invoke-direct {p0, p1, v0, v5, v4}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(ZZILjava/lang/String;)V

    .line 247
    .end local v4    # "reason":Ljava/lang/String;
    :cond_3c
    return-void
.end method
