.class Lcom/android/server/usage/AppStandbyController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "AppStandbyController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/AppStandbyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# static fields
.field public static final DEFAULT_EXEMPTED_SYNC_SCHEDULED_DOZE_TIMEOUT:J = 0xdbba00L

.field public static final DEFAULT_EXEMPTED_SYNC_SCHEDULED_NON_DOZE_TIMEOUT:J = 0x927c0L

.field public static final DEFAULT_EXEMPTED_SYNC_START_TIMEOUT:J = 0x927c0L

.field public static final DEFAULT_NOTIFICATION_TIMEOUT:J = 0x2932e00L

.field public static final DEFAULT_STABLE_CHARGING_THRESHOLD:J = 0x927c0L

.field public static final DEFAULT_STRONG_USAGE_TIMEOUT:J = 0x36ee80L

.field public static final DEFAULT_SYNC_ADAPTER_TIMEOUT:J = 0x927c0L

.field public static final DEFAULT_SYSTEM_INTERACTION_TIMEOUT:J = 0x927c0L

.field public static final DEFAULT_SYSTEM_UPDATE_TIMEOUT:J = 0x6ddd00L

.field private static final KEY_ELAPSED_TIME_THRESHOLDS:Ljava/lang/String; = "elapsed_thresholds"

.field private static final KEY_EXEMPTED_SYNC_SCHEDULED_DOZE_HOLD_DURATION:Ljava/lang/String; = "exempted_sync_scheduled_d_duration"

.field private static final KEY_EXEMPTED_SYNC_SCHEDULED_NON_DOZE_HOLD_DURATION:Ljava/lang/String; = "exempted_sync_scheduled_nd_duration"

.field private static final KEY_EXEMPTED_SYNC_START_HOLD_DURATION:Ljava/lang/String; = "exempted_sync_start_duration"

.field private static final KEY_IDLE_DURATION:Ljava/lang/String; = "idle_duration2"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final KEY_IDLE_DURATION_OLD:Ljava/lang/String; = "idle_duration"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final KEY_NOTIFICATION_SEEN_HOLD_DURATION:Ljava/lang/String; = "notification_seen_duration"

.field private static final KEY_PAROLE_DURATION:Ljava/lang/String; = "parole_duration"

.field private static final KEY_PAROLE_INTERVAL:Ljava/lang/String; = "parole_interval"

.field private static final KEY_PAROLE_WINDOW:Ljava/lang/String; = "parole_window"

.field private static final KEY_PREDICTION_TIMEOUT:Ljava/lang/String; = "prediction_timeout"

.field private static final KEY_SCREEN_TIME_THRESHOLDS:Ljava/lang/String; = "screen_thresholds"

.field private static final KEY_STABLE_CHARGING_THRESHOLD:Ljava/lang/String; = "stable_charging_threshold"

.field private static final KEY_STRONG_USAGE_HOLD_DURATION:Ljava/lang/String; = "strong_usage_duration"

.field private static final KEY_SYNC_ADAPTER_HOLD_DURATION:Ljava/lang/String; = "sync_adapter_duration"

.field private static final KEY_SYSTEM_INTERACTION_HOLD_DURATION:Ljava/lang/String; = "system_interaction_duration"

.field private static final KEY_SYSTEM_UPDATE_HOLD_DURATION:Ljava/lang/String; = "system_update_usage_duration"

.field private static final KEY_WALLCLOCK_THRESHOLD:Ljava/lang/String; = "wallclock_threshold"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final mParser:Landroid/util/KeyValueListParser;

.field final synthetic this$0:Lcom/android/server/usage/AppStandbyController;


# direct methods
.method constructor <init>(Lcom/android/server/usage/AppStandbyController;Landroid/os/Handler;)V
    .registers 4
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1780
    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    .line 1781
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1778
    new-instance p1, Landroid/util/KeyValueListParser;

    const/16 v0, 0x2c

    invoke-direct {p1, v0}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    .line 1782
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .param p1, "selfChange"    # Z

    .line 1794
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->updateSettings()V

    .line 1795
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController;->postOneTimeCheckIdleStates()V

    .line 1796
    return-void
.end method

