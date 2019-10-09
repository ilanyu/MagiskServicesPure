.class Lcom/android/server/backup/BackupManagerConstants;
.super Landroid/util/KeyValueSettingObserver;
.source "BackupManagerConstants.java"


# static fields
.field public static final BACKUP_FINISHED_NOTIFICATION_RECEIVERS:Ljava/lang/String; = "backup_finished_notification_receivers"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DEFAULT_BACKUP_FINISHED_NOTIFICATION_RECEIVERS:Ljava/lang/String; = ""
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DEFAULT_FULL_BACKUP_INTERVAL_MILLISECONDS:J = 0x5265c00L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DEFAULT_FULL_BACKUP_REQUIRED_NETWORK_TYPE:I = 0x2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DEFAULT_FULL_BACKUP_REQUIRE_CHARGING:Z = true
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DEFAULT_KEY_VALUE_BACKUP_FUZZ_MILLISECONDS:J = 0x927c0L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DEFAULT_KEY_VALUE_BACKUP_INTERVAL_MILLISECONDS:J = 0xdbba00L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DEFAULT_KEY_VALUE_BACKUP_REQUIRED_NETWORK_TYPE:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DEFAULT_KEY_VALUE_BACKUP_REQUIRE_CHARGING:Z = true
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final FULL_BACKUP_INTERVAL_MILLISECONDS:Ljava/lang/String; = "full_backup_interval_milliseconds"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final FULL_BACKUP_REQUIRED_NETWORK_TYPE:Ljava/lang/String; = "full_backup_required_network_type"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final FULL_BACKUP_REQUIRE_CHARGING:Ljava/lang/String; = "full_backup_require_charging"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_VALUE_BACKUP_FUZZ_MILLISECONDS:Ljava/lang/String; = "key_value_backup_fuzz_milliseconds"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_VALUE_BACKUP_INTERVAL_MILLISECONDS:Ljava/lang/String; = "key_value_backup_interval_milliseconds"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_VALUE_BACKUP_REQUIRED_NETWORK_TYPE:Ljava/lang/String; = "key_value_backup_required_network_type"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_VALUE_BACKUP_REQUIRE_CHARGING:Ljava/lang/String; = "key_value_backup_require_charging"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final SETTING:Ljava/lang/String; = "backup_manager_constants"

.field private static final TAG:Ljava/lang/String; = "BackupManagerConstants"


