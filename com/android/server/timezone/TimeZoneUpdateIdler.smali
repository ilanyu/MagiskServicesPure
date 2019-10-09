.class public final Lcom/android/server/timezone/TimeZoneUpdateIdler;
.super Landroid/app/job/JobService;
.source "TimeZoneUpdateIdler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "timezone.TimeZoneUpdateIdler"

.field private static final TIME_ZONE_UPDATE_IDLE_JOB_ID:I = 0x19ca201


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static schedule(Landroid/content/Context;J)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "minimumDelayMillis"    # J

    .line 70
    const-string/jumbo v0, "jobscheduler"

    .line 71
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 74
    .local v0, "jobScheduler":Landroid/app/job/JobScheduler;
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/server/timezone/TimeZoneUpdateIdler;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    .local v1, "idlerJobServiceName":Landroid/content/ComponentName;
    new-instance v2, Landroid/app/job/JobInfo$Builder;

    const v3, 0x19ca201

    invoke-direct {v2, v3, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 81
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    .line 82
    invoke-virtual {v2, v3}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    .line 83
    invoke-virtual {v2, p1, p2}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    .line 85
    .local v2, "jobInfoBuilder":Landroid/app/job/JobInfo$Builder;
    const-string/jumbo v3, "timezone.TimeZoneUpdateIdler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "schedule() called: minimumDelayMillis="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {v2}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 87
    return-void
.end method

.method public static unschedule(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 95
    const-string/jumbo v0, "jobscheduler"

    .line 96
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 97
    .local v0, "jobScheduler":Landroid/app/job/JobScheduler;
    const-string/jumbo v1, "timezone.TimeZoneUpdateIdler"

    const-string/jumbo v2, "unschedule() called"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const v1, 0x19ca201

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 99
    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 5
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 42
    const-class v0, Lcom/android/server/timezone/RulesManagerService;

    .line 43
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/timezone/RulesManagerService;

    .line 45
    .local v0, "rulesManagerService":Lcom/android/server/timezone/RulesManagerService;
    const-string/jumbo v1, "timezone.TimeZoneUpdateIdler"

    const-string/jumbo v2, "onStartJob() called"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-virtual {v0}, Lcom/android/server/timezone/RulesManagerService;->notifyIdle()V

    .line 52
    const/4 v1, 0x0

    return v1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 6
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .line 58
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getStopReason()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 59
    .local v0, "reschedule":Z
    :goto_9
    const-string/jumbo v1, "timezone.TimeZoneUpdateIdler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onStopJob() called: Reschedule="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return v0
.end method
