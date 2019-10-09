.class public Lcom/android/server/power/BatterySaverPolicy;
.super Landroid/database/ContentObserver;
.source "BatterySaverPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/BatterySaverPolicy$BatterySaverPolicyListener;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field private static final KEY_ADJUST_BRIGHTNESS_DISABLED:Ljava/lang/String; = "adjust_brightness_disabled"

.field private static final KEY_ADJUST_BRIGHTNESS_FACTOR:Ljava/lang/String; = "adjust_brightness_factor"

.field private static final KEY_ANIMATION_DISABLED:Ljava/lang/String; = "animation_disabled"

.field private static final KEY_AOD_DISABLED:Ljava/lang/String; = "aod_disabled"

.field private static final KEY_CPU_FREQ_INTERACTIVE:Ljava/lang/String; = "cpufreq-i"

.field private static final KEY_CPU_FREQ_NONINTERACTIVE:Ljava/lang/String; = "cpufreq-n"

.field private static final KEY_DATASAVER_DISABLED:Ljava/lang/String; = "datasaver_disabled"

.field private static final KEY_FIREWALL_DISABLED:Ljava/lang/String; = "firewall_disabled"

.field private static final KEY_FORCE_ALL_APPS_STANDBY:Ljava/lang/String; = "force_all_apps_standby"

.field private static final KEY_FORCE_BACKGROUND_CHECK:Ljava/lang/String; = "force_background_check"

.field private static final KEY_FULLBACKUP_DEFERRED:Ljava/lang/String; = "fullbackup_deferred"

.field private static final KEY_GPS_MODE:Ljava/lang/String; = "gps_mode"

.field private static final KEY_KEYVALUE_DEFERRED:Ljava/lang/String; = "keyvaluebackup_deferred"

.field private static final KEY_LAUNCH_BOOST_DISABLED:Ljava/lang/String; = "launch_boost_disabled"

.field private static final KEY_OPTIONAL_SENSORS_DISABLED:Ljava/lang/String; = "optional_sensors_disabled"

.field private static final KEY_SEND_TRON_LOG:Ljava/lang/String; = "send_tron_log"

.field private static final KEY_SOUNDTRIGGER_DISABLED:Ljava/lang/String; = "soundtrigger_disabled"

.field private static final KEY_VIBRATION_DISABLED:Ljava/lang/String; = "vibration_disabled"

.field public static final SECURE_KEY_GPS_MODE:Ljava/lang/String; = "batterySaverGpsMode"

.field private static final TAG:Ljava/lang/String; = "BatterySaverPolicy"


# instance fields
.field private mAccessibilityEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mAdjustBrightnessDisabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mAdjustBrightnessFactor:F
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mAnimationDisabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mAodDisabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mBatterySavingStats:Lcom/android/server/power/batterysaver/BatterySavingStats;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mDataSaverDisabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mDeviceSpecificSettings:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mDeviceSpecificSettingsSource:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mEventLogKeys:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mFilesForInteractive:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFilesForNoninteractive:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFireWallDisabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mForceAllAppsStandby:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mForceBackgroundCheck:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mFullBackupDeferred:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mGpsMode:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mKeyValueBackupDeferred:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mLaunchBoostDisabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mListeners:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/power/BatterySaverPolicy$BatterySaverPolicyListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mOptionalSensorsDisabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mSendTronLog:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mSettings:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mSoundTriggerDisabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mVibrationDisabledConfig:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mVibrationDisabledEffective:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/power/batterysaver/BatterySavingStats;)V
    .registers 5
    .param p1, "lock"    # Ljava/lang/Object;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "batterySavingStats"    # Lcom/android/server/power/batterysaver/BatterySavingStats;

    .line 272
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/BatterySaverPolicy;->mListeners:Ljava/util/List;

    .line 273
    iput-object p1, p0, Lcom/android/server/power/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    .line 274
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/BatterySaverPolicy;->mHandler:Landroid/os/Handler;

    .line 275
    iput-object p2, p0, Lcom/android/server/power/BatterySaverPolicy;->mContext:Landroid/content/Context;

    .line 276
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/BatterySaverPolicy;->mContentResolver:Landroid/content/ContentResolver;

    .line 277
    iput-object p3, p0, Lcom/android/server/power/BatterySaverPolicy;->mBatterySavingStats:Lcom/android/server/power/batterysaver/BatterySavingStats;

    .line 278
    return-void
