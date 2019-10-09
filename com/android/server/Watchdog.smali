.class public Lcom/android/server/Watchdog;
.super Ljava/lang/Thread;
.source "Watchdog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/Watchdog$OpenFdMonitor;,
        Lcom/android/server/Watchdog$Monitor;,
        Lcom/android/server/Watchdog$BinderThreadMonitor;,
        Lcom/android/server/Watchdog$RebootRequestReceiver;,
        Lcom/android/server/Watchdog$HandlerChecker;,
        Lcom/android/server/Watchdog$WorkerHandler;
    }
.end annotation


# static fields
.field static final CHECK_INTERVAL:J = 0x7530L

.field static final COMPLETED:I = 0x0

.field static final DB:Z = false

.field static final DEFAULT_TIMEOUT:J = 0xea60L

.field public static final HAL_INTERFACES_OF_INTEREST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

.field static final OVERDUE:I = 0x3

.field static final RECORD_KERNEL_THREADS:Z = true

.field static final TAG:Ljava/lang/String; = "Watchdog"

.field static final WAITED_HALF:I = 0x2

.field static final WAITING:I = 0x1

.field static sWatchdog:Lcom/android/server/Watchdog;

.field private static final sWatchdogEnhanced:Z


# instance fields
.field mActivity:Lcom/android/server/am/ActivityManagerService;

.field mAllowRestart:Z

.field mController:Landroid/app/IActivityController;

.field private final mDumpCompleteLock:Ljava/lang/Object;

.field private mDumpCompleted:Ljava/lang/Boolean;

.field final mHandlerCheckers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;"
        }
    .end annotation
.end field

.field private mInitialStack:Ljava/io/File;

.field final mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

.field final mOpenFdMonitor:Lcom/android/server/Watchdog$OpenFdMonitor;

.field mPhonePid:I

.field mResolver:Landroid/content/ContentResolver;

.field mTraceDateFormat:Ljava/text/SimpleDateFormat;

.field private volatile mWorkerHandler:Lcom/android/server/Watchdog$WorkerHandler;

.field private mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .registers 18

    .line 92
    const-string v0, "/system/bin/audioserver"

    const-string v1, "/system/bin/cameraserver"

    const-string v2, "/system/bin/drmserver"

    const-string v3, "/system/bin/mediadrmserver"

    const-string v4, "/system/bin/mediaserver"

    const-string v5, "/system/bin/sdcard"

    const-string v6, "/system/bin/surfaceflinger"

    const-string v7, "/system/bin/netd"

    const-string/jumbo v8, "media.extractor"

    const-string/jumbo v9, "media.metrics"

    const-string/jumbo v10, "media.codec"

    const-string v11, "com.android.bluetooth"

    const-string v12, "/system/bin/statsd"

    const-string v13, "/system/bin/logd"

    const-string/jumbo v14, "zygote64"

    const-string/jumbo v15, "zygote"

    const-string v16, "/system/bin/vold"

    const-string v17, "/system/bin/installd"

    filled-new-array/range {v0 .. v17}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    .line 114
    const-string v1, "android.hardware.audio@2.0::IDevicesFactory"

    const-string v2, "android.hardware.audio@4.0::IDevicesFactory"

    const-string v3, "android.hardware.bluetooth@1.0::IBluetoothHci"

    const-string v4, "android.hardware.camera.provider@2.4::ICameraProvider"

    const-string v5, "android.hardware.graphics.composer@2.1::IComposer"

    const-string v6, "android.hardware.media.omx@1.0::IOmx"

    const-string v7, "android.hardware.media.omx@1.0::IOmxStore"

    const-string v8, "android.hardware.sensors@1.0::ISensors"

    const-string v9, "android.hardware.vr@1.0::IVr"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/Watchdog;->HAL_INTERFACES_OF_INTEREST:Ljava/util/List;

    .line 141
    const-string/jumbo v0, "persist.sys.watchdog_enhanced"

    .line 142
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/Watchdog;->sWatchdogEnhanced:Z

    .line 141
    return-void
.end method

