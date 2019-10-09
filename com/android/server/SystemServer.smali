.class public final Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"


# static fields
.field private static final ACCOUNT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.accounts.AccountManagerService$Lifecycle"

.field private static final APPWIDGET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.appwidget.AppWidgetService"

.field private static final AUTO_FILL_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.autofill.AutofillManagerService"

.field private static final BACKUP_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.backup.BackupManagerService$Lifecycle"

.field private static final BLOCK_MAP_FILE:Ljava/lang/String; = "/cache/recovery/block.map"

.field private static final BOOT_TIMINGS_TRACE_LOG:Landroid/util/TimingsTraceLog;

.field private static final CAR_SERVICE_HELPER_SERVICE_CLASS:Ljava/lang/String; = "com.android.internal.car.CarServiceHelperService"

.field private static final COMPANION_DEVICE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.companion.CompanionDeviceManagerService"

.field private static final CONTENT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.content.ContentService$Lifecycle"

.field private static final DEFAULT_SYSTEM_THEME:I = 0x10303d3

.field private static final EARLIEST_SUPPORTED_TIME:J = 0x5265c00L

.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final ETHERNET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.ethernet.EthernetService"

.field private static final IOT_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.things.services.IoTSystemService"

.field private static final JOB_SCHEDULER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.job.JobSchedulerService"

.field private static final LOCK_SETTINGS_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.locksettings.LockSettingsService$Lifecycle"

.field private static final LOWPAN_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.lowpan.LowpanService"

.field private static final MIDI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.midi.MidiService$Lifecycle"

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final PRINT_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.print.PrintManagerService"

.field private static final SEARCH_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.search.SearchManagerService$Lifecycle"

.field private static final SLICE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.slice.SliceManagerService$Lifecycle"

.field private static final SLOW_DELIVERY_THRESHOLD_MS:J = 0xc8L

.field private static final SLOW_DISPATCH_THRESHOLD_MS:J = 0x64L

.field private static final SNAPSHOT_INTERVAL:J = 0x36ee80L

.field private static final START_HIDL_SERVICES:Ljava/lang/String; = "StartHidlServices"

.field private static final START_SENSOR_SERVICE:Ljava/lang/String; = "StartSensorService"

.field private static final STORAGE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.StorageManagerService$Lifecycle"

.field private static final STORAGE_STATS_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usage.StorageStatsService$Lifecycle"

.field private static final SYSTEM_SERVER_TIMING_ASYNC_TAG:Ljava/lang/String; = "SystemServerTimingAsync"

.field private static final SYSTEM_SERVER_TIMING_TAG:Ljava/lang/String; = "SystemServerTiming"

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static final THERMAL_OBSERVER_CLASS:Ljava/lang/String; = "com.google.android.clockwork.ThermalObserver"

.field private static final TIME_ZONE_RULES_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.timezone.RulesManagerService$Lifecycle"

.field private static final UNCRYPT_PACKAGE_FILE:Ljava/lang/String; = "/cache/recovery/uncrypt_file"

.field private static final USB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usb.UsbService$Lifecycle"

.field private static final VOICE_RECOGNITION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.voiceinteraction.VoiceInteractionManagerService"

.field private static final WALLPAPER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wallpaper.WallpaperManagerService$Lifecycle"

.field private static final WEAR_CONFIG_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.WearConfigManagerService"

.field private static final WEAR_CONNECTIVITY_SERVICE_CLASS:Ljava/lang/String; = "com.android.clockwork.connectivity.WearConnectivityService"

.field private static final WEAR_DISPLAY_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.display.WearDisplayService"

.field private static final WEAR_GLOBAL_ACTIONS_SERVICE_CLASS:Ljava/lang/String; = "com.android.clockwork.globalactions.GlobalActionsService"

.field private static final WEAR_LEFTY_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.lefty.WearLeftyService"

.field private static final WEAR_SIDEKICK_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.sidekick.SidekickService"

.field private static final WEAR_TIME_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.time.WearTimeService"

.field private static final WIFI_AWARE_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.aware.WifiAwareService"

.field private static final WIFI_P2P_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.p2p.WifiP2pService"

.field private static final WIFI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.WifiService"

.field private static final sMaxBinderThreads:I = 0x1f


# instance fields
.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

.field private mEntropyMixer:Lcom/android/server/EntropyMixer;

.field private final mFactoryTestMode:I

.field private mFirstBoot:Z

.field private mOnlyCore:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mPowerManagerService:Lcom/android/server/power/PowerManagerService;

.field private mProfilerSnapshotTimer:Ljava/util/Timer;

.field private final mRuntimeRestart:Z

.field private final mRuntimeStartElapsedTime:J

.field private final mRuntimeStartUptime:J

.field private mSensorServiceStart:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private mSystemContext:Landroid/content/Context;

.field private mSystemServiceManager:Lcom/android/server/SystemServiceManager;

.field private mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

.field private mZygotePreload:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 161
    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string v1, "SystemServerTiming"

    const-wide/32 v2, 0x80000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/android/server/SystemServer;->BOOT_TIMINGS_TRACE_LOG:Landroid/util/TimingsTraceLog;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 317
    const-string v0, "1"

    const-string/jumbo v1, "sys.boot_completed"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    .line 319
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    .line 320
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    .line 321
    return-void
.end method

.method private createSystemContext()V
    .registers 4

    .line 540
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    .line 541
    .local v0, "activityThread":Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 542
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const v2, 0x10303d3

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 544
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v1

    .line 545
    .local v1, "systemUiContext":Landroid/content/Context;
    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 546
    return-void
.end method

