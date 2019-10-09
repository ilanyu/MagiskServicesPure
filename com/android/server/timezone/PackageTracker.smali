.class public Lcom/android/server/timezone/PackageTracker;
.super Ljava/lang/Object;
.source "PackageTracker.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
    visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "timezone.PackageTracker"


# instance fields
.field private mCheckFailureCount:I

.field private mCheckTimeAllowedMillis:I

.field private mCheckTriggered:Z

.field private final mConfigHelper:Lcom/android/server/timezone/ConfigHelper;

.field private mDataAppPackageName:Ljava/lang/String;

.field private mDelayBeforeReliabilityCheckMillis:I

.field private final mElapsedRealtimeClock:Ljava/time/Clock;

.field private mFailedCheckRetryCount:J

.field private final mIntentHelper:Lcom/android/server/timezone/PackageTrackerIntentHelper;

.field private mLastTriggerTimestamp:Ljava/lang/Long;

.field private final mPackageManagerHelper:Lcom/android/server/timezone/PackageManagerHelper;

.field private final mPackageStatusStorage:Lcom/android/server/timezone/PackageStatusStorage;

.field private mTrackingEnabled:Z

.field private mUpdateAppPackageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/time/Clock;Lcom/android/server/timezone/ConfigHelper;Lcom/android/server/timezone/PackageManagerHelper;Lcom/android/server/timezone/PackageStatusStorage;Lcom/android/server/timezone/PackageTrackerIntentHelper;)V
    .registers 7
    .param p1, "elapsedRealtimeClock"    # Ljava/time/Clock;
    .param p2, "configHelper"    # Lcom/android/server/timezone/ConfigHelper;
    .param p3, "packageManagerHelper"    # Lcom/android/server/timezone/PackageManagerHelper;
    .param p4, "packageStatusStorage"    # Lcom/android/server/timezone/PackageStatusStorage;
    .param p5, "intentHelper"    # Lcom/android/server/timezone/PackageTrackerIntentHelper;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mLastTriggerTimestamp:Ljava/lang/Long;

    .line 113
    iput-object p1, p0, Lcom/android/server/timezone/PackageTracker;->mElapsedRealtimeClock:Ljava/time/Clock;

    .line 114
    iput-object p2, p0, Lcom/android/server/timezone/PackageTracker;->mConfigHelper:Lcom/android/server/timezone/ConfigHelper;

    .line 115
    iput-object p3, p0, Lcom/android/server/timezone/PackageTracker;->mPackageManagerHelper:Lcom/android/server/timezone/PackageManagerHelper;

    .line 116
    iput-object p4, p0, Lcom/android/server/timezone/PackageTracker;->mPackageStatusStorage:Lcom/android/server/timezone/PackageStatusStorage;

    .line 117
    iput-object p5, p0, Lcom/android/server/timezone/PackageTracker;->mIntentHelper:Lcom/android/server/timezone/PackageTrackerIntentHelper;

    .line 118
    return-void
.end method