.method private constructor <init>()V
    .registers 10

    .line 405
    const-string/jumbo v0, "watchdog"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/Watchdog;->mAllowRestart:Z

    .line 137
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd_MMM_HH_mm_ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mTraceDateFormat:Ljava/text/SimpleDateFormat;

    .line 145
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/Watchdog;->mDumpCompleted:Ljava/lang/Boolean;

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/Watchdog;->mInitialStack:Ljava/io/File;

    .line 147
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/Watchdog;->mDumpCompleteLock:Ljava/lang/Object;

    .line 413
    new-instance v1, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const-string v5, "foreground thread"

    const-wide/32 v6, 0xea60

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    iput-object v1, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    .line 415
    iget-object v1, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    iget-object v1, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/server/Watchdog$HandlerChecker;

    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v4, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-string/jumbo v5, "main thread"

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    iget-object v1, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const-string/jumbo v5, "ui thread"

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    iget-object v1, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const-string v5, "i/o thread"

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    iget-object v1, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/DisplayThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const-string v5, "display thread"

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    new-instance v1, Lcom/android/server/Watchdog$BinderThreadMonitor;

    invoke-direct {v1, v0}, Lcom/android/server/Watchdog$BinderThreadMonitor;-><init>(Lcom/android/server/Watchdog$1;)V

    invoke-virtual {p0, v1}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 433
    invoke-static {}, Lcom/android/server/Watchdog$OpenFdMonitor;->create()Lcom/android/server/Watchdog$OpenFdMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/Watchdog;->mOpenFdMonitor:Lcom/android/server/Watchdog$OpenFdMonitor;

    .line 439
    sget-boolean v0, Lcom/android/server/Watchdog;->sWatchdogEnhanced:Z

    if-eqz v0, :cond_a3

    .line 440
    invoke-direct {p0}, Lcom/android/server/Watchdog;->ensureWorkerHandlerReady()V

    .line 443
    :cond_a3
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/Watchdog;Ljava/io/File;)Ljava/io/File;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/Watchdog;
    .param p1, "x1"    # Ljava/io/File;

    .line 68
    iput-object p1, p0, Lcom/android/server/Watchdog;->mInitialStack:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/Watchdog;ZLjava/util/ArrayList;)Ljava/io/File;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/Watchdog;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/util/ArrayList;

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/server/Watchdog;->dumpTracesFile(ZLjava/util/ArrayList;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/Watchdog;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/Watchdog;

    .line 68
    iget-object v0, p0, Lcom/android/server/Watchdog;->mDumpCompleteLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/Watchdog;)Ljava/lang/Boolean;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/Watchdog;

    .line 68
    iget-object v0, p0, Lcom/android/server/Watchdog;->mDumpCompleted:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/Watchdog;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/Watchdog;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .line 68
    iput-object p1, p0, Lcom/android/server/Watchdog;->mDumpCompleted:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/Watchdog;C)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/Watchdog;
    .param p1, "x1"    # C

    .line 68
    invoke-direct {p0, p1}, Lcom/android/server/Watchdog;->doSysRq(C)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/Watchdog;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/Watchdog;

    .line 68
    invoke-direct {p0}, Lcom/android/server/Watchdog;->getBlockedCheckersLocked()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private appendFile(Ljava/io/File;Ljava/io/File;)V
    .registers 7
    .param p1, "writeTo"    # Ljava/io/File;
    .param p2, "copyFrom"    # Ljava/io/File;

    .line 904
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 905
    .local v0, "in":Ljava/io/BufferedReader;
    new-instance v1, Ljava/io/FileWriter;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 906
    .local v1, "out":Ljava/io/FileWriter;
    const/4 v2, 0x0

    .line 909
    .local v2, "line":Ljava/lang/String;
    :goto_11
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    if-eqz v3, :cond_21

    .line 910
    invoke-virtual {v1, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 911
    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/io/FileWriter;->write(I)V

    goto :goto_11

    .line 913
    :cond_21
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 914
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_27} :catch_28

    .line 918
    .end local v0    # "in":Ljava/io/BufferedReader;
    .end local v1    # "out":Ljava/io/FileWriter;
    .end local v2    # "line":Ljava/lang/String;
    goto :goto_33

    .line 915
    :catch_28
    move-exception v0

    .line 916
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Watchdog"

    const-string v2, "Exception while writing watchdog traces to new file!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 919
    .end local v0    # "e":Ljava/io/IOException;
    :goto_33
    return-void
.end method

.method private binderStateRead()V
    .registers 6

    .line 934
    :try_start_0
    const-string v0, "Watchdog"

    const-string v1, "Collect Binder Transaction Status Information"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    new-instance v0, Ljava/io/FileReader;

    const-string v1, "/sys/kernel/debug/binder/state"

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 936
    .local v0, "binder_state_in":Ljava/io/FileReader;
    new-instance v1, Ljava/io/FileWriter;

    const-string v2, "/data/anr/BinderTraces.txt"

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 938
    .local v1, "binder_state_out":Ljava/io/FileWriter;
    :goto_15
    invoke-virtual {v0}, Ljava/io/FileReader;->read()I

    move-result v2

    move v3, v2

    .local v3, "c":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_21

    .line 939
    invoke-virtual {v1, v3}, Ljava/io/FileWriter;->write(I)V

    goto :goto_15

    .line 941
    :cond_21
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V

    .line 942
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_27} :catch_28

    .line 945
    .end local v0    # "binder_state_in":Ljava/io/FileReader;
    .end local v1    # "binder_state_out":Ljava/io/FileWriter;
    .end local v3    # "c":I
    goto :goto_30

    .line 943
    :catch_28
    move-exception v0

    .line 944
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Watchdog"

    const-string v2, "Failed to collect state file"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 946
    .end local v0    # "e":Ljava/io/IOException;
    :goto_30
    return-void
.end method

.method private describeCheckersLocked(Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 530
    .local p1, "checkers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 531
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_29

    .line 532
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_19

    .line 533
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    :cond_19
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v2}, Lcom/android/server/Watchdog$HandlerChecker;->describeBlockedStateLocked()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 537
    .end local v1    # "i":I
    :cond_29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private doSysRq(C)V
    .registers 5
    .param p1, "c"    # C

    .line 924
    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    const-string v1, "/proc/sysrq-trigger"

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 925
    .local v0, "sysrq_trigger":Ljava/io/FileWriter;
    invoke-virtual {v0, p1}, Ljava/io/FileWriter;->write(I)V

    .line 926
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_e

    .line 929
    .end local v0    # "sysrq_trigger":Ljava/io/FileWriter;
    goto :goto_16

    .line 927
    :catch_e
    move-exception v0

    .line 928
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Watchdog"

    const-string v2, "Failed to write to /proc/sysrq-trigger"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 930
    .end local v0    # "e":Ljava/io/IOException;
    :goto_16
    return-void
.end method

.method private dumpKernelStackTraces()Ljava/io/File;
    .registers 4

    .line 949
    const-string v0, "dalvik.vm.stack-trace-file"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 950
    .local v0, "tracesPath":Ljava/lang/String;
    if-eqz v0, :cond_19

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_10

    goto :goto_19

    .line 954
    :cond_10
    invoke-direct {p0, v0}, Lcom/android/server/Watchdog;->native_dumpKernelStacks(Ljava/lang/String;)V

    .line 955
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 951
    :cond_19
    :goto_19
    return-object v1
.end method

