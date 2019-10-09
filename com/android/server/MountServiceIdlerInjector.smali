.class Lcom/android/server/MountServiceIdlerInjector;
.super Ljava/lang/Object;
.source "MountServiceIdlerInjector.java"


# static fields
.field private static final FINISH_INTERVAL_TIME:J = 0x6ddd00L

.field private static final MINIMUM_BATTERY_LEVEL:I = 0xa

.field private static final MINIMUM_INTERVAL_TIME:J = 0x1b7740L

.field private static final TAG:Ljava/lang/String; = "MountServiceIdlerInjector"

.field private static sNextTrimDuration:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 28
    const-wide/32 v0, 0x6ddd00

    sput-wide v0, Lcom/android/server/MountServiceIdlerInjector;->sNextTrimDuration:J

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static canExecuteAsyncDiscard(Landroid/content/Context;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .line 46
    const-string v0, "batterymanager"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    .line 47
    .local v0, "bm":Landroid/os/BatteryManager;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v1

    .line 49
    .local v1, "batteryLevel":I
    const-string/jumbo v2, "power"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 50
    .local v2, "pm":Landroid/os/PowerManager;
    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v3

    .line 52
    .local v3, "isInteractive":Z
    if-nez v3, :cond_22

    const/16 v4, 0xa

    if-lt v1, v4, :cond_22

    .line 53
    const/4 v4, 0x1

    return v4

    .line 55
    :cond_22
    const/4 v4, 0x0

    return v4
.end method

.method public static halveNextTrimDuration()V
    .registers 3

    .line 64
    sget-wide v0, Lcom/android/server/MountServiceIdlerInjector;->sNextTrimDuration:J

    const/4 v2, 0x1

    shr-long/2addr v0, v2

    sput-wide v0, Lcom/android/server/MountServiceIdlerInjector;->sNextTrimDuration:J

    .line 65
    return-void
.end method

.method public static internalScheduleIdlePass(Landroid/content/Context;ILandroid/content/ComponentName;)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "jobId"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;

    .line 33
    const-string v0, "MountServiceIdlerInjector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sNextTrimDuration :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/server/MountServiceIdlerInjector;->sNextTrimDuration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const-string/jumbo v0, "jobscheduler"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 36
    .local v0, "tm":Landroid/app/job/JobScheduler;
    sget-wide v1, Lcom/android/server/MountServiceIdlerInjector;->sNextTrimDuration:J

    const-wide/32 v3, 0x1b7740

    cmp-long v1, v1, v3

    if-gez v1, :cond_2d

    .line 37
    sput-wide v3, Lcom/android/server/MountServiceIdlerInjector;->sNextTrimDuration:J

    .line 39
    :cond_2d
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    invoke-direct {v1, p1, p2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 40
    .local v1, "builder":Landroid/app/job/JobInfo$Builder;
    sget-wide v2, Lcom/android/server/MountServiceIdlerInjector;->sNextTrimDuration:J

    invoke-virtual {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 41
    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 42
    return-void
.end method

.method public static resetNextTrimDuration()V
    .registers 2

    .line 60
    const-wide/32 v0, 0x6ddd00

    sput-wide v0, Lcom/android/server/MountServiceIdlerInjector;->sNextTrimDuration:J

    .line 61
    return-void
.end method