.method private isFirstBootOrUpgrade()Z
    .registers 2

    .line 477
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isUpgrade()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method static synthetic lambda$startBootstrapServices$0()V
    .registers 4

    .line 715
    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string v1, "SystemServerTimingAsync"

    const-wide/32 v2, 0x80000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 717
    .local v0, "traceLog":Landroid/util/TimingsTraceLog;
    const-string v1, "StartSensorService"

    invoke-virtual {v0, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 718
    invoke-static {}, Lcom/android/server/SystemServer;->startSensorService()V

    .line 719
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 720
    return-void
.end method

.method static synthetic lambda$startOtherServices$1()V
    .registers 4

    .line 806
    :try_start_0
    const-string v0, "SystemServer"

    const-string v1, "SecondaryZygotePreload"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string v1, "SystemServerTimingAsync"

    const-wide/32 v2, 0x80000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 809
    .local v0, "traceLog":Landroid/util/TimingsTraceLog;
    const-string v1, "SecondaryZygotePreload"

    invoke-virtual {v0, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 810
    sget-object v1, Landroid/os/Process;->zygoteProcess:Landroid/os/ZygoteProcess;

    sget-object v2, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/os/ZygoteProcess;->preloadDefault(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 811
    const-string v1, "SystemServer"

    const-string v2, "Unable to preload default resources"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    :cond_2a
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2d} :catch_2e

    .line 816
    .end local v0    # "traceLog":Landroid/util/TimingsTraceLog;
    goto :goto_36

    .line 814
    :catch_2e
    move-exception v0

    .line 815
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "SystemServer"

    const-string v2, "Exception preloading default resources"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 817
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_36
    return-void
.end method

.method static synthetic lambda$startOtherServices$2()V
    .registers 4

    .line 928
    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string v1, "SystemServerTimingAsync"

    const-wide/32 v2, 0x80000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 930
    .local v0, "traceLog":Landroid/util/TimingsTraceLog;
    const-string v1, "StartHidlServices"

    invoke-virtual {v0, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 931
    invoke-static {}, Lcom/android/server/SystemServer;->startHidlServices()V

    .line 932
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 933
    return-void
.end method

.method public static synthetic lambda$startOtherServices$3(Lcom/android/server/SystemServer;)V
    .registers 5

    .line 1898
    const-string v0, "SystemServer"

    const-string v1, "WebViewFactoryPreparation"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1899
    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string v1, "SystemServerTimingAsync"

    const-wide/32 v2, 0x80000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 1901
    .local v0, "traceLog":Landroid/util/TimingsTraceLog;
    const-string v1, "WebViewFactoryPreparation"

    invoke-virtual {v0, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 1902
    iget-object v1, p0, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    const-string v2, "Zygote preload"

    invoke-static {v1, v2}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 1903
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    .line 1904
    iget-object v1, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v1}, Lcom/android/server/webkit/WebViewUpdateService;->prepareWebViewInSystemServer()V

    .line 1905
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1906
    return-void
.end method

.method public static synthetic lambda$startOtherServices$4(Lcom/android/server/SystemServer;Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/IpSecService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/ConnectivityService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V
    .registers 33
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManagerF"    # Lcom/android/server/wm/WindowManagerService;
    .param p3, "networkManagementF"    # Lcom/android/server/NetworkManagementService;
    .param p4, "networkPolicyF"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p5, "ipSecServiceF"    # Lcom/android/server/IpSecService;
    .param p6, "networkStatsF"    # Lcom/android/server/net/NetworkStatsService;
    .param p7, "connectivityF"    # Lcom/android/server/ConnectivityService;
    .param p8, "locationF"    # Lcom/android/server/LocationManagerService;
    .param p9, "countryDetectorF"    # Lcom/android/server/CountryDetectorService;
    .param p10, "networkTimeUpdaterF"    # Lcom/android/server/NetworkTimeUpdateService;
    .param p11, "commonTimeMgmtServiceF"    # Lcom/android/server/CommonTimeManagementService;
    .param p12, "inputManagerF"    # Lcom/android/server/input/InputManagerService;
    .param p13, "telephonyRegistryF"    # Lcom/android/server/TelephonyRegistry;
    .param p14, "mediaRouterF"    # Lcom/android/server/media/MediaRouterService;
    .param p15, "mmsServiceF"    # Lcom/android/server/MmsServiceBroker;

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    .line 1879
    const-string v0, "SystemServer"

    const-string v3, "Making services ready"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1880
    const-string v0, "StartActivityManagerReadyPhase"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1881
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v3, 0x226

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1883
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1884
    const-string v0, "StartObservingNativeCrashes"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1886
    :try_start_1f
    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->startObservingNativeCrashes()V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_24} :catch_25

    .line 1889
    goto :goto_2c

    .line 1887
    :catch_25
    move-exception v0

    .line 1888
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "observing native crashes"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1890
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_2c
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1894
    const-string v3, "WebViewFactoryPreparation"

    .line 1895
    .local v3, "WEBVIEW_PREPARATION":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1896
    .local v0, "webviewPrep":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    iget-boolean v4, v1, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v4, :cond_49

    iget-object v4, v1, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    if-eqz v4, :cond_49

    .line 1897
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v4

    new-instance v5, Lcom/android/server/-$$Lambda$SystemServer$Y1gEdKr_Hb7K7cbTDAo_WOJ-SYI;

    invoke-direct {v5, v1}, Lcom/android/server/-$$Lambda$SystemServer$Y1gEdKr_Hb7K7cbTDAo_WOJ-SYI;-><init>(Lcom/android/server/SystemServer;)V

    const-string v6, "WebViewFactoryPreparation"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 1909
    .end local v0    # "webviewPrep":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    .local v4, "webviewPrep":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :cond_49
    move-object v4, v0

    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.type.automotive"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 1910
    const-string v0, "StartCarServiceHelperService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1911
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.internal.car.CarServiceHelperService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1912
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1915
    :cond_63
    const-string v0, "StartSystemUI"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1917
    :try_start_68
    invoke-static/range {p1 .. p2}, Lcom/android/server/SystemServer;->startSystemUi(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_68 .. :try_end_6b} :catch_6c

    .line 1920
    goto :goto_74

    .line 1918
    :catch_6c
    move-exception v0

    move-object v5, v0

    .line 1919
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting System UI"

    invoke-direct {v1, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1921
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_74
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1922
    const-string v0, "MakeNetworkManagementServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1924
    if-eqz p3, :cond_8b

    :try_start_7e
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/NetworkManagementService;->systemReady()V
    :try_end_81
    .catch Ljava/lang/Throwable; {:try_start_7e .. :try_end_81} :catch_82

    goto :goto_8b

    .line 1925
    :catch_82
    move-exception v0

    move-object v6, v0

    .line 1926
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making Network Managment Service ready"

    invoke-direct {v1, v6, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1926
    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_8c

    .line 1927
    :cond_8b
    :goto_8b
    nop

    .line 1928
    :goto_8c
    const/4 v0, 0x0

    .line 1929
    .local v0, "networkPolicyInitReadySignal":Ljava/util/concurrent/CountDownLatch;
    if-eqz v2, :cond_94

    .line 1930
    nop

    .line 1931
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/net/NetworkPolicyManagerService;->networkScoreAndNetworkManagementServiceReady()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    .line 1933
    .end local v0    # "networkPolicyInitReadySignal":Ljava/util/concurrent/CountDownLatch;
    .local v6, "networkPolicyInitReadySignal":Ljava/util/concurrent/CountDownLatch;
    :cond_94
    move-object v6, v0

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1934
    const-string v0, "MakeIpSecServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1936
    if-eqz p5, :cond_ac

    :try_start_9f
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/IpSecService;->systemReady()V
    :try_end_a2
    .catch Ljava/lang/Throwable; {:try_start_9f .. :try_end_a2} :catch_a3

    goto :goto_ac

    .line 1937
    :catch_a3
    move-exception v0

    move-object v7, v0

    .line 1938
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "making IpSec Service ready"

    invoke-direct {v1, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1938
    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_ad

    .line 1939
    :cond_ac
    :goto_ac
    nop

    .line 1940
    :goto_ad
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1941
    const-string v0, "MakeNetworkStatsServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1943
    if-eqz p6, :cond_c4

    :try_start_b7
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/net/NetworkStatsService;->systemReady()V
    :try_end_ba
    .catch Ljava/lang/Throwable; {:try_start_b7 .. :try_end_ba} :catch_bb

    goto :goto_c4

    .line 1944
    :catch_bb
    move-exception v0

    move-object v8, v0

    .line 1945
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v8, "making Network Stats Service ready"

    invoke-direct {v1, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1945
    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_c5

    .line 1946
    :cond_c4
    :goto_c4
    nop

    .line 1947
    :goto_c5
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1948
    const-string v0, "MakeConnectivityServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1950
    if-eqz p7, :cond_dc

    :try_start_cf
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/ConnectivityService;->systemReady()V
    :try_end_d2
    .catch Ljava/lang/Throwable; {:try_start_cf .. :try_end_d2} :catch_d3

    goto :goto_dc

    .line 1951
    :catch_d3
    move-exception v0

    move-object v9, v0

    .line 1952
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v9, "making Connectivity Service ready"

    invoke-direct {v1, v9, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1952
    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_dd

    .line 1953
    :cond_dc
    :goto_dc
    nop

    .line 1954
    :goto_dd
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1955
    const-string v0, "MakeNetworkPolicyServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1957
    if-eqz v2, :cond_f4

    .line 1958
    :try_start_e7
    invoke-virtual {v2, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->systemReady(Ljava/util/concurrent/CountDownLatch;)V
    :try_end_ea
    .catch Ljava/lang/Throwable; {:try_start_e7 .. :try_end_ea} :catch_eb

    goto :goto_f4

    .line 1960
    :catch_eb
    move-exception v0

    move-object v9, v0

    .line 1961
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v9, "making Network Policy Service ready"

    invoke-direct {v1, v9, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1961
    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_f5

    .line 1962
    :cond_f4
    :goto_f4
    nop

    .line 1963
    :goto_f5
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1965
    const-string v0, "StartWatchdog"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1966
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/Watchdog;->start()V

    .line 1967
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1970
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->waitForAppDataPrepared()V

    .line 1974
    const-string v0, "PhaseThirdPartyAppsCanStart"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1976
    if-eqz v4, :cond_118

    .line 1977
    const-string v0, "WebViewFactoryPreparation"

    invoke-static {v4, v0}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 1979
    :cond_118
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v9, 0x258

    invoke-virtual {v0, v9}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1981
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1983
    const-string v0, "MakeLocationServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1985
    if-eqz p8, :cond_135

    :try_start_129
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/LocationManagerService;->systemRunning()V
    :try_end_12c
    .catch Ljava/lang/Throwable; {:try_start_129 .. :try_end_12c} :catch_12d

    goto :goto_135

    .line 1986
    :catch_12d
    move-exception v0

    move-object v10, v0

    .line 1987
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v10, "Notifying Location Service running"

    invoke-direct {v1, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1987
    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_136

    .line 1988
    :cond_135
    :goto_135
    nop

    .line 1989
    :goto_136
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1990
    const-string v0, "MakeCountryDetectionServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1992
    if-eqz p9, :cond_14c

    :try_start_140
    invoke-virtual/range {p9 .. p9}, Lcom/android/server/CountryDetectorService;->systemRunning()V
    :try_end_143
    .catch Ljava/lang/Throwable; {:try_start_140 .. :try_end_143} :catch_144

    goto :goto_14c

    .line 1993
    :catch_144
    move-exception v0

    move-object v11, v0

    .line 1994
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v11, "Notifying CountryDetectorService running"

    invoke-direct {v1, v11, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1994
    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_14d

    .line 1995
    :cond_14c
    :goto_14c
    nop

    .line 1996
    :goto_14d
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1997
    const-string v0, "MakeNetworkTimeUpdateReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1999
    if-eqz p10, :cond_163

    :try_start_157
    invoke-virtual/range {p10 .. p10}, Lcom/android/server/NetworkTimeUpdateService;->systemRunning()V
    :try_end_15a
    .catch Ljava/lang/Throwable; {:try_start_157 .. :try_end_15a} :catch_15b

    goto :goto_163

    .line 2000
    :catch_15b
    move-exception v0

    move-object v12, v0

    .line 2001
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v12, "Notifying NetworkTimeService running"

    invoke-direct {v1, v12, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2001
    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_164

    .line 2002
    :cond_163
    :goto_163
    nop

    .line 2003
    :goto_164
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2004
    const-string v0, "MakeCommonTimeManagementServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2006
    if-eqz p11, :cond_17a

    .line 2007
    :try_start_16e
    invoke-virtual/range {p11 .. p11}, Lcom/android/server/CommonTimeManagementService;->systemRunning()V
    :try_end_171
    .catch Ljava/lang/Throwable; {:try_start_16e .. :try_end_171} :catch_172

    goto :goto_17a

    .line 2009
    :catch_172
    move-exception v0

    move-object v13, v0

    .line 2010
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v13, "Notifying CommonTimeManagementService running"

    invoke-direct {v1, v13, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2010
    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_17b

    .line 2011
    :cond_17a
    :goto_17a
    nop

    .line 2012
    :goto_17b
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2013
    const-string v0, "MakeInputManagerServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2016
    if-eqz p12, :cond_191

    :try_start_185
    invoke-virtual/range {p12 .. p12}, Lcom/android/server/input/InputManagerService;->systemRunning()V
    :try_end_188
    .catch Ljava/lang/Throwable; {:try_start_185 .. :try_end_188} :catch_189

    goto :goto_191

    .line 2017
    :catch_189
    move-exception v0

    move-object v14, v0

    .line 2018
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v14, "Notifying InputManagerService running"

    invoke-direct {v1, v14, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2018
    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_192

    .line 2019
    :cond_191
    :goto_191
    nop

    .line 2020
    :goto_192
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2021
    const-string v0, "MakeTelephonyRegistryReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2023
    if-eqz p13, :cond_1a8

    :try_start_19c
    invoke-virtual/range {p13 .. p13}, Lcom/android/server/TelephonyRegistry;->systemRunning()V
    :try_end_19f
    .catch Ljava/lang/Throwable; {:try_start_19c .. :try_end_19f} :catch_1a0

    goto :goto_1a8

    .line 2024
    :catch_1a0
    move-exception v0

    move-object v15, v0

    .line 2025
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v2, "Notifying TelephonyRegistry running"

    invoke-direct {v1, v2, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2025
    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_1a9

    .line 2026
    :cond_1a8
    :goto_1a8
    nop

    .line 2027
    :goto_1a9
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2028
    const-string v0, "MakeMediaRouterServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2030
    if-eqz p14, :cond_1bf

    :try_start_1b3
    invoke-virtual/range {p14 .. p14}, Lcom/android/server/media/MediaRouterService;->systemRunning()V
    :try_end_1b6
    .catch Ljava/lang/Throwable; {:try_start_1b3 .. :try_end_1b6} :catch_1b7

    goto :goto_1bf

    .line 2031
    :catch_1b7
    move-exception v0

    move-object v15, v0

    .line 2032
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v2, "Notifying MediaRouterService running"

    invoke-direct {v1, v2, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2032
    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_1c0

    .line 2033
    :cond_1bf
    :goto_1bf
    nop

    .line 2034
    :goto_1c0
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2035
    const-string v0, "MakeMmsServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2037
    if-eqz p15, :cond_1d6

    :try_start_1ca
    invoke-virtual/range {p15 .. p15}, Lcom/android/server/MmsServiceBroker;->systemRunning()V
    :try_end_1cd
    .catch Ljava/lang/Throwable; {:try_start_1ca .. :try_end_1cd} :catch_1ce

    goto :goto_1d6

    .line 2038
    :catch_1ce
    move-exception v0

    move-object v15, v0

    .line 2039
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v2, "Notifying MmsService running"

    invoke-direct {v1, v2, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2039
    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_1d7

    .line 2040
    :cond_1d6
    :goto_1d6
    nop

    .line 2041
    :goto_1d7
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2043
    const-string v0, "IncidentDaemonReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2047
    :try_start_1df
    const-string v0, "incident"

    .line 2048
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2047
    invoke-static {v0}, Landroid/os/IIncidentManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IIncidentManager;

    move-result-object v0

    .line 2049
    .local v0, "incident":Landroid/os/IIncidentManager;
    if-eqz v0, :cond_1ee

    invoke-interface {v0}, Landroid/os/IIncidentManager;->systemRunning()V
    :try_end_1ee
    .catch Ljava/lang/Throwable; {:try_start_1df .. :try_end_1ee} :catch_1ef

    .line 2052
    .end local v0    # "incident":Landroid/os/IIncidentManager;
    :cond_1ee
    goto :goto_1f5

    .line 2050
    :catch_1ef
    move-exception v0

    .line 2051
    .local v0, "e":Ljava/lang/Throwable;
    const-string v2, "Notifying incident daemon running"

    invoke-direct {v1, v2, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2053
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1f5
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2054
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 3
    .param p0, "args"    # [Ljava/lang/String;

    .line 309
    sget-wide v0, Lcom/android/internal/os/ZygoteInit;->BOOT_START_TIME:J

    invoke-static {v0, v1}, Lcom/android/server/SystemServerInjector;->markSystemRun(J)V

    .line 310
    new-instance v0, Lcom/android/server/SystemServer;

    invoke-direct {v0}, Lcom/android/server/SystemServer;-><init>()V

    invoke-direct {v0}, Lcom/android/server/SystemServer;->run()V

    .line 311
    return-void
.end method

.method private performPendingShutdown()V
    .registers 10

    .line 486
    const-string/jumbo v0, "sys.shutdown.requested"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 488
    .local v0, "shutdownAction":Ljava/lang/String;
    if-eqz v0, :cond_8c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8c

    .line 489
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1d

    move v2, v4

    goto :goto_1e

    :cond_1d
    move v2, v1

    .line 492
    .local v2, "reboot":Z
    :goto_1e
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x0

    if-le v3, v4, :cond_2e

    .line 493
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 493
    .local v3, "reason":Ljava/lang/String;
    goto :goto_2f

    .line 495
    .end local v3    # "reason":Ljava/lang/String;
    :cond_2e
    move-object v3, v5

    .line 503
    .restart local v3    # "reason":Ljava/lang/String;
    :goto_2f
    if-eqz v3, :cond_75

    const-string/jumbo v6, "recovery-update"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_75

    .line 504
    new-instance v6, Ljava/io/File;

    const-string v7, "/cache/recovery/uncrypt_file"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 505
    .local v6, "packageFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_75

    .line 506
    move-object v7, v5

    .line 508
    .local v7, "filename":Ljava/lang/String;
    :try_start_48
    invoke-static {v6, v1, v5}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4c} :catch_4e

    move-object v7, v1

    .line 511
    goto :goto_56

    .line 509
    :catch_4e
    move-exception v1

    .line 510
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "SystemServer"

    const-string v8, "Error reading uncrypt package file"

    invoke-static {v5, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 513
    .end local v1    # "e":Ljava/io/IOException;
    :goto_56
    if-eqz v7, :cond_75

    const-string v1, "/data"

    invoke-virtual {v7, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 514
    new-instance v1, Ljava/io/File;

    const-string v5, "/cache/recovery/block.map"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_75

    .line 515
    const-string v1, "SystemServer"

    const-string v4, "Can\'t find block map file, uncrypt failed or unexpected runtime restart?"

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    return-void

    .line 522
    .end local v6    # "packageFile":Ljava/io/File;
    .end local v7    # "filename":Ljava/lang/String;
    :cond_75
    new-instance v1, Lcom/android/server/SystemServer$1;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/SystemServer$1;-><init>(Lcom/android/server/SystemServer;ZLjava/lang/String;)V

    .line 532
    .local v1, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-static {v5, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v5

    .line 533
    .local v5, "msg":Landroid/os/Message;
    invoke-virtual {v5, v4}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 534
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 537
    .end local v1    # "runnable":Ljava/lang/Runnable;
    .end local v2    # "reboot":Z
    .end local v3    # "reason":Ljava/lang/String;
    .end local v5    # "msg":Landroid/os/Message;
    :cond_8c
    return-void
.end method

.method private reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 481
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 483
    return-void
.end method

.method private run()V
    .registers 12

    .line 325
    :try_start_0
    const-string v0, "InitBeforeStartServices"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 330
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-gez v0, :cond_1a

    .line 331
    const-string v0, "SystemServer"

    const-string v1, "System clock is before 1970; setting to 1970."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    invoke-static {v2, v3}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 338
    :cond_1a
    const-string/jumbo v0, "persist.sys.timezone"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, "timezoneProperty":Ljava/lang/String;
    if-eqz v0, :cond_29

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 340
    :cond_29
    const-string v1, "SystemServer"

    const-string v2, "Timezone not set; setting to GMT."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const-string/jumbo v1, "persist.sys.timezone"

    const-string v2, "GMT"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    :cond_38
    const-string/jumbo v1, "persist.sys.language"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6b

    .line 353
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    .line 355
    .local v1, "languageTag":Ljava/lang/String;
    const-string/jumbo v2, "persist.sys.locale"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string/jumbo v2, "persist.sys.language"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string/jumbo v2, "persist.sys.country"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string/jumbo v2, "persist.sys.localevar"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    .end local v1    # "languageTag":Ljava/lang/String;
    :cond_6b
    const/4 v1, 0x1

    invoke-static {v1}, Landroid/os/Binder;->setWarnOnBlocking(Z)V

    .line 364
    invoke-static {v1}, Landroid/content/pm/PackageItemInfo;->setForceSafeLabels(Z)V

    .line 366
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->init(Ljava/lang/String;)V

    .line 369
    const-string v3, "SystemServer"

    const-string v4, "Entered the Android system server!"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    long-to-int v3, v3

    .line 371
    .local v3, "uptimeMillis":I
    const/16 v4, 0xbc2

    invoke-static {v4, v3}, Landroid/util/EventLog;->writeEvent(II)I

    .line 372
    iget-boolean v4, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    if-nez v4, :cond_90

    .line 373
    const-string v4, "boot_system_server_init"

    invoke-static {v2, v4, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 383
    :cond_90
    const-string/jumbo v4, "persist.sys.dalvik.vm.lib.2"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v5

    invoke-virtual {v5}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 390
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    const v5, 0x3f4ccccd    # 0.8f

    invoke-virtual {v4, v5}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 394
    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    .line 398
    invoke-static {v1}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 402
    invoke-static {v1}, Landroid/os/BaseBundle;->setShouldDefuse(Z)V

    .line 405
    invoke-static {v1}, Landroid/os/Parcel;->setStackTraceParceling(Z)V

    .line 408
    invoke-static {v1}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 411
    const/16 v1, 0x1f

    invoke-static {v1}, Lcom/android/internal/os/BinderInternal;->setMaxThreads(I)V

    .line 414
    const/4 v1, -0x2

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 416
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 417
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 418
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const-wide/16 v4, 0x64

    const-wide/16 v6, 0xc8

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    .line 422
    const-string v1, "android_servers"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 426
    invoke-direct {p0}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    .line 429
    invoke-direct {p0}, Lcom/android/server/SystemServer;->createSystemContext()V

    .line 432
    new-instance v1, Lcom/android/server/SystemServiceManager;

    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 433
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    iget-boolean v6, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    iget-wide v7, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    iget-wide v9, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/SystemServiceManager;->setStartInfo(ZJJ)V

    .line 435
    const-class v1, Lcom/android/server/SystemServiceManager;

    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v1, v4}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 437
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;
    :try_end_102
    .catchall {:try_start_0 .. :try_end_102} :catchall_178

    .line 439
    .end local v0    # "timezoneProperty":Ljava/lang/String;
    .end local v3    # "uptimeMillis":I
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 440
    nop

    .line 444
    :try_start_106
    const-string v0, "StartServices"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 445
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startBootstrapServices()V

    .line 446
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startCoreServices()V

    .line 447
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startOtherServices()V

    .line 448
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->shutdown()V
    :try_end_117
    .catch Ljava/lang/Throwable; {:try_start_106 .. :try_end_117} :catch_164
    .catchall {:try_start_106 .. :try_end_117} :catchall_162

    .line 454
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 455
    nop

    .line 457
    invoke-static {v2}, Landroid/os/StrictMode;->initVmDefaults(Landroid/content/pm/ApplicationInfo;)V

    .line 459
    iget-boolean v0, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    if-nez v0, :cond_150

    invoke-direct {p0}, Lcom/android/server/SystemServer;->isFirstBootOrUpgrade()Z

    move-result v0

    if-nez v0, :cond_150

    .line 460
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    long-to-int v0, v0

    .line 461
    .local v0, "uptimeMillis":I
    const-string v1, "boot_system_server_ready"

    invoke-static {v2, v1, v0}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 462
    const v1, 0xea60

    .line 463
    .local v1, "MAX_UPTIME_MILLIS":I
    const v2, 0xea60

    if-le v0, v2, :cond_150

    .line 464
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SystemServer init took too long. uptimeMillis="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SystemServerTiming"

    invoke-static {v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    .end local v0    # "uptimeMillis":I
    .end local v1    # "MAX_UPTIME_MILLIS":I
    :cond_150
    const-string v0, "SystemServer"

    const-string v1, "Entered the Android system server main thread loop."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 473
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Main thread loop unexpectedly exited"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 454
    :catchall_162
    move-exception v0

    goto :goto_174

    .line 449
    :catch_164
    move-exception v0

    .line 450
    .local v0, "ex":Ljava/lang/Throwable;
    :try_start_165
    const-string v1, "System"

    const-string v2, "******************************************"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    const-string v1, "System"

    const-string v2, "************ Failure starting system services"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 452
    throw v0
    :try_end_174
    .catchall {:try_start_165 .. :try_end_174} :catchall_162

    .line 454
    .end local v0    # "ex":Ljava/lang/Throwable;
    :goto_174
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    throw v0

    .line 439
    :catchall_178
    move-exception v0

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    throw v0
.end method

.method private startBootstrapServices()V
    .registers 12

    .line 556
    const-string v0, "SystemServer"

    const-string v1, "Reading configuration..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    const-string v0, "ReadingSystemConfig"

    .line 558
    .local v0, "TAG_SYSTEM_CONFIG":Ljava/lang/String;
    const-string v1, "ReadingSystemConfig"

    invoke-static {v1}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 559
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v1

    sget-object v2, Lcom/android/server/-$$Lambda$YWiwiKm_Qgqb55C6tTuq_n2JzdY;->INSTANCE:Lcom/android/server/-$$Lambda$YWiwiKm_Qgqb55C6tTuq_n2JzdY;

    const-string v3, "ReadingSystemConfig"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 560
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 565
    const-string v1, "StartInstaller"

    invoke-static {v1}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 566
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/pm/Installer;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/Installer;

    .line 567
    .local v1, "installer":Lcom/android/server/pm/Installer;
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 571
    const-string v2, "DeviceIdentifiersPolicyService"

    invoke-static {v2}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 572
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/os/DeviceIdentifiersPolicyService;

    invoke-virtual {v2, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 573
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 576
    const-string v2, "StartActivityManager"

    invoke-static {v2}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 577
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v2, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    .line 578
    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->getService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 579
    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->setSystemServiceManager(Lcom/android/server/SystemServiceManager;)V

    .line 580
    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityManagerService;->setInstaller(Lcom/android/server/pm/Installer;)V

    .line 581
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 587
    const-string v2, "StartPowerManager"

    invoke-static {v2}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 588
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v2, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService;

    iput-object v2, p0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    .line 589
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 593
    const-string v2, "InitPowerManagement"

    invoke-static {v2}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 594
    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->initPowerManagement()V

    .line 595
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 598
    const-string v2, "StartRecoverySystemService"

    invoke-static {v2}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 599
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/RecoverySystemService;

    invoke-virtual {v2, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 600
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 605
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/RescueParty;->noteBoot(Landroid/content/Context;)V

    .line 608
    const-string v2, "StartLightsService"

    invoke-static {v2}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 611
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/lights/MiuiLightsService;

    invoke-virtual {v2, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 612
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 614
    const-string v2, "StartSidekickService"

    invoke-static {v2}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 616
    const-string v2, "config.enable_sidekick_graphics"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_ba

    .line 617
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v4, "com.google.android.clockwork.sidekick.SidekickService"

    invoke-virtual {v2, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 619
    :cond_ba
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 623
    const-string v2, "StartDisplayManager"

    invoke-static {v2}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 624
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v2, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayManagerService;

    iput-object v2, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 625
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 628
    const-string v2, "WaitForDisplay"

    invoke-static {v2}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 629
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v4, 0x64

    invoke-virtual {v2, v4}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 630
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 633
    const-string/jumbo v2, "vold.decrypt"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 634
    .local v2, "cryptState":Ljava/lang/String;
    const-string/jumbo v4, "trigger_restart_min_framework"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_fb

    .line 635
    const-string v4, "SystemServer"

    const-string v6, "Detected encryption in progress - only parsing core apps"

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    iput-boolean v5, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    goto :goto_10c

    .line 637
    :cond_fb
    const-string v4, "1"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10c

    .line 638
    const-string v4, "SystemServer"

    const-string v6, "Device encrypted - only parsing core apps"

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    iput-boolean v5, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 643
    :cond_10c
    :goto_10c
    invoke-static {}, Lcom/android/internal/os/RegionalizationEnvironment;->isSupported()Z

    move-result v4

    if-eqz v4, :cond_124

    .line 644
    const-string v4, "SystemServer"

    const-string v6, "Regionalization Service"

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    new-instance v4, Lcom/android/server/os/RegionalizationService;

    invoke-direct {v4}, Lcom/android/server/os/RegionalizationService;-><init>()V

    .line 646
    .local v4, "regionalizationService":Lcom/android/server/os/RegionalizationService;
    const-string/jumbo v6, "regionalization"

    invoke-static {v6, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 650
    .end local v4    # "regionalizationService":Lcom/android/server/os/RegionalizationService;
    :cond_124
    iget-boolean v4, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    const/4 v6, 0x0

    if-nez v4, :cond_133

    .line 651
    const-string v4, "boot_package_manager_init_start"

    .line 652
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    long-to-int v7, v7

    .line 651
    invoke-static {v6, v4, v7}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 654
    :cond_133
    const-string v4, "StartPackageManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 656
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 657
    .local v7, "pmsStartTime":J
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget v9, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eqz v9, :cond_143

    goto :goto_144

    :cond_143
    move v5, v3

    :goto_144
    iget-boolean v9, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    invoke-static {v4, v1, v5, v9}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Lcom/android/server/pm/PackageManagerService;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 660
    nop

    .line 661
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 660
    invoke-static {v7, v8, v4, v5}, Lcom/android/server/SystemServerInjector;->markPmsScan(JJ)V

    .line 662
    iget-object v4, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    .line 663
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 664
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 665
    iget-boolean v4, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    if-nez v4, :cond_17b

    invoke-direct {p0}, Lcom/android/server/SystemServer;->isFirstBootOrUpgrade()Z

    move-result v4

    if-nez v4, :cond_17b

    .line 666
    const-string v4, "boot_package_manager_init_ready"

    .line 667
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    long-to-int v5, v9

    .line 666
    invoke-static {v6, v4, v5}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 672
    :cond_17b
    iget-boolean v4, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v4, :cond_1a5

    .line 673
    const-string v4, "config.disable_otadexopt"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 675
    .local v3, "disableOtaDexopt":Z
    if-nez v3, :cond_1a5

    .line 676
    const-string v4, "StartOtaDexOptService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 678
    :try_start_18c
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4, v5}, Lcom/android/server/pm/OtaDexoptService;->main(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/OtaDexoptService;
    :try_end_193
    .catch Ljava/lang/Throwable; {:try_start_18c .. :try_end_193} :catch_199
    .catchall {:try_start_18c .. :try_end_193} :catchall_197

    .line 682
    :goto_193
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 683
    goto :goto_1a5

    .line 682
    :catchall_197
    move-exception v4

    goto :goto_1a1

    .line 679
    :catch_199
    move-exception v4

    .line 680
    .local v4, "e":Ljava/lang/Throwable;
    :try_start_19a
    const-string/jumbo v5, "starting OtaDexOptService"

    invoke-direct {p0, v5, v4}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1a0
    .catchall {:try_start_19a .. :try_end_1a0} :catchall_197

    .line 680
    .end local v4    # "e":Ljava/lang/Throwable;
    goto :goto_193

    .line 682
    :goto_1a1
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    throw v4

    .line 687
    .end local v3    # "disableOtaDexopt":Z
    :cond_1a5
    :goto_1a5
    const-string v3, "StartUserManagerService"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 688
    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/pm/UserManagerService$LifeCycle;

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 689
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 692
    const-string v3, "InitAttributerCache"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 693
    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 694
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 697
    const-string v3, "SetSystemProcess"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 698
    iget-object v3, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 699
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 703
    iget-object v3, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v3}, Lcom/android/server/display/DisplayManagerService;->setupSchedulerPolicies()V

    .line 706
    const-string v3, "StartOverlayManagerService"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 707
    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    new-instance v4, Lcom/android/server/om/OverlayManagerService;

    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v4, v5, v1}, Lcom/android/server/om/OverlayManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/Installer;)V

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 708
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 714
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v3

    sget-object v4, Lcom/android/server/-$$Lambda$SystemServer$UyrPns7R814g-ZEylCbDKhe8It4;->INSTANCE:Lcom/android/server/-$$Lambda$SystemServer$UyrPns7R814g-ZEylCbDKhe8It4;

    const-string v5, "StartSensorService"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/SystemServer;->mSensorServiceStart:Ljava/util/concurrent/Future;

    .line 721
    return-void
.end method

.method private startCoreServices()V
    .registers 3

    .line 727
    const-string v0, "StartBatteryService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 729
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BatteryService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 730
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 733
    const-string v0, "StartUsageService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 734
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 735
    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-class v1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 736
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 735
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V

    .line 737
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 740
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.software.webview"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 741
    const-string v0, "StartWebViewUpdateService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 742
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/webkit/WebViewUpdateService;

    iput-object v0, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    .line 743
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 747
    :cond_49
    const-string v0, "StartBinderCallsStatsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 748
    invoke-static {}, Lcom/android/server/BinderCallsStatsService;->start()V

    .line 749
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 750
    return-void
.end method

.method private static native startHidlServices()V
.end method

.method private startOtherServices()V
    .registers 67

    .line 757
    move-object/from16 v3, p0

    iget-object v2, v3, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 758
    .local v2, "context":Landroid/content/Context;
    const/4 v1, 0x0

    .line 759
    .local v1, "vibrator":Lcom/android/server/VibratorService;
    const/4 v10, 0x0

    .line 761
    .local v10, "storageManager":Landroid/os/storage/IStorageManager;
    const/4 v4, 0x0

    .line 762
    .local v4, "bsgamepad":Lcom/android/server/gamepad/BsGamePadService;
    const/4 v11, 0x0

    .line 763
    .local v11, "networkManagement":Lcom/android/server/NetworkManagementService;
    const/4 v12, 0x0

    .line 764
    .local v12, "ipSecService":Lcom/android/server/IpSecService;
    const/4 v13, 0x0

    .line 765
    .local v13, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const/4 v14, 0x0

    .line 766
    .local v14, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/4 v15, 0x0

    .line 767
    .local v15, "connectivity":Lcom/android/server/ConnectivityService;
    const/16 v16, 0x0

    .line 768
    .local v16, "serviceDiscovery":Lcom/android/server/NsdService;
    const/16 v17, 0x0

    .line 769
    .local v17, "wm":Lcom/android/server/wm/WindowManagerService;
    const/16 v18, 0x0

    .line 770
    .local v18, "serial":Lcom/android/server/SerialService;
    const/16 v19, 0x0

    .line 771
    .local v19, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    const/16 v20, 0x0

    .line 772
    .local v20, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    const/4 v5, 0x0

    .line 773
    .local v5, "inputManager":Lcom/android/server/input/InputManagerService;
    const/4 v6, 0x0

    .line 774
    .local v6, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/4 v7, 0x0

    .line 775
    .local v7, "consumerIr":Lcom/android/server/ConsumerIrService;
    const/16 v21, 0x0

    .line 776
    .local v21, "mmsService":Lcom/android/server/MmsServiceBroker;
    const/16 v22, 0x0

    .line 777
    .local v22, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    const/16 v23, 0x0

    .line 778
    .local v23, "wigigP2pService":Ljava/lang/Object;
    const/16 v24, 0x0

    .line 780
    .local v24, "wigigService":Ljava/lang/Object;
    const-string v0, "config.disable_systemtextclassifier"

    const/4 v9, 0x0

    invoke-static {v0, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v25

    .line 782
    .local v25, "disableSystemTextClassifier":Z
    const-string v0, "config.disable_cameraservice"

    invoke-static {v0, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v26

    .line 784
    .local v26, "disableCameraService":Z
    const-string v0, "config.disable_slices"

    invoke-static {v0, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v27

    .line 785
    .local v27, "disableSlices":Z
    const-string v0, "config.enable_lefty"

    invoke-static {v0, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v28

    .line 787
    .local v28, "enableLeftyService":Z
    const-string/jumbo v0, "ro.kernel.qemu"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v8, "1"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    .line 788
    .local v29, "isEmulator":Z
    const-string/jumbo v0, "persist.vendor.wigig.enable"

    invoke-static {v0, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v30

    .line 790
    .local v30, "enableWigig":Z
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v8, "android.hardware.type.watch"

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v31

    .line 794
    .local v31, "isWatch":Z
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_6b

    const-string v0, "debug.crash_system"

    invoke-static {v0, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_65

    goto :goto_6b

    .line 795
    :cond_65
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 799
    :cond_6b
    :goto_6b
    move-object/from16 v32, v10

    move-object/from16 v33, v11

    .line 799
    .end local v10    # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v11    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .local v32, "storageManager":Landroid/os/storage/IStorageManager;
    .local v33, "networkManagement":Lcom/android/server/NetworkManagementService;
    :try_start_6f
    const-string v0, "SecondaryZygotePreload"
    :try_end_71
    .catch Ljava/lang/RuntimeException; {:try_start_6f .. :try_end_71} :catch_2f9

    .line 804
    .local v0, "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :try_start_71
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v9

    sget-object v8, Lcom/android/server/-$$Lambda$SystemServer$VBGb9VpEls6bUcVBPwYLtX7qDTs;->INSTANCE:Lcom/android/server/-$$Lambda$SystemServer$VBGb9VpEls6bUcVBPwYLtX7qDTs;

    const-string v10, "SecondaryZygotePreload"

    invoke-virtual {v9, v8, v10}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v8

    iput-object v8, v3, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    .line 819
    const-string v8, "StartKeyAttestationApplicationIdProviderService"

    invoke-static {v8}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 820
    const-string/jumbo v8, "sec_key_att_app_id_provider"

    new-instance v9, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;

    invoke-direct {v9, v2}, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;-><init>(Landroid/content/Context;)V

    invoke-static {v8, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 822
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 824
    const-string v8, "StartKeyChainSystemService"

    invoke-static {v8}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 825
    iget-object v8, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/security/KeyChainSystemService;

    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 826
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 828
    const-string v8, "StartSchedulingPolicyService"

    invoke-static {v8}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 829
    const-string/jumbo v8, "scheduling_policy"

    new-instance v9, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v9}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v8, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 830
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 832
    const-string v8, "StartTelecomLoaderService"

    invoke-static {v8}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 833
    iget-object v8, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/telecom/TelecomLoaderService;

    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 834
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 836
    const-string v8, "StartTelephonyRegistry"

    invoke-static {v8}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 837
    new-instance v8, Lcom/android/server/TelephonyRegistry;

    invoke-direct {v8, v2}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_cd
    .catch Ljava/lang/RuntimeException; {:try_start_71 .. :try_end_cd} :catch_2f6

    move-object v10, v8

    .line 838
    .end local v6    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v10, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_ce
    const-string/jumbo v6, "telephony.registry"

    invoke-static {v6, v10}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 839
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 841
    const-string v6, "StartEntropyMixer"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 842
    new-instance v6, Lcom/android/server/EntropyMixer;

    invoke-direct {v6, v2}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    iput-object v6, v3, Lcom/android/server/SystemServer;->mEntropyMixer:Lcom/android/server/EntropyMixer;

    .line 843
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 845
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iput-object v6, v3, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    .line 848
    const-string v6, "StartAccountManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 849
    iget-object v6, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v8, "com.android.server.accounts.AccountManagerService$Lifecycle"

    invoke-virtual {v6, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 850
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 852
    const-string v6, "StartContentService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 853
    iget-object v6, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v8, "com.android.server.content.ContentService$Lifecycle"

    invoke-virtual {v6, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 854
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 856
    const-string v6, "InstallSystemProviders"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 857
    iget-object v6, v3, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 859
    invoke-static {}, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->reset()V

    .line 860
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 865
    const-string v6, "StartDropBoxManager"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 866
    iget-object v6, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/DropBoxManagerService;

    invoke-virtual {v6, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 867
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 869
    const-string v6, "StartVibratorService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 870
    new-instance v6, Lcom/android/server/VibratorService;

    invoke-direct {v6, v2}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_133
    .catch Ljava/lang/RuntimeException; {:try_start_ce .. :try_end_133} :catch_2ef

    move-object v1, v6

    .line 871
    :try_start_134
    const-string/jumbo v6, "vibrator"

    invoke-static {v6, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 872
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_13d
    .catch Ljava/lang/RuntimeException; {:try_start_134 .. :try_end_13d} :catch_2e6

    .line 874
    if-nez v31, :cond_15b

    .line 875
    :try_start_13f
    const-string v6, "StartConsumerIrService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 876
    new-instance v6, Lcom/android/server/ConsumerIrService;

    invoke-direct {v6, v2}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V

    move-object v7, v6

    .line 877
    const-string v6, "consumer_ir"

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 878
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_152
    .catch Ljava/lang/RuntimeException; {:try_start_13f .. :try_end_152} :catch_153

    goto :goto_15b

    .line 978
    .end local v0    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :catch_153
    move-exception v0

    move-object v9, v4

    move-object v11, v7

    move-object/from16 v42, v10

    const/4 v10, 0x0

    goto/16 :goto_2ff

    .line 882
    .restart local v0    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :cond_15b
    :goto_15b
    move-object v11, v7

    .line 882
    .end local v7    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v11, "consumerIr":Lcom/android/server/ConsumerIrService;
    :try_start_15c
    const-string v6, "StartBsGamePadService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 883
    new-instance v6, Lcom/android/server/gamepad/BsGamePadService;

    invoke-direct {v6, v2}, Lcom/android/server/gamepad/BsGamePadService;-><init>(Landroid/content/Context;)V
    :try_end_166
    .catch Ljava/lang/RuntimeException; {:try_start_15c .. :try_end_166} :catch_2de

    move-object v9, v6

    .line 884
    .end local v4    # "bsgamepad":Lcom/android/server/gamepad/BsGamePadService;
    .local v9, "bsgamepad":Lcom/android/server/gamepad/BsGamePadService;
    :try_start_167
    const-string v4, "bsgamepad"

    invoke-static {v4, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 885
    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 888
    const-string v4, "StartAlarmManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 889
    iget-object v4, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/AlarmManagerService;

    invoke-virtual {v4, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 890
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 892
    const-string v4, "InitWatchdog"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 893
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v4

    move-object v8, v4

    .line 894
    .local v8, "watchdog":Lcom/android/server/Watchdog;
    iget-object v4, v3, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v8, v2, v4}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 895
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 897
    const-string v4, "StartInputManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 898
    new-instance v4, Lcom/android/server/input/InputManagerService;

    invoke-direct {v4, v2}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;)V
    :try_end_19d
    .catch Ljava/lang/RuntimeException; {:try_start_167 .. :try_end_19d} :catch_2d5

    move-object v7, v4

    .line 899
    .end local v5    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v7, "inputManager":Lcom/android/server/input/InputManagerService;
    :try_start_19e
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 901
    const-string v4, "StartWindowManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 903
    iget-object v4, v3, Lcom/android/server/SystemServer;->mSensorServiceStart:Ljava/util/concurrent/Future;

    const-string v5, "StartSensorService"

    invoke-static {v4, v5}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 904
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/server/SystemServer;->mSensorServiceStart:Ljava/util/concurrent/Future;

    .line 905
    iget v4, v3, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1b7

    const/4 v6, 0x1

    goto :goto_1b8

    :cond_1b7
    const/4 v6, 0x0

    :goto_1b8
    iget-boolean v4, v3, Lcom/android/server/SystemServer;->mFirstBoot:Z

    const/16 v35, 0x1

    xor-int/lit8 v38, v4, 0x1

    iget-boolean v5, v3, Lcom/android/server/SystemServer;->mOnlyCore:Z

    new-instance v4, Lcom/android/server/policy/MiuiPhoneWindowManager;

    invoke-direct {v4}, Lcom/android/server/policy/MiuiPhoneWindowManager;-><init>()V
    :try_end_1c5
    .catch Ljava/lang/RuntimeException; {:try_start_19e .. :try_end_1c5} :catch_2c8

    move-object/from16 v39, v4

    move-object v4, v2

    move/from16 v40, v5

    move-object v5, v7

    move-object/from16 v41, v1

    move-object v1, v7

    move/from16 v7, v38

    .end local v7    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v1, "inputManager":Lcom/android/server/input/InputManagerService;
    .local v41, "vibrator":Lcom/android/server/VibratorService;
    move-object/from16 v42, v10

    move/from16 v10, v35

    move-object/from16 v35, v8

    move/from16 v8, v40

    .line 905
    .end local v8    # "watchdog":Lcom/android/server/Watchdog;
    .end local v10    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v35, "watchdog":Lcom/android/server/Watchdog;
    .local v42, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v34, v9

    const/4 v10, 0x0

    move-object/from16 v9, v39

    .line 905
    .end local v9    # "bsgamepad":Lcom/android/server/gamepad/BsGamePadService;
    .local v34, "bsgamepad":Lcom/android/server/gamepad/BsGamePadService;
    :try_start_1dd
    invoke-static/range {v4 .. v9}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZLcom/android/server/policy/WindowManagerPolicy;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v4
    :try_end_1e1
    .catch Ljava/lang/RuntimeException; {:try_start_1dd .. :try_end_1e1} :catch_2c1

    .line 910
    .end local v17    # "wm":Lcom/android/server/wm/WindowManagerService;
    .local v4, "wm":Lcom/android/server/wm/WindowManagerService;
    :try_start_1e1
    const-string/jumbo v5, "window"

    const/16 v6, 0x11

    invoke-static {v5, v4, v10, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 912
    const-string v5, "input"

    const/4 v6, 0x1

    invoke-static {v5, v1, v10, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 914
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 916
    const-string v5, "SetWindowManagerService"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 917
    iget-object v5, v3, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5, v4}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 918
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 920
    const-string v5, "WindowManagerServiceOnInitReady"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 921
    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->onInitReady()V

    .line 922
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 927
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v5

    sget-object v6, Lcom/android/server/-$$Lambda$SystemServer$NlJmG18aPrQduhRqASIdcn7G0z8;->INSTANCE:Lcom/android/server/-$$Lambda$SystemServer$NlJmG18aPrQduhRqASIdcn7G0z8;

    const-string v7, "StartHidlServices"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 935
    if-nez v31, :cond_226

    .line 936
    const-string v5, "StartVrManagerService"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 937
    iget-object v5, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/vr/VrManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 938
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 941
    :cond_226
    const-string v5, "StartInputManager"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 942
    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 943
    invoke-virtual {v1}, Lcom/android/server/input/InputManagerService;->start()V

    .line 944
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 947
    const-string v5, "DisplayManagerWindowManagerAndInputReady"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 948
    iget-object v5, v3, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v5}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    .line 949
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 954
    if-eqz v29, :cond_24f

    .line 955
    const-string v5, "SystemServer"

    const-string v6, "No Bluetooth Service (emulator)"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27f

    .line 956
    :cond_24f
    iget v5, v3, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_25c

    .line 957
    const-string v5, "SystemServer"

    const-string v6, "No Bluetooth Service (factory test)"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27f

    .line 958
    :cond_25c
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "android.hardware.bluetooth"

    .line 959
    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_270

    .line 960
    const-string v5, "SystemServer"

    const-string v6, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27f

    .line 962
    :cond_270
    const-string v5, "StartBluetoothService"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 963
    iget-object v5, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/BluetoothService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 964
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 967
    :goto_27f
    const-string v5, "IpConnectivityMetrics"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 968
    iget-object v5, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/connectivity/IpConnectivityMetrics;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 969
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 971
    const-string v5, "NetworkWatchlistService"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 972
    iget-object v5, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/net/watchlist/NetworkWatchlistService$Lifecycle;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 973
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 975
    const-string v5, "PinnerService"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 976
    iget-object v5, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/PinnerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 977
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_2ac
    .catch Ljava/lang/RuntimeException; {:try_start_1e1 .. :try_end_2ac} :catch_2bc

    .line 981
    .end local v0    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    .end local v35    # "watchdog":Lcom/android/server/Watchdog;
    nop

    .line 983
    move-object/from16 v7, v41

    move-object/from16 v64, v4

    move-object v4, v1

    move-object/from16 v1, v64

    move-object/from16 v65, v34

    move-object/from16 v34, v11

    move-object/from16 v11, v65

    goto/16 :goto_314

    .line 978
    :catch_2bc
    move-exception v0

    move-object v5, v1

    move-object/from16 v17, v4

    goto :goto_2c3

    .line 978
    .end local v4    # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v17    # "wm":Lcom/android/server/wm/WindowManagerService;
    :catch_2c1
    move-exception v0

    move-object v5, v1

    .line 978
    .end local v34    # "bsgamepad":Lcom/android/server/gamepad/BsGamePadService;
    .end local v41    # "vibrator":Lcom/android/server/VibratorService;
    .local v1, "vibrator":Lcom/android/server/VibratorService;
    .restart local v5    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v9    # "bsgamepad":Lcom/android/server/gamepad/BsGamePadService;
    :goto_2c3
    move-object/from16 v9, v34

    move-object/from16 v1, v41

    goto :goto_2ff

    .line 978
    .end local v5    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v42    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v7    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v10    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_2c8
    move-exception v0

    move-object/from16 v41, v1

    move-object v1, v7

    move-object/from16 v34, v9

    move-object/from16 v42, v10

    const/4 v10, 0x0

    move-object v5, v1

    move-object/from16 v1, v41

    .line 978
    .end local v7    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v9    # "bsgamepad":Lcom/android/server/gamepad/BsGamePadService;
    .end local v10    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v1, "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v34    # "bsgamepad":Lcom/android/server/gamepad/BsGamePadService;
    .restart local v41    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v42    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    goto :goto_2ff

    .line 978
    .end local v34    # "bsgamepad":Lcom/android/server/gamepad/BsGamePadService;
    .end local v41    # "vibrator":Lcom/android/server/VibratorService;
    .end local v42    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v1, "vibrator":Lcom/android/server/VibratorService;
    .restart local v5    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v9    # "bsgamepad":Lcom/android/server/gamepad/BsGamePadService;
    .restart local v10    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_2d5
    move-exception v0

    move-object/from16 v41, v1

    move-object/from16 v34, v9

    move-object/from16 v42, v10

    const/4 v10, 0x0

    .line 978
    .end local v1    # "vibrator":Lcom/android/server/VibratorService;
    .end local v9    # "bsgamepad":Lcom/android/server/gamepad/BsGamePadService;
    .end local v10    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v34    # "bsgamepad":Lcom/android/server/gamepad/BsGamePadService;
    .restart local v41    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v42    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    goto :goto_2ff

    .line 978
    .end local v34    # "bsgamepad":Lcom/android/server/gamepad/BsGamePadService;
    .end local v41    # "vibrator":Lcom/android/server/VibratorService;
    .end local v42    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v1    # "vibrator":Lcom/android/server/VibratorService;
    .local v4, "bsgamepad":Lcom/android/server/gamepad/BsGamePadService;
    .restart local v10    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_2de
    move-exception v0

    move-object/from16 v41, v1

    move-object/from16 v42, v10

    const/4 v10, 0x0

    move-object v9, v4

    goto :goto_2ee

    .line 978
    .end local v11    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v7, "consumerIr":Lcom/android/server/ConsumerIrService;
    :catch_2e6
    move-exception v0

    move-object/from16 v41, v1

    move-object/from16 v42, v10

    const/4 v10, 0x0

    move-object v9, v4

    move-object v11, v7

    .line 978
    .end local v1    # "vibrator":Lcom/android/server/VibratorService;
    .end local v4    # "bsgamepad":Lcom/android/server/gamepad/BsGamePadService;
    .end local v7    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v10    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v9    # "bsgamepad":Lcom/android/server/gamepad/BsGamePadService;
    .restart local v11    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v41    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v42    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :goto_2ee
    goto :goto_2ff

    .line 978
    .end local v9    # "bsgamepad":Lcom/android/server/gamepad/BsGamePadService;
    .end local v11    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v41    # "vibrator":Lcom/android/server/VibratorService;
    .end local v42    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v1    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v4    # "bsgamepad":Lcom/android/server/gamepad/BsGamePadService;
    .restart local v7    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v10    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_2ef
    move-exception v0

    move-object/from16 v42, v10

    const/4 v10, 0x0

    move-object v9, v4

    move-object v11, v7

    .line 978
    .end local v10    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v42    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    goto :goto_2ff

    .line 978
    .end local v42    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v6    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_2f6
    move-exception v0

    const/4 v10, 0x0

    goto :goto_2fb

    :catch_2f9
    move-exception v0

    move v10, v9

    .line 978
    .end local v4    # "bsgamepad":Lcom/android/server/gamepad/BsGamePadService;
    .end local v6    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v7    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v9    # "bsgamepad":Lcom/android/server/gamepad/BsGamePadService;
    .restart local v11    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v42    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :goto_2fb
    move-object v9, v4

    move-object/from16 v42, v6

    move-object v11, v7

    .line 979
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_2ff
    const-string v4, "System"

    const-string v6, "******************************************"

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    const-string v4, "System"

    const-string v6, "************ Failure starting core service"

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 983
    .end local v0    # "e":Ljava/lang/RuntimeException;
    move-object v7, v1

    move-object v4, v5

    move-object/from16 v34, v11

    move-object/from16 v1, v17

    move-object v11, v9

    .line 983
    .end local v5    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v9    # "bsgamepad":Lcom/android/server/gamepad/BsGamePadService;
    .end local v17    # "wm":Lcom/android/server/wm/WindowManagerService;
    .local v1, "wm":Lcom/android/server/wm/WindowManagerService;
    .local v4, "inputManager":Lcom/android/server/input/InputManagerService;
    .local v7, "vibrator":Lcom/android/server/VibratorService;
    .local v11, "bsgamepad":Lcom/android/server/gamepad/BsGamePadService;
    .local v34, "consumerIr":Lcom/android/server/ConsumerIrService;
    :goto_314
    const/4 v5, 0x0

    .line 984
    .local v5, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    const/4 v6, 0x0

    .line 985
    .local v6, "notification":Landroid/app/INotificationManager;
    const/4 v8, 0x0

    .line 986
    .local v8, "location":Lcom/android/server/LocationManagerService;
    const/4 v9, 0x0

    .line 987
    .local v9, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/16 v17, 0x0

    .line 988
    .local v17, "lockSettings":Lcom/android/internal/widget/ILockSettings;
    const/16 v35, 0x0

    .line 991
    .local v35, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    iget v0, v3, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v10, 0x1

    if-eq v0, v10, :cond_34a

    .line 992
    const-string v0, "StartInputMethodManagerLifecycle"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 993
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/InputMethodManagerService$Lifecycle;

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 994
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 996
    const-string v0, "StartAccessibilityManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 998
    :try_start_335
    const-string v0, "accessibility"

    new-instance v10, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v10, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v10}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_33f
    .catch Ljava/lang/Throwable; {:try_start_335 .. :try_end_33f} :catch_340

    .line 1002
    goto :goto_347

    .line 1000
    :catch_340
    move-exception v0

    .line 1001
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v10, "starting Accessibility Manager"

    invoke-direct {v3, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1003
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_347
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1006
    :cond_34a
    const-string v0, "MakeDisplayReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1008
    :try_start_34f
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_352
    .catch Ljava/lang/Throwable; {:try_start_34f .. :try_end_352} :catch_353

    .line 1011
    goto :goto_35b

    .line 1009
    :catch_353
    move-exception v0

    move-object v10, v0

    .line 1010
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v10, "making display ready"

    invoke-direct {v3, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1012
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_35b
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1014
    iget v0, v3, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v10, 0x1

    if-eq v0, v10, :cond_3b8

    .line 1015
    const-string v0, "0"

    const-string/jumbo v10, "system_init.startmountservice"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b8

    .line 1016
    const-string v0, "StartStorageManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1022
    :try_start_377
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v10, "com.android.server.StorageManagerService$Lifecycle"

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1023
    const-string/jumbo v0, "mount"

    .line 1024
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1023
    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v0
    :try_end_389
    .catch Ljava/lang/Throwable; {:try_start_377 .. :try_end_389} :catch_38c

    .line 1027
    .end local v32    # "storageManager":Landroid/os/storage/IStorageManager;
    .local v0, "storageManager":Landroid/os/storage/IStorageManager;
    nop

    .line 1028
    move-object v10, v0

    goto :goto_395

    .line 1025
    .end local v0    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v32    # "storageManager":Landroid/os/storage/IStorageManager;
    :catch_38c
    move-exception v0

    .line 1026
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v10, "starting StorageManagerService"

    invoke-direct {v3, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1028
    .end local v0    # "e":Ljava/lang/Throwable;
    move-object/from16 v10, v32

    .line 1028
    .end local v32    # "storageManager":Landroid/os/storage/IStorageManager;
    .local v10, "storageManager":Landroid/os/storage/IStorageManager;
    :goto_395
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1030
    const-string v0, "StartStorageStatsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1032
    :try_start_39d
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;
    :try_end_39f
    .catch Ljava/lang/Throwable; {:try_start_39d .. :try_end_39f} :catch_3a9

    move-object/from16 v45, v5

    :try_start_3a1
    const-string v5, "com.android.server.usage.StorageStatsService$Lifecycle"

    .line 1032
    .end local v5    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v45, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_3a6
    .catch Ljava/lang/Throwable; {:try_start_3a1 .. :try_end_3a6} :catch_3a7

    .line 1035
    goto :goto_3b2

    .line 1033
    :catch_3a7
    move-exception v0

    goto :goto_3ac

    .line 1033
    .end local v45    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v5    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catch_3a9
    move-exception v0

    move-object/from16 v45, v5

    .line 1034
    .end local v5    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v45    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :goto_3ac
    const-string/jumbo v5, "starting StorageStatsService"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1036
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_3b2
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1042
    move-object/from16 v32, v10

    goto :goto_3ba

    .line 1042
    .end local v10    # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v45    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v5    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v32    # "storageManager":Landroid/os/storage/IStorageManager;
    :cond_3b8
    move-object/from16 v45, v5

    .line 1042
    .end local v5    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v45    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :goto_3ba
    const-string v0, "StartUiModeManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1043
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1044
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1046
    iget-boolean v0, v3, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v0, :cond_3f9

    .line 1047
    const-string v0, "UpdatePackagesIfNeeded"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1049
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v38

    move-wide/from16 v46, v38

    .line 1051
    .local v46, "bootDexoptStartTime":J
    :try_start_3d8
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->updatePackagesIfNeeded()V
    :try_end_3dd
    .catch Ljava/lang/Throwable; {:try_start_3d8 .. :try_end_3dd} :catch_3de

    .line 1054
    goto :goto_3e5

    .line 1052
    :catch_3de
    move-exception v0

    .line 1053
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "update packages"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1056
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_3e5
    nop

    .line 1057
    move-object/from16 v48, v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 1056
    .end local v6    # "notification":Landroid/app/INotificationManager;
    .local v48, "notification":Landroid/app/INotificationManager;
    move-object/from16 v49, v8

    move-object/from16 v50, v9

    move-wide/from16 v8, v46

    invoke-static {v8, v9, v5, v6}, Lcom/android/server/SystemServerInjector;->markBootDexopt(JJ)V

    .line 1059
    .end local v9    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v46    # "bootDexoptStartTime":J
    .local v8, "bootDexoptStartTime":J
    .local v49, "location":Lcom/android/server/LocationManagerService;
    .local v50, "countryDetector":Lcom/android/server/CountryDetectorService;
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1059
    .end local v8    # "bootDexoptStartTime":J
    goto :goto_3ff

    .line 1072
    .end local v48    # "notification":Landroid/app/INotificationManager;
    .end local v49    # "location":Lcom/android/server/LocationManagerService;
    .end local v50    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v6    # "notification":Landroid/app/INotificationManager;
    .local v8, "location":Lcom/android/server/LocationManagerService;
    .restart local v9    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :cond_3f9
    move-object/from16 v48, v6

    move-object/from16 v49, v8

    move-object/from16 v50, v9

    .line 1072
    .end local v6    # "notification":Landroid/app/INotificationManager;
    .end local v8    # "location":Lcom/android/server/LocationManagerService;
    .end local v9    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v48    # "notification":Landroid/app/INotificationManager;
    .restart local v49    # "location":Lcom/android/server/LocationManagerService;
    .restart local v50    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :goto_3ff
    iget v0, v3, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v0, v5, :cond_c00

    .line 1073
    const-string v0, "StartLockSettingsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1075
    :try_start_409
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.locksettings.LockSettingsService$Lifecycle"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1076
    const-string/jumbo v0, "lock_settings"

    .line 1077
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1076
    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0
    :try_end_41b
    .catch Ljava/lang/Throwable; {:try_start_409 .. :try_end_41b} :catch_41f

    .line 1080
    .end local v17    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .local v0, "lockSettings":Lcom/android/internal/widget/ILockSettings;
    nop

    .line 1081
    move-object/from16 v17, v0

    goto :goto_426

    .line 1078
    .end local v0    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .restart local v17    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    :catch_41f
    move-exception v0

    .line 1079
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting LockSettingsService service"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1081
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_426
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1083
    const-string/jumbo v0, "ro.frp.pst"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x1

    xor-int/2addr v0, v5

    move v5, v0

    .line 1084
    .local v5, "hasPdb":Z
    if-eqz v5, :cond_44a

    .line 1085
    const-string v0, "StartPersistentDataBlock"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1086
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/PersistentDataBlockService;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1087
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1090
    :cond_44a
    if-nez v5, :cond_452

    invoke-static {}, Lcom/android/server/oemlock/OemLockService;->isHalPresent()Z

    move-result v0

    if-eqz v0, :cond_461

    .line 1092
    :cond_452
    const-string v0, "StartOemLockService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1093
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/oemlock/OemLockService;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1094
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1097
    :cond_461
    const-string v0, "StartDeviceIdleController"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1098
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1099
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1103
    const-string v0, "StartDevicePolicyManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1104
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1105
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1107
    if-nez v31, :cond_4a3

    .line 1108
    const-string v0, "StartStatusBarManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1110
    :try_start_486
    new-instance v0, Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-direct {v0, v2, v1}, Lcom/android/server/statusbar/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_48b
    .catch Ljava/lang/Throwable; {:try_start_486 .. :try_end_48b} :catch_495

    move-object v6, v0

    .line 1111
    .end local v45    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v6, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :try_start_48c
    const-string/jumbo v0, "statusbar"

    invoke-static {v0, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_492
    .catch Ljava/lang/Throwable; {:try_start_48c .. :try_end_492} :catch_493

    .line 1114
    goto :goto_49e

    .line 1112
    :catch_493
    move-exception v0

    goto :goto_498

    .line 1112
    .end local v6    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v45    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catch_495
    move-exception v0

    move-object/from16 v6, v45

    .line 1113
    .end local v45    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v6    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :goto_498
    const-string/jumbo v8, "starting StatusBarManagerService"

    invoke-direct {v3, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1115
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_49e
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1118
    move-object/from16 v45, v6

    .line 1118
    .end local v6    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v45    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :cond_4a3
    const-string v0, "StartClipboardService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1119
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/clipboard/ClipboardService;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1120
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1122
    const-string v0, "StartNetworkManagementService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1124
    :try_start_4b7
    invoke-static {v2}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v0
    :try_end_4bb
    .catch Ljava/lang/Throwable; {:try_start_4b7 .. :try_end_4bb} :catch_4c5

    move-object v6, v0

    .line 1125
    .end local v33    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .local v6, "networkManagement":Lcom/android/server/NetworkManagementService;
    :try_start_4bc
    const-string/jumbo v0, "network_management"

    invoke-static {v0, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4c2
    .catch Ljava/lang/Throwable; {:try_start_4bc .. :try_end_4c2} :catch_4c3

    .line 1128
    goto :goto_4ce

    .line 1126
    :catch_4c3
    move-exception v0

    goto :goto_4c8

    .line 1126
    .end local v6    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v33    # "networkManagement":Lcom/android/server/NetworkManagementService;
    :catch_4c5
    move-exception v0

    move-object/from16 v6, v33

    .line 1127
    .end local v33    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v6    # "networkManagement":Lcom/android/server/NetworkManagementService;
    :goto_4c8
    const-string/jumbo v8, "starting NetworkManagement Service"

    invoke-direct {v3, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1129
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_4ce
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1131
    const-string v0, "StartIpSecService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1133
    :try_start_4d6
    invoke-static {v2}, Lcom/android/server/IpSecService;->create(Landroid/content/Context;)Lcom/android/server/IpSecService;

    move-result-object v0

    move-object v12, v0

    .line 1134
    const-string v0, "ipsec"

    invoke-static {v0, v12}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4e0
    .catch Ljava/lang/Throwable; {:try_start_4d6 .. :try_end_4e0} :catch_4e1

    .line 1137
    goto :goto_4e8

    .line 1135
    :catch_4e1
    move-exception v0

    .line 1136
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v8, "starting IpSec Service"

    invoke-direct {v3, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1138
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_4e8
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1140
    const-string v0, "StartTextServicesManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1141
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/TextServicesManagerService$Lifecycle;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1142
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1144
    if-nez v25, :cond_50b

    .line 1145
    const-string v0, "StartTextClassificationManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1146
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/textclassifier/TextClassificationManagerService$Lifecycle;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1147
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1150
    :cond_50b
    const-string v0, "StartNetworkScoreService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1151
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/NetworkScoreService$Lifecycle;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1152
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1154
    const-string v0, "StartNetworkStatsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1156
    :try_start_51f
    invoke-static {v2, v6}, Lcom/android/server/net/NetworkStatsService;->create(Landroid/content/Context;Landroid/os/INetworkManagementService;)Lcom/android/server/net/NetworkStatsService;

    move-result-object v0

    move-object v13, v0

    .line 1157
    const-string/jumbo v0, "netstats"

    invoke-static {v0, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_52a
    .catch Ljava/lang/Throwable; {:try_start_51f .. :try_end_52a} :catch_52b

    .line 1160
    goto :goto_532

    .line 1158
    :catch_52b
    move-exception v0

    .line 1159
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v8, "starting NetworkStats Service"

    invoke-direct {v3, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1161
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_532
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1163
    const-string v0, "StartNetworkPolicyManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1165
    :try_start_53a
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v8, v3, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v0, v2, v8, v6}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/INetworkManagementService;)V

    move-object v14, v0

    .line 1167
    const-string/jumbo v0, "netpolicy"

    invoke-static {v0, v14}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_548
    .catch Ljava/lang/Throwable; {:try_start_53a .. :try_end_548} :catch_549

    .line 1170
    goto :goto_550

    .line 1168
    :catch_549
    move-exception v0

    .line 1169
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v8, "starting NetworkPolicy Service"

    invoke-direct {v3, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1171
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_550
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1173
    iget-boolean v0, v3, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v0, :cond_5ed

    .line 1174
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v8, "android.hardware.wifi"

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_581

    .line 1177
    const-string v0, "StartWifi"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1178
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v8, "com.android.server.wifi.WifiService"

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1179
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1180
    const-string v0, "StartWifiScanning"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1181
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v8, "com.android.server.wifi.scanner.WifiScanningService"

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1183
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1186
    :cond_581
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v8, "android.hardware.wifi.rtt"

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_59c

    .line 1188
    const-string v0, "StartRttService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1189
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v8, "com.android.server.wifi.rtt.RttService"

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1191
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1194
    :cond_59c
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v8, "android.hardware.wifi.aware"

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5b7

    .line 1196
    const-string v0, "StartWifiAware"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1197
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v8, "com.android.server.wifi.aware.WifiAwareService"

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1198
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1201
    :cond_5b7
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v8, "android.hardware.wifi.direct"

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5d2

    .line 1203
    const-string v0, "StartWifiP2P"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1204
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v8, "com.android.server.wifi.p2p.WifiP2pService"

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1205
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1208
    :cond_5d2
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v8, "android.hardware.lowpan"

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5ed

    .line 1210
    const-string v0, "StartLowpan"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1211
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v8, "com.android.server.lowpan.LowpanService"

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1212
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1216
    :cond_5ed
    if-eqz v30, :cond_678

    .line 1218
    :try_start_5ef
    const-string v0, "SystemServer"

    const-string v8, "Wigig Service"

    invoke-static {v0, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    const-string v0, "/system/framework/wigig-service.jar:/system/framework/vendor.qti.hardware.wigig.supptunnel-V1.0-java.jar:/system/framework/vendor.qti.hardware.wigig.netperftuner-V1.0-java.jar"

    .line 1223
    .local v0, "wigigClassPath":Ljava/lang/String;
    new-instance v8, Ldalvik/system/PathClassLoader;

    .line 1224
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-direct {v8, v0, v9}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1225
    .local v8, "wigigClassLoader":Ldalvik/system/PathClassLoader;
    const-string v9, "com.qualcomm.qti.server.wigig.p2p.WigigP2pServiceImpl"

    invoke-virtual {v8, v9}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 1227
    .local v9, "wigigP2pClass":Ljava/lang/Class;
    move-object/from16 v51, v0

    const/4 v10, 0x1

    new-array v0, v10, [Ljava/lang/Class;

    .line 1227
    .end local v0    # "wigigClassPath":Ljava/lang/String;
    .local v51, "wigigClassPath":Ljava/lang/String;
    const-class v10, Landroid/content/Context;

    const/16 v33, 0x0

    aput-object v10, v0, v33

    invoke-virtual {v9, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_61a
    .catch Ljava/lang/Throwable; {:try_start_5ef .. :try_end_61a} :catch_66e

    .line 1228
    .local v0, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    move/from16 v52, v5

    const/4 v10, 0x1

    :try_start_61d
    new-array v5, v10, [Ljava/lang/Object;

    .line 1228
    .end local v5    # "hasPdb":Z
    .local v52, "hasPdb":Z
    aput-object v2, v5, v33

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v23, v5

    .line 1229
    const-string v5, "SystemServer"

    const-string v10, "Successfully loaded WigigP2pServiceImpl class"

    invoke-static {v5, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    const-string/jumbo v5, "wigigp2p"

    move-object/from16 v10, v23

    check-cast v10, Landroid/os/IBinder;

    invoke-static {v5, v10}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1232
    const-string v5, "com.qualcomm.qti.server.wigig.WigigService"

    invoke-virtual {v8, v5}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 1234
    .local v5, "wigigClass":Ljava/lang/Class;
    move-object/from16 v53, v0

    const/4 v10, 0x1

    new-array v0, v10, [Ljava/lang/Class;

    .line 1234
    .end local v0    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .local v53, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    const-class v10, Landroid/content/Context;

    const/16 v33, 0x0

    aput-object v10, v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 1235
    .end local v53    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .restart local v0    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    move-object/from16 v54, v5

    const/4 v10, 0x1

    new-array v5, v10, [Ljava/lang/Object;

    .line 1235
    .end local v5    # "wigigClass":Ljava/lang/Class;
    .local v54, "wigigClass":Ljava/lang/Class;
    aput-object v2, v5, v33

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v24, v5

    .line 1236
    const-string v5, "SystemServer"

    const-string v10, "Successfully loaded WigigService class"

    invoke-static {v5, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    const-string/jumbo v5, "wigig"

    move-object/from16 v10, v24

    check-cast v10, Landroid/os/IBinder;

    invoke-static {v5, v10}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_66b
    .catch Ljava/lang/Throwable; {:try_start_61d .. :try_end_66b} :catch_66c

    .line 1240
    .end local v0    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .end local v8    # "wigigClassLoader":Ldalvik/system/PathClassLoader;
    .end local v9    # "wigigP2pClass":Ljava/lang/Class;
    .end local v51    # "wigigClassPath":Ljava/lang/String;
    .end local v54    # "wigigClass":Ljava/lang/Class;
    goto :goto_67a

    .line 1238
    :catch_66c
    move-exception v0

    goto :goto_671

    .line 1238
    .end local v52    # "hasPdb":Z
    .local v5, "hasPdb":Z
    :catch_66e
    move-exception v0

    move/from16 v52, v5

    .line 1239
    .end local v5    # "hasPdb":Z
    .local v0, "e":Ljava/lang/Throwable;
    .restart local v52    # "hasPdb":Z
    :goto_671
    const-string/jumbo v5, "starting WigigService"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1239
    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_67a

    .line 1243
    .end local v52    # "hasPdb":Z
    .restart local v5    # "hasPdb":Z
    :cond_678
    move/from16 v52, v5

    .line 1243
    .end local v5    # "hasPdb":Z
    .restart local v52    # "hasPdb":Z
    :goto_67a
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.ethernet"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_68e

    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.usb.host"

    .line 1244
    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_69d

    .line 1245
    :cond_68e
    const-string v0, "StartEthernet"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1246
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.ethernet.EthernetService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1247
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1250
    :cond_69d
    const-string v0, "StartConnectivityService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1252
    :try_start_6a2
    new-instance v0, Lcom/android/server/ConnectivityService;

    invoke-direct {v0, v2, v6, v13, v14}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V

    move-object v15, v0

    .line 1254
    const-string v0, "connectivity"

    const/4 v5, 0x6

    const/4 v8, 0x0

    invoke-static {v0, v15, v8, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 1257
    invoke-virtual {v13, v15}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 1258
    invoke-virtual {v14, v15}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    :try_end_6b5
    .catch Ljava/lang/Throwable; {:try_start_6a2 .. :try_end_6b5} :catch_6b6

    .line 1261
    goto :goto_6bd

    .line 1259
    :catch_6b6
    move-exception v0

    .line 1260
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting Connectivity Service"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1262
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_6bd
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1264
    const-string v0, "StartNsdService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1266
    :try_start_6c5
    invoke-static {v2}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v0
    :try_end_6c9
    .catch Ljava/lang/Throwable; {:try_start_6c5 .. :try_end_6c9} :catch_6d3

    move-object v5, v0

    .line 1267
    .end local v16    # "serviceDiscovery":Lcom/android/server/NsdService;
    .local v5, "serviceDiscovery":Lcom/android/server/NsdService;
    :try_start_6ca
    const-string/jumbo v0, "servicediscovery"

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6d0
    .catch Ljava/lang/Throwable; {:try_start_6ca .. :try_end_6d0} :catch_6d1

    .line 1271
    goto :goto_6dc

    .line 1269
    :catch_6d1
    move-exception v0

    goto :goto_6d6

    .line 1269
    .end local v5    # "serviceDiscovery":Lcom/android/server/NsdService;
    .restart local v16    # "serviceDiscovery":Lcom/android/server/NsdService;
    :catch_6d3
    move-exception v0

    move-object/from16 v5, v16

    .line 1270
    .end local v16    # "serviceDiscovery":Lcom/android/server/NsdService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v5    # "serviceDiscovery":Lcom/android/server/NsdService;
    :goto_6d6
    const-string/jumbo v8, "starting Service Discovery Service"

    invoke-direct {v3, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1272
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v5    # "serviceDiscovery":Lcom/android/server/NsdService;
    .restart local v16    # "serviceDiscovery":Lcom/android/server/NsdService;
    :goto_6dc
    move-object/from16 v16, v5

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1274
    const-string v0, "StartSystemUpdateManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1276
    :try_start_6e6
    const-string/jumbo v0, "system_update"

    new-instance v5, Lcom/android/server/SystemUpdateManagerService;

    invoke-direct {v5, v2}, Lcom/android/server/SystemUpdateManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6f1
    .catch Ljava/lang/Throwable; {:try_start_6e6 .. :try_end_6f1} :catch_6f2

    .line 1280
    goto :goto_6f9

    .line 1278
    :catch_6f2
    move-exception v0

    .line 1279
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting SystemUpdateManagerService"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1281
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_6f9
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1283
    const-string v0, "StartUpdateLockService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1285
    :try_start_701
    const-string/jumbo v0, "updatelock"

    new-instance v5, Lcom/android/server/UpdateLockService;

    invoke-direct {v5, v2}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_70c
    .catch Ljava/lang/Throwable; {:try_start_701 .. :try_end_70c} :catch_70d

    .line 1289
    goto :goto_714

    .line 1287
    :catch_70d
    move-exception v0

    .line 1288
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting UpdateLockService"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1290
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_714
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1292
    const-string v0, "StartNotificationManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1293
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1294
    invoke-static {v2}, Lcom/android/internal/notification/SystemNotificationChannels;->createAll(Landroid/content/Context;)V

    .line 1295
    const-string/jumbo v0, "notification"

    .line 1296
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1295
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v5

    .line 1297
    .end local v48    # "notification":Landroid/app/INotificationManager;
    .local v5, "notification":Landroid/app/INotificationManager;
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1299
    const-string v0, "StartDeviceMonitor"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1300
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1301
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1303
    const-string v0, "StartLocationManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1305
    :try_start_748
    new-instance v0, Lcom/android/server/LocationManagerService;

    invoke-direct {v0, v2}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_74d
    .catch Ljava/lang/Throwable; {:try_start_748 .. :try_end_74d} :catch_757

    move-object v8, v0

    .line 1306
    .end local v49    # "location":Lcom/android/server/LocationManagerService;
    .local v8, "location":Lcom/android/server/LocationManagerService;
    :try_start_74e
    const-string/jumbo v0, "location"

    invoke-static {v0, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_754
    .catch Ljava/lang/Throwable; {:try_start_74e .. :try_end_754} :catch_755

    .line 1309
    goto :goto_760

    .line 1307
    :catch_755
    move-exception v0

    goto :goto_75a

    .line 1307
    .end local v8    # "location":Lcom/android/server/LocationManagerService;
    .restart local v49    # "location":Lcom/android/server/LocationManagerService;
    :catch_757
    move-exception v0

    move-object/from16 v8, v49

    .line 1308
    .end local v49    # "location":Lcom/android/server/LocationManagerService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v8    # "location":Lcom/android/server/LocationManagerService;
    :goto_75a
    const-string/jumbo v9, "starting Location Manager"

    invoke-direct {v3, v9, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1310
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_760
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1312
    const-string v0, "StartCountryDetectorService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1314
    :try_start_768
    new-instance v0, Lcom/android/server/CountryDetectorService;

    invoke-direct {v0, v2}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_76d
    .catch Ljava/lang/Throwable; {:try_start_768 .. :try_end_76d} :catch_776

    move-object v9, v0

    .line 1315
    .end local v50    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v9, "countryDetector":Lcom/android/server/CountryDetectorService;
    :try_start_76e
    const-string v0, "country_detector"

    invoke-static {v0, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_773
    .catch Ljava/lang/Throwable; {:try_start_76e .. :try_end_773} :catch_774

    .line 1318
    goto :goto_77f

    .line 1316
    :catch_774
    move-exception v0

    goto :goto_779

    .line 1316
    .end local v9    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v50    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :catch_776
    move-exception v0

    move-object/from16 v9, v50

    .line 1317
    .end local v50    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v9    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :goto_779
    const-string/jumbo v10, "starting Country Detector"

    invoke-direct {v3, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1319
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_77f
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1321
    if-nez v31, :cond_79b

    .line 1322
    const-string v0, "StartSearchManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1324
    :try_start_789
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v10, "com.android.server.search.SearchManagerService$Lifecycle"

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_790
    .catch Ljava/lang/Throwable; {:try_start_789 .. :try_end_790} :catch_791

    .line 1327
    goto :goto_798

    .line 1325
    :catch_791
    move-exception v0

    .line 1326
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v10, "starting Search Service"

    invoke-direct {v3, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1328
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_798
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1331
    :cond_79b
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v10, 0x112006d

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_7b7

    .line 1332
    const-string v0, "StartWallpaperManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1333
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v10, "com.android.server.wallpaper.WallpaperManagerService$Lifecycle"

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1334
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1337
    :cond_7b7
    const-string v0, "StartAudioService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1338
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/audio/AudioService$Lifecycle;

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1339
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1341
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v10, "android.hardware.broadcastradio"

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7df

    .line 1342
    const-string v0, "StartBroadcastRadioService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1343
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/broadcastradio/BroadcastRadioService;

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1344
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1347
    :cond_7df
    const-string v0, "StartDockObserver"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1348
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/DockObserver;

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1349
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1351
    if-eqz v31, :cond_7ff

    .line 1352
    const-string v0, "StartThermalObserver"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1353
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v10, "com.google.android.clockwork.ThermalObserver"

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1354
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1357
    :cond_7ff
    const-string v0, "StartWiredAccessoryManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1360
    :try_start_804
    new-instance v0, Lcom/android/server/WiredAccessoryManager;

    invoke-direct {v0, v2, v4}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    invoke-virtual {v4, v0}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_80c
    .catch Ljava/lang/Throwable; {:try_start_804 .. :try_end_80c} :catch_80d

    .line 1364
    goto :goto_814

    .line 1362
    :catch_80d
    move-exception v0

    .line 1363
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v10, "starting WiredAccessoryManager"

    invoke-direct {v3, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1365
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_814
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1367
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v10, "android.software.midi"

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_830

    .line 1369
    const-string v0, "StartMidiManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1370
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v10, "com.android.server.midi.MidiService$Lifecycle"

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1371
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1374
    :cond_830
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v10, "android.hardware.usb.host"

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_846

    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v10, "android.hardware.usb.accessory"

    .line 1375
    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_846

    if-eqz v29, :cond_855

    .line 1379
    :cond_846
    const-string v0, "StartUsbService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1380
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v10, "com.android.server.usb.UsbService$Lifecycle"

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1381
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1384
    :cond_855
    if-nez v31, :cond_884

    .line 1385
    const-string v0, "StartSerialService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1388
    :try_start_85c
    new-instance v0, Lcom/android/server/SerialService;

    invoke-direct {v0, v2}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_861
    .catch Ljava/lang/Throwable; {:try_start_85c .. :try_end_861} :catch_870

    move-object v10, v0

    .line 1389
    .end local v18    # "serial":Lcom/android/server/SerialService;
    .local v10, "serial":Lcom/android/server/SerialService;
    :try_start_862
    const-string/jumbo v0, "serial"

    invoke-static {v0, v10}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_868
    .catch Ljava/lang/Throwable; {:try_start_862 .. :try_end_868} :catch_86e

    .line 1392
    nop

    .line 1393
    move-object/from16 v55, v5

    move-object/from16 v56, v6

    goto :goto_87e

    .line 1390
    :catch_86e
    move-exception v0

    goto :goto_873

    .line 1390
    .end local v10    # "serial":Lcom/android/server/SerialService;
    .restart local v18    # "serial":Lcom/android/server/SerialService;
    :catch_870
    move-exception v0

    move-object/from16 v10, v18

    .line 1391
    .end local v18    # "serial":Lcom/android/server/SerialService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v10    # "serial":Lcom/android/server/SerialService;
    :goto_873
    move-object/from16 v55, v5

    const-string v5, "SystemServer"

    .line 1391
    .end local v5    # "notification":Landroid/app/INotificationManager;
    .local v55, "notification":Landroid/app/INotificationManager;
    move-object/from16 v56, v6

    const-string v6, "Failure starting SerialService"

    .line 1391
    .end local v6    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .local v56, "networkManagement":Lcom/android/server/NetworkManagementService;
    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1393
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_87e
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1396
    move-object/from16 v18, v10

    goto :goto_888

    .line 1396
    .end local v10    # "serial":Lcom/android/server/SerialService;
    .end local v55    # "notification":Landroid/app/INotificationManager;
    .end local v56    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v5    # "notification":Landroid/app/INotificationManager;
    .restart local v6    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v18    # "serial":Lcom/android/server/SerialService;
    :cond_884
    move-object/from16 v55, v5

    move-object/from16 v56, v6

    .line 1396
    .end local v5    # "notification":Landroid/app/INotificationManager;
    .end local v6    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v55    # "notification":Landroid/app/INotificationManager;
    .restart local v56    # "networkManagement":Lcom/android/server/NetworkManagementService;
    :goto_888
    const-string v0, "StartHardwarePropertiesManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1398
    :try_start_88d
    new-instance v0, Lcom/android/server/HardwarePropertiesManagerService;

    invoke-direct {v0, v2}, Lcom/android/server/HardwarePropertiesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_892
    .catch Ljava/lang/Throwable; {:try_start_88d .. :try_end_892} :catch_89b

    move-object v5, v0

    .line 1399
    .end local v22    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .local v5, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    :try_start_893
    const-string v0, "hardware_properties"

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_898
    .catch Ljava/lang/Throwable; {:try_start_893 .. :try_end_898} :catch_899

    .line 1403
    goto :goto_8a5

    .line 1401
    :catch_899
    move-exception v0

    goto :goto_89e

    .line 1401
    .end local v5    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .restart local v22    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    :catch_89b
    move-exception v0

    move-object/from16 v5, v22

    .line 1402
    .end local v22    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v5    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    :goto_89e
    const-string v6, "SystemServer"

    const-string v10, "Failure starting HardwarePropertiesManagerService"

    invoke-static {v6, v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1404
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v5    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .restart local v22    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    :goto_8a5
    move-object/from16 v22, v5

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1406
    const-string v0, "StartTwilightService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1407
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1408
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1410
    invoke-static {v2}, Lcom/android/internal/app/ColorDisplayController;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8ce

    .line 1411
    const-string v0, "StartNightDisplay"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1412
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/display/ColorDisplayService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1413
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1416
    :cond_8ce
    const-string v0, "StartJobScheduler"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1417
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1418
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1420
    const-string v0, "StartSoundTrigger"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1421
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1422
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1424
    const-string v0, "StartTrustManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1425
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1426
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1429
    iget-boolean v0, v3, Lcom/android/server/SystemServer;->mOnlyCore:Z

    invoke-static {v2, v0}, Lcom/android/server/SystemServerInjector;->addExtraServices(Landroid/content/Context;Z)V

    .line 1432
    invoke-static {v2}, Lcom/android/server/am/ProcessKillerIdler;->schedule(Landroid/content/Context;)V

    .line 1435
    invoke-static {}, Lmiui/os/DeviceFeature;->hasMirihiSupport()Z

    move-result v0

    if-eqz v0, :cond_91c

    .line 1437
    :try_start_909
    const-string/jumbo v0, "miui.slide.SlideManagerService"

    new-instance v5, Lmiui/slide/SlideManagerService;

    invoke-direct {v5, v2}, Lmiui/slide/SlideManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_914
    .catch Ljava/lang/Throwable; {:try_start_909 .. :try_end_914} :catch_915

    .line 1441
    goto :goto_91c

    .line 1439
    :catch_915
    move-exception v0

    .line 1440
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting SlideManagerService"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1445
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_91c
    :goto_91c
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.backup"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_935

    .line 1446
    const-string v0, "StartBackupManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1447
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.backup.BackupManagerService$Lifecycle"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1448
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1451
    :cond_935
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.app_widgets"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_94c

    .line 1452
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x1120058

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_95b

    .line 1453
    :cond_94c
    const-string v0, "StartAppWidgerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1454
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.appwidget.AppWidgetService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1455
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1462
    :cond_95b
    const-string v0, "StartVoiceRecognitionManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1463
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.voiceinteraction.VoiceInteractionManagerService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1464
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1466
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->isGestureLauncherEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_983

    .line 1467
    const-string v0, "StartGestureLauncher"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1468
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/GestureLauncherService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1469
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1471
    :cond_983
    const-string v0, "StartSensorNotification"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1472
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/SensorNotificationService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1473
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1475
    const-string v0, "StartContextHubSystemService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1476
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/ContextHubSystemService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1477
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1479
    const-string v0, "StartDiskStatsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1481
    :try_start_9a6
    const-string v0, "diskstats"

    new-instance v5, Lcom/android/server/DiskStatsService;

    invoke-direct {v5, v2}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_9b0
    .catch Ljava/lang/Throwable; {:try_start_9a6 .. :try_end_9b0} :catch_9b1

    .line 1484
    goto :goto_9b8

    .line 1482
    :catch_9b1
    move-exception v0

    .line 1483
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting DiskStats Service"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1485
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_9b8
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1491
    iget-boolean v0, v3, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v0, :cond_9ce

    .line 1492
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x112006c

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_9ce

    const/4 v0, 0x1

    goto :goto_9cf

    :cond_9ce
    const/4 v0, 0x0

    :goto_9cf
    move v5, v0

    .line 1494
    .local v5, "startRulesManagerService":Z
    if-eqz v5, :cond_9e1

    .line 1495
    const-string v0, "StartTimeZoneRulesManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1496
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.timezone.RulesManagerService$Lifecycle"

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1497
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1500
    :cond_9e1
    if-nez v31, :cond_a06

    .line 1501
    const-string v0, "StartNetworkTimeUpdateService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1503
    :try_start_9e8
    new-instance v0, Lcom/android/server/NetworkTimeUpdateService;

    invoke-direct {v0, v2}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_9ed
    .catch Ljava/lang/Throwable; {:try_start_9e8 .. :try_end_9ed} :catch_9fc

    move-object v6, v0

    .line 1504
    .end local v19    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v6, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :try_start_9ee
    const-string/jumbo v0, "network_time_update_service"

    invoke-static {v0, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_9f4
    .catch Ljava/lang/Throwable; {:try_start_9ee .. :try_end_9f4} :catch_9f8

    .line 1507
    nop

    .line 1508
    move-object/from16 v19, v6

    goto :goto_a03

    .line 1505
    :catch_9f8
    move-exception v0

    move-object/from16 v19, v6

    goto :goto_9fd

    .line 1505
    .end local v6    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v19    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :catch_9fc
    move-exception v0

    .line 1506
    .restart local v0    # "e":Ljava/lang/Throwable;
    :goto_9fd
    const-string/jumbo v6, "starting NetworkTimeUpdate service"

    invoke-direct {v3, v6, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1508
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_a03
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1511
    :cond_a06
    const-string v0, "StartCommonTimeManagementService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1513
    :try_start_a0b
    new-instance v0, Lcom/android/server/CommonTimeManagementService;

    invoke-direct {v0, v2}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_a10
    .catch Ljava/lang/Throwable; {:try_start_a0b .. :try_end_a10} :catch_a19

    move-object v6, v0

    .line 1514
    .end local v20    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v6, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :try_start_a11
    const-string v0, "commontime_management"

    invoke-static {v0, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a16
    .catch Ljava/lang/Throwable; {:try_start_a11 .. :try_end_a16} :catch_a17

    .line 1517
    goto :goto_a22

    .line 1515
    :catch_a17
    move-exception v0

    goto :goto_a1c

    .line 1515
    .end local v6    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v20    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :catch_a19
    move-exception v0

    move-object/from16 v6, v20

    .line 1516
    .end local v20    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v6    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :goto_a1c
    const-string/jumbo v10, "starting CommonTimeManagementService service"

    invoke-direct {v3, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1518
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_a22
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1520
    const-string v0, "CertBlacklister"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1522
    :try_start_a2a
    new-instance v0, Lcom/android/server/CertBlacklister;

    invoke-direct {v0, v2}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_a2f
    .catch Ljava/lang/Throwable; {:try_start_a2a .. :try_end_a2f} :catch_a30

    .line 1525
    goto :goto_a37

    .line 1523
    :catch_a30
    move-exception v0

    .line 1524
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v10, "starting CertBlacklister"

    invoke-direct {v3, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1526
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_a37
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1530
    const-string v0, "StartEmergencyAffordanceService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1531
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/emergency/EmergencyAffordanceService;

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1532
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1536
    const-string v0, "StartDreamManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1537
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1538
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1540
    const-string v0, "AddGraphicsStatsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1541
    const-string v0, "graphicsstats"

    new-instance v10, Lcom/android/server/GraphicsStatsService;

    invoke-direct {v10, v2}, Lcom/android/server/GraphicsStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v10}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1543
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1545
    sget-boolean v0, Lcom/android/server/coverage/CoverageService;->ENABLED:Z

    if-eqz v0, :cond_a80

    .line 1546
    const-string v0, "AddCoverageService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1547
    const-string v0, "coverage"

    new-instance v10, Lcom/android/server/coverage/CoverageService;

    invoke-direct {v10}, Lcom/android/server/coverage/CoverageService;-><init>()V

    invoke-static {v0, v10}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1548
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1551
    :cond_a80
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v10, "android.software.print"

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a99

    .line 1552
    const-string v0, "StartPrintManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1553
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v10, "com.android.server.print.PrintManagerService"

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1554
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1557
    :cond_a99
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v10, "android.software.companion_device_setup"

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ab2

    .line 1558
    const-string v0, "StartCompanionDeviceManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1559
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v10, "com.android.server.companion.CompanionDeviceManagerService"

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1560
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1563
    :cond_ab2
    const-string v0, "StartRestrictionManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1564
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/restrictions/RestrictionsManagerService;

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1565
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1567
    const-string v0, "StartMediaSessionService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1568
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1569
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1571
    const-string v0, "StartMediaUpdateService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1572
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/media/MediaUpdateService;

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1573
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1575
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v10, "android.hardware.hdmi.cec"

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_af8

    .line 1576
    const-string v0, "StartHdmiControlService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1577
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1578
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1581
    :cond_af8
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v10, "android.software.live_tv"

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b0c

    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v10, "android.software.leanback"

    .line 1582
    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b1b

    .line 1583
    :cond_b0c
    const-string v0, "StartTvInputManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1584
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1585
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1588
    :cond_b1b
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v10, "android.software.picture_in_picture"

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b34

    .line 1589
    const-string v0, "StartMediaResourceMonitor"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1590
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/media/MediaResourceMonitorService;

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1591
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1594
    :cond_b34
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v10, "android.software.leanback"

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b4d

    .line 1595
    const-string v0, "StartTvRemoteService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1596
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/tv/TvRemoteService;

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1597
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1600
    :cond_b4d
    const-string v0, "StartMediaRouterService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1602
    :try_start_b52
    new-instance v0, Lcom/android/server/media/MediaRouterService;

    invoke-direct {v0, v2}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_b57
    .catch Ljava/lang/Throwable; {:try_start_b52 .. :try_end_b57} :catch_b64

    move-object v10, v0

    .line 1603
    .end local v35    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v10, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_b58
    const-string/jumbo v0, "media_router"

    invoke-static {v0, v10}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b5e
    .catch Ljava/lang/Throwable; {:try_start_b58 .. :try_end_b5e} :catch_b62

    .line 1606
    nop

    .line 1607
    move/from16 v57, v5

    goto :goto_b6f

    .line 1604
    :catch_b62
    move-exception v0

    goto :goto_b67

    .line 1604
    .end local v10    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v35    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :catch_b64
    move-exception v0

    move-object/from16 v10, v35

    .line 1605
    .end local v35    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v10    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :goto_b67
    move/from16 v57, v5

    const-string/jumbo v5, "starting MediaRouterService"

    .line 1605
    .end local v5    # "startRulesManagerService":Z
    .local v57, "startRulesManagerService":Z
    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1607
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_b6f
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1609
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.fingerprint"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b8b

    .line 1610
    const-string v0, "StartFingerprintSensor"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1611
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1612
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1615
    :cond_b8b
    const-string v0, "StartBackgroundDexOptService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1618
    :try_start_b90
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/BackgroundDexOptService;->setPackageManagerService(Lcom/android/server/pm/PackageManagerService;)V

    .line 1619
    invoke-static {v2}, Lcom/android/server/pm/BackgroundDexOptService;->schedule(Landroid/content/Context;)V
    :try_end_b98
    .catch Ljava/lang/Throwable; {:try_start_b90 .. :try_end_b98} :catch_b99

    .line 1622
    goto :goto_ba0

    .line 1620
    :catch_b99
    move-exception v0

    .line 1621
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting StartBackgroundDexOptService"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1623
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_ba0
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1625
    const-string v0, "StartPruneInstantAppsJobService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1627
    :try_start_ba8
    invoke-static {v2}, Lcom/android/server/PruneInstantAppsJobService;->schedule(Landroid/content/Context;)V
    :try_end_bab
    .catch Ljava/lang/Throwable; {:try_start_ba8 .. :try_end_bab} :catch_bac

    .line 1630
    goto :goto_bb3

    .line 1628
    :catch_bac
    move-exception v0

    move-object v5, v0

    .line 1629
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v5, "StartPruneInstantAppsJobService"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1631
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_bb3
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1634
    const-string v0, "StartShortcutServiceLifecycle"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1635
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/pm/ShortcutService$Lifecycle;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1636
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1638
    const-string v0, "StartLauncherAppsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1639
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/pm/LauncherAppsService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1640
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1642
    const-string v0, "StartCrossProfileAppsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1643
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/pm/CrossProfileAppsService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1644
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1647
    .end local v52    # "hasPdb":Z
    .end local v57    # "startRulesManagerService":Z
    move-object/from16 v38, v6

    move-object/from16 v49, v8

    move-object/from16 v50, v9

    move-object/from16 v40, v10

    move-object/from16 v20, v14

    move-object/from16 v35, v19

    move-object/from16 v39, v22

    move-object/from16 v14, v23

    move-object/from16 v48, v55

    move-object/from16 v33, v56

    move-object/from16 v19, v13

    move-object/from16 v22, v15

    move-object/from16 v23, v16

    move-object/from16 v15, v17

    goto :goto_c14

    .end local v6    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .end local v8    # "location":Lcom/android/server/LocationManagerService;
    .end local v9    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v10    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v55    # "notification":Landroid/app/INotificationManager;
    .end local v56    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v20    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v33    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v35    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v48    # "notification":Landroid/app/INotificationManager;
    .restart local v49    # "location":Lcom/android/server/LocationManagerService;
    .restart local v50    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :cond_c00
    move-object/from16 v38, v20

    move-object/from16 v39, v22

    move-object/from16 v40, v35

    move-object/from16 v20, v14

    move-object/from16 v22, v15

    move-object/from16 v15, v17

    move-object/from16 v35, v19

    move-object/from16 v14, v23

    move-object/from16 v19, v13

    move-object/from16 v23, v16

    .end local v12    # "ipSecService":Lcom/android/server/IpSecService;
    .end local v16    # "serviceDiscovery":Lcom/android/server/NsdService;
    .end local v17    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .local v13, "wigigService":Ljava/lang/Object;
    .local v14, "wigigP2pService":Ljava/lang/Object;
    .local v15, "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .local v18, "ipSecService":Lcom/android/server/IpSecService;
    .local v19, "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v20, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v22, "connectivity":Lcom/android/server/ConnectivityService;
    .local v23, "serviceDiscovery":Lcom/android/server/NsdService;
    .local v24, "serial":Lcom/android/server/SerialService;
    .local v35, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v38, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v39, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .local v40, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :goto_c14
    move-object/from16 v13, v24

    move-object/from16 v24, v18

    move-object/from16 v18, v12

    if-nez v31, :cond_c2b

    .line 1648
    const-string v0, "StartMediaProjectionManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1649
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1650
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1653
    :cond_c2b
    if-eqz v31, :cond_c81

    .line 1654
    const-string v0, "StartWearConfigService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1655
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.google.android.clockwork.WearConfigManagerService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1656
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1658
    const-string v0, "StartWearConnectivityService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1659
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.clockwork.connectivity.WearConnectivityService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1660
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1662
    const-string v0, "StartWearTimeService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1663
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.google.android.clockwork.display.WearDisplayService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1664
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.google.android.clockwork.time.WearTimeService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1665
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1667
    if-eqz v28, :cond_c72

    .line 1668
    const-string v0, "StartWearLeftyService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1669
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.google.android.clockwork.lefty.WearLeftyService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1670
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1673
    :cond_c72
    const-string v0, "StartWearGlobalActionsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1674
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.clockwork.globalactions.GlobalActionsService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1675
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1678
    :cond_c81
    if-nez v27, :cond_c92

    .line 1679
    const-string v0, "StartSliceManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1680
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.slice.SliceManagerService$Lifecycle"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1681
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1684
    :cond_c92
    if-nez v26, :cond_ca3

    .line 1685
    const-string v0, "StartCameraServiceProxy"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1686
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/camera/CameraServiceProxy;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1687
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1690
    :cond_ca3
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v5, "android.hardware.type.embedded"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_cbe

    .line 1691
    const-string v0, "StartIoTSystemService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1692
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.google.android.things.services.IoTSystemService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1693
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1697
    :cond_cbe
    const-string v0, "StartStatsCompanionService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1698
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/stats/StatsCompanionService$Lifecycle;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1699
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1703
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v12

    .line 1704
    .local v12, "safeMode":Z
    if-eqz v12, :cond_ce8

    .line 1705
    const-string v0, "EnterSafeModeAndDisableJitCompilation"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1706
    iget-object v0, v3, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 1708
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 1709
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    goto :goto_cf7

    .line 1712
    :cond_ce8
    const-string v0, "StartJitCompilation"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1713
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    .line 1714
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1718
    :goto_cf7
    const-string v0, "StartMmsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1719
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/server/MmsServiceBroker;

    .line 1720
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1722
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.autofill"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d24

    .line 1723
    const-string v0, "StartAutoFillService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1724
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.autofill.AutofillManagerService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1725
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1730
    :cond_d24
    const-string v0, "MakeVibratorServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1732
    :try_start_d29
    invoke-virtual {v7}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_d2c
    .catch Ljava/lang/Throwable; {:try_start_d29 .. :try_end_d2c} :catch_d2d

    .line 1735
    goto :goto_d35

    .line 1733
    :catch_d2d
    move-exception v0

    move-object v5, v0

    .line 1734
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "making Vibrator Service ready"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1736
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_d35
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1739
    const-string v0, "MakeBsGamePadServiceReady"

    const-wide/32 v5, 0x80000

    invoke-static {v5, v6, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1741
    :try_start_d40
    invoke-virtual {v11}, Lcom/android/server/gamepad/BsGamePadService;->systemReady()V
    :try_end_d43
    .catch Ljava/lang/Throwable; {:try_start_d40 .. :try_end_d43} :catch_d44

    .line 1744
    goto :goto_d4c

    .line 1742
    :catch_d44
    move-exception v0

    move-object v5, v0

    .line 1743
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "making BsGamePad Service ready"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1745
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_d4c
    const-wide/32 v5, 0x80000

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1748
    const-string v0, "MakeLockSettingsServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1749
    if-eqz v15, :cond_d65

    .line 1751
    :try_start_d59
    invoke-interface {v15}, Lcom/android/internal/widget/ILockSettings;->systemReady()V
    :try_end_d5c
    .catch Ljava/lang/Throwable; {:try_start_d59 .. :try_end_d5c} :catch_d5d

    .line 1754
    goto :goto_d65

    .line 1752
    :catch_d5d
    move-exception v0

    move-object v5, v0

    .line 1753
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "making Lock Settings Service ready"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1756
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_d65
    :goto_d65
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1759
    const-string v0, "StartBootPhaseLockSettingsReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1760
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1e0

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1761
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1763
    const-string v0, "StartBootPhaseSystemServicesReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1764
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1f4

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1765
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1769
    if-eqz v30, :cond_ddb

    .line 1771
    :try_start_d88
    const-string v0, "SystemServer"

    const-string v6, "calling onBootPhase for Wigig Services"

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1772
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1773
    .local v0, "wigigP2pClass":Ljava/lang/Class;
    const-string/jumbo v6, "onBootPhase"

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x0

    aput-object v8, v9, v10

    invoke-virtual {v0, v6, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 1774
    .local v6, "m":Ljava/lang/reflect/Method;
    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v5}, Ljava/lang/Integer;-><init>(I)V

    const/4 v10, 0x0

    aput-object v8, v9, v10

    invoke-virtual {v6, v14, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1777
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 1778
    .local v8, "wigigClass":Ljava/lang/Class;
    const-string/jumbo v9, "onBootPhase"

    const/4 v10, 0x1

    new-array v5, v10, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v16, 0x0

    aput-object v10, v5, v16

    invoke-virtual {v8, v9, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 1779
    .end local v6    # "m":Ljava/lang/reflect/Method;
    .local v5, "m":Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/Integer;

    const/16 v10, 0x1f4

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    const/4 v10, 0x0

    aput-object v9, v6, v10

    invoke-virtual {v5, v13, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_dd4
    .catch Ljava/lang/Throwable; {:try_start_d88 .. :try_end_dd4} :catch_dd5

    .line 1783
    .end local v0    # "wigigP2pClass":Ljava/lang/Class;
    .end local v5    # "m":Ljava/lang/reflect/Method;
    .end local v8    # "wigigClass":Ljava/lang/Class;
    goto :goto_ddb

    .line 1781
    :catch_dd5
    move-exception v0

    .line 1782
    .local v0, "e":Ljava/lang/Throwable;
    const-string v5, "Wigig services ready"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1786
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_ddb
    :goto_ddb
    const-string v0, "MakeWindowManagerServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1789
    :try_start_de0
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_de3
    .catch Ljava/lang/Throwable; {:try_start_de0 .. :try_end_de3} :catch_de4

    .line 1792
    goto :goto_dec

    .line 1790
    :catch_de4
    move-exception v0

    move-object v5, v0

    .line 1791
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "making Window Manager Service ready"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1793
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_dec
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1795
    if-eqz v12, :cond_df6

    .line 1796
    iget-object v0, v3, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 1802
    :cond_df6
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v10

    .line 1803
    .local v10, "config":Landroid/content/res/Configuration;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    move-object v9, v0

    .line 1804
    .local v9, "metrics":Landroid/util/DisplayMetrics;
    const-string/jumbo v0, "window"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/view/WindowManager;

    .line 1805
    .local v6, "w":Landroid/view/WindowManager;
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1806
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v10, v9}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1809
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    .line 1810
    .local v8, "systemTheme":Landroid/content/res/Resources$Theme;
    invoke-virtual {v8}, Landroid/content/res/Resources$Theme;->getChangingConfigurations()I

    move-result v0

    if-eqz v0, :cond_e26

    .line 1811
    invoke-virtual {v8}, Landroid/content/res/Resources$Theme;->rebase()V

    .line 1814
    :cond_e26
    const-string v0, "MakePowerManagerServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1817
    :try_start_e2b
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    iget-object v5, v3, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/internal/app/IAppOpsService;)V
    :try_end_e36
    .catch Ljava/lang/Throwable; {:try_start_e2b .. :try_end_e36} :catch_e37

    .line 1820
    goto :goto_e3e

    .line 1818
    :catch_e37
    move-exception v0

    .line 1819
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "making Power Manager Service ready"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1821
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_e3e
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1823
    const-string v0, "MakePackageManagerServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1824
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->systemReady()V

    .line 1825
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1827
    const-string v0, "MakeDisplayManagerServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1830
    :try_start_e53
    iget-object v0, v3, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    iget-boolean v5, v3, Lcom/android/server/SystemServer;->mOnlyCore:Z

    invoke-virtual {v0, v12, v5}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_e5a
    .catch Ljava/lang/Throwable; {:try_start_e53 .. :try_end_e5a} :catch_e5b

    .line 1833
    goto :goto_e62

    .line 1831
    :catch_e5b
    move-exception v0

    .line 1832
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "making Display Manager Service ready"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1834
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_e62
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1836
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->setSafeMode(Z)V

    .line 1839
    const-string v0, "StartDeviceSpecificServices"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1840
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x1070024

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 1842
    .local v5, "classes":[Ljava/lang/String;
    move-object/from16 v58, v2

    array-length v2, v5

    .line 1842
    .end local v2    # "context":Landroid/content/Context;
    .local v58, "context":Landroid/content/Context;
    move-object/from16 v59, v6

    const/4 v6, 0x0

    .line 1842
    .end local v6    # "w":Landroid/view/WindowManager;
    .local v59, "w":Landroid/view/WindowManager;
    :goto_e82
    if-ge v6, v2, :cond_ecb

    move/from16 v60, v2

    aget-object v2, v5, v6

    .line 1843
    .local v2, "className":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v61, v5

    const-string v5, "StartDeviceSpecificServices "

    .line 1843
    .end local v5    # "classes":[Ljava/lang/String;
    .local v61, "classes":[Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1845
    :try_start_e9e
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_ea3
    .catch Ljava/lang/Throwable; {:try_start_e9e .. :try_end_ea3} :catch_ea7

    .line 1848
    nop

    .line 1849
    move-object/from16 v62, v7

    goto :goto_ebf

    .line 1846
    :catch_ea7
    move-exception v0

    .line 1847
    .restart local v0    # "e":Ljava/lang/Throwable;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v62, v7

    const-string/jumbo v7, "starting "

    .line 1847
    .end local v7    # "vibrator":Lcom/android/server/VibratorService;
    .local v62, "vibrator":Lcom/android/server/VibratorService;
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1849
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_ebf
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1842
    .end local v2    # "className":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    move/from16 v2, v60

    move-object/from16 v5, v61

    move-object/from16 v7, v62

    goto :goto_e82

    .line 1851
    .end local v61    # "classes":[Ljava/lang/String;
    .end local v62    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v5    # "classes":[Ljava/lang/String;
    .restart local v7    # "vibrator":Lcom/android/server/VibratorService;
    :cond_ecb
    move-object/from16 v61, v5

    move-object/from16 v62, v7

    .line 1851
    .end local v5    # "classes":[Ljava/lang/String;
    .end local v7    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v61    # "classes":[Ljava/lang/String;
    .restart local v62    # "vibrator":Lcom/android/server/VibratorService;
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1853
    const-string v0, "StartBootPhaseDeviceSpecificServicesReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1854
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v2, 0x208

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1855
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1858
    move-object/from16 v36, v61

    move-object/from16 v5, v33

    .line 1859
    .end local v61    # "classes":[Ljava/lang/String;
    .local v5, "networkManagementF":Lcom/android/server/NetworkManagementService;
    .local v36, "classes":[Ljava/lang/String;
    move-object/from16 v37, v8

    move-object/from16 v8, v19

    .line 1860
    .local v8, "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .local v37, "systemTheme":Landroid/content/res/Resources$Theme;
    move-object/from16 v41, v59

    move-object/from16 v6, v20

    .line 1861
    .end local v59    # "w":Landroid/view/WindowManager;
    .local v6, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v41, "w":Landroid/view/WindowManager;
    move-object/from16 v43, v9

    move-object/from16 v9, v22

    .line 1862
    .local v9, "connectivityF":Lcom/android/server/ConnectivityService;
    .local v43, "metrics":Landroid/util/DisplayMetrics;
    move-object/from16 v44, v10

    move-object/from16 v10, v49

    .line 1863
    .local v10, "locationF":Lcom/android/server/LocationManagerService;
    .local v44, "config":Landroid/content/res/Configuration;
    move-object/from16 v46, v11

    move-object/from16 v11, v50

    .line 1864
    .local v11, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .local v46, "bsgamepad":Lcom/android/server/gamepad/BsGamePadService;
    move/from16 v47, v12

    move-object/from16 v12, v35

    .line 1865
    .local v12, "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .local v47, "safeMode":Z
    move-object/from16 v51, v13

    move-object/from16 v13, v38

    .line 1866
    .local v13, "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .local v51, "wigigService":Ljava/lang/Object;
    move-object/from16 v52, v14

    move-object v14, v4

    .line 1867
    .local v14, "inputManagerF":Lcom/android/server/input/InputManagerService;
    .local v52, "wigigP2pService":Ljava/lang/Object;
    move-object/from16 v53, v15

    move-object/from16 v15, v42

    .line 1868
    .local v15, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .local v53, "lockSettings":Lcom/android/internal/widget/ILockSettings;
    move-object/from16 v16, v40

    .line 1869
    .local v16, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v17, v21

    .line 1870
    .local v17, "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    move-object/from16 v54, v62

    move-object/from16 v7, v18

    .line 1871
    .end local v62    # "vibrator":Lcom/android/server/VibratorService;
    .local v7, "ipSecServiceF":Lcom/android/server/IpSecService;
    .local v54, "vibrator":Lcom/android/server/VibratorService;
    move-object/from16 v55, v4

    move-object v4, v1

    .line 1878
    .local v4, "windowManagerF":Lcom/android/server/wm/WindowManagerService;
    .local v55, "inputManager":Lcom/android/server/input/InputManagerService;
    iget-object v0, v3, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    new-instance v2, Lcom/android/server/-$$Lambda$SystemServer$s9erd2iGXiS7bbg_mQJUxyVboQM;

    move-object/from16 v56, v1

    move-object v1, v2

    .line 1878
    .end local v1    # "wm":Lcom/android/server/wm/WindowManagerService;
    .local v56, "wm":Lcom/android/server/wm/WindowManagerService;
    move-object/from16 v63, v0

    move-object v0, v2

    move-object/from16 v57, v58

    move-object v2, v3

    .line 1878
    .end local v58    # "context":Landroid/content/Context;
    .local v57, "context":Landroid/content/Context;
    move-object/from16 v3, v57

    invoke-direct/range {v1 .. v17}, Lcom/android/server/-$$Lambda$SystemServer$s9erd2iGXiS7bbg_mQJUxyVboQM;-><init>(Lcom/android/server/SystemServer;Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/IpSecService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/ConnectivityService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V

    sget-object v1, Lcom/android/server/SystemServer;->BOOT_TIMINGS_TRACE_LOG:Landroid/util/TimingsTraceLog;

    move-object/from16 v2, v63

    invoke-virtual {v2, v0, v1}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;Landroid/util/TimingsTraceLog;)V

    .line 2055
    return-void
.end method

.method private static native startSensorService()V
.end method

.method static final startSystemUi(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "windowManager"    # Lcom/android/server/wm/WindowManagerService;

    .line 2058
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2059
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2061
    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2063
    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 2064
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->onSystemUiStarted()V

    .line 2065
    return-void
.end method

.method private static traceBeginAndSlog(Ljava/lang/String;)V
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 2068
    const-string v0, "SystemServer"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2069
    sget-object v0, Lcom/android/server/SystemServer;->BOOT_TIMINGS_TRACE_LOG:Landroid/util/TimingsTraceLog;

    invoke-virtual {v0, p0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 2070
    return-void
.end method

.method private static traceEnd()V
    .registers 1

    .line 2073
    sget-object v0, Lcom/android/server/SystemServer;->BOOT_TIMINGS_TRACE_LOG:Landroid/util/TimingsTraceLog;

    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2074
    return-void
.end method
