.class public Lcom/android/server/power/batterysaver/BatterySaverController;
.super Ljava/lang/Object;
.source "BatterySaverController.java"

# interfaces
.implements Lcom/android/server/power/BatterySaverPolicy$BatterySaverPolicyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;,
        Lcom/android/server/power/batterysaver/BatterySaverController$Plugin;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field public static final REASON_AUTOMATIC_OFF:I = 0x1

.field public static final REASON_AUTOMATIC_ON:I = 0x0

.field public static final REASON_INTERACTIVE_CHANGED:I = 0x5

.field public static final REASON_MANUAL_OFF:I = 0x3

.field public static final REASON_MANUAL_ON:I = 0x2

.field public static final REASON_PLUGGED_IN:I = 0x7

.field public static final REASON_POLICY_CHANGED:I = 0x6

.field public static final REASON_SETTING_CHANGED:I = 0x8

.field public static final REASON_STICKY_RESTORE:I = 0x4

.field static final TAG:Ljava/lang/String; = "BatterySaverController"


# instance fields
.field private final mBatterySaverPolicy:Lcom/android/server/power/BatterySaverPolicy;

.field private final mBatterySavingStats:Lcom/android/server/power/batterysaver/BatterySavingStats;

.field private final mContext:Landroid/content/Context;

.field private mEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mFileUpdater:Lcom/android/server/power/batterysaver/FileUpdater;

.field private final mHandler:Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

