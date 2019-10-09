.class public final Lcom/android/server/BatteryService;
.super Lcom/android/server/SystemService;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BatteryService$HealthServiceWrapper;,
        Lcom/android/server/BatteryService$LocalService;,
        Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;,
        Lcom/android/server/BatteryService$BinderService;,
        Lcom/android/server/BatteryService$HealthHalCallback;,
        Lcom/android/server/BatteryService$Led;,
        Lcom/android/server/BatteryService$Shell;,
        Lcom/android/server/BatteryService$BatteryUEventObserver;
    }
.end annotation


# static fields
.field private static final BATTERY_LEVEL_CHANGE_THROTTLE_MS:J = 0xea60L

.field private static final BATTERY_PLUGGED_NONE:I = 0x0

.field private static final BATTERY_SCALE:I = 0x64

.field private static final CONNECTOR_HEALTH_EVENT:Ljava/lang/String; = "POWER_SUPPLY_CONNECTOR_HEALTH"

.field private static final DEBUG:Z = false

.field private static final DUMPSYS_ARGS:[Ljava/lang/String;

.field private static final DUMPSYS_DATA_PATH:Ljava/lang/String; = "/data/system/"

.field private static final HEALTH_HAL_WAIT_MS:J = 0x3e8L

.field private static final HVDCP3_TYPE_EVENT:Ljava/lang/String; = "POWER_SUPPLY_HVDCP3_TYPE"

.field private static final MAX_BATTERY_LEVELS_QUEUE_SIZE:I = 0x64

.field static final OPTION_FORCE_UPDATE:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field private mBatteryLevelCritical:Z

.field private mBatteryLevelLow:Z

.field private mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mBatteryPropertiesRegistrar:Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field mBinderService:Lcom/android/server/BatteryService$BinderService;

.field private mChargeStartLevel:I

.field private mChargeStartTime:J

.field private final mContext:Landroid/content/Context;

.field private mCriticalBatteryLevel:I

.field private mDischargeStartLevel:I

.field private mDischargeStartTime:J

.field private final mHandler:Landroid/os/Handler;

.field private mHealthHalCallback:Lcom/android/server/BatteryService$HealthHalCallback;

.field private mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

.field private mHealthServiceWrapper:Lcom/android/server/BatteryService$HealthServiceWrapper;

.field private mInvalidCharger:I

.field private mLastBatteryHealth:I

.field private mLastBatteryLevel:I

.field private mLastBatteryLevelChangedSentMs:J

.field private mLastBatteryLevelCritical:Z

.field private mLastBatteryPresent:Z

.field private mLastBatteryStatus:I

.field private mLastBatteryTemperature:I

.field private mLastBatteryVoltage:I

.field private mLastChargeCounter:I

.field private final mLastHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

.field private mLastHvdcpType:I

.field private mLastInvalidCharger:I

.field private mLastMaxChargingCurrent:I

.field private mLastMaxChargingVoltage:I

.field private mLastPlugType:I

.field private mLastUsbConnectorHealth:I

.field private mLed:Lcom/android/server/BatteryService$Led;

.field private final mLock:Ljava/lang/Object;

.field private mLowBatteryCloseWarningLevel:I

.field private mLowBatteryWarningLevel:I

.field private mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mPlugType:I

.field private mSentLowBatteryBroadcast:Z

.field private mSequence:I

.field private mShutdownBatteryTemperature:I

.field private final mUEventObserver:Landroid/os/UEventObserver;

.field private mUpdatesStopped:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 119
    const-class v0, Lcom/android/server/BatteryService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    .line 133
    const-string v0, "--checkin"

    const-string v1, "--unplugged"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/BatteryService;->DUMPSYS_ARGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 284
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 152
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 155
    new-instance v0, Landroid/hardware/health/V1_0/HealthInfo;

    invoke-direct {v0}, Landroid/hardware/health/V1_0/HealthInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mLastHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    .line 168
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/BatteryService;->mSequence:I

    .line 184
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    .line 198
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    .line 286
    iput-object p1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 287
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    .line 288
    new-instance v0, Lcom/android/server/BatteryService$Led;

    const-class v1, Lcom/android/server/lights/LightsManager;

    invoke-virtual {p0, v1}, Lcom/android/server/BatteryService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/lights/LightsManager;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/BatteryService$Led;-><init>(Lcom/android/server/BatteryService;Landroid/content/Context;Lcom/android/server/lights/LightsManager;)V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;

    .line 289
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BatteryService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 290
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/BatteryService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 292
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I

    .line 294
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0056

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    .line 296
    iget v0, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    iget-object v1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0054

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    .line 298
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0096

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService;->mShutdownBatteryTemperature:I

    .line 301
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    .line 302
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 305
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/devices/virtual/switch/invalid_charger/state"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 306
    new-instance v0, Lcom/android/server/BatteryService$3;

    invoke-direct {v0, p0}, Lcom/android/server/BatteryService$3;-><init>(Lcom/android/server/BatteryService;)V

    .line 317
    .local v0, "invalidChargerObserver":Landroid/os/UEventObserver;
    const-string v1, "DEVPATH=/devices/virtual/switch/invalid_charger"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 323
    .end local v0    # "invalidChargerObserver":Landroid/os/UEventObserver;
    :cond_a6
    new-instance v0, Lcom/android/server/BatteryService$BatteryUEventObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/BatteryService$BatteryUEventObserver;-><init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$1;)V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mUEventObserver:Landroid/os/UEventObserver;

    .line 324
    iget-object v0, p0, Lcom/android/server/BatteryService;->mUEventObserver:Landroid/os/UEventObserver;

    const-string v1, "POWER_SUPPLY_HVDCP3_TYPE"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/android/server/BatteryService;->mUEventObserver:Landroid/os/UEventObserver;

    const-string v1, "POWER_SUPPLY_CONNECTOR_HEALTH"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 327
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/BatteryService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 118
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/BatteryService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 118
    iget v0, p0, Lcom/android/server/BatteryService;->mLastHvdcpType:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/BatteryService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 118
    invoke-direct {p0}, Lcom/android/server/BatteryService;->updateBatteryWarningLevelLocked()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/BatteryService;)Landroid/app/ActivityManagerInternal;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 118
    iget-object v0, p0, Lcom/android/server/BatteryService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/BatteryService;)Landroid/hardware/health/V1_0/HealthInfo;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 118
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/BatteryService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 118
    iget v0, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/BatteryService;Landroid/hardware/health/V2_0/HealthInfo;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # Landroid/hardware/health/V2_0/HealthInfo;

    .line 118
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService;->update(Landroid/hardware/health/V2_0/HealthInfo;)V

    return-void
.end method

