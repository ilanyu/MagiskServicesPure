.class public Lcom/android/server/am/JobSchedulerServiceInjector;
.super Ljava/lang/Object;
.source "JobSchedulerServiceInjector.java"


# static fields
.field private static final BATTERY_TEMPERATURE_THRESHOLD:I = 0x190

.field private static final TAG:Ljava/lang/String; = "JobSchedulerServiceInjector"

.field private static final filter:Landroid/content/IntentFilter;

.field private static isDelayState:Z

.field private static sBatteryStatus:I

.field private static sBatteryTemperature:I

.field private static sDelayEnable:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 15
    const/4 v0, 0x1

    sput v0, Lcom/android/server/am/JobSchedulerServiceInjector;->sBatteryStatus:I

    .line 16
    const/4 v0, 0x0

    sput v0, Lcom/android/server/am/JobSchedulerServiceInjector;->sBatteryTemperature:I

    .line 17
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/android/server/am/JobSchedulerServiceInjector;->filter:Landroid/content/IntentFilter;

    .line 18
    const-string/jumbo v1, "persist.sys.job_delay"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/JobSchedulerServiceInjector;->sDelayEnable:Z

    .line 19
    sput-boolean v0, Lcom/android/server/am/JobSchedulerServiceInjector;->isDelayState:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBatteryTemperature(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 40
    sget-object v0, Lcom/android/server/am/JobSchedulerServiceInjector;->filter:Landroid/content/IntentFilter;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 41
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_1d

    .line 42
    const-string/jumbo v1, "status"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/am/JobSchedulerServiceInjector;->sBatteryStatus:I

    .line 44
    const-string/jumbo v1, "temperature"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/am/JobSchedulerServiceInjector;->sBatteryTemperature:I

    .line 46
    :cond_1d
    return-void
.end method

.method public static isDelayState(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 22
    sget-boolean v0, Lcom/android/server/am/JobSchedulerServiceInjector;->sDelayEnable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_31

    if-nez p0, :cond_8

    goto :goto_31

    .line 25
    :cond_8
    invoke-static {p0}, Lcom/android/server/am/JobSchedulerServiceInjector;->getBatteryTemperature(Landroid/content/Context;)V

    .line 26
    invoke-static {}, Lcom/android/server/am/MiuiSysUserServiceHelper;->isLowMemory()Z

    move-result v0

    if-nez v0, :cond_20

    sget v0, Lcom/android/server/am/JobSchedulerServiceInjector;->sBatteryStatus:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1d

    sget v0, Lcom/android/server/am/JobSchedulerServiceInjector;->sBatteryTemperature:I

    const/16 v2, 0x190

    if-le v0, v2, :cond_1d

    goto :goto_20

    .line 31
    :cond_1d
    sput-boolean v1, Lcom/android/server/am/JobSchedulerServiceInjector;->isDelayState:Z

    goto :goto_23

    .line 29
    :cond_20
    :goto_20
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/JobSchedulerServiceInjector;->isDelayState:Z

    .line 33
    :goto_23
    sget-boolean v0, Lcom/android/server/am/JobSchedulerServiceInjector;->isDelayState:Z

    if-eqz v0, :cond_2e

    .line 34
    const-string v0, "JobSchedulerServiceInjector"

    const-string v1, "Jobs should be delayed because of low memory or high temperature"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_2e
    sget-boolean v0, Lcom/android/server/am/JobSchedulerServiceInjector;->isDelayState:Z

    return v0

    .line 23
    :cond_31
    :goto_31
    return v1
.end method
