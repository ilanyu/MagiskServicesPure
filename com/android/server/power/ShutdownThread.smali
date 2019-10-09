.class public final Lcom/android/server/power/ShutdownThread;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_DONE_POLL_WAIT_MS:I = 0x1f4

.field private static final ACTIVITY_MANAGER_STOP_PERCENT:I = 0x4

.field private static final BROADCAST_STOP_PERCENT:I = 0x2

.field private static final MAX_BROADCAST_TIME:I = 0x2710

.field private static final MAX_RADIO_WAIT_TIME:I = 0x2ee0

.field private static final MAX_SHUTDOWN_WAIT_TIME:I = 0x4e20

.field private static final MAX_UNCRYPT_WAIT_TIME:I = 0xdbba0

.field private static final METRICS_FILE_BASENAME:Ljava/lang/String; = "/data/system/shutdown-metrics"

.field private static METRIC_AM:Ljava/lang/String; = null

.field private static METRIC_PM:Ljava/lang/String; = null

.field private static METRIC_RADIO:Ljava/lang/String; = null

.field private static METRIC_RADIOS:Ljava/lang/String; = null

.field private static METRIC_SEND_BROADCAST:Ljava/lang/String; = null

.field private static METRIC_SHUTDOWN_TIME_START:Ljava/lang/String; = null

.field private static METRIC_SYSTEM_SERVER:Ljava/lang/String; = null

.field private static final MOUNT_SERVICE_STOP_PERCENT:I = 0x14

.field private static final PACKAGE_MANAGER_STOP_PERCENT:I = 0x6

.field private static final RADIOS_STATE_POLL_SLEEP_MS:I = 0x64

.field private static final RADIO_STOP_PERCENT:I = 0x12

.field public static final REBOOT_SAFEMODE_PROPERTY:Ljava/lang/String; = "persist.sys.safemode"

.field public static final RO_SAFEMODE_PROPERTY:Ljava/lang/String; = "ro.sys.safemode"

.field public static final SHUTDOWN_ACTION_PROPERTY:Ljava/lang/String; = "sys.shutdown.requested"

.field private static final SHUTDOWN_VIBRATE_MS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ShutdownThread"

.field private static final TRON_METRICS:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final VENDOR_SUBSYS_MAX_WAIT_MS:I = 0x2710

.field private static final VENDOR_SUBSYS_STATE_CHECK_INTERVAL_MS:I = 0x64

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static mReason:Ljava/lang/String;

.field private static mReboot:Z

.field private static mRebootHasProgressBar:Z

.field private static mRebootSafeMode:Z

.field private static sConfirmDialog:Lmiui/app/AlertDialog;

.field private static final sInstance:Lcom/android/server/power/ShutdownThread;

.field private static sIsStarted:Z

.field private static final sIsStartedGuard:Ljava/lang/Object;


# instance fields
.field private mActionDone:Z