.method private dumpTracesFile(ZLjava/util/ArrayList;)Ljava/io/File;
    .registers 12
    .param p1, "waitedHalf"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/io/File;"
        }
    .end annotation

    .line 802
    .local p2, "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    xor-int/lit8 v0, p1, 0x1

    .line 803
    invoke-virtual {p0}, Lcom/android/server/Watchdog;->getInterestingNativePids()Ljava/util/ArrayList;

    move-result-object v1

    .line 802
    const/4 v2, 0x0

    invoke-static {v0, p2, v2, v2, v1}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(ZLjava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;Ljava/util/ArrayList;)Ljava/io/File;

    move-result-object v0

    .line 806
    .local v0, "finalStack":Ljava/io/File;
    const-string v1, "1"

    const-string/jumbo v3, "ro.debuggable"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 807
    invoke-direct {p0}, Lcom/android/server/Watchdog;->binderStateRead()V

    .line 812
    :cond_1d
    const-wide/16 v3, 0x7d0

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 816
    invoke-direct {p0}, Lcom/android/server/Watchdog;->dumpKernelStackTraces()Ljava/io/File;

    .line 819
    invoke-direct {p0}, Lcom/android/server/Watchdog;->getTracesDirPath()Ljava/lang/String;

    move-result-object v1

    .line 820
    .local v1, "tracesDirPath":Ljava/lang/String;
    const/4 v3, -0x1

    if-eqz v1, :cond_da

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_34

    goto/16 :goto_da

    .line 842
    :cond_34
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "traces_SystemServer_WDT"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/Watchdog;->mTraceDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 843
    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_pid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 845
    .local v4, "newTracesPath":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 846
    .local v5, "tracesDir":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 848
    .local v6, "watchdogTraces":Ljava/io/File;
    :try_start_6b
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    move-result v7

    if-eqz v7, :cond_ce

    .line 849
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x180

    invoke-static {v7, v8, v3, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 855
    iget-object v3, p0, Lcom/android/server/Watchdog;->mInitialStack:Ljava/io/File;

    if-eqz v3, :cond_a0

    .line 856
    const-string v3, "Watchdog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "First set of traces taken from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/Watchdog;->mInitialStack:Ljava/io/File;

    .line 857
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 856
    invoke-static {v3, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    iget-object v3, p0, Lcom/android/server/Watchdog;->mInitialStack:Ljava/io/File;

    invoke-direct {p0, v6, v3}, Lcom/android/server/Watchdog;->appendFile(Ljava/io/File;Ljava/io/File;)V

    goto :goto_a7

    .line 860
    :cond_a0
    const-string v3, "Watchdog"

    const-string v7, "First set of traces are empty!"

    invoke-static {v3, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    :goto_a7
    if-eqz v0, :cond_c7

    .line 864
    const-string v3, "Watchdog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Second set of traces taken from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    invoke-direct {p0, v6, v0}, Lcom/android/server/Watchdog;->appendFile(Ljava/io/File;Ljava/io/File;)V

    goto :goto_ce

    .line 867
    :cond_c7
    const-string v3, "Watchdog"

    const-string v7, "Second set of traces are empty!"

    invoke-static {v3, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ce
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_ce} :catch_cf

    .line 872
    :cond_ce
    :goto_ce
    goto :goto_d7

    .line 870
    :catch_cf
    move-exception v3

    .line 871
    .local v3, "ioe":Ljava/io/IOException;
    const-string v7, "Watchdog"

    const-string v8, "Exception creating Watchdog dump file:"

    invoke-static {v7, v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 873
    .end local v3    # "ioe":Ljava/io/IOException;
    :goto_d7
    iput-object v2, p0, Lcom/android/server/Watchdog;->mInitialStack:Ljava/io/File;

    .line 874
    return-object v6

    .line 822
    .end local v4    # "newTracesPath":Ljava/lang/String;
    .end local v5    # "tracesDir":Ljava/io/File;
    .end local v6    # "watchdogTraces":Ljava/io/File;
    :cond_da
    :goto_da
    invoke-direct {p0}, Lcom/android/server/Watchdog;->getTracesFilePath()Ljava/lang/String;

    move-result-object v2

    .line 823
    .local v2, "tracesPath":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_SystemServer_WDT"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/Watchdog;->mTraceDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 824
    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 826
    .local v4, "traceFileNameAmendment":Ljava/lang/String;
    if-eqz v2, :cond_143

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_143

    .line 827
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 829
    .local v5, "traceRenameFile":Ljava/io/File;
    const-string v6, "."

    invoke-virtual {v2, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    .line 830
    .local v6, "lpos":I
    if-eq v3, v6, :cond_12b

    .line 831
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {v2, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 832
    .local v3, "newTracesPath":Ljava/lang/String;
    goto :goto_13a

    .line 834
    .end local v3    # "newTracesPath":Ljava/lang/String;
    :cond_12b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 835
    .restart local v3    # "newTracesPath":Ljava/lang/String;
    :goto_13a
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 836
    move-object v2, v3

    .line 839
    .end local v3    # "newTracesPath":Ljava/lang/String;
    .end local v5    # "traceRenameFile":Ljava/io/File;
    .end local v6    # "lpos":I
    :cond_143
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v3
.end method

.method private ensureDumpCompletedOrKernelReboot()V
    .registers 10

    .line 227
    const-wide/32 v0, 0xea60

    .line 228
    .local v0, "timeout":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v0

    .line 229
    .local v2, "end":J
    :goto_8
    invoke-direct {p0}, Lcom/android/server/Watchdog;->isDumpCompleted()Z

    move-result v4

    const-wide/16 v5, 0x0

    if-nez v4, :cond_27

    cmp-long v4, v0, v5

    if-lez v4, :cond_27

    .line 231
    const-wide/16 v4, 0x3e8

    :try_start_16
    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_19} :catch_1a

    .line 234
    goto :goto_20

    .line 232
    :catch_1a
    move-exception v4

    .line 233
    .local v4, "e":Ljava/lang/InterruptedException;
    const-string v5, "Watchdog"

    invoke-static {v5, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 235
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :goto_20
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v0, v2, v4

    goto :goto_8

    .line 237
    :cond_27
    cmp-long v4, v0, v5

    if-gtz v4, :cond_6c

    .line 238
    iget-object v4, p0, Lcom/android/server/Watchdog;->mDumpCompleteLock:Ljava/lang/Object;

    monitor-enter v4

    .line 239
    :try_start_2e
    iget-object v5, p0, Lcom/android/server/Watchdog;->mDumpCompleted:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_67

    .line 242
    const-string v5, "Watchdog"

    const-string v6, "Triggering SysRq for system_server watchdog"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const/16 v5, 0x77

    invoke-direct {p0, v5}, Lcom/android/server/Watchdog;->doSysRq(C)V

    .line 244
    const/16 v5, 0x6c

    invoke-direct {p0, v5}, Lcom/android/server/Watchdog;->doSysRq(C)V

    .line 247
    const/16 v5, 0x181

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    .line 248
    invoke-direct {p0}, Lcom/android/server/Watchdog;->getBlockedCheckersLocked()Ljava/util/ArrayList;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/Watchdog;->describeCheckersLocked(Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 247
    invoke-static {v5, v6, v7, v8}, Lcom/android/server/WatchdogInjector;->onWatchdog(IILjava/lang/String;Ljava/io/File;)V

    .line 249
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/Watchdog;->mDumpCompleted:Ljava/lang/Boolean;

    .line 253
    monitor-exit v4
    :try_end_61
    .catchall {:try_start_2e .. :try_end_61} :catchall_69

    .line 267
    const/16 v4, 0x63

    invoke-direct {p0, v4}, Lcom/android/server/Watchdog;->doSysRq(C)V

    goto :goto_6c

    .line 251
    :cond_67
    :try_start_67
    monitor-exit v4

    return-void

    .line 253
    :catchall_69
    move-exception v5

    monitor-exit v4
    :try_end_6b
    .catchall {:try_start_67 .. :try_end_6b} :catchall_69

    throw v5

    .line 269
    :cond_6c
    :goto_6c
    return-void
.end method

.method private ensureWorkerHandlerReady()V
    .registers 3

    .line 205
    iget-object v0, p0, Lcom/android/server/Watchdog;->mWorkerHandler:Lcom/android/server/Watchdog$WorkerHandler;

    if-nez v0, :cond_20

    .line 206
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "watchdogWorkerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mWorkerThread:Landroid/os/HandlerThread;

    .line 207
    iget-object v0, p0, Lcom/android/server/Watchdog;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 208
    new-instance v0, Lcom/android/server/Watchdog$WorkerHandler;

    iget-object v1, p0, Lcom/android/server/Watchdog;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/Watchdog$WorkerHandler;-><init>(Lcom/android/server/Watchdog;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mWorkerHandler:Lcom/android/server/Watchdog$WorkerHandler;

    .line 210
    :cond_20
    return-void
.end method

.method private evaluateCheckerCompletionLocked()I
    .registers 5

    .line 510
    const/4 v0, 0x0

    .line 511
    .local v0, "state":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 512
    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/Watchdog$HandlerChecker;

    .line 513
    .local v2, "hc":Lcom/android/server/Watchdog$HandlerChecker;
    invoke-virtual {v2}, Lcom/android/server/Watchdog$HandlerChecker;->getCompletionStateLocked()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 511
    .end local v2    # "hc":Lcom/android/server/Watchdog$HandlerChecker;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 515
    .end local v1    # "i":I
    :cond_1d
    return v0
.end method

.method private getBlockedCheckersLocked()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;"
        }
    .end annotation

    .line 519
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 520
    .local v0, "checkers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/Watchdog$HandlerChecker;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 521
    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/Watchdog$HandlerChecker;

    .line 522
    .local v2, "hc":Lcom/android/server/Watchdog$HandlerChecker;
    invoke-virtual {v2}, Lcom/android/server/Watchdog$HandlerChecker;->isOverdueLocked()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 523
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 520
    .end local v2    # "hc":Lcom/android/server/Watchdog$HandlerChecker;
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 526
    .end local v1    # "i":I
    :cond_22
    return-object v0
.end method

.method public static getInstance()Lcom/android/server/Watchdog;
    .registers 1

    .line 397
    sget-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    if-nez v0, :cond_b

    .line 398
    new-instance v0, Lcom/android/server/Watchdog;

    invoke-direct {v0}, Lcom/android/server/Watchdog;-><init>()V

    sput-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    .line 401
    :cond_b
    sget-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    return-object v0
.end method

.method private getTracesDirPath()Ljava/lang/String;
    .registers 3

    .line 884
    const-string v0, "dalvik.vm.stack-trace-dir"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTracesFilePath()Ljava/lang/String;
    .registers 3

    .line 893
    const-string v0, "dalvik.vm.stack-trace-file"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isDumpCompleted()Z
    .registers 3

    .line 221
    iget-object v0, p0, Lcom/android/server/Watchdog;->mDumpCompleteLock:Ljava/lang/Object;

    monitor-enter v0

    .line 222
    :try_start_3
    iget-object v1, p0, Lcom/android/server/Watchdog;->mDumpCompleted:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 223
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method private native native_dumpKernelStacks(Ljava/lang/String;)V
.end method

.method private sendMessage(I)V
    .registers 3
    .param p1, "what"    # I

    .line 217
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/Watchdog;->sendMessage(ILjava/lang/String;)V

    .line 218
    return-void
.end method

.method private sendMessage(ILjava/lang/String;)V
    .registers 5
    .param p1, "what"    # I
    .param p2, "subject"    # Ljava/lang/String;

    .line 213
    iget-object v0, p0, Lcom/android/server/Watchdog;->mWorkerHandler:Lcom/android/server/Watchdog$WorkerHandler;

    iget-object v1, p0, Lcom/android/server/Watchdog;->mWorkerHandler:Lcom/android/server/Watchdog$WorkerHandler;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/Watchdog$WorkerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/Watchdog$WorkerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 214
    return-void
.end method


# virtual methods
.method public addMonitor(Lcom/android/server/Watchdog$Monitor;)V
    .registers 4
    .param p1, "monitor"    # Lcom/android/server/Watchdog$Monitor;

    .line 475
    monitor-enter p0

    .line 476
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/Watchdog;->isAlive()Z

    move-result v0

    if-nez v0, :cond_e

    .line 479
    iget-object v0, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v0, p1}, Lcom/android/server/Watchdog$HandlerChecker;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 480
    monitor-exit p0

    .line 481
    return-void

    .line 477
    :cond_e
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Monitors can\'t be added once the Watchdog is running"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 480
    :catchall_16
    move-exception v0

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public addThread(Landroid/os/Handler;)V
    .registers 4
    .param p1, "thread"    # Landroid/os/Handler;

    .line 484
    const-wide/32 v0, 0xea60

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;J)V

    .line 485
    return-void
.end method

.method public addThread(Landroid/os/Handler;J)V
    .registers 12
    .param p1, "thread"    # Landroid/os/Handler;
    .param p2, "timeoutMillis"    # J

    .line 488
    monitor-enter p0

    .line 489
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/Watchdog;->isAlive()Z

    move-result v0

    if-nez v0, :cond_23

    .line 492
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    .line 493
    .local v4, "name":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/server/Watchdog$HandlerChecker;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-wide v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    .end local v4    # "name":Ljava/lang/String;
    monitor-exit p0

    .line 495
    return-void

    .line 490
    :cond_23
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Threads can\'t be added once the Watchdog is running"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 494
    :catchall_2b
    move-exception v0

    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_2b

    throw v0
.end method

.method public getInterestingHalPids()Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 542
    :try_start_0
    invoke-static {}, Landroid/hidl/manager/V1_0/IServiceManager;->getService()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object v0

    .line 543
    .local v0, "serviceManager":Landroid/hidl/manager/V1_0/IServiceManager;
    nop

    .line 544
    invoke-interface {v0}, Landroid/hidl/manager/V1_0/IServiceManager;->debugDump()Ljava/util/ArrayList;

    move-result-object v1

    .line 545
    .local v1, "dump":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 546
    .local v2, "pids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_39

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;

    .line 547
    .local v4, "info":Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;
    iget v5, v4, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->pid:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_24

    .line 548
    goto :goto_12

    .line 551
    :cond_24
    sget-object v5, Lcom/android/server/Watchdog;->HAL_INTERFACES_OF_INTEREST:Ljava/util/List;

    iget-object v6, v4, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->interfaceName:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2f

    .line 552
    goto :goto_12

    .line 555
    :cond_2f
    iget v5, v4, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->pid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 556
    .end local v4    # "info":Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;
    goto :goto_12

    .line 557
    :cond_39
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3e} :catch_3f

    return-object v3

    .line 558
    .end local v0    # "serviceManager":Landroid/hidl/manager/V1_0/IServiceManager;
    .end local v1    # "dump":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;>;"
    .end local v2    # "pids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :catch_3f
    move-exception v0

    .line 559
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method

.method public getInterestingNativePids()Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 564
    invoke-virtual {p0}, Lcom/android/server/Watchdog;->getInterestingHalPids()Ljava/util/ArrayList;

    move-result-object v0

    .line 566
    .local v0, "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v1, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v1

    .line 567
    .local v1, "nativePids":[I
    if-eqz v1, :cond_25

    .line 568
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    array-length v3, v1

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 569
    array-length v2, v1

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v2, :cond_25

    aget v4, v1, v3

    .line 570
    .local v4, "i":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 569
    .end local v4    # "i":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 574
    :cond_25
    return-object v0
.end method

.method public init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activity"    # Lcom/android/server/am/ActivityManagerService;

    .line 446
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/Watchdog;->mResolver:Landroid/content/ContentResolver;

    .line 447
    iput-object p2, p0, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    .line 449
    new-instance v0, Lcom/android/server/Watchdog$RebootRequestReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/Watchdog$RebootRequestReceiver;-><init>(Lcom/android/server/Watchdog;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.REBOOT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "android.permission.REBOOT"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 452
    return-void
.end method

.method public processStarted(Ljava/lang/String;I)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "pid"    # I

    .line 455
    monitor-enter p0

    .line 456
    :try_start_1
    const-string v0, "com.android.phone"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 457
    iput p2, p0, Lcom/android/server/Watchdog;->mPhonePid:I

    .line 459
    :cond_b
    monitor-exit p0

    .line 460
    return-void

    .line 459
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0
.end method

.method rebootSystem(Ljava/lang/String;)V
    .registers 5
    .param p1, "reason"    # Ljava/lang/String;

    .line 501
    const-string v0, "Watchdog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rebooting system because: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    const-string/jumbo v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/os/IPowerManager;

    .line 504
    .local v0, "pms":Landroid/os/IPowerManager;
    const/4 v1, 0x0

    :try_start_20
    invoke-interface {v0, v1, p1, v1}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_23} :catch_24

    .line 506
    goto :goto_25

    .line 505
    :catch_24
    move-exception v1

    .line 507
    :goto_25
    return-void
.end method

.method public run()V
    .registers 18

    .line 579
    move-object/from16 v1, p0

    const/4 v2, 0x0

    move v0, v2

    .line 579
    .local v0, "waitedHalf":Z
    :goto_4
    move v3, v0

    .line 584
    .end local v0    # "waitedHalf":Z
    .local v3, "waitedHalf":Z
    const/4 v4, 0x0

    .line 585
    .local v4, "debuggerWasConnected":I
    monitor-enter p0

    .line 586
    const-wide/16 v5, 0x7530

    .line 589
    .local v5, "timeout":J
    move v0, v2

    .line 589
    .local v0, "i":I
    :goto_a
    :try_start_a
    iget-object v7, v1, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_20

    .line 590
    iget-object v7, v1, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/Watchdog$HandlerChecker;

    .line 591
    .local v7, "hc":Lcom/android/server/Watchdog$HandlerChecker;
    invoke-virtual {v7}, Lcom/android/server/Watchdog$HandlerChecker;->scheduleCheckLocked()V

    .line 589
    .end local v7    # "hc":Lcom/android/server/Watchdog$HandlerChecker;
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 594
    .end local v0    # "i":I
    :cond_20
    if-lez v4, :cond_24

    .line 595
    add-int/lit8 v4, v4, -0x1

    .line 602
    :cond_24
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 603
    .local v7, "start":J
    :goto_28
    const-wide/16 v9, 0x0

    cmp-long v0, v5, v9

    if-lez v0, :cond_53

    .line 604
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0
    :try_end_32
    .catchall {:try_start_a .. :try_end_32} :catchall_248

    if-eqz v0, :cond_36

    .line 605
    const/4 v0, 0x2

    .line 608
    .end local v4    # "debuggerWasConnected":I
    .local v0, "debuggerWasConnected":I
    move v4, v0

    .line 608
    .end local v0    # "debuggerWasConnected":I
    .restart local v4    # "debuggerWasConnected":I
    :cond_36
    :try_start_36
    invoke-virtual {v1, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_39
    .catch Ljava/lang/InterruptedException; {:try_start_36 .. :try_end_39} :catch_3a
    .catchall {:try_start_36 .. :try_end_39} :catchall_248

    .line 611
    goto :goto_41

    .line 609
    :catch_3a
    move-exception v0

    move-object v9, v0

    .line 610
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3c
    const-string v9, "Watchdog"

    invoke-static {v9, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 612
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_41
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 613
    const/4 v0, 0x2

    .line 615
    .end local v4    # "debuggerWasConnected":I
    .local v0, "debuggerWasConnected":I
    move v4, v0

    .line 615
    .end local v0    # "debuggerWasConnected":I
    .restart local v4    # "debuggerWasConnected":I
    :cond_49
    const-wide/16 v9, 0x7530

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v7

    sub-long v5, v9, v11

    goto :goto_28

    .line 618
    :cond_53
    const/4 v0, 0x0

    .line 619
    .local v0, "fdLimitTriggered":Z
    iget-object v9, v1, Lcom/android/server/Watchdog;->mOpenFdMonitor:Lcom/android/server/Watchdog$OpenFdMonitor;

    if-eqz v9, :cond_5f

    .line 620
    iget-object v9, v1, Lcom/android/server/Watchdog;->mOpenFdMonitor:Lcom/android/server/Watchdog$OpenFdMonitor;

    invoke-virtual {v9}, Lcom/android/server/Watchdog$OpenFdMonitor;->monitor()Z

    move-result v9

    move v0, v9

    .line 623
    :cond_5f
    const/4 v9, 0x2

    const/4 v10, 0x1

    if-nez v0, :cond_b9

    .line 624
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->evaluateCheckerCompletionLocked()I

    move-result v11

    .line 625
    .local v11, "waitState":I
    if-nez v11, :cond_6d

    .line 627
    const/4 v3, 0x0

    .line 628
    monitor-exit p0

    .line 579
    .end local v3    # "waitedHalf":Z
    .end local v4    # "debuggerWasConnected":I
    .end local v5    # "timeout":J
    .end local v7    # "start":J
    .end local v11    # "waitState":I
    .local v0, "waitedHalf":Z
    :goto_6b
    move v0, v3

    goto :goto_4

    .line 629
    .local v0, "fdLimitTriggered":Z
    .restart local v3    # "waitedHalf":Z
    .restart local v4    # "debuggerWasConnected":I
    .restart local v5    # "timeout":J
    .restart local v7    # "start":J
    .restart local v11    # "waitState":I
    :cond_6d
    if-ne v11, v10, :cond_71

    .line 631
    monitor-exit p0

    goto :goto_6b

    .line 632
    :cond_71
    if-ne v11, v9, :cond_af

    .line 633
    if-nez v3, :cond_ad

    .line 635
    sget-boolean v9, Lcom/android/server/Watchdog;->sWatchdogEnhanced:Z

    const/4 v12, 0x0

    if-eqz v9, :cond_91

    .line 637
    const/16 v9, 0x180

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    .line 638
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->getBlockedCheckersLocked()Ljava/util/ArrayList;

    move-result-object v13

    invoke-direct {v1, v13}, Lcom/android/server/Watchdog;->describeCheckersLocked(Ljava/util/List;)Ljava/lang/String;

    move-result-object v13

    .line 637
    invoke-static {v9, v10, v13, v12}, Lcom/android/server/WatchdogInjector;->onWatchdog(IILjava/lang/String;Ljava/io/File;)V

    .line 639
    invoke-direct {v1, v2}, Lcom/android/server/Watchdog;->sendMessage(I)V

    .line 640
    const/4 v3, 0x1

    .line 641
    monitor-exit p0

    goto :goto_6b

    .line 647
    :cond_91
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 648
    .local v9, "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 649
    nop

    .line 650
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/Watchdog;->getInterestingNativePids()Ljava/util/ArrayList;

    move-result-object v13

    .line 649
    invoke-static {v10, v9, v12, v12, v13}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(ZLjava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;Ljava/util/ArrayList;)Ljava/io/File;

    move-result-object v10

    iput-object v10, v1, Lcom/android/server/Watchdog;->mInitialStack:Ljava/io/File;

    .line 651
    const/4 v3, 0x1

    .line 653
    .end local v9    # "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_ad
    monitor-exit p0

    goto :goto_6b

    .line 657
    :cond_af
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->getBlockedCheckersLocked()Ljava/util/ArrayList;

    move-result-object v12

    .line 658
    .local v12, "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    invoke-direct {v1, v12}, Lcom/android/server/Watchdog;->describeCheckersLocked(Ljava/util/List;)Ljava/lang/String;

    move-result-object v13

    .line 658
    .end local v11    # "waitState":I
    move-object v11, v13

    .line 659
    .local v11, "subject":Ljava/lang/String;
    goto :goto_c0

    .line 660
    .end local v11    # "subject":Ljava/lang/String;
    .end local v12    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    :cond_b9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    move-object v12, v11

    .line 661
    .restart local v12    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    const-string v11, "Open FD high water mark reached"

    .line 663
    .restart local v11    # "subject":Ljava/lang/String;
    :goto_c0
    iget-boolean v13, v1, Lcom/android/server/Watchdog;->mAllowRestart:Z

    .line 663
    .end local v0    # "fdLimitTriggered":Z
    .end local v5    # "timeout":J
    .end local v7    # "start":J
    move v5, v13

    .line 664
    .local v5, "allowRestart":Z
    monitor-exit p0
    :try_end_c4
    .catchall {:try_start_3c .. :try_end_c4} :catchall_248

    move-object v6, v12

    .line 669
    .end local v12    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .local v6, "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    const/16 v0, 0xaf2

    invoke-static {v0, v11}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 672
    sget-boolean v0, Lcom/android/server/Watchdog;->sWatchdogEnhanced:Z

    if-eqz v0, :cond_d7

    .line 673
    if-eqz v3, :cond_d2

    move v10, v9

    goto :goto_d3

    .line 674
    :cond_d2
    nop

    .line 673
    :goto_d3
    invoke-direct {v1, v10, v11}, Lcom/android/server/Watchdog;->sendMessage(ILjava/lang/String;)V

    goto :goto_128

    .line 677
    :cond_d7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    .line 678
    .local v7, "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 679
    iget v0, v1, Lcom/android/server/Watchdog;->mPhonePid:I

    if-lez v0, :cond_f5

    iget v0, v1, Lcom/android/server/Watchdog;->mPhonePid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 681
    :cond_f5
    invoke-direct {v1, v3, v7}, Lcom/android/server/Watchdog;->dumpTracesFile(ZLjava/util/ArrayList;)Ljava/io/File;

    move-result-object v8

    .line 686
    .local v8, "newFd":Ljava/io/File;
    new-instance v0, Lcom/android/server/Watchdog$1;

    const-string/jumbo v10, "watchdogWriteToDropbox"

    invoke-direct {v0, v1, v10, v11, v8}, Lcom/android/server/Watchdog$1;-><init>(Lcom/android/server/Watchdog;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    move-object v10, v0

    .line 693
    .local v10, "dropboxThread":Ljava/lang/Thread;
    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    .line 695
    const-wide/16 v12, 0x7d0

    :try_start_107
    invoke-virtual {v10, v12, v13}, Ljava/lang/Thread;->join(J)V
    :try_end_10a
    .catch Ljava/lang/InterruptedException; {:try_start_107 .. :try_end_10a} :catch_10b

    .line 696
    goto :goto_10c

    :catch_10b
    move-exception v0

    .line 700
    :goto_10c
    const-string v0, "Watchdog"

    const-string v12, "Triggering SysRq for system_server watchdog"

    invoke-static {v0, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    const/16 v0, 0x77

    invoke-direct {v1, v0}, Lcom/android/server/Watchdog;->doSysRq(C)V

    .line 702
    const/16 v0, 0x6c

    invoke-direct {v1, v0}, Lcom/android/server/Watchdog;->doSysRq(C)V

    .line 704
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 705
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->getBlockedCheckersLocked()Ljava/util/ArrayList;

    move-result-object v12

    .line 704
    invoke-static {v9, v0, v11, v8, v12}, Lcom/android/server/WatchdogInjector;->onWatchdog(IILjava/lang/String;Ljava/io/File;Ljava/util/List;)V

    .line 712
    .end local v7    # "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v8    # "newFd":Ljava/io/File;
    .end local v10    # "dropboxThread":Ljava/lang/Thread;
    :goto_128
    const-string/jumbo v0, "persist.sys.crashOnWatchdog"

    .line 713
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 714
    .local v7, "crashOnWatchdog":Z
    if-eqz v7, :cond_136

    .line 728
    const/16 v0, 0x63

    invoke-direct {v1, v0}, Lcom/android/server/Watchdog;->doSysRq(C)V

    .line 732
    :cond_136
    monitor-enter p0

    .line 733
    :try_start_137
    iget-object v0, v1, Lcom/android/server/Watchdog;->mController:Landroid/app/IActivityController;

    move-object v8, v0

    .line 734
    .local v8, "controller":Landroid/app/IActivityController;
    monitor-exit p0
    :try_end_13b
    .catchall {:try_start_137 .. :try_end_13b} :catchall_245

    .line 735
    if-eqz v8, :cond_181

    .line 736
    const-string v0, "Watchdog"

    const-string v10, "Reporting stuck state to activity controller"

    invoke-static {v0, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    :try_start_144
    const-string v0, "Service dumps disabled due to hung system process."

    invoke-static {v0}, Landroid/os/Binder;->setDumpDisabled(Ljava/lang/String;)V

    .line 740
    invoke-interface {v8, v11}, Landroid/app/IActivityController;->systemNotResponding(Ljava/lang/String;)I

    move-result v0

    .line 741
    .local v0, "res":I
    if-ltz v0, :cond_159

    .line 742
    const-string v10, "Watchdog"

    const-string v12, "Activity controller requested to coninue to wait"

    invoke-static {v10, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    const/4 v3, 0x0

    .line 744
    goto/16 :goto_6b

    .line 746
    :cond_159
    const-string v10, "Watchdog"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Activity controller.systemNotResponding("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ")  return value:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_177
    .catch Landroid/os/RemoteException; {:try_start_144 .. :try_end_177} :catch_178

    .end local v0    # "res":I
    goto :goto_180

    .line 748
    :catch_178
    move-exception v0

    .line 749
    .local v0, "e":Landroid/os/RemoteException;
    const-string v10, "Watchdog"

    const-string v12, "Got RemoteException: "

    invoke-static {v10, v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 750
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_180
    goto :goto_188

    .line 752
    :cond_181
    const-string v0, "Watchdog"

    const-string v10, "Activity Controller is null."

    invoke-static {v0, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    :goto_188
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    if-eqz v0, :cond_18f

    .line 757
    const/4 v4, 0x2

    .line 759
    :cond_18f
    if-lt v4, v9, :cond_19a

    .line 760
    const-string v0, "Watchdog"

    const-string v9, "Debugger connected: Watchdog is *not* killing the system process"

    invoke-static {v0, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_240

    .line 761
    :cond_19a
    if-lez v4, :cond_1a5

    .line 762
    const-string v0, "Watchdog"

    const-string v9, "Debugger was connected: Watchdog is *not* killing the system process"

    invoke-static {v0, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_240

    .line 763
    :cond_1a5
    if-nez v5, :cond_1b0

    .line 764
    const-string v0, "Watchdog"

    const-string v9, "Restart not allowed: Watchdog is *not* killing the system process"

    invoke-static {v0, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_240

    .line 766
    :cond_1b0
    const-string v0, "Watchdog"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "*** WATCHDOG KILLING SYSTEM PROCESS: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    move v0, v2

    .line 767
    .local v0, "i":I
    :goto_1c7
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v0, v9, :cond_220

    .line 768
    const-string v9, "Watchdog"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v12}, Lcom/android/server/Watchdog$HandlerChecker;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " stack trace:"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    nop

    .line 770
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v9}, Lcom/android/server/Watchdog$HandlerChecker;->getThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v9

    .line 771
    .local v9, "stackTrace":[Ljava/lang/StackTraceElement;
    array-length v10, v9

    move v12, v2

    :goto_1fe
    if-ge v12, v10, :cond_21c

    aget-object v13, v9, v12

    .line 772
    .local v13, "element":Ljava/lang/StackTraceElement;
    const-string v14, "Watchdog"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    at "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    .end local v13    # "element":Ljava/lang/StackTraceElement;
    add-int/lit8 v12, v12, 0x1

    const/4 v2, 0x0

    goto :goto_1fe

    .line 767
    .end local v9    # "stackTrace":[Ljava/lang/StackTraceElement;
    :cond_21c
    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x0

    goto :goto_1c7

    .line 775
    .end local v0    # "i":I
    :cond_220
    const-string v0, "Watchdog"

    const-string v2, "*** GOODBYE!"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    sget-boolean v0, Lcom/android/server/Watchdog;->sWatchdogEnhanced:Z

    if-eqz v0, :cond_234

    .line 778
    monitor-enter p0

    .line 779
    :try_start_22c
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->ensureDumpCompletedOrKernelReboot()V

    .line 780
    monitor-exit p0

    goto :goto_234

    :catchall_231
    move-exception v0

    monitor-exit p0
    :try_end_233
    .catchall {:try_start_22c .. :try_end_233} :catchall_231

    throw v0

    .line 784
    :cond_234
    :goto_234
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 785
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 788
    :goto_240
    const/4 v0, 0x0

    .line 789
    .end local v3    # "waitedHalf":Z
    .end local v4    # "debuggerWasConnected":I
    .end local v5    # "allowRestart":Z
    .end local v6    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .end local v7    # "crashOnWatchdog":Z
    .end local v8    # "controller":Landroid/app/IActivityController;
    .end local v11    # "subject":Ljava/lang/String;
    .local v0, "waitedHalf":Z
    nop

    .line 579
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 734
    .end local v0    # "waitedHalf":Z
    .restart local v3    # "waitedHalf":Z
    .restart local v4    # "debuggerWasConnected":I
    .restart local v5    # "allowRestart":Z
    .restart local v6    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .restart local v7    # "crashOnWatchdog":Z
    .restart local v11    # "subject":Ljava/lang/String;
    :catchall_245
    move-exception v0

    :try_start_246
    monitor-exit p0
    :try_end_247
    .catchall {:try_start_246 .. :try_end_247} :catchall_245

    throw v0

    .line 664
    .end local v5    # "allowRestart":Z
    .end local v6    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .end local v7    # "crashOnWatchdog":Z
    .end local v11    # "subject":Ljava/lang/String;
    :catchall_248
    move-exception v0

    :try_start_249
    monitor-exit p0
    :try_end_24a
    .catchall {:try_start_249 .. :try_end_24a} :catchall_248

    throw v0
.end method

.method public setActivityController(Landroid/app/IActivityController;)V
    .registers 3
    .param p1, "controller"    # Landroid/app/IActivityController;

    .line 463
    monitor-enter p0

    .line 464
    :try_start_1
    iput-object p1, p0, Lcom/android/server/Watchdog;->mController:Landroid/app/IActivityController;

    .line 465
    monitor-exit p0

    .line 466
    return-void

    .line 465
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public setAllowRestart(Z)V
    .registers 3
    .param p1, "allowRestart"    # Z

    .line 469
    monitor-enter p0

    .line 470
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/Watchdog;->mAllowRestart:Z

    .line 471
    monitor-exit p0

    .line 472
    return-void

    .line 471
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method