.method static synthetic access$1800(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 118
    invoke-static {p0}, Lcom/android/server/BatteryService;->traceBegin(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900()V
    .registers 0

    .line 118
    invoke-static {}, Lcom/android/server/BatteryService;->traceEnd()V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .line 118
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/BatteryService;Ljava/io/FileDescriptor;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # Ljava/io/FileDescriptor;

    .line 118
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService;->dumpProto(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/BatteryService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # Ljava/io/FileDescriptor;
    .param p2, "x2"    # Ljava/io/PrintWriter;
    .param p3, "x3"    # [Ljava/lang/String;

    .line 118
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/BatteryService;->dumpInternal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$HealthServiceWrapper;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 118
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthServiceWrapper:Lcom/android/server/BatteryService$HealthServiceWrapper;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/BatteryService;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # I

    .line 118
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService;->isPoweredLocked(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/BatteryService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 118
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/BatteryService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 118
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/BatteryService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # I

    .line 118
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService;->updateHvdcpType(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/BatteryService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 118
    iget v0, p0, Lcom/android/server/BatteryService;->mLastUsbConnectorHealth:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/BatteryService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # I

    .line 118
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService;->updateUsbConnectorHealth(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/BatteryService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 118
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/BatteryService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;

    .line 118
    iget v0, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/BatteryService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/BatteryService;
    .param p1, "x1"    # I

    .line 118
    iput p1, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    return p1
.end method

.method private static copy(Landroid/hardware/health/V1_0/HealthInfo;Landroid/hardware/health/V1_0/HealthInfo;)V
    .registers 3
    .param p0, "dst"    # Landroid/hardware/health/V1_0/HealthInfo;
    .param p1, "src"    # Landroid/hardware/health/V1_0/HealthInfo;

    .line 512
    iget-boolean v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    iput-boolean v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    .line 513
    iget-boolean v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    iput-boolean v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    .line 514
    iget-boolean v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    iput-boolean v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    .line 515
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingCurrent:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingCurrent:I

    .line 516
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingVoltage:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingVoltage:I

    .line 517
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    .line 518
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    .line 519
    iget-boolean v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    iput-boolean v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    .line 520
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    .line 521
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    .line 522
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    .line 523
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryCurrent:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryCurrent:I

    .line 524
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryCycleCount:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryCycleCount:I

    .line 525
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryFullCharge:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryFullCharge:I

    .line 526
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    .line 527
    iget-object v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryTechnology:Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTechnology:Ljava/lang/String;

    .line 528
    return-void
.end method

.method static dumpHelp(Ljava/io/PrintWriter;)V
    .registers 2
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 924
    const-string v0, "Battery service (battery) commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 925
    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 926
    const-string v0, "    Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 927
    const-string v0, "  set [-f] [ac|usb|wireless|status|level|temp|present|invalid] <value>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 928
    const-string v0, "    Force a battery property value, freezing battery state."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 929
    const-string v0, "    -f: force a battery change broadcast be sent, prints new sequence."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 930
    const-string v0, "  unplug [-f]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 931
    const-string v0, "    Force battery unplugged, freezing battery state."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 932
    const-string v0, "    -f: force a battery change broadcast be sent, prints new sequence."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 933
    const-string v0, "  reset [-f]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 934
    const-string v0, "    Unfreeze battery state, returning to current hardware values."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 935
    const-string v0, "    -f: force a battery change broadcast be sent, prints new sequence."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 936
    return-void
.end method

.method private dumpInternal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 14
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1072
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1073
    if-eqz p3, :cond_2e

    :try_start_5
    array-length v1, p3

    if-eqz v1, :cond_2e

    const-string v1, "-a"

    const/4 v2, 0x0

    aget-object v2, p3, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_2e

    .line 1093
    :cond_14
    new-instance v2, Lcom/android/server/BatteryService$Shell;

    invoke-direct {v2, p0}, Lcom/android/server/BatteryService$Shell;-><init>(Lcom/android/server/BatteryService;)V

    .line 1094
    .local v2, "shell":Lcom/android/server/BatteryService$Shell;
    iget-object v3, p0, Lcom/android/server/BatteryService;->mBinderService:Lcom/android/server/BatteryService$BinderService;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    new-instance v9, Landroid/os/ResultReceiver;

    const/4 v1, 0x0

    invoke-direct {v9, v1}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    move-object v5, p1

    move-object v7, p3

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/BatteryService$Shell;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .end local v2    # "shell":Lcom/android/server/BatteryService$Shell;
    goto/16 :goto_179

    .line 1096
    :catchall_2b
    move-exception v1

    goto/16 :goto_17b

    .line 1074
    :cond_2e
    :goto_2e
    const-string v1, "Current Battery Service state:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1075
    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-eqz v1, :cond_3c

    .line 1076
    const-string v1, "  (UPDATES STOPPED -- use \'reset\' to restart)"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1078
    :cond_3c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  AC powered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1079
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  USB powered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1080
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Wireless powered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1081
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Max charging current: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingCurrent:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1082
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Max charging voltage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingVoltage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1083
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Charge counter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1084
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1085
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  health: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1086
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  present: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1087
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1088
    const-string v1, "  scale: 100"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1089
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  voltage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1090
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  temperature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1091
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  technology: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-object v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->batteryTechnology:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1096
    :goto_179
    monitor-exit v0

    .line 1097
    return-void

    .line 1096
    :goto_17b
    monitor-exit v0
    :try_end_17c
    .catchall {:try_start_5 .. :try_end_17c} :catchall_2b

    throw v1
.end method

.method private dumpProto(Ljava/io/FileDescriptor;)V
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 1100
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1102
    .local v0, "proto":Landroid/util/proto/ProtoOutputStream;
    iget-object v1, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1103
    const-wide v2, 0x10800000001L

    :try_start_d
    iget-boolean v4, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    invoke-virtual {v0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1104
    const/4 v2, 0x0

    .line 1105
    .local v2, "batteryPluggedValue":I
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    if-eqz v3, :cond_1b

    .line 1106
    const/4 v2, 0x1

    goto :goto_2a

    .line 1107
    :cond_1b
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    if-eqz v3, :cond_23

    .line 1108
    const/4 v2, 0x2

    goto :goto_2a

    .line 1109
    :cond_23
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    if-eqz v3, :cond_2a

    .line 1110
    const/4 v2, 0x4

    .line 1112
    :cond_2a
    :goto_2a
    const-wide v3, 0x10e00000002L

    invoke-virtual {v0, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1113
    const-wide v3, 0x10500000003L

    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v5, v5, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingCurrent:I

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1114
    const-wide v3, 0x10500000004L

    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v5, v5, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingVoltage:I

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1115
    const-wide v3, 0x10500000005L

    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v5, v5, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1116
    const-wide v3, 0x10e00000006L

    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v5, v5, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1117
    const-wide v3, 0x10e00000007L

    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v5, v5, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1118
    const-wide v3, 0x10800000008L

    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v5, v5, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1119
    const-wide v3, 0x10500000009L

    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v5, v5, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1120
    const-wide v3, 0x1050000000aL

    const/16 v5, 0x64

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1121
    const-wide v3, 0x1050000000bL

    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v5, v5, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1122
    const-wide v3, 0x1050000000cL

    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v5, v5, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1123
    const-wide v3, 0x1090000000dL

    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-object v5, v5, Landroid/hardware/health/V1_0/HealthInfo;->batteryTechnology:Ljava/lang/String;

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1124
    .end local v2    # "batteryPluggedValue":I
    monitor-exit v1
    :try_end_b5
    .catchall {:try_start_d .. :try_end_b5} :catchall_b9

    .line 1125
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 1126
    return-void

    .line 1124
    :catchall_b9
    move-exception v2

    :try_start_ba
    monitor-exit v1
    :try_end_bb
    .catchall {:try_start_ba .. :try_end_bb} :catchall_b9

    throw v2
.end method

.method private getIconLocked(I)I
    .registers 6
    .param p1, "level"    # I

    .line 893
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    const v1, 0x10807cc

    const/4 v2, 0x2

    if-ne v0, v2, :cond_b

    .line 894
    return v1

    .line 895
    :cond_b
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    const/4 v2, 0x3

    const v3, 0x10807be

    if-ne v0, v2, :cond_16

    .line 896
    return v3

    .line 897
    :cond_16
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_29

    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_25

    goto :goto_29

    .line 906
    :cond_25
    const v0, 0x10807da

    return v0

    .line 899
    :cond_29
    :goto_29
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/server/BatteryService;->isPoweredLocked(I)Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    const/16 v2, 0x64

    if-lt v0, v2, :cond_39

    .line 901
    return v1

    .line 903
    :cond_39
    return v3
.end method

.method private isPoweredLocked(I)Z
    .registers 4
    .param p1, "plugTypeSet"    # I

    .line 424
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 425
    return v1

    .line 427
    :cond_8
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    if-eqz v0, :cond_13

    .line 428
    return v1

    .line 430
    :cond_13
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    if-eqz v0, :cond_1e

    .line 431
    return v1

    .line 433
    :cond_1e
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    if-eqz v0, :cond_29

    .line 434
    return v1

    .line 436
    :cond_29
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic lambda$D1kwd7L7yyqN5niz3KWkTepVmUk(Lcom/android/server/BatteryService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/BatteryService;->sendEnqueuedBatteryLevelChangedEvents()V

    return-void
.end method

.method static synthetic lambda$sendBatteryChangedIntentLocked$0(Landroid/content/Intent;)V
    .registers 2
    .param p0, "intent"    # Landroid/content/Intent;

    .line 780
    const/4 v0, -0x1

    invoke-static {p0, v0}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;I)V

    return-void
.end method

.method private logBatteryStatsLocked()V
    .registers 9

    .line 828
    const-string v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 829
    .local v0, "batteryInfoService":Landroid/os/IBinder;
    if-nez v0, :cond_9

    return-void

    .line 831
    :cond_9
    iget-object v1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    const-string v2, "dropbox"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/DropBoxManager;

    .line 832
    .local v1, "db":Landroid/os/DropBoxManager;
    if-eqz v1, :cond_ef

    const-string v2, "BATTERY_DISCHARGE_INFO"

    invoke-virtual {v1, v2}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1f

    goto/16 :goto_ef

    .line 834
    :cond_1f
    const/4 v2, 0x0

    .line 835
    .local v2, "dumpFile":Ljava/io/File;
    const/4 v3, 0x0

    .line 838
    .local v3, "dumpStream":Ljava/io/FileOutputStream;
    :try_start_21
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/system/batterystats.dump"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 839
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v3, v4

    .line 840
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    sget-object v5, Lcom/android/server/BatteryService;->DUMPSYS_ARGS:[Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 841
    invoke-static {v3}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 844
    const-string v4, "BATTERY_DISCHARGE_INFO"

    const/4 v5, 0x2

    invoke-virtual {v1, v4, v2, v5}, Landroid/os/DropBoxManager;->addFile(Ljava/lang/String;Ljava/io/File;I)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_41} :catch_97
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_41} :catch_71
    .catchall {:try_start_21 .. :try_end_41} :catchall_6f

    .line 851
    nop

    .line 853
    :try_start_42
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_46

    .line 856
    goto :goto_4e

    .line 854
    :catch_46
    move-exception v4

    .line 855
    .local v4, "e":Ljava/io/IOException;
    sget-object v5, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v6, "failed to close dumpsys output stream"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    .end local v4    # "e":Ljava/io/IOException;
    :goto_4e
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_bd

    .line 859
    sget-object v4, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_5b
    const-string v6, "failed to delete temporary dumpsys file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 860
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 859
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bd

    .line 851
    :catchall_6f
    move-exception v4

    goto :goto_be

    .line 847
    :catch_71
    move-exception v4

    .line 848
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_72
    sget-object v5, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v6, "failed to write dumpsys file"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_79
    .catchall {:try_start_72 .. :try_end_79} :catchall_6f

    .line 851
    .end local v4    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_87

    .line 853
    :try_start_7b
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_7e} :catch_7f

    .line 856
    goto :goto_87

    .line 854
    :catch_7f
    move-exception v4

    .line 855
    .restart local v4    # "e":Ljava/io/IOException;
    sget-object v5, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v6, "failed to close dumpsys output stream"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    .end local v4    # "e":Ljava/io/IOException;
    :cond_87
    :goto_87
    if-eqz v2, :cond_bd

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_bd

    .line 859
    sget-object v4, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_5b

    .line 845
    :catch_97
    move-exception v4

    .line 846
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_98
    sget-object v5, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v6, "failed to dump battery service"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9f
    .catchall {:try_start_98 .. :try_end_9f} :catchall_6f

    .line 851
    .end local v4    # "e":Landroid/os/RemoteException;
    if-eqz v3, :cond_ad

    .line 853
    :try_start_a1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_a4
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_a4} :catch_a5

    .line 856
    goto :goto_ad

    .line 854
    :catch_a5
    move-exception v4

    .line 855
    .local v4, "e":Ljava/io/IOException;
    sget-object v5, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v6, "failed to close dumpsys output stream"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    .end local v4    # "e":Ljava/io/IOException;
    :cond_ad
    :goto_ad
    if-eqz v2, :cond_bd

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_bd

    .line 859
    sget-object v4, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_5b

    .line 863
    :cond_bd
    :goto_bd
    return-void

    .line 851
    :goto_be
    if-eqz v3, :cond_cc

    .line 853
    :try_start_c0
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_c3
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_c3} :catch_c4

    .line 856
    goto :goto_cc

    .line 854
    :catch_c4
    move-exception v5

    .line 855
    .local v5, "e":Ljava/io/IOException;
    sget-object v6, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v7, "failed to close dumpsys output stream"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    .end local v5    # "e":Ljava/io/IOException;
    :cond_cc
    :goto_cc
    if-eqz v2, :cond_ee

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_ee

    .line 859
    sget-object v5, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed to delete temporary dumpsys file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 860
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 859
    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ee
    throw v4

    .line 832
    .end local v2    # "dumpFile":Ljava/io/File;
    .end local v3    # "dumpStream":Ljava/io/FileOutputStream;
    :cond_ef
    :goto_ef
    return-void
.end method

.method private logOutlierLocked(J)V
    .registers 11
    .param p1, "duration"    # J

    .line 866
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 867
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "battery_discharge_threshold"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 869
    .local v1, "dischargeThresholdString":Ljava/lang/String;
    const-string v2, "battery_discharge_duration_threshold"

    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 872
    .local v2, "durationThresholdString":Ljava/lang/String;
    if-eqz v1, :cond_4e

    if-eqz v2, :cond_4e

    .line 874
    :try_start_16
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 875
    .local v3, "durationThreshold":J
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 876
    .local v5, "dischargeThreshold":I
    cmp-long v6, p1, v3

    if-gtz v6, :cond_2e

    iget v6, p0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    iget-object v7, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v7, v7, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    sub-int/2addr v6, v7

    if-lt v6, v5, :cond_2e

    .line 879
    invoke-direct {p0}, Lcom/android/server/BatteryService;->logBatteryStatsLocked()V
    :try_end_2e
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_2e} :catch_2f

    .line 888
    .end local v3    # "durationThreshold":J
    .end local v5    # "dischargeThreshold":I
    :cond_2e
    goto :goto_4e

    .line 885
    :catch_2f
    move-exception v3

    .line 886
    .local v3, "e":Ljava/lang/NumberFormatException;
    sget-object v4, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid DischargeThresholds GService string: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " or "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_4e
    :goto_4e
    return-void
.end method

.method private processValuesFromShellLocked(Ljava/io/PrintWriter;I)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "opts"    # I

    .line 1065
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-direct {p0, v0}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V

    .line 1066
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_13

    .line 1067
    iget v0, p0, Lcom/android/server/BatteryService;->mSequence:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1069
    :cond_13
    return-void
.end method

.method private processValuesLocked(Z)V
    .registers 21
    .param p1, "force"    # Z

    move-object/from16 v1, p0

    .line 531
    const/4 v2, 0x0

    .line 532
    .local v2, "logOutlier":Z
    const-wide/16 v3, 0x0

    .line 534
    .local v3, "dischargeDuration":J
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v0, v6, :cond_17

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iget v7, v1, Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I

    if-gt v0, v7, :cond_17

    move v0, v6

    goto :goto_18

    :cond_17
    move v0, v5

    :goto_18
    iput-boolean v0, v1, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    .line 537
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    const/4 v7, 0x4

    const/4 v8, 0x2

    if-eqz v0, :cond_25

    .line 538
    iput v6, v1, Lcom/android/server/BatteryService;->mPlugType:I

    goto :goto_39

    .line 539
    :cond_25
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    if-eqz v0, :cond_2e

    .line 540
    iput v8, v1, Lcom/android/server/BatteryService;->mPlugType:I

    goto :goto_39

    .line 541
    :cond_2e
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    if-eqz v0, :cond_37

    .line 542
    iput v7, v1, Lcom/android/server/BatteryService;->mPlugType:I

    goto :goto_39

    .line 544
    :cond_37
    iput v5, v1, Lcom/android/server/BatteryService;->mPlugType:I

    .line 556
    :goto_39
    :try_start_39
    iget-object v9, v1, Lcom/android/server/BatteryService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v10, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v11, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    iget v12, v1, Lcom/android/server/BatteryService;->mPlugType:I

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v13, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v14, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    iget-object v8, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v8, v8, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    iget-object v6, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v6, v6, Landroid/hardware/health/V1_0/HealthInfo;->batteryFullCharge:I

    move v15, v0

    move/from16 v16, v8

    move/from16 v17, v6

    invoke-interface/range {v9 .. v17}, Lcom/android/internal/app/IBatteryStats;->setBatteryState(IIIIIIII)V
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_61} :catch_62

    .line 562
    goto :goto_63

    .line 560
    :catch_62
    move-exception v0

    .line 564
    :goto_63
    invoke-direct/range {p0 .. p0}, Lcom/android/server/BatteryService;->shutdownIfNoPowerLocked()V

    .line 565
    invoke-direct/range {p0 .. p0}, Lcom/android/server/BatteryService;->shutdownIfOverTempLocked()V

    .line 567
    if-nez p1, :cond_bf

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    iget v6, v1, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    if-ne v0, v6, :cond_bf

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    iget v6, v1, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    if-ne v0, v6, :cond_bf

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    iget-boolean v6, v1, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    if-ne v0, v6, :cond_bf

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iget v6, v1, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    if-ne v0, v6, :cond_bf

    iget v0, v1, Lcom/android/server/BatteryService;->mPlugType:I

    iget v6, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-ne v0, v6, :cond_bf

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    iget v6, v1, Lcom/android/server/BatteryService;->mLastBatteryVoltage:I

    if-ne v0, v6, :cond_bf

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    iget v6, v1, Lcom/android/server/BatteryService;->mLastBatteryTemperature:I

    if-ne v0, v6, :cond_bf

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingCurrent:I

    iget v6, v1, Lcom/android/server/BatteryService;->mLastMaxChargingCurrent:I

    if-ne v0, v6, :cond_bf

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingVoltage:I

    iget v6, v1, Lcom/android/server/BatteryService;->mLastMaxChargingVoltage:I

    if-ne v0, v6, :cond_bf

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    iget v6, v1, Lcom/android/server/BatteryService;->mLastChargeCounter:I

    if-ne v0, v6, :cond_bf

    iget v0, v1, Lcom/android/server/BatteryService;->mInvalidCharger:I

    iget v6, v1, Lcom/android/server/BatteryService;->mLastInvalidCharger:I

    if-eq v0, v6, :cond_36c

    .line 579
    :cond_bf
    iget v0, v1, Lcom/android/server/BatteryService;->mPlugType:I

    iget v6, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    const-wide/16 v10, 0x0

    if-eq v0, v6, :cond_195

    .line 580
    iget v0, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    const/16 v6, 0x58a

    const/16 v12, 0x58d

    const/16 v13, 0x589

    if-nez v0, :cond_13a

    .line 582
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iput v0, v1, Lcom/android/server/BatteryService;->mChargeStartLevel:I

    .line 583
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iput-wide v8, v1, Lcom/android/server/BatteryService;->mChargeStartTime:J

    .line 585
    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, v13}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 586
    .local v0, "builder":Landroid/metrics/LogMaker;
    invoke-virtual {v0, v7}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 587
    iget v8, v1, Lcom/android/server/BatteryService;->mPlugType:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v12, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 588
    iget-object v8, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v8, v8, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    .line 589
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 588
    invoke-virtual {v0, v6, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 590
    iget-object v6, v1, Lcom/android/server/BatteryService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v6, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 594
    iget-wide v8, v1, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    cmp-long v6, v8, v10

    if-eqz v6, :cond_139

    iget v6, v1, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    iget-object v8, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v8, v8, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    if-eq v6, v8, :cond_139

    .line 595
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-wide v12, v1, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    sub-long/2addr v8, v12

    .line 596
    .end local v3    # "dischargeDuration":J
    .local v8, "dischargeDuration":J
    const/4 v2, 0x1

    .line 597
    const/16 v3, 0xaaa

    const/4 v4, 0x3

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v6, v5

    iget v4, v1, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    .line 598
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v12, 0x1

    aput-object v4, v6, v12

    iget-object v4, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v4, v4, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v12, 0x2

    aput-object v4, v6, v12

    .line 597
    invoke-static {v3, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 600
    iput-wide v10, v1, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    .line 602
    .end local v0    # "builder":Landroid/metrics/LogMaker;
    move-wide v3, v8

    .line 602
    .end local v8    # "dischargeDuration":J
    .restart local v3    # "dischargeDuration":J
    :cond_139
    goto :goto_195

    :cond_13a
    iget v0, v1, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v0, :cond_195

    .line 604
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iput-wide v8, v1, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    .line 605
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iput v0, v1, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    .line 607
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-wide v5, v1, Lcom/android/server/BatteryService;->mChargeStartTime:J

    sub-long/2addr v8, v5

    .line 608
    .local v8, "chargeDuration":J
    iget-wide v5, v1, Lcom/android/server/BatteryService;->mChargeStartTime:J

    cmp-long v0, v5, v10

    if-eqz v0, :cond_193

    cmp-long v0, v8, v10

    if-eqz v0, :cond_193

    .line 609
    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, v13}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 610
    .restart local v0    # "builder":Landroid/metrics/LogMaker;
    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 611
    iget v5, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v12, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 612
    const/16 v5, 0x58c

    .line 613
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 612
    invoke-virtual {v0, v5, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 614
    iget v5, v1, Lcom/android/server/BatteryService;->mChargeStartLevel:I

    .line 615
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 614
    const/16 v6, 0x58a

    invoke-virtual {v0, v6, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 616
    const/16 v5, 0x58b

    iget-object v6, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v6, v6, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    .line 617
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 616
    invoke-virtual {v0, v5, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 618
    iget-object v5, v1, Lcom/android/server/BatteryService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v5, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 620
    .end local v0    # "builder":Landroid/metrics/LogMaker;
    :cond_193
    iput-wide v10, v1, Lcom/android/server/BatteryService;->mChargeStartTime:J

    .line 623
    .end local v8    # "chargeDuration":J
    :cond_195
    :goto_195
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    iget v5, v1, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    if-ne v0, v5, :cond_1b3

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    iget v5, v1, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    if-ne v0, v5, :cond_1b3

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    iget-boolean v5, v1, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    if-ne v0, v5, :cond_1b3

    iget v0, v1, Lcom/android/server/BatteryService;->mPlugType:I

    iget v5, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eq v0, v5, :cond_1eb

    .line 627
    :cond_1b3
    const/16 v0, 0xaa3

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v6, v6, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    .line 628
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x0

    aput-object v6, v5, v8

    iget-object v6, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v6, v6, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v5, v8

    iget-object v6, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v6, v6, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x2

    aput-object v6, v5, v8

    iget v6, v1, Lcom/android/server/BatteryService;->mPlugType:I

    .line 629
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x3

    aput-object v6, v5, v8

    iget-object v6, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-object v6, v6, Landroid/hardware/health/V1_0/HealthInfo;->batteryTechnology:Ljava/lang/String;

    aput-object v6, v5, v7

    .line 627
    invoke-static {v0, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 631
    :cond_1eb
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iget v5, v1, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    if-eq v0, v5, :cond_21c

    .line 634
    const/16 v0, 0xaa2

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v6, v6, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    .line 635
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    iget-object v6, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v6, v6, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    iget-object v6, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v6, v6, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    .line 634
    invoke-static {v0, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 637
    :cond_21c
    iget-boolean v0, v1, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    if-eqz v0, :cond_232

    iget-boolean v0, v1, Lcom/android/server/BatteryService;->mLastBatteryLevelCritical:Z

    if-nez v0, :cond_232

    iget v0, v1, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v0, :cond_232

    .line 641
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, v1, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    sub-long/2addr v5, v7

    .line 642
    .end local v3    # "dischargeDuration":J
    .local v5, "dischargeDuration":J
    const/4 v0, 0x1

    .line 645
    .end local v2    # "logOutlier":Z
    .local v0, "logOutlier":Z
    move v2, v0

    move-wide v3, v5

    .line 645
    .end local v0    # "logOutlier":Z
    .end local v5    # "dischargeDuration":J
    .restart local v2    # "logOutlier":Z
    .restart local v3    # "dischargeDuration":J
    :cond_232
    iget-boolean v0, v1, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    if-nez v0, :cond_24c

    .line 647
    iget v0, v1, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v0, :cond_26c

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    const/4 v5, 0x1

    if-eq v0, v5, :cond_26c

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iget v6, v1, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-gt v0, v6, :cond_26c

    .line 651
    iput-boolean v5, v1, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    goto :goto_26c

    .line 655
    :cond_24c
    iget v0, v1, Lcom/android/server/BatteryService;->mPlugType:I

    if-eqz v0, :cond_254

    .line 656
    const/4 v5, 0x0

    iput-boolean v5, v1, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    goto :goto_26c

    .line 657
    :cond_254
    const/4 v5, 0x0

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iget v6, v1, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    if-lt v0, v6, :cond_260

    .line 658
    iput-boolean v5, v1, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    goto :goto_26c

    .line 659
    :cond_260
    if-eqz p1, :cond_26c

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iget v6, v1, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-lt v0, v6, :cond_26c

    .line 662
    iput-boolean v5, v1, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    .line 666
    :cond_26c
    :goto_26c
    iget v0, v1, Lcom/android/server/BatteryService;->mSequence:I

    const/4 v5, 0x1

    add-int/2addr v0, v5

    iput v0, v1, Lcom/android/server/BatteryService;->mSequence:I

    .line 671
    iget v0, v1, Lcom/android/server/BatteryService;->mPlugType:I

    const/high16 v5, 0x4000000

    if-eqz v0, :cond_299

    iget v0, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-nez v0, :cond_299

    .line 672
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 673
    .local v0, "statusIntent":Landroid/content/Intent;
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 674
    const-string/jumbo v6, "seq"

    iget v7, v1, Lcom/android/server/BatteryService;->mSequence:I

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 675
    iget-object v6, v1, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/BatteryService$9;

    invoke-direct {v7, v1, v0}, Lcom/android/server/BatteryService$9;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 681
    .end local v0    # "statusIntent":Landroid/content/Intent;
    goto :goto_2bd

    .line 682
    :cond_299
    iget v0, v1, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v0, :cond_2bd

    iget v0, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eqz v0, :cond_2bd

    .line 683
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 684
    .restart local v0    # "statusIntent":Landroid/content/Intent;
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 685
    const-string/jumbo v6, "seq"

    iget v7, v1, Lcom/android/server/BatteryService;->mSequence:I

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 686
    iget-object v6, v1, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/BatteryService$10;

    invoke-direct {v7, v1, v0}, Lcom/android/server/BatteryService$10;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 694
    .end local v0    # "statusIntent":Landroid/content/Intent;
    :cond_2bd
    :goto_2bd
    invoke-direct/range {p0 .. p0}, Lcom/android/server/BatteryService;->shouldSendBatteryLowLocked()Z

    move-result v0

    if-eqz v0, :cond_2e3

    .line 695
    const/4 v6, 0x1

    iput-boolean v6, v1, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    .line 696
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.intent.action.BATTERY_LOW"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 697
    .restart local v0    # "statusIntent":Landroid/content/Intent;
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 698
    const-string/jumbo v5, "seq"

    iget v6, v1, Lcom/android/server/BatteryService;->mSequence:I

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 699
    iget-object v5, v1, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/server/BatteryService$11;

    invoke-direct {v6, v1, v0}, Lcom/android/server/BatteryService$11;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 705
    .end local v0    # "statusIntent":Landroid/content/Intent;
    goto :goto_30e

    :cond_2e3
    iget-boolean v0, v1, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    if-eqz v0, :cond_30e

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iget v6, v1, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    if-lt v0, v6, :cond_30e

    .line 707
    const/4 v6, 0x0

    iput-boolean v6, v1, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    .line 708
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.intent.action.BATTERY_OKAY"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 709
    .restart local v0    # "statusIntent":Landroid/content/Intent;
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 710
    const-string/jumbo v5, "seq"

    iget v6, v1, Lcom/android/server/BatteryService;->mSequence:I

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 711
    iget-object v5, v1, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/server/BatteryService$12;

    invoke-direct {v6, v1, v0}, Lcom/android/server/BatteryService$12;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 722
    .end local v0    # "statusIntent":Landroid/content/Intent;
    :cond_30e
    :goto_30e
    invoke-direct/range {p0 .. p0}, Lcom/android/server/BatteryService;->sendBatteryChangedIntentLocked()V

    .line 723
    iget v0, v1, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    iget-object v5, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v5, v5, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    if-eq v0, v5, :cond_31c

    .line 724
    invoke-direct/range {p0 .. p0}, Lcom/android/server/BatteryService;->sendBatteryLevelChangedIntentLocked()V

    .line 729
    :cond_31c
    iget-object v0, v1, Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;

    invoke-virtual {v0}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    .line 732
    if-eqz v2, :cond_32a

    cmp-long v0, v3, v10

    if-eqz v0, :cond_32a

    .line 733
    invoke-direct {v1, v3, v4}, Lcom/android/server/BatteryService;->logOutlierLocked(J)V

    .line 736
    :cond_32a
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    iput v0, v1, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    .line 737
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    iput v0, v1, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    .line 738
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    iput-boolean v0, v1, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    .line 739
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iput v0, v1, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    .line 740
    iget v0, v1, Lcom/android/server/BatteryService;->mPlugType:I

    iput v0, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    .line 741
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    iput v0, v1, Lcom/android/server/BatteryService;->mLastBatteryVoltage:I

    .line 742
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    iput v0, v1, Lcom/android/server/BatteryService;->mLastBatteryTemperature:I

    .line 743
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingCurrent:I

    iput v0, v1, Lcom/android/server/BatteryService;->mLastMaxChargingCurrent:I

    .line 744
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingVoltage:I

    iput v0, v1, Lcom/android/server/BatteryService;->mLastMaxChargingVoltage:I

    .line 745
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    iput v0, v1, Lcom/android/server/BatteryService;->mLastChargeCounter:I

    .line 746
    iget-boolean v0, v1, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    iput-boolean v0, v1, Lcom/android/server/BatteryService;->mLastBatteryLevelCritical:Z

    .line 747
    iget v0, v1, Lcom/android/server/BatteryService;->mInvalidCharger:I

    iput v0, v1, Lcom/android/server/BatteryService;->mLastInvalidCharger:I

    .line 749
    :cond_36c
    return-void
.end method

.method private registerHealthCallback()V
    .registers 9

    .line 363
    const-string v0, "HealthInitWrapper"

    invoke-static {v0}, Lcom/android/server/BatteryService;->traceBegin(Ljava/lang/String;)V

    .line 364
    new-instance v0, Lcom/android/server/BatteryService$HealthServiceWrapper;

    invoke-direct {v0}, Lcom/android/server/BatteryService$HealthServiceWrapper;-><init>()V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mHealthServiceWrapper:Lcom/android/server/BatteryService$HealthServiceWrapper;

    .line 365
    new-instance v0, Lcom/android/server/BatteryService$HealthHalCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/BatteryService$HealthHalCallback;-><init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$1;)V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mHealthHalCallback:Lcom/android/server/BatteryService$HealthHalCallback;

    .line 368
    :try_start_14
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthServiceWrapper:Lcom/android/server/BatteryService$HealthServiceWrapper;

    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthHalCallback:Lcom/android/server/BatteryService$HealthHalCallback;

    new-instance v2, Lcom/android/server/BatteryService$5;

    invoke-direct {v2, p0}, Lcom/android/server/BatteryService$5;-><init>(Lcom/android/server/BatteryService;)V

    new-instance v3, Lcom/android/server/BatteryService$6;

    invoke-direct {v3, p0}, Lcom/android/server/BatteryService$6;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/BatteryService$HealthServiceWrapper;->init(Lcom/android/server/BatteryService$HealthServiceWrapper$Callback;Lcom/android/server/BatteryService$HealthServiceWrapper$IServiceManagerSupplier;Lcom/android/server/BatteryService$HealthServiceWrapper$IHealthSupplier;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_25} :catch_a7
    .catch Ljava/util/NoSuchElementException; {:try_start_14 .. :try_end_25} :catch_9e
    .catchall {:try_start_14 .. :try_end_25} :catchall_9c

    .line 378
    invoke-static {}, Lcom/android/server/BatteryService;->traceEnd()V

    .line 379
    nop

    .line 381
    const-string v0, "HealthInitWaitUpdate"

    invoke-static {v0}, Lcom/android/server/BatteryService;->traceBegin(Ljava/lang/String;)V

    .line 385
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 386
    .local v0, "beforeWait":J
    iget-object v2, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 387
    :goto_35
    :try_start_35
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    if-nez v3, :cond_73

    .line 388
    sget-object v3, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "health: Waited "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms for callbacks. Waiting another "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v5, 0x3e8

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " ms..."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catchall {:try_start_35 .. :try_end_64} :catchall_99

    .line 391
    :try_start_64
    iget-object v3, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_69
    .catch Ljava/lang/InterruptedException; {:try_start_64 .. :try_end_69} :catch_6a
    .catchall {:try_start_64 .. :try_end_69} :catchall_99

    .line 395
    :goto_69
    goto :goto_35

    .line 392
    :catch_6a
    move-exception v3

    .line 393
    .local v3, "ex":Ljava/lang/InterruptedException;
    :try_start_6b
    sget-object v4, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v5, "health: InterruptedException when waiting for update.  Continuing..."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    .end local v3    # "ex":Ljava/lang/InterruptedException;
    goto :goto_69

    .line 397
    :cond_73
    monitor-exit v2
    :try_end_74
    .catchall {:try_start_6b .. :try_end_74} :catchall_99

    .line 399
    sget-object v2, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "health: Waited "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms and received the update."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-static {}, Lcom/android/server/BatteryService;->traceEnd()V

    .line 402
    return-void

    .line 397
    :catchall_99
    move-exception v3

    :try_start_9a
    monitor-exit v2
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_99

    throw v3

    .line 378
    .end local v0    # "beforeWait":J
    :catchall_9c
    move-exception v0

    goto :goto_b4

    .line 374
    :catch_9e
    move-exception v0

    .line 375
    .local v0, "ex":Ljava/util/NoSuchElementException;
    :try_start_9f
    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v2, "health: cannot register callback. (no supported health HAL service)"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    throw v0

    .line 371
    .end local v0    # "ex":Ljava/util/NoSuchElementException;
    :catch_a7
    move-exception v0

    .line 372
    .local v0, "ex":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v2, "health: cannot register callback. (RemoteException)"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_b4
    .catchall {:try_start_9f .. :try_end_b4} :catchall_9c

    .line 378
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_b4
    invoke-static {}, Lcom/android/server/BatteryService;->traceEnd()V

    throw v0
.end method

.method private sendBatteryChangedIntentLocked()V
    .registers 5

    .line 753
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 754
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x60000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 757
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v1, v1, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    invoke-direct {p0, v1}, Lcom/android/server/BatteryService;->getIconLocked(I)I

    move-result v1

    .line 759
    .local v1, "icon":I
    const-string/jumbo v2, "seq"

    iget v3, p0, Lcom/android/server/BatteryService;->mSequence:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 760
    const-string/jumbo v2, "status"

    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 761
    const-string v2, "health"

    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 762
    const-string/jumbo v2, "present"

    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 763
    const-string/jumbo v2, "level"

    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 764
    const-string v2, "battery_low"

    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 765
    const-string/jumbo v2, "scale"

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 766
    const-string v2, "icon-small"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 767
    const-string/jumbo v2, "plugged"

    iget v3, p0, Lcom/android/server/BatteryService;->mPlugType:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 768
    const-string/jumbo v2, "voltage"

    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 769
    const-string/jumbo v2, "temperature"

    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 770
    const-string/jumbo v2, "technology"

    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-object v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryTechnology:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 771
    const-string v2, "invalid_charger"

    iget v3, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 772
    const-string/jumbo v2, "max_charging_current"

    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingCurrent:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 773
    const-string/jumbo v2, "max_charging_voltage"

    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingVoltage:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 774
    const-string v2, "charge_counter"

    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 780
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/-$$Lambda$BatteryService$2x73lvpB0jctMSVP4qb9sHAqRPw;

    invoke-direct {v3, v0}, Lcom/android/server/-$$Lambda$BatteryService$2x73lvpB0jctMSVP4qb9sHAqRPw;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 781
    return-void
.end method

.method private sendBatteryLevelChangedIntentLocked()V
    .registers 9

    .line 784
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 785
    .local v0, "event":Landroid/os/Bundle;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 786
    .local v1, "now":J
    const-string/jumbo v3, "seq"

    iget v4, p0, Lcom/android/server/BatteryService;->mSequence:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 787
    const-string/jumbo v3, "status"

    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v4, v4, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 788
    const-string v3, "health"

    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v4, v4, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 789
    const-string/jumbo v3, "present"

    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v4, v4, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 790
    const-string/jumbo v3, "level"

    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v4, v4, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 791
    const-string v3, "battery_low"

    iget-boolean v4, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 792
    const-string/jumbo v3, "scale"

    const/16 v4, 0x64

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 793
    const-string/jumbo v3, "plugged"

    iget v5, p0, Lcom/android/server/BatteryService;->mPlugType:I

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 794
    const-string/jumbo v3, "voltage"

    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v5, v5, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 795
    const-string v3, "android.os.extra.EVENT_TIMESTAMP"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 797
    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    .line 798
    .local v3, "queueWasEmpty":Z
    iget-object v5, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v5, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 800
    iget-object v5, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->size()I

    move-result v5

    if-le v5, v4, :cond_76

    .line 801
    iget-object v4, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 804
    :cond_76
    if-eqz v3, :cond_94

    .line 806
    iget-wide v4, p0, Lcom/android/server/BatteryService;->mLastBatteryLevelChangedSentMs:J

    sub-long v4, v1, v4

    const-wide/32 v6, 0xea60

    cmp-long v4, v4, v6

    if-lez v4, :cond_86

    .line 807
    const-wide/16 v4, 0x0

    goto :goto_8a

    :cond_86
    iget-wide v4, p0, Lcom/android/server/BatteryService;->mLastBatteryLevelChangedSentMs:J

    add-long/2addr v4, v6

    sub-long/2addr v4, v1

    .line 808
    .local v4, "delay":J
    :goto_8a
    iget-object v6, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/-$$Lambda$BatteryService$D1kwd7L7yyqN5niz3KWkTepVmUk;

    invoke-direct {v7, p0}, Lcom/android/server/-$$Lambda$BatteryService$D1kwd7L7yyqN5niz3KWkTepVmUk;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v6, v7, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 810
    .end local v4    # "delay":J
    :cond_94
    return-void
.end method

.method private sendEnqueuedBatteryLevelChangedEvents()V
    .registers 6

    .line 814
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 815
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 816
    .local v1, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->clear()V

    .line 817
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_31

    .line 818
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.BATTERY_LEVEL_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 819
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x1000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 820
    const-string v2, "android.os.extra.EVENTS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 822
    iget-object v2, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v4, "android.permission.BATTERY_STATS"

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 824
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/BatteryService;->mLastBatteryLevelChangedSentMs:J

    .line 825
    return-void

    .line 817
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :catchall_31
    move-exception v1

    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v1
.end method

.method private shouldSendBatteryLowLocked()Z
    .registers 7

    .line 440
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v1

    .line 441
    .local v0, "plugged":Z
    :goto_9
    iget v3, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eqz v3, :cond_f

    move v3, v2

    goto :goto_10

    :cond_f
    move v3, v1

    .line 449
    .local v3, "oldPlugged":Z
    :goto_10
    if-nez v0, :cond_2a

    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v4, v4, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    if-eq v4, v2, :cond_2a

    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v4, v4, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iget v5, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-gt v4, v5, :cond_2a

    if-nez v3, :cond_28

    iget v4, p0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    iget v5, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-le v4, v5, :cond_2a

    :cond_28
    move v1, v2

    nop

    :cond_2a
    return v1
.end method

.method private shutdownIfNoPowerLocked()V
    .registers 3

    .line 458
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    if-nez v0, :cond_17

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/server/BatteryService;->isPoweredLocked(I)Z

    move-result v0

    if-nez v0, :cond_17

    .line 459
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/BatteryService$7;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$7;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 473
    :cond_17
    return-void
.end method

.method private shutdownIfOverTempLocked()V
    .registers 3

    .line 479
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    iget v1, p0, Lcom/android/server/BatteryService;->mShutdownBatteryTemperature:I

    if-le v0, v1, :cond_12

    .line 480
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/BatteryService$8;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$8;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 494
    :cond_12
    return-void
.end method

.method private static traceBegin(Ljava/lang/String;)V
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 1129
    const-wide/32 v0, 0x80000

    invoke-static {v0, v1, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1130
    return-void
.end method

.method private static traceEnd()V
    .registers 2

    .line 1133
    const-wide/32 v0, 0x80000

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1134
    return-void
.end method

.method private update(Landroid/hardware/health/V2_0/HealthInfo;)V
    .registers 5
    .param p1, "info"    # Landroid/hardware/health/V2_0/HealthInfo;

    .line 497
    const-string v0, "HealthInfoUpdate"

    invoke-static {v0}, Lcom/android/server/BatteryService;->traceBegin(Ljava/lang/String;)V

    .line 498
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 499
    :try_start_8
    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-nez v1, :cond_1a

    .line 500
    iget-object v1, p1, Landroid/hardware/health/V2_0/HealthInfo;->legacy:Landroid/hardware/health/V1_0/HealthInfo;

    iput-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    .line 502
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V

    .line 503
    iget-object v1, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    goto :goto_21

    .line 505
    :cond_1a
    iget-object v1, p0, Lcom/android/server/BatteryService;->mLastHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-object v2, p1, Landroid/hardware/health/V2_0/HealthInfo;->legacy:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {v1, v2}, Lcom/android/server/BatteryService;->copy(Landroid/hardware/health/V1_0/HealthInfo;Landroid/hardware/health/V1_0/HealthInfo;)V

    .line 507
    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_26

    .line 508
    invoke-static {}, Lcom/android/server/BatteryService;->traceEnd()V

    .line 509
    return-void

    .line 507
    :catchall_26
    move-exception v1

    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v1
.end method

.method private updateBatteryWarningLevelLocked()V
    .registers 6

    .line 405
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 406
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0056

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 408
    .local v1, "defWarnLevel":I
    const-string/jumbo v2, "low_power_trigger_level"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    .line 410
    iget v2, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-nez v2, :cond_22

    .line 411
    iput v1, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    .line 413
    :cond_22
    iget v2, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    iget v3, p0, Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I

    if-ge v2, v3, :cond_2c

    .line 414
    iget v2, p0, Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I

    iput v2, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    .line 416
    :cond_2c
    iget v2, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    iget-object v3, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e0054

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    .line 418
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V

    .line 419
    return-void
.end method

.method private updateHvdcpType(I)V
    .registers 5
    .param p1, "hvdcpType"    # I

    .line 215
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.action.ACTION_HVDCP_TYPE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 217
    .local v0, "hvdcpTypeIntent":Landroid/content/Intent;
    const/high16 v1, 0x31000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 220
    const-string/jumbo v1, "miui.intent.extra.hvdcp_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 221
    iput p1, p0, Lcom/android/server/BatteryService;->mLastHvdcpType:I

    .line 222
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/BatteryService$1;

    invoke-direct {v2, p0, v0}, Lcom/android/server/BatteryService$1;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 229
    return-void
.end method

.method private updateUsbConnectorHealth(I)V
    .registers 5
    .param p1, "connectorHealth"    # I

    .line 236
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.action.ACTION_CONNECTOR_HEALTH_TRIGGER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 238
    .local v0, "usbConnectorHealthIntent":Landroid/content/Intent;
    const/high16 v1, 0x31000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 241
    const-string/jumbo v1, "miui.intent.extra.USBCONNECTOR_HEALTH"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 243
    iput p1, p0, Lcom/android/server/BatteryService;->mLastUsbConnectorHealth:I

    .line 244
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/BatteryService$2;

    invoke-direct {v2, p0, v0}, Lcom/android/server/BatteryService$2;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 251
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 8
    .param p1, "phase"    # I

    .line 342
    const/16 v0, 0x226

    if-ne p1, v0, :cond_28

    .line 344
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 345
    :try_start_7
    new-instance v1, Lcom/android/server/BatteryService$4;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/BatteryService$4;-><init>(Lcom/android/server/BatteryService;Landroid/os/Handler;)V

    .line 353
    .local v1, "obs":Landroid/database/ContentObserver;
    iget-object v2, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 354
    .local v2, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v3, "low_power_trigger_level"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 357
    invoke-direct {p0}, Lcom/android/server/BatteryService;->updateBatteryWarningLevelLocked()V

    .line 358
    .end local v1    # "obs":Landroid/database/ContentObserver;
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    monitor-exit v0

    goto :goto_28

    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_7 .. :try_end_27} :catchall_25

    throw v1

    .line 360
    :cond_28
    :goto_28
    return-void
.end method

.method onShellCommand(Lcom/android/server/BatteryService$Shell;Ljava/lang/String;)I
    .registers 14
    .param p1, "shell"    # Lcom/android/server/BatteryService$Shell;
    .param p2, "cmd"    # Ljava/lang/String;

    .line 952
    if-nez p2, :cond_7

    .line 953
    invoke-virtual {p1, p2}, Lcom/android/server/BatteryService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 955
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/BatteryService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 956
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x32165859    # -4.90009824E8f

    const/4 v3, 0x2

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v1, v2, :cond_39

    const v2, 0x1bc62

    if-eq v1, v2, :cond_2e

    const v2, 0x6761d4f

    if-eq v1, v2, :cond_23

    goto :goto_44

    :cond_23
    const-string/jumbo v1, "reset"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    move v1, v3

    goto :goto_45

    :cond_2e
    const-string/jumbo v1, "set"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    move v1, v5

    goto :goto_45

    :cond_39
    const-string/jumbo v1, "unplug"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    move v1, v6

    goto :goto_45

    :cond_44
    :goto_44
    move v1, v4

    :goto_45
    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_1fa

    .line 1059
    invoke-virtual {p1, p2}, Lcom/android/server/BatteryService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 1044
    :pswitch_4e
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->parseOptions(Lcom/android/server/BatteryService$Shell;)I

    move-result v1

    .line 1045
    .local v1, "opts":I
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.DEVICE_POWER"

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1049
    .local v2, "ident":J
    :try_start_5f
    iget-boolean v4, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-eqz v4, :cond_6f

    .line 1050
    iput-boolean v6, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    .line 1051
    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-object v5, p0, Lcom/android/server/BatteryService;->mLastHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {v4, v5}, Lcom/android/server/BatteryService;->copy(Landroid/hardware/health/V1_0/HealthInfo;Landroid/hardware/health/V1_0/HealthInfo;)V

    .line 1052
    invoke-direct {p0, v0, v1}, Lcom/android/server/BatteryService;->processValuesFromShellLocked(Ljava/io/PrintWriter;I)V
    :try_end_6f
    .catchall {:try_start_5f .. :try_end_6f} :catchall_75

    .line 1055
    :cond_6f
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1056
    nop

    .line 1057
    .end local v1    # "opts":I
    .end local v2    # "ident":J
    goto/16 :goto_1f2

    .line 1055
    .restart local v1    # "opts":I
    .restart local v2    # "ident":J
    :catchall_75
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 976
    .end local v1    # "opts":I
    .end local v2    # "ident":J
    :pswitch_7a
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->parseOptions(Lcom/android/server/BatteryService$Shell;)I

    move-result v1

    .line 977
    .restart local v1    # "opts":I
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "android.permission.DEVICE_POWER"

    invoke-virtual {v7, v8, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    invoke-virtual {p1}, Lcom/android/server/BatteryService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 980
    .local v2, "key":Ljava/lang/String;
    if-nez v2, :cond_93

    .line 981
    const-string v3, "No property specified"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 982
    return v4

    .line 985
    :cond_93
    invoke-virtual {p1}, Lcom/android/server/BatteryService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v7

    .line 986
    .local v7, "value":Ljava/lang/String;
    if-nez v7, :cond_9f

    .line 987
    const-string v3, "No value specified"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 988
    return v4

    .line 992
    :cond_9f
    :try_start_9f
    iget-boolean v8, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-nez v8, :cond_aa

    .line 993
    iget-object v8, p0, Lcom/android/server/BatteryService;->mLastHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-object v9, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {v8, v9}, Lcom/android/server/BatteryService;->copy(Landroid/hardware/health/V1_0/HealthInfo;Landroid/hardware/health/V1_0/HealthInfo;)V

    .line 995
    :cond_aa
    const/4 v8, 0x1

    .line 996
    .local v8, "update":Z
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_204

    goto :goto_113

    :sswitch_b3
    const-string v3, "invalid"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_113

    const/16 v3, 0x8

    goto :goto_114

    :sswitch_be
    const-string v3, "counter"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_113

    const/4 v3, 0x6

    goto :goto_114

    :sswitch_c8
    const-string/jumbo v3, "level"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_113

    const/4 v3, 0x5

    goto :goto_114

    :sswitch_d3
    const-string/jumbo v3, "temp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_113

    const/4 v3, 0x7

    goto :goto_114

    :sswitch_de
    const-string/jumbo v9, "usb"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_113

    goto :goto_114

    :sswitch_e8
    const-string v3, "ac"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_113

    move v3, v5

    goto :goto_114

    :sswitch_f2
    const-string/jumbo v3, "present"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_113

    move v3, v6

    goto :goto_114

    :sswitch_fd
    const-string/jumbo v3, "status"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_113

    const/4 v3, 0x4

    goto :goto_114

    :sswitch_108
    const-string/jumbo v3, "wireless"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_113

    const/4 v3, 0x3

    goto :goto_114

    :cond_113
    :goto_113
    move v3, v4

    :goto_114
    packed-switch v3, :pswitch_data_22a

    .line 1025
    new-instance v3, Ljava/lang/StringBuilder;

    goto/16 :goto_181

    .line 1022
    :pswitch_11b
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    .line 1023
    goto/16 :goto_194

    .line 1019
    :pswitch_123
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    .line 1020
    goto/16 :goto_194

    .line 1016
    :pswitch_12d
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    .line 1017
    goto/16 :goto_194

    .line 1013
    :pswitch_137
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    .line 1014
    goto :goto_194

    .line 1010
    :pswitch_140
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    .line 1011
    goto :goto_194

    .line 1007
    :pswitch_149
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_153

    move v9, v5

    goto :goto_154

    :cond_153
    move v9, v6

    :goto_154
    iput-boolean v9, v3, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    .line 1008
    goto :goto_194

    .line 1004
    :pswitch_157
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_161

    move v9, v5

    goto :goto_162

    :cond_161
    move v9, v6

    :goto_162
    iput-boolean v9, v3, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    .line 1005
    goto :goto_194

    .line 1001
    :pswitch_165
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_16f

    move v9, v5

    goto :goto_170

    :cond_16f
    move v9, v6

    :goto_170
    iput-boolean v9, v3, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    .line 1002
    goto :goto_194

    .line 998
    :pswitch_173
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_17d

    move v9, v5

    goto :goto_17e

    :cond_17d
    move v9, v6

    :goto_17e
    iput-boolean v9, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    .line 999
    goto :goto_194

    .line 1025
    :goto_181
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown set option: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1026
    const/4 v8, 0x0

    .line 1029
    :goto_194
    if-eqz v8, :cond_1a8

    .line 1030
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9
    :try_end_19a
    .catch Ljava/lang/NumberFormatException; {:try_start_9f .. :try_end_19a} :catch_1aa

    .line 1032
    .local v9, "ident":J
    :try_start_19a
    iput-boolean v5, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    .line 1033
    invoke-direct {p0, v0, v1}, Lcom/android/server/BatteryService;->processValuesFromShellLocked(Ljava/io/PrintWriter;I)V
    :try_end_19f
    .catchall {:try_start_19a .. :try_end_19f} :catchall_1a3

    .line 1035
    :try_start_19f
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1036
    goto :goto_1a8

    .line 1035
    :catchall_1a3
    move-exception v3

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_1a8
    .catch Ljava/lang/NumberFormatException; {:try_start_19f .. :try_end_1a8} :catch_1aa

    .line 1041
    .end local v8    # "update":Z
    .end local v9    # "ident":J
    :cond_1a8
    :goto_1a8
    nop

    .line 1042
    .end local v1    # "opts":I
    .end local v2    # "key":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    goto :goto_1f2

    .line 1038
    .restart local v1    # "opts":I
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v7    # "value":Ljava/lang/String;
    :catch_1aa
    move-exception v3

    .line 1039
    .local v3, "ex":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1040
    return v4

    .line 958
    .end local v1    # "opts":I
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "ex":Ljava/lang/NumberFormatException;
    .end local v7    # "value":Ljava/lang/String;
    :pswitch_1c0
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->parseOptions(Lcom/android/server/BatteryService$Shell;)I

    move-result v1

    .line 959
    .restart local v1    # "opts":I
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.DEVICE_POWER"

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    iget-boolean v2, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-nez v2, :cond_1d8

    .line 962
    iget-object v2, p0, Lcom/android/server/BatteryService;->mLastHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {v2, v3}, Lcom/android/server/BatteryService;->copy(Landroid/hardware/health/V1_0/HealthInfo;Landroid/hardware/health/V1_0/HealthInfo;)V

    .line 964
    :cond_1d8
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iput-boolean v6, v2, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    .line 965
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iput-boolean v6, v2, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    .line 966
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iput-boolean v6, v2, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    .line 967
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 969
    .local v2, "ident":J
    :try_start_1e8
    iput-boolean v5, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    .line 970
    invoke-direct {p0, v0, v1}, Lcom/android/server/BatteryService;->processValuesFromShellLocked(Ljava/io/PrintWriter;I)V
    :try_end_1ed
    .catchall {:try_start_1e8 .. :try_end_1ed} :catchall_1f3

    .line 972
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 973
    nop

    .line 974
    .end local v1    # "opts":I
    .end local v2    # "ident":J
    nop

    .line 1061
    :goto_1f2
    return v6

    .line 972
    .restart local v1    # "opts":I
    .restart local v2    # "ident":J
    :catchall_1f3
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    nop

    nop

    :pswitch_data_1fa
    .packed-switch 0x0
        :pswitch_1c0
        :pswitch_7a
        :pswitch_4e
    .end packed-switch

    :sswitch_data_204
    .sparse-switch
        -0x3b9b7862 -> :sswitch_108
        -0x3532300e -> :sswitch_fd
        -0x12f88745 -> :sswitch_f2
        0xc22 -> :sswitch_e8
        0x1c584 -> :sswitch_de
        0x3643d4 -> :sswitch_d3
        0x6219b84 -> :sswitch_c8
        0x391755fc -> :sswitch_be
        0x74cff1f7 -> :sswitch_b3
    .end sparse-switch

    :pswitch_data_22a
    .packed-switch 0x0
        :pswitch_173
        :pswitch_165
        :pswitch_157
        :pswitch_149
        :pswitch_140
        :pswitch_137
        :pswitch_12d
        :pswitch_123
        :pswitch_11b
    .end packed-switch
.end method

.method public onStart()V
    .registers 4

    .line 331
    invoke-direct {p0}, Lcom/android/server/BatteryService;->registerHealthCallback()V

    .line 333
    new-instance v0, Lcom/android/server/BatteryService$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/BatteryService$BinderService;-><init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$1;)V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mBinderService:Lcom/android/server/BatteryService$BinderService;

    .line 334
    const-string v0, "battery"

    iget-object v2, p0, Lcom/android/server/BatteryService;->mBinderService:Lcom/android/server/BatteryService$BinderService;

    invoke-virtual {p0, v0, v2}, Lcom/android/server/BatteryService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 335
    new-instance v0, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;

    invoke-direct {v0, p0, v1}, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;-><init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$1;)V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mBatteryPropertiesRegistrar:Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;

    .line 336
    const-string v0, "batteryproperties"

    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryPropertiesRegistrar:Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;

    invoke-virtual {p0, v0, v2}, Lcom/android/server/BatteryService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 337
    const-class v0, Landroid/os/BatteryManagerInternal;

    new-instance v2, Lcom/android/server/BatteryService$LocalService;

    invoke-direct {v2, p0, v1}, Lcom/android/server/BatteryService$LocalService;-><init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$1;)V

    invoke-virtual {p0, v0, v2}, Lcom/android/server/BatteryService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 338
    return-void
.end method

.method parseOptions(Lcom/android/server/BatteryService$Shell;)I
    .registers 5
    .param p1, "shell"    # Lcom/android/server/BatteryService$Shell;

    .line 942
    const/4 v0, 0x0

    .line 943
    .local v0, "opts":I
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/BatteryService$Shell;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "opt":Ljava/lang/String;
    if-eqz v1, :cond_13

    .line 944
    const-string v1, "-f"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 945
    or-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 948
    :cond_13
    return v0
.end method