# instance fields
.field private mBackupFinishedNotificationReceivers:[Ljava/lang/String;

.field private mFullBackupIntervalMilliseconds:J

.field private mFullBackupRequireCharging:Z

.field private mFullBackupRequiredNetworkType:I

.field private mKeyValueBackupFuzzMilliseconds:J

.field private mKeyValueBackupIntervalMilliseconds:J

.field private mKeyValueBackupRequireCharging:Z

.field private mKeyValueBackupRequiredNetworkType:I


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .registers 4
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "resolver"    # Landroid/content/ContentResolver;

    .line 103
    const-string v0, "backup_manager_constants"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Landroid/util/KeyValueSettingObserver;-><init>(Landroid/os/Handler;Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 104
    return-void
.end method


# virtual methods
.method public declared-synchronized getBackupFinishedNotificationReceivers()[Ljava/lang/String;
    .registers 5

    monitor-enter p0

    .line 223
    :try_start_1
    const-string v0, "BackupManagerConstants"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBackupFinishedNotificationReceivers(...) returns "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerConstants;->mBackupFinishedNotificationReceivers:[Ljava/lang/String;

    .line 226
    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 223
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerConstants;->mBackupFinishedNotificationReceivers:[Ljava/lang/String;
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    monitor-exit p0

    return-object v0

    .line 222
    :catchall_23
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/backup/BackupManagerConstants;
    throw v0
.end method

.method public declared-synchronized getFullBackupIntervalMilliseconds()J
    .registers 5

    monitor-enter p0

    .line 195
    :try_start_1
    const-string v0, "BackupManagerConstants"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFullBackupIntervalMilliseconds(...) returns "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/backup/BackupManagerConstants;->mFullBackupIntervalMilliseconds:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-wide v0, p0, Lcom/android/server/backup/BackupManagerConstants;->mFullBackupIntervalMilliseconds:J
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    monitor-exit p0

    return-wide v0

    .line 194
    :catchall_1d
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/backup/BackupManagerConstants;
    throw v0
.end method

.method public declared-synchronized getFullBackupRequireCharging()Z
    .registers 4

    monitor-enter p0

    .line 205
    :try_start_1
    const-string v0, "BackupManagerConstants"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFullBackupRequireCharging(...) returns "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/backup/BackupManagerConstants;->mFullBackupRequireCharging:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-boolean v0, p0, Lcom/android/server/backup/BackupManagerConstants;->mFullBackupRequireCharging:Z
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    monitor-exit p0

    return v0

    .line 204
    :catchall_1d
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/backup/BackupManagerConstants;
    throw v0
.end method

.method public declared-synchronized getFullBackupRequiredNetworkType()I
    .registers 4

    monitor-enter p0

    .line 212
    :try_start_1
    const-string v0, "BackupManagerConstants"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFullBackupRequiredNetworkType(...) returns "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/backup/BackupManagerConstants;->mFullBackupRequiredNetworkType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget v0, p0, Lcom/android/server/backup/BackupManagerConstants;->mFullBackupRequiredNetworkType:I
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    monitor-exit p0

    return v0

    .line 211
    :catchall_1d
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/backup/BackupManagerConstants;
    throw v0
.end method

.method public declared-synchronized getKeyValueBackupFuzzMilliseconds()J
    .registers 5

    monitor-enter p0

    .line 165
    :try_start_1
    const-string v0, "BackupManagerConstants"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getKeyValueBackupFuzzMilliseconds(...) returns "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/backup/BackupManagerConstants;->mKeyValueBackupFuzzMilliseconds:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-wide v0, p0, Lcom/android/server/backup/BackupManagerConstants;->mKeyValueBackupFuzzMilliseconds:J
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    monitor-exit p0

    return-wide v0

    .line 164
    :catchall_1d
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/backup/BackupManagerConstants;
    throw v0
.end method

.method public declared-synchronized getKeyValueBackupIntervalMilliseconds()J
    .registers 5

    monitor-enter p0

    .line 155
    :try_start_1
    const-string v0, "BackupManagerConstants"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getKeyValueBackupIntervalMilliseconds(...) returns "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/backup/BackupManagerConstants;->mKeyValueBackupIntervalMilliseconds:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-wide v0, p0, Lcom/android/server/backup/BackupManagerConstants;->mKeyValueBackupIntervalMilliseconds:J
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    monitor-exit p0

    return-wide v0

    .line 154
    :catchall_1d
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/backup/BackupManagerConstants;
    throw v0
.end method

.method public declared-synchronized getKeyValueBackupRequireCharging()Z
    .registers 4

    monitor-enter p0

    .line 175
    :try_start_1
    const-string v0, "BackupManagerConstants"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getKeyValueBackupRequireCharging(...) returns "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/backup/BackupManagerConstants;->mKeyValueBackupRequireCharging:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-boolean v0, p0, Lcom/android/server/backup/BackupManagerConstants;->mKeyValueBackupRequireCharging:Z
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    monitor-exit p0

    return v0

    .line 174
    :catchall_1d
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/backup/BackupManagerConstants;
    throw v0
.end method

.method public declared-synchronized getKeyValueBackupRequiredNetworkType()I
    .registers 4

    monitor-enter p0

    .line 185
    :try_start_1
    const-string v0, "BackupManagerConstants"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getKeyValueBackupRequiredNetworkType(...) returns "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/backup/BackupManagerConstants;->mKeyValueBackupRequiredNetworkType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget v0, p0, Lcom/android/server/backup/BackupManagerConstants;->mKeyValueBackupRequiredNetworkType:I
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    monitor-exit p0

    return v0

    .line 184
    :catchall_1d
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/backup/BackupManagerConstants;
    throw v0
.end method

.method public getSettingValue(Landroid/content/ContentResolver;)Ljava/lang/String;
    .registers 3
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .line 107
    const-string v0, "backup_manager_constants"

    invoke-static {p1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized update(Landroid/util/KeyValueListParser;)V
    .registers 6
    .param p1, "parser"    # Landroid/util/KeyValueListParser;

    monitor-enter p0

    .line 111
    :try_start_1
    const-string/jumbo v0, "key_value_backup_interval_milliseconds"

    const-wide/32 v1, 0xdbba00

    .line 112
    invoke-virtual {p1, v0, v1, v2}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/backup/BackupManagerConstants;->mKeyValueBackupIntervalMilliseconds:J

    .line 115
    const-string/jumbo v0, "key_value_backup_fuzz_milliseconds"

    const-wide/32 v1, 0x927c0

    .line 116
    invoke-virtual {p1, v0, v1, v2}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/backup/BackupManagerConstants;->mKeyValueBackupFuzzMilliseconds:J

    .line 119
    const-string/jumbo v0, "key_value_backup_require_charging"

    .line 120
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/backup/BackupManagerConstants;->mKeyValueBackupRequireCharging:Z

    .line 123
    const-string/jumbo v0, "key_value_backup_required_network_type"

    .line 124
    invoke-virtual {p1, v0, v1}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/backup/BackupManagerConstants;->mKeyValueBackupRequiredNetworkType:I

    .line 127
    const-string v0, "full_backup_interval_milliseconds"

    const-wide/32 v2, 0x5265c00

    .line 128
    invoke-virtual {p1, v0, v2, v3}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/backup/BackupManagerConstants;->mFullBackupIntervalMilliseconds:J

    .line 131
    const-string v0, "full_backup_require_charging"

    .line 132
    invoke-virtual {p1, v0, v1}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/backup/BackupManagerConstants;->mFullBackupRequireCharging:Z

    .line 134
    const-string v0, "full_backup_required_network_type"

    const/4 v1, 0x2

    .line 135
    invoke-virtual {p1, v0, v1}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/backup/BackupManagerConstants;->mFullBackupRequiredNetworkType:I

    .line 138
    const-string v0, "backup_finished_notification_receivers"

    const-string v1, ""

    .line 139
    invoke-virtual {p1, v0, v1}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "backupFinishedNotificationReceivers":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 143
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/backup/BackupManagerConstants;->mBackupFinishedNotificationReceivers:[Ljava/lang/String;

    goto :goto_64

    .line 145
    :cond_5c
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/BackupManagerConstants;->mBackupFinishedNotificationReceivers:[Ljava/lang/String;
    :try_end_64
    .catchall {:try_start_1 .. :try_end_64} :catchall_66

    .line 147
    :goto_64
    monitor-exit p0

    return-void

    .line 110
    .end local v0    # "backupFinishedNotificationReceivers":Ljava/lang/String;
    .end local p1    # "parser":Landroid/util/KeyValueListParser;
    :catchall_66
    move-exception p1

    monitor-exit p0

    .line 110
    .end local p0    # "this":Lcom/android/server/backup/BackupManagerConstants;
    throw p1
.end method