.end method

.method private dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArrayMap;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 578
    .local p3, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p3, :cond_3

    .line 579
    return-void

    .line 581
    :cond_3
    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 582
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_2c

    .line 583
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 584
    invoke-virtual {p3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 585
    const-string v2, ": \'"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 586
    invoke-virtual {p3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 587
    const-string v2, "\'"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 582
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 589
    .end local v1    # "i":I
    :cond_2c
    return-void
.end method

.method public static synthetic lambda$refreshSettings$1(Lcom/android/server/power/BatterySaverPolicy;[Lcom/android/server/power/BatterySaverPolicy$BatterySaverPolicyListener;)V
    .registers 5
    .param p1, "listeners"    # [Lcom/android/server/power/BatterySaverPolicy$BatterySaverPolicyListener;

    .line 355
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_c

    aget-object v2, p1, v1

    .line 356
    .local v2, "listener":Lcom/android/server/power/BatterySaverPolicy$BatterySaverPolicyListener;
    invoke-interface {v2, p0}, Lcom/android/server/power/BatterySaverPolicy$BatterySaverPolicyListener;->onBatterySaverPolicyChanged(Lcom/android/server/power/BatterySaverPolicy;)V

    .line 355
    .end local v2    # "listener":Lcom/android/server/power/BatterySaverPolicy$BatterySaverPolicyListener;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 358
    :cond_c
    return-void
.end method

.method public static synthetic lambda$systemReady$0(Lcom/android/server/power/BatterySaverPolicy;Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 294
    iget-object v0, p0, Lcom/android/server/power/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 295
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/power/BatterySaverPolicy;->mAccessibilityEnabled:Z

    .line 296
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_a

    .line 297
    invoke-direct {p0}, Lcom/android/server/power/BatterySaverPolicy;->refreshSettings()V

    .line 298
    return-void

    .line 296
    :catchall_a
    move-exception v1

    :try_start_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw v1
.end method

.method private refreshSettings()V
    .registers 6

    .line 329
    iget-object v0, p0, Lcom/android/server/power/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 331
    :try_start_3
    const-string v1, "battery_saver_constants"

    invoke-virtual {p0, v1}, Lcom/android/server/power/BatterySaverPolicy;->getGlobalSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 336
    .local v1, "setting":Ljava/lang/String;
    const-string v2, "battery_saver_device_specific_constants"

    invoke-virtual {p0, v2}, Lcom/android/server/power/BatterySaverPolicy;->getGlobalSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 338
    .local v2, "deviceSpecificSetting":Ljava/lang/String;
    const-string v3, "battery_saver_device_specific_constants"

    iput-object v3, p0, Lcom/android/server/power/BatterySaverPolicy;->mDeviceSpecificSettingsSource:Ljava/lang/String;

    .line 341
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_22

    const-string/jumbo v3, "null"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 342
    :cond_22
    iget-object v3, p0, Lcom/android/server/power/BatterySaverPolicy;->mContext:Landroid/content/Context;

    .line 343
    invoke-virtual {p0}, Lcom/android/server/power/BatterySaverPolicy;->getDeviceSpecificConfigResId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 344
    const-string v3, "(overlay)"

    iput-object v3, p0, Lcom/android/server/power/BatterySaverPolicy;->mDeviceSpecificSettingsSource:Ljava/lang/String;

    .line 348
    :cond_31
    invoke-virtual {p0, v1, v2}, Lcom/android/server/power/BatterySaverPolicy;->updateConstantsLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object v3, p0, Lcom/android/server/power/BatterySaverPolicy;->mListeners:Ljava/util/List;

    iget-object v4, p0, Lcom/android/server/power/BatterySaverPolicy;->mListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/android/server/power/BatterySaverPolicy$BatterySaverPolicyListener;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/server/power/BatterySaverPolicy$BatterySaverPolicyListener;

    .end local v1    # "setting":Ljava/lang/String;
    .end local v2    # "deviceSpecificSetting":Ljava/lang/String;
    move-object v1, v3

    .line 351
    .local v1, "listeners":[Lcom/android/server/power/BatterySaverPolicy$BatterySaverPolicyListener;
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_3 .. :try_end_46} :catchall_51

    .line 354
    iget-object v0, p0, Lcom/android/server/power/BatterySaverPolicy;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/power/-$$Lambda$BatterySaverPolicy$9q6hxnTofoZqK_ebwl_HDCH8A4A;

    invoke-direct {v2, p0, v1}, Lcom/android/server/power/-$$Lambda$BatterySaverPolicy$9q6hxnTofoZqK_ebwl_HDCH8A4A;-><init>(Lcom/android/server/power/BatterySaverPolicy;[Lcom/android/server/power/BatterySaverPolicy$BatterySaverPolicyListener;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 359
    return-void

    .line 351
    .end local v1    # "listeners":[Lcom/android/server/power/BatterySaverPolicy$BatterySaverPolicyListener;
    :catchall_51
    move-exception v1

    :try_start_52
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    throw v1
.end method


# virtual methods
.method public addListener(Lcom/android/server/power/BatterySaverPolicy$BatterySaverPolicyListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/android/server/power/BatterySaverPolicy$BatterySaverPolicyListener;

    .line 307
    iget-object v0, p0, Lcom/android/server/power/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 308
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/BatterySaverPolicy;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    monitor-exit v0

    .line 310
    return-void

    .line 309
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 537
    iget-object v0, p0, Lcom/android/server/power/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 538
    :try_start_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 539
    iget-object v1, p0, Lcom/android/server/power/BatterySaverPolicy;->mBatterySavingStats:Lcom/android/server/power/batterysaver/BatterySavingStats;

    const-string v2, ""

    invoke-virtual {v1, p1, v2}, Lcom/android/server/power/batterysaver/BatterySavingStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 541
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 542
    const-string v1, "Battery saver policy (*NOTE* they only apply when battery saver is ON):"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 543
    const-string v1, "  Settings: battery_saver_constants"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 544
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mSettings:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 545
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Settings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mDeviceSpecificSettingsSource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 546
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mDeviceSpecificSettings:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 548
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 549
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mAccessibilityEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mAccessibilityEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 550
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  vibration_disabled:config="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mVibrationDisabledConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 551
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  vibration_disabled:effective="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mVibrationDisabledEffective:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 552
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  animation_disabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mAnimationDisabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 553
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  fullbackup_deferred="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mFullBackupDeferred:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 554
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  keyvaluebackup_deferred="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mKeyValueBackupDeferred:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 555
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  firewall_disabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mFireWallDisabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 556
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  datasaver_disabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mDataSaverDisabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 557
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  launch_boost_disabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mLaunchBoostDisabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 558
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  adjust_brightness_disabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mAdjustBrightnessDisabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 559
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  adjust_brightness_factor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mAdjustBrightnessFactor:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 560
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  gps_mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mGpsMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 561
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  force_all_apps_standby="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mForceAllAppsStandby:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 562
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  force_background_check="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mForceBackgroundCheck:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 563
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  optional_sensors_disabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mOptionalSensorsDisabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 564
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  aod_disabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mAodDisabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 565
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  send_tron_log="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mSendTronLog:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 566
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 568
    const-string v1, "  Interactive File values:\n"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 569
    const-string v1, "    "

    iget-object v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mFilesForInteractive:Landroid/util/ArrayMap;

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/power/BatterySaverPolicy;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArrayMap;)V

    .line 570
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 572
    const-string v1, "  Noninteractive File values:\n"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 573
    const-string v1, "    "

    iget-object v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mFilesForNoninteractive:Landroid/util/ArrayMap;

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/power/BatterySaverPolicy;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArrayMap;)V

    .line 574
    monitor-exit v0

    .line 575
    return-void

    .line 574
    :catchall_1f5
    move-exception v1

    monitor-exit v0
    :try_end_1f7
    .catchall {:try_start_3 .. :try_end_1f7} :catchall_1f5

    throw v1
.end method

.method public getBatterySaverPolicy(IZ)Landroid/os/PowerSaveState;
    .registers 7
    .param p1, "type"    # I
    .param p2, "realMode"    # Z

    .line 456
    iget-object v0, p0, Lcom/android/server/power/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 457
    :try_start_3
    new-instance v1, Landroid/os/PowerSaveState$Builder;

    invoke-direct {v1}, Landroid/os/PowerSaveState$Builder;-><init>()V

    .line 458
    invoke-virtual {v1, p2}, Landroid/os/PowerSaveState$Builder;->setGlobalBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object v1

    .line 459
    .local v1, "builder":Landroid/os/PowerSaveState$Builder;
    if-nez p2, :cond_18

    .line 460
    invoke-virtual {v1, p2}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object v2

    .line 461
    invoke-virtual {v2}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    move-result-object v2

    monitor-exit v0

    .line 460
    return-object v2

    .line 463
    :cond_18
    packed-switch p1, :pswitch_data_d6

    .line 506
    :pswitch_1b
    invoke-virtual {v1, p2}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object v2

    goto/16 :goto_cd

    .line 503
    :pswitch_21
    iget-boolean v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mAodDisabled:Z

    invoke-virtual {v1, v2}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object v2

    .line 504
    invoke-virtual {v2}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    move-result-object v2

    monitor-exit v0

    .line 503
    return-object v2

    .line 500
    :pswitch_2d
    iget-boolean v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mOptionalSensorsDisabled:Z

    invoke-virtual {v1, v2}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object v2

    .line 501
    invoke-virtual {v2}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    move-result-object v2

    monitor-exit v0

    .line 500
    return-object v2

    .line 497
    :pswitch_39
    iget-boolean v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mForceBackgroundCheck:Z

    invoke-virtual {v1, v2}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object v2

    .line 498
    invoke-virtual {v2}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    move-result-object v2

    monitor-exit v0

    .line 497
    return-object v2

    .line 494
    :pswitch_45
    iget-boolean v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mForceAllAppsStandby:Z

    invoke-virtual {v1, v2}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object v2

    .line 495
    invoke-virtual {v2}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    move-result-object v2

    monitor-exit v0

    .line 494
    return-object v2

    .line 485
    :pswitch_51
    iget-boolean v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mDataSaverDisabled:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object v2

    .line 486
    invoke-virtual {v2}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    move-result-object v2

    monitor-exit v0

    .line 485
    return-object v2

    .line 488
    :pswitch_5f
    iget-boolean v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mSoundTriggerDisabled:Z

    invoke-virtual {v1, v2}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object v2

    .line 489
    invoke-virtual {v2}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    move-result-object v2

    monitor-exit v0

    .line 488
    return-object v2

    .line 481
    :pswitch_6b
    iget-boolean v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mAdjustBrightnessDisabled:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/power/BatterySaverPolicy;->mAdjustBrightnessFactor:F

    .line 482
    invoke-virtual {v2, v3}, Landroid/os/PowerSaveState$Builder;->setBrightnessFactor(F)Landroid/os/PowerSaveState$Builder;

    move-result-object v2

    .line 483
    invoke-virtual {v2}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    move-result-object v2

    monitor-exit v0

    .line 481
    return-object v2

    .line 478
    :pswitch_7f
    iget-boolean v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mFireWallDisabled:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object v2

    .line 479
    invoke-virtual {v2}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    move-result-object v2

    monitor-exit v0

    .line 478
    return-object v2

    .line 475
    :pswitch_8d
    iget-boolean v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mKeyValueBackupDeferred:Z

    invoke-virtual {v1, v2}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object v2

    .line 476
    invoke-virtual {v2}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    move-result-object v2

    monitor-exit v0

    .line 475
    return-object v2

    .line 472
    :pswitch_99
    iget-boolean v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mFullBackupDeferred:Z

    invoke-virtual {v1, v2}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object v2

    .line 473
    invoke-virtual {v2}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    move-result-object v2

    monitor-exit v0

    .line 472
    return-object v2

    .line 469
    :pswitch_a5
    iget-boolean v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mAnimationDisabled:Z

    invoke-virtual {v1, v2}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object v2

    .line 470
    invoke-virtual {v2}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    move-result-object v2

    monitor-exit v0

    .line 469
    return-object v2

    .line 491
    :pswitch_b1
    iget-boolean v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mVibrationDisabledEffective:Z

    invoke-virtual {v1, v2}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object v2

    .line 492
    invoke-virtual {v2}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    move-result-object v2

    monitor-exit v0

    .line 491
    return-object v2

    .line 465
    :pswitch_bd
    invoke-virtual {v1, p2}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/power/BatterySaverPolicy;->mGpsMode:I

    .line 466
    invoke-virtual {v2, v3}, Landroid/os/PowerSaveState$Builder;->setGpsMode(I)Landroid/os/PowerSaveState$Builder;

    move-result-object v2

    .line 467
    invoke-virtual {v2}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    move-result-object v2

    monitor-exit v0

    .line 465
    return-object v2

    .line 507
    :goto_cd
    invoke-virtual {v2}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    move-result-object v2

    monitor-exit v0

    .line 506
    return-object v2

    .line 509
    .end local v1    # "builder":Landroid/os/PowerSaveState$Builder;
    :catchall_d3
    move-exception v1

    monitor-exit v0
    :try_end_d5
    .catchall {:try_start_3 .. :try_end_d5} :catchall_d3

    throw v1

    :pswitch_data_d6
    .packed-switch 0x1
        :pswitch_bd
        :pswitch_b1
        :pswitch_a5
        :pswitch_99
        :pswitch_8d
        :pswitch_7f
        :pswitch_6b
        :pswitch_5f
        :pswitch_1b
        :pswitch_51
        :pswitch_45
        :pswitch_39
        :pswitch_2d
        :pswitch_21
    .end packed-switch
.end method

.method getDeviceSpecificConfigResId()I
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 319
    const v0, 0x104012a

    return v0
.end method

.method public getFileValues(Z)Landroid/util/ArrayMap;
    .registers 4
    .param p1, "interactive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 519
    iget-object v0, p0, Lcom/android/server/power/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 520
    if-eqz p1, :cond_a

    :try_start_5
    iget-object v1, p0, Lcom/android/server/power/BatterySaverPolicy;->mFilesForInteractive:Landroid/util/ArrayMap;

    goto :goto_c

    .line 521
    :catchall_8
    move-exception v1

    goto :goto_e

    .line 520
    :cond_a
    iget-object v1, p0, Lcom/android/server/power/BatterySaverPolicy;->mFilesForNoninteractive:Landroid/util/ArrayMap;

    :goto_c
    monitor-exit v0

    return-object v1

    .line 521
    :goto_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_8

    throw v1
.end method

.method getGlobalSetting(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 314
    iget-object v0, p0, Lcom/android/server/power/BatterySaverPolicy;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGpsMode()I
    .registers 3

    .line 513
    iget-object v0, p0, Lcom/android/server/power/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 514
    :try_start_3
    iget v1, p0, Lcom/android/server/power/BatterySaverPolicy;->mGpsMode:I

    monitor-exit v0

    return v1

    .line 515
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public isLaunchBoostDisabled()Z
    .registers 3

    .line 525
    iget-object v0, p0, Lcom/android/server/power/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 526
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/BatterySaverPolicy;->mLaunchBoostDisabled:Z

    monitor-exit v0

    return v1

    .line 527
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 324
    invoke-direct {p0}, Lcom/android/server/power/BatterySaverPolicy;->refreshSettings()V

    .line 325
    return-void
.end method

.method public setAccessibilityEnabledForTest(Z)V
    .registers 4
    .param p1, "enabled"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 593
    iget-object v0, p0, Lcom/android/server/power/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 594
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/power/BatterySaverPolicy;->mAccessibilityEnabled:Z

    .line 595
    monitor-exit v0

    .line 596
    return-void

    .line 595
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public systemReady()V
    .registers 5

    .line 284
    const-string v0, "BatterySaverPolicy"

    iget-object v1, p0, Lcom/android/server/power/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/internal/util/ConcurrentUtils;->wtfIfLockHeld(Ljava/lang/String;Ljava/lang/Object;)V

    .line 286
    iget-object v0, p0, Lcom/android/server/power/BatterySaverPolicy;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "battery_saver_constants"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 288
    iget-object v0, p0, Lcom/android/server/power/BatterySaverPolicy;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "battery_saver_device_specific_constants"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 291
    iget-object v0, p0, Lcom/android/server/power/BatterySaverPolicy;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 293
    .local v0, "acm":Landroid/view/accessibility/AccessibilityManager;
    new-instance v1, Lcom/android/server/power/-$$Lambda$BatterySaverPolicy$DPeh8xGdH0ye3BQJ8Ozaqeu6Y30;

    invoke-direct {v1, p0}, Lcom/android/server/power/-$$Lambda$BatterySaverPolicy$DPeh8xGdH0ye3BQJ8Ozaqeu6Y30;-><init>(Lcom/android/server/power/BatterySaverPolicy;)V

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    .line 299
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    .line 300
    .local v1, "enabled":Z
    iget-object v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 301
    :try_start_37
    iput-boolean v1, p0, Lcom/android/server/power/BatterySaverPolicy;->mAccessibilityEnabled:Z

    .line 302
    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_40

    .line 303
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/server/power/BatterySaverPolicy;->onChange(ZLandroid/net/Uri;)V

    .line 304
    return-void

    .line 302
    :catchall_40
    move-exception v3

    :try_start_41
    monitor-exit v2
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw v3
.end method

.method public toEventLogString()Ljava/lang/String;
    .registers 3

    .line 531
    iget-object v0, p0, Lcom/android/server/power/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 532
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/BatterySaverPolicy;->mEventLogKeys:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 533
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method updateConstantsLocked(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "setting"    # Ljava/lang/String;
    .param p2, "deviceSpecificSetting"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 364
    iput-object p1, p0, Lcom/android/server/power/BatterySaverPolicy;->mSettings:Ljava/lang/String;

    .line 365
    iput-object p2, p0, Lcom/android/server/power/BatterySaverPolicy;->mDeviceSpecificSettings:Ljava/lang/String;

    .line 372
    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    .line 376
    .local v0, "parser":Landroid/util/KeyValueListParser;
    :try_start_b
    invoke-virtual {v0, p1}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_e} :catch_f

    .line 379
    goto :goto_26

    .line 377
    :catch_f
    move-exception v1

    .line 378
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "BatterySaverPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad battery saver constants: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_26
    const-string/jumbo v1, "vibration_disabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/BatterySaverPolicy;->mVibrationDisabledConfig:Z

    .line 382
    const-string v1, "animation_disabled"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/BatterySaverPolicy;->mAnimationDisabled:Z

    .line 383
    const-string/jumbo v1, "soundtrigger_disabled"

    invoke-virtual {v0, v1, v2}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/BatterySaverPolicy;->mSoundTriggerDisabled:Z

    .line 384
    const-string v1, "fullbackup_deferred"

    invoke-virtual {v0, v1, v2}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/BatterySaverPolicy;->mFullBackupDeferred:Z

    .line 385
    const-string/jumbo v1, "keyvaluebackup_deferred"

    invoke-virtual {v0, v1, v2}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/BatterySaverPolicy;->mKeyValueBackupDeferred:Z

    .line 386
    const-string v1, "firewall_disabled"

    invoke-virtual {v0, v1, v3}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/BatterySaverPolicy;->mFireWallDisabled:Z

    .line 387
    const-string v1, "adjust_brightness_disabled"

    invoke-virtual {v0, v1, v2}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/BatterySaverPolicy;->mAdjustBrightnessDisabled:Z

    .line 388
    const-string v1, "adjust_brightness_factor"

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1, v4}, Landroid/util/KeyValueListParser;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/android/server/power/BatterySaverPolicy;->mAdjustBrightnessFactor:F

    .line 389
    const-string v1, "datasaver_disabled"

    invoke-virtual {v0, v1, v2}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/BatterySaverPolicy;->mDataSaverDisabled:Z

    .line 390
    const-string/jumbo v1, "launch_boost_disabled"

    invoke-virtual {v0, v1, v2}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/BatterySaverPolicy;->mLaunchBoostDisabled:Z

    .line 391
    const-string v1, "force_all_apps_standby"

    invoke-virtual {v0, v1, v2}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/BatterySaverPolicy;->mForceAllAppsStandby:Z

    .line 392
    const-string v1, "force_background_check"

    invoke-virtual {v0, v1, v2}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/BatterySaverPolicy;->mForceBackgroundCheck:Z

    .line 393
    const-string/jumbo v1, "optional_sensors_disabled"

    invoke-virtual {v0, v1, v2}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/BatterySaverPolicy;->mOptionalSensorsDisabled:Z

    .line 394
    const-string v1, "aod_disabled"

    invoke-virtual {v0, v1, v2}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/BatterySaverPolicy;->mAodDisabled:Z

    .line 395
    const-string/jumbo v1, "send_tron_log"

    invoke-virtual {v0, v1, v3}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/BatterySaverPolicy;->mSendTronLog:Z

    .line 398
    iget-object v1, p0, Lcom/android/server/power/BatterySaverPolicy;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "batterySaverGpsMode"

    const/4 v5, 0x2

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 400
    .local v1, "defaultGpsMode":I
    const-string v4, "gps_mode"

    invoke-virtual {v0, v4, v1}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/server/power/BatterySaverPolicy;->mGpsMode:I

    .line 404
    :try_start_b9
    invoke-virtual {v0, p2}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_bc
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b9 .. :try_end_bc} :catch_bd

    .line 408
    goto :goto_d4

    .line 405
    :catch_bd
    move-exception v4

    .line 406
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "BatterySaverPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad device specific battery saver constants: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :goto_d4
    new-instance v4, Lcom/android/server/power/batterysaver/CpuFrequencies;

    invoke-direct {v4}, Lcom/android/server/power/batterysaver/CpuFrequencies;-><init>()V

    const-string v5, "cpufreq-i"

    const-string v6, ""

    .line 411
    invoke-virtual {v0, v5, v6}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 410
    invoke-virtual {v4, v5}, Lcom/android/server/power/batterysaver/CpuFrequencies;->parseString(Ljava/lang/String;)Lcom/android/server/power/batterysaver/CpuFrequencies;

    move-result-object v4

    .line 411
    invoke-virtual {v4}, Lcom/android/server/power/batterysaver/CpuFrequencies;->toSysFileMap()Landroid/util/ArrayMap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/power/BatterySaverPolicy;->mFilesForInteractive:Landroid/util/ArrayMap;

    .line 413
    new-instance v4, Lcom/android/server/power/batterysaver/CpuFrequencies;

    invoke-direct {v4}, Lcom/android/server/power/batterysaver/CpuFrequencies;-><init>()V

    const-string v5, "cpufreq-n"

    const-string v6, ""

    .line 414
    invoke-virtual {v0, v5, v6}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 413
    invoke-virtual {v4, v5}, Lcom/android/server/power/batterysaver/CpuFrequencies;->parseString(Ljava/lang/String;)Lcom/android/server/power/batterysaver/CpuFrequencies;

    move-result-object v4

    .line 414
    invoke-virtual {v4}, Lcom/android/server/power/batterysaver/CpuFrequencies;->toSysFileMap()Landroid/util/ArrayMap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/power/BatterySaverPolicy;->mFilesForNoninteractive:Landroid/util/ArrayMap;

    .line 417
    iget-boolean v4, p0, Lcom/android/server/power/BatterySaverPolicy;->mVibrationDisabledConfig:Z

    if-eqz v4, :cond_10b

    iget-boolean v4, p0, Lcom/android/server/power/BatterySaverPolicy;->mAccessibilityEnabled:Z

    if-nez v4, :cond_10b

    goto :goto_10c

    :cond_10b
    move v2, v3

    :goto_10c
    iput-boolean v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mVibrationDisabledEffective:Z

    .line 420
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 422
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-boolean v3, p0, Lcom/android/server/power/BatterySaverPolicy;->mForceAllAppsStandby:Z

    if-eqz v3, :cond_11c

    const-string v3, "A"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    :cond_11c
    iget-boolean v3, p0, Lcom/android/server/power/BatterySaverPolicy;->mForceBackgroundCheck:Z

    if-eqz v3, :cond_125

    const-string v3, "B"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    :cond_125
    iget-boolean v3, p0, Lcom/android/server/power/BatterySaverPolicy;->mVibrationDisabledEffective:Z

    if-eqz v3, :cond_12f

    const-string/jumbo v3, "v"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    :cond_12f
    iget-boolean v3, p0, Lcom/android/server/power/BatterySaverPolicy;->mAnimationDisabled:Z

    if-eqz v3, :cond_138

    const-string v3, "a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    :cond_138
    iget-boolean v3, p0, Lcom/android/server/power/BatterySaverPolicy;->mSoundTriggerDisabled:Z

    if-eqz v3, :cond_142

    const-string/jumbo v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    :cond_142
    iget-boolean v3, p0, Lcom/android/server/power/BatterySaverPolicy;->mFullBackupDeferred:Z

    if-eqz v3, :cond_14b

    const-string v3, "F"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    :cond_14b
    iget-boolean v3, p0, Lcom/android/server/power/BatterySaverPolicy;->mKeyValueBackupDeferred:Z

    if-eqz v3, :cond_154

    const-string v3, "K"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    :cond_154
    iget-boolean v3, p0, Lcom/android/server/power/BatterySaverPolicy;->mFireWallDisabled:Z

    if-nez v3, :cond_15d

    const-string v3, "f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    :cond_15d
    iget-boolean v3, p0, Lcom/android/server/power/BatterySaverPolicy;->mDataSaverDisabled:Z

    if-nez v3, :cond_166

    const-string v3, "d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    :cond_166
    iget-boolean v3, p0, Lcom/android/server/power/BatterySaverPolicy;->mAdjustBrightnessDisabled:Z

    if-nez v3, :cond_16f

    const-string v3, "b"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    :cond_16f
    iget-boolean v3, p0, Lcom/android/server/power/BatterySaverPolicy;->mLaunchBoostDisabled:Z

    if-eqz v3, :cond_179

    const-string/jumbo v3, "l"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    :cond_179
    iget-boolean v3, p0, Lcom/android/server/power/BatterySaverPolicy;->mOptionalSensorsDisabled:Z

    if-eqz v3, :cond_182

    const-string v3, "S"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    :cond_182
    iget-boolean v3, p0, Lcom/android/server/power/BatterySaverPolicy;->mAodDisabled:Z

    if-eqz v3, :cond_18c

    const-string/jumbo v3, "o"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    :cond_18c
    iget-boolean v3, p0, Lcom/android/server/power/BatterySaverPolicy;->mSendTronLog:Z

    if-eqz v3, :cond_196

    const-string/jumbo v3, "t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    :cond_196
    iget v3, p0, Lcom/android/server/power/BatterySaverPolicy;->mGpsMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 441
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/power/BatterySaverPolicy;->mEventLogKeys:Ljava/lang/String;

    .line 443
    iget-object v3, p0, Lcom/android/server/power/BatterySaverPolicy;->mBatterySavingStats:Lcom/android/server/power/batterysaver/BatterySavingStats;

    iget-boolean v4, p0, Lcom/android/server/power/BatterySaverPolicy;->mSendTronLog:Z

    invoke-virtual {v3, v4}, Lcom/android/server/power/batterysaver/BatterySavingStats;->setSendTronLog(Z)V

    .line 444
    return-void
.end method
