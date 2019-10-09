.class public Lcom/android/server/backup/BackupAgentTimeoutParameters;
.super Landroid/util/KeyValueSettingObserver;
.source "BackupAgentTimeoutParameters.java"


# static fields
.field public static final DEFAULT_FULL_BACKUP_AGENT_TIMEOUT_MILLIS:J = 0x493e0L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DEFAULT_KV_BACKUP_AGENT_TIMEOUT_MILLIS:J = 0x7530L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DEFAULT_RESTORE_AGENT_FINISHED_TIMEOUT_MILLIS:J = 0x7530L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DEFAULT_RESTORE_AGENT_TIMEOUT_MILLIS:J = 0xea60L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final DEFAULT_SHARED_BACKUP_AGENT_TIMEOUT_MILLIS:J = 0x1b7740L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final SETTING:Ljava/lang/String; = "backup_agent_timeout_parameters"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final SETTING_FULL_BACKUP_AGENT_TIMEOUT_MILLIS:Ljava/lang/String; = "full_backup_agent_timeout_millis"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final SETTING_KV_BACKUP_AGENT_TIMEOUT_MILLIS:Ljava/lang/String; = "kv_backup_agent_timeout_millis"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final SETTING_RESTORE_AGENT_FINISHED_TIMEOUT_MILLIS:Ljava/lang/String; = "restore_agent_finished_timeout_millis"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final SETTING_RESTORE_AGENT_TIMEOUT_MILLIS:Ljava/lang/String; = "restore_agent_timeout_millis"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final SETTING_SHARED_BACKUP_AGENT_TIMEOUT_MILLIS:Ljava/lang/String; = "shared_backup_agent_timeout_millis"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "BackupAgentTimeout"


# instance fields
.field private mFullBackupAgentTimeoutMillis:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mKvBackupAgentTimeoutMillis:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mRestoreAgentFinishedTimeoutMillis:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mRestoreAgentTimeoutMillis:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mSharedBackupAgentTimeoutMillis:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .registers 4
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "resolver"    # Landroid/content/ContentResolver;

    .line 92
    const-string v0, "backup_agent_timeout_parameters"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Landroid/util/KeyValueSettingObserver;-><init>(Landroid/os/Handler;Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 89
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mLock:Ljava/lang/Object;

    .line 93
    return-void
.end method


# virtual methods
.method public getFullBackupAgentTimeoutMillis()J
    .registers 6

    .line 134
    iget-object v0, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 136
    :try_start_3
    const-string v1, "BackupAgentTimeout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFullBackupAgentTimeoutMillis(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mFullBackupAgentTimeoutMillis:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-wide v1, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mFullBackupAgentTimeoutMillis:J

    monitor-exit v0

    return-wide v1

    .line 139
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public getKvBackupAgentTimeoutMillis()J
    .registers 6

    .line 125
    iget-object v0, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 127
    :try_start_3
    const-string v1, "BackupAgentTimeout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getKvBackupAgentTimeoutMillis(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mKvBackupAgentTimeoutMillis:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-wide v1, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mKvBackupAgentTimeoutMillis:J

    monitor-exit v0

    return-wide v1

    .line 130
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public getRestoreAgentFinishedTimeoutMillis()J
    .registers 6

    .line 163
    iget-object v0, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 165
    :try_start_3
    const-string v1, "BackupAgentTimeout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRestoreAgentFinishedTimeoutMillis(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mRestoreAgentFinishedTimeoutMillis:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-wide v1, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mRestoreAgentFinishedTimeoutMillis:J

    monitor-exit v0

    return-wide v1

    .line 171
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public getRestoreAgentTimeoutMillis()J
    .registers 6

    .line 154
    iget-object v0, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 156
    :try_start_3
    const-string v1, "BackupAgentTimeout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRestoreAgentTimeoutMillis(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mRestoreAgentTimeoutMillis:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-wide v1, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mRestoreAgentTimeoutMillis:J

    monitor-exit v0

    return-wide v1

    .line 159
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public getSettingValue(Landroid/content/ContentResolver;)Ljava/lang/String;
    .registers 3
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .line 96
    const-string v0, "backup_agent_timeout_parameters"

    invoke-static {p1, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSharedBackupAgentTimeoutMillis()J
    .registers 6

    .line 143
    iget-object v0, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 145
    :try_start_3
    const-string v1, "BackupAgentTimeout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSharedBackupAgentTimeoutMillis(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mSharedBackupAgentTimeoutMillis:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-wide v1, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mSharedBackupAgentTimeoutMillis:J

    monitor-exit v0

    return-wide v1

    .line 150
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public update(Landroid/util/KeyValueListParser;)V
    .registers 8
    .param p1, "parser"    # Landroid/util/KeyValueListParser;

    .line 100
    iget-object v0, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 101
    :try_start_3
    const-string/jumbo v1, "kv_backup_agent_timeout_millis"

    .line 102
    const-wide/16 v2, 0x7530

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mKvBackupAgentTimeoutMillis:J

    .line 105
    const-string v1, "full_backup_agent_timeout_millis"

    const-wide/32 v4, 0x493e0

    .line 106
    invoke-virtual {p1, v1, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mFullBackupAgentTimeoutMillis:J

    .line 109
    const-string/jumbo v1, "shared_backup_agent_timeout_millis"

    const-wide/32 v4, 0x1b7740

    .line 110
    invoke-virtual {p1, v1, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mSharedBackupAgentTimeoutMillis:J

    .line 113
    const-string/jumbo v1, "restore_agent_timeout_millis"

    const-wide/32 v4, 0xea60

    .line 114
    invoke-virtual {p1, v1, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mRestoreAgentTimeoutMillis:J

    .line 117
    const-string/jumbo v1, "restore_agent_finished_timeout_millis"

    .line 118
    invoke-virtual {p1, v1, v2, v3}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/backup/BackupAgentTimeoutParameters;->mRestoreAgentFinishedTimeoutMillis:J

    .line 121
    monitor-exit v0

    .line 122
    return-void

    .line 121
    :catchall_3c
    move-exception v1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_3c

    throw v1
.end method