.method static create(Landroid/content/Context;)Lcom/android/server/timezone/PackageTracker;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;

    .line 98
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeClock()Ljava/time/Clock;

    move-result-object v6

    .line 99
    .local v6, "elapsedRealtimeClock":Ljava/time/Clock;
    new-instance v2, Lcom/android/server/timezone/PackageTrackerHelperImpl;

    invoke-direct {v2, p0}, Lcom/android/server/timezone/PackageTrackerHelperImpl;-><init>(Landroid/content/Context;)V

    .line 100
    .local v2, "helperImpl":Lcom/android/server/timezone/PackageTrackerHelperImpl;
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "timezone"

    invoke-static {v0, v1}, Landroid/os/FileUtils;->createDir(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 101
    .local v7, "storageDir":Ljava/io/File;
    new-instance v8, Lcom/android/server/timezone/PackageTracker;

    new-instance v4, Lcom/android/server/timezone/PackageStatusStorage;

    invoke-direct {v4, v7}, Lcom/android/server/timezone/PackageStatusStorage;-><init>(Ljava/io/File;)V

    new-instance v5, Lcom/android/server/timezone/PackageTrackerIntentHelperImpl;

    invoke-direct {v5, p0}, Lcom/android/server/timezone/PackageTrackerIntentHelperImpl;-><init>(Landroid/content/Context;)V

    move-object v0, v8

    move-object v1, v6

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/timezone/PackageTracker;-><init>(Ljava/time/Clock;Lcom/android/server/timezone/ConfigHelper;Lcom/android/server/timezone/PackageManagerHelper;Lcom/android/server/timezone/PackageStatusStorage;Lcom/android/server/timezone/PackageTrackerIntentHelper;)V

    return-object v8
.end method

.method private isCheckInProgress()Z
    .registers 2

    .line 445
    iget-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mLastTriggerTimestamp:Ljava/lang/Long;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private isCheckResponseOverdue()Z
    .registers 9

    .line 449
    iget-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mLastTriggerTimestamp:Ljava/lang/Long;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 450
    return v1

    .line 453
    :cond_6
    iget-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mLastTriggerTimestamp:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget v0, p0, Lcom/android/server/timezone/PackageTracker;->mCheckTimeAllowedMillis:I

    int-to-long v6, v0

    add-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-lez v0, :cond_1c

    const/4 v1, 0x1

    nop

    :cond_1c
    return v1
.end method

.method private static logAndThrowRuntimeException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .registers 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 522
    const-string/jumbo v0, "timezone.PackageTracker"

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 523
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private lookupInstalledPackageVersions()Lcom/android/server/timezone/PackageVersions;
    .registers 6

    .line 460
    :try_start_0
    iget-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mPackageManagerHelper:Lcom/android/server/timezone/PackageManagerHelper;

    iget-object v1, p0, Lcom/android/server/timezone/PackageTracker;->mUpdateAppPackageName:Ljava/lang/String;

    .line 461
    invoke-interface {v0, v1}, Lcom/android/server/timezone/PackageManagerHelper;->getInstalledPackageVersion(Ljava/lang/String;)J

    move-result-wide v0

    .line 462
    .local v0, "updatePackageVersion":J
    iget-object v2, p0, Lcom/android/server/timezone/PackageTracker;->mPackageManagerHelper:Lcom/android/server/timezone/PackageManagerHelper;

    iget-object v3, p0, Lcom/android/server/timezone/PackageTracker;->mDataAppPackageName:Ljava/lang/String;

    .line 463
    invoke-interface {v2, v3}, Lcom/android/server/timezone/PackageManagerHelper;->getInstalledPackageVersion(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_10} :catch_18

    .line 468
    .local v2, "dataPackageVersion":J
    nop

    .line 467
    nop

    .line 469
    new-instance v4, Lcom/android/server/timezone/PackageVersions;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/android/server/timezone/PackageVersions;-><init>(JJ)V

    return-object v4

    .line 464
    .end local v0    # "updatePackageVersion":J
    .end local v2    # "dataPackageVersion":J
    :catch_18
    move-exception v0

    .line 465
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v1, "timezone.PackageTracker"

    const-string/jumbo v2, "lookupInstalledPackageVersions: Unable to resolve installed package versions"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 467
    const/4 v1, 0x0

    return-object v1
.end method

.method private setCheckComplete()V
    .registers 2

    .line 441
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mLastTriggerTimestamp:Ljava/lang/Long;

    .line 442
    return-void
.end method

.method private setCheckInProgress()V
    .registers 3

    .line 437
    iget-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mLastTriggerTimestamp:Ljava/lang/Long;

    .line 438
    return-void
.end method

.method private throwIfDeviceSettingsOrAppsAreBad()V
    .registers 5

    .line 173
    iget-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mUpdateAppPackageName:Ljava/lang/String;

    const-string v1, "Update app package name missing."

    invoke-static {v0, v1}, Lcom/android/server/timezone/PackageTracker;->throwRuntimeExceptionIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mDataAppPackageName:Ljava/lang/String;

    const-string v1, "Data app package name missing."

    invoke-static {v0, v1}, Lcom/android/server/timezone/PackageTracker;->throwRuntimeExceptionIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-wide v0, p0, Lcom/android/server/timezone/PackageTracker;->mFailedCheckRetryCount:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-ltz v0, :cond_f5

    .line 179
    iget v0, p0, Lcom/android/server/timezone/PackageTracker;->mCheckTimeAllowedMillis:I

    const/16 v2, 0x3e8

    if-lt v0, v2, :cond_dc

    .line 186
    :try_start_1d
    iget-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mPackageManagerHelper:Lcom/android/server/timezone/PackageManagerHelper;

    iget-object v2, p0, Lcom/android/server/timezone/PackageTracker;->mUpdateAppPackageName:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/android/server/timezone/PackageManagerHelper;->isPrivilegedApp(Ljava/lang/String;)Z

    move-result v0
    :try_end_25
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1d .. :try_end_25} :catch_c3

    if-eqz v0, :cond_a6

    .line 193
    nop

    .line 194
    const-string/jumbo v0, "timezone.PackageTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/timezone/PackageTracker;->mUpdateAppPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is valid."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :try_start_46
    iget-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mPackageManagerHelper:Lcom/android/server/timezone/PackageManagerHelper;

    iget-object v2, p0, Lcom/android/server/timezone/PackageTracker;->mDataAppPackageName:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/android/server/timezone/PackageManagerHelper;->isPrivilegedApp(Ljava/lang/String;)Z

    move-result v0
    :try_end_4e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_46 .. :try_end_4e} :catch_8d

    if-eqz v0, :cond_70

    .line 205
    nop

    .line 206
    const-string/jumbo v0, "timezone.PackageTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data app "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/timezone/PackageTracker;->mDataAppPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is valid."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    return-void

    .line 199
    :cond_70
    :try_start_70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data app "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/timezone/PackageTracker;->mDataAppPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " must be a priv-app."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/server/timezone/PackageTracker;->logAndThrowRuntimeException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_8d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_70 .. :try_end_8d} :catch_8d

    .line 202
    :catch_8d
    move-exception v0

    .line 203
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not determine data app package details for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/timezone/PackageTracker;->mDataAppPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/server/timezone/PackageTracker;->logAndThrowRuntimeException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 187
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_a6
    :try_start_a6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update app "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/timezone/PackageTracker;->mUpdateAppPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " must be a priv-app."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/server/timezone/PackageTracker;->logAndThrowRuntimeException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_c3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a6 .. :try_end_c3} :catch_c3

    .line 190
    :catch_c3
    move-exception v0

    .line 191
    .restart local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not determine update app package details for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/timezone/PackageTracker;->mUpdateAppPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/server/timezone/PackageTracker;->logAndThrowRuntimeException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 180
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_dc
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mCheckTimeAllowedMillis="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/timezone/PackageTracker;->mCheckTimeAllowedMillis:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/server/timezone/PackageTracker;->logAndThrowRuntimeException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 177
    :cond_f5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mFailedRetryCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/timezone/PackageTracker;->mFailedCheckRetryCount:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/server/timezone/PackageTracker;->logAndThrowRuntimeException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private static throwRuntimeExceptionIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .line 516
    if-eqz p0, :cond_d

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 519
    return-void

    .line 517
    :cond_d
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/timezone/PackageTracker;->logAndThrowRuntimeException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private validateDataAppManifest()Z
    .registers 4

    .line 477
    iget-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mPackageManagerHelper:Lcom/android/server/timezone/PackageManagerHelper;

    const-string v1, "com.android.timezone"

    iget-object v2, p0, Lcom/android/server/timezone/PackageTracker;->mDataAppPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/android/server/timezone/PackageManagerHelper;->contentProviderRegistered(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 480
    const-string/jumbo v0, "timezone.PackageTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "validateDataAppManifest: Data app "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/timezone/PackageTracker;->mDataAppPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not expose the required provider with authority="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "com.android.timezone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    const/4 v0, 0x0

    return v0

    .line 485
    :cond_32
    const/4 v0, 0x1

    return v0
.end method

.method private validateUpdaterAppManifest()Z
    .registers 6

    .line 493
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/timezone/PackageTracker;->mPackageManagerHelper:Lcom/android/server/timezone/PackageManagerHelper;

    iget-object v2, p0, Lcom/android/server/timezone/PackageTracker;->mUpdateAppPackageName:Ljava/lang/String;

    const-string v3, "android.permission.UPDATE_TIME_ZONE_RULES"

    invoke-interface {v1, v2, v3}, Lcom/android/server/timezone/PackageManagerHelper;->usesPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 496
    const-string/jumbo v1, "timezone.PackageTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "validateUpdaterAppManifest: Updater app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/timezone/PackageTracker;->mDataAppPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " does not use permission="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "android.permission.UPDATE_TIME_ZONE_RULES"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    return v0

    .line 501
    :cond_32
    iget-object v1, p0, Lcom/android/server/timezone/PackageTracker;->mPackageManagerHelper:Lcom/android/server/timezone/PackageManagerHelper;

    iget-object v2, p0, Lcom/android/server/timezone/PackageTracker;->mUpdateAppPackageName:Ljava/lang/String;

    .line 502
    invoke-static {v2}, Landroid/app/timezone/RulesUpdaterContract;->createUpdaterIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.permission.TRIGGER_TIME_ZONE_RULES_CHECK"

    .line 501
    invoke-interface {v1, v2, v3}, Lcom/android/server/timezone/PackageManagerHelper;->receiverRegistered(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v1
    :try_end_40
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_40} :catch_45

    if-nez v1, :cond_43

    .line 504
    return v0

    .line 507
    :cond_43
    const/4 v0, 0x1

    return v0

    .line 508
    :catch_45
    move-exception v1

    .line 509
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v2, "timezone.PackageTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "validateUpdaterAppManifest: Updater app "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/timezone/PackageTracker;->mDataAppPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " does not expose the required broadcast receiver."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 511
    return v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "fout"    # Ljava/io/PrintWriter;

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PackageTrackerState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/timezone/PackageTracker;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 528
    iget-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mPackageStatusStorage:Lcom/android/server/timezone/PackageStatusStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/timezone/PackageStatusStorage;->dump(Ljava/io/PrintWriter;)V

    .line 529
    return-void
.end method

.method protected getCheckFailureCountForTests()I
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 433
    iget v0, p0, Lcom/android/server/timezone/PackageTracker;->mCheckFailureCount:I

    return v0
.end method

.method protected declared-synchronized recordCheckResult(Lcom/android/server/timezone/CheckToken;Z)V
    .registers 7
    .param p1, "checkToken"    # Lcom/android/server/timezone/CheckToken;
    .param p2, "success"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    monitor-enter p0

    .line 343
    :try_start_1
    const-string/jumbo v0, "timezone.PackageTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "recordOperationResult: checkToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " success="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-boolean v0, p0, Lcom/android/server/timezone/PackageTracker;->mTrackingEnabled:Z

    if-nez v0, :cond_55

    .line 354
    if-nez p1, :cond_31

    .line 357
    const-string/jumbo v0, "timezone.PackageTracker"

    const-string/jumbo v1, "recordCheckResult: Tracking is disabled and no token has been provided. Resetting tracking state."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    .line 363
    :cond_31
    const-string/jumbo v0, "timezone.PackageTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "recordCheckResult: Tracking is disabled and a token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " has been unexpectedly provided. Resetting tracking state."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :goto_4e
    iget-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mPackageStatusStorage:Lcom/android/server/timezone/PackageStatusStorage;

    invoke-virtual {v0}, Lcom/android/server/timezone/PackageStatusStorage;->resetCheckState()V
    :try_end_53
    .catchall {:try_start_1 .. :try_end_53} :catchall_ca

    .line 367
    monitor-exit p0

    return-void

    .line 370
    :cond_55
    const/4 v0, 0x0

    if-nez p1, :cond_71

    .line 389
    :try_start_58
    const-string/jumbo v1, "timezone.PackageTracker"

    const-string/jumbo v2, "recordCheckResult: Unexpectedly missing checkToken, resetting storage state."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-object v1, p0, Lcom/android/server/timezone/PackageTracker;->mPackageStatusStorage:Lcom/android/server/timezone/PackageStatusStorage;

    invoke-virtual {v1}, Lcom/android/server/timezone/PackageStatusStorage;->resetCheckState()V

    .line 395
    iget-object v1, p0, Lcom/android/server/timezone/PackageTracker;->mIntentHelper:Lcom/android/server/timezone/PackageTrackerIntentHelper;

    iget v2, p0, Lcom/android/server/timezone/PackageTracker;->mDelayBeforeReliabilityCheckMillis:I

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lcom/android/server/timezone/PackageTrackerIntentHelper;->scheduleReliabilityTrigger(J)V

    .line 396
    iput v0, p0, Lcom/android/server/timezone/PackageTracker;->mCheckFailureCount:I

    goto :goto_c8

    .line 400
    :cond_71
    iget-object v1, p0, Lcom/android/server/timezone/PackageTracker;->mPackageStatusStorage:Lcom/android/server/timezone/PackageStatusStorage;

    .line 401
    invoke-virtual {v1, p1, p2}, Lcom/android/server/timezone/PackageStatusStorage;->markChecked(Lcom/android/server/timezone/CheckToken;Z)Z

    move-result v1

    .line 402
    .local v1, "recordedCheckCompleteSuccessfully":Z
    if-eqz v1, :cond_95

    .line 405
    invoke-direct {p0}, Lcom/android/server/timezone/PackageTracker;->setCheckComplete()V

    .line 407
    if-eqz p2, :cond_86

    .line 410
    iget-object v2, p0, Lcom/android/server/timezone/PackageTracker;->mIntentHelper:Lcom/android/server/timezone/PackageTrackerIntentHelper;

    invoke-interface {v2}, Lcom/android/server/timezone/PackageTrackerIntentHelper;->unscheduleReliabilityTrigger()V

    .line 411
    iput v0, p0, Lcom/android/server/timezone/PackageTracker;->mCheckFailureCount:I

    goto :goto_c8

    .line 414
    :cond_86
    iget-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mIntentHelper:Lcom/android/server/timezone/PackageTrackerIntentHelper;

    iget v2, p0, Lcom/android/server/timezone/PackageTracker;->mDelayBeforeReliabilityCheckMillis:I

    int-to-long v2, v2

    invoke-interface {v0, v2, v3}, Lcom/android/server/timezone/PackageTrackerIntentHelper;->scheduleReliabilityTrigger(J)V

    .line 415
    iget v0, p0, Lcom/android/server/timezone/PackageTracker;->mCheckFailureCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/timezone/PackageTracker;->mCheckFailureCount:I

    goto :goto_c8

    .line 420
    :cond_95
    const-string/jumbo v0, "timezone.PackageTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "recordCheckResult: could not update token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " with success="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ". Optimistic lock failure"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mIntentHelper:Lcom/android/server/timezone/PackageTrackerIntentHelper;

    iget v2, p0, Lcom/android/server/timezone/PackageTracker;->mDelayBeforeReliabilityCheckMillis:I

    int-to-long v2, v2

    invoke-interface {v0, v2, v3}, Lcom/android/server/timezone/PackageTrackerIntentHelper;->scheduleReliabilityTrigger(J)V

    .line 425
    iget v0, p0, Lcom/android/server/timezone/PackageTracker;->mCheckFailureCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/timezone/PackageTracker;->mCheckFailureCount:I
    :try_end_c8
    .catchall {:try_start_58 .. :try_end_c8} :catchall_ca

    .line 428
    .end local v1    # "recordedCheckCompleteSuccessfully":Z
    :goto_c8
    monitor-exit p0

    return-void

    .line 342
    .end local p1    # "checkToken":Lcom/android/server/timezone/CheckToken;
    .end local p2    # "success":Z
    :catchall_ca
    move-exception p1

    monitor-exit p0

    .line 342
    .end local p0    # "this":Lcom/android/server/timezone/PackageTracker;
    throw p1
.end method

.method protected declared-synchronized start()Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    monitor-enter p0

    .line 122
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mConfigHelper:Lcom/android/server/timezone/ConfigHelper;

    invoke-interface {v0}, Lcom/android/server/timezone/ConfigHelper;->isTrackingEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/timezone/PackageTracker;->mTrackingEnabled:Z

    .line 123
    iget-boolean v0, p0, Lcom/android/server/timezone/PackageTracker;->mTrackingEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_18

    .line 124
    const-string/jumbo v0, "timezone.PackageTracker"

    const-string v2, "Time zone updater / data package tracking explicitly disabled."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_75

    .line 125
    monitor-exit p0

    return v1

    .line 128
    :cond_18
    :try_start_18
    iget-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mConfigHelper:Lcom/android/server/timezone/ConfigHelper;

    invoke-interface {v0}, Lcom/android/server/timezone/ConfigHelper;->getUpdateAppPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mUpdateAppPackageName:Ljava/lang/String;

    .line 129
    iget-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mConfigHelper:Lcom/android/server/timezone/ConfigHelper;

    invoke-interface {v0}, Lcom/android/server/timezone/ConfigHelper;->getDataAppPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mDataAppPackageName:Ljava/lang/String;

    .line 130
    iget-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mConfigHelper:Lcom/android/server/timezone/ConfigHelper;

    invoke-interface {v0}, Lcom/android/server/timezone/ConfigHelper;->getCheckTimeAllowedMillis()I

    move-result v0

    iput v0, p0, Lcom/android/server/timezone/PackageTracker;->mCheckTimeAllowedMillis:I

    .line 131
    iget-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mConfigHelper:Lcom/android/server/timezone/ConfigHelper;

    invoke-interface {v0}, Lcom/android/server/timezone/ConfigHelper;->getFailedCheckRetryCount()I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, p0, Lcom/android/server/timezone/PackageTracker;->mFailedCheckRetryCount:J

    .line 132
    iget v0, p0, Lcom/android/server/timezone/PackageTracker;->mCheckTimeAllowedMillis:I

    const v2, 0xea60

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/timezone/PackageTracker;->mDelayBeforeReliabilityCheckMillis:I

    .line 137
    invoke-direct {p0}, Lcom/android/server/timezone/PackageTracker;->throwIfDeviceSettingsOrAppsAreBad()V

    .line 140
    iput-boolean v1, p0, Lcom/android/server/timezone/PackageTracker;->mCheckTriggered:Z

    .line 141
    iput v1, p0, Lcom/android/server/timezone/PackageTracker;->mCheckFailureCount:I
    :try_end_48
    .catchall {:try_start_18 .. :try_end_48} :catchall_75

    .line 145
    :try_start_48
    iget-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mPackageStatusStorage:Lcom/android/server/timezone/PackageStatusStorage;

    invoke-virtual {v0}, Lcom/android/server/timezone/PackageStatusStorage;->initialize()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4d} :catch_6a
    .catchall {:try_start_48 .. :try_end_4d} :catchall_75

    .line 149
    nop

    .line 152
    :try_start_4e
    iget-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mIntentHelper:Lcom/android/server/timezone/PackageTrackerIntentHelper;

    iget-object v1, p0, Lcom/android/server/timezone/PackageTracker;->mUpdateAppPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/timezone/PackageTracker;->mDataAppPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p0}, Lcom/android/server/timezone/PackageTrackerIntentHelper;->initialize(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/timezone/PackageTracker;)V

    .line 157
    iget-object v0, p0, Lcom/android/server/timezone/PackageTracker;->mIntentHelper:Lcom/android/server/timezone/PackageTrackerIntentHelper;

    iget v1, p0, Lcom/android/server/timezone/PackageTracker;->mDelayBeforeReliabilityCheckMillis:I

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/server/timezone/PackageTrackerIntentHelper;->scheduleReliabilityTrigger(J)V

    .line 159
    const-string/jumbo v0, "timezone.PackageTracker"

    const-string v1, "Time zone updater / data package tracking enabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catchall {:try_start_4e .. :try_end_67} :catchall_75

    .line 160
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 146
    :catch_6a
    move-exception v0

    .line 147
    .local v0, "e":Ljava/io/IOException;
    :try_start_6b
    const-string/jumbo v2, "timezone.PackageTracker"

    const-string v3, "PackageTracker storage could not be initialized."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_73
    .catchall {:try_start_6b .. :try_end_73} :catchall_75

    .line 148
    monitor-exit p0

    return v1

    .line 121
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_75
    move-exception v0

    monitor-exit p0

    .line 121
    .end local p0    # "this":Lcom/android/server/timezone/PackageTracker;
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PackageTracker{mTrackingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/timezone/PackageTracker;->mTrackingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mUpdateAppPackageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/timezone/PackageTracker;->mUpdateAppPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mDataAppPackageName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/timezone/PackageTracker;->mDataAppPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mCheckTimeAllowedMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/timezone/PackageTracker;->mCheckTimeAllowedMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDelayBeforeReliabilityCheckMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/timezone/PackageTracker;->mDelayBeforeReliabilityCheckMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mFailedCheckRetryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/timezone/PackageTracker;->mFailedCheckRetryCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mLastTriggerTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/timezone/PackageTracker;->mLastTriggerTimestamp:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCheckTriggered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/timezone/PackageTracker;->mCheckTriggered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mCheckFailureCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/timezone/PackageTracker;->mCheckFailureCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized triggerUpdateIfNeeded(Z)V
    .registers 10
    .param p1, "packageChanged"    # Z

    monitor-enter p0

    .line 217
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/timezone/PackageTracker;->mTrackingEnabled:Z

    if-eqz v0, :cond_154

    .line 225
    invoke-direct {p0}, Lcom/android/server/timezone/PackageTracker;->validateUpdaterAppManifest()Z

    move-result v0

    .line 226
    .local v0, "updaterAppManifestValid":Z
    invoke-direct {p0}, Lcom/android/server/timezone/PackageTracker;->validateDataAppManifest()Z

    move-result v1

    .line 227
    .local v1, "dataAppManifestValid":Z
    if-eqz v0, :cond_12e

    if-nez v1, :cond_13

    goto/16 :goto_12e

    .line 237
    :cond_13
    if-nez p1, :cond_6f

    .line 248
    iget-boolean v2, p0, Lcom/android/server/timezone/PackageTracker;->mCheckTriggered:Z

    if-nez v2, :cond_23

    .line 250
    const-string/jumbo v2, "timezone.PackageTracker"

    const-string/jumbo v3, "triggerUpdateIfNeeded: First reliability trigger."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6f

    .line 251
    :cond_23
    invoke-direct {p0}, Lcom/android/server/timezone/PackageTracker;->isCheckInProgress()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 253
    invoke-direct {p0}, Lcom/android/server/timezone/PackageTracker;->isCheckResponseOverdue()Z

    move-result v2

    if-nez v2, :cond_6f

    .line 255
    const-string/jumbo v2, "timezone.PackageTracker"

    const-string/jumbo v3, "triggerUpdateIfNeeded: checkComplete call is not yet overdue. Not triggering."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v2, p0, Lcom/android/server/timezone/PackageTracker;->mIntentHelper:Lcom/android/server/timezone/PackageTrackerIntentHelper;

    iget v3, p0, Lcom/android/server/timezone/PackageTracker;->mDelayBeforeReliabilityCheckMillis:I

    int-to-long v3, v3

    invoke-interface {v2, v3, v4}, Lcom/android/server/timezone/PackageTrackerIntentHelper;->scheduleReliabilityTrigger(J)V
    :try_end_40
    .catchall {:try_start_1 .. :try_end_40} :catchall_15c

    .line 260
    monitor-exit p0

    return-void

    .line 262
    :cond_42
    :try_start_42
    iget v2, p0, Lcom/android/server/timezone/PackageTracker;->mCheckFailureCount:I

    int-to-long v2, v2

    iget-wide v4, p0, Lcom/android/server/timezone/PackageTracker;->mFailedCheckRetryCount:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_5b

    .line 265
    const-string/jumbo v2, "timezone.PackageTracker"

    const-string/jumbo v3, "triggerUpdateIfNeeded: number of allowed consecutive check failures exceeded. Stopping reliability triggers until next reboot or package update."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v2, p0, Lcom/android/server/timezone/PackageTracker;->mIntentHelper:Lcom/android/server/timezone/PackageTrackerIntentHelper;

    invoke-interface {v2}, Lcom/android/server/timezone/PackageTrackerIntentHelper;->unscheduleReliabilityTrigger()V
    :try_end_59
    .catchall {:try_start_42 .. :try_end_59} :catchall_15c

    .line 269
    monitor-exit p0

    return-void

    .line 270
    :cond_5b
    :try_start_5b
    iget v2, p0, Lcom/android/server/timezone/PackageTracker;->mCheckFailureCount:I

    if-nez v2, :cond_6f

    .line 272
    const-string/jumbo v2, "timezone.PackageTracker"

    const-string/jumbo v3, "triggerUpdateIfNeeded: No reliability check required. Last check was successful."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v2, p0, Lcom/android/server/timezone/PackageTracker;->mIntentHelper:Lcom/android/server/timezone/PackageTrackerIntentHelper;

    invoke-interface {v2}, Lcom/android/server/timezone/PackageTrackerIntentHelper;->unscheduleReliabilityTrigger()V
    :try_end_6d
    .catchall {:try_start_5b .. :try_end_6d} :catchall_15c

    .line 275
    monitor-exit p0

    return-void

    .line 280
    :cond_6f
    :goto_6f
    :try_start_6f
    invoke-direct {p0}, Lcom/android/server/timezone/PackageTracker;->lookupInstalledPackageVersions()Lcom/android/server/timezone/PackageVersions;

    move-result-object v2

    .line 281
    .local v2, "currentInstalledVersions":Lcom/android/server/timezone/PackageVersions;
    if-nez v2, :cond_85

    .line 283
    const-string/jumbo v3, "timezone.PackageTracker"

    const-string/jumbo v4, "triggerUpdateIfNeeded: currentInstalledVersions was null"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v3, p0, Lcom/android/server/timezone/PackageTracker;->mIntentHelper:Lcom/android/server/timezone/PackageTrackerIntentHelper;

    invoke-interface {v3}, Lcom/android/server/timezone/PackageTrackerIntentHelper;->unscheduleReliabilityTrigger()V
    :try_end_83
    .catchall {:try_start_6f .. :try_end_83} :catchall_15c

    .line 285
    monitor-exit p0

    return-void

    .line 290
    :cond_85
    :try_start_85
    iget-object v3, p0, Lcom/android/server/timezone/PackageTracker;->mPackageStatusStorage:Lcom/android/server/timezone/PackageStatusStorage;

    invoke-virtual {v3}, Lcom/android/server/timezone/PackageStatusStorage;->getPackageStatus()Lcom/android/server/timezone/PackageStatus;

    move-result-object v3

    .line 291
    .local v3, "packageStatus":Lcom/android/server/timezone/PackageStatus;
    if-nez v3, :cond_97

    .line 294
    const-string/jumbo v4, "timezone.PackageTracker"

    const-string/jumbo v5, "triggerUpdateIfNeeded: No package status data found. Data check needed."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_fe

    .line 295
    :cond_97
    iget-object v4, v3, Lcom/android/server/timezone/PackageStatus;->mVersions:Lcom/android/server/timezone/PackageVersions;

    invoke-virtual {v4, v2}, Lcom/android/server/timezone/PackageVersions;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c7

    .line 298
    const-string/jumbo v4, "timezone.PackageTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "triggerUpdateIfNeeded: Stored package versions="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/android/server/timezone/PackageStatus;->mVersions:Lcom/android/server/timezone/PackageVersions;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", do not match current package versions="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ". Triggering check."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_fe

    .line 302
    :cond_c7
    const-string/jumbo v4, "timezone.PackageTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "triggerUpdateIfNeeded: Stored package versions match currently installed versions, currentInstalledVersions="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", packageStatus.mCheckStatus="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lcom/android/server/timezone/PackageStatus;->mCheckStatus:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget v4, v3, Lcom/android/server/timezone/PackageStatus;->mCheckStatus:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_fe

    .line 308
    const-string/jumbo v4, "timezone.PackageTracker"

    const-string/jumbo v5, "triggerUpdateIfNeeded: Prior check succeeded. No need to trigger."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v4, p0, Lcom/android/server/timezone/PackageTracker;->mIntentHelper:Lcom/android/server/timezone/PackageTrackerIntentHelper;

    invoke-interface {v4}, Lcom/android/server/timezone/PackageTrackerIntentHelper;->unscheduleReliabilityTrigger()V
    :try_end_fc
    .catchall {:try_start_85 .. :try_end_fc} :catchall_15c

    .line 310
    monitor-exit p0

    return-void

    .line 315
    :cond_fe
    :goto_fe
    :try_start_fe
    iget-object v4, p0, Lcom/android/server/timezone/PackageTracker;->mPackageStatusStorage:Lcom/android/server/timezone/PackageStatusStorage;

    .line 316
    invoke-virtual {v4, v2}, Lcom/android/server/timezone/PackageStatusStorage;->generateCheckToken(Lcom/android/server/timezone/PackageVersions;)Lcom/android/server/timezone/CheckToken;

    move-result-object v4

    .line 317
    .local v4, "checkToken":Lcom/android/server/timezone/CheckToken;
    if-nez v4, :cond_119

    .line 318
    const-string/jumbo v5, "timezone.PackageTracker"

    const-string/jumbo v6, "triggerUpdateIfNeeded: Unable to generate check token. Not sending check request."

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v5, p0, Lcom/android/server/timezone/PackageTracker;->mIntentHelper:Lcom/android/server/timezone/PackageTrackerIntentHelper;

    iget v6, p0, Lcom/android/server/timezone/PackageTracker;->mDelayBeforeReliabilityCheckMillis:I

    int-to-long v6, v6

    invoke-interface {v5, v6, v7}, Lcom/android/server/timezone/PackageTrackerIntentHelper;->scheduleReliabilityTrigger(J)V
    :try_end_117
    .catchall {:try_start_fe .. :try_end_117} :catchall_15c

    .line 322
    monitor-exit p0

    return-void

    .line 326
    :cond_119
    :try_start_119
    iget-object v5, p0, Lcom/android/server/timezone/PackageTracker;->mIntentHelper:Lcom/android/server/timezone/PackageTrackerIntentHelper;

    invoke-interface {v5, v4}, Lcom/android/server/timezone/PackageTrackerIntentHelper;->sendTriggerUpdateCheck(Lcom/android/server/timezone/CheckToken;)V

    .line 327
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/timezone/PackageTracker;->mCheckTriggered:Z

    .line 330
    invoke-direct {p0}, Lcom/android/server/timezone/PackageTracker;->setCheckInProgress()V

    .line 334
    iget-object v5, p0, Lcom/android/server/timezone/PackageTracker;->mIntentHelper:Lcom/android/server/timezone/PackageTrackerIntentHelper;

    iget v6, p0, Lcom/android/server/timezone/PackageTracker;->mDelayBeforeReliabilityCheckMillis:I

    int-to-long v6, v6

    invoke-interface {v5, v6, v7}, Lcom/android/server/timezone/PackageTrackerIntentHelper;->scheduleReliabilityTrigger(J)V
    :try_end_12c
    .catchall {:try_start_119 .. :try_end_12c} :catchall_15c

    .line 335
    monitor-exit p0

    return-void

    .line 228
    .end local v2    # "currentInstalledVersions":Lcom/android/server/timezone/PackageVersions;
    .end local v3    # "packageStatus":Lcom/android/server/timezone/PackageStatus;
    .end local v4    # "checkToken":Lcom/android/server/timezone/CheckToken;
    :cond_12e
    :goto_12e
    :try_start_12e
    const-string/jumbo v2, "timezone.PackageTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No update triggered due to invalid application manifest entries. updaterApp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", dataApp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v2, p0, Lcom/android/server/timezone/PackageTracker;->mIntentHelper:Lcom/android/server/timezone/PackageTrackerIntentHelper;

    invoke-interface {v2}, Lcom/android/server/timezone/PackageTrackerIntentHelper;->unscheduleReliabilityTrigger()V
    :try_end_152
    .catchall {:try_start_12e .. :try_end_152} :catchall_15c

    .line 234
    monitor-exit p0

    return-void

    .line 218
    .end local v0    # "updaterAppManifestValid":Z
    .end local v1    # "dataAppManifestValid":Z
    :cond_154
    :try_start_154
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected call. Tracking is disabled."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_15c
    .catchall {:try_start_154 .. :try_end_15c} :catchall_15c

    .line 216
    .end local p1    # "packageChanged":Z
    :catchall_15c
    move-exception p1

    monitor-exit p0

    .line 216
    .end local p0    # "this":Lcom/android/server/timezone/PackageTracker;
    throw p1
.end method