.field private mIsInteractive:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mIsPluggedIn:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mListeners:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/PowerManagerInternal$LowPowerModeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mPlugins:[Lcom/android/server/power/batterysaver/BatterySaverController$Plugin;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPreviouslyEnabled:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/power/BatterySaverPolicy;Lcom/android/server/power/batterysaver/BatterySavingStats;)V
    .registers 9
    .param p1, "lock"    # Ljava/lang/Object;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "policy"    # Lcom/android/server/power/BatterySaverPolicy;
    .param p5, "batterySavingStats"    # Lcom/android/server/power/batterysaver/BatterySavingStats;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mListeners:Ljava/util/ArrayList;

    .line 115
    new-instance v0, Lcom/android/server/power/batterysaver/BatterySaverController$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/batterysaver/BatterySaverController$1;-><init>(Lcom/android/server/power/batterysaver/BatterySaverController;)V

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 150
    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    .line 151
    iput-object p2, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mContext:Landroid/content/Context;

    .line 152
    new-instance v0, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

    invoke-direct {v0, p0, p3}, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;-><init>(Lcom/android/server/power/batterysaver/BatterySaverController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mHandler:Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

    .line 153
    iput-object p4, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/BatterySaverPolicy;

    .line 154
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/BatterySaverPolicy;

    invoke-virtual {v0, p0}, Lcom/android/server/power/BatterySaverPolicy;->addListener(Lcom/android/server/power/BatterySaverPolicy$BatterySaverPolicyListener;)V

    .line 155
    new-instance v0, Lcom/android/server/power/batterysaver/FileUpdater;

    invoke-direct {v0, p2}, Lcom/android/server/power/batterysaver/FileUpdater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mFileUpdater:Lcom/android/server/power/batterysaver/FileUpdater;

    .line 156
    iput-object p5, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySavingStats:Lcom/android/server/power/batterysaver/BatterySavingStats;

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .local v0, "plugins":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/power/batterysaver/BatterySaverController$Plugin;>;"
    new-instance v1, Lcom/android/server/power/batterysaver/BatterySaverLocationPlugin;

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/power/batterysaver/BatterySaverLocationPlugin;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/server/power/batterysaver/BatterySaverController$Plugin;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/server/power/batterysaver/BatterySaverController$Plugin;

    iput-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mPlugins:[Lcom/android/server/power/batterysaver/BatterySaverController$Plugin;

    .line 163
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/power/batterysaver/BatterySaverController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/power/batterysaver/BatterySaverController;

    .line 57
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->updateBatterySavingStats()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/power/batterysaver/BatterySaverController;)Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/batterysaver/BatterySaverController;

    .line 57
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mHandler:Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/power/batterysaver/BatterySaverController;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/batterysaver/BatterySaverController;

    .line 57
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/power/batterysaver/BatterySaverController;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/batterysaver/BatterySaverController;
    .param p1, "x1"    # Z

    .line 57
    iput-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mIsPluggedIn:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/power/batterysaver/BatterySaverController;)[Lcom/android/server/power/batterysaver/BatterySaverController$Plugin;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/batterysaver/BatterySaverController;

    .line 57
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mPlugins:[Lcom/android/server/power/batterysaver/BatterySaverController$Plugin;

    return-object v0
.end method

.method private getPowerManager()Landroid/os/PowerManager;
    .registers 3

    .line 191
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mPowerManager:Landroid/os/PowerManager;

    if-nez v0, :cond_16

    .line 192
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    .line 193
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mPowerManager:Landroid/os/PowerManager;

    .line 195
    :cond_16
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method private updateBatterySavingStats()V
    .registers 7

    .line 374
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->getPowerManager()Landroid/os/PowerManager;

    move-result-object v0

    .line 375
    .local v0, "pm":Landroid/os/PowerManager;
    if-nez v0, :cond_e

    .line 376
    const-string v1, "BatterySaverController"

    const-string v2, "PowerManager not initialized"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    return-void

    .line 379
    :cond_e
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    .line 381
    .local v1, "isInteractive":Z
    invoke-virtual {v0}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v2, 0x2

    goto :goto_23

    .line 382
    :cond_1a
    invoke-virtual {v0}, Landroid/os/PowerManager;->isLightDeviceIdleMode()Z

    move-result v2

    if-eqz v2, :cond_22

    const/4 v2, 0x1

    goto :goto_23

    .line 383
    :cond_22
    const/4 v2, 0x0

    .line 385
    .local v2, "dozeMode":I
    :goto_23
    iget-object v3, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 386
    :try_start_26
    iget-boolean v4, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mIsPluggedIn:Z

    if-eqz v4, :cond_31

    .line 387
    iget-object v4, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySavingStats:Lcom/android/server/power/batterysaver/BatterySavingStats;

    invoke-virtual {v4}, Lcom/android/server/power/batterysaver/BatterySavingStats;->startCharging()V

    .line 388
    monitor-exit v3

    return-void

    .line 390
    :cond_31
    iget-object v4, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySavingStats:Lcom/android/server/power/batterysaver/BatterySavingStats;

    .line 391
    iget-boolean v5, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mEnabled:Z

    .line 392
    nop

    .line 390
    invoke-virtual {v4, v5, v1, v2}, Lcom/android/server/power/batterysaver/BatterySavingStats;->transitionState(III)V

    .line 394
    monitor-exit v3

    .line 395
    return-void

    .line 394
    :catchall_3b
    move-exception v4

    monitor-exit v3
    :try_end_3d
    .catchall {:try_start_26 .. :try_end_3d} :catchall_3b

    throw v4
.end method


# virtual methods
.method public addListener(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/os/PowerManagerInternal$LowPowerModeListener;

    .line 169
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 170
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    monitor-exit v0

    .line 172
    return-void

    .line 171
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public enableBatterySaver(ZI)V
    .registers 6
    .param p1, "enable"    # Z
    .param p2, "reason"    # I

    .line 249
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 250
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mEnabled:Z

    if-ne v1, p1, :cond_9

    .line 251
    monitor-exit v0

    return-void

    .line 253
    :cond_9
    iput-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mEnabled:Z

    .line 255
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mHandler:Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p2}, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->postStateChanged(ZI)V

    .line 256
    monitor-exit v0

    .line 257
    return-void

    .line 256
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public getBatterySaverPolicy()Lcom/android/server/power/BatterySaverPolicy;
    .registers 2

    .line 275
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/BatterySaverPolicy;

    return-object v0
.end method

.method handleBatterySaverStateChanged(ZI)V
    .registers 14
    .param p1, "sendBroadcast"    # Z
    .param p2, "reason"    # I

    .line 300
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->getPowerManager()Landroid/os/PowerManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    .line 303
    .local v0, "isInteractive":Z
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 305
    :try_start_b
    iget-boolean v2, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mPreviouslyEnabled:Z

    .line 306
    iget-boolean v3, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mEnabled:Z

    .line 307
    nop

    .line 308
    iget-boolean v4, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mEnabled:Z

    if-eqz v4, :cond_1b

    iget-object v4, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/BatterySaverPolicy;

    invoke-virtual {v4}, Lcom/android/server/power/BatterySaverPolicy;->toEventLogString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1d

    :cond_1b
    const-string v4, ""

    .line 304
    :goto_1d
    invoke-static {v2, v3, v0, v4, p2}, Lcom/android/server/EventLogTags;->writeBatterySaverMode(IIILjava/lang/String;I)V

    .line 310
    iget-boolean v2, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mPreviouslyEnabled:Z

    .line 312
    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mListeners:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/os/PowerManagerInternal$LowPowerModeListener;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/os/PowerManagerInternal$LowPowerModeListener;

    .line 314
    .local v2, "listeners":[Landroid/os/PowerManagerInternal$LowPowerModeListener;
    iget-boolean v3, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mEnabled:Z

    .line 315
    .local v3, "enabled":Z
    iput-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mIsInteractive:Z

    .line 317
    if-eqz v3, :cond_41

    .line 318
    iget-object v4, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/BatterySaverPolicy;

    invoke-virtual {v4, v0}, Lcom/android/server/power/BatterySaverPolicy;->getFileValues(Z)Landroid/util/ArrayMap;

    move-result-object v4

    .line 318
    .local v4, "fileValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_42

    .line 320
    .end local v4    # "fileValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_41
    const/4 v4, 0x0

    .line 322
    .restart local v4    # "fileValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_42
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_b .. :try_end_43} :catchall_d2

    .line 324
    const-class v1, Landroid/os/PowerManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManagerInternal;

    .line 325
    .local v1, "pmi":Landroid/os/PowerManagerInternal;
    const/4 v5, 0x0

    if-eqz v1, :cond_57

    .line 326
    const/4 v6, 0x5

    if-eqz v3, :cond_53

    const/4 v7, 0x1

    goto :goto_54

    :cond_53
    move v7, v5

    :goto_54
    invoke-virtual {v1, v6, v7}, Landroid/os/PowerManagerInternal;->powerHint(II)V

    .line 329
    :cond_57
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->updateBatterySavingStats()V

    .line 331
    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v6

    if-eqz v6, :cond_66

    .line 332
    iget-object v6, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mFileUpdater:Lcom/android/server/power/batterysaver/FileUpdater;

    invoke-virtual {v6}, Lcom/android/server/power/batterysaver/FileUpdater;->restoreDefault()V

    goto :goto_6b

    .line 334
    :cond_66
    iget-object v6, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mFileUpdater:Lcom/android/server/power/batterysaver/FileUpdater;

    invoke-virtual {v6, v4}, Lcom/android/server/power/batterysaver/FileUpdater;->writeFiles(Landroid/util/ArrayMap;)V

    .line 337
    :goto_6b
    iget-object v6, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mPlugins:[Lcom/android/server/power/batterysaver/BatterySaverController$Plugin;

    array-length v7, v6

    move v8, v5

    :goto_6f
    if-ge v8, v7, :cond_79

    aget-object v9, v6, v8

    .line 338
    .local v9, "p":Lcom/android/server/power/batterysaver/BatterySaverController$Plugin;
    invoke-interface {v9, p0}, Lcom/android/server/power/batterysaver/BatterySaverController$Plugin;->onBatterySaverChanged(Lcom/android/server/power/batterysaver/BatterySaverController;)V

    .line 337
    .end local v9    # "p":Lcom/android/server/power/batterysaver/BatterySaverController$Plugin;
    add-int/lit8 v8, v8, 0x1

    goto :goto_6f

    .line 341
    :cond_79
    if-eqz p1, :cond_d1

    .line 349
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.os.action.POWER_SAVE_MODE_CHANGING"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "mode"

    .line 350
    invoke-virtual {v6, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v6

    .line 351
    const/high16 v7, 0x40000000    # 2.0f

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v6

    .line 352
    .local v6, "intent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mContext:Landroid/content/Context;

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v6, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 354
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v6, v8

    .line 355
    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 356
    iget-object v8, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mContext:Landroid/content/Context;

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v6, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 359
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.os.action.POWER_SAVE_MODE_CHANGED_INTERNAL"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v6, v8

    .line 360
    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 361
    iget-object v7, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v9, "android.permission.DEVICE_POWER"

    invoke-virtual {v7, v6, v8, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 364
    array-length v7, v2

    :goto_bd
    if-ge v5, v7, :cond_d1

    aget-object v8, v2, v5

    .line 365
    .local v8, "listener":Landroid/os/PowerManagerInternal$LowPowerModeListener;
    iget-object v9, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/BatterySaverPolicy;

    .line 367
    invoke-interface {v8}, Landroid/os/PowerManagerInternal$LowPowerModeListener;->getServiceType()I

    move-result v10

    .line 366
    invoke-virtual {v9, v10, v3}, Lcom/android/server/power/BatterySaverPolicy;->getBatterySaverPolicy(IZ)Landroid/os/PowerSaveState;

    move-result-object v9

    .line 368
    .local v9, "result":Landroid/os/PowerSaveState;
    invoke-interface {v8, v9}, Landroid/os/PowerManagerInternal$LowPowerModeListener;->onLowPowerModeChanged(Landroid/os/PowerSaveState;)V

    .line 364
    .end local v8    # "listener":Landroid/os/PowerManagerInternal$LowPowerModeListener;
    .end local v9    # "result":Landroid/os/PowerSaveState;
    add-int/lit8 v5, v5, 0x1

    goto :goto_bd

    .line 371
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_d1
    return-void

    .line 322
    .end local v1    # "pmi":Landroid/os/PowerManagerInternal;
    .end local v2    # "listeners":[Landroid/os/PowerManagerInternal$LowPowerModeListener;
    .end local v3    # "enabled":Z
    .end local v4    # "fileValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_d2
    move-exception v2

    :try_start_d3
    monitor-exit v1
    :try_end_d4
    .catchall {:try_start_d3 .. :try_end_d4} :catchall_d2

    throw v2
.end method

.method public isEnabled()Z
    .registers 3

    .line 261
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 262
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mEnabled:Z

    monitor-exit v0

    return v1

    .line 263
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public isInteractive()Z
    .registers 3

    .line 268
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 269
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mIsInteractive:Z

    monitor-exit v0

    return v1

    .line 270
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public isLaunchBoostDisabled()Z
    .registers 2

    .line 282
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/BatterySaverPolicy;

    invoke-virtual {v0}, Lcom/android/server/power/BatterySaverPolicy;->isLaunchBoostDisabled()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public onBatterySaverPolicyChanged(Lcom/android/server/power/BatterySaverPolicy;)V
    .registers 5
    .param p1, "policy"    # Lcom/android/server/power/BatterySaverPolicy;

    .line 200
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 201
    return-void

    .line 203
    :cond_7
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mHandler:Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

    const/4 v1, 0x1

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->postStateChanged(ZI)V

    .line 204
    return-void
.end method

.method public systemReady()V
    .registers 4

    .line 178
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 179
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 181
    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 182
    const-string v1, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 185
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mFileUpdater:Lcom/android/server/power/batterysaver/FileUpdater;

    const-class v2, Landroid/app/ActivityManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManagerInternal;

    .line 186
    invoke-virtual {v2}, Landroid/app/ActivityManagerInternal;->isRuntimeRestarted()Z

    move-result v2

    .line 185
    invoke-virtual {v1, v2}, Lcom/android/server/power/batterysaver/FileUpdater;->systemReady(Z)V

    .line 187
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mHandler:Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

    invoke-virtual {v1}, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->postSystemReady()V

    .line 188
    return-void
.end method