.method parseLongArray(Ljava/lang/String;[J)[J
    .registers 8
    .param p1, "values"    # Ljava/lang/String;
    .param p2, "defaults"    # [J

    .line 1886
    if-nez p1, :cond_3

    return-object p2

    .line 1887
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1889
    return-object p2

    .line 1891
    :cond_a
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1892
    .local v0, "thresholds":[Ljava/lang/String;
    array-length v1, v0

    sget-object v2, Lcom/android/server/usage/AppStandbyController;->THRESHOLD_BUCKETS:[I

    array-length v2, v2

    if-ne v1, v2, :cond_53

    .line 1893
    sget-object v1, Lcom/android/server/usage/AppStandbyController;->THRESHOLD_BUCKETS:[I

    array-length v1, v1

    new-array v1, v1, [J

    .line 1894
    .local v1, "array":[J
    const/4 v2, 0x0

    .line 1894
    .local v2, "i":I
    :goto_1c
    sget-object v3, Lcom/android/server/usage/AppStandbyController;->THRESHOLD_BUCKETS:[I

    array-length v3, v3

    if-ge v2, v3, :cond_52

    .line 1896
    :try_start_21
    aget-object v3, v0, v2

    const-string v4, "P"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_40

    aget-object v3, v0, v2

    const-string/jumbo v4, "p"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_37

    goto :goto_40

    .line 1899
    :cond_37
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    aput-wide v3, v1, v2

    goto :goto_4c

    .line 1897
    :cond_40
    :goto_40
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/time/Duration;->parse(Ljava/lang/CharSequence;)Ljava/time/Duration;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/Duration;->toMillis()J

    move-result-wide v3

    aput-wide v3, v1, v2
    :try_end_4c
    .catch Ljava/lang/NumberFormatException; {:try_start_21 .. :try_end_4c} :catch_50
    .catch Ljava/time/format/DateTimeParseException; {:try_start_21 .. :try_end_4c} :catch_50

    .line 1903
    :goto_4c
    nop

    .line 1894
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 1901
    :catch_50
    move-exception v3

    .line 1902
    .local v3, "e":Ljava/lang/RuntimeException;
    return-object p2

    .line 1905
    .end local v2    # "i":I
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :cond_52
    return-object v1

    .line 1907
    .end local v1    # "array":[J
    :cond_53
    return-object p2
.end method

.method registerObserver()V
    .registers 4

    .line 1785
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    # getter for: Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/usage/AppStandbyController;->access$800(Lcom/android/server/usage/AppStandbyController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1786
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "app_idle_constants"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1787
    const-string v1, "app_standby_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1788
    const-string v1, "adaptive_battery_management_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1790
    return-void
.end method

.method updateSettings()V
    .registers 15

    .line 1811
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v1, v1, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v1}, Lcom/android/server/usage/AppStandbyController$Injector;->isAppIdleEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppStandbyController;->setAppIdleEnabled(Z)V

    .line 1816
    :try_start_d
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v1, v1, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v1}, Lcom/android/server/usage/AppStandbyController$Injector;->getAppIdleSettings()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_1a} :catch_1b

    .line 1820
    goto :goto_36

    .line 1817
    :catch_1b
    move-exception v0

    .line 1818
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "AppStandbyController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad value for app idle settings: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1822
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_36
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    # getter for: Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/usage/AppStandbyController;->access$600(Lcom/android/server/usage/AppStandbyController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1825
    :try_start_3d
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "parole_interval"

    const-wide/32 v4, 0x5265c00

    invoke-virtual {v2, v3, v4, v5}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/usage/AppStandbyController;->mAppIdleParoleIntervalMillis:J

    .line 1829
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "parole_window"

    const-wide/32 v4, 0x6ddd00

    invoke-virtual {v2, v3, v4, v5}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/usage/AppStandbyController;->mAppIdleParoleWindowMillis:J

    .line 1832
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "parole_duration"

    const-wide/32 v6, 0x927c0

    invoke-virtual {v2, v3, v6, v7}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/usage/AppStandbyController;->mAppIdleParoleDurationMillis:J

    .line 1835
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "screen_thresholds"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1836
    .local v1, "screenThresholdsValue":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    sget-object v8, Lcom/android/server/usage/AppStandbyController;->SCREEN_TIME_THRESHOLDS:[J

    invoke-virtual {p0, v1, v8}, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->parseLongArray(Ljava/lang/String;[J)[J

    move-result-object v8

    iput-object v8, v2, Lcom/android/server/usage/AppStandbyController;->mAppStandbyScreenThresholds:[J

    .line 1839
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const-string v8, "elapsed_thresholds"

    invoke-virtual {v2, v8, v3}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1841
    .local v2, "elapsedThresholdsValue":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    sget-object v8, Lcom/android/server/usage/AppStandbyController;->ELAPSED_TIME_THRESHOLDS:[J

    invoke-virtual {p0, v2, v8}, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->parseLongArray(Ljava/lang/String;[J)[J

    move-result-object v8

    iput-object v8, v3, Lcom/android/server/usage/AppStandbyController;->mAppStandbyElapsedThresholds:[J

    .line 1843
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v8, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v8, v8, Lcom/android/server/usage/AppStandbyController;->mAppStandbyElapsedThresholds:[J

    const/4 v9, 0x1

    aget-wide v8, v8, v9

    const-wide/16 v10, 0x4

    div-long/2addr v8, v10

    const-wide/32 v10, 0xdbba00

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    iput-wide v8, v3, Lcom/android/server/usage/AppStandbyController;->mCheckIdleIntervalMillis:J

    .line 1845
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v8, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v9, "strong_usage_duration"

    const-wide/32 v12, 0x36ee80

    .line 1846
    invoke-virtual {v8, v9, v12, v13}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, v3, Lcom/android/server/usage/AppStandbyController;->mStrongUsageTimeoutMillis:J

    .line 1848
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v8, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v9, "notification_seen_duration"

    .line 1849
    const-wide/32 v12, 0x2932e00

    invoke-virtual {v8, v9, v12, v13}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, v3, Lcom/android/server/usage/AppStandbyController;->mNotificationSeenTimeoutMillis:J

    .line 1851
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v8, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v9, "system_update_usage_duration"

    .line 1852
    invoke-virtual {v8, v9, v4, v5}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/server/usage/AppStandbyController;->mSystemUpdateUsageTimeoutMillis:J

    .line 1854
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v4, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v5, "prediction_timeout"

    .line 1855
    invoke-virtual {v4, v5, v12, v13}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/server/usage/AppStandbyController;->mPredictionTimeoutMillis:J

    .line 1857
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v4, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v5, "sync_adapter_duration"

    .line 1858
    invoke-virtual {v4, v5, v6, v7}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/server/usage/AppStandbyController;->mSyncAdapterTimeoutMillis:J

    .line 1861
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v4, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const-string v5, "exempted_sync_scheduled_nd_duration"

    .line 1862
    invoke-virtual {v4, v5, v6, v7}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncScheduledNonDozeTimeoutMillis:J

    .line 1866
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v4, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const-string v5, "exempted_sync_scheduled_d_duration"

    .line 1867
    invoke-virtual {v4, v5, v10, v11}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncScheduledDozeTimeoutMillis:J

    .line 1871
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v4, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const-string v5, "exempted_sync_start_duration"

    .line 1872
    invoke-virtual {v4, v5, v6, v7}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncStartTimeoutMillis:J

    .line 1876
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v4, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v5, "system_interaction_duration"

    .line 1877
    invoke-virtual {v4, v5, v6, v7}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/server/usage/AppStandbyController;->mSystemInteractionTimeoutMillis:J

    .line 1879
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v4, p0, Lcom/android/server/usage/AppStandbyController$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v5, "stable_charging_threshold"

    .line 1880
    invoke-virtual {v4, v5, v6, v7}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/server/usage/AppStandbyController;->mStableChargingThresholdMillis:J

    .line 1882
    .end local v1    # "screenThresholdsValue":Ljava/lang/String;
    .end local v2    # "elapsedThresholdsValue":Ljava/lang/String;
    monitor-exit v0

    .line 1883
    return-void

    .line 1882
    :catchall_12f
    move-exception v1

    monitor-exit v0
    :try_end_131
    .catchall {:try_start_3d .. :try_end_131} :catchall_12f

    throw v1
.end method
