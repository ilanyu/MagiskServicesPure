.class public Lcom/android/server/stats/StatsCompanionService;
.super Landroid/os/IStatsCompanionService$Stub;
.source "StatsCompanionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/stats/StatsCompanionService$StatsdDeathRecipient;,
        Lcom/android/server/stats/StatsCompanionService$Lifecycle;,
        Lcom/android/server/stats/StatsCompanionService$ShutdownEventReceiver;,
        Lcom/android/server/stats/StatsCompanionService$PeriodicAlarmReceiver;,
        Lcom/android/server/stats/StatsCompanionService$PullingAlarmReceiver;,
        Lcom/android/server/stats/StatsCompanionService$AnomalyAlarmReceiver;,
        Lcom/android/server/stats/StatsCompanionService$AppUpdateReceiver;
    }
.end annotation


# static fields
.field public static final CODE_DATA_BROADCAST:I = 0x1

.field public static final CODE_SUBSCRIBER_BROADCAST:I = 0x1

.field public static final CONFIG_DIR:Ljava/lang/String; = "/data/misc/stats-service"

.field public static final DEATH_THRESHOLD:I = 0xa

.field static final DEBUG:Z = false

.field private static final EXTERNAL_STATS_SYNC_TIMEOUT_MILLIS:J = 0x7d0L

.field public static final EXTRA_LAST_REPORT_TIME:Ljava/lang/String; = "android.app.extra.LAST_REPORT_TIME"

.field private static final MILLIS_IN_A_DAY:J

.field public static final RESULT_RECEIVER_CONTROLLER_KEY:Ljava/lang/String; = "controller_activity"

.field static final TAG:Ljava/lang/String; = "StatsCompanionService"

.field private static sStatsd:Landroid/os/IStatsManager;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sStatsdLock"
    .end annotation
.end field

.field private static final sStatsdLock:Ljava/lang/Object;


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mAnomalyAlarmIntent:Landroid/app/PendingIntent;