.field private final mActionDoneSync:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mHandler:Landroid/os/Handler;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mScreenWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 92
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    .line 93
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    .line 108
    new-instance v0, Lcom/android/server/power/ShutdownThread;

    invoke-direct {v0}, Lcom/android/server/power/ShutdownThread;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    .line 110
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 111
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 112
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/ShutdownThread;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 116
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    .line 122
    const-string/jumbo v0, "shutdown_system_server"

    sput-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_SYSTEM_SERVER:Ljava/lang/String;

    .line 123
    const-string/jumbo v0, "shutdown_send_shutdown_broadcast"

    sput-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_SEND_BROADCAST:Ljava/lang/String;

    .line 124
    const-string/jumbo v0, "shutdown_activity_manager"

    sput-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_AM:Ljava/lang/String;

    .line 125
    const-string/jumbo v0, "shutdown_package_manager"

    sput-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_PM:Ljava/lang/String;

    .line 126
    const-string/jumbo v0, "shutdown_radios"

    sput-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_RADIOS:Ljava/lang/String;

    .line 127
    const-string/jumbo v0, "shutdown_radio"

    sput-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_RADIO:Ljava/lang/String;

    .line 128
    const-string v0, "begin_shutdown"

    sput-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_SHUTDOWN_TIME_START:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 141
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 130
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    .line 142
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .registers 1
    .param p0, "x0"    # Landroid/content/Context;

    .line 63
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/power/ShutdownThread;)Landroid/app/ProgressDialog;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownThread;

    .line 63
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownThread;

    .line 63
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()Landroid/util/TimingsTraceLog;
    .registers 1

    .line 63
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->newTimingsLog()Landroid/util/TimingsTraceLog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .registers 1

    .line 63
    sget-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_RADIO:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 63
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->metricStarted(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500()Z
    .registers 1

    .line 63
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    return v0
.end method

.method static synthetic access$600()Lcom/android/server/power/ShutdownThread;
    .registers 1

    .line 63
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/power/ShutdownThread;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/CharSequence;

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$800(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 63
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->metricEnded(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900()Landroid/util/ArrayMap;
    .registers 1

    .line 63
    sget-object v0, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    return-object v0
.end method

.method private static beginShutdownSequence(Landroid/content/Context;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .line 370
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v0

    .line 371
    :try_start_3
    sget-boolean v1, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v1, :cond_10

    .line 372
    const-string v1, "ShutdownThread"

    const-string v2, "Shutdown sequence already running, returning."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    monitor-exit v0

    return-void

    .line 375
    :cond_10
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    .line 376
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_b2

    .line 378
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->showShutdownDialog(Landroid/content/Context;)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/power/ShutdownThread;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 379
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object p0, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    .line 380
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const-string/jumbo v2, "power"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, v0, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    .line 383
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 385
    const/4 v0, 0x0

    :try_start_33
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const-string v5, "ShutdownThread-cpu"

    invoke-virtual {v4, v1, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, v3, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 387
    sget-object v1, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v1, v1, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 388
    sget-object v1, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v1, v1, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_4f
    .catch Ljava/lang/SecurityException; {:try_start_33 .. :try_end_4f} :catch_50

    .line 392
    goto :goto_5c

    .line 389
    :catch_50
    move-exception v1

    .line 390
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v3, "ShutdownThread"

    const-string v4, "No permission to acquire wake lock"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 391
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v2, v3, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 395
    .end local v1    # "e":Ljava/lang/SecurityException;
    :goto_5c
    sget-object v1, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v2, v1, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 396
    sget-object v1, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v1, v1, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_95

    .line 398
    :try_start_6a
    sget-object v1, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v3, v3, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/16 v4, 0x1a

    const-string v5, "ShutdownThread-screen"

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 400
    sget-object v1, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v1, v1, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 401
    sget-object v1, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v1, v1, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_88
    .catch Ljava/lang/SecurityException; {:try_start_6a .. :try_end_88} :catch_89

    .line 405
    goto :goto_95

    .line 402
    :catch_89
    move-exception v1

    .line 403
    .restart local v1    # "e":Ljava/lang/SecurityException;
    const-string v3, "ShutdownThread"

    const-string v4, "No permission to acquire wake lock"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 404
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v2, v3, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 408
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_95
    :goto_95
    invoke-static {}, Landroid/app/admin/SecurityLog;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_a3

    .line 409
    const v1, 0x3345a

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Landroid/app/admin/SecurityLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 413
    :cond_a3
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    new-instance v1, Lcom/android/server/power/ShutdownThread$2;

    invoke-direct {v1}, Lcom/android/server/power/ShutdownThread$2;-><init>()V

    iput-object v1, v0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    .line 415
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    invoke-virtual {v0}, Lcom/android/server/power/ShutdownThread;->start()V

    .line 416
    return-void

    .line 376
    :catchall_b2
    move-exception v1

    :try_start_b3
    monitor-exit v0
    :try_end_b4
    .catchall {:try_start_b3 .. :try_end_b4} :catchall_b2

    throw v1
.end method

.method private static metricEnded(Ljava/lang/String;)V
    .registers 7
    .param p0, "metricKey"    # Ljava/lang/String;

    .line 569
    sget-object v0, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 570
    :try_start_3
    sget-object v1, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    .line 571
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-object v4, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    invoke-virtual {v4, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    monitor-exit v0

    .line 573
    return-void

    .line 572
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method private static metricShutdownStart()V
    .registers 5

    .line 576
    sget-object v0, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 577
    :try_start_3
    sget-object v1, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    sget-object v2, Lcom/android/server/power/ShutdownThread;->METRIC_SHUTDOWN_TIME_START:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    monitor-exit v0

    .line 579
    return-void

    .line 578
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method private static metricStarted(Ljava/lang/String;)V
    .registers 7
    .param p0, "metricKey"    # Ljava/lang/String;

    .line 563
    sget-object v0, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 564
    :try_start_3
    sget-object v1, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    const-wide/16 v2, -0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    monitor-exit v0

    .line 566
    return-void

    .line 565
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method private static newTimingsLog()Landroid/util/TimingsTraceLog;
    .registers 4

    .line 559
    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string v1, "ShutdownTiming"

    const-wide/32 v2, 0x80000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    return-object v0
.end method

.method public static reboot(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "confirm"    # Z

    .line 243
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 244
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 245
    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    .line 246
    sput-object p1, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    .line 247
    invoke-static {p0, p2}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    .line 248
    return-void
.end method

.method public static rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reboot"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .line 677
    const-string/jumbo v0, "vendor.peripheral.shutdown_critical_list"

    const-string v1, "ERROR"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 681
    .local v0, "subsysProp":Ljava/lang/String;
    const-string v1, "ERROR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d6

    .line 682
    const-string v1, "ShutdownThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Shutdown critical subsyslist is :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    const-string v1, "ShutdownThread"

    const-string v2, "Waiting for a maximum of 10000ms"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 686
    .local v1, "subsysList":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 687
    .local v2, "wait_count":I
    const/4 v3, 0x1

    .line 689
    .local v3, "okToShutdown":Z
    array-length v4, v1

    .line 691
    .local v4, "subsysListLength":I
    :goto_3c
    const/4 v3, 0x1

    .line 692
    const/4 v5, 0x0

    move v6, v3

    move v3, v5

    .line 692
    .local v3, "i":I
    .local v6, "okToShutdown":Z
    :goto_40
    if-ge v3, v4, :cond_6d

    .line 693
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "vendor.peripheral."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v1, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".state"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ERROR"

    .line 694
    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 699
    .local v7, "subsysState":Ljava/lang/String;
    const-string v8, "ONLINE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6a

    .line 703
    const/4 v6, 0x0

    .line 692
    :cond_6a
    add-int/lit8 v3, v3, 0x1

    goto :goto_40

    .line 706
    .end local v3    # "i":I
    .end local v7    # "subsysState":Ljava/lang/String;
    :cond_6d
    if-nez v6, :cond_76

    .line 707
    const-wide/16 v7, 0x64

    invoke-static {v7, v8}, Landroid/os/SystemClock;->sleep(J)V

    .line 708
    add-int/lit8 v2, v2, 0x1

    .line 710
    :cond_76
    const/4 v3, 0x1

    if-eq v6, v3, :cond_80

    const/16 v7, 0x64

    if-lt v2, v7, :cond_7e

    goto :goto_80

    .line 689
    :cond_7e
    move v3, v6

    goto :goto_3c

    .line 712
    :cond_80
    :goto_80
    if-eq v6, v3, :cond_cf

    .line 713
    nop

    .line 713
    .local v5, "i":I
    :goto_83
    move v3, v5

    .line 713
    .end local v5    # "i":I
    .restart local v3    # "i":I
    array-length v5, v1

    if-ge v3, v5, :cond_d6

    .line 714
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "vendor.peripheral."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v1, v3

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".state"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "ERROR"

    .line 715
    invoke-static {v5, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 720
    .local v5, "subsysState":Ljava/lang/String;
    const-string v7, "ONLINE"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_cb

    .line 721
    const-string v7, "ShutdownThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Subsystem "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v1, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "did not shut down within timeout"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    :cond_cb
    add-int/lit8 v3, v3, 0x1

    move v5, v3

    goto :goto_83

    .line 726
    .end local v3    # "i":I
    .end local v5    # "subsysState":Ljava/lang/String;
    :cond_cf
    const-string v3, "ShutdownThread"

    const-string v5, "Vendor subsystem(s) shutdown successful"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    .end local v1    # "subsysList":[Ljava/lang/String;
    .end local v2    # "wait_count":I
    .end local v4    # "subsysListLength":I
    .end local v6    # "okToShutdown":Z
    :cond_d6
    if-eqz p1, :cond_f9

    .line 730
    const-string v1, "ShutdownThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rebooting, reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    invoke-static {p2}, Lcom/android/server/power/PowerManagerService;->lowLevelReboot(Ljava/lang/String;)V

    .line 732
    const-string v1, "ShutdownThread"

    const-string v2, "Reboot failed, will attempt shutdown instead"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    const/4 p2, 0x0

    .line 751
    :cond_f9
    const-string v1, "ShutdownThread"

    const-string v2, "Performing low-level shutdown..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    invoke-static {p2}, Lcom/android/server/power/PowerManagerService;->lowLevelShutdown(Ljava/lang/String;)V

    .line 753
    return-void
.end method

.method public static rebootSafeMode(Landroid/content/Context;Z)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z

    .line 259
    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 260
    .local v0, "um":Landroid/os/UserManager;
    const-string/jumbo v1, "no_safe_boot"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 261
    return-void

    .line 264
    :cond_13
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 265
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 266
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    .line 267
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    .line 268
    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    .line 269
    return-void
.end method

.method private static saveMetrics(ZLjava/lang/String;)V
    .registers 12
    .param p0, "reboot"    # Z
    .param p1, "reason"    # Ljava/lang/String;

    .line 756
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 757
    .local v0, "metricValue":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "reboot:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    if-eqz p0, :cond_11

    const-string/jumbo v1, "y"

    goto :goto_14

    :cond_11
    const-string/jumbo v1, "n"

    :goto_14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 759
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    sget-object v1, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 761
    .local v1, "metricsSize":I
    const/4 v2, 0x0

    move v3, v2

    .line 761
    .local v3, "i":I
    :goto_2d
    if-ge v3, v1, :cond_74

    .line 762
    sget-object v4, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 763
    .local v4, "name":Ljava/lang/String;
    sget-object v5, Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 764
    .local v5, "value":J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-gez v7, :cond_61

    .line 765
    const-string v7, "ShutdownThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "metricEnded wasn\'t called for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    goto :goto_71

    .line 768
    :cond_61
    const/16 v7, 0x2c

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x3a

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 761
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "value":J
    :goto_71
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    .line 770
    .end local v3    # "i":I
    :cond_74
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/system/shutdown-metrics.tmp"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 771
    .local v3, "tmp":Ljava/io/File;
    nop

    .line 772
    .local v2, "saved":Z
    :try_start_7c
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_81} :catch_a7

    .line 772
    .local v4, "fos":Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .line 773
    :try_start_82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_8f
    .catch Ljava/lang/Throwable; {:try_start_82 .. :try_end_8f} :catch_96
    .catchall {:try_start_82 .. :try_end_8f} :catchall_94

    .line 774
    const/4 v2, 0x1

    .line 775
    :try_start_90
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_93} :catch_a7

    .line 777
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_af

    .line 775
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catchall_94
    move-exception v6

    goto :goto_98

    .line 772
    :catch_96
    move-exception v5

    :try_start_97
    throw v5
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_94

    .line 775
    :goto_98
    if-eqz v5, :cond_a3

    :try_start_9a
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_9d
    .catch Ljava/lang/Throwable; {:try_start_9a .. :try_end_9d} :catch_9e
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9d} :catch_a7

    goto :goto_a6

    :catch_9e
    move-exception v7

    :try_start_9f
    invoke-virtual {v5, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_a6

    :cond_a3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    :goto_a6
    throw v6
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_a7} :catch_a7

    .line 775
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_a7
    move-exception v4

    .line 776
    .local v4, "e":Ljava/io/IOException;
    const-string v5, "ShutdownThread"

    const-string v6, "Cannot save shutdown metrics"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 778
    .end local v4    # "e":Ljava/io/IOException;
    :goto_af
    if-eqz v2, :cond_bb

    .line 779
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/system/shutdown-metrics.txt"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 781
    :cond_bb
    return-void
.end method

.method private setRebootProgress(ILjava/lang/CharSequence;)V
    .registers 5
    .param p1, "progress"    # I
    .param p2, "message"    # Ljava/lang/CharSequence;

    .line 582
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/power/ShutdownThread$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/power/ShutdownThread$4;-><init>(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 593
    return-void
.end method

.method private static showShutdownDialog(Landroid/content/Context;)Landroid/app/ProgressDialog;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .line 273
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 298
    .local v0, "pd":Landroid/app/ProgressDialog;
    sget-object v1, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_6b

    sget-object v1, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    const-string/jumbo v5, "recovery-update"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 301
    sget-object v1, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_29

    sget-object v1, Landroid/os/RecoverySystem;->BLOCK_MAP_FILE:Ljava/io/File;

    .line 302
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_29

    move v1, v4

    goto :goto_2a

    :cond_29
    move v1, v3

    :goto_2a
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    .line 303
    const v1, 0x10405c4

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 304
    sget-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v1, :cond_56

    .line 305
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 306
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 307
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 308
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 309
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 310
    const v1, 0x10405c2

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_c8

    .line 313
    :cond_56
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->showSysuiReboot()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 314
    return-object v2

    .line 316
    :cond_5d
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 317
    const v1, 0x10405c3

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_c8

    .line 320
    :cond_6b
    sget-object v1, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    const v5, 0x104063f

    const v6, 0x10405ab

    if-eqz v1, :cond_b0

    sget-object v1, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    const-string/jumbo v7, "recovery"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b0

    .line 321
    invoke-static {}, Lcom/android/server/RescueParty;->isAttemptingFactoryReset()Z

    move-result v1

    if-eqz v1, :cond_98

    .line 325
    invoke-virtual {p0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 326
    invoke-virtual {p0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 327
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto :goto_c8

    .line 330
    :cond_98
    const v1, 0x10405c0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 331
    const v1, 0x10405bf

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 333
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto :goto_c8

    .line 336
    :cond_b0
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->showSysuiReboot()Z

    move-result v1

    if-eqz v1, :cond_b7

    .line 337
    return-object v2

    .line 339
    :cond_b7
    invoke-virtual {p0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 340
    invoke-virtual {p0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 341
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 343
    :goto_c8
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 344
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 348
    sget-boolean v1, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    invoke-static {p0, v1}, Lcom/android/server/power/ShutdownThreadInjector;->showShutdownAnimOrDialog(Landroid/content/Context;Z)V

    .line 349
    return-object v0
.end method

.method private static showSysuiReboot()Z
    .registers 3

    .line 353
    const-string v0, "ShutdownThread"

    const-string v1, "Attempting to use SysUI shutdown UI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :try_start_7
    const-class v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 357
    .local v0, "service":Lcom/android/server/statusbar/StatusBarManagerInternal;
    sget-boolean v1, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->showShutdownUi(ZLjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 359
    const-string v1, "ShutdownThread"

    const-string v2, "SysUI handling shutdown UI"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_20} :catch_23

    .line 360
    const/4 v1, 0x1

    return v1

    .line 364
    .end local v0    # "service":Lcom/android/server/statusbar/StatusBarManagerInternal;
    :cond_22
    goto :goto_24

    .line 362
    :catch_23
    move-exception v0

    .line 365
    :goto_24
    const-string v0, "ShutdownThread"

    const-string v1, "SysUI is unavailable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    const/4 v0, 0x0

    return v0
.end method

.method public static shutdown(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "confirm"    # Z

    .line 155
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 156
    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 157
    sput-object p1, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    .line 158
    invoke-static {p0, p2}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    .line 159
    return-void
.end method

.method private static shutdownInner(Landroid/content/Context;Z)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z

    .line 164
    invoke-virtual {p0}, Landroid/content/Context;->assertRuntimeOverlayThemable()V

    .line 168
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v0

    .line 169
    :try_start_6
    sget-boolean v1, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v1, :cond_13

    .line 170
    const-string v1, "ShutdownThread"

    const-string v2, "Request to shutdown already running, returning."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    monitor-exit v0

    return-void

    .line 173
    :cond_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_a7

    .line 175
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0052

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 177
    .local v0, "longPressBehavior":I
    sget-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v1, :cond_27

    .line 178
    const v1, 0x10405bc

    goto :goto_31

    .line 179
    :cond_27
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2e

    .line 180
    const v1, 0x104063e

    goto :goto_31

    .line 181
    :cond_2e
    const v1, 0x104063d

    .line 183
    .local v1, "resourceId":I
    :goto_31
    const-string v2, "ShutdownThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Notifying thread to start shutdown longPressBehavior="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    if-eqz p1, :cond_a3

    .line 186
    new-instance v2, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;

    invoke-direct {v2, p0}, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;-><init>(Landroid/content/Context;)V

    .line 187
    .local v2, "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Lmiui/app/AlertDialog;

    if-eqz v3, :cond_57

    .line 188
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v3}, Lmiui/app/AlertDialog;->dismiss()V

    .line 190
    :cond_57
    new-instance v3, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 191
    sget-boolean v4, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v4, :cond_64

    .line 192
    const v4, 0x10405bd

    goto :goto_67

    .line 193
    :cond_64
    const v4, 0x10405ab

    .line 191
    :goto_67
    invoke-virtual {v3, v4}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v3

    .line 194
    invoke-virtual {v3, v1}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040013

    new-instance v5, Lcom/android/server/power/ShutdownThread$1;

    invoke-direct {v5, p0}, Lcom/android/server/power/ShutdownThread$1;-><init>(Landroid/content/Context;)V

    .line 195
    invoke-virtual {v3, v4, v5}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040009

    const/4 v5, 0x0

    .line 200
    invoke-virtual {v3, v4, v5}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v3

    .line 201
    invoke-virtual {v3}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v3

    sput-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Lmiui/app/AlertDialog;

    .line 202
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Lmiui/app/AlertDialog;

    iput-object v3, v2, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    .line 203
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v3, v2}, Lmiui/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 204
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v3}, Lmiui/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 205
    sget-object v3, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v3}, Lmiui/app/AlertDialog;->show()V

    .line 206
    .end local v2    # "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    goto :goto_a6

    .line 207
    :cond_a3
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    .line 209
    :goto_a6
    return-void

    .line 173
    .end local v0    # "longPressBehavior":I
    .end local v1    # "resourceId":I
    :catchall_a7
    move-exception v1

    :try_start_a8
    monitor-exit v0
    :try_end_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_a7

    throw v1
.end method

.method private shutdownRadios(I)V
    .registers 12
    .param p1, "timeout"    # I

    .line 598
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    int-to-long v2, p1

    add-long/2addr v0, v2

    .line 599
    .local v0, "endTime":J
    const/4 v2, 0x1

    new-array v2, v2, [Z

    .line 600
    .local v2, "done":[Z
    new-instance v3, Lcom/android/server/power/ShutdownThread$5;

    move-object v4, v3

    move-object v5, p0

    move-wide v6, v0

    move v8, p1

    move-object v9, v2

    invoke-direct/range {v4 .. v9}, Lcom/android/server/power/ShutdownThread$5;-><init>(Lcom/android/server/power/ShutdownThread;JI[Z)V

    .line 657
    .local v3, "t":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 659
    int-to-long v4, p1

    :try_start_17
    invoke-virtual {v3, v4, v5}, Ljava/lang/Thread;->join(J)V
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1a} :catch_1b

    .line 661
    goto :goto_1c

    .line 660
    :catch_1b
    move-exception v4

    .line 662
    :goto_1c
    const/4 v4, 0x0

    aget-boolean v4, v2, v4

    if-nez v4, :cond_28

    .line 663
    const-string v4, "ShutdownThread"

    const-string v5, "Timed out waiting for Radio shutdown."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    :cond_28
    return-void
.end method

.method private uncrypt()V
    .registers 10

    .line 784
    const-string v0, "ShutdownThread"

    const-string v1, "Calling uncrypt and monitoring the progress..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    new-instance v0, Lcom/android/server/power/ShutdownThread$6;

    invoke-direct {v0, p0}, Lcom/android/server/power/ShutdownThread$6;-><init>(Lcom/android/server/power/ShutdownThread;)V

    .line 807
    .local v0, "progressListener":Landroid/os/RecoverySystem$ProgressListener;
    const/4 v1, 0x1

    new-array v2, v1, [Z

    .line 808
    .local v2, "done":[Z
    const/4 v3, 0x0

    aput-boolean v3, v2, v3

    .line 809
    new-instance v4, Lcom/android/server/power/ShutdownThread$7;

    invoke-direct {v4, p0, v0, v2}, Lcom/android/server/power/ShutdownThread$7;-><init>(Lcom/android/server/power/ShutdownThread;Landroid/os/RecoverySystem$ProgressListener;[Z)V

    .line 824
    .local v4, "t":Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 827
    const-wide/32 v5, 0xdbba0

    :try_start_1d
    invoke-virtual {v4, v5, v6}, Ljava/lang/Thread;->join(J)V
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_20} :catch_21

    .line 829
    goto :goto_22

    .line 828
    :catch_21
    move-exception v5

    .line 830
    :goto_22
    aget-boolean v5, v2, v3

    if-nez v5, :cond_57

    .line 831
    const-string v5, "ShutdownThread"

    const-string v6, "Timed out waiting for uncrypt."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    const/16 v5, 0x64

    .line 833
    .local v5, "uncryptTimeoutError":I
    const-string/jumbo v6, "uncrypt_time: %d\nuncrypt_error: %d\n"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v8, 0x384

    .line 834
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v1

    .line 833
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 836
    .local v1, "timeoutMessage":Ljava/lang/String;
    :try_start_49
    sget-object v3, Landroid/os/RecoverySystem;->UNCRYPT_STATUS_FILE:Ljava/io/File;

    invoke-static {v3, v1}, Landroid/os/FileUtils;->stringToFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4e} :catch_4f

    .line 839
    goto :goto_57

    .line 837
    :catch_4f
    move-exception v3

    .line 838
    .local v3, "e":Ljava/io/IOException;
    const-string v6, "ShutdownThread"

    const-string v7, "Failed to write timeout message to uncrypt status"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 841
    .end local v1    # "timeoutMessage":Ljava/lang/String;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "uncryptTimeoutError":I
    :cond_57
    :goto_57
    return-void
.end method


# virtual methods
.method actionDone()V
    .registers 3

    .line 419
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v0

    .line 420
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    .line 421
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 422
    monitor-exit v0

    .line 423
    return-void

    .line 422
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public run()V
    .registers 18

    .line 430
    move-object/from16 v1, p0

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->newTimingsLog()Landroid/util/TimingsTraceLog;

    move-result-object v2

    .line 431
    .local v2, "shutdownTimingLog":Landroid/util/TimingsTraceLog;
    const-string v0, "SystemServerShutdown"

    invoke-virtual {v2, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 432
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->metricShutdownStart()V

    .line 433
    sget-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_SYSTEM_SERVER:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->metricStarted(Ljava/lang/String;)V

    .line 435
    new-instance v7, Lcom/android/server/power/ShutdownThread$3;

    invoke-direct {v7, v1}, Lcom/android/server/power/ShutdownThread$3;-><init>(Lcom/android/server/power/ShutdownThread;)V

    .line 448
    .local v7, "br":Landroid/content/BroadcastReceiver;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v3, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v3, :cond_24

    const-string v3, "1"

    goto :goto_26

    :cond_24
    const-string v3, "0"

    :goto_26
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    if-eqz v3, :cond_30

    sget-object v3, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    goto :goto_32

    :cond_30
    const-string v3, ""

    :goto_32
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 449
    .local v0, "reason":Ljava/lang/String;
    const-string/jumbo v3, "sys.shutdown.requested"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    .end local v0    # "reason":Ljava/lang/String;
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v0, :cond_4b

    .line 457
    const-string/jumbo v0, "persist.sys.safemode"

    const-string v3, "1"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    :cond_4b
    sget-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_SEND_BROADCAST:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->metricStarted(Ljava/lang/String;)V

    .line 461
    const-string v0, "SendShutdownBroadcast"

    invoke-virtual {v2, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 462
    const-string v0, "ShutdownThread"

    const-string v3, "Sending shutdown broadcast..."

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    .line 466
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v12, v0

    .line 467
    .local v12, "intent":Landroid/content/Intent;
    const/high16 v0, 0x50000000

    invoke-virtual {v12, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 468
    iget-object v3, v1, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    iget-object v8, v1, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, v12

    invoke-virtual/range {v3 .. v11}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 471
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/16 v5, 0x2710

    add-long/2addr v3, v5

    .line 472
    .local v3, "endTime":J
    iget-object v8, v1, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v8

    .line 473
    :goto_84
    :try_start_84
    iget-boolean v0, v1, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    const/4 v9, 0x0

    if-nez v0, :cond_c4

    .line 474
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long v10, v3, v10

    .line 475
    .local v10, "delay":J
    const-wide/16 v13, 0x0

    cmp-long v0, v10, v13

    if-gtz v0, :cond_9d

    .line 476
    const-string v0, "ShutdownThread"

    const-string v5, "Shutdown broadcast timed out"

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    goto :goto_c4

    .line 478
    :cond_9d
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v0, :cond_b6

    .line 479
    sub-long v13, v5, v10

    long-to-double v13, v13

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v13, v15

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    mul-double/2addr v13, v15

    const-wide v15, 0x40c3880000000000L    # 10000.0

    div-double/2addr v13, v15

    double-to-int v0, v13

    .line 481
    .local v0, "status":I
    sget-object v13, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    invoke-direct {v13, v0, v9}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V
    :try_end_b6
    .catchall {:try_start_84 .. :try_end_b6} :catchall_197

    .line 484
    .end local v0    # "status":I
    :cond_b6
    :try_start_b6
    iget-object v0, v1, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    const-wide/16 v13, 0x1f4

    invoke-static {v10, v11, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v13

    invoke-virtual {v0, v13, v14}, Ljava/lang/Object;->wait(J)V
    :try_end_c1
    .catch Ljava/lang/InterruptedException; {:try_start_b6 .. :try_end_c1} :catch_c2
    .catchall {:try_start_b6 .. :try_end_c1} :catchall_197

    .line 486
    goto :goto_c3

    .line 485
    :catch_c2
    move-exception v0

    .line 487
    .end local v10    # "delay":J
    :goto_c3
    goto :goto_84

    .line 488
    :cond_c4
    :goto_c4
    :try_start_c4
    monitor-exit v8
    :try_end_c5
    .catchall {:try_start_c4 .. :try_end_c5} :catchall_197

    .line 489
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v0, :cond_cf

    .line 490
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v5, 0x2

    invoke-direct {v0, v5, v9}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 492
    :cond_cf
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 493
    sget-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_SEND_BROADCAST:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->metricEnded(Ljava/lang/String;)V

    .line 495
    const-string v0, "ShutdownThread"

    const-string v5, "Shutting down activity manager..."

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    const-string v0, "ShutdownActivityManager"

    invoke-virtual {v2, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 497
    sget-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_AM:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->metricStarted(Ljava/lang/String;)V

    .line 499
    const-string v0, "activity"

    .line 500
    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IActivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v5

    .line 501
    .local v5, "am":Landroid/app/IActivityManager;
    if-eqz v5, :cond_fb

    .line 503
    const/16 v0, 0x2710

    :try_start_f6
    invoke-interface {v5, v0}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_f9
    .catch Landroid/os/RemoteException; {:try_start_f6 .. :try_end_f9} :catch_fa

    .line 505
    goto :goto_fb

    .line 504
    :catch_fa
    move-exception v0

    .line 507
    :cond_fb
    :goto_fb
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v0, :cond_105

    .line 508
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v6, 0x4

    invoke-direct {v0, v6, v9}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 510
    :cond_105
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 511
    sget-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_AM:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->metricEnded(Ljava/lang/String;)V

    .line 513
    const-string v0, "ShutdownThread"

    const-string v6, "Shutting down package manager..."

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    const-string v0, "ShutdownPackageManager"

    invoke-virtual {v2, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 515
    sget-object v0, Lcom/android/server/power/ShutdownThread;->METRIC_PM:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->metricStarted(Ljava/lang/String;)V

    .line 517
    const-string/jumbo v0, "package"

    .line 518
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    .line 519
    .local v0, "pm":Lcom/android/server/pm/PackageManagerService;
    if-eqz v0, :cond_12c

    .line 520
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->shutdown()V

    .line 522
    :cond_12c
    sget-boolean v6, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v6, :cond_136

    .line 523
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v8, 0x6

    invoke-direct {v6, v8, v9}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 525
    :cond_136
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 526
    sget-object v6, Lcom/android/server/power/ShutdownThread;->METRIC_PM:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/server/power/ShutdownThread;->metricEnded(Ljava/lang/String;)V

    .line 529
    const-string v6, "ShutdownRadios"

    invoke-virtual {v2, v6}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 530
    sget-object v6, Lcom/android/server/power/ShutdownThread;->METRIC_RADIOS:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/server/power/ShutdownThread;->metricStarted(Ljava/lang/String;)V

    .line 531
    const/16 v6, 0x2ee0

    invoke-direct {v1, v6}, Lcom/android/server/power/ShutdownThread;->shutdownRadios(I)V

    .line 532
    sget-boolean v6, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v6, :cond_158

    .line 533
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/16 v8, 0x12

    invoke-direct {v6, v8, v9}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 535
    :cond_158
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 536
    sget-object v6, Lcom/android/server/power/ShutdownThread;->METRIC_RADIOS:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/server/power/ShutdownThread;->metricEnded(Ljava/lang/String;)V

    .line 538
    sget-boolean v6, Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z

    if-eqz v6, :cond_17e

    .line 539
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/16 v8, 0x14

    invoke-direct {v6, v8, v9}, Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V

    .line 545
    const-string/jumbo v6, "vold.miui.uncrypt"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "success"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_17e

    .line 546
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/ShutdownThread;->uncrypt()V

    .line 551
    :cond_17e
    invoke-virtual {v2}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 552
    sget-object v6, Lcom/android/server/power/ShutdownThread;->METRIC_SYSTEM_SERVER:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/server/power/ShutdownThread;->metricEnded(Ljava/lang/String;)V

    .line 553
    sget-boolean v6, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sget-object v8, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    invoke-static {v6, v8}, Lcom/android/server/power/ShutdownThread;->saveMetrics(ZLjava/lang/String;)V

    .line 555
    iget-object v6, v1, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    sget-boolean v8, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sget-object v9, Lcom/android/server/power/ShutdownThread;->mReason:Ljava/lang/String;

    invoke-static {v6, v8, v9}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V

    .line 556
    return-void

    .line 488
    .end local v0    # "pm":Lcom/android/server/pm/PackageManagerService;
    .end local v5    # "am":Landroid/app/IActivityManager;
    :catchall_197
    move-exception v0

    :try_start_198
    monitor-exit v8
    :try_end_199
    .catchall {:try_start_198 .. :try_end_199} :catchall_197

    throw v0
.end method