.field private final mAppUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mDeathTimeMillis:Ljava/util/HashSet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sStatsdLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeletedFiles:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sStatsdLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mKernelCpuSpeedReaders:[Lcom/android/internal/os/KernelCpuSpeedReader;

.field private mKernelUidCpuActiveTimeReader:Lcom/android/internal/os/KernelUidCpuActiveTimeReader;

.field private mKernelUidCpuClusterTimeReader:Lcom/android/internal/os/KernelUidCpuClusterTimeReader;

.field private mKernelUidCpuFreqTimeReader:Lcom/android/internal/os/KernelUidCpuFreqTimeReader;

.field private mKernelUidCpuTimeReader:Lcom/android/internal/os/KernelUidCpuTimeReader;

.field private final mKernelWakelockReader:Lcom/android/internal/os/KernelWakelockReader;

.field private final mPeriodicAlarmIntent:Landroid/app/PendingIntent;

.field private final mPullingAlarmIntent:Landroid/app/PendingIntent;

.field private final mShutdownEventReceiver:Lcom/android/server/stats/StatsCompanionService$ShutdownEventReceiver;

.field private final mStatFsData:Landroid/os/StatFs;

.field private final mStatFsSystem:Landroid/os/StatFs;

.field private final mStatFsTemp:Landroid/os/StatFs;

.field private mTelephony:Landroid/telephony/TelephonyManager;

.field private final mTmpWakelockStats:Lcom/android/internal/os/KernelWakelockStats;

.field private final mUserUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiManager:Landroid/net/wifi/IWifiManager;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 100
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/stats/StatsCompanionService;->MILLIS_IN_A_DAY:J

    .line 125
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/stats/StatsCompanionService;->sStatsdLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .line 157
    invoke-direct {p0}, Landroid/os/IStatsCompanionService$Stub;-><init>()V

    .line 133
    new-instance v0, Lcom/android/internal/os/KernelWakelockReader;

    invoke-direct {v0}, Lcom/android/internal/os/KernelWakelockReader;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mKernelWakelockReader:Lcom/android/internal/os/KernelWakelockReader;

    .line 134
    new-instance v0, Lcom/android/internal/os/KernelWakelockStats;

    invoke-direct {v0}, Lcom/android/internal/os/KernelWakelockStats;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mTmpWakelockStats:Lcom/android/internal/os/KernelWakelockStats;

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mWifiManager:Landroid/net/wifi/IWifiManager;

    .line 136
    iput-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mTelephony:Landroid/telephony/TelephonyManager;

    .line 137
    new-instance v1, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mStatFsData:Landroid/os/StatFs;

    .line 138
    new-instance v1, Landroid/os/StatFs;

    .line 139
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mStatFsSystem:Landroid/os/StatFs;

    .line 140
    new-instance v1, Landroid/os/StatFs;

    .line 141
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mStatFsTemp:Landroid/os/StatFs;

    .line 142
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mDeathTimeMillis:Ljava/util/HashSet;

    .line 144
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mDeletedFiles:Ljava/util/HashMap;

    .line 147
    new-instance v1, Lcom/android/internal/os/KernelUidCpuTimeReader;

    invoke-direct {v1}, Lcom/android/internal/os/KernelUidCpuTimeReader;-><init>()V

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mKernelUidCpuTimeReader:Lcom/android/internal/os/KernelUidCpuTimeReader;

    .line 149
    new-instance v1, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;

    invoke-direct {v1}, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;-><init>()V

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mKernelUidCpuFreqTimeReader:Lcom/android/internal/os/KernelUidCpuFreqTimeReader;

    .line 151
    new-instance v1, Lcom/android/internal/os/KernelUidCpuActiveTimeReader;

    invoke-direct {v1}, Lcom/android/internal/os/KernelUidCpuActiveTimeReader;-><init>()V

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mKernelUidCpuActiveTimeReader:Lcom/android/internal/os/KernelUidCpuActiveTimeReader;

    .line 153
    new-instance v1, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;

    invoke-direct {v1}, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;-><init>()V

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mKernelUidCpuClusterTimeReader:Lcom/android/internal/os/KernelUidCpuClusterTimeReader;

    .line 158
    iput-object p1, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    .line 159
    iget-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 161
    iget-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/server/stats/StatsCompanionService$AnomalyAlarmReceiver;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mAnomalyAlarmIntent:Landroid/app/PendingIntent;

    .line 163
    iget-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/server/stats/StatsCompanionService$PullingAlarmReceiver;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v1, v3, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mPullingAlarmIntent:Landroid/app/PendingIntent;

    .line 165
    iget-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/server/stats/StatsCompanionService$PeriodicAlarmReceiver;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v1, v3, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mPeriodicAlarmIntent:Landroid/app/PendingIntent;

    .line 167
    new-instance v1, Lcom/android/server/stats/StatsCompanionService$AppUpdateReceiver;

    invoke-direct {v1, v0}, Lcom/android/server/stats/StatsCompanionService$AppUpdateReceiver;-><init>(Lcom/android/server/stats/StatsCompanionService$1;)V

    iput-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mAppUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 168
    new-instance v0, Lcom/android/server/stats/StatsCompanionService$1;

    invoke-direct {v0, p0}, Lcom/android/server/stats/StatsCompanionService$1;-><init>(Lcom/android/server/stats/StatsCompanionService;)V

    iput-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mUserUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 188
    new-instance v0, Lcom/android/server/stats/StatsCompanionService$ShutdownEventReceiver;

    invoke-direct {v0}, Lcom/android/server/stats/StatsCompanionService$ShutdownEventReceiver;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mShutdownEventReceiver:Lcom/android/server/stats/StatsCompanionService$ShutdownEventReceiver;

    .line 190
    new-instance v0, Lcom/android/internal/os/PowerProfile;

    invoke-direct {v0, p1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    .line 191
    .local v0, "powerProfile":Lcom/android/internal/os/PowerProfile;
    invoke-virtual {v0}, Lcom/android/internal/os/PowerProfile;->getNumCpuClusters()I

    move-result v1

    .line 192
    .local v1, "numClusters":I
    new-array v2, v1, [Lcom/android/internal/os/KernelCpuSpeedReader;

    iput-object v2, p0, Lcom/android/server/stats/StatsCompanionService;->mKernelCpuSpeedReaders:[Lcom/android/internal/os/KernelCpuSpeedReader;

    .line 193
    const/4 v2, 0x0

    .line 194
    .local v2, "firstCpuOfCluster":I
    nop

    .local v3, "i":I
    :goto_d3
    if-ge v3, v1, :cond_ea

    .line 195
    invoke-virtual {v0, v3}, Lcom/android/internal/os/PowerProfile;->getNumSpeedStepsInCpuCluster(I)I

    move-result v4

    .line 196
    .local v4, "numSpeedSteps":I
    iget-object v5, p0, Lcom/android/server/stats/StatsCompanionService;->mKernelCpuSpeedReaders:[Lcom/android/internal/os/KernelCpuSpeedReader;

    new-instance v6, Lcom/android/internal/os/KernelCpuSpeedReader;

    invoke-direct {v6, v2, v4}, Lcom/android/internal/os/KernelCpuSpeedReader;-><init>(II)V

    aput-object v6, v5, v3

    .line 198
    invoke-virtual {v0, v3}, Lcom/android/internal/os/PowerProfile;->getNumCoresInCpuCluster(I)I

    move-result v5

    add-int/2addr v2, v5

    .line 194
    .end local v4    # "numSpeedSteps":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_d3

    .line 202
    .end local v3    # "i":I
    :cond_ea
    iget-object v3, p0, Lcom/android/server/stats/StatsCompanionService;->mKernelUidCpuFreqTimeReader:Lcom/android/internal/os/KernelUidCpuFreqTimeReader;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->setThrottleInterval(J)V

    .line 203
    iget-object v3, p0, Lcom/android/server/stats/StatsCompanionService;->mKernelUidCpuFreqTimeReader:Lcom/android/internal/os/KernelUidCpuFreqTimeReader;

    invoke-virtual {v3, v0}, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->readFreqs(Lcom/android/internal/os/PowerProfile;)[J

    move-result-object v3

    .line 204
    .local v3, "freqs":[J
    iget-object v6, p0, Lcom/android/server/stats/StatsCompanionService;->mKernelUidCpuClusterTimeReader:Lcom/android/internal/os/KernelUidCpuClusterTimeReader;

    invoke-virtual {v6, v4, v5}, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->setThrottleInterval(J)V

    .line 205
    iget-object v6, p0, Lcom/android/server/stats/StatsCompanionService;->mKernelUidCpuActiveTimeReader:Lcom/android/internal/os/KernelUidCpuActiveTimeReader;

    invoke-virtual {v6, v4, v5}, Lcom/android/internal/os/KernelUidCpuActiveTimeReader;->setThrottleInterval(J)V

    .line 206
    return-void
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .registers 1

    .line 95
    sget-object v0, Lcom/android/server/stats/StatsCompanionService;->sStatsdLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/stats/StatsCompanionService;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/stats/StatsCompanionService;

    .line 95
    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mDeletedFiles:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200()Landroid/os/IStatsManager;
    .registers 1

    .line 95
    sget-object v0, Lcom/android/server/stats/StatsCompanionService;->sStatsd:Landroid/os/IStatsManager;

    return-object v0
.end method

.method static synthetic access$202(Landroid/os/IStatsManager;)Landroid/os/IStatsManager;
    .registers 1
    .param p0, "x0"    # Landroid/os/IStatsManager;

    .line 95
    sput-object p0, Lcom/android/server/stats/StatsCompanionService;->sStatsd:Landroid/os/IStatsManager;

    return-object p0
.end method

.method static synthetic access$300()Landroid/os/IStatsManager;
    .registers 1

    .line 95
    invoke-static {}, Lcom/android/server/stats/StatsCompanionService;->fetchStatsdService()Landroid/os/IStatsManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/stats/StatsCompanionService;Landroid/content/Context;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/stats/StatsCompanionService;
    .param p1, "x1"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    invoke-direct {p0, p1}, Lcom/android/server/stats/StatsCompanionService;->informAllUidsLocked(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/stats/StatsCompanionService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/stats/StatsCompanionService;

    .line 95
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->forgetEverythingLocked()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/stats/StatsCompanionService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/stats/StatsCompanionService;

    .line 95
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->systemReady()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/stats/StatsCompanionService;)Ljava/util/HashSet;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/stats/StatsCompanionService;

    .line 95
    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mDeathTimeMillis:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$900()J
    .registers 2

    .line 95
    sget-wide v0, Lcom/android/server/stats/StatsCompanionService;->MILLIS_IN_A_DAY:J

    return-wide v0
.end method

.method private addNetworkStats(ILjava/util/List;Landroid/net/NetworkStats;Z)V
    .registers 13
    .param p1, "tag"    # I
    .param p3, "stats"    # Landroid/net/NetworkStats;
    .param p4, "withFGBG"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;",
            "Landroid/net/NetworkStats;",
            "Z)V"
        }
    .end annotation

    .line 525
    .local p2, "ret":Ljava/util/List;, "Ljava/util/List<Landroid/os/StatsLogEventWrapper;>;"
    invoke-virtual {p3}, Landroid/net/NetworkStats;->size()I

    move-result v0

    .line 526
    .local v0, "size":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    .line 527
    .local v1, "elapsedNanos":J
    new-instance v3, Landroid/net/NetworkStats$Entry;

    invoke-direct {v3}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 528
    .local v3, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_e
    if-ge v4, v0, :cond_43

    .line 529
    invoke-virtual {p3, v4, v3}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    .line 530
    new-instance v5, Landroid/os/StatsLogEventWrapper;

    if-eqz p4, :cond_19

    const/4 v6, 0x6

    goto :goto_1a

    :cond_19
    const/4 v6, 0x5

    :goto_1a
    invoke-direct {v5, v1, v2, p1, v6}, Landroid/os/StatsLogEventWrapper;-><init>(JII)V

    .line 531
    .local v5, "e":Landroid/os/StatsLogEventWrapper;
    iget v6, v3, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-virtual {v5, v6}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 532
    if-eqz p4, :cond_29

    .line 533
    iget v6, v3, Landroid/net/NetworkStats$Entry;->set:I

    invoke-virtual {v5, v6}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 535
    :cond_29
    iget-wide v6, v3, Landroid/net/NetworkStats$Entry;->rxBytes:J

    invoke-virtual {v5, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 536
    iget-wide v6, v3, Landroid/net/NetworkStats$Entry;->rxPackets:J

    invoke-virtual {v5, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 537
    iget-wide v6, v3, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-virtual {v5, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 538
    iget-wide v6, v3, Landroid/net/NetworkStats$Entry;->txPackets:J

    invoke-virtual {v5, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 539
    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 528
    .end local v5    # "e":Landroid/os/StatsLogEventWrapper;
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 541
    .end local v4    # "j":I
    :cond_43
    return-void
.end method

.method private static awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;
    .registers 6
    .param p0, "receiver"    # Landroid/os/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/SynchronousResultReceiver;",
            ")TT;"
        }
    .end annotation

    .line 582
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 583
    return-object v0

    .line 587
    :cond_4
    const-wide/16 v1, 0x7d0

    .line 588
    :try_start_6
    invoke-virtual {p0, v1, v2}, Landroid/os/SynchronousResultReceiver;->awaitResult(J)Landroid/os/SynchronousResultReceiver$Result;

    move-result-object v1

    .line 589
    .local v1, "result":Landroid/os/SynchronousResultReceiver$Result;
    iget-object v2, v1, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    if-eqz v2, :cond_1f

    .line 591
    iget-object v2, v1, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->setDefusable(Z)V

    .line 593
    iget-object v2, v1, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    const-string v3, "controller_activity"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .line 595
    .local v2, "data":Landroid/os/Parcelable;, "TT;"
    if-eqz v2, :cond_1f

    .line 596
    return-object v2

    .line 599
    .end local v2    # "data":Landroid/os/Parcelable;, "TT;"
    :cond_1f
    const-string v2, "StatsCompanionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "no controller energy info supplied for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/SynchronousResultReceiver;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_6 .. :try_end_3a} :catch_3b

    .line 602
    .end local v1    # "result":Landroid/os/SynchronousResultReceiver$Result;
    goto :goto_5c

    .line 600
    :catch_3b
    move-exception v1

    .line 601
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    const-string v2, "StatsCompanionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "timeout reading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/SynchronousResultReceiver;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " stats"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    .end local v1    # "e":Ljava/util/concurrent/TimeoutException;
    :goto_5c
    return-object v0
.end method

.method private enforceCallingPermission()V
    .registers 4

    .line 1013
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_b

    .line 1014
    return-void

    .line 1016
    :cond_b
    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATSCOMPANION"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    return-void
.end method

.method private static fetchStatsdService()Landroid/os/IStatsManager;
    .registers 1

    .line 1025
    const-string/jumbo v0, "stats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IStatsManager;

    move-result-object v0

    return-object v0
.end method

.method private forgetEverythingLocked()V
    .registers 3

    .line 1158
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/stats/StatsCompanionService;->sStatsd:Landroid/os/IStatsManager;

    .line 1159
    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mAppUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1160
    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mUserUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1161
    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mShutdownEventReceiver:Lcom/android/server/stats/StatsCompanionService$ShutdownEventReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1162
    invoke-virtual {p0}, Lcom/android/server/stats/StatsCompanionService;->cancelAnomalyAlarm()V

    .line 1163
    invoke-virtual {p0}, Lcom/android/server/stats/StatsCompanionService;->cancelPullingAlarm()V

    .line 1164
    return-void
.end method

.method private final informAllUidsLocked(Landroid/content/Context;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sStatsdLock"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 273
    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 274
    .local v0, "um":Landroid/os/UserManager;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 275
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    .line 280
    .local v2, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 281
    .local v3, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 282
    .local v4, "versions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 285
    .local v5, "apps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_25
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 286
    .local v7, "profile":Landroid/content/pm/UserInfo;
    const v8, 0x402000

    iget v9, v7, Landroid/content/pm/UserInfo;->id:I

    .line 287
    invoke-virtual {v1, v8, v9}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v8

    .line 288
    .local v8, "pi":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v9, 0x0

    .line 288
    .local v9, "j":I
    :goto_3b
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_7b

    .line 289
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/PackageInfo;

    iget-object v10, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v10, :cond_78

    .line 290
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/PackageInfo;

    iget-object v10, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/PackageInfo;

    invoke-virtual {v10}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/PackageInfo;

    iget-object v10, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    :cond_78
    add-int/lit8 v9, v9, 0x1

    goto :goto_3b

    .line 295
    .end local v7    # "profile":Landroid/content/pm/UserInfo;
    .end local v8    # "pi":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "j":I
    :cond_7b
    goto :goto_25

    .line 296
    :cond_7c
    sget-object v6, Lcom/android/server/stats/StatsCompanionService;->sStatsd:Landroid/os/IStatsManager;

    invoke-static {v3}, Lcom/android/server/stats/StatsCompanionService;->toIntArray(Ljava/util/List;)[I

    move-result-object v7

    invoke-static {v4}, Lcom/android/server/stats/StatsCompanionService;->toLongArray(Ljava/util/List;)[J

    move-result-object v8

    .line 297
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    .line 296
    invoke-interface {v5, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    invoke-interface {v6, v7, v8, v9}, Landroid/os/IStatsManager;->informAllUidData([I[J[Ljava/lang/String;)V

    .line 301
    return-void
.end method

.method static synthetic lambda$pullKernelUidCpuActiveTime$3(JILjava/util/List;IJ)V
    .registers 9
    .param p0, "elapsedNanos"    # J
    .param p2, "tagId"    # I
    .param p3, "pulledData"    # Ljava/util/List;
    .param p4, "uid"    # I
    .param p5, "cpuActiveTimesMs"    # J

    .line 775
    new-instance v0, Landroid/os/StatsLogEventWrapper;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, p2, v1}, Landroid/os/StatsLogEventWrapper;-><init>(JII)V

    .line 776
    .local v0, "e":Landroid/os/StatsLogEventWrapper;
    invoke-virtual {v0, p4}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 777
    invoke-virtual {v0, p5, p6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 778
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 779
    return-void
.end method

.method static synthetic lambda$pullKernelUidCpuClusterTime$2(JILjava/util/List;I[J)V
    .registers 10
    .param p0, "elapsedNanos"    # J
    .param p2, "tagId"    # I
    .param p3, "pulledData"    # Ljava/util/List;
    .param p4, "uid"    # I
    .param p5, "cpuClusterTimesMs"    # [J

    .line 762
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p5

    if-ge v0, v1, :cond_1b

    .line 763
    new-instance v1, Landroid/os/StatsLogEventWrapper;

    const/4 v2, 0x3

    invoke-direct {v1, p0, p1, p2, v2}, Landroid/os/StatsLogEventWrapper;-><init>(JII)V

    .line 764
    .local v1, "e":Landroid/os/StatsLogEventWrapper;
    invoke-virtual {v1, p4}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 765
    invoke-virtual {v1, v0}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 766
    aget-wide v2, p5, v0

    invoke-virtual {v1, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 767
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 762
    .end local v1    # "e":Landroid/os/StatsLogEventWrapper;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 769
    .end local v0    # "i":I
    :cond_1b
    return-void
.end method

.method static synthetic lambda$pullKernelUidCpuFreqTime$1(JILjava/util/List;I[J)V
    .registers 11
    .param p0, "elapsedNanos"    # J
    .param p2, "tagId"    # I
    .param p3, "pulledData"    # Ljava/util/List;
    .param p4, "uid"    # I
    .param p5, "cpuFreqTimeMs"    # [J

    .line 747
    const/4 v0, 0x0

    .local v0, "freqIndex":I
    :goto_1
    array-length v1, p5

    if-ge v0, v1, :cond_23

    .line 748
    aget-wide v1, p5, v0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_20

    .line 749
    new-instance v1, Landroid/os/StatsLogEventWrapper;

    const/4 v2, 0x3

    invoke-direct {v1, p0, p1, p2, v2}, Landroid/os/StatsLogEventWrapper;-><init>(JII)V

    .line 750
    .local v1, "e":Landroid/os/StatsLogEventWrapper;
    invoke-virtual {v1, p4}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 751
    invoke-virtual {v1, v0}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 752
    aget-wide v2, p5, v0

    invoke-virtual {v1, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 753
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 747
    .end local v1    # "e":Landroid/os/StatsLogEventWrapper;
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 756
    .end local v0    # "freqIndex":I
    :cond_23
    return-void
.end method

.method static synthetic lambda$pullKernelUidCpuTime$0(JILjava/util/List;IJJ)V
    .registers 11
    .param p0, "elapsedNanos"    # J
    .param p2, "tagId"    # I
    .param p3, "pulledData"    # Ljava/util/List;
    .param p4, "uid"    # I
    .param p5, "userTimeUs"    # J
    .param p7, "systemTimeUs"    # J

    .line 736
    new-instance v0, Landroid/os/StatsLogEventWrapper;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p1, p2, v1}, Landroid/os/StatsLogEventWrapper;-><init>(JII)V

    .line 737
    .local v0, "e":Landroid/os/StatsLogEventWrapper;
    invoke-virtual {v0, p4}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 738
    invoke-virtual {v0, p5, p6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 739
    invoke-virtual {v0, p7, p8}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 740
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 741
    return-void
.end method

.method private pullBluetoothActivityInfo(ILjava/util/List;)V
    .registers 8
    .param p1, "tagId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 834
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/os/StatsLogEventWrapper;>;"
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->pullBluetoothData()Landroid/bluetooth/BluetoothActivityEnergyInfo;

    move-result-object v0

    .line 835
    .local v0, "info":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    new-instance v1, Landroid/os/StatsLogEventWrapper;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    const/4 v4, 0x6

    invoke-direct {v1, v2, v3, p1, v4}, Landroid/os/StatsLogEventWrapper;-><init>(JII)V

    .line 836
    .local v1, "e":Landroid/os/StatsLogEventWrapper;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getTimeStamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 837
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getBluetoothStackState()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 838
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerTxTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 839
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerRxTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 840
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerIdleTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 841
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerEnergyUsed()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 842
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 843
    return-void
.end method

.method private pullBluetoothBytesTransfer(ILjava/util/List;)V
    .registers 13
    .param p1, "tagId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 685
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/os/StatsLogEventWrapper;>;"
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->pullBluetoothData()Landroid/bluetooth/BluetoothActivityEnergyInfo;

    move-result-object v0

    .line 686
    .local v0, "info":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    .line 687
    .local v1, "elapsedNanos":J
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getUidTraffic()[Landroid/bluetooth/UidTraffic;

    move-result-object v3

    if-eqz v3, :cond_39

    .line 688
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getUidTraffic()[Landroid/bluetooth/UidTraffic;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_14
    if-ge v5, v4, :cond_39

    aget-object v6, v3, v5

    .line 689
    .local v6, "traffic":Landroid/bluetooth/UidTraffic;
    new-instance v7, Landroid/os/StatsLogEventWrapper;

    const/4 v8, 0x3

    invoke-direct {v7, v1, v2, p1, v8}, Landroid/os/StatsLogEventWrapper;-><init>(JII)V

    .line 690
    .local v7, "e":Landroid/os/StatsLogEventWrapper;
    invoke-virtual {v6}, Landroid/bluetooth/UidTraffic;->getUid()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 691
    invoke-virtual {v6}, Landroid/bluetooth/UidTraffic;->getRxBytes()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 692
    invoke-virtual {v6}, Landroid/bluetooth/UidTraffic;->getTxBytes()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 693
    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 688
    .end local v6    # "traffic":Landroid/bluetooth/UidTraffic;
    .end local v7    # "e":Landroid/os/StatsLogEventWrapper;
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    .line 696
    :cond_39
    return-void
.end method

.method private declared-synchronized pullBluetoothData()Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .registers 4

    monitor-enter p0

    .line 846
    :try_start_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 847
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_19

    .line 848
    new-instance v1, Landroid/os/SynchronousResultReceiver;

    const-string v2, "bluetooth"

    invoke-direct {v1, v2}, Landroid/os/SynchronousResultReceiver;-><init>(Ljava/lang/String;)V

    .line 849
    .local v1, "bluetoothReceiver":Landroid/os/SynchronousResultReceiver;
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->requestControllerActivityEnergyInfo(Landroid/os/ResultReceiver;)V

    .line 850
    invoke-static {v1}, Lcom/android/server/stats/StatsCompanionService;->awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothActivityEnergyInfo;
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_23

    monitor-exit p0

    return-object v2

    .line 852
    .end local v1    # "bluetoothReceiver":Landroid/os/SynchronousResultReceiver;
    :cond_19
    :try_start_19
    const-string v1, "StatsCompanionService"

    const-string v2, "Failed to get bluetooth adapter!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_23

    .line 853
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 845
    .end local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :catchall_23
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/stats/StatsCompanionService;
    throw v0
.end method

.method private pullCpuTimePerFreq(ILjava/util/List;)V
    .registers 11
    .param p1, "tagId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 718
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/os/StatsLogEventWrapper;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    .line 719
    .local v0, "elapsedNanos":J
    const/4 v2, 0x0

    .local v2, "cluster":I
    :goto_5
    iget-object v3, p0, Lcom/android/server/stats/StatsCompanionService;->mKernelCpuSpeedReaders:[Lcom/android/internal/os/KernelCpuSpeedReader;

    array-length v3, v3

    if-ge v2, v3, :cond_33

    .line 720
    iget-object v3, p0, Lcom/android/server/stats/StatsCompanionService;->mKernelCpuSpeedReaders:[Lcom/android/internal/os/KernelCpuSpeedReader;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/android/internal/os/KernelCpuSpeedReader;->readAbsolute()[J

    move-result-object v3

    .line 721
    .local v3, "clusterTimeMs":[J
    if-eqz v3, :cond_30

    .line 722
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    .local v4, "speed":I
    :goto_17
    if-ltz v4, :cond_30

    .line 723
    new-instance v5, Landroid/os/StatsLogEventWrapper;

    const/4 v6, 0x3

    invoke-direct {v5, v0, v1, p1, v6}, Landroid/os/StatsLogEventWrapper;-><init>(JII)V

    .line 724
    .local v5, "e":Landroid/os/StatsLogEventWrapper;
    invoke-virtual {v5, v2}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 725
    invoke-virtual {v5, v4}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 726
    aget-wide v6, v3, v4

    invoke-virtual {v5, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 727
    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 722
    .end local v5    # "e":Landroid/os/StatsLogEventWrapper;
    add-int/lit8 v4, v4, -0x1

    goto :goto_17

    .line 719
    .end local v3    # "clusterTimeMs":[J
    .end local v4    # "speed":I
    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 731
    .end local v2    # "cluster":I
    :cond_33
    return-void
.end method

.method private pullDiskSpace(ILjava/util/List;)V
    .registers 7
    .param p1, "tagId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 864
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/os/StatsLogEventWrapper;>;"
    new-instance v0, Landroid/os/StatsLogEventWrapper;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, p1, v3}, Landroid/os/StatsLogEventWrapper;-><init>(JII)V

    .line 865
    .local v0, "e":Landroid/os/StatsLogEventWrapper;
    iget-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mStatFsData:Landroid/os/StatFs;

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 866
    iget-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mStatFsSystem:Landroid/os/StatFs;

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 867
    iget-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mStatFsTemp:Landroid/os/StatFs;

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 868
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 869
    return-void
.end method

.method private pullKernelUidCpuActiveTime(ILjava/util/List;)V
    .registers 7
    .param p1, "tagId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 773
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/os/StatsLogEventWrapper;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    .line 774
    .local v0, "elapsedNanos":J
    iget-object v2, p0, Lcom/android/server/stats/StatsCompanionService;->mKernelUidCpuActiveTimeReader:Lcom/android/internal/os/KernelUidCpuActiveTimeReader;

    new-instance v3, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$jXfS7_WmvALP_3l6Dg3O1qMWGdk;

    invoke-direct {v3, v0, v1, p1, p2}, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$jXfS7_WmvALP_3l6Dg3O1qMWGdk;-><init>(JILjava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/os/KernelUidCpuActiveTimeReader;->readAbsolute(Lcom/android/internal/os/KernelUidCpuActiveTimeReader$Callback;)V

    .line 780
    return-void
.end method

.method private pullKernelUidCpuClusterTime(ILjava/util/List;)V
    .registers 7
    .param p1, "tagId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 760
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/os/StatsLogEventWrapper;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    .line 761
    .local v0, "elapsedNanos":J
    iget-object v2, p0, Lcom/android/server/stats/StatsCompanionService;->mKernelUidCpuClusterTimeReader:Lcom/android/internal/os/KernelUidCpuClusterTimeReader;

    new-instance v3, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$HnKmFmrhuaLvGqFujHXRVkF_MsY;

    invoke-direct {v3, v0, v1, p1, p2}, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$HnKmFmrhuaLvGqFujHXRVkF_MsY;-><init>(JILjava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->readAbsolute(Lcom/android/internal/os/KernelUidCpuClusterTimeReader$Callback;)V

    .line 770
    return-void
.end method

.method private pullKernelUidCpuFreqTime(ILjava/util/List;)V
    .registers 7
    .param p1, "tagId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 745
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/os/StatsLogEventWrapper;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    .line 746
    .local v0, "elapsedNanos":J
    iget-object v2, p0, Lcom/android/server/stats/StatsCompanionService;->mKernelUidCpuFreqTimeReader:Lcom/android/internal/os/KernelUidCpuFreqTimeReader;

    new-instance v3, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$YYl2ZbOgrYdj7ixbv8BOJznEAbA;

    invoke-direct {v3, v0, v1, p1, p2}, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$YYl2ZbOgrYdj7ixbv8BOJznEAbA;-><init>(JILjava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->readAbsolute(Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;)V

    .line 757
    return-void
.end method

.method private pullKernelUidCpuTime(ILjava/util/List;)V
    .registers 7
    .param p1, "tagId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 734
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/os/StatsLogEventWrapper;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    .line 735
    .local v0, "elapsedNanos":J
    iget-object v2, p0, Lcom/android/server/stats/StatsCompanionService;->mKernelUidCpuTimeReader:Lcom/android/internal/os/KernelUidCpuTimeReader;

    new-instance v3, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$huFrwWUJ-ABqZn7Xg215J22rAxY;

    invoke-direct {v3, v0, v1, p1, p2}, Lcom/android/server/stats/-$$Lambda$StatsCompanionService$huFrwWUJ-ABqZn7Xg215J22rAxY;-><init>(JILjava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/os/KernelUidCpuTimeReader;->readAbsolute(Lcom/android/internal/os/KernelUidCpuTimeReader$Callback;)V

    .line 742
    return-void
.end method

.method private pullKernelWakelock(ILjava/util/List;)V
    .registers 13
    .param p1, "tagId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 607
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/os/StatsLogEventWrapper;>;"
    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mKernelWakelockReader:Lcom/android/internal/os/KernelWakelockReader;

    iget-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mTmpWakelockStats:Lcom/android/internal/os/KernelWakelockStats;

    .line 608
    invoke-virtual {v0, v1}, Lcom/android/internal/os/KernelWakelockReader;->readKernelWakelockStats(Lcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;

    move-result-object v0

    .line 609
    .local v0, "wakelockStats":Lcom/android/internal/os/KernelWakelockStats;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    .line 610
    .local v1, "elapsedNanos":J
    invoke-virtual {v0}, Lcom/android/internal/os/KernelWakelockStats;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_48

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 611
    .local v4, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/KernelWakelockStats$Entry;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 612
    .local v5, "name":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/KernelWakelockStats$Entry;

    .line 613
    .local v6, "kws":Lcom/android/internal/os/KernelWakelockStats$Entry;
    new-instance v7, Landroid/os/StatsLogEventWrapper;

    const/4 v8, 0x4

    invoke-direct {v7, v1, v2, p1, v8}, Landroid/os/StatsLogEventWrapper;-><init>(JII)V

    .line 614
    .local v7, "e":Landroid/os/StatsLogEventWrapper;
    invoke-virtual {v7, v5}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    .line 615
    iget v8, v6, Lcom/android/internal/os/KernelWakelockStats$Entry;->mCount:I

    invoke-virtual {v7, v8}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 616
    iget v8, v6, Lcom/android/internal/os/KernelWakelockStats$Entry;->mVersion:I

    invoke-virtual {v7, v8}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 617
    iget-wide v8, v6, Lcom/android/internal/os/KernelWakelockStats$Entry;->mTotalTime:J

    invoke-virtual {v7, v8, v9}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 618
    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 619
    .end local v4    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/KernelWakelockStats$Entry;>;"
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "kws":Lcom/android/internal/os/KernelWakelockStats$Entry;
    .end local v7    # "e":Landroid/os/StatsLogEventWrapper;
    goto :goto_14

    .line 620
    :cond_48
    return-void
.end method

.method private pullMobileBytesTransfer(ILjava/util/List;)V
    .registers 11
    .param p1, "tagId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 664
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/os/StatsLogEventWrapper;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 666
    .local v0, "token":J
    :try_start_4
    const-class v2, Landroid/os/BatteryStatsInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStatsInternal;

    .line 667
    .local v2, "bs":Landroid/os/BatteryStatsInternal;
    invoke-virtual {v2}, Landroid/os/BatteryStatsInternal;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v3

    .line 668
    .local v3, "ifaces":[Ljava/lang/String;
    array-length v4, v3
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_11} :catch_2d
    .catchall {:try_start_4 .. :try_end_11} :catchall_2b

    if-nez v4, :cond_17

    .line 680
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 669
    return-void

    .line 671
    :cond_17
    :try_start_17
    new-instance v4, Lcom/android/internal/net/NetworkStatsFactory;

    invoke-direct {v4}, Lcom/android/internal/net/NetworkStatsFactory;-><init>()V

    .line 673
    .local v4, "nsf":Lcom/android/internal/net/NetworkStatsFactory;
    const/4 v5, -0x1

    const/4 v6, 0x0

    .line 674
    const/4 v7, 0x0

    invoke-virtual {v4, v5, v3, v7, v6}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsDetail(I[Ljava/lang/String;ILandroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v5

    .line 675
    invoke-virtual {v5}, Landroid/net/NetworkStats;->groupedByUid()Landroid/net/NetworkStats;

    move-result-object v5

    .line 676
    .local v5, "stats":Landroid/net/NetworkStats;
    invoke-direct {p0, p1, p2, v5, v7}, Lcom/android/server/stats/StatsCompanionService;->addNetworkStats(ILjava/util/List;Landroid/net/NetworkStats;Z)V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_2a} :catch_2d
    .catchall {:try_start_17 .. :try_end_2a} :catchall_2b

    .end local v2    # "bs":Landroid/os/BatteryStatsInternal;
    .end local v3    # "ifaces":[Ljava/lang/String;
    .end local v4    # "nsf":Lcom/android/internal/net/NetworkStatsFactory;
    .end local v5    # "stats":Landroid/net/NetworkStats;
    goto :goto_35

    .line 680
    :catchall_2b
    move-exception v2

    goto :goto_3a

    .line 677
    :catch_2d
    move-exception v2

    .line 678
    .local v2, "e":Ljava/io/IOException;
    :try_start_2e
    const-string v3, "StatsCompanionService"

    const-string v4, "Pulling netstats for mobile bytes has error"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_35
    .catchall {:try_start_2e .. :try_end_35} :catchall_2b

    .line 680
    .end local v2    # "e":Ljava/io/IOException;
    :goto_35
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 681
    nop

    .line 682
    return-void

    .line 680
    :goto_3a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private pullMobileBytesTransferByFgBg(ILjava/util/List;)V
    .registers 11
    .param p1, "tagId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 699
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/os/StatsLogEventWrapper;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 701
    .local v0, "token":J
    :try_start_4
    const-class v2, Landroid/os/BatteryStatsInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStatsInternal;

    .line 702
    .local v2, "bs":Landroid/os/BatteryStatsInternal;
    invoke-virtual {v2}, Landroid/os/BatteryStatsInternal;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v3

    .line 703
    .local v3, "ifaces":[Ljava/lang/String;
    array-length v4, v3
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_11} :catch_2e
    .catchall {:try_start_4 .. :try_end_11} :catchall_2c

    if-nez v4, :cond_17

    .line 713
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 704
    return-void

    .line 706
    :cond_17
    :try_start_17
    new-instance v4, Lcom/android/internal/net/NetworkStatsFactory;

    invoke-direct {v4}, Lcom/android/internal/net/NetworkStatsFactory;-><init>()V

    .line 707
    .local v4, "nsf":Lcom/android/internal/net/NetworkStatsFactory;
    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 708
    invoke-virtual {v4, v5, v3, v6, v7}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsDetail(I[Ljava/lang/String;ILandroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v5

    .line 707
    invoke-direct {p0, v5}, Lcom/android/server/stats/StatsCompanionService;->rollupNetworkStatsByFGBG(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v5

    .line 709
    .local v5, "stats":Landroid/net/NetworkStats;
    const/4 v6, 0x1

    invoke-direct {p0, p1, p2, v5, v6}, Lcom/android/server/stats/StatsCompanionService;->addNetworkStats(ILjava/util/List;Landroid/net/NetworkStats;Z)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_2b} :catch_2e
    .catchall {:try_start_17 .. :try_end_2b} :catchall_2c

    .end local v2    # "bs":Landroid/os/BatteryStatsInternal;
    .end local v3    # "ifaces":[Ljava/lang/String;
    .end local v4    # "nsf":Lcom/android/internal/net/NetworkStatsFactory;
    .end local v5    # "stats":Landroid/net/NetworkStats;
    goto :goto_36

    .line 713
    :catchall_2c
    move-exception v2

    goto :goto_3b

    .line 710
    :catch_2e
    move-exception v2

    .line 711
    .local v2, "e":Ljava/io/IOException;
    :try_start_2f
    const-string v3, "StatsCompanionService"

    const-string v4, "Pulling netstats for mobile bytes w/ fg/bg has error"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_2c

    .line 713
    .end local v2    # "e":Ljava/io/IOException;
    :goto_36
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 714
    nop

    .line 715
    return-void

    .line 713
    :goto_3b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private pullModemActivityInfo(ILjava/util/List;)V
    .registers 11
    .param p1, "tagId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 810
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/os/StatsLogEventWrapper;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 811
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/stats/StatsCompanionService;->mTelephony:Landroid/telephony/TelephonyManager;

    if-nez v2, :cond_10

    .line 812
    iget-object v2, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/stats/StatsCompanionService;->mTelephony:Landroid/telephony/TelephonyManager;

    .line 814
    :cond_10
    iget-object v2, p0, Lcom/android/server/stats/StatsCompanionService;->mTelephony:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_93

    .line 815
    new-instance v2, Landroid/os/SynchronousResultReceiver;

    const-string/jumbo v3, "telephony"

    invoke-direct {v2, v3}, Landroid/os/SynchronousResultReceiver;-><init>(Ljava/lang/String;)V

    .line 816
    .local v2, "modemReceiver":Landroid/os/SynchronousResultReceiver;
    iget-object v3, p0, Lcom/android/server/stats/StatsCompanionService;->mTelephony:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->requestModemActivityInfo(Landroid/os/ResultReceiver;)V

    .line 817
    invoke-static {v2}, Lcom/android/server/stats/StatsCompanionService;->awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/telephony/ModemActivityInfo;

    .line 818
    .local v3, "modemInfo":Landroid/telephony/ModemActivityInfo;
    new-instance v4, Landroid/os/StatsLogEventWrapper;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v5

    const/16 v7, 0xa

    invoke-direct {v4, v5, v6, p1, v7}, Landroid/os/StatsLogEventWrapper;-><init>(JII)V

    .line 819
    .local v4, "e":Landroid/os/StatsLogEventWrapper;
    invoke-virtual {v3}, Landroid/telephony/ModemActivityInfo;->getTimestamp()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 820
    invoke-virtual {v3}, Landroid/telephony/ModemActivityInfo;->getSleepTimeMillis()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 821
    invoke-virtual {v3}, Landroid/telephony/ModemActivityInfo;->getIdleTimeMillis()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 822
    invoke-virtual {v3}, Landroid/telephony/ModemActivityInfo;->getTxTimeMillis()[I

    move-result-object v5

    const/4 v6, 0x0

    aget v5, v5, v6

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 823
    invoke-virtual {v3}, Landroid/telephony/ModemActivityInfo;->getTxTimeMillis()[I

    move-result-object v5

    const/4 v6, 0x1

    aget v5, v5, v6

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 824
    invoke-virtual {v3}, Landroid/telephony/ModemActivityInfo;->getTxTimeMillis()[I

    move-result-object v5

    const/4 v6, 0x2

    aget v5, v5, v6

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 825
    invoke-virtual {v3}, Landroid/telephony/ModemActivityInfo;->getTxTimeMillis()[I

    move-result-object v5

    const/4 v6, 0x3

    aget v5, v5, v6

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 826
    invoke-virtual {v3}, Landroid/telephony/ModemActivityInfo;->getTxTimeMillis()[I

    move-result-object v5

    const/4 v6, 0x4

    aget v5, v5, v6

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 827
    invoke-virtual {v3}, Landroid/telephony/ModemActivityInfo;->getRxTimeMillis()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 828
    invoke-virtual {v3}, Landroid/telephony/ModemActivityInfo;->getEnergyUsed()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 829
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 831
    .end local v2    # "modemReceiver":Landroid/os/SynchronousResultReceiver;
    .end local v3    # "modemInfo":Landroid/telephony/ModemActivityInfo;
    .end local v4    # "e":Landroid/os/StatsLogEventWrapper;
    :cond_93
    return-void
.end method

.method private pullProcessMemoryState(ILjava/util/List;)V
    .registers 11
    .param p1, "tagId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 878
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/os/StatsLogEventWrapper;>;"
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 879
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 880
    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getMemoryStateForProcesses()Ljava/util/List;

    move-result-object v0

    .line 881
    .local v0, "processMemoryStates":Ljava/util/List;, "Ljava/util/List<Landroid/app/ProcessMemoryState;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    .line 882
    .local v1, "elapsedNanos":J
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_53

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ProcessMemoryState;

    .line 883
    .local v4, "processMemoryState":Landroid/app/ProcessMemoryState;
    new-instance v5, Landroid/os/StatsLogEventWrapper;

    const/16 v6, 0x8

    invoke-direct {v5, v1, v2, p1, v6}, Landroid/os/StatsLogEventWrapper;-><init>(JII)V

    .line 884
    .local v5, "e":Landroid/os/StatsLogEventWrapper;
    iget v6, v4, Landroid/app/ProcessMemoryState;->uid:I

    invoke-virtual {v5, v6}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 885
    iget-object v6, v4, Landroid/app/ProcessMemoryState;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/os/StatsLogEventWrapper;->writeString(Ljava/lang/String;)V

    .line 886
    iget v6, v4, Landroid/app/ProcessMemoryState;->oomScore:I

    invoke-virtual {v5, v6}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 887
    iget-wide v6, v4, Landroid/app/ProcessMemoryState;->pgfault:J

    invoke-virtual {v5, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 888
    iget-wide v6, v4, Landroid/app/ProcessMemoryState;->pgmajfault:J

    invoke-virtual {v5, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 889
    iget-wide v6, v4, Landroid/app/ProcessMemoryState;->rssInBytes:J

    invoke-virtual {v5, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 890
    iget-wide v6, v4, Landroid/app/ProcessMemoryState;->cacheInBytes:J

    invoke-virtual {v5, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 891
    iget-wide v6, v4, Landroid/app/ProcessMemoryState;->swapInBytes:J

    invoke-virtual {v5, v6, v7}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 892
    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 893
    .end local v4    # "processMemoryState":Landroid/app/ProcessMemoryState;
    .end local v5    # "e":Landroid/os/StatsLogEventWrapper;
    goto :goto_14

    .line 894
    :cond_53
    return-void
.end method

.method private pullSystemElapsedRealtime(ILjava/util/List;)V
    .registers 7
    .param p1, "tagId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 858
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/os/StatsLogEventWrapper;>;"
    new-instance v0, Landroid/os/StatsLogEventWrapper;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, p1, v3}, Landroid/os/StatsLogEventWrapper;-><init>(JII)V

    .line 859
    .local v0, "e":Landroid/os/StatsLogEventWrapper;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 860
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 861
    return-void
.end method

.method private pullSystemUpTime(ILjava/util/List;)V
    .registers 7
    .param p1, "tagId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 872
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/os/StatsLogEventWrapper;>;"
    new-instance v0, Landroid/os/StatsLogEventWrapper;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, p1, v3}, Landroid/os/StatsLogEventWrapper;-><init>(JII)V

    .line 873
    .local v0, "e":Landroid/os/StatsLogEventWrapper;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 874
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 875
    return-void
.end method

.method private pullWifiActivityInfo(ILjava/util/List;)V
    .registers 11
    .param p1, "tagId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 783
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/os/StatsLogEventWrapper;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 784
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/stats/StatsCompanionService;->mWifiManager:Landroid/net/wifi/IWifiManager;

    if-nez v2, :cond_15

    .line 785
    const-string/jumbo v2, "wifi"

    .line 786
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/stats/StatsCompanionService;->mWifiManager:Landroid/net/wifi/IWifiManager;

    .line 788
    :cond_15
    iget-object v2, p0, Lcom/android/server/stats/StatsCompanionService;->mWifiManager:Landroid/net/wifi/IWifiManager;

    if-eqz v2, :cond_76

    .line 790
    :try_start_19
    new-instance v2, Landroid/os/SynchronousResultReceiver;

    const-string/jumbo v3, "wifi"

    invoke-direct {v2, v3}, Landroid/os/SynchronousResultReceiver;-><init>(Ljava/lang/String;)V

    .line 791
    .local v2, "wifiReceiver":Landroid/os/SynchronousResultReceiver;
    iget-object v3, p0, Lcom/android/server/stats/StatsCompanionService;->mWifiManager:Landroid/net/wifi/IWifiManager;

    invoke-interface {v3, v2}, Landroid/net/wifi/IWifiManager;->requestActivityInfo(Landroid/os/ResultReceiver;)V

    .line 792
    invoke-static {v2}, Lcom/android/server/stats/StatsCompanionService;->awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiActivityEnergyInfo;

    .line 793
    .local v3, "wifiInfo":Landroid/net/wifi/WifiActivityEnergyInfo;
    new-instance v4, Landroid/os/StatsLogEventWrapper;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v5

    const/4 v7, 0x6

    invoke-direct {v4, v5, v6, p1, v7}, Landroid/os/StatsLogEventWrapper;-><init>(JII)V

    .line 794
    .local v4, "e":Landroid/os/StatsLogEventWrapper;
    invoke-virtual {v3}, Landroid/net/wifi/WifiActivityEnergyInfo;->getTimeStamp()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 795
    invoke-virtual {v3}, Landroid/net/wifi/WifiActivityEnergyInfo;->getStackState()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/os/StatsLogEventWrapper;->writeInt(I)V

    .line 796
    invoke-virtual {v3}, Landroid/net/wifi/WifiActivityEnergyInfo;->getControllerTxTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 797
    invoke-virtual {v3}, Landroid/net/wifi/WifiActivityEnergyInfo;->getControllerRxTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 798
    invoke-virtual {v3}, Landroid/net/wifi/WifiActivityEnergyInfo;->getControllerIdleTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 799
    invoke-virtual {v3}, Landroid/net/wifi/WifiActivityEnergyInfo;->getControllerEnergyUsed()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/os/StatsLogEventWrapper;->writeLong(J)V

    .line 800
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_63} :catch_66
    .catchall {:try_start_19 .. :try_end_63} :catchall_64

    .line 800
    .end local v2    # "wifiReceiver":Landroid/os/SynchronousResultReceiver;
    .end local v3    # "wifiInfo":Landroid/net/wifi/WifiActivityEnergyInfo;
    .end local v4    # "e":Landroid/os/StatsLogEventWrapper;
    goto :goto_6e

    .line 804
    :catchall_64
    move-exception v2

    goto :goto_72

    .line 801
    :catch_66
    move-exception v2

    .line 802
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_67
    const-string v3, "StatsCompanionService"

    const-string v4, "Pulling wifiManager for wifi controller activity energy info has error"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6e
    .catchall {:try_start_67 .. :try_end_6e} :catchall_64

    .line 804
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_6e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 805
    goto :goto_76

    .line 804
    :goto_72
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 807
    :cond_76
    :goto_76
    return-void
.end method

.method private pullWifiBytesTransfer(ILjava/util/List;)V
    .registers 11
    .param p1, "tagId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 623
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/os/StatsLogEventWrapper;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 626
    .local v0, "token":J
    :try_start_4
    const-class v2, Landroid/os/BatteryStatsInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStatsInternal;

    .line 627
    .local v2, "bs":Landroid/os/BatteryStatsInternal;
    invoke-virtual {v2}, Landroid/os/BatteryStatsInternal;->getWifiIfaces()[Ljava/lang/String;

    move-result-object v3

    .line 628
    .local v3, "ifaces":[Ljava/lang/String;
    array-length v4, v3
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_11} :catch_2d
    .catchall {:try_start_4 .. :try_end_11} :catchall_2b

    if-nez v4, :cond_17

    .line 640
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 629
    return-void

    .line 631
    :cond_17
    :try_start_17
    new-instance v4, Lcom/android/internal/net/NetworkStatsFactory;

    invoke-direct {v4}, Lcom/android/internal/net/NetworkStatsFactory;-><init>()V

    .line 633
    .local v4, "nsf":Lcom/android/internal/net/NetworkStatsFactory;
    const/4 v5, -0x1

    const/4 v6, 0x0

    .line 634
    const/4 v7, 0x0

    invoke-virtual {v4, v5, v3, v7, v6}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsDetail(I[Ljava/lang/String;ILandroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v5

    .line 635
    invoke-virtual {v5}, Landroid/net/NetworkStats;->groupedByUid()Landroid/net/NetworkStats;

    move-result-object v5

    .line 636
    .local v5, "stats":Landroid/net/NetworkStats;
    invoke-direct {p0, p1, p2, v5, v7}, Lcom/android/server/stats/StatsCompanionService;->addNetworkStats(ILjava/util/List;Landroid/net/NetworkStats;Z)V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_2a} :catch_2d
    .catchall {:try_start_17 .. :try_end_2a} :catchall_2b

    .end local v2    # "bs":Landroid/os/BatteryStatsInternal;
    .end local v3    # "ifaces":[Ljava/lang/String;
    .end local v4    # "nsf":Lcom/android/internal/net/NetworkStatsFactory;
    .end local v5    # "stats":Landroid/net/NetworkStats;
    goto :goto_35

    .line 640
    :catchall_2b
    move-exception v2

    goto :goto_3a

    .line 637
    :catch_2d
    move-exception v2

    .line 638
    .local v2, "e":Ljava/io/IOException;
    :try_start_2e
    const-string v3, "StatsCompanionService"

    const-string v4, "Pulling netstats for wifi bytes has error"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_35
    .catchall {:try_start_2e .. :try_end_35} :catchall_2b

    .line 640
    .end local v2    # "e":Ljava/io/IOException;
    :goto_35
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 641
    nop

    .line 642
    return-void

    .line 640
    :goto_3a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private pullWifiBytesTransferByFgBg(ILjava/util/List;)V
    .registers 11
    .param p1, "tagId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/os/StatsLogEventWrapper;",
            ">;)V"
        }
    .end annotation

    .line 645
    .local p2, "pulledData":Ljava/util/List;, "Ljava/util/List<Landroid/os/StatsLogEventWrapper;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 647
    .local v0, "token":J
    :try_start_4
    const-class v2, Landroid/os/BatteryStatsInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStatsInternal;

    .line 648
    .local v2, "bs":Landroid/os/BatteryStatsInternal;
    invoke-virtual {v2}, Landroid/os/BatteryStatsInternal;->getWifiIfaces()[Ljava/lang/String;

    move-result-object v3

    .line 649
    .local v3, "ifaces":[Ljava/lang/String;
    array-length v4, v3
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_11} :catch_2e
    .catchall {:try_start_4 .. :try_end_11} :catchall_2c

    if-nez v4, :cond_17

    .line 659
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 650
    return-void

    .line 652
    :cond_17
    :try_start_17
    new-instance v4, Lcom/android/internal/net/NetworkStatsFactory;

    invoke-direct {v4}, Lcom/android/internal/net/NetworkStatsFactory;-><init>()V

    .line 653
    .local v4, "nsf":Lcom/android/internal/net/NetworkStatsFactory;
    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 654
    invoke-virtual {v4, v5, v3, v6, v7}, Lcom/android/internal/net/NetworkStatsFactory;->readNetworkStatsDetail(I[Ljava/lang/String;ILandroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v5

    .line 653
    invoke-direct {p0, v5}, Lcom/android/server/stats/StatsCompanionService;->rollupNetworkStatsByFGBG(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v5

    .line 655
    .local v5, "stats":Landroid/net/NetworkStats;
    const/4 v6, 0x1

    invoke-direct {p0, p1, p2, v5, v6}, Lcom/android/server/stats/StatsCompanionService;->addNetworkStats(ILjava/util/List;Landroid/net/NetworkStats;Z)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_2b} :catch_2e
    .catchall {:try_start_17 .. :try_end_2b} :catchall_2c

    .end local v2    # "bs":Landroid/os/BatteryStatsInternal;
    .end local v3    # "ifaces":[Ljava/lang/String;
    .end local v4    # "nsf":Lcom/android/internal/net/NetworkStatsFactory;
    .end local v5    # "stats":Landroid/net/NetworkStats;
    goto :goto_36

    .line 659
    :catchall_2c
    move-exception v2

    goto :goto_3b

    .line 656
    :catch_2e
    move-exception v2

    .line 657
    .local v2, "e":Ljava/io/IOException;
    :try_start_2f
    const-string v3, "StatsCompanionService"

    const-string v4, "Pulling netstats for wifi bytes w/ fg/bg has error"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_2c

    .line 659
    .end local v2    # "e":Ljava/io/IOException;
    :goto_36
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 660
    nop

    .line 661
    return-void

    .line 659
    :goto_3b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private rollupNetworkStatsByFGBG(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .registers 9
    .param p1, "stats"    # Landroid/net/NetworkStats;

    .line 548
    new-instance v0, Landroid/net/NetworkStats;

    invoke-virtual {p1}, Landroid/net/NetworkStats;->getElapsedRealtime()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 550
    .local v0, "ret":Landroid/net/NetworkStats;
    new-instance v1, Landroid/net/NetworkStats$Entry;

    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 551
    .local v1, "entry":Landroid/net/NetworkStats$Entry;
    sget-object v2, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    iput-object v2, v1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 552
    const/4 v2, 0x0

    iput v2, v1, Landroid/net/NetworkStats$Entry;->tag:I

    .line 553
    const/4 v3, -0x1

    iput v3, v1, Landroid/net/NetworkStats$Entry;->metered:I

    .line 554
    iput v3, v1, Landroid/net/NetworkStats$Entry;->roaming:I

    .line 556
    invoke-virtual {p1}, Landroid/net/NetworkStats;->size()I

    move-result v3

    .line 557
    .local v3, "size":I
    new-instance v4, Landroid/net/NetworkStats$Entry;

    invoke-direct {v4}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 558
    .local v4, "recycle":Landroid/net/NetworkStats$Entry;
    nop

    .local v2, "i":I
    :goto_25
    if-ge v2, v3, :cond_4d

    .line 559
    invoke-virtual {p1, v2, v4}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    .line 562
    iget v5, v4, Landroid/net/NetworkStats$Entry;->tag:I

    if-eqz v5, :cond_2f

    goto :goto_4a

    .line 564
    :cond_2f
    iget v5, v4, Landroid/net/NetworkStats$Entry;->set:I

    iput v5, v1, Landroid/net/NetworkStats$Entry;->set:I

    .line 565
    iget v5, v4, Landroid/net/NetworkStats$Entry;->uid:I

    iput v5, v1, Landroid/net/NetworkStats$Entry;->uid:I

    .line 566
    iget-wide v5, v4, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iput-wide v5, v1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 567
    iget-wide v5, v4, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iput-wide v5, v1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 568
    iget-wide v5, v4, Landroid/net/NetworkStats$Entry;->txBytes:J

    iput-wide v5, v1, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 569
    iget-wide v5, v4, Landroid/net/NetworkStats$Entry;->txPackets:J

    iput-wide v5, v1, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 571
    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 558
    :goto_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 573
    .end local v2    # "i":I
    :cond_4d
    return-object v0
.end method

.method private sayHiToStatsd()V
    .registers 11

    .line 1067
    sget-object v0, Lcom/android/server/stats/StatsCompanionService;->sStatsdLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1068
    :try_start_3
    sget-object v1, Lcom/android/server/stats/StatsCompanionService;->sStatsd:Landroid/os/IStatsManager;

    if-eqz v1, :cond_18

    .line 1069
    const-string v1, "StatsCompanionService"

    const-string v2, "Trying to fetch statsd, but it was already fetched"

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "sStatsd is not null when being fetched"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1071
    monitor-exit v0

    return-void

    .line 1073
    :cond_18
    invoke-static {}, Lcom/android/server/stats/StatsCompanionService;->fetchStatsdService()Landroid/os/IStatsManager;

    move-result-object v1

    sput-object v1, Lcom/android/server/stats/StatsCompanionService;->sStatsd:Landroid/os/IStatsManager;

    .line 1074
    sget-object v1, Lcom/android/server/stats/StatsCompanionService;->sStatsd:Landroid/os/IStatsManager;

    if-nez v1, :cond_2b

    .line 1075
    const-string v1, "StatsCompanionService"

    const-string v2, "Could not yet find statsd to tell it that StatsCompanion is alive."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_c9

    return-void

    .line 1080
    :cond_2b
    :try_start_2b
    sget-object v1, Lcom/android/server/stats/StatsCompanionService;->sStatsd:Landroid/os/IStatsManager;

    invoke-interface {v1}, Landroid/os/IStatsManager;->statsCompanionReady()V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_30} :catch_bc
    .catchall {:try_start_2b .. :try_end_30} :catchall_c9

    .line 1083
    :try_start_30
    sget-object v1, Lcom/android/server/stats/StatsCompanionService;->sStatsd:Landroid/os/IStatsManager;

    invoke-interface {v1}, Landroid/os/IStatsManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/android/server/stats/StatsCompanionService$StatsdDeathRecipient;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/stats/StatsCompanionService$StatsdDeathRecipient;-><init>(Lcom/android/server/stats/StatsCompanionService;Lcom/android/server/stats/StatsCompanionService$1;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_40} :catch_41
    .catchall {:try_start_30 .. :try_end_40} :catchall_c9

    .line 1087
    goto :goto_4d

    .line 1084
    :catch_41
    move-exception v1

    .line 1085
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_42
    const-string v2, "StatsCompanionService"

    const-string/jumbo v3, "linkToDeath(StatsdDeathRecipient) failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1086
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->forgetEverythingLocked()V

    .line 1089
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_4d
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1090
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1091
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1092
    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1093
    iget-object v3, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/stats/StatsCompanionService;->mAppUpdateReceiver:Landroid/content/BroadcastReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, v1

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1098
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.USER_INITIALIZE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 1099
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1100
    iget-object v4, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/stats/StatsCompanionService;->mUserUpdateReceiver:Landroid/content/BroadcastReceiver;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v7, v1

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1104
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.REBOOT"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 1105
    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1106
    iget-object v4, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/stats/StatsCompanionService;->mShutdownEventReceiver:Lcom/android/server/stats/StatsCompanionService$ShutdownEventReceiver;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v7, v1

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1108
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_a6
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_a6} :catch_bc
    .catchall {:try_start_42 .. :try_end_a6} :catchall_c9

    .line 1111
    .local v2, "token":J
    :try_start_a6
    iget-object v4, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/android/server/stats/StatsCompanionService;->informAllUidsLocked(Landroid/content/Context;)V
    :try_end_ab
    .catchall {:try_start_a6 .. :try_end_ab} :catchall_b7

    .line 1113
    :try_start_ab
    invoke-static {v2, v3}, Lcom/android/server/stats/StatsCompanionService;->restoreCallingIdentity(J)V

    .line 1114
    nop

    .line 1115
    const-string v4, "StatsCompanionService"

    const-string v5, "Told statsd that StatsCompanionService is alive."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "token":J
    goto :goto_c7

    .line 1113
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    .restart local v2    # "token":J
    :catchall_b7
    move-exception v4

    invoke-static {v2, v3}, Lcom/android/server/stats/StatsCompanionService;->restoreCallingIdentity(J)V

    throw v4
    :try_end_bc
    .catch Landroid/os/RemoteException; {:try_start_ab .. :try_end_bc} :catch_bc
    .catchall {:try_start_ab .. :try_end_bc} :catchall_c9

    .line 1116
    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "token":J
    :catch_bc
    move-exception v1

    .line 1117
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_bd
    const-string v2, "StatsCompanionService"

    const-string v3, "Failed to inform statsd that statscompanion is ready"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1118
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->forgetEverythingLocked()V

    .line 1120
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_c7
    monitor-exit v0

    .line 1121
    return-void

    .line 1120
    :catchall_c9
    move-exception v1

    monitor-exit v0
    :try_end_cb
    .catchall {:try_start_bd .. :try_end_cb} :catchall_c9

    throw v1
.end method

.method private systemReady()V
    .registers 1

    .line 1060
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->sayHiToStatsd()V

    .line 1061
    return-void
.end method

.method private static final toIntArray(Ljava/util/List;)[I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 255
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 256
    .local v0, "ret":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_19

    .line 257
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 256
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 259
    .end local v1    # "i":I
    :cond_19
    return-object v0
.end method

.method private static final toLongArray(Ljava/util/List;)[J
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)[J"
        }
    .end annotation

    .line 263
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [J

    .line 264
    .local v0, "ret":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_19

    .line 265
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 264
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 267
    .end local v1    # "i":I
    :cond_19
    return-object v0
.end method


# virtual methods
.method public cancelAlarmForSubscriberTriggering()V
    .registers 5

    .line 483
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->enforceCallingPermission()V

    .line 486
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 488
    .local v0, "callingToken":J
    :try_start_7
    iget-object v2, p0, Lcom/android/server/stats/StatsCompanionService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/server/stats/StatsCompanionService;->mPeriodicAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_13

    .line 490
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 491
    nop

    .line 492
    return-void

    .line 490
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public cancelAnomalyAlarm()V
    .registers 5

    .line 455
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->enforceCallingPermission()V

    .line 457
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 459
    .local v0, "callingToken":J
    :try_start_7
    iget-object v2, p0, Lcom/android/server/stats/StatsCompanionService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/server/stats/StatsCompanionService;->mAnomalyAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_13

    .line 461
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 462
    nop

    .line 463
    return-void

    .line 461
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public cancelPullingAlarm()V
    .registers 5

    .line 512
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->enforceCallingPermission()V

    .line 515
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 517
    .local v0, "callingToken":J
    :try_start_7
    iget-object v2, p0, Lcom/android/server/stats/StatsCompanionService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/server/stats/StatsCompanionService;->mPullingAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_13

    .line 519
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 520
    nop

    .line 521
    return-void

    .line 519
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 13
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1168
    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    const-string v1, "StatsCompanionService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 1170
    :cond_b
    sget-object v0, Lcom/android/server/stats/StatsCompanionService;->sStatsdLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1171
    :try_start_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number of configuration files deleted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/stats/StatsCompanionService;->mDeletedFiles:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1172
    iget-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mDeletedFiles:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_35

    .line 1173
    const-string v1, "  timestamp, deleted file name"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1176
    :cond_35
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 1177
    .local v1, "lastBootMillis":J
    iget-object v3, p0, Lcom/android/server/stats/StatsCompanionService;->mDeletedFiles:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_48
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 1178
    .local v4, "elapsedMillis":Ljava/lang/Long;
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    add-long/2addr v5, v1

    .line 1179
    .local v5, "deletionMillis":J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/stats/StatsCompanionService;->mDeletedFiles:Ljava/util/HashMap;

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1180
    .end local v4    # "elapsedMillis":Ljava/lang/Long;
    .end local v5    # "deletionMillis":J
    goto :goto_48

    .line 1181
    .end local v1    # "lastBootMillis":J
    :cond_7e
    monitor-exit v0

    .line 1182
    return-void

    .line 1181
    :catchall_80
    move-exception v1

    monitor-exit v0
    :try_end_82
    .catchall {:try_start_e .. :try_end_82} :catchall_80

    throw v1
.end method

.method public pullData(I)[Landroid/os/StatsLogEventWrapper;
    .registers 6
    .param p1, "tagId"    # I

    .line 901
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->enforceCallingPermission()V

    .line 904
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 905
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Landroid/os/StatsLogEventWrapper;>;"
    packed-switch p1, :pswitch_data_78

    .line 979
    :pswitch_b
    const-string v1, "StatsCompanionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No such tagId data as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    const/4 v1, 0x0

    return-object v1

    .line 971
    :pswitch_23
    invoke-direct {p0, p1, v0}, Lcom/android/server/stats/StatsCompanionService;->pullDiskSpace(ILjava/util/List;)V

    .line 972
    goto :goto_6b

    .line 943
    :pswitch_27
    invoke-direct {p0, p1, v0}, Lcom/android/server/stats/StatsCompanionService;->pullKernelUidCpuClusterTime(ILjava/util/List;)V

    .line 944
    goto :goto_6b

    .line 947
    :pswitch_2b
    invoke-direct {p0, p1, v0}, Lcom/android/server/stats/StatsCompanionService;->pullKernelUidCpuActiveTime(ILjava/util/List;)V

    .line 948
    goto :goto_6b

    .line 963
    :pswitch_2f
    invoke-direct {p0, p1, v0}, Lcom/android/server/stats/StatsCompanionService;->pullSystemUpTime(ILjava/util/List;)V

    .line 964
    goto :goto_6b

    .line 967
    :pswitch_33
    invoke-direct {p0, p1, v0}, Lcom/android/server/stats/StatsCompanionService;->pullSystemElapsedRealtime(ILjava/util/List;)V

    .line 968
    goto :goto_6b

    .line 975
    :pswitch_37
    invoke-direct {p0, p1, v0}, Lcom/android/server/stats/StatsCompanionService;->pullProcessMemoryState(ILjava/util/List;)V

    .line 976
    goto :goto_6b

    .line 955
    :pswitch_3b
    invoke-direct {p0, p1, v0}, Lcom/android/server/stats/StatsCompanionService;->pullModemActivityInfo(ILjava/util/List;)V

    .line 956
    goto :goto_6b

    .line 951
    :pswitch_3f
    invoke-direct {p0, p1, v0}, Lcom/android/server/stats/StatsCompanionService;->pullWifiActivityInfo(ILjava/util/List;)V

    .line 952
    goto :goto_6b

    .line 939
    :pswitch_43
    invoke-direct {p0, p1, v0}, Lcom/android/server/stats/StatsCompanionService;->pullKernelUidCpuFreqTime(ILjava/util/List;)V

    .line 940
    goto :goto_6b

    .line 935
    :pswitch_47
    invoke-direct {p0, p1, v0}, Lcom/android/server/stats/StatsCompanionService;->pullKernelUidCpuTime(ILjava/util/List;)V

    .line 936
    goto :goto_6b

    .line 931
    :pswitch_4b
    invoke-direct {p0, p1, v0}, Lcom/android/server/stats/StatsCompanionService;->pullCpuTimePerFreq(ILjava/util/List;)V

    .line 932
    goto :goto_6b

    .line 959
    :pswitch_4f
    invoke-direct {p0, p1, v0}, Lcom/android/server/stats/StatsCompanionService;->pullBluetoothActivityInfo(ILjava/util/List;)V

    .line 960
    goto :goto_6b

    .line 923
    :pswitch_53
    invoke-direct {p0, p1, v0}, Lcom/android/server/stats/StatsCompanionService;->pullBluetoothBytesTransfer(ILjava/util/List;)V

    .line 924
    goto :goto_6b

    .line 927
    :pswitch_57
    invoke-direct {p0, p1, v0}, Lcom/android/server/stats/StatsCompanionService;->pullKernelWakelock(ILjava/util/List;)V

    .line 928
    goto :goto_6b

    .line 919
    :pswitch_5b
    invoke-direct {p0, p1, v0}, Lcom/android/server/stats/StatsCompanionService;->pullMobileBytesTransferByFgBg(ILjava/util/List;)V

    .line 920
    goto :goto_6b

    .line 911
    :pswitch_5f
    invoke-direct {p0, p1, v0}, Lcom/android/server/stats/StatsCompanionService;->pullMobileBytesTransfer(ILjava/util/List;)V

    .line 912
    goto :goto_6b

    .line 915
    :pswitch_63
    invoke-direct {p0, p1, v0}, Lcom/android/server/stats/StatsCompanionService;->pullWifiBytesTransferByFgBg(ILjava/util/List;)V

    .line 916
    goto :goto_6b

    .line 907
    :pswitch_67
    invoke-direct {p0, p1, v0}, Lcom/android/server/stats/StatsCompanionService;->pullWifiBytesTransfer(ILjava/util/List;)V

    .line 908
    nop

    .line 982
    :goto_6b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/os/StatsLogEventWrapper;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/StatsLogEventWrapper;

    return-object v1

    :pswitch_data_78
    .packed-switch 0x2710
        :pswitch_67
        :pswitch_63
        :pswitch_5f
        :pswitch_5b
        :pswitch_57
        :pswitch_b
        :pswitch_53
        :pswitch_4f
        :pswitch_4b
        :pswitch_47
        :pswitch_43
        :pswitch_3f
        :pswitch_3b
        :pswitch_37
        :pswitch_33
        :pswitch_2f
        :pswitch_2b
        :pswitch_27
        :pswitch_23
    .end packed-switch
.end method

.method public sendDataBroadcast(Landroid/os/IBinder;J)V
    .registers 11
    .param p1, "intentSenderBinder"    # Landroid/os/IBinder;
    .param p2, "lastReportTimeNs"    # J

    .line 210
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->enforceCallingPermission()V

    .line 211
    new-instance v0, Landroid/content/IntentSender;

    invoke-direct {v0, p1}, Landroid/content/IntentSender;-><init>(Landroid/os/IBinder;)V

    .line 212
    .local v0, "intentSender":Landroid/content/IntentSender;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    move-object v6, v1

    .line 213
    .local v6, "intent":Landroid/content/Intent;
    const-string v1, "android.app.extra.LAST_REPORT_TIME"

    invoke-virtual {v6, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 215
    :try_start_13
    iget-object v1, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_1c
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_13 .. :try_end_1c} :catch_1d

    .line 218
    goto :goto_25

    .line 216
    :catch_1d
    move-exception v1

    .line 217
    .local v1, "e":Landroid/content/IntentSender$SendIntentException;
    const-string v2, "StatsCompanionService"

    const-string v3, "Unable to send using IntentSender"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    .end local v1    # "e":Landroid/content/IntentSender$SendIntentException;
    :goto_25
    return-void
.end method

.method public sendSubscriberBroadcast(Landroid/os/IBinder;JJJJ[Ljava/lang/String;Landroid/os/StatsDimensionsValue;)V
    .registers 32
    .param p1, "intentSenderBinder"    # Landroid/os/IBinder;
    .param p2, "configUid"    # J
    .param p4, "configKey"    # J
    .param p6, "subscriptionId"    # J
    .param p8, "subscriptionRuleId"    # J
    .param p10, "cookies"    # [Ljava/lang/String;
    .param p11, "dimensionsValue"    # Landroid/os/StatsDimensionsValue;

    move-wide/from16 v1, p2

    move-object/from16 v3, p10

    .line 226
    invoke-direct/range {p0 .. p0}, Lcom/android/server/stats/StatsCompanionService;->enforceCallingPermission()V

    .line 227
    new-instance v4, Landroid/content/IntentSender;

    move-object/from16 v10, p1

    invoke-direct {v4, v10}, Landroid/content/IntentSender;-><init>(Landroid/os/IBinder;)V

    .line 228
    .local v4, "intentSender":Landroid/content/IntentSender;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v5, "android.app.extra.STATS_CONFIG_UID"

    .line 229
    invoke-virtual {v0, v5, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v5, "android.app.extra.STATS_CONFIG_KEY"

    .line 230
    move-wide/from16 v11, p4

    invoke-virtual {v0, v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v5, "android.app.extra.STATS_SUBSCRIPTION_ID"

    .line 231
    move-wide/from16 v13, p6

    invoke-virtual {v0, v5, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v5, "android.app.extra.STATS_SUBSCRIPTION_RULE_ID"

    .line 232
    move-wide/from16 v8, p8

    invoke-virtual {v0, v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v5, "android.app.extra.STATS_DIMENSIONS_VALUE"

    .line 233
    move-object/from16 v15, p11

    invoke-virtual {v0, v5, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v7

    .line 235
    .local v7, "intent":Landroid/content/Intent;
    new-instance v0, Ljava/util/ArrayList;

    array-length v5, v3

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object v6, v0

    .line 236
    .local v6, "cookieList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v0, v3

    const/4 v5, 0x0

    :goto_42
    if-ge v5, v0, :cond_50

    move/from16 v16, v0

    aget-object v0, v3, v5

    .local v0, "cookie":Ljava/lang/String;
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v0    # "cookie":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    move/from16 v0, v16

    goto :goto_42

    .line 237
    :cond_50
    const-string v0, "android.app.extra.STATS_BROADCAST_SUBSCRIBER_COOKIES"

    invoke-virtual {v7, v0, v6}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 247
    move-object/from16 v5, p0

    :try_start_57
    iget-object v0, v5, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;
    :try_end_59
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_57 .. :try_end_59} :catch_70

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v5, v0

    move-object/from16 v19, v6

    move/from16 v6, v16

    .end local v6    # "cookieList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v19, "cookieList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v16, v7

    .end local v7    # "intent":Landroid/content/Intent;
    .local v16, "intent":Landroid/content/Intent;
    move-object/from16 v8, v17

    move-object/from16 v9, v18

    :try_start_6a
    invoke-virtual/range {v4 .. v9}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_6d
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_6a .. :try_end_6d} :catch_6e

    .line 251
    goto :goto_90

    .line 248
    :catch_6e
    move-exception v0

    goto :goto_75

    .end local v16    # "intent":Landroid/content/Intent;
    .end local v19    # "cookieList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "cookieList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7    # "intent":Landroid/content/Intent;
    :catch_70
    move-exception v0

    move-object/from16 v19, v6

    move-object/from16 v16, v7

    .line 249
    .end local v6    # "cookieList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "intent":Landroid/content/Intent;
    .local v0, "e":Landroid/content/IntentSender$SendIntentException;
    .restart local v16    # "intent":Landroid/content/Intent;
    .restart local v19    # "cookieList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_75
    const-string v5, "StatsCompanionService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to send using IntentSender from uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "; presumably it had been cancelled."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    .end local v0    # "e":Landroid/content/IntentSender$SendIntentException;
    :goto_90
    return-void
.end method

.method public setAlarmForSubscriberTriggering(J)V
    .registers 8
    .param p1, "timestampMs"    # J

    .line 467
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->enforceCallingPermission()V

    .line 471
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 475
    .local v0, "callingToken":J
    :try_start_7
    iget-object v2, p0, Lcom/android/server/stats/StatsCompanionService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/server/stats/StatsCompanionService;->mPeriodicAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, p1, p2, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_14

    .line 477
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 478
    nop

    .line 479
    return-void

    .line 477
    :catchall_14
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setAnomalyAlarm(J)V
    .registers 8
    .param p1, "timestampMs"    # J

    .line 439
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->enforceCallingPermission()V

    .line 441
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 447
    .local v0, "callingToken":J
    :try_start_7
    iget-object v2, p0, Lcom/android/server/stats/StatsCompanionService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/server/stats/StatsCompanionService;->mAnomalyAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, p1, p2, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_14

    .line 449
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 450
    nop

    .line 451
    return-void

    .line 449
    :catchall_14
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setPullingAlarm(J)V
    .registers 8
    .param p1, "nextPullTimeMs"    # J

    .line 496
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->enforceCallingPermission()V

    .line 500
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 504
    .local v0, "callingToken":J
    :try_start_7
    iget-object v2, p0, Lcom/android/server/stats/StatsCompanionService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/server/stats/StatsCompanionService;->mPullingAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, p1, p2, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_14

    .line 506
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 507
    nop

    .line 508
    return-void

    .line 506
    :catchall_14
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public statsdReady()V
    .registers 5

    .line 987
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->enforceCallingPermission()V

    .line 989
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->sayHiToStatsd()V

    .line 990
    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.app.action.STATSD_STARTED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 992
    const/high16 v2, 0x1000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const-string v3, "android.permission.DUMP"

    .line 990
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 995
    return-void
.end method

.method public triggerUidSnapshot()V
    .registers 7

    .line 999
    invoke-direct {p0}, Lcom/android/server/stats/StatsCompanionService;->enforceCallingPermission()V

    .line 1000
    sget-object v0, Lcom/android/server/stats/StatsCompanionService;->sStatsdLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1001
    :try_start_6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_27

    .line 1003
    .local v1, "token":J
    :try_start_a
    iget-object v3, p0, Lcom/android/server/stats/StatsCompanionService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/server/stats/StatsCompanionService;->informAllUidsLocked(Landroid/content/Context;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_15
    .catchall {:try_start_a .. :try_end_f} :catchall_13

    .line 1007
    :try_start_f
    invoke-static {v1, v2}, Lcom/android/server/stats/StatsCompanionService;->restoreCallingIdentity(J)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_27

    .line 1008
    :goto_12
    goto :goto_21

    .line 1007
    :catchall_13
    move-exception v3

    goto :goto_23

    .line 1004
    :catch_15
    move-exception v3

    .line 1005
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_16
    const-string v4, "StatsCompanionService"

    const-string v5, "Failed to trigger uid snapshot."

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_13

    .line 1007
    .end local v3    # "e":Landroid/os/RemoteException;
    :try_start_1d
    invoke-static {v1, v2}, Lcom/android/server/stats/StatsCompanionService;->restoreCallingIdentity(J)V

    goto :goto_12

    .line 1009
    .end local v1    # "token":J
    :goto_21
    monitor-exit v0

    .line 1010
    return-void

    .line 1007
    .restart local v1    # "token":J
    :goto_23
    invoke-static {v1, v2}, Lcom/android/server/stats/StatsCompanionService;->restoreCallingIdentity(J)V

    throw v3

    .line 1009
    .end local v1    # "token":J
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_1d .. :try_end_29} :catchall_27

    throw v1
.end method
